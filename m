Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A99082772A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 19:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA94F10E280;
	Mon,  8 Jan 2024 18:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D05D10E280;
 Mon,  8 Jan 2024 18:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704737974; x=1736273974;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=RpK9D7FLa1pY62D7LwsSEd6vX9bO0ShW+/8fyIa0GP8=;
 b=eiOQLzdNoN/ZIjYYorZgAliDF27NzLkJ4Scf5rF5vwETI5xgl0EH6a3k
 MzOG+lpUWGBn6MGP/flsq67lP2ega5XnHl0C2M7MRyAVcBPELaXvRqPaJ
 IJ7GUCIVbM5vtqpy2QskUROLQzLhx9rosSI4kmyv7Q5HyBvO8Mpbjmuxz
 CxVMFWefilEN56HVUtHi1OmaDDHnY7qz0w2mPdfzxC0mXer85rSL3O2A4
 OinwYVX/Zmb/5EnJZ5X6lvVgaCq0XrHM9tunMYEEXFUNIyjxZsPecqCUv
 8OgOt4SN3nQ1MCECaKKAkckcae4/B+KcqkjJSmHE6aqzsxPKrBn63cLlo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="4712036"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; 
   d="scan'208";a="4712036"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 10:19:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; d="scan'208";a="15992811"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 10:19:31 -0800
Date: Mon, 8 Jan 2024 20:19:43 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jouni Hogander <jouni.hogander@intel.com>,
 I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e_fo?=
 =?utf-8?Q?r?= drm/i915: Fix HPD handling during driver init/shutdown (rev2)
Message-ID: <ZZw8vyIE/Q8bqPm4@ideak-desk.fi.intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <170444392452.20654.4523537159354092021@5338d5abeb45>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170444392452.20654.4523537159354092021@5338d5abeb45>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 05, 2024 at 08:38:44AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix HPD handling during driver init/shutdown (rev2)
> URL   : https://patchwork.freedesktop.org/series/128186/
> State : failure

Thanks for the review, the patchset is pushed to drm-intel-next with the
commit log changed and the function documentation you requested added in
patch 7.

The failures are unrelated, see below for the details.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14078_full -> Patchwork_128186v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_128186v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_128186v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 9)
> ------------------------------
> 
>   Additional (1): pig-kbl-iris 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_128186v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html

Starting subtest: basic-s3-without-i915
(i915_suspend:1746) igt_core-WARNING: [cmd] rtcwake: write error
(i915_suspend:1746) igt_aux-WARNING: rtcwake failed with 1
Check dmesg for further details.
(i915_suspend:1746) igt_aux-CRITICAL: Test assertion failure function suspend_via_rtcwake, file ../../../usr/src/igt-gpu-tools/lib/igt_aux.c:822:
(i915_suspend:1746) igt_aux-CRITICAL: Failed assertion: ret == 0
(i915_suspend:1746) igt_aux-CRITICAL: error: 1 != 0
Subtest basic-s3-without-i915 failed.

The suspend - i915 being unloaded by that time already - is aborted by some device:
<7> [280.734120] PM: Triggering wakeup from IRQ 122
...
<6> [281.002605] Wakeup pending. Abort CPU freeze
...

As i915 is not loaded, I can't see this related to the changes.

