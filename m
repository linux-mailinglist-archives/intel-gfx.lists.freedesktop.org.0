Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gArNAn/zxGnv5AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 09:51:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3208A331A24
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 09:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A016610EA15;
	Thu, 26 Mar 2026 08:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OfgSG1XE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C1CF10EA13;
 Thu, 26 Mar 2026 08:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774515067; x=1806051067;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uT8nQpXzfgDTMwaJ+MzAIJbArascWM71FUwkvhUEb0Q=;
 b=OfgSG1XExJmCT0szei6kE1utN95qrx5fopm4K5Xz/q3kiexdZWRqMUYC
 ikbDlE+01vNUe5z0dYhTwCkKzs7+k7c4WkoxN748+RUMoceIFeqcUe0DO
 082uUT1wkF4racyb2iPtSd47B5p0mQN8Es+24y+R06U6DH0RzqSGpFe6c
 8GlhtpVQm75sv9jt2z9Hx3dzwYjwRrkrQ0NyqAAwG7sRAvuT5+1Hiay4N
 UwGJUEXgdERIQp3Cv8n6vm+CG0c+gZQwtRsazvARDYW5IoWGWF9vaSQcs
 IR1TUBO3sMFY+p1PK2mW/x202RwF9P5IsAU9z8iXJbz3VqIJrPybZyKOw Q==;
X-CSE-ConnectionGUID: YrKUttSYTMCZO0OTf++4qQ==
X-CSE-MsgGUID: Wy5sjn3hQfmYjPonrMZkeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="79422259"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="79422259"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 01:51:07 -0700
X-CSE-ConnectionGUID: pZpyn5jxQ7OGwiEhhFW6iA==
X-CSE-MsgGUID: btfPWuf2TLK+0P3jxGONmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="229877920"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 01:51:05 -0700
Date: Thu, 26 Mar 2026 10:51:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFU?= =?utf-8?Q?=3A?= failure for
 drm/i915: More uncore nukage from display code
Message-ID: <acTzdhJaITPW6skk@intel.com>
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <177447398633.398755.5726897439858588232@a3b018990fe9>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <177447398633.398755.5726897439858588232@a3b018990fe9>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.69 / 15.00];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3208A331A24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 09:26:26PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: More uncore nukage from display code
> URL   : https://patchwork.freedesktop.org/series/163871/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18214 -> Patchwork_163871v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_163871v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_163871v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/index.html
> 
> Participating hosts (5 -> 36)
> ------------------------------
> 
>   Additional (31): fi-rkl-11600 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-dg2-9 fi-ilk-650 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 bat-twl-1 bat-rpls-4 bat-apl-1 bat-rplp-1 bat-arls-5 fi-bsw-nick bat-arlh-2 bat-twl-2 fi-kbl-7567u bat-dg1-7 bat-kbl-2 bat-arlh-3 bat-dg1-6 bat-arls-6 bat-mtlp-8 bat-adlp-11 fi-tgl-1115g4 fi-cfl-guc bat-jsl-5 fi-kbl-x1275 fi-kbl-8809g bat-dg2-14 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_163871v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - bat-atsm-1:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18214/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

<6> [650.040022] i915 0000:4d:00.0: [drm] GT0: GuC firmware i915/dg2_guc_70.bin version 70.53.0
<6> [650.040031] i915 0000:4d:00.0: [drm] GT0: HuC firmware i915/dg2_huc_gsc.bin version 7.10.16
<6> [651.108917] i915 0000:4d:00.0: [drm] GT0: GUC: load failed: status = 0x00000072, time = 1002ms, freq = 100MHz, ret = -110
<6> [651.108938] i915 0000:4d:00.0: [drm] GT0: GUC: load failed: status: Reset = 0, BootROM = 0x39, UKernel = 0x00, MIA = 0x00, Auth = 0x00
<7> [651.108951] i915 0000:4d:00.0: [drm:__uc_init_hw [i915]] GT0: GuC fw load failed (-ETIMEDOUT) will reset and retry 0 more time(s)
<3> [651.110868] i915 0000:4d:00.0: [drm] *ERROR* GT0: GuC initialization failed -ETIMEDOUT
<3> [651.110933] i915 0000:4d:00.0: [drm] *ERROR* GT0: Enabling uc failed (-5)
<3> [651.110977] i915 0000:4d:00.0: [drm] *ERROR* GT0: Failed to initialize GPU, declaring it wedged!

