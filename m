Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E90522AAEC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 10:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D114E6E866;
	Thu, 23 Jul 2020 08:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB896E49C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 08:44:10 +0000 (UTC)
IronPort-SDR: XEA8woeYAqpnC/hLWkM0g+JASFskLGicB0BH35jfdcoiBEu1+sIzDax8nwqMA+2aO0jpVwIHW6
 fhpoqR0/VcMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="212028660"
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; d="scan'208";a="212028660"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2020 01:44:09 -0700
IronPort-SDR: 3vEsI3124efEVrUqHlgTZ73IPqNqILHw1wfhW/HTXQUaY2xNhVzuBPXLDXoCCF0Q7KXgUH0vTU
 /AicXFEk66dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,386,1589266800"; d="scan'208";a="288574112"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.215.196.45])
 ([10.215.196.45])
 by orsmga006.jf.intel.com with ESMTP; 23 Jul 2020 01:44:08 -0700
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
References: <20200720113117.16131-1-karthik.b.s@intel.com>
 <159526010892.13115.8971016565368588196@emeril.freedesktop.org>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <c6bb204c-85f1-e8a1-1fe8-759c351e2da5@intel.com>
Date: Thu, 23 Jul 2020 14:14:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159526010892.13115.8971016565368588196@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915_=28rev5=29?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

This looks like an unrelated failure and false positive.
rev4 of the same series was green.
rev5 only has cosmetic changes to fix checkpatch and sparse warning.
Also, there shouldn't be any changes from this series with regards to 
the failing cases.

Thanks and Regards,
Karthik.B.S