> 
>   * igt@kms_atomic_transition@modeset-transition@1x-outputs:
>     - shard-dg2:          [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg2-11/igt@kms_atomic_transition@modeset-transition@1x-outputs.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-7/igt@kms_atomic_transition@modeset-transition@1x-outputs.html

System hangs/or gets unreachable (network device?). This does happen
during a modeset:

<7> [296.435086] i915 0000:03:00.0: [drm:intel_power_well_enable [i915]] enabling DDI_IO_D
<7> [296.435395] i915 0000:03:00.0: [drm:intel_enable_transcoder [i915]] enabling pipe B
<7> [296.454225] i915 0000:03:00.0: [drm:gen9_dbuf_slices_update [i915]] Updating dbuf slices to 0x3
<7> [296.454837] i915 0000:03:00.0: [drm:verify_connector_state [i915]] [CONNECTOR:284:HDMI-A-3]
<7> [296.455106] i915 0000:03:00.0: [drm:intel_modeset_verify_crtc [i915]] [CRTC:131:pipe B]
<7> [296.456214] i915 0000:03:00.0: [drm:i915_fifo_underrun_reset_write [i915]] Re-arming FIFO underruns on pipe B

the code path affected by this change (mostly driver init/deinit
sequences) should not be active here. The closest preceding acivity
affected by the changes are AUX transfers 500 msec earlier:

<7> [295.905316] i915 0000:03:00.0: [drm:intel_dp_aux_xfer [i915]] AUX D/DDI D/PHY D: timeout (status 0x7d40023f)

However the HPD is asserted at this point and the transfer will time out
(as expected, due to the HPD pin shared by the DP and HDMI connectors,
HDMI being actual active/used one). The patches (the last 2 one) should
not change the behavior there though, since the HPD is asserted.

There are several previous CI runs where DG2 hangs/gets unresponsive,
listed in this result email:
https://gitlab.freedesktop.org/drm/intel/issues/9407
https://gitlab.freedesktop.org/drm/intel/issues/7297

and others below. Mostly GEM/suspend-resume tests, but also 3 cases with
KMS tests:

CI_DRM_14066/shard-dg2-2/0/igt_runner.log:
[264.233074] [042/143] (739s left) gem_pxp (verify-pxp-stale-buf-optout-execution)
[266.873495] Subtest verify-pxp-stale-buf-optout-execution: SKIP (0.000s)
[266.940122] [043/143] (737s left) i915_module_load (reload-with-fault-injection)
[266.979443] Starting subtest: reload-with-fault-injection

CI_DRM_14068/shard-dg2-5/0/igt_runner.log:
CI_DRM_14072/shard-dg2-10/0/igt_runner.log:
[522.831432] [085/143] (483s left) gem_exec_suspend (basic-s0)
[522.897549] Starting subtest: basic-S0
[522.898515] Starting dynamic subtest: smem
[543.721500] Dynamic subtest smem: SUCCESS (6.535s)
[543.730805] Starting dynamic subtest: lmem0

CI_DRM_14072/shard-dg2-6/3/igt_runner.log:
CI_DRM_14072/shard-dg2-7/13/igt_runner.log
[230.285297] [043/143] (784s left) i915_module_load (reload-with-fault-injection)
[230.325583] Starting subtest: reload-with-fault-injection

CI_DRM_14077/shard-dg2-1/13/igt_runner.log:
[248.148003] Subtest dontneed-before-mmap: SUCCESS (0.016s)
[248.219555] [053/144] (769s left) kms_rotation_crc (multiplane-rotation-cropping-top)

CI_DRM_14079/shard-dg2-10/20/igt_runner.log:
[187.199842] [022/144] (811s left) kms_psr (pr-cursor-mmap-cpu)

CI_DRM_14091/shard-dg2-6/7/igt_runner.log:
[88.840821] [020/143] (912s left) gem_exec_gttfill (engines)
[88.925203] Starting subtest: engines
[88.926211] Starting dynamic subtest: rcs0
[114.294628] Dynamic subtest rcs0: SUCCESS (25.369s)
...
[292.438128] Starting dynamic subtest: ccs2

IGTPW_10479/shard-dg2-6/0/igt_runner.log:
[1057.656927] [080/142] (  0s left) kms_cursor_legacy (cursor-vs-flip-atomic-transitions)
[1059.607584] Starting subtest: cursor-vs-flip-atomic-transitions

[529.999926] [112/142] (476s left) gem_exec_reloc (basic-gtt)
[530.075589] Subtest basic-gtt: SKIP (0.000s)
[530.109675] [113/142] (476s left) gem_create (create-ext-cpu-access-big)

>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-rkl:          [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

Something odd is happening with the logging here. The dmesg log on the above page ends with:
<7> [367.191298] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DC_off
<7> [367.191430] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] Setting DC state from 02 to 00

while the dmesg log stored on the server ends with:
<7>[  365.521647] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DC_off
<7>[  365.521783] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] Setting DC state from 02 to 00

