Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE85327E32C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 10:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DCD6E5A4;
	Wed, 30 Sep 2020 08:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B72D36E595
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 08:01:26 +0000 (UTC)
IronPort-SDR: 2HfL8SaMMbCXrtihJqltPrXe/OhcgBLyk5skS8BnpL4vqi/mwCFVP4xynN08+ihOSv32qYTTFF
 EgevQP6ilg0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="150051292"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="150051292"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 01:01:25 -0700
IronPort-SDR: Wm36N06gzrVIyXpbxG7KyG85HnnqOocK7O7LEz2cjGtJPYdpgBrsm0swJ8P5/eV2+q7/9I+IWV
 Zay4bXwDrmRw==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="351456541"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.164.152])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 01:01:24 -0700
Date: Wed, 30 Sep 2020 01:01:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200930080122.ckadmyuvy7havxuo@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <160145186577.17416.9070022207163166755@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160145186577.17416.9070022207163166755@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_DG1?=
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Matthew Auld

On Wed, Sep 30, 2020 at 07:44:25AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: Introduce DG1
>URL   : https://patchwork.freedesktop.org/series/82241/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_9077 -> Patchwork_18595
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_18595 absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_18595, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/index.html
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_18595:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_selftest@live@gt_engines:
>    - fi-skl-lmem:        [PASS][1] -> [DMESG-WARN][2] +31 similar issues
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9077/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html

Matt, this is failing on fi-skl-lmem, basically because we are adding
checks for IS_DGFX() expecting only really dgfx devices would be true.
However fake lmem code overwrites device info setting it to 1.

We will need more decisions in the driver checking for dgfx besides
lmem. Should we a) go ahead and remove fake lmem or b) add the
checks explictly for fake lmem, like IS_DGFX() || HAS_FAKE_LMEM()
or c) something else?

thanks
Lucas De Marchi

>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_18595 that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@kms_chamelium@common-hpd-after-suspend:
>    - fi-kbl-7500u:       [PASS][3] -> [DMESG-WARN][4] ([i915#2203])
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9077/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
>
>
>#### Possible fixes ####
>
>  * igt@i915_module_load@reload:
>    - fi-byt-j1900:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9077/fi-byt-j1900/igt@i915_module_load@reload.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/fi-byt-j1900/igt@i915_module_load@reload.html
>
>  * igt@i915_pm_rpm@basic-pci-d3-state:
>    - fi-bsw-kefka:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9077/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
>
>
>#### Warnings ####
>
>  * igt@kms_force_connector_basic@prune-stale-modes:
>    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][10] ([i915#62] / [i915#92]) +8 similar issues
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9077/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
>
>  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92]) -> [DMESG-WARN][12] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9077/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>
>
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
>  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>
>
>Participating hosts (45 -> 38)
>------------------------------
>
>  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_9077 -> Patchwork_18595
>
>  CI-20190529: 20190529
>  CI_DRM_9077: ae1f3f7de609df105aeceed2655656ffc838d720 @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_5793: c34792447c9fc4d05dd75873cdb99d9ffe57ea23 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>  Patchwork_18595: b609cfe8808be834400aab6819a1b43b7bc5a5d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
>== Linux commits ==
>
>b609cfe8808b drm/i915/dgfx: define llc and snooping behaviour
>648249c6dd8b drm/i915/dg1: Change DMC_DEBUG{1, 2} registers
>9034c09bbbdf drm/i915/dg1: DG1 does not support DC6
>01007b9c648c drm/i915/dg1: Add initial DG1 workarounds
>f5c37ea500ef drm/i915/dg1: Load DMC
>571405def6c9 drm/i915/dg1: enable PORT C/D aka D/E
>3056c7ce001a drm/i915/dg1: map/unmap pll clocks
>d0727f32e9ec drm/i915/dg1: provide port/phy mapping for vbt
>dc3f763d7b05 drm/i915/dg1: Update voltage swing tables for DP
>e764c35d3b9e drm/i915/dg1: Update comp master/slave relationships for PHYs
>a96cb47a46d4 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
>b5634537768e drm/i915/dg1: Enable first 2 ports for DG1
>ed7812a70681 drm/i915/dg1: gmbus pin mapping
>1556d9b840f8 drm/i915/dg1: invert HPD pins
>4caa7e8d99ff drm/i915/dg1: add hpd interrupt handling
>fc9e91e510d5 drm/i915/dg1: Enable DPLL for DG1
>802098453f92 drm/i915/dg1: Add and setup DPLLs for DG1
>46ba3b109500 drm/i915/dg1: Add DPLL macros for DG1
>313e894b5c43 drm/i915/dg1: Wait for pcode/uncore handshake at startup
>af7964472d1d drm/i915/dg1: Increase mmio size to 4MB
>44b1fb34d9e6 drm/i915/dg1: Add DG1 power wells
>90eb98d91e8e drm/i915/dg1: Define MOCS table for DG1
>02a93e492718 drm/i915/dg1: Initialize RAWCLK properly
>2ab727864817 drm/i915/dg1: add more PCI ids
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18595/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
