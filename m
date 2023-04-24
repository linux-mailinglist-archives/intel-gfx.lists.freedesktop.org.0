Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7086ECC3C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 14:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA49010E191;
	Mon, 24 Apr 2023 12:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F6310E4E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 12:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682340424; x=1713876424;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=a5HR4yhQ91lGHMgsk2bAVc121jBuB5ofEBzWtdEja0M=;
 b=C9hzayTNzQy7jpiMNea847EdBM/DiPDx49lmGuSNDsU0jv0shK1jqsyw
 1IFJfQYnL0ufL/luFkayDX7tiZEMvE3Gx7+L96/eF8GmMjgxnWOTv9/6F
 wMh0frQsTw7FqXZ2JizvwFK9UL39rRhE2AmlsebOgNtxQPNBnWQcLQBKR
 9N2xMFMG4y62cFY4eMkt5l4QfXh6c1pScmtY+exL3lIg6rrv1e5ZKGxNW
 J4zTLpDCwglXr6HQ+nhKny+lLqGiHy27u4uhuc1VAd2glzg1B4sKgoYSJ
 GJQ6NtKBOwF69lLlQyShIqkMx7jQvQSjxPNEQJiUf7EIjw9dtpWk/99qC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="411719437"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="411719437"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:47:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="686831162"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="686831162"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 05:47:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 15:46:59 +0300
Date: Mon, 24 Apr 2023 15:46:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ6Q6kLhJWByYCO@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-3-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/display: Add new member in
 intel_dp to store ycbcr420 passthrough cap
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 31, 2023 at 03:46:02PM +0530, Ankit Nautiyal wrote:
> New member to store the YCBCR20 Pass through capability of the DP sink.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b1ade7e40f37..fd1eca5addaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1742,6 +1742,7 @@ struct intel_dp {
>  		int pcon_max_frl_bw;
>  		u8 max_bpc;
>  		bool ycbcr_444_to_420;
> +		bool ycbcr420_passthrough;
>  		bool rgb_to_ycbcr;
>  	} dfp;

I would just squash this into the next patch where it actually gets
used.

>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
