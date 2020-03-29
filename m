Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031F8196DDC
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Mar 2020 16:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC116E14F;
	Sun, 29 Mar 2020 14:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932A66E14F
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Mar 2020 14:17:31 +0000 (UTC)
IronPort-SDR: tz0Hxr6ZBYYs/xbserVwGc7US1QixzE2YEcIxPr6WpAuq0DLBBP4I46JSQdLYzsYsAnizg0GzK
 QqYc3vGrXExQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2020 07:17:31 -0700
IronPort-SDR: /XZq2tIM/pOb4CADyexJJ4BHmRLplPkZL9Fa60eYQ3jU7tmFFYugQW9Unq5CZvQiNv2KClS5L+
 +e9mHWOjn3bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,320,1580803200"; d="scan'208";a="421659573"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 29 Mar 2020 07:17:27 -0700
Date: Sun, 29 Mar 2020 19:47:38 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Oliver Barta <o.barta89@gmail.com>
Message-ID: <20200329141738.GA20693@intel.com>
References: <20200328104100.12162-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328104100.12162-1-oliver.barta@aptiv.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: HDCP: fix Ri prime check done
 during link check
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-03-28 at 11:41:00 +0100, Oliver Barta wrote:
> From: Oliver Barta <oliver.barta@aptiv.com>
> 
> The check was always succeeding even in case of a mismatch due to the
> HDCP_STATUS_ENC bit being set. Make sure both bits are actually set.
> 
Looks good to me:

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
> Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
> ---
>  [v2] rebased on top of latest changes
> 
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 0076abc63851..51a69f330588 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1561,7 +1561,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>  	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
>  
>  	/* Wait for Ri prime match */
> -	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
> +	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
> +		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
>  		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
>  		drm_err(&i915->drm,
>  			"Ri' mismatch detected, link check failed (%x)\n",
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
