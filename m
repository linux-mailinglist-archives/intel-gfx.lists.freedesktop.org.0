Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F01849F1129
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 16:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C6410E0E9;
	Fri, 13 Dec 2024 15:40:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EE1lFT1V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21D5E10E0E9;
 Fri, 13 Dec 2024 15:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734104458; x=1765640458;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=GGDtAQTR+ygEE/A3+l0KfuS/C12Sd+bAaFT5zSi8c/Y=;
 b=EE1lFT1VhDvZxDfSd7QkAluxhaJIAk+opp0QHt+Aysnikzrl/gE2cokU
 +wF69QK90TFQ0tafQxvStE79wg7yolzNDkI+tdvpiR/rZ5otZE4S/Xr5M
 tQ6s25iC0WzPH+GKQQf7nk82MnJhRlt0h7XS8I+X0OlgQupV3DlJa6k3L
 W6tzFKGje2wFKpa9N6A0xP/C1bFF1ESRR04dW6tAXD5MhtlARGiQHQSgL
 yT5Q04m0/0EBPa7hoMpWv/Xgf22VxmQ/oFhOppotbQgv3G82cx1h6nv5T
 sRnj0eAe3OnmKKSTt8eiRV0luffgnPjB4qv9l37H+ptQ7O2SzLIo3H8P5 Q==;
X-CSE-ConnectionGUID: s0BbCE9+Sii6AU7aSocvVg==
X-CSE-MsgGUID: UHvwMpmFQX21666mb9tVWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="33888483"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="33888483"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 07:40:57 -0800
X-CSE-ConnectionGUID: Rs2R6qtDSSeDGhv3ezr5ww==
X-CSE-MsgGUID: CWouooKwTB2OJ0FjETdPhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96997669"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 07:40:55 -0800
Date: Fri, 13 Dec 2024 17:41:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 drm/connector: Expose only a properly inited connector
Message-ID: <Z1xVsISN2thh2xOs@ideak-desk.fi.intel.com>
References: <20241211230328.4012496-1-imre.deak@intel.com>
 <173398882187.1497132.12926431126922747535@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173398882187.1497132.12926431126922747535@b555e5b46a47>
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

Hi CT team,

On Thu, Dec 12, 2024 at 07:33:41AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/connector: Expose only a properly inited connector
> URL   : https://patchwork.freedesktop.org/series/142445/
> State : failure

None of the hosts with the failures have an MST output, so can't see how
the changes would related to the failures. The only change for non-MST
outputs is that the standard connector properties are added first to the
connector before the connector is added to connector list (and that
happens only during driver loading), but this shouldn't matter. More
details on pre-existing issues below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15827_full -> Patchwork_142445v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_142445v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142445v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_142445v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_setmaster@master-drop-set-user:
>     - shard-tglu:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-tglu-7/igt@core_setmaster@master-drop-set-user.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-3/igt@core_setmaster@master-drop-set-user.html

Pxp component unbind issue:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13010

> 
>   * igt@gem_create@busy-create@smem0:
>     - shard-dg2:          [PASS][3] -> [INCOMPLETE][4] +3 other tests incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-10/igt@gem_create@busy-create@smem0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-2/igt@gem_create@busy-create@smem0.html

The test aborted due to a SIGQUIT signal:

[1136.230423] Starting dynamic subtest: smem0
[1144.333334] Abort requested by sudo LD_LIBRARY_PATH=/opt/igt/lib:/opt/igt/lib/x86_64-linux-gnu IGT_DEVICE=pci:vendor=intel,device=discrete,card=all IG [1980] via Terminated, terminating children
[1144.900577] Closing watchdogs

I can't see any timeouts or other reasons that would explain this. Maybe
an issue with the test runner environment?