> 
>   * igt@i915_selftest@live@gtt:
>     - bat-atsm-1:         [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18214/bat-atsm-1/igt@i915_selftest@live@gtt.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-atsm-1/igt@i915_selftest@live@gtt.html

<6> [599.079858] i915 0000:4d:00.0: [drm] GT0: GuC firmware i915/dg2_guc_70.bin version 70.53.0
<6> [599.079867] i915 0000:4d:00.0: [drm] GT0: HuC firmware i915/dg2_huc_gsc.bin version 7.10.16
<4> [599.391820] i915 0000:4d:00.0: [drm] GT0: GUC: excessive init time: 300ms! [status = 0x8002F034, count = 0, ret = 0]
<4> [599.392002] i915 0000:4d:00.0: [drm] GT0: GUC: excessive init time: [freq = 100MHz -> 100MHz vs 1800MHz, perf_limit_reasons = 0x35021002]

Apparenly guc is having a bad day.

>   * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:
>     - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][5] +3 other tests dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html

<7> [272.280339] i915 0000:00:02.0: [drm:intel_disable_transcoder [i915]] disabling pipe C
<7> [272.289825] i915 0000:00:02.0: [drm:vlv_display_error_irq_handler [i915]] Master Error, EIR 0x00000010
<3> [272.291836] i915 0000:00:02.0: [drm] *ERROR* [CRTC:112:pipe C][PLANE:87:primary C] fault (CTL=0x2000000, SURF=0x0, SURFLIVE=0x0)

Hmm, haven't seen display faults on chv before (well, except when I
implemented the fault detection and triggered faults intentionally
to make sure it works).


But seeing as I'm not touching either guc or chv code 
this must all be unrelated to these changes.