According to igt_runner.log the test does succeed at:
[369.567210] Subtest flip-vs-cursor-legacy: SUCCESS (8.596s)

and there are several other tests completing until the CI run ends at:
[372.117819] Subtest verify-random-ccs: SKIP (0.000s)
[372.154864] Closing watchdogs
Done.

So I presume this test didn't actually fail.


>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][7]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html

Looks like an unrelated GEM issue:
<4>[   92.897104] ------------[ cut here ]------------
<3>[   92.897136] ODEBUG: free active (active state 0) object: ffff88811bd37158 object type: i915_active hint: __i915_vma_active+0x0/0x50 [i915]
<4>[   92.897298] WARNING: CPU: 3 PID: 218 at lib/debugobjects.c:514 debug_print_object+0x80/0xb0
<4>[   92.897304] Modules linked in: snd_hda_intel i915 vgem drm_shmem_helper fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio x86_pkg_temp_thermal coretemp kvm_intel kvm snd_intel_dspcfg snd_hda_codec prime_numbers i2c_algo_bit ttm snd_hwdep snd_hda_core e1000e smsc75xx irqbypass mei_me video usbnet crct10dif_pclmul wmi_bmof mii crc32_pclmul ghash_clmulni_intel igc drm_display_helper ptp i2c_i801 snd_pcm drm_buddy pps_core mei i2c_smbus intel_lpss_pci wmi [last unloaded: i915]
<4>[   92.897359] CPU: 3 PID: 218 Comm: kworker/3:2 Not tainted 6.7.0-rc8-Patchwork_128186v2-g1baf990bc673+ #1
<4>[   92.897361] Hardware name: Intel Corporation Rocket Lake Client Platform/RocketLake S UDIMM 6L RVP, BIOS RKLSFWI1.R00.3173.A03.2204210138 04/21/2022
<4>[   92.897363] Workqueue: i915-unordered __intel_wakeref_put_work [i915]
<4>[   92.897434] RIP: 0010:debug_print_object+0x80/0xb0
<4>[   92.897437] Code: 34 24 83 c2 01 8b 4b 14 48 c7 c7 18 bc 49 82 89 15 45 97 b1 02 8b 53 10 50 4c 8b 4d 00 48 8b 14 d5 e0 dd 04 82 e8 10 e4 a7 ff <0f> 0b 58 83 05 8a a1 23 01 01 48 83 c4 08 5b 5d c3 cc cc cc cc 83
<4>[   92.897439] RSP: 0018:ffffc90000563ce8 EFLAGS: 00010286
<4>[   92.897442] RAX: 0000000000000000 RBX: ffff888102915a70 RCX: 0000000000000000
<4>[   92.897444] RDX: 0000000000000002 RSI: ffffffff8240fb77 RDI: 00000000ffffffff
<4>[   92.897446] RBP: ffffffffa087b480 R08: 0000000000000000 R09: ffffc90000563b80
<4>[   92.897448] R10: 0000000000000001 R11: 0000000000000001 R12: ffff88811bd37158
<4>[   92.897449] R13: ffffffff84225138 R14: ffff8881328f1e00 R15: ffff8881328f1b40
<4>[   92.897451] FS:  0000000000000000(0000) GS:ffff88844f380000(0000) knlGS:0000000000000000
<4>[   92.897453] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[   92.897454] CR2: 000055f9f27db110 CR3: 000000010f4d8001 CR4: 0000000000770ef0
<4>[   92.897456] PKRU: 55555554
<4>[   92.897458] Call Trace:
<4>[   92.897459]  <TASK>
<4>[   92.897461]  ? __warn+0x7f/0x170
<4>[   92.897465]  ? debug_print_object+0x80/0xb0
<4>[   92.897469]  ? report_bug+0x1f8/0x200
<4>[   92.897475]  ? handle_bug+0x3c/0x70
<4>[   92.897478]  ? exc_invalid_op+0x18/0x70
<4>[   92.897480]  ? asm_exc_invalid_op+0x1a/0x20
<4>[   92.897487]  ? debug_print_object+0x80/0xb0
<4>[   92.897491]  ? debug_print_object+0x80/0xb0
<4>[   92.897494]  ? __pfx___i915_vma_active+0x10/0x10 [i915]
<4>[   92.897610]  debug_object_free+0xeb/0x110
<4>[   92.897614]  i915_active_fini+0x14/0x110 [i915]
<4>[   92.897843]  release_references+0xfe/0x1e0 [i915]
<4>[   92.897962]  i915_vma_parked+0x1db/0x380 [i915]
<4>[   92.898080]  __gt_park+0x112/0x210 [i915]
<4>[   92.898168]  ____intel_wakeref_put_last+0x1d/0x80 [i915]
<4>[   92.898236]  ? process_scheduled_works+0x264/0x530
<4>[   92.898240]  process_scheduled_works+0x2db/0x530
<4>[   92.898246]  ? __pfx_worker_thread+0x10/0x10
<4>[   92.898248]  worker_thread+0x18c/0x350
<4>[   92.898252]  ? __pfx_worker_thread+0x10/0x10
<4>[   92.898254]  kthread+0xfe/0x130
<4>[   92.898257]  ? __pfx_kthread+0x10/0x10
<4>[   92.898260]  ret_from_fork+0x2c/0x50
<4>[   92.898263]  ? __pfx_kthread+0x10/0x10
<4>[   92.898266]  ret_from_fork_asm+0x1b/0x30
<4>[   92.898274]  </TASK>

