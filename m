Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMTuJrpA2WkHnwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 20:26:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA1E3DB717
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 20:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BBD10E1A5;
	Fri, 10 Apr 2026 18:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="KnHPlUWF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 099E110E1A5;
 Fri, 10 Apr 2026 18:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1775845541;
 bh=hYHyKi/wLCuZVFu0ncsds3nwPlRIbS9WYjucHhlPRGU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=KnHPlUWFt8DQzPVAN2qgFPlYMnuENLhdNCFK7sJoVvTht33w9DGmapaSU+YjN+Xva
 utgQYdYbYIfQ7AM3cJz+L9P9ftIpchZhSEPPGYymNuism0DXo68XKfIR8tOYkisT86
 hRbine+Xtcyr5z+e9uiMPozqX24E8wDFascxqU2rkmiN76vES/1yhLSTLtZfJWbzWf
 k4wnn+Y3jpr/UKJvTK54OlD95JK54WxlBWZLEa8cy/620gPYfnQqsBedgo/TrOrntr
 cm5uTGtHsM7xrQvmAiOYW+PXPc/DvMhiUmhCwrHubiyB4t8PWlFCwNAgWyNN32+Owb
 1edM7fBPgrwhQ==
Message-ID: <de491480-a459-4ff9-ad53-1763be0dbff2@lankhorst.se>
Date: Fri, 10 Apr 2026 20:25:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/intel/display: Use drmm for intel_mode_config_cleanup
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20260408114755.1051393-2-dev@lankhorst.se>
 <adjAJlZk-6WBpNiP@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <adjAJlZk-6WBpNiP@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: CCA1E3DB717
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hey,

Den 2026-04-10 kl. 11:17, skrev Ville Syrj=C3=A4l=C3=A4:
> On Wed, Apr 08, 2026 at 01:47:56PM +0200, Maarten Lankhorst wrote:
>> When force unbinding the driver on xe, xe unloads cleanly except for
>> framebuffers and user blobs.
>>
>> This happens because intel_mode_config_cleanup is called during driver=

