Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E832B8ECC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 10:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101DC89A8B;
	Thu, 19 Nov 2020 09:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7AA289A8B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 09:31:48 +0000 (UTC)
IronPort-SDR: wfYcPEDuAWurIILMMsu0C+AqmP991MGEr2JcHvw6+TMl57zAPlKXnjf9kmD8D1SfPEz063SaSf
 bpcG/ZQZ2I1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="168688859"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="168688859"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 01:31:48 -0800
IronPort-SDR: SBk6uKIf0HN15Trt8wcKcBy0DjcTVAn13vX0y9a6L9f8+j/4tXvtvmucJXlVb9jGtqifvdEit7
 ceOV+Kpi6j9w==
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="341630737"
Received: from bkeavene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.83.118])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 01:31:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
In-Reply-To: <20201118165320.26829-4-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201118165320.26829-1-jani.nikula@intel.com>
 <20201118165320.26829-4-jani.nikula@intel.com>
Date: Thu, 19 Nov 2020 11:31:43 +0200
Message-ID: <871rgppu9s.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/6] ath11k: make relay callbacks const
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
Cc: intel-gfx@lists.freedesktop.org, ath11k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 Nov 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> Now that relay_open() accepts const callbacks, make relay callbacks
> const.
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: ath11k@lists.infradead.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Kalle, thanks for the acks on the other two ath patches - can I have
your ack on this one too please?

BR,
Jani.

> ---
>  drivers/net/wireless/ath/ath11k/spectral.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/ath11k/spectral.c b/drivers/net/wireless/ath/ath11k/spectral.c
> index ac2a8cfdc1c0..1afe67759659 100644
> --- a/drivers/net/wireless/ath/ath11k/spectral.c
> +++ b/drivers/net/wireless/ath/ath11k/spectral.c
> @@ -148,7 +148,7 @@ static int remove_buf_file_handler(struct dentry *dentry)
>  	return 0;
>  }
>  
> -static struct rchan_callbacks rfs_scan_cb = {
> +static const struct rchan_callbacks rfs_scan_cb = {
>  	.create_buf_file = create_buf_file_handler,
>  	.remove_buf_file = remove_buf_file_handler,
>  };

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
