Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187AA5B1822
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 11:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8B610E9E3;
	Thu,  8 Sep 2022 09:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD3610E9DE;
 Thu,  8 Sep 2022 09:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662628296; x=1694164296;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=UOyQg501hpU83nrIiAwv+rrFeUi6GG/XLffTOTPVCTw=;
 b=llh3Yj50eufNYiH1+tN+H1QGfPVIJXtJW9H8YDqmAuaQG6pAj2i5YgL6
 SE1COk3zcpE+hvEqhJSnB7jy6VMvKDlI58Z5846XzJrMY4Vq9Pxqkim9Y
 HLi/H5BbpFrIZhmj3SsvoREWjADbGBMwwRP+4lhxZd0Bbkdiaug/xlxta
 cpzdjUIyQFoKfU2b46njgV+awnGN+nPOPZQK4RMqdXe0wl9ybRM4e1WYx
 fo3uvkYcmXTpFhjribG93SSjgea9k5NAzeYC+Zf/iYwMbhYuiPL/D+KAm
 8ROCDB/INlRCbW891TYXmZrc8RqoAaCV4hez8aDhRwgRz9VEwzCAoZm2s w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="361079850"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="361079850"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:11:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="676603851"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:11:34 -0700
Date: Thu, 8 Sep 2022 12:11:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <Yxmxw5ku+uOkg4Iu@ideak-desk.fi.intel.com>
References: <20220907142542.1681994-1-imre.deak@intel.com>
 <47eb013190f006cca7a47208498a4f3ea5ac2559.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <47eb013190f006cca7a47208498a4f3ea5ac2559.camel@redhat.com>
Subject: Re: [Intel-gfx] [PATCH] drm/dp_mst: Avoid deleting payloads for
 connectors staying enabled
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 07, 2022 at 02:23:51PM -0400, Lyude Paul wrote:
> Surprised this didn't come up on Intel's CI (or at least it certainly didn't
> when the series that introduced this was tested),

Yes, this was a problem in CI which didn't have any MST sinks. Now there
is and the problem is visible:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12093/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html

> thanks for the catch!
> 
> Reviewed-by: Lyude Paul <lyude@redhat.com>

Thanks.

