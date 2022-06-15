Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF59354C41D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 11:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11BE910F305;
	Wed, 15 Jun 2022 09:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870F810E3BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655283687; x=1686819687;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HBC5z9U+hC8UuPot1TU1fkAGffsrM4gAVcgaiIyD0vU=;
 b=CnlOzlgZctwz49dOVzG7X8Ig+hDfK2QDx3gskADj1zS0BUOheJGHV3Uz
 F/AyJ0e60ww8IQr3zKXqAuYQJ992J4nsj4/OMKH2pL4AOOZrtRTblc/xo
 UE715+XvcCERnYiJkI6ZhRO2mD4vGo6klLXjg/odJRjMh5EIFBxAXorON
 ydsV9ObGhiS6Y0gBvlTKGf9wIX6HBiK0aGUfjH6sCH3r1BiS3gedYn+Vq
 2/xvqUC/d5ZndqfMG6EkULhs0N5rPrAeGOlqN3FIhRytkgqrE/M6jnZ2+
 EXM/hlMRhQES79hsJanTbFYPpVL0U70Qn604oeXzctqh30qL1w3/xpaGC A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="342852294"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="342852294"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 02:01:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="640884395"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 02:01:24 -0700
Date: Wed, 15 Jun 2022 12:01:38 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <20220615090138.GA26032@intel.com>
References: <20220614122257.10925-1-stanislav.lisovskiy@intel.com>
 <20220614122257.10925-2-stanislav.lisovskiy@intel.com>
 <bfcd24764e38db1fd13a1315106cb71dac0d7d01.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfcd24764e38db1fd13a1315106cb71dac0d7d01.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Do not enable PSR2/selective
 fetch if there are no planes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 14, 2022 at 03:55:04PM +0300, Hogander, Jouni wrote:
> On Tue, 2022-06-14 at 15:22 +0300, Stanislav Lisovskiy wrote:
> > We seem to enable PSR2 and selective fetch even if there are no
> > active
> > planes. That seems to causes FIFO underruns at least for ADLP.
> > Those are gone if we don't do that. Just adding simple check
> > in intel_psr2_sel_fetch_config_valid seems to do the trick.
> 
> We are already disabling PSR intel_psr_pre_plane_update if
> active_planes is 0.
> 
> We are also checking active_planes in _intel_psr_post_plane_update and
> not enabling PSR if it's 0.
> 
> So I'm now wondering what sequence this patch is actually changing?
> I.e. where PSR is currently enabled/not disabled if active_planes == 0?
> 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 7d61c55184e5..03add69cfdca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -747,6 +747,12 @@ static bool
> > intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> >               return false;
> >       }
> >
> > +     if (hweight32(crtc_state->active_planes) == 0) {
> > +             drm_dbg_kms(&dev_priv->drm,
> > +                         "PSR2 sel fetch not enabled, no
> > active_planes\n");
> > +             return false;
> > +     }
> > +
> >       /* Wa_14010254185 Wa_14010103792 */
> >       if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> >               drm_dbg_kms(&dev_priv->drm,
> 

Added dump_stack to that condition as mentioned in prev mail, here's what we have:
[  258.438169] i915 0000:00:02.0: [drm:intel_psr_compute_config [i915]] PSR2 sel fetch not enabled, no active planes
--
[  258.441108] Call Trace:
[  258.441108]  <TASK>
[  258.441109]  dump_stack_lvl+0x56/0x7b
[  258.441111]  intel_psr_compute_config+0x7a8/0x900 [i915]
[  258.441170]  intel_dp_compute_config+0x21a/0x700 [i915]
[  258.441227]  intel_ddi_compute_config+0x8c/0xc0 [i915]
[  258.441284]  intel_atomic_check+0x165a/0x3090 [i915]
[  258.441344]  ? drm_atomic_check_only+0x39/0xa60
[  258.441350]  drm_atomic_check_only+0x64f/0xa60
[  258.441354]  drm_atomic_commit+0x51/0xc0
[  258.441355]  ? __drm_printfn_seq_file+0x20/0x20
[  258.441358]  drm_mode_atomic_ioctl+0x890/0xa30
[  258.441369]  ? drm_atomic_set_property+0xa80/0xa80
[  258.441371]  drm_ioctl_kernel+0xb2/0x140
[  258.441374]  drm_ioctl+0x316/0x3e0
[  258.441377]  ? drm_atomic_set_property+0xa80/0xa80
[  258.441381]  ? find_held_lock+0x2d/0x90
[  258.441386]  __x64_sys_ioctl+0x6e/0xb0
[  258.441387]  ? lockdep_hardirqs_on+0xbf/0x130
[  258.441389]  do_syscall_64+0x37/0x80
[  258.441390]  entry_SYSCALL_64_after_hwframe+0x46/0xb0
[  258.441391] RIP: 0033:0x7fd3e88e231b
[  258.441392] Code: 89 d8 49 8d 3c 1c 48 f7 d8 49 39 c4 72 b5 e8 1c ff ff ff 85 c0 78 ba 4c 89 e0 5b 5d 41 5c c3 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 1d 3b 0d 00 f7 d8 64 89 01 48
[  258.441393] RSP: 002b:00007ffc4a4c9008 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
[  258.441394] RAX: ffffffffffffffda RBX: 00007ffc4a4c9050 RCX: 00007fd3e88e231b
[  258.441394] RDX: 00007ffc4a4c9050 RSI: 00000000c03864bc RDI: 0000000000000003
[  258.441395] RBP: 00000000c03864bc R08: 0000000000000002 R09: 0000000000000002
[  258.441395] R10: 0000000000000007 R11: 0000000000000246 R12: 000056007e393620
[  258.441396] R13: 0000000000000003 R14: 000056007e2dbb10 R15: 000056007e386f00
[  258.441402]  </TASK>


Stan

