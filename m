Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC77523527
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 16:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F4D10F2DC;
	Wed, 11 May 2022 14:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com
 [IPv6:2607:f8b0:4864:20::f33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3CDD10F2DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 14:15:02 +0000 (UTC)
Received: by mail-qv1-xf33.google.com with SMTP id kj8so2167137qvb.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 07:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ajzy1ssn7Eh4jr2dUmwFdbfSiECL9H7FKGJ+Y+IuMmQ=;
 b=m+5l0nSzQlO0L+J+rM9qzYV+Mc/ZLVTopDxk84nZ9VN4i8oN/LP+dN+V/YlUT/L4CL
 kQiFGF21oJQS/Goxrch/RE+A2tl6iVJWoWF5wWkBSi2iwK31chtrOgCQ8U3BXQH8EvVR
 NMyxWDstcZRaWpPvJvRlGBmfB+LmdO+JJO943YORBb9lZ7zf5nPqAj8eMMRIiQINZBfl
 bnAgEiqSY4S+qbJX0vfvflMQ88brpqs+o9S8k40XdzG6at1rF9yxjG+mzvCr7zrplEcH
 zFeYl8fxGF3k7iTPFHdDvbADW1NjEnx8sSlKLLLonRFkuhLgz+WvOFwCI/RvK3a1zVw/
 vvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ajzy1ssn7Eh4jr2dUmwFdbfSiECL9H7FKGJ+Y+IuMmQ=;
 b=xRhIPf0GlT5iyM9ypOM3SV2I/rAcouzCte662WdPFSow7mXnjhD+5Sb8RSlOn6E26t
 pplhktOgyzeyUc3P/YsgJ/bpbqD5LW2eqn4CVCIc7QVXy9tBSZUn6vuPrCn2rUN6QNMR
 sHMu+TSM+PO6upl6TXCrw5DvtcraGxvQInv4owgwMm8O6qvSbEaRX7NRSp5M25bs/32y
 2ujy/ozOxIzNy1NHfh6ywGUHciCJDSl/wDmYCP2PadSLwIc2LLrT0pTb3Pauwrsj+vYz
 D3veRq5/ULhz6v23cPHBh05DJNAtHpu2qnVkSCR/LzD66wcI33sCyozrDiB3RXhNTEqi
 Gdxg==
X-Gm-Message-State: AOAM5318CGBRYOM4ejB4SJlPNDOL4G93lAIPU8xPkA71uzyCEL3uvI57
 Gy0K3b9tp0kRQIUqHZUq/S2fm0ca8aAuUlDqVa044atBZMU=
X-Google-Smtp-Source: ABdhPJx5VF+v9IVEHWCUy5eNEoRNEGmI6D6c5XtA1GpyLZmxJx9XONItOeqf5bAR4JSRDjfgEp4XpQMFdygiu1Q5kds=
X-Received: by 2002:a05:6214:20a7:b0:45b:f666:d3db with SMTP id
 7-20020a05621420a700b0045bf666d3dbmr10097677qvd.0.1652278501862; Wed, 11 May
 2022 07:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220511102509.19927-1-nirmoy.das@intel.com>
 <CAM0jSHNkp6M2Tp+8zuiGQQZp6nMhxyy1EPoKNbrnFpqJ2jpByg@mail.gmail.com>
 <2c1189f7-82a9-aa3c-1fa8-6f706a115c92@intel.com>
In-Reply-To: <2c1189f7-82a9-aa3c-1fa8-6f706a115c92@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 11 May 2022 15:14:35 +0100
Message-ID: <CAM0jSHMypU=cqPd9zqSvETCEBmYx=u4hzZDEz42bcbChSM7rGw@mail.gmail.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: don't treat small BAR as an
 error with CSS
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 May 2022 at 13:34, Das, Nirmoy <nirmoy.das@intel.com> wrote:
>
>
> On 5/11/2022 1:31 PM, Matthew Auld wrote:
> > On Wed, 11 May 2022 at 11:25, Nirmoy Das <nirmoy.das@intel.com> wrote:
> >> Determine lmem_size using ADDR_RANGE register so that module
> >> load on platfrom with small bar with css  works.
> >>
> >> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> >> ---
> >> I once reserved a dg2 machine with small bar and module load failed on
> >> it. I can't find that machine anymore hence sending this as RFC.
> > AFAIK we currently don't want to load the driver on such dg2
> > configurations, until we first have all the uapi bits landed.
>
>
> Ok, sounds good.
>
> >   The last
> > patch in that series then turns this on, or at least that's what I
> > have locally.
> >
> >>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 11 ++++++++++-
> >>   1 file changed, 10 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> >> index f5111c0a0060..a55eecac104e 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> >> @@ -100,10 +100,19 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
> >>          if (!IS_DGFX(i915))
> >>                  return ERR_PTR(-ENODEV);
> >>
> >> +       if (IS_DG1(uncore->i915)) {
> >> +               lmem_size = pci_resource_len(pdev, 2);
> > We can drop this, since this is set below also.
> >
> >> +       } else {
> >> +               resource_size_t lmem_range;
> >> +
> >> +               lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
> >> +               lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
> >> +               lmem_size *= SZ_1G;
> > We can move this under HAS_FLAT_CCS.
> >
> > I think we need another patch that then just gracefully returns
> > -EINVAL if this is a small-bar configuration, along with maybe some
> > helpful drm_err() or so, which can be removed once we properly support
> > it?
>
> I will resend with this suggestion.
>
>
> >   Also it looks like we are returning ENODEV in some places here,
> > which looks iffy.
>
>
> We do
>
>          io_start = pci_resource_start(pdev, 2);
>          io_size = min(pci_resource_len(pdev, 2), lmem_size);
>          if (!io_size)
>                  return ERR_PTR(-ENODEV);
>
> Is this return looks iffy?

Yeah, since it will only skips the lmem init, without erroring out
during module load, which I guess leads to nasty errors laters. Also
the lmem_size < flat_ccs_base check.

>
>
> Thanks,
>
> Nirmoy
>
> >
> >> +       }
> >> +
> >>          if (HAS_FLAT_CCS(i915)) {
> >>                  u64 tile_stolen, flat_ccs_base;
> >>
> >> -               lmem_size = pci_resource_len(pdev, 2);
> >>                  flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
> >>                  flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
> >>
> >> --
> >> 2.35.1
> >>
