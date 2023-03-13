Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E3A6B7472
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 11:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A62010E07B;
	Mon, 13 Mar 2023 10:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D500B10E07B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 10:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678704295; x=1710240295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xo/IJtsk3ctOPPJcNMxbbTt4hFi1jxAsMQyu3pqhu2A=;
 b=mGA23fNploeojgmXCMRzmc2BZaOcoYxqBxmNi91JH0zOXX5QYcpconvL
 +cDlXcyz8ZSYQ2Jb9rrzI7WD2S0vw6gB53ehggj3Cvz4URknNNlRx1Kq/
 hZZ1ZBZ/mmpT4Vn/fE85Cw3Usvsi7VqwfmpcR9wzSEwN+jmjp/msxyyey
 /TxlouWmMdXkjwf3oSmMtTWmH7BeIb+BzfCSF3ALkBpqFeks3g4aU9q+A
 cx5+99bOe5gd3zmoWbHcInO9B++bgFPJFe54mDK/8Ee3EDXbr4icn4PrL
 14LS4FKkLqSGlQTfH7LgDKpmm5wM6/vTiDYtMLrLi/dpbfof+UiTjKVE+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="334591479"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="334591479"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 03:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="788885170"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="788885170"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 13 Mar 2023 03:44:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Mar 2023 12:44:52 +0200
Date: Mon, 13 Mar 2023 12:44:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZA7+pAO8NTJlhtaq@intel.com>
References: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix build with WERROR=y
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 13, 2023 at 11:39:13AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Remove the unused i915 variable to fix the build with WERROR=y.

Argh. Turns out this is actually caused by
commit 69ea87e1591a ("drm/i915/dg1: Drop support for pre-production steppings")
being merged through drm-intel-next instead of drm-intel-gt-next.

So both drm-intel-next and drm-intel-gt-next still needs that i915
pointer, and only when both are merged to drm-tip we need to get
rid of it.

In the future it would be better to stick to the gt vs. not-gt
split more rigorously to avoid such issues.

I guess I'll need to do a fixup patch now...

> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Fixes: d1b3657fb5b6 ("drm/i915: Remove redundant check for DG1")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 90af399cb0a3..e7ee24bcad89 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1476,8 +1476,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	struct drm_i915_private *i915 = gt->i915;
> -
>  	gen12_gt_workarounds_init(gt, wal);
>  
>  	/* Wa_1409420604:dg1 */
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