On 7/20/2020 9:18 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	Asynchronous flip implementation for i915 (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/74386/
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/index.html
> 
> 
>   CI Bug Log - changes from CI_DRM_8766_full -> Patchwork_18212_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_18212_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18212_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_18212_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_pm_rpm@system-suspend-execbuf:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-tglb1/igt@i915_pm_rpm@system-suspend-execbuf.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-tglb6/igt@i915_pm_rpm@system-suspend-execbuf.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>   *
> 
>     igt@kms_plane_scaling@pipe-c-scaler-with-rotation:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-kbl4/igt@kms_plane_scaling@pipe-c-scaler-with-rotation.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-kbl3/igt@kms_plane_scaling@pipe-c-scaler-with-rotation.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_18212_full that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_ctx_persistence@engines-mixed-process@bcs0:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl9/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html>
>         (i915#1528 <https://gitlab.freedesktop.org/drm/intel/issues/1528>)
>   *
> 
>     igt@gem_exec_reloc@basic-concurrent0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html>
>         (i915#1930 <https://gitlab.freedesktop.org/drm/intel/issues/1930>)
>   *
> 
>     igt@gem_exec_suspend@basic-s3:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-kbl6/igt@gem_exec_suspend@basic-s3.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-kbl4/igt@gem_exec_suspend@basic-s3.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +4 similar issues
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>
>         / i915#95 <https://gitlab.freedesktop.org/drm/intel/issues/95>)
>   *
> 
>     igt@i915_selftest@mock@requests:
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-apl3/igt@i915_selftest@mock@requests.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-apl3/igt@i915_selftest@mock@requests.html>
>         (i915#1635
>         <https://gitlab.freedesktop.org/drm/intel/issues/1635> /
>         i915#2110 <https://gitlab.freedesktop.org/drm/intel/issues/2110>)
> 
>       o
> 
>         shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-snb6/igt@i915_selftest@mock@requests.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-snb6/igt@i915_selftest@mock@requests.html>
>         (i915#2110
>         <https://gitlab.freedesktop.org/drm/intel/issues/2110> / i915#82
>         <https://gitlab.freedesktop.org/drm/intel/issues/82>)
> 
>   *
> 
>     igt@kms_concurrent@pipe-a:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-iclb5/igt@kms_concurrent@pipe-a.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-iclb2/igt@kms_concurrent@pipe-a.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         (i915#300 <https://gitlab.freedesktop.org/drm/intel/issues/300>)
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-untiled.html>
>         (i915#52 <https://gitlab.freedesktop.org/drm/intel/issues/52> /
>         i915#54 <https://gitlab.freedesktop.org/drm/intel/issues/54>)
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html>
>         (i915#177 <https://gitlab.freedesktop.org/drm/intel/issues/177>
>         / i915#52 <https://gitlab.freedesktop.org/drm/intel/issues/52> /
>         i915#54 <https://gitlab.freedesktop.org/drm/intel/issues/54>)
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html>
>         (i915#1635
>         <https://gitlab.freedesktop.org/drm/intel/issues/1635> / i915#79
>         <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>   *
> 
>     igt@kms_flip@plain-flip-ts-check@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl6/igt@kms_flip@plain-flip-ts-check@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl3/igt@kms_flip@plain-flip-ts-check@c-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html>
>         (i915#1188 <https://gitlab.freedesktop.org/drm/intel/issues/1188>)
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl4/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl7/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) +7
>         similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1
>         similar issue
>   *
> 
>     igt@kms_psr@psr2_cursor_mmap_cpu:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +3
>         similar issues
>   *
> 
>     igt@kms_setmode@basic:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-kbl1/igt@kms_setmode@basic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-kbl3/igt@kms_setmode@basic.html>
>         (i915#31 <https://gitlab.freedesktop.org/drm/intel/issues/31>)
>   *
> 
>     igt@kms_vblank@pipe-b-query-forked-busy:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-apl3/igt@kms_vblank@pipe-b-query-forked-busy.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-apl3/igt@kms_vblank@pipe-b-query-forked-busy.html>
>         (i915#1635
>         <https://gitlab.freedesktop.org/drm/intel/issues/1635> /
>         i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
> 
>     igt@kms_vblank@pipe-b-wait-forked-busy:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62> /
>         i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92>) +3
>         similar issues
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-iclb1/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-iclb7/igt@perf@polling-parameterized.html>
>         (i915#1542 <https://gitlab.freedesktop.org/drm/intel/issues/1542>)
>   *
> 
>     igt@perf_pmu@semaphore-busy@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html>
>         (i915#1820 <https://gitlab.freedesktop.org/drm/intel/issues/1820>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-iclb8/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-iclb8/igt@i915_pm_dc@dc6-psr.html>
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html>
>         +11 similar issues
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>         (i915#72 <https://gitlab.freedesktop.org/drm/intel/issues/72>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         +3 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-farfromfence:
> 
>       o shard-tglb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-tglb1/igt@kms_frontbuffer_tracking@psr-farfromfence.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-tglb6/igt@kms_frontbuffer_tracking@psr-farfromfence.html>
>         +1 similar issue
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr2_su@frontbuffer:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-iclb5/igt@kms_psr2_su@frontbuffer.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-iclb2/igt@kms_psr2_su@frontbuffer.html>
>   *
> 
>     igt@kms_psr@psr2_cursor_blt:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html>
>         +1 similar issue
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-tglb7/igt@perf@polling-parameterized.html>
>         (i915#1542
>         <https://gitlab.freedesktop.org/drm/intel/issues/1542>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-tglb5/igt@perf@polling-parameterized.html>
>   *
> 
>     igt@perf_pmu@module-unload:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-apl1/igt@perf_pmu@module-unload.html>
>         (i915#1635
>         <https://gitlab.freedesktop.org/drm/intel/issues/1635> /
>         i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-apl8/igt@perf_pmu@module-unload.html>
>         +1 similar issue
> 
> 
>         Warnings
> 
>   *
> 
>     igt@kms_color@pipe-a-ctm-max:
> 
>       o shard-skl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl9/igt@kms_color@pipe-a-ctm-max.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl3/igt@kms_color@pipe-a-ctm-max.html>
>         (i915#168 <https://gitlab.freedesktop.org/drm/intel/issues/168>)
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-kbl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-kbl2/igt@kms_content_protection@atomic-dpms.html>
>         (i915#1319
>         <https://gitlab.freedesktop.org/drm/intel/issues/1319> /
>         i915#2119
>         <https://gitlab.freedesktop.org/drm/intel/issues/2119>) ->
>         TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-kbl4/igt@kms_content_protection@atomic-dpms.html>
>         (i915#1319
>         <https://gitlab.freedesktop.org/drm/intel/issues/1319> /
>         i915#1958 <https://gitlab.freedesktop.org/drm/intel/issues/1958>
>         / i915#2119 <https://gitlab.freedesktop.org/drm/intel/issues/2119>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> 
>       o shard-skl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@runner@aborted:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8766/shard-apl6/igt@runner@aborted.html>
>         (i915#1610
>         <https://gitlab.freedesktop.org/drm/intel/issues/1610> /
>         i915#1635 <https://gitlab.freedesktop.org/drm/intel/issues/1635>
>         / i915#2110
>         <https://gitlab.freedesktop.org/drm/intel/issues/2110>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18212/shard-apl3/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1635 <https://gitlab.freedesktop.org/drm/intel/issues/1635>
>         / i915#2110
>         <https://gitlab.freedesktop.org/drm/intel/issues/2110> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
> 
>     Participating hosts (10 -> 10)
> 
> No changes in participating hosts
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_8766 -> Patchwork_18212
> 
> CI-20190529: 20190529
> CI_DRM_8766: 947ce595ea05b4baaea060a7e018cc3f49eaf413 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5740: 6663e3ab5f77add7077711c2b649caf2bd7903c4 @ 
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18212: 1077e9a731f21f0efa16afa18710db91b3ec3078 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
