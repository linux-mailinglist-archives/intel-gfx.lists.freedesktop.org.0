Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916709F2D24
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 10:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4B9C10E567;
	Mon, 16 Dec 2024 09:42:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n5Td6alh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A139610E565;
 Mon, 16 Dec 2024 09:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734342163; x=1765878163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hAYpNrvXs+O8tRYjqP5P0g+diPIY87NbKKDQQEzAi98=;
 b=n5Td6alhaZw3C4hZIgc+vcSLocGn8yqB7jk2EJmG2+i7QWtemMoI/l7s
 INGmVSFPy0e8dw1q6mtKn0X8R45XN62kICt1Oj2Z/+mDgl8rr188cxzK6
 LeEXYVmuqckIo529riLSKPxhI6bpcFaMSGm99j2UXDSthQr5tqjIo1uWf
 LBedsI238H4tPkj3uRC0/RGgeRXIu1HHwf34XgUMPKUtyXzECUq4eV584
 McE2J11QXiXC8qN4CFHa5prg6AAVzHHYuty6vx6lZLfmBAKqRsLZStDMH
 PwohxCLT3S/zYHdZF84NRjgU4Bh1/SOK/2QFXEMEpKOopKtlJd0ayMVpt Q==;
X-CSE-ConnectionGUID: 5R1UkSIURQ+x2cApORW9Wg==
X-CSE-MsgGUID: zSA6ivMYQpG7LNpkWoIumw==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="37567754"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="37567754"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 01:42:42 -0800
X-CSE-ConnectionGUID: YSlRQxxhQWSBPZJS4StJgw==
X-CSE-MsgGUID: 2nmbJ9nJQNSSkSixjhh0ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128139694"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.1])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 01:42:41 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.BAT: failure for drm/i915/selftests: Use
 preemption timeout on cleanup
Date: Mon, 16 Dec 2024 10:42:38 +0100
Message-ID: <2966585.e9J7NaK4W3@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <173411929009.2247839.16926790672596791185@b555e5b46a47>
References: <20241213190122.513709-2-janusz.krzysztofik@linux.intel.com>
 <173411929009.2247839.16926790672596791185@b555e5b46a47>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi I915-ci-infra@lists.freedesktop.org,

On Friday, 13 December 2024 20:48:10 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: Use preemption timeout on cleanup
> URL   : https://patchwork.freedesktop.org/series/142582/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15843 -> Patchwork_142582v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_142582v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142582v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/index.html
> 
> Participating hosts (45 -> 44)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_142582v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-a-dp-1:
>     - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-a-dp-1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-a-dp-1.html

Changes introduced with this patch may affect only i915 selftests, then the 
above is not related.  Please update filters and re-report.

> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [ABORT][3] ([i915#12061]) -> [DMESG-FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

And that's the expected result of this patch -- DMESG-FAIL instead of ABORT => 
better coverage.

Thanks,
Janusz

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_142582v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-apl-1:          [PASS][5] -> [DMESG-WARN][6] ([i915#12918])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-apl-1/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-apl-1/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-4:         [PASS][7] -> [FAIL][8] ([i915#12903])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
>     - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#12914]) +2 other tests dmesg-warn
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#12926]) +1 other test dmesg-warn
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
> 
>   * igt@kms_pipe_crc_basic@read-crc:
>     - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-adls-6:         [FAIL][15] ([i915#12903]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [ABORT][17] ([i915#12061]) -> [PASS][18] +1 other test pass
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - bat-apl-1:          [DMESG-WARN][19] ([i915#12921]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1:
>     - bat-apl-1:          [DMESG-WARN][21] ([i915#12918]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-apl-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [ABORT][23] ([i915#12061]) -> [DMESG-FAIL][24] ([i915#12435])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15843/bat-arlh-3/igt@i915_selftest@live.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/bat-arlh-3/igt@i915_selftest@live.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
>   [i915#12918]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12918
>   [i915#12921]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12921
>   [i915#12926]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12926
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15843 -> Patchwork_142582v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15843: 3002940575eb5832d1fb8d10fd6311467b29c6d7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8156: edf352a96646c8d793f0c1eb11795112f9bde725 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_142582v1: 3002940575eb5832d1fb8d10fd6311467b29c6d7 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142582v1/index.html
> 




