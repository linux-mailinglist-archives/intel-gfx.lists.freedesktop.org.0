Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE8C20F619
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 15:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B800A6E1EE;
	Tue, 30 Jun 2020 13:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5D76E1EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 13:46:29 +0000 (UTC)
IronPort-SDR: xXEikETREnWYYwYk42M+UCX5vuihwy/WG8w6iMKQMpOJuZexSXxRa+h9WroMR7TymlKnFm0JCO
 omEP5ZJ21gvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="134531098"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="134531098"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 06:46:10 -0700
IronPort-SDR: JQa/1NxAeBOJApYjCB+aPXTUAPzwRRZKbZZgzX4UAmIHuNn8WSCAk1U/teleg0UeZsPoCd5XNS
 ElA4yK7V8YyA==
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="303461656"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 06:46:08 -0700
Date: Tue, 30 Jun 2020 16:46:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20200630134605.GA2937@ideak-desk.fi.intel.com>
References: <20200629185848.20550-1-imre.deak@intel.com>
 <159352194676.22701.3262547131159853886@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159352194676.22701.3262547131159853886@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/tgl+=3A_Fix_TBT_DPLL_fract?=
 =?utf-8?q?ional_divider_for_38=2E4MHz_ref_clock?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lakshmi,

On Tue, Jun 30, 2020 at 12:59:06PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/tgl+: Fix TBT DPLL fractional divider for 38.4MHz ref clock
> URL   : https://patchwork.freedesktop.org/series/78909/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8676_full -> Patchwork_18037_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_18037_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_18037_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_18037_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
>     - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

The platform is unrelated to the ICL+ only changes in the patchset.
Suspend / resume hangs during the resume phase and I see a few power
managmenet related pcode commands failing:

<7>[  269.795119] i915 0000:00:02.0: [drm:hsw_enable_pc8 [i915]] Enabling package C8+
<7>[  269.795280] i915 0000:00:02.0: [drm:sandybridge_pcode_write_timeout [i915]] warning: pcode (write of 0x00000011 to mbox 11) mailbox access failed for hsw_write_dcomp [i915]: -6

<7>[  269.915995] i915 0000:00:02.0: [drm:sandybridge_pcode_read [i915]] warning: pcode (read from mbox 5) mailbox access failed for intel_rc6_enable [i915]: -6

These errors may be related to the hang, I'd suggest tracking the s/r
hang on HSW in a ticket for these errors.

