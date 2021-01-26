Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7D43030C8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 01:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A8C6E23D;
	Tue, 26 Jan 2021 00:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D176E23D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 00:05:44 +0000 (UTC)
IronPort-SDR: /0rpQJEL1BRrS6NnVgtGLHQD8Gje8b1UaIhHJzVmkDO0nJAqE6Tmopw92plWmBwGR7pwFdV9Z0
 wX0hzaCj5rtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="241354007"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="241354007"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 16:05:40 -0800
IronPort-SDR: TyQKkvTEyWq6wj/Z8liJi743sgrVfprN2pBjp2zZMZuhwuSZDJl31lTrhD73Qnsf+Dp0VnReLP
 jJlQUlwbY4RA==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="361737923"
Received: from bmmauck-mobl1.amr.corp.intel.com (HELO [10.254.126.194])
 ([10.254.126.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 16:05:40 -0800
To: intel-gfx@lists.freedesktop.org
References: <20210125140753.347998-1-aditya.swarup@intel.com>
 <161161718829.3417.2359094143513990409@emeril.freedesktop.org>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <69274c96-4026-68b0-7fcf-49d34686ad15@intel.com>
Date: Mon, 25 Jan 2021 16:05:35 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <161161718829.3417.2359094143513990409@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWxk?=
 =?utf-8?q?erlake-S_platform_enabling_patches?=
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/25/21 3:26 PM, Patchwork wrote:
> == Series Details ==
> 
> Series: Alderlake-S platform enabling patches
> URL   : https://patchwork.freedesktop.org/series/86260/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9680_full -> Patchwork_19488_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19488_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19488_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19488_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@absolute-wf_vblank-interruptible@b-edp1:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/shard-tglb2/igt@kms_flip@absolute-wf_vblank-interruptible@b-edp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19488/shard-tglb6/igt@kms_flip@absolute-wf_vblank-interruptible@b-edp1.html

This failure is unrelated to the patch series. Every patch in the series is protected by platform specific checks related to Alderlake-S 
and shouldn't affect TGL execution. Seems to be a one off. 

aswarup

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@gem_ctx_persistence@many-contexts}:
>     - shard-tglb:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19488/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
> 
>   * {igt@sysfs_clients@busy@bcs0}:
>     - shard-kbl:          [PASS][5] -> [FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/shard-kbl1/igt@sysfs_clients@busy@bcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19488/shard-kbl3/igt@sysfs_clients@busy@bcs0.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9680_full and Patchwork_19488_full:
> 
> ### New IGT tests (1749) ###
> 
>   * igt@core_auth@many-magics:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.15, 0.87] s
> 
>   * igt@core_getclient:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.07, 0.18] s
> 
>   * igt@core_getstats:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.07, 0.25] s
> 
>   * igt@core_getversion:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.07, 0.17] s
> 
>   * igt@core_setmaster_vs_auth:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.07, 0.21] s
> 
>   * igt@debugfs_test@read_all_entries_display_off:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.07, 1.16] s
> 
>   * igt@debugfs_test@read_all_entries_display_on:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@drm_import_export@flink:
>     - Statuses : 7 pass(s)
>     - Exec time: [10.74, 10.75] s
> 
>   * igt@drm_import_export@import-close-race-flink:
>     - Statuses : 7 pass(s)
>     - Exec time: [10.74, 10.76] s
> 
>   * igt@drm_import_export@import-close-race-prime:
>     - Statuses : 7 pass(s)
>     - Exec time: [10.74] s
> 
>   * igt@drm_import_export@prime:
>     - Statuses : 7 pass(s)
>     - Exec time: [10.74, 10.75] s
> 
>   * igt@drm_read@empty-block:
>     - Statuses : 2 pass(s)
>     - Exec time: [1.0] s
> 
>   * igt@drm_read@empty-nonblock:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@drm_read@fault-buffer:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@drm_read@invalid-buffer:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@drm_read@short-buffer-block:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@drm_read@short-buffer-nonblock:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@dumb_buffer@create-clear:
>     - Statuses : 7 pass(s)
>     - Exec time: [37.35, 48.34] s
> 
>   * igt@dumb_buffer@create-valid-dumb:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@dumb_buffer@invalid-bpp:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@dumb_buffer@map-invalid-size:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@dumb_buffer@map-uaf:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.02, 0.10] s
> 
>   * igt@dumb_buffer@map-valid:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_bad_reloc@negative-reloc-bltcopy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.35, 4.13] s
> 
>   * igt@gem_blits@basic:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.43, 14.05] s
> 
>   * igt@gem_busy@close-race:
>     - Statuses : 5 pass(s)
>     - Exec time: [21.73, 22.33] s
> 
>   * igt@gem_caching@read-writes:
>     - Statuses : 7 pass(s)
>     - Exec time: [4.43, 23.0] s
> 
>   * igt@gem_caching@reads:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.66, 5.85] s
> 
>   * igt@gem_caching@writes:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.29, 13.28] s
> 
>   * igt@gem_close@basic:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_close@many-handles-one-vma:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.02, 0.10] s
> 
>   * igt@gem_create@create-invalid-size:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_create@create-valid-nonaligned:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_bad_destroy@double-destroy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_ctx_bad_destroy@invalid-ctx:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_bad_destroy@invalid-default-ctx:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_bad_destroy@invalid-pad:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_ctx_exec@basic-invalid-context:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_ctx_freq@sysfs:
>     - Statuses : 7 pass(s)
>     - Exec time: [4.81, 4.94] s
> 
>   * igt@gem_ctx_param@basic:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@basic-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@get-priority-new-ctx:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_ctx_param@invalid-ctx-get:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@invalid-ctx-set:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@invalid-param-get:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@invalid-param-set:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@invalid-size-get:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@invalid-size-set:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@non-root-set:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.01, 0.04] s
> 
>   * igt@gem_ctx_param@non-root-set-no-zeromap:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.04] s
> 
>   * igt@gem_ctx_param@root-set:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@root-set-no-zeromap-disabled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_ctx_param@root-set-no-zeromap-enabled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@set-priority-invalid-size:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - Statuses : 2 pass(s) 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_ctx_param@set-priority-range:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 0.06] s
> 
>   * igt@gem_eio@banned:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.05, 0.42] s
> 
>   * igt@gem_eio@execbuf:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.02, 0.07] s
> 
>   * igt@gem_eio@hibernate:
>     - Statuses : 7 pass(s)
>     - Exec time: [12.63, 15.24] s
> 
>   * igt@gem_eio@in-flight-10ms:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.45, 2.37] s
> 
>   * igt@gem_eio@in-flight-1us:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.37, 2.36] s
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.24, 36.49] s
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.07, 36.60] s
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - Statuses : 6 pass(s)
>     - Exec time: [2.36, 36.54] s
> 
>   * igt@gem_eio@in-flight-external:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.03, 0.24] s
> 
>   * igt@gem_eio@in-flight-immediate:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.40, 2.18] s
> 
>   * igt@gem_eio@in-flight-internal-10ms:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.04, 0.28] s
> 
>   * igt@gem_eio@in-flight-internal-1us:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.03, 0.27] s
> 
>   * igt@gem_eio@in-flight-internal-immediate:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.03, 0.26] s
> 
>   * igt@gem_eio@in-flight-suspend:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.98, 2.43] s
> 
>   * igt@gem_eio@reset-stress:
>     - Statuses : 7 pass(s)
>     - Exec time: [28.52, 39.12] s
> 
>   * igt@gem_eio@suspend:
>     - Statuses : 7 pass(s)
>     - Exec time: [10.97, 12.60] s
> 
>   * igt@gem_eio@throttle:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.02, 0.09] s
> 
>   * igt@gem_eio@unwedge-stress:
>     - Statuses : 7 pass(s)
>     - Exec time: [28.41, 40.02] s
> 
>   * igt@gem_eio@wait-10ms:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.03, 0.15] s
> 
>   * igt@gem_eio@wait-1us:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.03, 0.15] s
> 
>   * igt@gem_eio@wait-immediate:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.02, 0.14] s
> 
>   * igt@gem_eio@wait-wedge-10ms:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.04, 0.27] s
> 
>   * igt@gem_eio@wait-wedge-1us:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.03, 0.27] s
> 
>   * igt@gem_eio@wait-wedge-immediate:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.04, 0.25] s
> 
>   * igt@gem_exec_alignment@single:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_await@wide-all:
>     - Statuses : 7 pass(s)
>     - Exec time: [21.80, 22.50] s
> 
>   * igt@gem_exec_await@wide-contexts:
>     - Statuses : 6 pass(s)
>     - Exec time: [21.61, 22.31] s
> 
>   * igt@gem_exec_balancer@bonded-chain:
>     - Statuses : 4 pass(s) 2 skip(s)
>     - Exec time: [0.0, 7.20] s
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 4.50] s
> 
>   * igt@gem_exec_balancer@hang:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 4.59] s
> 
>   * igt@gem_exec_capture@userptr:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.05] s
> 
>   * igt@gem_exec_create@forked:
>     - Statuses : 5 pass(s)
>     - Exec time: [20.06, 20.14] s
> 
>   * igt@gem_exec_create@madvise:
>     - Statuses : 7 pass(s)
>     - Exec time: [20.04, 20.08] s
> 
>   * igt@gem_exec_fence@basic-busy-all:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.01, 0.03] s
> 
>   * igt@gem_exec_fence@basic-wait-all:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.01, 0.03] s
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - Statuses : 4 pass(s) 3 skip(s)
>     - Exec time: [0.0, 6.07] s
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - Statuses : 6 pass(s)
>     - Exec time: [5.64, 6.04] s
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.62, 6.07] s
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - Statuses : 2 pass(s)
>     - Exec time: [5.42, 5.43] s
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.40, 5.46] s
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - Statuses : 6 pass(s)
>     - Exec time: [5.42, 5.47] s
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.41, 5.47] s
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.41, 5.47] s
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - Statuses : 6 pass(s)
>     - Exec time: [5.41, 5.48] s
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.41, 5.46] s
> 
>   * igt@gem_exec_flush@basic-wb-ro-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.41, 5.48] s
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.41, 5.46] s
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.41, 5.48] s
> 
>   * igt@gem_exec_flush@basic-wb-set-default:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.41, 5.47] s
> 
>   * igt@gem_exec_nop@basic-parallel:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.78, 3.33] s
> 
>   * igt@gem_exec_nop@basic-sequential:
>     - Statuses : 6 pass(s)
>     - Exec time: [2.77, 3.35] s
> 
>   * igt@gem_exec_nop@basic-series:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.75, 3.29] s
> 
>   * igt@gem_exec_parallel@basic:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_parallel@contexts:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_parallel@fds:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_params@batch-first:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_params@cliprects-invalid:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@cliprects_ptr-dirt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@dr1-dirt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@dr4-dirt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-bsd-ring:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-bsd1-flag-on-blt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-bsd1-flag-on-render:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@invalid-bsd1-flag-on-vebox:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-bsd2-flag-on-blt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-bsd2-flag-on-render:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-bsd2-flag-on-vebox:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_params@invalid-fence-in:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-flag:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-ring:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@invalid-ring2:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@no-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_params@no-bsd:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@no-vebox:
>     - Statuses : 1 pass(s) 4 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@rel-constants-invalid:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_params@rel-constants-invalid-rel-gen5:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@rel-constants-invalid-ring:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@rs-invalid:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@secure-non-master:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@secure-non-root:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_params@sol-reset-invalid:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_params@sol-reset-not-gen7:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_reloc@basic-active:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_reloc@basic-cpu:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.03] s
> 
>   * igt@gem_exec_reloc@basic-cpu-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.17] s
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.03] s
> 
>   * igt@gem_exec_reloc@basic-cpu-read-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-cpu-read-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-cpu-wc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.03] s
> 
>   * igt@gem_exec_reloc@basic-cpu-wc-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-cpu-wc-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-gtt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-gtt-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.18] s
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-gtt-read-active:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-range:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.01, 0.11] s
> 
>   * igt@gem_exec_reloc@basic-range-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-wc-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-wc-cpu:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.03] s
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.17] s
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-wc-gtt:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.03] s
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.17] s
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-wc-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-wc-read:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.03] s
> 
>   * igt@gem_exec_reloc@basic-wc-read-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-write-cpu:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-write-cpu-active:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.11, 0.17] s
> 
>   * igt@gem_exec_reloc@basic-write-cpu-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-write-gtt-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_reloc@basic-write-wc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_reloc@basic-write-wc-active:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.16] s
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_exec_schedule@smoketest-all:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 32.30] s
> 
>   * igt@gem_exec_suspend@basic:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.18, 1.50] s
> 
>   * igt@gem_exec_suspend@basic-s3-devices:
>     - Statuses : 7 pass(s)
>     - Exec time: [6.42, 11.25] s
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - Statuses : 7 pass(s)
>     - Exec time: [7.13, 11.87] s
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.13, 1.72] s
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.11, 1.23] s
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.21, 3.19] s
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-x:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-y:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.09, 1.30] s
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.11, 1.33] s
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.15, 2.17] s
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.15, 2.17] s
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.16, 2.19] s
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.15, 2.18] s
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.15, 2.18] s
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - Statuses : 6 pass(s)
>     - Exec time: [2.15, 2.17] s
> 
>   * igt@gem_flink_race@flink_close:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.01, 5.02] s
> 
>   * igt@gem_flink_race@flink_name:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.37, 5.38] s
> 
>   * igt@gem_gpgpu_fill:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.09, 0.10] s
> 
>   * igt@gem_gtt_cpu_tlb:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.25] s
> 
>   * igt@gem_linear_blits@interruptible:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.88, 23.96] s
> 
>   * igt@gem_linear_blits@normal:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.54, 18.93] s
> 
>   * igt@gem_madvise@dontneed-after-mmap:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_madvise@dontneed-before-exec:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_madvise@dontneed-before-mmap:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_madvise@dontneed-before-pwrite:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@gem_media_fill:
>     - Statuses : 5 pass(s) 1 skip(s)
>     - Exec time: [0.08, 0.18] s
> 
>   * igt@gem_mmap@bad-object:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_mmap@basic-small-bo:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.59, 2.98] s
> 
>   * igt@gem_mmap@big-bo:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.66, 2.44] s
> 
>   * igt@gem_mmap@short-mmap:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_mmap_gtt@basic-copy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.17, 0.85] s
> 
>   * igt@gem_mmap_gtt@basic-read:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.03, 0.13] s
> 
>   * igt@gem_mmap_gtt@basic-read-write:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.05] s
> 
>   * igt@gem_mmap_gtt@basic-read-write-distinct:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.06] s
> 
>   * igt@gem_mmap_gtt@basic-short:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.02, 0.07] s
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_mmap_gtt@basic-small-bo-tiledx:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.27, 0.85] s
> 
>   * igt@gem_mmap_gtt@basic-small-bo-tiledy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.23, 0.83] s
> 
>   * igt@gem_mmap_gtt@basic-small-copy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.46, 3.17] s
> 
>   * igt@gem_mmap_gtt@basic-small-copy-odd:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.71, 4.06] s
> 
>   * igt@gem_mmap_gtt@basic-small-copy-xy:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.85, 4.46] s
> 
>   * igt@gem_mmap_gtt@basic-wc:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.64] s
> 
>   * igt@gem_mmap_gtt@basic-write:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.47] s
> 
>   * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
>     - Statuses : 5 pass(s) 2 skip(s)
>     - Exec time: [0.0, 0.31] s
> 
>   * igt@gem_mmap_gtt@basic-write-gtt:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.81] s
> 
>   * igt@gem_mmap_gtt@basic-write-read:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.05] s
> 
>   * igt@gem_mmap_gtt@basic-write-read-distinct:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.05] s
> 
>   * igt@gem_mmap_gtt@big-bo:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.26, 1.03] s
> 
>   * igt@gem_mmap_gtt@big-bo-tiledx:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.48, 1.89] s
> 
>   * igt@gem_mmap_gtt@big-bo-tiledy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.30, 1.96] s
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.34, 11.15] s
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.53, 12.43] s
> 
>   * igt@gem_mmap_gtt@big-copy-xy:
>     - Statuses : 7 pass(s)
>     - Exec time: [1.55, 16.45] s
> 
>   * igt@gem_mmap_gtt@coherency:
>     - Statuses : 3 pass(s) 4 skip(s)
>     - Exec time: [0.0, 0.18] s
> 
>   * igt@gem_mmap_gtt@fault-concurrent:
>     - Statuses : 7 pass(s)
>     - Exec time: [2.49, 3.89] s
> 
>   * igt@gem_mmap_gtt@hang:
>     - Statuses : 7 pass(s)
>     - Exec time: [5.42, 5.49] s
> 
>   * igt@gem_mmap_gtt@medium-copy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.94, 6.64] s
> 
>   * igt@gem_mmap_gtt@medium-copy-odd:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.82, 6.23] s
> 
>   * igt@gem_mmap_gtt@medium-copy-xy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.93, 8.30] s
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_mmap_offset@bad-extensions:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_mmap_offset@bad-flags:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_mmap_offset@bad-object:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_mmap_offset@basic-uaf:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_mmap_offset@clear:
>     - Statuses : 7 pass(s)
>     - Exec time: [22.06, 61.06] s
> 
>   * igt@gem_mmap_offset@close-race:
>     - Statuses : 7 pass(s)
>     - Exec time: [20.06, 20.10] s
> 
>   * igt@gem_mmap_offset@isolation:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_mmap_offset@open-flood:
>     - Statuses : 7 pass(s)
>     - Exec time: [21.50, 21.58] s
> 
>   * igt@gem_mmap_offset@pf-nonblock:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@gem_mmap_wc@close:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.04, 0.19] s
> 
>   * igt@gem_mmap_wc@coherency:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.09, 0.22] s
> 
>   * igt@gem_mmap_wc@copy:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.15, 0.41] s
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.55, 2.33] s
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_mmap_wc@read:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.05, 0.27] s
> 
>   * igt@gem_mmap_wc@read-write:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.06] s
> 
>   * igt@gem_mmap_wc@read-write-distinct:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.06] s
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_mmap_wc@write:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.07, 0.25] s
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.11, 0.35] s
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.33] s
> 
>   * igt@gem_mmap_wc@write-gtt-read-wc:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.56] s
> 
>   * igt@gem_mmap_wc@write-read:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.06] s
> 
>   * igt@gem_mmap_wc@write-read-distinct:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.06] s
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.65, 5.50] s
> 
>   * igt@gem_partial_pwrite_pread@reads-display:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.64, 5.81] s
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.66, 5.63] s
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.65, 5.54] s
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - Statuses : 7 pass(s)
>     - Exec time: [3.20, 13.18] s
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - Statuses : 2 pass(s)
>     - Exec time: [3.22, 3.27] s
> 
>   * igt@gem_partial_pwrite_pread@write-snoop:
>     - Statuses : 6 pass(s)
>     - Exec time: [3.19, 13.42] s
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19488/index.html
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
