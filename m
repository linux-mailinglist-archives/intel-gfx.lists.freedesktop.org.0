Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6A8158BC8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 10:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5CA6E483;
	Tue, 11 Feb 2020 09:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0186E483
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 09:21:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 01:20:59 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="405884008"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 01:20:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200207144116.20172-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200207144116.20172-1-anshuman.gupta@intel.com>
Date: Tue, 11 Feb 2020 11:20:54 +0200
Message-ID: <87a75p1nux.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: HDCP support on above PORT_E
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 07 Feb 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> As Gen12 onwards there are HDCP instances for each transcoder
> instead of port, remove the (port < PORT_E) hdcp support
> limitation for platform >= Gen12.
>
> v2:
>  - Nuke the comment and cosmetic changes. [Jani]
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Pushed to dinq, thanks for the patch and review.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4d1a33d13105..30e0a3aa9d57 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -941,8 +941,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
>  
>  bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
>  {
> -	/* PORT E doesn't have HDCP, and PORT F is disabled */
> -	return INTEL_INFO(dev_priv)->display.has_hdcp && port < PORT_E;
> +	return INTEL_INFO(dev_priv)->display.has_hdcp &&
> +			(INTEL_GEN(dev_priv) >= 12 || port < PORT_E);
>  }
>  
>  static int

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
