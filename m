Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPvmJzXA2GlVhggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 11:17:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19BA3D49DF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 11:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 333C110E18E;
	Fri, 10 Apr 2026 09:17:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JnPZLQuO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD2C10E18E;
 Fri, 10 Apr 2026 09:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775812657; x=1807348657;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=72ORlU5IRW2q3Oafz+cLcz+MbOVOAPGD97i5nxGd3+o=;
 b=JnPZLQuOeBUZrsjoQB4PHYcKHF+vvFQpSQXTK8xRzpxEqF4vKh2Tt5cw
 7oH6VMsoM4RmVc0G7Bq9xe5JcXGPODzyiQJALgKsTSpSifb6PZNWWLR6H
 FLZAkcHPHTVbCic34WM+72eLpTDZdYBUmVxxGwxh5bvcRifLLWg8USd/Z
 IO55uzlMU9v2WLK4cLI4fEh+1G8JsRQNZi0lnOphdl5z+in4btk6VMTjX
 uMbLJAWuIbVMIR6ADdp/0+Cv/bE0r2vGsnOJp/1xKKC0THFsIa+pSlc1w
 7WJbwp5RjrpG55t3kcO3cgZL4tZjVM63vkwmVF49CO8cywUSwThY2dnw2 g==;
X-CSE-ConnectionGUID: Sr03DzTCQ/K7OzLjHs+MUw==
X-CSE-MsgGUID: b0VSAgqNQc+0r/Xb/i0N+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="94407865"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="94407865"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 02:17:37 -0700
X-CSE-ConnectionGUID: pQq6hG79TNil6ejoefN+Vg==
X-CSE-MsgGUID: QT3pXh/iTzWV8BA9tmWhFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="259502723"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 02:17:30 -0700
Date: Fri, 10 Apr 2026 12:17:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/intel/display: Use drmm for intel_mode_config_cleanup
Message-ID: <adjAJlZk-6WBpNiP@intel.com>
References: <20260408114755.1051393-2-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260408114755.1051393-2-dev@lankhorst.se>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.48 / 15.00];
	R_MIXED_CHARSET(0.83)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid,lankhorst.se:email]
