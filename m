Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C681188D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 17:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A3810E27B;
	Wed, 13 Dec 2023 16:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155A810E27B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 16:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702483406; x=1734019406;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rIxi/QeDmegn1pwMiR2+vNLpvusdEzarfIQHY6dvMHA=;
 b=c8dvFCKr3NsX2H+mNkgOb04uI9HZzrHfrb5KsYpwrhdC3dTxnj0Apx9d
 mlpH5J6Psx2+ZMO4iO2qwzHiod9iS+B+pNP7lbgtQUQ5rMg4mft026VEd
 2GfHJ41qHxHyQY/LFpk5gKFqq/MgRz3FSQcBODF1rvX2yJSjxD5nFRq3F
 xzEDGyjCeqYDoOvaFkm2pG7DiHiFYjHo3JyHTZ2QxArGUkIt/fyFYDfxU
 8k0pcH303skR8FvWAwzF2WUbF5fDZRs7MC+VqulokHYdooSDlVBf4Tfip
 V99QZMOf6Mg6F0k8NWNOfks8U/9zKBS9D8zrLMBGPWVcL/taBEGbVSBrx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="374494944"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="374494944"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 08:03:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767258954"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767258954"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 08:03:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 18:03:21 +0200
Date: Wed, 13 Dec 2023 18:03:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] =?iso-8859-1?B?w8KiIEZp?=
 =?iso-8859-1?Q?=2ECI=2EBAT=3A_failure_for_drm=2Fi915=2Fdisplay?=
 =?iso-8859-1?Q?=3A?= Check GGTT to determine phys_base (rev2)
Message-ID: <ZXnVyQ_IYXdPAp0E@intel.com>
References: <20231206184736.3769657-1-pazz@chromium.org>
 <170190828076.28719.7247703341018232460@emeril.freedesktop.org>
 <a164e21e-1ccc-4279-b587-9707703201ce@intel.com>
 <f8d9ba8a-ecb1-4852-a935-dbede90b8d9f@intel.com>
 <48279674-7b26-423a-974a-572d74c07c94@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <48279674-7b26-423a-974a-572d74c07c94@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Paz Zcharya <pazz@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 08, 2023 at 09:32:00AM +0100, Andrzej Hajda wrote:
> On 07.12.2023 12:26, Andrzej Hajda wrote:
> > On 07.12.2023 11:10, Andrzej Hajda wrote:
> > 
> > After taking a look on panic log [1], I have found:
> > [drm:i915_init_ggtt [i915]] Failed to reserve top of GGTT for GuC
> > 
> > I don't know why it is only debug level? It seems serious failure, as a 
> > result i915_init_ggtt fails and probe fails.
> > 
> > The cause is that initial framebuffer is located at the end of GGTT and 
> > it overlaps with reserved area (see ggtt_reserve_guc_top).
> > 
> > I am not sure how it can be properly fixed, I guess dirty fix could be
> > just relocation of vma (hopefully into free area), sth like:
> > new_gte = gsm + (ggtt->vm.total - GUC_TOP_RESERVE_SIZE - size) / 
> > I915_GTT_PAGE_SIZE;
> > memmove(new_gte, gte, size / I915_GTT_PAGE_SIZE);
> > 
> > but I have no idea of possible side effects :)
> 
> I looked once more into the code and maybe you can just pin the buffer 
> to earlier address (not overlapping with GuC reservation and current vma 
> of the fb):
> @@ -143,6 +143,9 @@ initial_plane_vma(struct drm_i915_private *i915,
>          if (IS_ERR(vma))
>                  goto err_obj;
> 
> +       if (base + size > GUC_GGTT_TOP)
> +               base = min(base, GUC_GGTT_TOP) - size;
> +
>          pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
>          if (HAS_GMCH(i915))
>                  pinctl |= PIN_MAPPABLE;

This is not a solution. The correct fix is either:
1. fix the guc code to not insist on a fixed chunk of the ggtt
   and instead allocate it normally like a good boy. It could
   still try to allocate as high as possible to ideally
   land in the GUC_GGTT_TOP range
2. relocate the display vma to a different part of the ggtt

1. should be far simpler by the looks of it, as 2. would involve:
a) pinning the same object into two places in the ggtt simultanously
   I don't think we have support for that except for special ggtt views,
   and xe doesn't have even that (should we need this trick there as well)
b) flip the plane(s) over to the relocated vma
c) wait for vblank(s)
d) discard the original vma
e) all of that would need to happen pretty early so we may not have
   a lot of the required normal machinery fully up and running yet

Anyways, I ran into much of the same issues when debugging an MTL
machine. This is the result of my efforts (partially overlaps with
the proposed patch here):
https://patchwork.freedesktop.org/series/127721/

-- 
Ville Syrjälä
Intel