> 
>   * igt@kms_vblank@pipe-a-wait-forked:
>     - shard-iclb:         [PASS][3] -> [TIMEOUT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb5/igt@kms_vblank@pipe-a-wait-forked.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb4/igt@kms_vblank@pipe-a-wait-forked.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-iclb:         [SKIP][5] ([i915#404]) -> [TIMEOUT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

The above two timeouts are the same and actually happened already in
gem_exec_balancer@sliced preceeding the above two tests. The

https://gitlab.freedesktop.org/drm/intel/-/issues/1958

ticket is collecting similar timeouts. The pattern looks like:

6,58482,570332183,-;gem_exec_balanc D13040  1291    962 0x00000000
6,58483,570332186,-;Call Trace:
6,58484,570332189,-; __schedule+0x2f8/0x8d0
6,58485,570332194,-; schedule+0x37/0xe0
6,58486,570332229,-; intel_wakeref_wait_for_idle+0x7b/0xf0 [i915]
6,58487,570332233,-; ? wake_up_var+0x30/0x30
6,58488,570332257,-; i915_drop_caches_set+0x1c1/0x270 [i915]
6,58489,570332261,-; simple_attr_write+0xb0/0xd0
6,58490,570332266,-; full_proxy_write+0x51/0x80
6,58491,570332269,-; vfs_write+0xbc/0x1d0
6,58492,570332272,-; ksys_write+0xa2/0xe0
6,58493,570332275,-; do_syscall_64+0x56/0xe0
6,58494,570332277,-; entry_SYSCALL_64_after_hwframe+0x44/0xa9

as in 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8662/shard-tglb7/igt@gem_exec_balancer@sliced.html


> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18037_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-iclb:         [PASS][7] -> [TIMEOUT][8] ([i915#1958])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb5/igt@gem_exec_balancer@sliced.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb4/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_mmap_gtt@ptrace:
>     - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#95]) +15 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@gem_mmap_gtt@ptrace.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl8/igt@gem_mmap_gtt@ptrace.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-glk:          [PASS][11] -> [INCOMPLETE][12] ([i915#2110] / [i915#58] / [k.org#198133])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk7/igt@i915_selftest@mock@requests.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk3/igt@i915_selftest@mock@requests.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-glk:          [PASS][13] -> [DMESG-FAIL][14] ([i915#118] / [i915#95])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
>     - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#93] / [i915#95]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
> 
>   * igt@kms_flip@basic-plain-flip@a-edp1:
>     - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +7 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl4/igt@kms_flip@basic-plain-flip@a-edp1.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl9/igt@kms_flip@basic-plain-flip@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>     - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#79])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#79])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +5 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
>     - shard-hsw:          [PASS][27] -> [INCOMPLETE][28] ([i915#2055])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack:
>     - shard-tglb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][33] -> [DMESG-FAIL][34] ([fdo#108145] / [i915#1982])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_prime@basic-crc@second-to-first:
>     - shard-kbl:          [PASS][35] -> [DMESG-FAIL][36] ([i915#95])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl6/igt@kms_prime@basic-crc@second-to-first.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl4/igt@kms_prime@basic-crc@second-to-first.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-c-wait-idle:
>     - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl2/igt@kms_vblank@pipe-c-wait-idle.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl4/igt@kms_vblank@pipe-c-wait-idle.html
> 
>   * igt@perf_pmu@semaphore-busy@rcs0:
>     - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#1820])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
> 
>   * igt@prime_mmap_kms@buffer-sharing:
>     - shard-tglb:         [PASS][43] -> [DMESG-WARN][44] ([i915#402])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb7/igt@prime_mmap_kms@buffer-sharing.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb2/igt@prime_mmap_kms@buffer-sharing.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
> 
>   * igt@gem_exec_nop@basic-parallel:
>     - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#95]) -> [PASS][48] +22 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl2/igt@gem_exec_nop@basic-parallel.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl4/igt@gem_exec_nop@basic-parallel.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +10 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync@uc:
>     - shard-iclb:         [INCOMPLETE][51] -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb4/igt@gem_userptr_blits@invalid-mmap-offset-unsync@uc.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb7/igt@gem_userptr_blits@invalid-mmap-offset-unsync@uc.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [DMESG-WARN][53] ([i915#1436] / [i915#716]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@gen9_exec_parse@allowed-all.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl1/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][55] ([i915#1436] / [i915#716]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl5/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload:
>     - shard-tglb:         [DMESG-WARN][57] ([i915#402]) -> [PASS][58] +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb2/igt@i915_module_load@reload.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb7/igt@i915_module_load@reload.html
> 
>   * igt@kms_atomic_interruptible@legacy-dpms:
>     - shard-kbl:          [DMESG-WARN][59] ([i915#93] / [i915#95]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-kbl1/igt@kms_atomic_interruptible@legacy-dpms.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-kbl3/igt@kms_atomic_interruptible@legacy-dpms.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - shard-glk:          [DMESG-FAIL][61] ([i915#118] / [i915#95]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [DMESG-FAIL][65] ([fdo#108145] / [i915#1982]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68] +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
>     - shard-iclb:         [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [SKIP][71] ([fdo#109642] / [fdo#111068]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb3/igt@kms_psr2_su@page_flip.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb2/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb3/igt@kms_psr@psr2_sprite_render.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [FAIL][75] ([i915#1542]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb1/igt@perf@polling-parameterized.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb3/igt@perf@polling-parameterized.html
>     - shard-tglb:         [FAIL][77] ([i915#1542]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-tglb6/igt@perf@polling-parameterized.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-tglb1/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][79] ([i915#588]) -> [SKIP][80] ([i915#658])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-apl:          [SKIP][81] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl8/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
>     - shard-apl:          [SKIP][83] ([fdo#109271]) -> [SKIP][84] ([fdo#109271] / [i915#1635]) +5 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
>     - shard-apl:          [SKIP][85] ([fdo#109271] / [i915#1635]) -> [SKIP][86] ([fdo#109271]) +5 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl7/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl8/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
>     - shard-apl:          [DMESG-FAIL][87] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][88] ([fdo#108145] / [i915#1635] / [i915#95])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][89], [FAIL][90], [FAIL][91]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#716]) -> [FAIL][92] ([i915#1635])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl4/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl3/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8676/shard-apl8/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/shard-apl6/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
>   [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
>   [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8676 -> Patchwork_18037
> 
>   CI-20190529: 20190529
>   CI_DRM_8676: 90573bcfde94b770410e07294c914b2c630d3999 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18037: 06139c9eefa6a6cebf31d6c8a560fe29aeee0a05 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18037/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
