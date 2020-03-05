Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A63DF17A684
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E8246E326;
	Thu,  5 Mar 2020 13:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A10D86E326
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 13:37:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 05:37:57 -0800
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="234415072"
Received: from srware-mobl.ger.corp.intel.com (HELO [10.252.25.112])
 ([10.252.25.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 05 Mar 2020 05:37:56 -0800
To: intel-gfx@lists.freedesktop.org
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
 <158334910323.429.10712309454595338818@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6baae146-4833-467f-cac5-a27cff6740cc@linux.intel.com>
Date: Thu, 5 Mar 2020 13:37:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158334910323.429.10712309454595338818@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_WaDisableGPGPUMidThreadPreemption?=
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


On 04/03/2020 19:11, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: WaDisableGPGPUMidThreadPreemption
> URL   : https://patchwork.freedesktop.org/series/74274/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8066 -> Patchwork_16821
> ====================================================
> 
> Summary
> -------
> 
>    **SUCCESS**
> 
>    No regressions found.
> 
>    External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/index.html
> 
> Known issues
> ------------
> 
>    Here are the changes found in Patchwork_16821 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>    * igt@gem_exec_suspend@basic-s4-devices:
>      - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
>     [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
> 
>    * igt@i915_selftest@live@gem_contexts:
>      - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4] ([i915#877])
>     [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
>     [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
> 
>    * igt@i915_selftest@live@hugepages:
>      - fi-tgl-y:           [PASS][5] -> [INCOMPLETE][6] ([CI#94]) +1 similar issue
>     [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@i915_selftest@live@hugepages.html
>     [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/fi-tgl-y/igt@i915_selftest@live@hugepages.html
> 
>    * igt@prime_vgem@basic-fence-flip:
>      - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
>     [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
>     [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
> 
>    
> #### Possible fixes ####
> 
>    * igt@i915_selftest@live@workarounds:
>      - fi-icl-guc:         [DMESG-FAIL][9] ([i915#922]) -> [PASS][10]
>     [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-icl-guc/igt@i915_selftest@live@workarounds.html
>     [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/fi-icl-guc/igt@i915_selftest@live@workarounds.html
> 
>    * igt@prime_self_import@basic-llseek-bad:
>      - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
>     [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
>     [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16821/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
> 
>    
>    [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
>    [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>    [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
>    [i915#922]: https://gitlab.freedesktop.org/drm/intel/issues/922
> 
> 
> Participating hosts (45 -> 42)
> ------------------------------
> 
>    Additional (7): fi-kbl-7560u fi-bwr-2160 fi-kbl-7500u fi-cfl-8109u fi-skl-lmem fi-blb-e6850 fi-kbl-r
>    Missing    (10): fi-kbl-soraka fi-icl-1065g7 fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus fi-byt-clapper fi-skl-6600u
> 
> 
> Build changes
> -------------
> 
>    * CI: CI-20190529 -> None
>    * Linux: CI_DRM_8066 -> Patchwork_16821
> 
>    CI-20190529: 20190529
>    CI_DRM_8066: 9e1454777a07902c85ce3febcc9648837a2224fd @ git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_5491: d52794b426ae16630cc1e0354ae435ec98f6174b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>    Patchwork_16821: 770b14fbde2879037069c8ea3aa5d48a1d283fd4 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 770b14fbde28 drm/i915/tgl: WaDisableGPGPUMidThreadPreemption

And pushed, thanks for the reviews!

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
