Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E10C36165D6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 16:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C1910E49F;
	Wed,  2 Nov 2022 15:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E6110E49F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 15:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667402238; x=1698938238;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fp0K00HgOkPqiy124dex2xesYyAuX3+us4GfAgaYD/w=;
 b=DXbGi6iYbKtXGc9am37Nz4s7uSQS2jw+Bw6HxYYxgdOdTc1YWAg36Anm
 fuekTaPSqPlDcUdfAcjkuTptflFFrl3DugVlAfGPD5Q6ID5YfgsLzE6zw
 351OxtP5i2jsVvDsIF3GtaOH+73aG2d7Zp6ZTFU3UFe7LuO4Y3/ybtzNv
 gzP7sV55D0Zj1e5wa0ni0rqMWltyv+BPvhbq2KdYX9yNAlKJlEiifrwfk
 +VYnCwGqweqvs8+uYU/z37T1uYt3Rq8TNbOJsRgBbGFqbKBsBEHMF3k+7
 Q5g1N1pM4cFE3L8MMJ+akTJwXn0D7S1eS5vVDIoPbm+pl8OpfK+R7+3Uw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309433491"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="309433491"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 08:17:01 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="739792570"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="739792570"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 08:16:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <166739152497.23605.17503364052515268251@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1667383630.git.jani.nikula@intel.com>
 <166739152497.23605.17503364052515268251@emeril.freedesktop.org>
Date: Wed, 02 Nov 2022 17:16:57 +0200
Message-ID: <87k04dcro6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_header_cleanups=2C_again?=
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
Cc: intel-gfx@lists.freedesktop.org, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Nov 2022, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: header cleanups, again
> URL   : https://patchwork.freedesktop.org/series/110404/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_12331 -> Patchwork_110404v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_110404v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_110404v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/index.html
>
> Participating hosts (40 -> 30)
> ------------------------------
>
>   Additional (2): fi-kbl-soraka fi-pnv-d510 
>   Missing    (12): bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 bat-adln-1 bat-atsm-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_110404v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@gem_contexts:
>     - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
>

This should be completely unrelated.


>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_110404v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@gem_exec_gttfill@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +8 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html
>
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
>
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#5334])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][6] ([i915#1886])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
>
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-icl-u2:          NOTRUN -> [SKIP][7] ([fdo#111827])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
>
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
>     - fi-bsw-kefka:       [PASS][9] -> [FAIL][10] ([i915#6298])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12331/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
>
>   * igt@kms_psr@primary_page_flip:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][11] ([fdo#109271]) +43 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@execlists:
>     - fi-icl-u2:          [INCOMPLETE][12] ([i915#4890]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12331/fi-icl-u2/igt@i915_selftest@live@execlists.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/fi-icl-u2/igt@i915_selftest@live@execlists.html
>
>   
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_12331 -> Patchwork_110404v1
>
>   CI-20190529: 20190529
>   CI_DRM_12331: 279dcd38fe0ed3e23d752f5974648f7715711d7c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7038: 5389b3f3b9b75df6bd8506e4aa3da357fd0c0ab1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_110404v1: 279dcd38fe0ed3e23d752f5974648f7715711d7c @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> 12c0a7856e7c drm/i915/display: move struct intel_link_m_n to intel_display_types.h
> fc112ad5921a drm/i915: stop including i915_irq.h from i915_trace.h
> c7c8eb4abfbc drm/i915: split out intel_display_reg_defs.h
> 2c8fe3b0a094 drm/i915/reg: move pick even and pick to reg defs
> 2f266ea1da7c drm/i915/reg: move masked field helpers to i915_reg_defs.h
> 0f3ef601ce6b drm/i915/irq: make gen2_irq_init()/gen2_irq_reset() static
> 75e75fb9e891 drm/i915/display: reduce includes in g4x_dp.h includes
> aca237b24053 drm/i915/display: reduce includes in intel_hdmi.h
> b822be1bdc70 drm/i915/display: reduce the includes in intel_dvo_dev.h
> f04c10d4b01b drm/i915: reduce includes in intel_display_power.h
> 38805c70593c drm/i915/dpio: move dpio_channel and dpio_phy enums to intel_dpio_phy.h
> d8e570f4cd90 drm/i915/dpio: un-inline the vlv phy/channel mapping functions
> 338fa9c665be drm/i915: un-inline icl_hdr_plane_mask() to simplify includes
> 52b9b6527032 drm/i915: reduce includes in intel_fifo_underrun.h
> 64fdf4abafb0 drm/i915: reduce includes in intel_connector.h
> 4beeb4ba7930 drm/i915/gmbus: move GPIO enum to gmbus
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110404v1/index.html

-- 
Jani Nikula, Intel Open Source Graphics Center