X-Rspamd-Queue-Id: E19BA3D49DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 01:47:56PM +0200, Maarten Lankhorst wrote:
> When force unbinding the driver on xe, xe unloads cleanly except for
> framebuffers and user blobs.
>=20
> This happens because intel_mode_config_cleanup is called during driver
> unbind, but it should be called only after all drm files are closed,
> during drmm cleanup.
>=20
> Related warnings for framebuffers on the subtest:
> [  739.713076] ------------[ cut here ]------------
>                WARN_ON(!list_empty(&dev->mode_config.fb_list))
> [  739.713079] WARNING: drivers/gpu/drm/drm_mode_config.c:584 at drm_mode=
_config_cleanup+0x30b/0x320 [drm], CPU#12: xe_module_load/13145
> ....
> [  739.713328] Call Trace:
> [  739.713330]  <TASK>
> [  739.713335]  ? intel_pmdemand_destroy_state+0x11/0x20 [xe]
> [  739.713574]  ? intel_atomic_global_obj_cleanup+0xe4/0x1a0 [xe]
> [  739.713794]  intel_display_driver_remove_noirq+0x51/0xb0 [xe]
> [  739.714041]  xe_display_fini_early+0x33/0x50 [xe]
> [  739.714284]  devm_action_release+0xf/0x20
> [  739.714294]  devres_release_all+0xad/0xf0
> [  739.714301]  device_unbind_cleanup+0x12/0xa0
> [  739.714305]  device_release_driver_internal+0x1b7/0x210
> [  739.714311]  device_driver_detach+0x14/0x20
> [  739.714315]  unbind_store+0xa6/0xb0
> [  739.714319]  drv_attr_store+0x21/0x30
> [  739.714322]  sysfs_kf_write+0x48/0x60
> [  739.714328]  kernfs_fop_write_iter+0x16b/0x240
> [  739.714333]  vfs_write+0x266/0x520
> [  739.714341]  ksys_write+0x72/0xe0
> [  739.714345]  __x64_sys_write+0x19/0x20
> [  739.714347]  x64_sys_call+0xa15/0xa30
> [  739.714355]  do_syscall_64+0xd8/0xab0
> [  739.714361]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
>=20
> and
>=20
> [  739.714459] ------------[ cut here ]------------
> [  739.714461] xe 0000:67:00.0: [drm] drm_WARN_ON(!list_empty(&fb->filp_h=
ead))
> [  739.714464] WARNING: drivers/gpu/drm/drm_framebuffer.c:833 at drm_fram=
ebuffer_free+0x6c/0x90 [drm], CPU#12: xe_module_load/13145
> [  739.714715] RIP: 0010:drm_framebuffer_free+0x7a/0x90 [drm]
> ...
> [  739.714869] Call Trace:
> [  739.714871]  <TASK>
> [  739.714876]  drm_mode_config_cleanup+0x26a/0x320 [drm]
> [  739.714998]  ? __drm_printfn_seq_file+0x20/0x20 [drm]
> [  739.715115]  ? drm_mode_config_cleanup+0x207/0x320 [drm]
> [  739.715235]  intel_display_driver_remove_noirq+0x51/0xb0 [xe]
> [  739.715576]  xe_display_fini_early+0x33/0x50 [xe]
> [  739.715821]  devm_action_release+0xf/0x20
> [  739.715828]  devres_release_all+0xad/0xf0
> [  739.715843]  device_unbind_cleanup+0x12/0xa0
> [  739.715850]  device_release_driver_internal+0x1b7/0x210
> [  739.715856]  device_driver_detach+0x14/0x20
> [  739.715860]  unbind_store+0xa6/0xb0
> [  739.715865]  drv_attr_store+0x21/0x30
> [  739.715868]  sysfs_kf_write+0x48/0x60
> [  739.715873]  kernfs_fop_write_iter+0x16b/0x240
> [  739.715878]  vfs_write+0x266/0x520
> [  739.715886]  ksys_write+0x72/0xe0
> [  739.715890]  __x64_sys_write+0x19/0x20
> [  739.715893]  x64_sys_call+0xa15/0xa30
> [  739.715900]  do_syscall_64+0xd8/0xab0
> [  739.715905]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
>=20
> and then finally file close blows up:
>=20
> [  743.186530] Oops: general protection fault, probably for non-canonical=
 address 0xdead000000000122: 0000 [#1] SMP
> [  743.186535] CPU: 3 UID: 1000 PID: 3453 Comm: kwin_wayland Tainted: G  =
      W           7.0.0-rc1-valkyria+ #110 PREEMPT_{RT,(lazy)}
> [  743.186537] Tainted: [W]=3DWARN
> [  743.186538] Hardware name: Gigabyte Technology Co., Ltd. X299 AORUS Ga=
ming 3/X299 AORUS Gaming 3-CF, BIOS F8n 12/06/2021
> [  743.186539] RIP: 0010:drm_framebuffer_cleanup+0x55/0xc0 [drm]
> [  743.186588] Code: d8 72 73 0f b6 42 05 ff c3 39 c3 72 e8 49 8d bd 50 0=
7 00 00 31 f6 e8 3a 80 d3 e1 49 8b 44 24 10 49 8d 7c 24 08 49 8b 54 24 08 <=
48> 3b 38 0f 85 95 7f 02 00 48 3b 7a 08 0f 85 8b 7f 02 00 48 89 42
> [  743.186589] RSP: 0018:ffffc900085e3cf8 EFLAGS: 00010202
> [  743.186591] RAX: dead000000000122 RBX: 0000000000000001 RCX: ffffffff8=
217ed03
> [  743.186592] RDX: dead000000000100 RSI: 0000000000000000 RDI: ffff88814=
675ba08
> [  743.186593] RBP: ffffc900085e3d10 R08: 0000000000000000 R09: 000000000=
0000000
> [  743.186593] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88814=
675ba00
> [  743.186594] R13: ffff88810d778000 R14: ffff888119f6dca0 R15: ffff88810=
c660bb0
> [  743.186595] FS:  00007ff377d21280(0000) GS:ffff888cec3f8000(0000) knlG=
S:0000000000000000
> [  743.186596] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  743.186596] CR2: 000055690b55e000 CR3: 0000000113586003 CR4: 000000000=
03706f0
> [  743.186597] Call Trace:
> [  743.186598]  <TASK>
> [  743.186603]  intel_user_framebuffer_destroy+0x12/0x90 [xe]
> [  743.186722]  drm_framebuffer_free+0x3a/0x90 [drm]
> [  743.186750]  ? trace_hardirqs_on+0x5f/0x120
> [  743.186754]  drm_mode_object_put+0x51/0x70 [drm]
> [  743.186786]  drm_fb_release+0x105/0x190 [drm]
> [  743.186812]  ? rt_mutex_slowunlock+0x3aa/0x410
> [  743.186817]  ? rt_spin_lock+0xea/0x1b0
> [  743.186819]  drm_file_free+0x1e0/0x2c0 [drm]
> [  743.186843]  drm_release_noglobal+0x91/0xf0 [drm]
> [  743.186865]  __fput+0x100/0x2e0
> [  743.186869]  fput_close_sync+0x40/0xa0
> [  743.186870]  __x64_sys_close+0x3e/0x80
> [  743.186873]  x64_sys_call+0xa07/0xa30
> [  743.186879]  do_syscall_64+0xd8/0xab0
> [  743.186881]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
> [  743.186882] RIP: 0033:0x7ff37e567732
> [  743.186884] Code: 08 0f 85 a1 38 ff ff 49 89 fb 48 89 f0 48 89 d7 48 8=
9 ce 4c 89 c2 4d 89 ca 4c 8b 44 24 08 4c 8b 4c 24 10 4c 89 5c 24 08 0f 05 <=
c3> 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 f3 0f 1e fa 55 bf 01 00
> [  743.186885] RSP: 002b:00007ffc818169a8 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000003
> [  743.186886] RAX: ffffffffffffffda RBX: 00007ffc81816a30 RCX: 00007ff37=
e567732
> [  743.186887] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 000000000=
0000012
> [  743.186888] RBP: 00007ffc818169d0 R08: 0000000000000000 R09: 000000000=
0000000
> [  743.186889] R10: 0000000000000000 R11: 0000000000000246 R12: 000055d60=
a7996e0
> [  743.186889] R13: 00007ffc81816a90 R14: 00007ffc81816a90 R15: 000055d60=
a782a30
> [  743.186892]  </TASK>
> [  743.186893] Modules linked in: rfcomm snd_hrtimer xt_CHECKSUM xt_MASQU=
ERADE xt_conntrack ipt_REJECT nf_reject_ipv4 xt_tcpudp xt_addrtype nft_comp=
at x_tables nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4=
 nf_tables overlay cfg80211 bnep mtd_intel_dg snd_hda_codec_intelhdmi mtd s=
