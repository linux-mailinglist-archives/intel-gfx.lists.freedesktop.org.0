Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA3787993B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B6A10FA75;
	Tue, 12 Mar 2024 16:44:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hPJyviza";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B2110FA75
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 16:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261886; x=1741797886;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D8YqNrLgST91bCNuVt+thz4aUe/V5NlwNd0wmF82q3U=;
 b=hPJyvizaZMOrQCjlc08mOE+PQ5XlPaoVWj/lyH+CkYSIsjenlP5UGfJF
 SRvwCMv/fE0ViG+ychggP1W+50zNVjjRYIP3EVXxTZlQJuA8Har0miCAE
 FKLUDZPTv/R9MVfmBfpE7npLMDmYIqKDxadefw9AY5cH7CbHM+sFTIxSw
 q3V6VVABFaTpcdpQZ2/qcT0ep8qwY6wpZHzyKulbU4C67sQYPBvtCWWTJ
 5982B+jeVvR3ha86mI6JeSybXUt+ULsV2M42bUKqG3EWE2HCNNZ0VItkV
 DlT+BX5aTz2e5Keun00jzJNLj9m3BXcKoGVgvQstFQJrrG9GEJDKefjQi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="7930055"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="7930055"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:44:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="827778702"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="827778702"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 12 Mar 2024 09:44:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Mar 2024 18:44:42 +0200
Date: Tue, 12 Mar 2024 18:44:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 5/5] drm/i915/display: Increase number of fast wake
 precharge pulses
Message-ID: <ZfCGekSEs_gS9zUZ@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
 <20240308110039.3900838-6-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240308110039.3900838-6-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Mar 08, 2024 at 01:00:39PM +0200, Jouni Högander wrote:
> Increasing number of fast wake sync pulses seem to fix problems with
> certain PSR panels. This should be ok for other panels as well as the eDP
> specification allows 10...16 precharge pulses and we are still within that
> range.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9739
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 7e69be100d90..5dff1bc85d61 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -145,7 +145,7 @@ static int intel_dp_aux_sync_len(void)
>  
>  int intel_dp_aux_fw_sync_len(void)
>  {
> -	int precharge = 10; /* 10-16 */
> +	int precharge = 12; /* 10-16 */

This is still giving me allergies because Windows doesn't have
anything like this. So the mystery is how does Windows work?
This was an actual production machine I take it?

Did we have look at the error bits in PSR2_DEBUG to see if there
is some difference between the working and non-working values?

Anyways, this at least needs a proper comment to explain why
we're not usign the standard value.

>  	int preamble = 8;
>  
>  	return precharge + preamble;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
