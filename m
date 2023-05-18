Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C851D7085B0
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 18:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FB810E1F6;
	Thu, 18 May 2023 16:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B7C10E1F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 16:11:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A564965012;
 Thu, 18 May 2023 16:11:10 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id ED29FC433EF;
 Thu, 18 May 2023 16:11:07 +0000 (UTC)
Date: Thu, 18 May 2023 12:11:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZGZOFEVolDOTX78O@rdvivi-mobl4>
References: <ZGYwebI0Ji6dgkRD@ashyti-mobl2.lan>
 <20230517-mtl_disable_render_pg-v2-1-0b51180a43f0@intel.com>
 <ZGY/reT72DmOPog0@intel.com>
 <41349e07-e18d-eb54-3e4b-07df354ae8b2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <41349e07-e18d-eb54-3e4b-07df354ae8b2@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: do not enable render
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 18, 2023 at 05:33:55PM +0200, Andrzej Hajda wrote:
> 
> 
> On 18.05.2023 17:09, Rodrigo Vivi wrote:
> > On Thu, May 18, 2023 at 04:50:52PM +0200, Andrzej Hajda wrote:
> > > Multiple CI tests fails with forcewake ack timeouts if render
> > > power gating is enabled.
> > > BSpec 52698 states it should be 0 for MTL, but apparently
> > > this info is outdated. Anyway since the patch makes MTL pass basic
> > > tests added FIXME tag informing this is temporary workaround.
> > > 
> > > v2: added FIXME tag
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
> > No change in the patch is needed, but do we have another
> > (can be internal) ticket with the work to get this properly
> > fix without wasting power?
> 
> Yes there are jiras and related hsdes. In fact this tag is not fully
> correct, as the issue is about MTL and RPL. I wanted to use "References:"
> tag but "dim checkpatch" complains, so I have ended with Closes.
> Regarding your "No change in the patch is needed", do you prefer to merge v1
> or v2?

please go ahead with the v2

> 
> [1]:
> Regards
> Andrzej
> 
> > 
> > > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > > Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > > ---
> > > Changes in v2:
> > > - added FIXME tag
> > > - Link to v1: https://lore.kernel.org/r/20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_rc6.c | 10 ++++++++--
> > >   1 file changed, 8 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > index 908a3d0f2343f4..58bb1c55294c93 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> > > @@ -117,8 +117,14 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
> > >   			GEN6_RC_CTL_RC6_ENABLE |
> > >   			GEN6_RC_CTL_EI_MODE(1);
> > > -	/* Wa_16011777198 - Render powergating must remain disabled */
> > > -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> > > +	/*
> > > +	 * Wa_16011777198 and BSpec 52698 - Render powergating must be off.
> > > +	 * FIXME BSpec is outdated, disabling powergating for MTL is just
> > > +	 * temporary wa and should be removed after fixing real cause
> > > +	 * of forcewake timeouts.
> > > +	 */
> > > +	if (IS_METEORLAKE(gt->i915) ||
> > > +	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> > >   	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
> > >   		pg_enable =
> > >   			GEN9_MEDIA_PG_ENABLE |
> > > 
> > > ---
> > > base-commit: 641646b29337c97681e0edb67ad2e08aef3fb850
> > > change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e
> > > 
> > > Best regards,
> > > -- 
> > > Andrzej Hajda <andrzej.hajda@intel.com>
> > > 
> 