>   * igt@prime_busy@hang-wait@vecs0:
>     - shard-glk:          [PASS][8] -> [INCOMPLETE][9] +1 other test incomplete
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-glk9/igt@prime_busy@hang-wait@vecs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-glk1/igt@prime_busy@hang-wait@vecs0.html

The machine hanges during a GPU hang test:

<7>[  341.264285] [IGT] prime_busy: starting dynamic subtest bcs0
<7>[  341.264694] i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
<5>[  348.235137] i915 0000:00:02.0: [drm] Resetting bcs0 for preemption time out
<6>[  348.235438] i915 0000:00:02.0: [drm] GPU HANG: ecode 9:2:e77ffef2, in prime_busy [5141]
<7>[  348.241176] [IGT] prime_busy: finished subtest bcs0, SUCCESS
<7>[  348.245606] [IGT] prime_busy: starting dynamic subtest vcs0
<7>[  348.246141] i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]

The above GPU hangs are expected I assume, so not sure what can be the
root-cause here. However I don't think it's related to changes, as
there's only an HDMI output on this glk.

> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_suspend@basic-s3@smem (NEW):
>     - pig-kbl-iris:       NOTRUN -> [{DMESG-WARN}][10]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/pig-kbl-iris/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14078_full and Patchwork_128186v2_full:
> 
> ### New Piglit tests (1) ###
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - Statuses : 1 dmesg-warn(s)
>     - Exec time: [3.79] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_128186v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-rkl:          ([PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [FAIL][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58]) ([i915#8293])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-6/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-5/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-5/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-5/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-2/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-2/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-2/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-2/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-1/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-1/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-6/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-6/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-4/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-4/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-4/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-3/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#8411])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8411])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@ccs3:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#8414]) +30 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@drm_fdinfo@busy-idle-check-all@ccs3.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#8414])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#8414])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#9323])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][65] ([i915#7297])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#7697])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@hog-create@smem0:
>     - shard-mtlp:         NOTRUN -> [FAIL][67] ([i915#8758])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@gem_create@hog-create@smem0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#8555])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [PASS][69] -> [FAIL][70] ([i915#5784]) +1 other test fail
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg1-19/igt@gem_eio@unwedge-stress.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-19/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4771])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#4771])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4036])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-3/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#6334]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#6334])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@gem_exec_capture@capture-invisible@smem0.html
>     - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#6334])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture@vcs0-smem:
>     - shard-mtlp:         [PASS][77] -> [DMESG-WARN][78] ([i915#5591]) +1 other test dmesg-warn
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-mtlp-5/igt@gem_exec_capture@capture@vcs0-smem.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-2/igt@gem_exec_capture@capture@vcs0-smem.html
> 
>   * igt@gem_exec_capture@pi@vcs1:
>     - shard-mtlp:         [PASS][79] -> [FAIL][80] ([i915#4475] / [i915#7765])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-mtlp-3/igt@gem_exec_capture@pi@vcs1.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-3/igt@gem_exec_capture@pi@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][81] ([i915#2842]) +3 other tests fail
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-rkl:          [PASS][82] -> [FAIL][83] ([i915#2842])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-3/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [PASS][84] -> [FAIL][85] ([i915#2876])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4812])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3539] / [i915#4852])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3539])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#3539] / [i915#4852])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3281]) +2 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_exec_reloc@basic-cpu-gtt.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3281]) +12 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#3281]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-cpu-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#3281]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-wc.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4812]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4537] / [i915#4812])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          NOTRUN -> [ABORT][96] ([i915#7975] / [i915#8213])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4860]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4860])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#4613]) +5 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-glk5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4613]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#4613]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#4613]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap@short-mmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4083]) +3 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@gem_mmap@short-mmap.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#4077]) +3 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4083])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4083]) +6 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3282]) +4 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#3282]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4270])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#4270])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4270]) +5 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#4270]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#4270])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#5190]) +14 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4079]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4077]) +13 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4079])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4879])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3297]) +2 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3323])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3297]) +6 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#3282])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3297]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3297] / [i915#4880])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3297]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gen7_exec_parse@load-register-reg:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([fdo#109289])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@gen7_exec_parse@load-register-reg.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#2527])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#2527])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#2527] / [i915#2856])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#2856])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#2856]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][132] -> [INCOMPLETE][133] ([i915#9200] / [i915#9849])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#6412])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@i915_module_load@resize-bar.html
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#6412])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [PASS][136] -> [INCOMPLETE][137] ([i915#9407])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#6621])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#8925])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#3555] / [i915#8925])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@i915_pm_rps@thresholds-park@gt1.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#8925])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([fdo#109302])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#5723])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#5723])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4215] / [i915#5190])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-vga-1-linear:
>     - shard-snb:          NOTRUN -> [SKIP][146] ([fdo#109271]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-vga-1-linear.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#8709]) +11 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_async_flips@crc@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][148] ([i915#8247]) +3 other tests fail
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@kms_async_flips@crc@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#3555]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#9531])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#9531])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#1769] / [i915#3555])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         [PASS][153] -> [FAIL][154] ([i915#5138])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#5286]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([fdo#111615] / [i915#5286])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#4538] / [i915#5286])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([fdo#111614] / [i915#3638])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([fdo#111614])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([fdo#111614]) +2 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][161] -> [FAIL][162] ([i915#3743])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#3638])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([fdo#111615]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#4538])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([fdo#111615]) +2 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-addfb.html
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#6187]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([fdo#110723]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#5354] / [i915#6095]) +7 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#5354] / [i915#6095]) +14 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#5354] / [i915#6095]) +22 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][173] ([fdo#109271]) +235 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-glk5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#5354] / [i915#6095]) +18 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#5354]) +11 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_ccs@pipe-d-crc-primary-basic-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#5354]) +86 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#4087]) +3 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([fdo#111827])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_chamelium_color@ctm-0-50.html
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111827])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@ctm-0-75:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([fdo#111827])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_chamelium_color@ctm-0-75.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([fdo#111827])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-mtlp:         NOTRUN -> [SKIP][182] ([fdo#111827])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#7828]) +10 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#7828]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#7828]) +2 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#7828]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-fast.html
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#7828]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3116])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#3299])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#3299])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#7118])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_content_protection@lic.html
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#6944] / [i915#7116] / [i915#7118])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#7118]) +2 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][194] ([i915#1339])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#3359]) +2 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#3555] / [i915#8814])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([fdo#109279] / [i915#3359])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>     - shard-tglu:         NOTRUN -> [SKIP][198] ([fdo#109279] / [i915#3359])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#8814]) +2 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([fdo#111825]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#9809]) +2 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([fdo#109274] / [i915#5354]) +5 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([fdo#111825]) +8 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([fdo#109274]) +2 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#4103] / [i915#4213])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9723])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9833])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3804])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#3555] / [i915#3840])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#3840] / [i915#9688])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-3/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#3555] / [i915#3840])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][212] ([fdo#111767] / [i915#3637])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([fdo#109274] / [fdo#111767])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-tglu:         NOTRUN -> [SKIP][214] ([fdo#109274] / [fdo#111767] / [i915#3637]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([fdo#111767] / [fdo#111825])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][216] -> [DMESG-WARN][217] ([i915#10007])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][218] ([fdo#109274] / [i915#3637])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#3637])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([fdo#109274]) +8 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#8381]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#8810])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#2587] / [i915#2672]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#2672]) +5 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-dg1:          NOTRUN -> [SKIP][225] ([fdo#109285])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:
>     - shard-snb:          [PASS][226] -> [SKIP][227] ([fdo#109271]) +4 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#8708]) +3 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#1825]) +13 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#3458]) +14 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#3458]) +4 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][232] ([fdo#109280]) +12 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#8708]) +25 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#9766])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3023]) +8 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#8708]) +5 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([fdo#111825] / [i915#1825]) +8 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][238] ([fdo#110189]) +8 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#6118])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#3555] / [i915#8228])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#3555] / [i915#8228])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#3555] / [i915#8228])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#6301])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][244] ([fdo#109289]) +3 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-3/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([fdo#109289])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
>     - shard-mtlp:         NOTRUN -> [SKIP][246] ([fdo#109289]) +2 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][247] ([i915#4573]) +1 other test fail
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#3555]) +2 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][249] ([i915#8292])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-16/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#9423]) +3 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#9423]) +5 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#9423]) +7 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#5176]) +1 other test skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#5235]) +3 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#5235]) +5 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][257] ([i915#5235]) +3 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#5235]) +5 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#3555] / [i915#5235]) +1 other test skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#9812])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#5354])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-dpms-negative:
>     - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#9293])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_pm_dc@dc5-dpms-negative.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#5978])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#9685])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][265] -> [SKIP][266] ([i915#9519])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@fences:
>     - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#4077]) +2 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@kms_pm_rpm@fences.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#9519]) +2 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-pc8-residency-stress:
>     - shard-rkl:          NOTRUN -> [SKIP][269] ([fdo#109293] / [fdo#109506])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_pm_rpm@modeset-pc8-residency-stress.html
>     - shard-tglu:         NOTRUN -> [SKIP][270] ([fdo#109293] / [fdo#109506])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#6524] / [i915#6805])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-1/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#9683])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>     - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#9683])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][274] ([fdo#111068] / [i915#9683])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#9683]) +3 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#3555]) +1 other test skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3555]) +4 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-3/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#3555]) +1 other test skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-2/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          NOTRUN -> [FAIL][279] ([IGT#2])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-5/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#8623])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#8623])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#8623])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][283] ([i915#9196])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#2437])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-glk:          NOTRUN -> [SKIP][285] ([fdo#109271] / [i915#2437])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-glk4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#8850])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#3708])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#3708] / [i915#4077])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#3708])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#9917]) +1 other test skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@sriov_basic@enable-vfs-autoprobe-off.html
>     - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#9917])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@sriov_basic@enable-vfs-autoprobe-off.html
>     - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#9917])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#9917])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-dg2:          NOTRUN -> [FAIL][294] ([i915#9781])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@syncobj_timeline@invalid-wait-zero-handles.html
>     - shard-tglu:         NOTRUN -> [FAIL][295] ([i915#9781])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@syncobj_timeline@invalid-wait-zero-handles.html
>     - shard-mtlp:         NOTRUN -> [FAIL][296] ([i915#9781])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_create_bo@create-bo-invalid-flags:
>     - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#2575]) +2 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@v3d/v3d_create_bo@create-bo-invalid-flags.html
> 
>   * igt@v3d/v3d_get_bo_offset@get-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#2575]) +11 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-3/igt@v3d/v3d_get_bo_offset@get-bad-handle.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-exceed:
>     - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#2575]) +4 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@v3d/v3d_perfmon@create-perfmon-exceed.html
> 
>   * igt@v3d/v3d_submit_cl@valid-submission:
>     - shard-tglu:         NOTRUN -> [SKIP][300] ([fdo#109315] / [i915#2575]) +4 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@v3d/v3d_submit_cl@valid-submission.html
> 
>   * igt@v3d/v3d_submit_csd@bad-multisync-extension:
>     - shard-rkl:          NOTRUN -> [SKIP][301] ([fdo#109315]) +2 other tests skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@v3d/v3d_submit_csd@bad-multisync-extension.html
> 
>   * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
>     - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#2575]) +3 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html
>     - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#7711]) +2 other tests skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html
> 
>   * igt@vc4/vc4_perfmon@create-two-perfmon:
>     - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#7711]) +1 other test skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-14/igt@vc4/vc4_perfmon@create-two-perfmon.html
> 
>   * igt@vc4/vc4_tiling@get-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#7711]) +7 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-2/igt@vc4/vc4_tiling@get-bad-handle.html
> 
>   * igt@vc4/vc4_tiling@set-get:
>     - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#7711]) +2 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@vc4/vc4_tiling@set-get.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][307] ([i915#7742]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][309] ([i915#7297]) -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [FAIL][311] ([i915#2842]) -> [PASS][312] +1 other test pass
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [INCOMPLETE][313] ([i915#9200]) -> [PASS][314]
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][315] ([i915#9820]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg2:          [TIMEOUT][317] ([i915#7173] / [i915#9945]) -> [PASS][318]
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg2-1/igt@i915_module_load@resize-bar.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-6/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [FAIL][319] ([i915#3591]) -> [PASS][320] +1 other test pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [FAIL][321] ([i915#5138]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-dg1:          [DMESG-WARN][323] ([i915#4423]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg1-12/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg1-12/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>     - shard-tglu:         [FAIL][325] ([i915#3743]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-snb:          [SKIP][327] ([fdo#109271] / [fdo#111767]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-snb:          [SKIP][329] ([fdo#109271]) -> [PASS][330] +9 other tests pass
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-vga1:
>     - shard-snb:          [DMESG-WARN][331] ([i915#10007]) -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb4/igt@kms_flip@flip-vs-suspend@b-vga1.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb5/igt@kms_flip@flip-vs-suspend@b-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-dg2:          [FAIL][333] ([i915#6880]) -> [PASS][334]
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_plane@pixel-format@pipe-a:
>     - shard-mtlp:         [ABORT][335] -> [PASS][336]
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-mtlp-2/igt@kms_plane@pixel-format@pipe-a.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-mtlp-7/igt@kms_plane@pixel-format@pipe-a.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][337] ([i915#4281]) -> [PASS][338]
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][339] ([i915#9519]) -> [PASS][340] +1 other test pass
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][341] ([i915#9519]) -> [PASS][342]
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>     - shard-rkl:          [INCOMPLETE][343] ([i915#8875] / [i915#9569]) -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][345] ([i915#9196]) -> [PASS][346] +1 other test pass
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][347] ([i915#7484]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-snb:          [SKIP][349] ([fdo#109271]) -> [INCOMPLETE][350] ([i915#8816])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb5/igt@kms_content_protection@content-type-change.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb7/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-snb:          [INCOMPLETE][351] ([i915#8816]) -> [SKIP][352] ([fdo#109271])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-snb7/igt@kms_content_protection@srm.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-snb5/igt@kms_content_protection@srm.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][353] ([i915#3955]) -> [SKIP][354] ([fdo#110189] / [i915#3955])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][355] ([i915#3361]) -> [FAIL][356] ([i915#9295])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][357] ([i915#4281]) -> [SKIP][358] ([i915#3361])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#10007]: https://gitlab.freedesktop.org/drm/intel/issues/10007
>   [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6118]: https://gitlab.freedesktop.org/drm/intel/issues/6118
>   [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8758]: https://gitlab.freedesktop.org/drm/intel/issues/8758
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
>   [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
>   [i915#9293]: https://gitlab.freedesktop.org/drm/intel/issues/9293
>   [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
>   [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/intel/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
>   [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>   [i915#9945]: https://gitlab.freedesktop.org/drm/intel/issues/9945
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14078 -> Patchwork_128186v2
> 
>   CI-20190529: 20190529
>   CI_DRM_14078: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_128186v2: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/index.html