nd_hda_codec_hdmi nls_utf8 mxm_wmi intel_wmi_thunderbolt gigabyte_wmi wmi_b=
mof xe drm_gpuvm drm_gpusvm_helper i2c_algo_bit drm_buddy drm_ttm_helper tt=
m video drm_suballoc_helper gpu_sched drm_client_lib drm_exec drm_display_h=
elper cec drm_kunit_helpers drm_kms_helper kunit x86_pkg_temp_thermal intel=
_powerclamp coretemp snd_hda_codec_alc882 snd_hda_codec_realtek_lib snd_hda=
_codec_generic snd_hda_intel snd_soc_avs snd_soc_hda_codec snd_hda_ext_core=
 snd_hda_codec snd_hwdep snd_hda_core snd_intel_dspcfg snd_soc_core snd_com=
press ac97_bus snd_pcm snd_seq snd_seq_device snd_timer i2c_i801 i2c_mux sn=
d i2c_smbus btusb btrtl btbcm btmtk btintel bluetooth ecdh_generic rfkill e=
cc mei_me mei ioatdma dca wmi nfsd drm i2c_dev fuse nfnetlink
> [  743.186938] ---[ end trace 0000000000000000 ]---
>=20
> And for property blobs:
>=20
> [  371.072940] BUG: unable to handle page fault for address: 000001ffffff=
ffff
> [  371.072944] #PF: supervisor read access in kernel mode
> [  371.072945] #PF: error_code(0x0000) - not-present page
> [  371.072947] PGD 0 P4D 0
> [  371.072950] Oops: Oops: 0000 [#1] SMP
> [  371.072953] CPU: 0 UID: 1000 PID: 3693 Comm: kwin_wayland Not tainted =
7.0.0-rc1-valkyria+ #111 PREEMPT_{RT,(lazy)}
> [  371.072956] Hardware name: Gigabyte Technology Co., Ltd. X299 AORUS Ga=
ming 3/X299 AORUS Gaming 3-CF, BIOS F8n 12/06/2021
> [  371.072957] RIP: 0010:drm_property_destroy_user_blobs+0x3b/0x90 [drm]
> [  371.073019] Code: 00 00 48 83 ec 10 48 8b 86 30 01 00 00 48 39 c3 74 5=
9 48 89 c2 48 8d 48 c8 48 8b 00 4c 8d 60 c8 eb 04 4c 8d 60 c8 48 8b 71 40 <=
48> 39 16 0f 85 39 32 01 00 48 3b 50 08 0f 85 2f 32 01 00 48 89 70
> [  371.073021] RSP: 0018:ffffc90006a73de8 EFLAGS: 00010293
> [  371.073022] RAX: 000001ffffffffff RBX: ffff888118a1a930 RCX: ffff8881b=
92355c0
> [  371.073024] RDX: ffff8881b92355f8 RSI: 000001ffffffffff RDI: ffff88811=
8be4000
> [  371.073025] RBP: ffffc90006a73e08 R08: ffff8881009b7300 R09: ffff888ce=
cc5b000
> [  371.073026] R10: ffffc90006a73e90 R11: 0000000000000002 R12: 000001fff=
fffffc7
> [  371.073027] R13: ffff888118a1a980 R14: ffff88810b366d20 R15: ffff88811=
8a1a970
> [  371.073028] FS:  00007f1faccbb280(0000) GS:ffff888cec2db000(0000) knlG=
S:0000000000000000
> [  371.073029] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  371.073030] CR2: 000001ffffffffff CR3: 000000010655c001 CR4: 000000000=
03706f0
> [  371.073031] Call Trace:
> [  371.073033]  <TASK>
> [  371.073036]  drm_file_free+0x1df/0x2a0 [drm]
> [  371.073077]  drm_release_noglobal+0x7a/0xe0 [drm]
> [  371.073113]  __fput+0xe2/0x2b0
> [  371.073118]  fput_close_sync+0x40/0xa0
> [  371.073119]  __x64_sys_close+0x3e/0x80
> [  371.073122]  x64_sys_call+0xa07/0xa30
> [  371.073126]  do_syscall_64+0xc0/0x840
> [  371.073130]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
> [  371.073132] RIP: 0033:0x7f1fb3501732
> [  371.073133] Code: 08 0f 85 a1 38 ff ff 49 89 fb 48 89 f0 48 89 d7 48 8=
9 ce 4c 89 c2 4d 89 ca 4c 8b 44 24 08 4c 8b 4c 24 10 4c 89 5c 24 08 0f 05 <=
c3> 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 f3 0f 1e fa 55 bf 01 00
> [  371.073135] RSP: 002b:00007ffe8e6f0278 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000003
> [  371.073136] RAX: ffffffffffffffda RBX: 00007ffe8e6f0300 RCX: 00007f1fb=
3501732
> [  371.073137] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 000000000=
0000012
> [  371.073138] RBP: 00007ffe8e6f02a0 R08: 0000000000000000 R09: 000000000=
0000000
> [  371.073139] R10: 0000000000000000 R11: 0000000000000246 R12: 00005585b=
a46eea0
> [  371.073140] R13: 00007ffe8e6f0360 R14: 00007ffe8e6f0360 R15: 00005585b=
a458a30
> [  371.073143]  </TASK>
> [  371.073144] Modules linked in: rfcomm snd_hrtimer xt_addrtype xt_CHECK=
SUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 xt_tcpudp nft_comp=
at x_tables nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4=
 nf_tables overlay cfg80211 bnep snd_hda_codec_intelhdmi snd_hda_codec_hdmi=
 mtd_intel_dg mtd nls_utf8 wmi_bmof mxm_wmi gigabyte_wmi intel_wmi_thunderb=