>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [DMESG-FAIL][6] ([i915#12061]) -> [ABORT][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18214/bat-atsm-1/igt@i915_selftest@live.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-atsm-1/igt@i915_selftest@live.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_163871v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all-tests@dma_fence_chain:
>     - bat-twl-2:          NOTRUN -> [SKIP][8] ([i915#15249])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@dmabuf@all-tests@dma_fence_chain.html
>     - bat-twl-1:          NOTRUN -> [SKIP][9] ([i915#15249])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@dmabuf@all-tests@dma_fence_chain.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][10] ([i915#15249])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@dmabuf@all-tests@dma_fence_chain.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][11] ([i915#15249])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@dmabuf@all-tests@dma_fence_chain.html
> 
>   * igt@fbdev@eof:
>     - bat-arlh-2:         NOTRUN -> [SKIP][12] ([i915#11345] / [i915#11346]) +3 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@fbdev@eof.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][13] ([i915#2582]) +3 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@fbdev@eof.html
> 
>   * igt@fbdev@info:
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][14] ([i915#1849])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-x1275/igt@fbdev@info.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][15] ([i915#1849] / [i915#2582])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@fbdev@info.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][16] ([i915#1849] / [i915#2582])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@fbdev@info.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][17] ([i915#11346] / [i915#1849])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@fbdev@info.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][18] ([i915#1849] / [i915#2582])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@fbdev@info.html
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][19] ([i915#1849])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-8809g/igt@fbdev@info.html
>     - fi-bsw-nick:        NOTRUN -> [SKIP][20] ([i915#1849])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-bsw-nick/igt@fbdev@info.html
>     - bat-kbl-2:          NOTRUN -> [SKIP][21] ([i915#1849])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-kbl-2/igt@fbdev@info.html
> 
>   * igt@fbdev@nullptr:
>     - bat-adlp-11:        NOTRUN -> [SKIP][22] ([i915#2582]) +3 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@fbdev@nullptr.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][23] ([i915#2582]) +3 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@fbdev@nullptr.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-7567u:       NOTRUN -> [SKIP][24] ([i915#2190])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][25] ([i915#2190])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][26] ([i915#2190])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@gem_huc_copy@huc-copy.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][27] ([i915#2190])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][28] ([i915#2190])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
>     - fi-skl-6600u:       NOTRUN -> [SKIP][29] ([i915#2190])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][30] ([i915#2190])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - bat-arlh-3:         NOTRUN -> [SKIP][31] ([i915#11671]) +3 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@gem_lmem_swapping@basic.html
>     - bat-twl-2:          NOTRUN -> [SKIP][32] ([i915#10213] / [i915#11671]) +3 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@gem_lmem_swapping@basic.html
>     - bat-rpls-4:         NOTRUN -> [SKIP][33] ([i915#4613]) +3 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@gem_lmem_swapping@basic.html
>     - fi-kbl-7567u:       NOTRUN -> [SKIP][34] ([i915#4613]) +3 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
>     - bat-twl-1:          NOTRUN -> [SKIP][35] ([i915#10213] / [i915#11671]) +3 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@gem_lmem_swapping@basic.html
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][36] ([i915#4613]) +3 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][37] ([i915#4613]) +3 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][38] +25 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-kbl-2:          NOTRUN -> [SKIP][39] +24 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-arls-5:         NOTRUN -> [SKIP][40] ([i915#10213] / [i915#11671]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][41] ([i915#4613]) +3 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][42] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@gem_lmem_swapping@parallel-random-engines.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][43] ([i915#4613]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][44] ([i915#4613]) +3 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - fi-bsw-n3050:       NOTRUN -> [SKIP][45] +21 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html
>     - fi-skl-6600u:       NOTRUN -> [SKIP][46] ([i915#4613]) +3 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - fi-cfl-guc:         NOTRUN -> [SKIP][47] ([i915#4613]) +3 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-cfl-guc/igt@gem_lmem_swapping@verify-random.html
>     - bat-arls-6:         NOTRUN -> [SKIP][48] ([i915#10213] / [i915#11671]) +3 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@gem_lmem_swapping@verify-random.html
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][49] ([i915#4613]) +3 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-x1275/igt@gem_lmem_swapping@verify-random.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][50] ([i915#4613]) +3 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@gem_lmem_swapping@verify-random.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][51] ([i915#4613]) +3 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][52] ([i915#11343] / [i915#11346])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@gem_mmap@basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][53] ([i915#4083])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@gem_mmap@basic.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][54] ([i915#4083])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@gem_mmap@basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][55] ([i915#4083])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@gem_mmap@basic.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][56] ([i915#4083])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@gem_mmap@basic.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][57] ([i915#4083])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@gem_mmap@basic.html
>     - bat-arls-6:         NOTRUN -> [SKIP][58] ([i915#4083])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@gem_mmap@basic.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][59] ([i915#11343])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@gem_mmap@basic.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][60] ([i915#4083])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@gem_mmap@basic.html
>     - bat-arls-5:         NOTRUN -> [SKIP][61] ([i915#4083])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@basic:
>     - bat-arls-6:         NOTRUN -> [SKIP][62] ([i915#12637] / [i915#4077]) +2 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@gem_mmap_gtt@basic.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][63] ([i915#4077]) +2 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][64] ([i915#4077]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][65] ([i915#4077]) +2 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@gem_mmap_gtt@basic.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][66] ([i915#4077]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@gem_mmap_gtt@basic.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - bat-arls-6:         NOTRUN -> [SKIP][67] ([i915#10197] / [i915#10211] / [i915#4079])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@gem_render_tiled_blits@basic.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][68] ([i915#4079])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][69] ([i915#4079])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@gem_render_tiled_blits@basic.html
>     - bat-arls-5:         NOTRUN -> [SKIP][70] ([i915#10197] / [i915#10211] / [i915#4079])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@gem_render_tiled_blits@basic.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][71] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725] / [i915#4079])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][72] ([i915#10211] / [i915#11725] / [i915#4079])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@gem_render_tiled_blits@basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][73] ([i915#4079])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@gem_render_tiled_blits@basic.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][74] ([i915#4079])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][75] ([i915#4079])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][76] ([i915#4079])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - bat-dg2-14:         NOTRUN -> [SKIP][77] ([i915#4077]) +2 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@gem_tiled_fence_blits@basic.html
>     - bat-arls-5:         NOTRUN -> [SKIP][78] ([i915#12637] / [i915#4077]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@gem_tiled_fence_blits@basic.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][79] ([i915#11346] / [i915#12637]) +4 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@gem_tiled_fence_blits@basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][80] ([i915#4077]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@gem_tiled_pread_basic@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][81] ([i915#11346] / [i915#15657])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@gem_tiled_pread_basic@basic.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][82] ([i915#15656])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@gem_tiled_pread_basic@basic.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][83] ([i915#15657])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@gem_tiled_pread_basic@basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][84] ([i915#15657])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@gem_tiled_pread_basic@basic.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][85] ([i915#15657])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@gem_tiled_pread_basic@basic.html
>     - bat-twl-2:          NOTRUN -> [SKIP][86] ([i915#15656])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@gem_tiled_pread_basic@basic.html
>     - bat-rpls-4:         NOTRUN -> [SKIP][87] ([i915#15656])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@gem_tiled_pread_basic@basic.html
>     - bat-twl-1:          NOTRUN -> [SKIP][88] ([i915#15656])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@gem_tiled_pread_basic@basic.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][89] ([i915#15657])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@gem_tiled_pread_basic@basic.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][90] ([i915#15657])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@gem_tiled_pread_basic@basic.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][91] ([i915#15656])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@gem_tiled_pread_basic@basic.html
>     - bat-arls-6:         NOTRUN -> [SKIP][92] ([i915#15657])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@gem_tiled_pread_basic@basic.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][93] ([i915#15656])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@gem_tiled_pread_basic@basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][94] ([i915#15657])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@gem_tiled_pread_basic@basic.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][95] ([i915#15657])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@gem_tiled_pread_basic@basic.html
>     - bat-arls-5:         NOTRUN -> [SKIP][96] ([i915#15657])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@gem_tiled_pread_basic@basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg1-7:          NOTRUN -> [SKIP][97] ([i915#11681] / [i915#6621])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html
>     - bat-twl-2:          NOTRUN -> [SKIP][98] ([i915#10209] / [i915#11681])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@i915_pm_rps@basic-api.html
>     - bat-twl-1:          NOTRUN -> [SKIP][99] ([i915#10209] / [i915#11681])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@i915_pm_rps@basic-api.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][100] ([i915#11681] / [i915#6621])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@i915_pm_rps@basic-api.html
>     - bat-arls-5:         NOTRUN -> [SKIP][101] ([i915#10209] / [i915#11681])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@i915_pm_rps@basic-api.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][102] ([i915#6621])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@i915_pm_rps@basic-api.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][103] ([i915#10209] / [i915#11346] / [i915#11681])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][104] ([i915#11681] / [i915#6621])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][105] ([i915#6621])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@i915_pm_rps@basic-api.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][106] ([i915#11681] / [i915#6621])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][107] ([i915#11681] / [i915#6621])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][108] ([i915#11681] / [i915#6621])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@i915_pm_rps@basic-api.html
>     - bat-arls-6:         NOTRUN -> [SKIP][109] ([i915#10209] / [i915#11681])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@i915_pm_rps@basic-api.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][110] ([i915#11681])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-14:         NOTRUN -> [DMESG-FAIL][111] ([i915#12061]) +1 other test dmesg-fail
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-9:          NOTRUN -> [DMESG-FAIL][112] ([i915#12061]) +1 other test dmesg-fail
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - bat-rplp-1:         NOTRUN -> [SKIP][113] ([i915#7707]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@intel_hwmon@hwmon-read.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][114] ([i915#11346] / [i915#11680] / [i915#7707]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@intel_hwmon@hwmon-read.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][115] ([i915#7707]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@intel_hwmon@hwmon-read.html
>     - bat-arls-6:         NOTRUN -> [SKIP][116] ([i915#7707]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@intel_hwmon@hwmon-read.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][117] ([i915#7707]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@intel_hwmon@hwmon-read.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][118] ([i915#7707]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@intel_hwmon@hwmon-read.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][119] ([i915#7707]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@intel_hwmon@hwmon-read.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][120] ([i915#11680]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - bat-twl-2:          NOTRUN -> [SKIP][121] ([i915#7707]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@intel_hwmon@hwmon-write.html
>     - bat-rpls-4:         NOTRUN -> [SKIP][122] ([i915#7707]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@intel_hwmon@hwmon-write.html
>     - bat-twl-1:          NOTRUN -> [SKIP][123] ([i915#7707]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@intel_hwmon@hwmon-write.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][124] ([i915#7707]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@intel_hwmon@hwmon-write.html
>     - bat-arls-5:         NOTRUN -> [SKIP][125] ([i915#7707]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - bat-dg1-6:          NOTRUN -> [SKIP][126] ([i915#12311] / [i915#4212]) +7 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - bat-dg1-7:          NOTRUN -> [SKIP][127] ([i915#4212]) +7 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][128] ([i915#5190])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - fi-hsw-4770:        NOTRUN -> [SKIP][129] ([i915#5190])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][130] ([i915#5190])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][131] ([i915#5190])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-arls-6:         NOTRUN -> [SKIP][132] ([i915#10200] / [i915#12203])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][133] ([i915#11666] / [i915#12203])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][134] ([i915#5190])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-arls-5:         NOTRUN -> [SKIP][135] ([i915#10200] / [i915#12203])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][136] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - bat-dg2-14:         NOTRUN -> [SKIP][137] ([i915#4212]) +7 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][138] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-arls-6:         NOTRUN -> [SKIP][139] ([i915#10200]) +8 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][140] ([i915#4215] / [i915#5190])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][141] ([i915#4212]) +8 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][142] ([i915#12311] / [i915#4215])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][143] ([i915#4215] / [i915#5190])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][144] ([i915#4215])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][145] ([i915#4215] / [i915#5190])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - bat-arlh-3:         NOTRUN -> [SKIP][146] ([i915#11666]) +8 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - bat-arls-5:         NOTRUN -> [SKIP][147] ([i915#10200]) +8 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - bat-dg2-9:          NOTRUN -> [SKIP][148] ([i915#4212]) +7 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][149] ([i915#4212]) +7 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_busy@basic:
>     - bat-dg1-6:          NOTRUN -> [SKIP][150] ([i915#11190] / [i915#12311] / [i915#4303])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_busy@basic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - bat-twl-2:          NOTRUN -> [SKIP][151] ([i915#11030] / [i915#11731]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - bat-rpls-4:         NOTRUN -> [SKIP][152] ([i915#4103]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][153] ([i915#4103]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - bat-arls-6:         NOTRUN -> [SKIP][154] ([i915#10202]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-twl-1:          NOTRUN -> [SKIP][155] ([i915#11030] / [i915#11731]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][156] ([i915#4103]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][157] ([i915#4103] / [i915#4213]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-arls-5:         NOTRUN -> [SKIP][158] ([i915#10202]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][159] ([i915#4103] / [i915#4213]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][160] ([i915#4103] / [i915#4213]) +1 other test skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][161] ([i915#4213]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][162] ([i915#4103] / [i915#4213]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][163] ([i915#11731]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][164] ([i915#4103] / [i915#4213]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
>     - bat-dg1-6:          NOTRUN -> [SKIP][165] ([i915#11190] / [i915#12311]) +15 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-rpls-4:         NOTRUN -> [SKIP][166] ([i915#3555] / [i915#3840] / [i915#9886])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@kms_dsc@dsc-basic.html
>     - bat-twl-1:          NOTRUN -> [SKIP][167] ([i915#9886])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@kms_dsc@dsc-basic.html
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][168] ([i915#11190]) +16 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-8809g/igt@kms_dsc@dsc-basic.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][169] ([i915#3555] / [i915#9886])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@kms_dsc@dsc-basic.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][170] ([i915#3555] / [i915#3840])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_dsc@dsc-basic.html
>     - bat-arls-5:         NOTRUN -> [SKIP][171] ([i915#9886])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_dsc@dsc-basic.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][172] ([i915#3555] / [i915#3840])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@kms_dsc@dsc-basic.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][173] ([i915#3555] / [i915#3840])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html
>     - bat-arls-6:         NOTRUN -> [SKIP][174] ([i915#9886])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_dsc@dsc-basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][175] ([i915#3555] / [i915#3840] / [i915#9159])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][176] ([i915#9886])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@kms_dsc@dsc-basic.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][177] ([i915#3555] / [i915#3840])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html
>     - bat-twl-2:          NOTRUN -> [SKIP][178] ([i915#9886])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - bat-adlp-11:        NOTRUN -> [SKIP][179] ([i915#3637]) +3 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][180] ([i915#12311] / [i915#3637]) +2 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][181] ([i915#3637]) +3 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@basic-plain-flip:
>     - bat-dg1-6:          NOTRUN -> [SKIP][182] ([i915#12311]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_flip@basic-plain-flip.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-rpls-4:         NOTRUN -> [SKIP][183]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@kms_force_connector_basic@force-load-detect.html
>     - fi-kbl-7567u:       NOTRUN -> [SKIP][184] +12 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-twl-1:          NOTRUN -> [SKIP][185] ([i915#11032])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@kms_force_connector_basic@force-load-detect.html
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][186] +18 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][187]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][188]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-arls-5:         NOTRUN -> [SKIP][189] ([i915#10207])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][190] ([i915#4093]) +3 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@kms_force_connector_basic@force-load-detect.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][191]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][192]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-arls-6:         NOTRUN -> [SKIP][193] ([i915#10207])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][194]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][195]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][196]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][197] ([i915#10207])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][198]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html
>     - bat-twl-2:          NOTRUN -> [SKIP][199] ([i915#11032])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-adlp-11:        NOTRUN -> [SKIP][200] ([i915#4093]) +3 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][201] +19 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-x1275/igt@kms_frontbuffer_tracking@basic.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][202] ([i915#4342] / [i915#5354])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_frontbuffer_tracking@basic.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][203] ([i915#12311] / [i915#4342])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][204] ([i915#1849] / [i915#5354])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - bat-rplp-1:         NOTRUN -> [SKIP][205] ([i915#4369])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@kms_hdmi_inject@inject-audio.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][206] ([i915#11346]) +5 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@kms_hdmi_inject@inject-audio.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][207] ([i915#4369])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html
>     - fi-tgl-1115g4:      NOTRUN -> [FAIL][208] ([i915#14867])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][209] +15 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:
>     - fi-skl-6600u:       NOTRUN -> [SKIP][210] +11 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][211] ([i915#11190]) +16 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
> 
>   * igt@kms_pipe_crc_basic@read-crc:
>     - fi-kbl-x1275:       NOTRUN -> [SKIP][212] ([i915#11190]) +16 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][213] ([i915#11190]) +16 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][214] ([i915#11190]) +16 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>     - bat-kbl-2:          NOTRUN -> [SKIP][215] ([i915#11190]) +16 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][216] ([i915#11190] / [i915#11346]) +16 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-apl-1:          NOTRUN -> [SKIP][217] +25 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-apl-1/igt@kms_pm_backlight@basic-brightness.html
>     - bat-arls-5:         NOTRUN -> [SKIP][218] ([i915#9812])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_pm_backlight@basic-brightness.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][219] ([i915#11346] / [i915#15855]) +9 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@kms_pm_backlight@basic-brightness.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][220] ([i915#5354])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][221] ([i915#5354])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
>     - bat-rpls-4:         NOTRUN -> [SKIP][222] ([i915#5354])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@kms_pm_backlight@basic-brightness.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][223] ([i915#15205])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@kms_pm_backlight@basic-brightness.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][224] ([i915#5354])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_pm_backlight@basic-brightness.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][225] ([i915#5354])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_pm_backlight@basic-brightness.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][226] ([i915#9812])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@kms_pm_backlight@basic-brightness.html
>     - bat-arls-6:         NOTRUN -> [SKIP][227] ([i915#9812])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_pm_backlight@basic-brightness.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][228] ([i915#5354])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][229] ([i915#9812])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_pm_backlight@basic-brightness.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][230] ([i915#12311] / [i915#5354])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_rpm@basic-pci-d3-state:
>     - fi-ivb-3770:        NOTRUN -> [SKIP][231] +24 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-ivb-3770/igt@kms_pm_rpm@basic-pci-d3-state.html
>     - fi-elk-e7500:       NOTRUN -> [SKIP][232] +26 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html
>     - fi-ilk-650:         NOTRUN -> [SKIP][233] +25 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-ilk-650/igt@kms_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@kms_psr@psr-cursor-plane-move:
>     - fi-cfl-guc:         NOTRUN -> [SKIP][234] +12 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-cfl-guc/igt@kms_psr@psr-cursor-plane-move.html
>     - bat-arls-6:         NOTRUN -> [SKIP][235] ([i915#9732]) +3 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_psr@psr-cursor-plane-move.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][236] ([i915#4077] / [i915#9688]) +1 other test skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][237] ([i915#1072] / [i915#12311] / [i915#9732]) +3 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_psr@psr-primary-mmap-gtt.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][238] ([i915#12637] / [i915#9688]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr-primary-page-flip:
>     - bat-dg1-7:          NOTRUN -> [SKIP][239] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - bat-rpls-4:         NOTRUN -> [SKIP][240] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@kms_psr@psr-sprite-plane-onoff.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][241] ([i915#1072]) +3 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@kms_psr@psr-sprite-plane-onoff.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][242] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_psr@psr-sprite-plane-onoff.html
>     - bat-arls-5:         NOTRUN -> [SKIP][243] ([i915#9732]) +3 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_psr@psr-sprite-plane-onoff.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][244] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@kms_psr@psr-sprite-plane-onoff.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][245] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][246] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][247] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_psr@psr-sprite-plane-onoff.html
>     - fi-hsw-4770:        NOTRUN -> [SKIP][248] ([i915#1072]) +3 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][249] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_psr@psr-sprite-plane-onoff.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][250] ([i915#9732]) +3 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-twl-2:          NOTRUN -> [SKIP][251] ([i915#8809])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-rpls-4:         NOTRUN -> [SKIP][252] ([i915#3555])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-twl-1:          NOTRUN -> [SKIP][253] ([i915#8809])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][254] ([i915#3555])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-arls-5:         NOTRUN -> [SKIP][255] ([i915#10208] / [i915#8809])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][256] ([i915#3555])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][257] ([i915#10208] / [i915#11346] / [i915#8809])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][258] ([i915#3555])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][259] ([i915#3555])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][260] ([i915#3555])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-jsl-5:          NOTRUN -> [SKIP][261] ([i915#3555])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-jsl-5/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][262] ([i915#3555] / [i915#8809])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][263] ([i915#12311] / [i915#3555])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][264] ([i915#3555])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][265] ([i915#3555])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-arls-6:         NOTRUN -> [SKIP][266] ([i915#10208] / [i915#8809])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][267] ([i915#8809])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][268] ([i915#3555])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg1-7:          NOTRUN -> [SKIP][269] ([i915#3708]) +3 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][270] ([i915#3708])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][271] ([i915#3708])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@prime_vgem@basic-fence-flip.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][272] ([i915#3708])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html
>     - bat-adlp-11:        NOTRUN -> [SKIP][273] ([i915#3708])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@prime_vgem@basic-fence-flip.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][274] ([i915#3708])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-arlh-3:         NOTRUN -> [SKIP][275] ([i915#12637]) +4 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@prime_vgem@basic-fence-mmap.html
>     - bat-dg1-7:          NOTRUN -> [SKIP][276] ([i915#3708] / [i915#4077]) +1 other test skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][277] ([i915#3708] / [i915#4077]) +1 other test skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@prime_vgem@basic-fence-mmap.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][278] ([i915#3708] / [i915#4077]) +1 other test skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html
>     - bat-arls-6:         NOTRUN -> [SKIP][279] ([i915#12637] / [i915#3708] / [i915#4077]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@prime_vgem@basic-fence-mmap.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][280] ([i915#3708] / [i915#4077]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][281] ([i915#3708] / [i915#4077]) +1 other test skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][282] ([i915#3708] / [i915#4077]) +1 other test skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adlp-11:        NOTRUN -> [SKIP][283] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-adlp-11/igt@prime_vgem@basic-fence-read.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][284] ([i915#3708]) +1 other test skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][285] ([i915#3708]) +2 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@prime_vgem@basic-fence-read.html
>     - bat-arls-5:         NOTRUN -> [SKIP][286] ([i915#10212] / [i915#3708])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@prime_vgem@basic-fence-read.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][287] ([i915#10212] / [i915#11346] / [i915#11726])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][288] ([i915#11726]) +1 other test skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@prime_vgem@basic-fence-read.html
>     - bat-twl-2:          NOTRUN -> [SKIP][289] ([i915#10212] / [i915#3708])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@prime_vgem@basic-fence-read.html
>     - bat-twl-1:          NOTRUN -> [SKIP][290] ([i915#10212] / [i915#3708])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@prime_vgem@basic-fence-read.html
>     - bat-arls-6:         NOTRUN -> [SKIP][291] ([i915#10212] / [i915#3708])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - bat-arls-5:         NOTRUN -> [SKIP][292] ([i915#12637] / [i915#3708] / [i915#4077]) +1 other test skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-read:
>     - bat-rpls-4:         NOTRUN -> [SKIP][293] ([i915#3708]) +2 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rpls-4/igt@prime_vgem@basic-read.html
>     - bat-twl-1:          NOTRUN -> [SKIP][294] ([i915#10214] / [i915#3708])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@prime_vgem@basic-read.html
>     - bat-dg2-14:         NOTRUN -> [SKIP][295] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-14/igt@prime_vgem@basic-read.html
>     - bat-arls-5:         NOTRUN -> [SKIP][296] ([i915#10214] / [i915#3708])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@prime_vgem@basic-read.html
>     - bat-rplp-1:         NOTRUN -> [SKIP][297] ([i915#3708]) +2 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-rplp-1/igt@prime_vgem@basic-read.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][298] ([i915#10214] / [i915#11346] / [i915#11726])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@prime_vgem@basic-read.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][299] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/fi-rkl-11600/igt@prime_vgem@basic-read.html
>     - bat-arls-6:         NOTRUN -> [SKIP][300] ([i915#10214] / [i915#3708])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@prime_vgem@basic-read.html
>     - bat-twl-2:          NOTRUN -> [SKIP][301] ([i915#10214] / [i915#3708])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-arls-6:         NOTRUN -> [SKIP][302] ([i915#10216] / [i915#3708])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-6/igt@prime_vgem@basic-write.html
>     - bat-dg2-9:          NOTRUN -> [SKIP][303] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-9/igt@prime_vgem@basic-write.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][304] ([i915#10216] / [i915#3708])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-mtlp-8/igt@prime_vgem@basic-write.html
>     - bat-dg1-6:          NOTRUN -> [SKIP][305] ([i915#11723] / [i915#3708])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg1-6/igt@prime_vgem@basic-write.html
>     - bat-dg2-8:          NOTRUN -> [SKIP][306] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-dg2-8/igt@prime_vgem@basic-write.html
>     - bat-arlh-3:         NOTRUN -> [SKIP][307] ([i915#11723])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-3/igt@prime_vgem@basic-write.html
>     - bat-twl-2:          NOTRUN -> [SKIP][308] ([i915#10216] / [i915#3708])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-2/igt@prime_vgem@basic-write.html
>     - bat-twl-1:          NOTRUN -> [SKIP][309] ([i915#10216] / [i915#3708])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-twl-1/igt@prime_vgem@basic-write.html
>     - bat-arls-5:         NOTRUN -> [SKIP][310] ([i915#10216] / [i915#3708])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arls-5/igt@prime_vgem@basic-write.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][311] ([i915#10216] / [i915#11346] / [i915#11723])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/bat-arlh-2/igt@prime_vgem@basic-write.html
> 
>   
>   [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
>   [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
>   [i915#10202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10202
>   [i915#10207]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10207
>   [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
>   [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
>   [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
>   [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
>   [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
>   [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
>   [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
>   [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
>   [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
>   [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
>   [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
>   [i915#11680]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11680
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
>   [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
>   [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
>   [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
>   [i915#12311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311
>   [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
>   [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
>   [i915#15205]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15205
>   [i915#15249]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249
>   [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
>   [i915#15657]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657
>   [i915#15855]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15855
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4093]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4093
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4303]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4303
>   [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
>   [i915#4369]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4369
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18214 -> Patchwork_163871v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18214: ec0484d20b9f962d04a62ff1feb03676c3ce7611 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8827: 8827
>   Patchwork_163871v1: ec0484d20b9f962d04a62ff1feb03676c3ce7611 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163871v1/index.html

-- 
Ville Syrjälä
Intel