> On Wed, 2022-09-07 at 17:25 +0300, Imre Deak wrote:
> > When an MST connector stays enabled during a commit the connector's MST
> > state needs to be added to the atomic state, but the corresponding MST
> > payload allocation shouldn't be set for deletion; fix such modesets by
> > ensuring the above even if the connector was already enabled before the
> > modeset.
> > 
> > The issue led to the following:
> > [  761.992923] i915 0000:00:02.0: drm_WARN_ON(payload->delete)
> > [  761.992949] WARNING: CPU: 6 PID: 1401 at drivers/gpu/drm/display/drm_dp_mst_topology.c:4221 drm_dp_atomic_find_time_slots+0x236/0x280 [drm_display_helper]
> > [  761.992955] Modules linked in: snd_hda_intel i915 drm_buddy drm_display_helper drm_kms_helper ttm drm snd_hda_codec_hdmi snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm prime_numbers i2c_algo_bit syscopyarea sysfillrect sysimgblt fb_sys_fops x86_pkg_temp_thermal cdc_ether coretemp crct10dif_pclmul usbnet crc32_pclmul mii ghash_clmulni_intel e1000e mei_me ptp i2c_i801 pps_core mei i2c_smbus intel_lpss_pci fuse [last unloaded: drm]
> > [  761.992986] CPU: 6 PID: 1401 Comm: testdisplay Tainted: G     U             6.0.0-rc4-imre+ #565
> > [  761.992989] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P DDR5 RVP, BIOS ADLPFWI1.R00.3135.A00.2203251419 03/25/2022
> > [  761.992990] RIP: 0010:drm_dp_atomic_find_time_slots+0x236/0x280 [drm_display_helper]
> > [  761.992994] Code: 4c 8b 67 50 4d 85 e4 75 03 4c 8b 27 e8 03 28 4e e1 48 c7 c1 8b 26 2c a0 4c 89 e2 48 c7 c7 a8 26 2c a0 48 89 c6 e8 31 d5 88 e1 <0f> 0b 49 8b 85 d0 00 00 00 4c 89 fa 48 c7 c6 a0 41 2c a0 48 8b 78
> > [  761.992995] RSP: 0018:ffffc9000177ba60 EFLAGS: 00010286
> > [  761.992998] RAX: 0000000000000000 RBX: ffff88810d2f1540 RCX: 0000000000000000
> > [  761.992999] RDX: 0000000000000001 RSI: ffffffff82368a25 RDI: 00000000ffffffff
> > [  761.993000] RBP: ffff888142299d80 R08: ffff8884adbfdfe8 R09: 00000000ffefffff
> > [  761.993001] R10: ffff8884a6bfe000 R11: ffff8884ac443c30 R12: ffff888102972f90
> > [  761.993002] R13: ffff8881163e2cf0 R14: 00000000000003ac R15: ffff88810c501000
> > [  761.993003] FS:  00007f81e4c459c0(0000) GS:ffff888496500000(0000) knlGS:0000000000000000
> > [  761.993004] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [  761.993005] CR2: 0000555dac962a98 CR3: 0000000123a34006 CR4: 0000000000770ee0
> > [  761.993006] PKRU: 55555554
> > [  761.993007] Call Trace:
> > [  761.993009]  <TASK>
> > [  761.993012]  intel_dp_mst_compute_config+0x19a/0x350 [i915]
> > [  761.993090]  intel_atomic_check+0xf37/0x3180 [i915]
> > [  761.993168]  drm_atomic_check_only+0x5d3/0xa60 [drm]
> > [  761.993182]  drm_atomic_commit+0x56/0xc0 [drm]
> > [  761.993192]  ? drm_plane_get_damage_clips.cold+0x1c/0x1c [drm]
> > [  761.993204]  drm_atomic_helper_set_config+0x78/0xc0 [drm_kms_helper]
> > [  761.993214]  drm_mode_setcrtc+0x1ed/0x750 [drm]
> > [  761.993232]  ? drm_mode_getcrtc+0x180/0x180 [drm]
> > [  761.993241]  drm_ioctl_kernel+0xb5/0x150 [drm]
> > [  761.993252]  drm_ioctl+0x203/0x3d0 [drm]
> > [  761.993261]  ? drm_mode_getcrtc+0x180/0x180 [drm]
> > [  761.993276]  __x64_sys_ioctl+0x8a/0xb0
> > [  761.993281]  do_syscall_64+0x38/0x90
> > [  761.993285]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> > [  761.993287] RIP: 0033:0x7f81e551aaff
> > [  761.993288] Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <41> 89 c0 3d 00 f0 ff ff 77 1f 48 8b 44 24 18 64 48 2b 04 25 28 00
> > [  761.993290] RSP: 002b:00007fff4304af10 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> > [  761.993292] RAX: ffffffffffffffda RBX: 00007fff4304afa0 RCX: 00007f81e551aaff
> > [  761.993293] RDX: 00007fff4304afa0 RSI: 00000000c06864a2 RDI: 0000000000000004
> > [  761.993294] RBP: 00000000c06864a2 R08: 0000000000000000 R09: 0000555dac8a9c68
> > [  761.993294] R10: 0000000000000000 R11: 0000000000000246 R12: 00000000000008c4
> > [  761.993295] R13: 0000000000000004 R14: 0000555dac8a9c68 R15: 00007fff4304b098
> > [  761.993301]  </TASK>
> > 
> > Fixes: 083351e96386 ("drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()")
> > Testcase: igt@testdisplay
> > Cc: Lyude Paul <lyude@redhat.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/display/drm_dp_mst_topology.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > index 1de438151cc39..4442cc5602d45 100644
> > --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > @@ -4322,6 +4322,9 @@ int drm_dp_atomic_release_time_slots(struct drm_atomic_state *state,
> >  		return -EINVAL;
> >  	}
> >  
> > +	if (new_conn_state->crtc)
> > +		return 0;
> > +
> >  	drm_dbg_atomic(mgr->dev, "[MST PORT:%p] TU %d -> 0\n", port, payload->time_slots);
> >  	if (!payload->delete) {
> >  		drm_dp_mst_put_port_malloc(port);
> 
> -- 
> Cheers,
>  Lyude Paul (she/her)
>  Software Engineer at Red Hat
> 
