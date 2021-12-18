Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A32F479B1D
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Dec 2021 15:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E666D11394E;
	Sat, 18 Dec 2021 14:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 763D211394E
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Dec 2021 14:02:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="303301551"
X-IronPort-AV: E=Sophos;i="5.88,216,1635231600"; d="scan'208";a="303301551"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2021 06:02:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,216,1635231600"; d="scan'208";a="520156591"
Received: from aluyckx1-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.251.213.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2021 06:02:12 -0800
Date: Sat, 18 Dec 2021 16:02:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Yb3p4JoEmqJkb8sV@intel.intel>
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
 <163955311757.18076.13164245627457032795@emeril.freedesktop.org>
 <Yb17iflI3R8xFtMW@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yb17iflI3R8xFtMW@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIE1v?=
 =?utf-8?q?re_preparation_for_multi_gt_patches?=
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
Cc: intel-gfx@lists.freedesktop.org, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> The first 10 patches have gone through several clean CI cycles now, so
> I've pushed those to drm-intel-gt-next.  There are just a couple minor
> comments on the ggtt patches, so we can push the rest of those once the
> comments are addressed.
> 
> BTW, there's one i915->gt reference in the display code that has moved
> from display/intel_display.c to display/skl_universal_plane.c on
> drm-intel-next, but that movement hasn't made its way to
> drm-intel-gt-next yet.  This led to a merge conflict while rebuilding
> drm-tip.  I had to use a 'dim cat-to-fixup' to apply the following diff
> to the drm-intel-gt-next merge commit:
> 
>         diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>         index 158d89b8d490..b3162f49f341 100644
>         --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>         +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>         @@ -1737,7 +1737,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
>         {
>                 struct drm_i915_private *i915 = to_i915(obj->base.dev);
> 
>         -       return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
>         +       return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
>         }
> 
>         static bool pxp_is_borked(struct drm_i915_gem_object *obj)

thanks for pointing this out.

Andi