>> unbind, but it should be called only after all drm files are closed,
>> during drmm cleanup.
>>
>> Related warnings for framebuffers on the subtest:
>> [  739.713076] ------------[ cut here ]------------
>>                WARN_ON(!list_empty(&dev->mode_config.fb_list))
>> [  739.713079] WARNING: drivers/gpu/drm/drm_mode_config.c:584 at drm_m=
ode_config_cleanup+0x30b/0x320 [drm], CPU#12: xe_module_load/13145
>> ....
>> [  739.713328] Call Trace:
>> [  739.713330]  <TASK>
>> [  739.713335]  ? intel_pmdemand_destroy_state+0x11/0x20 [xe]
>> [  739.713574]  ? intel_atomic_global_obj_cleanup+0xe4/0x1a0 [xe]
>> [  739.713794]  intel_display_driver_remove_noirq+0x51/0xb0 [xe]
>> [  739.714041]  xe_display_fini_early+0x33/0x50 [xe]
>> [  739.714284]  devm_action_release+0xf/0x20
>> [  739.714294]  devres_release_all+0xad/0xf0
>> [  739.714301]  device_unbind_cleanup+0x12/0xa0
>> [  739.714305]  device_release_driver_internal+0x1b7/0x210
>> [  739.714311]  device_driver_detach+0x14/0x20
>> [  739.714315]  unbind_store+0xa6/0xb0
>> [  739.714319]  drv_attr_store+0x21/0x30
>> [  739.714322]  sysfs_kf_write+0x48/0x60
>> [  739.714328]  kernfs_fop_write_iter+0x16b/0x240
>> [  739.714333]  vfs_write+0x266/0x520
>> [  739.714341]  ksys_write+0x72/0xe0
>> [  739.714345]  __x64_sys_write+0x19/0x20
>> [  739.714347]  x64_sys_call+0xa15/0xa30
>> [  739.714355]  do_syscall_64+0xd8/0xab0
>> [  739.714361]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
>>
>> and
>>
>> [  739.714459] ------------[ cut here ]------------
>> [  739.714461] xe 0000:67:00.0: [drm] drm_WARN_ON(!list_empty(&fb->fil=
p_head))
>> [  739.714464] WARNING: drivers/gpu/drm/drm_framebuffer.c:833 at drm_f=
ramebuffer_free+0x6c/0x90 [drm], CPU#12: xe_module_load/13145
>> [  739.714715] RIP: 0010:drm_framebuffer_free+0x7a/0x90 [drm]
>> ...
>> [  739.714869] Call Trace:
>> [  739.714871]  <TASK>
>> [  739.714876]  drm_mode_config_cleanup+0x26a/0x320 [drm]
>> [  739.714998]  ? __drm_printfn_seq_file+0x20/0x20 [drm]
>> [  739.715115]  ? drm_mode_config_cleanup+0x207/0x320 [drm]
>> [  739.715235]  intel_display_driver_remove_noirq+0x51/0xb0 [xe]
>> [  739.715576]  xe_display_fini_early+0x33/0x50 [xe]
>> [  739.715821]  devm_action_release+0xf/0x20
>> [  739.715828]  devres_release_all+0xad/0xf0
>> [  739.715843]  device_unbind_cleanup+0x12/0xa0
>> [  739.715850]  device_release_driver_internal+0x1b7/0x210
>> [  739.715856]  device_driver_detach+0x14/0x20
>> [  739.715860]  unbind_store+0xa6/0xb0
>> [  739.715865]  drv_attr_store+0x21/0x30
>> [  739.715868]  sysfs_kf_write+0x48/0x60
>> [  739.715873]  kernfs_fop_write_iter+0x16b/0x240
>> [  739.715878]  vfs_write+0x266/0x520
>> [  739.715886]  ksys_write+0x72/0xe0
>> [  739.715890]  __x64_sys_write+0x19/0x20
>> [  739.715893]  x64_sys_call+0xa15/0xa30
>> [  739.715900]  do_syscall_64+0xd8/0xab0
>> [  739.715905]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
>>
>> and then finally file close blows up:
>>
>> [  743.186530] Oops: general protection fault, probably for non-canoni=
cal address 0xdead000000000122: 0000 [#1] SMP
>> [  743.186535] CPU: 3 UID: 1000 PID: 3453 Comm: kwin_wayland Tainted: =
G        W           7.0.0-rc1-valkyria+ #110 PREEMPT_{RT,(lazy)}
>> [  743.186537] Tainted: [W]=3DWARN
>> [  743.186538] Hardware name: Gigabyte Technology Co., Ltd. X299 AORUS=
 Gaming 3/X299 AORUS Gaming 3-CF, BIOS F8n 12/06/2021
>> [  743.186539] RIP: 0010:drm_framebuffer_cleanup+0x55/0xc0 [drm]
>> [  743.186588] Code: d8 72 73 0f b6 42 05 ff c3 39 c3 72 e8 49 8d bd 5=
0 07 00 00 31 f6 e8 3a 80 d3 e1 49 8b 44 24 10 49 8d 7c 24 08 49 8b 54 24=
 08 <48> 3b 38 0f 85 95 7f 02 00 48 3b 7a 08 0f 85 8b 7f 02 00 48 89 42
>> [  743.186589] RSP: 0018:ffffc900085e3cf8 EFLAGS: 00010202
>> [  743.186591] RAX: dead000000000122 RBX: 0000000000000001 RCX: ffffff=
ff8217ed03
>> [  743.186592] RDX: dead000000000100 RSI: 0000000000000000 RDI: ffff88=
814675ba08
>> [  743.186593] RBP: ffffc900085e3d10 R08: 0000000000000000 R09: 000000=
0000000000
>> [  743.186593] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88=
814675ba00
>> [  743.186594] R13: ffff88810d778000 R14: ffff888119f6dca0 R15: ffff88=
810c660bb0
>> [  743.186595] FS:  00007ff377d21280(0000) GS:ffff888cec3f8000(0000) k=
nlGS:0000000000000000
>> [  743.186596] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [  743.186596] CR2: 000055690b55e000 CR3: 0000000113586003 CR4: 000000=
00003706f0
>> [  743.186597] Call Trace:
>> [  743.186598]  <TASK>
>> [  743.186603]  intel_user_framebuffer_destroy+0x12/0x90 [xe]
>> [  743.186722]  drm_framebuffer_free+0x3a/0x90 [drm]
>> [  743.186750]  ? trace_hardirqs_on+0x5f/0x120
>> [  743.186754]  drm_mode_object_put+0x51/0x70 [drm]
>> [  743.186786]  drm_fb_release+0x105/0x190 [drm]
>> [  743.186812]  ? rt_mutex_slowunlock+0x3aa/0x410
>> [  743.186817]  ? rt_spin_lock+0xea/0x1b0
>> [  743.186819]  drm_file_free+0x1e0/0x2c0 [drm]
>> [  743.186843]  drm_release_noglobal+0x91/0xf0 [drm]
>> [  743.186865]  __fput+0x100/0x2e0
>> [  743.186869]  fput_close_sync+0x40/0xa0
>> [  743.186870]  __x64_sys_close+0x3e/0x80
>> [  743.186873]  x64_sys_call+0xa07/0xa30
>> [  743.186879]  do_syscall_64+0xd8/0xab0
>> [  743.186881]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
>> [  743.186882] RIP: 0033:0x7ff37e567732
>> [  743.186884] Code: 08 0f 85 a1 38 ff ff 49 89 fb 48 89 f0 48 89 d7 4=
8 89 ce 4c 89 c2 4d 89 ca 4c 8b 44 24 08 4c 8b 4c 24 10 4c 89 5c 24 08 0f=
 05 <c3> 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 f3 0f 1e fa 55 bf 01 00
>> [  743.186885] RSP: 002b:00007ffc818169a8 EFLAGS: 00000246 ORIG_RAX: 0=
000000000000003
>> [  743.186886] RAX: ffffffffffffffda RBX: 00007ffc81816a30 RCX: 00007f=
f37e567732
>> [  743.186887] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 000000=
0000000012
>> [  743.186888] RBP: 00007ffc818169d0 R08: 0000000000000000 R09: 000000=
0000000000
>> [  743.186889] R10: 0000000000000000 R11: 0000000000000246 R12: 000055=
d60a7996e0
>> [  743.186889] R13: 00007ffc81816a90 R14: 00007ffc81816a90 R15: 000055=
d60a782a30
>> [  743.186892]  </TASK>
>> [  743.186893] Modules linked in: rfcomm snd_hrtimer xt_CHECKSUM xt_MA=
SQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 xt_tcpudp xt_addrtype nft=
_compat x_tables nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defr=
ag_ipv4 nf_tables overlay cfg80211 bnep mtd_intel_dg snd_hda_codec_intelh=
dmi mtd snd_hda_codec_hdmi nls_utf8 mxm_wmi intel_wmi_thunderbolt gigabyt=
e_wmi wmi_bmof xe drm_gpuvm drm_gpusvm_helper i2c_algo_bit drm_buddy drm_=
ttm_helper ttm video drm_suballoc_helper gpu_sched drm_client_lib drm_exe=
c drm_display_helper cec drm_kunit_helpers drm_kms_helper kunit x86_pkg_t=
emp_thermal intel_powerclamp coretemp snd_hda_codec_alc882 snd_hda_codec_=
realtek_lib snd_hda_codec_generic snd_hda_intel snd_soc_avs snd_soc_hda_c=
odec snd_hda_ext_core snd_hda_codec snd_hwdep snd_hda_core snd_intel_dspc=
fg snd_soc_core snd_compress ac97_bus snd_pcm snd_seq snd_seq_device snd_=
timer i2c_i801 i2c_mux snd i2c_smbus btusb btrtl btbcm btmtk btintel blue=
tooth ecdh_generic rfkill ecc mei_me mei ioatdma dca wmi nfsd drm i2c_dev=
 fuse nfnetlink
>> [  743.186938] ---[ end trace 0000000000000000 ]---
>>
>> And for property blobs:
>>
>> [  371.072940] BUG: unable to handle page fault for address: 000001fff=
fffffff
>> [  371.072944] #PF: supervisor read access in kernel mode
>> [  371.072945] #PF: error_code(0x0000) - not-present page
>> [  371.072947] PGD 0 P4D 0
>> [  371.072950] Oops: Oops: 0000 [#1] SMP
>> [  371.072953] CPU: 0 UID: 1000 PID: 3693 Comm: kwin_wayland Not taint=
ed 7.0.0-rc1-valkyria+ #111 PREEMPT_{RT,(lazy)}
>> [  371.072956] Hardware name: Gigabyte Technology Co., Ltd. X299 AORUS=
 Gaming 3/X299 AORUS Gaming 3-CF, BIOS F8n 12/06/2021
>> [  371.072957] RIP: 0010:drm_property_destroy_user_blobs+0x3b/0x90 [dr=
m]
>> [  371.073019] Code: 00 00 48 83 ec 10 48 8b 86 30 01 00 00 48 39 c3 7=
4 59 48 89 c2 48 8d 48 c8 48 8b 00 4c 8d 60 c8 eb 04 4c 8d 60 c8 48 8b 71=
 40 <48> 39 16 0f 85 39 32 01 00 48 3b 50 08 0f 85 2f 32 01 00 48 89 70
>> [  371.073021] RSP: 0018:ffffc90006a73de8 EFLAGS: 00010293
>> [  371.073022] RAX: 000001ffffffffff RBX: ffff888118a1a930 RCX: ffff88=
81b92355c0
>> [  371.073024] RDX: ffff8881b92355f8 RSI: 000001ffffffffff RDI: ffff88=
8118be4000
>> [  371.073025] RBP: ffffc90006a73e08 R08: ffff8881009b7300 R09: ffff88=
8cecc5b000
>> [  371.073026] R10: ffffc90006a73e90 R11: 0000000000000002 R12: 000001=
ffffffffc7
>> [  371.073027] R13: ffff888118a1a980 R14: ffff88810b366d20 R15: ffff88=
8118a1a970
>> [  371.073028] FS:  00007f1faccbb280(0000) GS:ffff888cec2db000(0000) k=
nlGS:0000000000000000
>> [  371.073029] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [  371.073030] CR2: 000001ffffffffff CR3: 000000010655c001 CR4: 000000=
00003706f0
>> [  371.073031] Call Trace:
>> [  371.073033]  <TASK>
>> [  371.073036]  drm_file_free+0x1df/0x2a0 [drm]
>> [  371.073077]  drm_release_noglobal+0x7a/0xe0 [drm]
>> [  371.073113]  __fput+0xe2/0x2b0
>> [  371.073118]  fput_close_sync+0x40/0xa0
>> [  371.073119]  __x64_sys_close+0x3e/0x80
>> [  371.073122]  x64_sys_call+0xa07/0xa30
>> [  371.073126]  do_syscall_64+0xc0/0x840
>> [  371.073130]  entry_SYSCALL_64_after_hwframe+0x4b/0x53
>> [  371.073132] RIP: 0033:0x7f1fb3501732
>> [  371.073133] Code: 08 0f 85 a1 38 ff ff 49 89 fb 48 89 f0 48 89 d7 4=
8 89 ce 4c 89 c2 4d 89 ca 4c 8b 44 24 08 4c 8b 4c 24 10 4c 89 5c 24 08 0f=
 05 <c3> 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 f3 0f 1e fa 55 bf 01 00
>> [  371.073135] RSP: 002b:00007ffe8e6f0278 EFLAGS: 00000246 ORIG_RAX: 0=
000000000000003
>> [  371.073136] RAX: ffffffffffffffda RBX: 00007ffe8e6f0300 RCX: 00007f=
1fb3501732
>> [  371.073137] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 000000=
0000000012
>> [  371.073138] RBP: 00007ffe8e6f02a0 R08: 0000000000000000 R09: 000000=
0000000000
>> [  371.073139] R10: 0000000000000000 R11: 0000000000000246 R12: 000055=
85ba46eea0
>> [  371.073140] R13: 00007ffe8e6f0360 R14: 00007ffe8e6f0360 R15: 000055=
85ba458a30
>> [  371.073143]  </TASK>
>> [  371.073144] Modules linked in: rfcomm snd_hrtimer xt_addrtype xt_CH=
ECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 xt_tcpudp nft=
_compat x_tables nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defr=
ag_ipv4 nf_tables overlay cfg80211 bnep snd_hda_codec_intelhdmi snd_hda_c=
odec_hdmi mtd_intel_dg mtd nls_utf8 wmi_bmof mxm_wmi gigabyte_wmi intel_w=
mi_thunderbolt xe drm_gpuvm drm_gpusvm_helper i2c_algo_bit drm_buddy drm_=
ttm_helper ttm video drm_suballoc_helper gpu_sched drm_client_lib drm_exe=
c drm_display_helper cec drm_kunit_helpers drm_kms_helper kunit x86_pkg_t=
emp_thermal intel_powerclamp coretemp snd_hda_codec_alc882 snd_hda_codec_=
realtek_lib snd_hda_codec_generic snd_hda_intel snd_soc_avs snd_soc_hda_c=
odec snd_hda_ext_core snd_hda_codec snd_hwdep snd_hda_core snd_intel_dspc=
fg snd_soc_core snd_compress ac97_bus snd_pcm snd_seq snd_seq_device snd_=
timer i2c_i801 btusb i2c_mux i2c_smbus btrtl snd btbcm btmtk btintel blue=
tooth ecdh_generic rfkill ecc mei_me mei ioatdma dca wmi nfsd drm i2c_dev=
 fuse nfnetlink
>> [  371.073198] CR2: 000001ffffffffff
>> [  371.073199] ---[ end trace 0000000000000000 ]---
>>
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> ---
>>  .../drm/i915/display/intel_display_driver.c   | 28 ++++++++++--------=
-
>>  1 file changed, 15 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/dri=
vers/gpu/drm/i915/display/intel_display_driver.c
>> index 23bfecc983e8d..c073f7c1c0805 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -12,6 +12,7 @@
>>  #include <drm/display/drm_dp_mst_helper.h>
>>  #include <drm/drm_atomic_helper.h>
>>  #include <drm/drm_client_event.h>
>> +#include <drm/drm_managed.h>
>>  #include <drm/drm_mode_config.h>
>>  #include <drm/drm_privacy_screen_consumer.h>
>>  #include <drm/drm_print.h>
>> @@ -111,7 +112,15 @@ static const struct drm_mode_config_helper_funcs =
intel_mode_config_funcs =3D {
>>  	.atomic_commit_setup =3D drm_dp_mst_atomic_setup_commit,
>>  };
>> =20
>> -static void intel_mode_config_init(struct intel_display *display)
>> +static void intel_mode_config_cleanup(struct drm_device *dev, void *a=
rg)
>> +{
>> +	struct intel_display *display =3D arg;
>> +
>> +	intel_atomic_global_obj_cleanup(display);
>> +	drm_mode_config_cleanup(display->drm);
>> +}
>> +
>> +static int intel_mode_config_init(struct intel_display *display)
>>  {
>>  	struct drm_mode_config *mode_config =3D &display->drm->mode_config;
>> =20
>> @@ -148,12 +157,8 @@ static void intel_mode_config_init(struct intel_d=
isplay *display)
>>  	}
>> =20
>>  	intel_cursor_mode_config_init(display);
>> -}
>> =20
>> -static void intel_mode_config_cleanup(struct intel_display *display)
>> -{
>> -	intel_atomic_global_obj_cleanup(display);
>> -	drm_mode_config_cleanup(display->drm);
>> +	return drmm_add_action_or_reset(display->drm, intel_mode_config_clea=
nup, display);
>>  }
>> =20
>>  static void intel_plane_possible_crtcs_init(struct intel_display *dis=
play)
>> @@ -255,7 +260,9 @@ int intel_display_driver_probe_noirq(struct intel_=
display *display)
>> =20
>>  	intel_dmc_init(display);
>> =20
>> -	intel_mode_config_init(display);
>> +	ret =3D intel_mode_config_init(display);
>> +	if (ret)
>> +		goto cleanup_wq_unordered;
>> =20
>>  	ret =3D intel_cdclk_init(display);
>>  	if (ret)
>> @@ -456,7 +463,7 @@ int intel_display_driver_probe_nogem(struct intel_=
display *display)
>> =20
>>  	ret =3D intel_crtc_init(display);
>>  	if (ret)
>> -		goto err_mode_config;
>> +		return ret;
>> =20
>>  	intel_plane_possible_crtcs_init(display);
>>  	intel_dpll_init(display);
>> @@ -497,9 +504,6 @@ int intel_display_driver_probe_nogem(struct intel_=
display *display)
>> =20
>>  err_hdcp:
>>  	intel_hdcp_component_fini(display);
>> -err_mode_config:
>> -	intel_mode_config_cleanup(display);
>> -
>>  	return ret;
>>  }
>> =20
>> @@ -618,8 +622,6 @@ void intel_display_driver_remove_noirq(struct inte=
l_display *display)
>> =20
>>  	intel_hdcp_component_fini(display);
>> =20
>> -	intel_mode_config_cleanup(display);
>> -
>=20
> I don't much like this piecemeal random reordering of things.
> The goal should be to have a handful of well defines display=20
> driver  functions that can be called by i915/xe in the appropriate
> places.
>=20
> I'm wondering what are all the other display things=20
> that need to deal with the unbind vs. last close situation...
>=20
> Do we have actual tests that keep the various kinds of user
> interfaces open after unbind and tries to poke them?
>=20
>>  	intel_dp_tunnel_mgr_cleanup(display);
>> =20
>>  	intel_overlay_cleanup(display);
>> --=20
>> 2.53.0
>=20

I did create one specifically for this test.

https://patchwork.freedesktop.org/patch/706994/?series=3D162133&rev=3D2

Kind regards,
~Maarten Lankhorst
