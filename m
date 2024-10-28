Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E7B9B2F96
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DDCD10E489;
	Mon, 28 Oct 2024 12:03:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="frsgsRIM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A86A410E353;
 Mon, 28 Oct 2024 12:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730117030; x=1761653030;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dqAuHwaHDwIIW2ZT5xrWUvTQncI2jcbv63YFaxE+L6Q=;
 b=frsgsRIM9hKI7oj2PNAEUHNgrnXyS1X4KFH3qflOcl0VLC2SAZwc2kBl
 tr0TFT5OXtWrrM/4tcAviehjz/pCPgF301bo0TbaGaS41IEnPTKHqbKOx
 t8IuKlKLXkz++tPgye7vSNjHzGg1mRUHqPJmA7bFl//m9+N/ThSf2Gb6e
 bog0xq0QmmRhN3tVbH5gNTREngThGOm53CQEi3O8qU14n2wDFgTcEvkLe
 V/QqQA/5jpAazs8I8+t8uSPv+IHC6q7Xzz1Ic+WWmLI3Q6gGERcvpKyee
 tcwEo7TFb9VJJTPv86NUt6xQLwA4fiI6873kRMbkV70kVmMiFbqnG10T/ A==;
X-CSE-ConnectionGUID: yu8egqmpSqCk6u62D34jbA==
X-CSE-MsgGUID: K60H16N/RzeyMHINK+gqdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29483281"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29483281"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:03:49 -0700
X-CSE-ConnectionGUID: beF/hxIsTyOetnnrxaO5Ng==
X-CSE-MsgGUID: 7BxWRrE1S3qB1nJTavThYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="82412040"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:03:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 daniele.ceraolospurio@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/xe/hdcp: Fix gsc structure check in fw check status
In-Reply-To: <20241025160834.8785-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241022072920.102033-1-suraj.kandpal@intel.com>
 <20241025160834.8785-1-suraj.kandpal@intel.com>
Date: Mon, 28 Oct 2024 14:03:43 +0200
Message-ID: <87r080ph7k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 25 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Fix the condition for gsc structure validity in
> gsc_cs_status_check(). It needs to be an OR and not an AND
> condition

This is a completely different and new patch. For future reference,
please send them in new threads, not in-reply-to the old ones. In
general, please tweak your approach slightly more towards new threads
over in-reply-to.

Thanks,
Jani.

>
> Fixes: b4224f6bae38 ("drm/xe/hdcp: Check GSC structure validity")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 6d34b55d72bb..7c02323e9531 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -44,7 +44,7 @@ bool intel_hdcp_gsc_check_status(struct intel_display *display)
>  	bool ret = true;
>  	unsigned int fw_ref;
>  
> -	if (!gsc && !xe_uc_fw_is_enabled(&gsc->fw)) {
> +	if (!gsc || !xe_uc_fw_is_enabled(&gsc->fw)) {
>  		drm_dbg_kms(&xe->drm,
>  			    "GSC Components not ready for HDCP2.x\n");
>  		return false;

-- 
Jani Nikula, Intel
