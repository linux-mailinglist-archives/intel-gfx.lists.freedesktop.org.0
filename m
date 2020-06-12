Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9281F78B2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 15:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83236E959;
	Fri, 12 Jun 2020 13:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA6A6E963
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 13:20:27 +0000 (UTC)
IronPort-SDR: 4NdRC9OmOKkLpoGHclHFgNsF2RIwbz5VURIp/QSM8j3PkSTHViAgLNN5Q60UYR3ZIjZiNz2r+L
 0ixibnU1Xydw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 06:20:27 -0700
IronPort-SDR: wXstoZPMEea/tWL9yU5iawLdGbp0VvytMKtNarMSThzKbAR7w+18bKDcuSKQnD9JDbTNTBvCeW
 +MijrvtHbo/g==
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="260826933"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 06:20:24 -0700
Date: Fri, 12 Jun 2020 16:20:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>,
 Tomi P Sarvela <tomi.p.sarvela@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Message-ID: <20200612132020.GC15242@ideak-desk.fi.intel.com>
References: <20200612121731.19596-1-imre.deak@intel.com>
 <159196705993.21336.14083495618624409936@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159196705993.21336.14083495618624409936@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/icl+=3A_Fix_hotplug_interrupt_disabling_after_storm_detec?=
 =?utf-8?q?tion?=
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

On Fri, Jun 12, 2020 at 01:04:19PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/icl+: Fix hotplug interrupt disabling after storm detection
> URL   : https://patchwork.freedesktop.org/series/78258/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8621 -> Patchwork_17937
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17937 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17937, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17937:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@runner@aborted:
>     - fi-bdw-5557u:       NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-bdw-5557u/igt@runner@aborted.html

This is on an unrelated platform. It looks like a network problem after
resuming:

[149.557805] [117/171] (880s left) kms_pipe_crc_basic (suspend-read-crc-pipe-a)
Starting subtest: suspend-read-crc-pipe-A
Subtest suspend-read-crc-pipe-A: SUCCESS (2.860s)
[191.138997] Aborting: Ping host did not respond to ping, network down
[191.140340] Closing watchdogs

So jenkins timing out after 50 seconds, even though the machine is still
up for 5 minutes after suspend-read-crc-pipe-A completes. The network
connection seems to be up as well:

<7>[  134.716964] [IGT] kms_pipe_crc_basic: starting subtest suspend-read-crc-pipe-A
...
<7>[  137.578228] [IGT] kms_pipe_crc_basic: exiting, ret=0
<6>[  137.588883] Console: switching to colour frame buffer device 240x67
<6>[  142.597964] e1000e 0000:00:19.0 enp0s25: NIC Link is Up 10 Mbps Full Duplex, Flow Control: None
<6>[  439.818733] kworker/dying (178) used greatest stack depth: 11424 bytes left

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17937 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - fi-icl-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#1982])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-whl-u:           [DMESG-WARN][4] ([i915#95]) -> [PASS][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-glk-dsi:         [DMESG-WARN][6] ([i915#1982]) -> [PASS][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-icl-y:           [DMESG-FAIL][8] ([i915#1993]) -> [PASS][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-y/igt@i915_selftest@live@execlists.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-y/igt@i915_selftest@live@execlists.html
> 
>   * igt@kms_busy@basic@flip:
>     - fi-kbl-x1275:       [DMESG-WARN][10] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@kms_busy@basic@flip.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-kbl-x1275/igt@kms_busy@basic@flip.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-icl-u2:          [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - fi-bsw-kefka:       [DMESG-WARN][14] ([i915#1982]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - fi-icl-guc:         [DMESG-WARN][16] ([i915#1982]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][19] ([i915#62] / [i915#92]) +4 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
>     - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92]) -> [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
> 
>   
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (49 -> 43)
> ------------------------------
> 
>   Additional (1): fi-tgl-u2 
>   Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8621 -> Patchwork_17937
> 
>   CI-20190529: 20190529
>   CI_DRM_8621: acd803311fbd1e6adc38d10ca382a60c6c190be9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5708: f66c71e29de50bae880bc81ceb0517d4e3e2dfd8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17937: a09f4bc8ddb9cfad0f18bdaccada93f9e98d5c54 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> a09f4bc8ddb9 drm/i915/icl+: Fix hotplug interrupt disabling after storm detection
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17937/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