> 
>   * igt@gem_exec_big@single:
>     - shard-tglu-1:       NOTRUN -> [ABORT][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@gem_exec_big@single.html

Looks like a GEM issue.

<1> [517.979788] BUG: kernel NULL pointer dereference, address: 0000000000000088
...
<4> [517.979821] RIP: 0010:__i915_gem_object_page_iter_get_sg+0x32d/0x5e0 [i915]
...
<4> [517.980079]  ? page_fault_oops+0x175/0x5d0
<4> [517.980084]  ? mark_held_locks+0x46/0x90
<4> [517.980090]  ? do_user_addr_fault+0x4c6/0x9d0
<4> [517.980093]  ? radix_tree_node_alloc.constprop.0+0x42/0x110
<4> [517.980098]  ? exc_page_fault+0x8a/0x2e0
<4> [517.980104]  ? asm_exc_page_fault+0x27/0x30
<4> [517.980110]  ? __i915_gem_object_page_iter_get_sg+0x32d/0x5e0 [i915]
<4> [517.980283]  ? __i915_gem_object_page_iter_get_sg+0x1ce/0x5e0 [i915]
<4> [517.980452]  __i915_gem_object_get_page+0x4b/0xf0 [i915]

An earlier instance of the same issue on the same host is at:
IGT_8150/shard-tglu-1/4/1733984219/001/dmesg-efi_pstore-173398421904001:<4>[  517.979821] RIP: 0010:__i915_gem_object_page_iter_get_sg+0x32d/0x5e0 [i915]

>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-snb:          NOTRUN -> [ABORT][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-snb1/igt@gem_tiled_swapping@non-threaded.html

fs_reclaim vs. __submit_bio/q->q_usage_counter lockdep issue:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13263

>     - shard-tglu:         [PASS][7] -> [FAIL][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-5/igt@gem_tiled_swapping@non-threaded.html

Memory allocation error in a GEM test:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13334

>   * igt@i915_selftest@live@execlists:
>     - shard-glk:          [PASS][9] -> [INCOMPLETE][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-glk1/igt@i915_selftest@live@execlists.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk4/igt@i915_selftest@live@execlists.html

The machine hang without any logs. It happened on GLK machines earlier
at:

IGTPW_12231/fi-glk-j4005/0/igt_runner.log:
[399.695813] Starting dynamic subtest: hangcheck
[425.068583] Dynamic subtest hangcheck: SUCCESS (25.384s)
[425.084082] Starting dynamic subtest: execlists
EOF

IGTPW_12273/fi-glk-j4005/0/igt_runner.log:
[446.706494] Starting dynamic subtest: hangcheck
[472.219924] Dynamic subtest hangcheck: SUCCESS (25.524s)
[472.235542] Starting dynamic subtest: execlists
EOF

>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][11]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html

(kms_async_flips:2404) CRITICAL: Flip interval not significantly smaller than vblank interval

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13320

>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][12] +2 other tests fail
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-3.html

The same as the previous one.

>   * igt@kms_async_flips@crc-atomic@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [CRASH][13] +3 other tests crash
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-5/igt@kms_async_flips@crc-atomic@pipe-d-hdmi-a-3.html

<7> [137.227364] i915 0000:03:00.0: [drm:drm_framebuffer_check_src_coords] Invalid source coordinates 1920.000000x1200.000000+0.000000+0.000000 (fb 1920x1080)

Looks to be a test issue, it happened many times before, for instance:
CI_DRM_15823/shard-dg2-1/23/dmesg.log:

<7>[  458.473616] i915 0000:03:00.0: [drm:drm_framebuffer_check_src_coords] Invalid source coordinates 1920.000000x1200.000000+0.000000+0.000000 (fb 1920x1080)
<7>[  457.718804] [IGT] kms_async_flips: finished subtest pipe-B-HDMI-A-3, CRASH

> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][14] -> [DMESG-FAIL][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

<3> [58.694606] i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13314

> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][16]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html

Perhaps related to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917

starting with:

<7>[  310.144202] [IGT] gem_pxp: executing
<7>[  310.145569] i915 0000:00:02.0: [drm:i915_gem_open [i915]]
<7>[  310.146110] i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x000001dc [0x000001dc]
<7>[  310.147296] i915 0000:00:02.0: [drm:i915_gem_open [i915]]
<7>[  310.147637] i915 0000:00:02.0: [drm:i915_gem_open [i915]]
<7>[  310.149870] i915 0000:00:02.0: [drm:intel_pxp_start [i915]] PXP: teardown for restart
<7>[  310.150450] i915 0000:00:02.0: [drm:pxp_session_work [i915]] PXP: processing event-flags 0x00000001
<7>[  310.178806] i915 0000:00:02.0: [drm:pxp_session_work [i915]] PXP: processing event-flags 0x0000000a
<7>[  310.179183] i915 0000:00:02.0: [drm:pxp_session_work [i915]] PXP: creating arb_session after invalidation
<7>[  310.403285] i915 0000:00:02.0: [drm:intel_pxp_start [i915]] PXP: restart backend timed out (250 ms)
<4>[  315.467185] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: Trying to reset the channel...
<3>[  321.611079] mei_me 0000:00:16.0: timer: connect/disconnect timeout.
<3>[  321.614531] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: cannot connect
<3>[  321.614722] mei_pxp 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: mei_cldev_enable failed. -14
<3>[  321.614826] i915 0000:00:02.0: [drm] *ERROR* Failed to receive PXP TEE message
<3>[  321.614882] i915 0000:00:02.0: [drm] *ERROR* Failed to send tee msg init arb session, ret=[-14]
<3>[  321.614961] i915 0000:00:02.0: [drm] *ERROR* tee cmd for arb session creation failed


> #### Warnings ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [ABORT][17] ([i915#9820]) -> [ABORT][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html

<3> [363.748240] ODEBUG: init destroyed (active state 0) object: ffff888137ee12e0 object type: i915_sw_fence hint: sw_fence_dummy_notify+0x0/0x20 [i915]

Happened many times on DG1/DG2,MTLP, for instance:
CI_DRM_15828/shard-glk4/8/61/dmesg.txt:3,64598,362767796,-;ODEBUG: init destroyed (active state 0) object: ffff88813abe52e0 object type: i915_sw_fence hint: sw_fence_dummy_notify+0x0/0x20 [i915]

> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-glk:          [INCOMPLETE][19] ([i915#12796]) -> [INCOMPLETE][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

Machine hang without any trace, happend on GLK in the same test before
many times, for instance:

CI_DRM_15832/shard-glk5/6/igt_runner.log:

[172.258577] [021/130] (880s left) kms_ccs (crc-primary-suspend-yf-tiled-ccs)
[172.477797] Starting subtest: crc-primary-suspend-yf-tiled-ccs
[172.481312] Starting dynamic subtest: pipe-A-HDMI-A-1

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_142445v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#8411])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#8411])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#9318])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#11078])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#8414]) +15 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all:
>     - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#8414]) +18 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@drm_fdinfo@most-busy-check-all.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281]) +13 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#7697]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3555] / [i915#9323])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][30] ([i915#13008])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#7697])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_persistence@engines-mixed-process:
>     - shard-snb:          NOTRUN -> [SKIP][32] ([i915#1099]) +5 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-snb5/igt@gem_ctx_persistence@engines-mixed-process.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#280])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#280])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4812])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4771])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4812])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#4525]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#4525])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3539] / [i915#4852]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#3539])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3539])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#3539] / [i915#4852])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-active:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3281]) +11 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_exec_reloc@basic-wc-read-active.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3281]) +7 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-7/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4537] / [i915#4812])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-rkl:          NOTRUN -> [ABORT][47] ([i915#7975] / [i915#8213]) +1 other test abort
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4860]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4860]) +4 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#4613]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4565]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-glk:          NOTRUN -> [SKIP][52] ([i915#4613]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk7/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#4613]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#12193]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#284])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@gem_media_vme.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][56] ([i915#284])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@bad-offset:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4083]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@gem_mmap@bad-offset.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4077]) +9 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4083]) +5 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3282]) +6 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#3282]) +6 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][62] ([i915#2658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#3282]) +3 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][64] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4270]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#4270]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#5190] / [i915#8428]) +7 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4077]) +15 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4079]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3297]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3297] / [i915#3323])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3282] / [i915#3297])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3297] / [i915#4880])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3297] / [i915#4880])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3281] / [i915#3297])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3297] / [i915#4958])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#3297]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3297])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-rkl:          NOTRUN -> [SKIP][79] +19 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#2527]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#2527] / [i915#2856]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#2527] / [i915#2856])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#2856]) +3 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@gen9_exec_parse@secure-batches.html
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#2527]) +3 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [PASS][85] -> [ABORT][86] ([i915#9820])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#6412])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg1:          [PASS][88] -> [DMESG-WARN][89] ([i915#4423])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-13/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#8399])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#8399]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#6590]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@i915_pm_freq_mult@media-freq@gt0.html
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#6590]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-dg1:          [PASS][94] -> [FAIL][95] ([i915#12739] / [i915#3591])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][96] ([i915#12797])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk7/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#11681] / [i915#6621]) +1 other test skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#11681])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#6245])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#6188])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_selftest@live:
>     - shard-glk:          [PASS][101] -> [INCOMPLETE][102] ([i915#12435])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-glk1/igt@i915_selftest@live.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk4/igt@i915_selftest@live.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4212]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4215] / [i915#5190])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4212]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#12454] / [i915#12712])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#8709]) +3 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-snb:          NOTRUN -> [SKIP][108] ([i915#1769])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-snb1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#5286]) +6 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#5286]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#4538] / [i915#5286]) +6 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#5286]) +3 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#3638]) +3 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][114] +11 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#3638]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#5190]) +2 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4538] / [i915#5190]) +8 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4538]) +6 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#6095]) +14 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#10307] / [i915#6095]) +152 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#6095]) +71 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#12805])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#12805])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#6095]) +17 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#6095]) +39 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#12313])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#12313])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#12313]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#12313]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#6095]) +104 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#7213]) +3 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#7828]) +10 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#7828]) +4 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#7828]) +4 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#7828]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#7828]) +9 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#9424])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3299]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-7/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3116])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#9424])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][141] ([i915#7173]) +1 other test timeout
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3555]) +3 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3555]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#13049]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#13049])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#13049]) +2 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-glk:          NOTRUN -> [SKIP][147] +97 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk9/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#13049])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4103] / [i915#4213]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#4103]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-snb:          NOTRUN -> [FAIL][151] ([i915#2346])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#9067])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#9067])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#4103] / [i915#4213])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9723])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#8812]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3555] / [i915#3840])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_dsc@dsc-basic.html
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#3555] / [i915#3840])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#3840] / [i915#9053])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#3840] / [i915#9053])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#3469])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#1839])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#1839]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_feature_discovery@display-4x.html
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#1839])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#9337])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#4881])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-7/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3637]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#8381])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][169] ([i915#12745] / [i915#1982] / [i915#4839])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][170] ([i915#1982] / [i915#4839])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#3637]) +2 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#9934]) +4 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#9934]) +5 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#9934]) +3 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-dg1:          [PASS][175] -> [FAIL][176] ([i915#13027]) +1 other test fail
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-14/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#8381])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][178] ([i915#12745] / [i915#4839])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][179] ([i915#12745])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#2672]) +4 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#2672]) +2 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#2587] / [i915#2672] / [i915#3555])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#2587] / [i915#2672])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#2587] / [i915#2672] / [i915#3555])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#2587] / [i915#2672])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#2672] / [i915#3555])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][191] +59 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
>     - shard-dg1:          NOTRUN -> [SKIP][192] +40 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#1825]) +34 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#5354]) +25 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-stridechange:
>     - shard-dg2:          [PASS][195] -> [FAIL][196] ([i915#6880]) +1 other test fail
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-stridechange.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#3023]) +24 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#8708]) +15 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-snb:          NOTRUN -> [SKIP][199] +333 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-snb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][200] +21 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#5439])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#9766])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#9766])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#3458]) +9 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#1825])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#3458]) +18 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#8708]) +20 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8228])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][209] ([i915#3555] / [i915#8228])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3555] / [i915#8228]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#3555] / [i915#8228])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#10656])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_joiner@basic-big-joiner.html
>     - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#10656])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-mtlp-7/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#12388])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#12339])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_joiner@basic-ultra-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#12339])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [PASS][217] -> [SKIP][218] ([i915#12388])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#10656]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#12394])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#6301])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_panel_fitting@atomic-fastset.html
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#6301]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#6301])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][224] ([i915#12169])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk7/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][225] ([i915#10647]) +1 other test fail
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#8806])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3555]) +4 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#12247] / [i915#6953] / [i915#9423])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#12247] / [i915#6953])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#12247]) +3 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c:
>     - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#12247]) +3 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#5354])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#5354])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#9812])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#9685]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_pm_dc@dc3co-vpb-simulation.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#9685])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu-1:       NOTRUN -> [FAIL][237] ([i915#9295])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#9685]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#9340])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#9340])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#8430])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#8430])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#9519])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [PASS][244] -> [SKIP][245] ([i915#9519])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-rkl:          [PASS][246] -> [SKIP][247] ([i915#9519])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#9519])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#9519]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#6524] / [i915#6805])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_prime@basic-crc-hybrid.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#6524])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#6524])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#11520]) +5 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#11520]) +6 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
>     - shard-snb:          NOTRUN -> [SKIP][255] ([i915#11520]) +5 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-snb5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
>     - shard-glk:          NOTRUN -> [SKIP][256] ([i915#11520]) +2 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#11520]) +6 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#11520]) +2 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][259] ([i915#11520]) +8 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#9683])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#9683])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#1072] / [i915#9732]) +21 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-3/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-cursor-render:
>     - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#9732]) +4 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@kms_psr@fbc-psr-cursor-render.html
> 
>   * igt@kms_psr@fbc-psr2-primary-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#1072] / [i915#9732]) +18 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_psr@fbc-psr2-primary-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#1072] / [i915#9732]) +19 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][266] ([i915#9732]) +15 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#4235])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#5289])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>     - shard-dg1:          NOTRUN -> [SKIP][269] ([i915#5289])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#12755] / [i915#5190])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#12755]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg1:          NOTRUN -> [ABORT][272] ([i915#13179]) +1 other test abort
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#3555]) +3 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-tglu-1:       NOTRUN -> [SKIP][274] ([i915#3555]) +2 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          NOTRUN -> [FAIL][275] ([IGT#160])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-7/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg1:          NOTRUN -> [SKIP][276] ([i915#8623])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#8623])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#9906])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#9906]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#2437] / [i915#9412])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglu-1:       NOTRUN -> [SKIP][281] ([i915#2437])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#2437])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#7387]) +1 other test skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf_pmu@busy-accuracy-50:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][284] ([i915#12964]) +9 other tests dmesg-warn
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@perf_pmu@busy-accuracy-50.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#8516])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-1/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#3291] / [i915#3708])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-6/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#3708])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@prime_vgem@fence-read-hang.html
>     - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#3708])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-12/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#9917]) +1 other test skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-all:
>     - shard-tglu-1:       NOTRUN -> [FAIL][290] ([i915#12910]) +9 other tests fail
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-all.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#9917])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu:         NOTRUN -> [FAIL][292] ([i915#12910])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-10/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vecs0:
>     - shard-rkl:          [PASS][293] -> [DMESG-WARN][294] ([i915#12964]) +7 other tests dmesg-warn
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-rkl-1/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@debugfs_test@read_all_entries_display_off:
>     - shard-mtlp:         [ABORT][295] -> [PASS][296]
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-mtlp-6/igt@debugfs_test@read_all_entries_display_off.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-mtlp-7/igt@debugfs_test@read_all_entries_display_off.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][297] ([i915#12543] / [i915#5784]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-14/igt@gem_eio@reset-stress.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@gem_eio@reset-stress.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][299] ([i915#9820]) -> [PASS][300]
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][301] ([i915#2346]) -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@single-bo@all-pipes:
>     - shard-rkl:          [DMESG-WARN][303] ([i915#12964]) -> [PASS][304] +1 other test pass
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-rkl-1/igt@kms_cursor_legacy@single-bo@all-pipes.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-4/igt@kms_cursor_legacy@single-bo@all-pipes.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][305] ([i915#11989]) -> [PASS][306] +3 other tests pass
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-snb4/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-snb5/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          [FAIL][307] ([i915#6880]) -> [PASS][308] +1 other test pass
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [SKIP][309] ([i915#3555] / [i915#8228]) -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][311] ([i915#9519]) -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][313] ([i915#9519]) -> [PASS][314] +1 other test pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [DMESG-FAIL][315] ([i915#13314]) -> [DMESG-FAIL][316] ([i915#11627])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-dg1:          [SKIP][317] ([i915#12313]) -> [SKIP][318] ([i915#12313] / [i915#4423])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-dg1:          [SKIP][319] -> [SKIP][320] ([i915#4423])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-14/igt@kms_chamelium_color@ctm-limited-range.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][321] ([i915#9424]) -> [SKIP][322] ([i915#9433])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-18/igt@kms_content_protection@mei-interface.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][323] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][324] ([i915#7118] / [i915#9424])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-10/igt@kms_content_protection@type1.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-2/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg1:          [SKIP][325] ([i915#3555] / [i915#4423]) -> [SKIP][326] ([i915#3555])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-13/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-14/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][327] ([i915#3458]) -> [SKIP][328] ([i915#10433] / [i915#3458]) +2 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][329] ([i915#10433] / [i915#3458]) -> [SKIP][330] ([i915#3458])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu:         [SKIP][331] ([i915#12713]) -> [SKIP][332] ([i915#1187] / [i915#12713])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-tglu-5/igt@kms_hdr@brightness-with-hdr.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][333] ([i915#4816]) -> [SKIP][334] ([i915#4070] / [i915#4816])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-dg1:          [SKIP][335] ([i915#11520]) -> [SKIP][336] ([i915#11520] / [i915#4423])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-dg1-14/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-dg1-17/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-rkl:          [INCOMPLETE][337] -> [DMESG-FAIL][338] ([i915#12964])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15827/shard-rkl-5/igt@perf_pmu@rc6-suspend.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/shard-rkl-3/igt@perf_pmu@rc6-suspend.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#160]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/160
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11627]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11627
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13314
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15827 -> Patchwork_142445v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15827: 9b5dff950301bf05d2e76745cacb457a0a82b50f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8149: 1e3893ae48c972da2338a62477d74de0f7b26776 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_142445v1: 9b5dff950301bf05d2e76745cacb457a0a82b50f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142445v1/index.html