olt xe drm_gpuvm drm_gpusvm_helper i2c_algo_bit drm_buddy drm_ttm_helper tt=
m video drm_suballoc_helper gpu_sched drm_client_lib drm_exec drm_display_h=
elper cec drm_kunit_helpers drm_kms_helper kunit x86_pkg_temp_thermal intel=
_powerclamp coretemp snd_hda_codec_alc882 snd_hda_codec_realtek_lib snd_hda=
_codec_generic snd_hda_intel snd_soc_avs snd_soc_hda_codec snd_hda_ext_core=
 snd_hda_codec snd_hwdep snd_hda_core snd_intel_dspcfg snd_soc_core snd_com=
press ac97_bus snd_pcm snd_seq snd_seq_device snd_timer i2c_i801 btusb i2c_=
mux i2c_smbus btrtl snd btbcm btmtk btintel bluetooth ecdh_generic rfkill e=
cc mei_me mei ioatdma dca wmi nfsd drm i2c_dev fuse nfnetlink
> [  371.073198] CR2: 000001ffffffffff
> [  371.073199] ---[ end trace 0000000000000000 ]---
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 28 ++++++++++---------
>  1 file changed, 15 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 23bfecc983e8d..c073f7c1c0805 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -12,6 +12,7 @@
>  #include <drm/display/drm_dp_mst_helper.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_client_event.h>
> +#include <drm/drm_managed.h>
>  #include <drm/drm_mode_config.h>
>  #include <drm/drm_privacy_screen_consumer.h>
>  #include <drm/drm_print.h>
> @@ -111,7 +112,15 @@ static const struct drm_mode_config_helper_funcs int=
el_mode_config_funcs =3D {
>  	.atomic_commit_setup =3D drm_dp_mst_atomic_setup_commit,
>  };
> =20
> -static void intel_mode_config_init(struct intel_display *display)
> +static void intel_mode_config_cleanup(struct drm_device *dev, void *arg)
> +{
> +	struct intel_display *display =3D arg;
> +
> +	intel_atomic_global_obj_cleanup(display);
> +	drm_mode_config_cleanup(display->drm);
> +}
> +
> +static int intel_mode_config_init(struct intel_display *display)
>  {
>  	struct drm_mode_config *mode_config =3D &display->drm->mode_config;
> =20
> @@ -148,12 +157,8 @@ static void intel_mode_config_init(struct intel_disp=
lay *display)
>  	}
> =20
>  	intel_cursor_mode_config_init(display);
> -}
> =20
> -static void intel_mode_config_cleanup(struct intel_display *display)
> -{
> -	intel_atomic_global_obj_cleanup(display);
> -	drm_mode_config_cleanup(display->drm);
> +	return drmm_add_action_or_reset(display->drm, intel_mode_config_cleanup=
, display);
>  }
> =20
>  static void intel_plane_possible_crtcs_init(struct intel_display *displa=
y)
> @@ -255,7 +260,9 @@ int intel_display_driver_probe_noirq(struct intel_dis=
play *display)
> =20
>  	intel_dmc_init(display);
> =20
> -	intel_mode_config_init(display);
> +	ret =3D intel_mode_config_init(display);
> +	if (ret)
> +		goto cleanup_wq_unordered;
> =20
>  	ret =3D intel_cdclk_init(display);
>  	if (ret)
> @@ -456,7 +463,7 @@ int intel_display_driver_probe_nogem(struct intel_dis=
play *display)
> =20
>  	ret =3D intel_crtc_init(display);
>  	if (ret)
> -		goto err_mode_config;
> +		return ret;
> =20
>  	intel_plane_possible_crtcs_init(display);
>  	intel_dpll_init(display);
> @@ -497,9 +504,6 @@ int intel_display_driver_probe_nogem(struct intel_dis=
play *display)
> =20
>  err_hdcp:
>  	intel_hdcp_component_fini(display);
> -err_mode_config:
> -	intel_mode_config_cleanup(display);
> -
>  	return ret;
>  }
> =20
> @@ -618,8 +622,6 @@ void intel_display_driver_remove_noirq(struct intel_d=
isplay *display)
> =20
>  	intel_hdcp_component_fini(display);
> =20
> -	intel_mode_config_cleanup(display);
> -

I don't much like this piecemeal random reordering of things.
The goal should be to have a handful of well defines display=20
driver  functions that can be called by i915/xe in the appropriate
places.

I'm wondering what are all the other display things=20
that need to deal with the unbind vs. last close situation...

Do we have actual tests that keep the various kinds of user
interfaces open after unbind and tries to poke them?

>  	intel_dp_tunnel_mgr_cleanup(display);
> =20
>  	intel_overlay_cleanup(display);
> --=20
> 2.53.0

--=20
Ville Syrj=E4l=E4
Intel
