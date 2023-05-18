Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAAE70837B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 16:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAAB310E534;
	Thu, 18 May 2023 14:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6341010E538
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 14:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684418689; x=1715954689;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jt5G91GZspnIOJLrbLQMpDhWyPuAEmm90o+wvNjpcSo=;
 b=FfKP1gkI0g6EDG67ZL1qrvRUiLBsjDN/n7RGkNiJMV5yCpy93SOeLdbT
 LqGfuISaE8410zE+uha+9oBu4juaP+jIa1yXv22yblGd8SMlMszY8L/C3
 7UCt0UJfuhZ/heQVdOquTOMKIGoWb5YLfpGsUCejxgHPZvjr/HLvjhMns
 b6EnCA6D28hN4UKHvpEKDKr1PWXj416j51C4q5hPUz5FqspeRfjFWKj2K
 LFrk3cGqYyoxCtsOuOMTjiEvg/SRvv5NjfTCHuVmnKma22zzvGOw662ZM
 CBJciVo205znJkPZRVH8GZxKk8/105X+BVDk3L7odMq55w4pGzMMBhrYY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="352088950"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="352088950"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 07:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="696315182"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="696315182"
Received: from dpahomx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.38.64])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 07:04:44 -0700
Date: Thu, 18 May 2023 16:04:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
Message-ID: <ZGYwebI0Ji6dgkRD@ashyti-mobl2.lan>
References: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
 <2b4a54d2-e323-9a10-1ba4-3d2e96197bb9@linux.intel.com>
 <e9e56f74e740c40884d4351cc2946f695691f782.camel@intel.com>
 <300d9f0c-f74f-55f9-40b4-13b65c3b4584@linux.intel.com>
 <ZGU0Yj9eCrCmz2Fq@rdvivi-mobl4>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZGU0Yj9eCrCmz2Fq@rdvivi-mobl4>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: do not enable render
 power-gating on MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Hajda,
 Andrzej" <andrzej.hajda@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej and Rodrigo,

> > On 5/17/2023 5:25 PM, Vivi, Rodrigo wrote:
> > > On Wed, 2023-05-17 at 17:12 +0200, Das, Nirmoy wrote:
> > > > On 5/17/2023 3:59 PM, Andrzej Hajda wrote:
> > > > > Multiple CI tests fails with forcewake ack timeouts
> > > > > if render power gating is enabled.
> > > > > BSpec 52698 clearly states it should be 0 for MTL.
> > > > > 
> > > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
> > > > > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +++--
> > > > >    1 file changed, 3 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > > > b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > > > index 908a3d0f2343f4..ebb2373dd73640 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > > > @@ -117,8 +117,9 @@ static void gen11_rc6_enable(struct intel_rc6
> > > > > *rc6)
> > > > >                          GEN6_RC_CTL_RC6_ENABLE |
> > > > >                          GEN6_RC_CTL_EI_MODE(1);
> > > > > -       /* Wa_16011777198 - Render powergating must remain disabled
> > > > > */
> > > > > -       if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0)
> > > > > ||
> > > > > +       /* Wa_16011777198 and BSpec 52698 - Render powergating must
> > > > > be off */
> > > > Nice catch!
> > > Indeed! What a mess in the workaround database.
> > > It is telling us that no_impact on MTL SKUs while we clearly needs
> > > that. I tried to reopen that and get that fixed in the hsds.
> > > 
> > > 
> > > >   instead of bspec you could add Wa_14012655556.
> > > not actually.
> > > 16011777198 is the right lineage number for 14012655556.
> > > Besides, 14012655556 is for DG2 anyway.
> > > 
> > > Let's keep the way Adrzej put with the BSPec reference besides the
> > > lineage.
> > 
> > Makes sense, didn't realize 14012655556  is much older.
> > 
> > Thanks!
> > 
> > > 
> > > > 
> > > > > +       if (IS_METEORLAKE(gt->i915) ||
> > > > > +           IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0)
> > > > > ||
> > > > >              IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
> > > > >                  pg_enable =
> > > > >                          GEN9_MEDIA_PG_ENABLE |
> > > > > 
> > > > > ---
> > > > > base-commit: 01d3dd92d1b71421f6ee85e1bea829e0a917d979
> > > > > change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e
> > > > ^ unwanted artifacts ?   Otherwise this looks good to me.
> > > > 
> > > > Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> > > with the artifacts removed:
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Folks, please do not merge this patch.
> At least not as it is right now...
> 
> We need to root cause this. The hw bug related to this workaround
> was really fixed and this workaround should not be needed in MTL.
> 
> We need to find the root cause instead of masking it here.
> Or at least merge as temporary FIXME/XXX and then work to
> get the root cause...

I'm OK with merging this with the FIXME tag.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
