Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2I6lJbVHxGn5xwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 21:38:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE71732BE5C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 21:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23A910E853;
	Wed, 25 Mar 2026 20:38:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YTiVAnuT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A9410E853;
 Wed, 25 Mar 2026 20:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774471090; x=1806007090;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QRB5SJZA2Fdkm2am5rrYoHaS8MgultPz45uiS0/IAIs=;
 b=YTiVAnuTt39DP4lOPG3KhP3lAOsZK0JgTAn8NMIWNLgkxT/fMDWjfkQf
 mgY86HRRzlNwL/99LWF2NSssuLpFSx1dgVdEnoyBYln4A4p3i9Anq+QJD
 y8XqAuSoeqxhjzywPVgJHPOyzKbqJCSI5dYQTS8dTbpIrKOKQ8oz7+8Oq
 avYh4RgagBn7RtE9RBPf1X81l43TnfycmZ6Ckn/NpWqp6cj9GmKTQ+DPZ
 VNLR4WlmsRbfN5GKOMzTTHEDYpcgYDMfNkeOn9stxPb8+fKUsaSQSWKzM
 Jf/Ini/+Cg4J5ISrI8t+SW3b8bUQPnh7/pNAmCrBEQqQ5zdmXP+1S2BAo w==;
X-CSE-ConnectionGUID: 8Fd4XuLdR7eCI8fang7n/Q==
X-CSE-MsgGUID: ZJ+Quh9cTHCeXJSvRmLlvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86137027"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86137027"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 13:38:10 -0700
X-CSE-ConnectionGUID: YAkFk0ZQQZaIvJ9TGIRs4Q==
X-CSE-MsgGUID: /hFpQmp0SaadEKybQNTlKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="248263407"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 13:38:08 -0700
Date: Wed, 25 Mar 2026 22:38:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFU?= =?utf-8?Q?=3A?= failure for
 drm/i915: Some fixes and cleanups
Message-ID: <acRHrf97geJux96t@intel.com>
References: <20260325135849.12603-1-ville.syrjala@linux.intel.com>
 <177446096314.397746.15426606883297672242@a3b018990fe9>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <177446096314.397746.15426606883297672242@a3b018990fe9>
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
X-Spamd-Result: default: False [-0.60 / 15.00];
	R_MIXED_CHARSET(0.71)[subject];
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
X-Rspamd-Queue-Id: CE71732BE5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 05:49:23PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Some fixes and cleanups
> URL   : https://patchwork.freedesktop.org/series/163857/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18213 -> Patchwork_163857v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_163857v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_163857v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/index.html
> 
> Participating hosts (41 -> 39)
> ------------------------------
> 
>   Missing    (2): bat-dg2-13 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_163857v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_busy@basic@flip:
>     - fi-bsw-n3050:       [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/fi-bsw-n3050/igt@kms_busy@basic@flip.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/fi-bsw-n3050/igt@kms_busy@basic@flip.html

<3> [252.057088] i915 0000:00:02.0: [drm] *ERROR* Atomic update failure on pipe C (start=16166 end=16167) time 403 us, min 1063, max 1079, scanline start 1052, end 1080

Unrelated to these changes.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_163857v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all-tests@dma_fence_chain:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence_chain.html
> 
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][4] -> [DMESG-FAIL][5] ([i915#12061]) +1 other test dmesg-fail
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/bat-mtlp-8/igt@i915_selftest@live.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/bat-mtlp-8/igt@i915_selftest@live.html
>     - bat-adlp-11:        [PASS][6] -> [DMESG-FAIL][7] ([i915#12964]) +1 other test dmesg-fail
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/bat-adlp-11/igt@i915_selftest@live.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/bat-adlp-11/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [PASS][8] -> [DMESG-FAIL][9] ([i915#12061]) +1 other test dmesg-fail
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live:
>     - fi-glk-j4005:       [ABORT][10] ([i915#15825]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/fi-glk-j4005/igt@i915_selftest@live.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/fi-glk-j4005/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - fi-glk-j4005:       [ABORT][12] -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@i915_selftest@live@hugepages:
>     - fi-glk-j4005:       [DMESG-FAIL][14] -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-tgl-1115g4:      [FAIL][16] ([i915#14867]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18213/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
>   [i915#15825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15825
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18213 -> Patchwork_163857v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18213: cfe3d5f3eb5cf3b8aff1710c1c5c1d666f932aa8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8825: 531ebe0606453021b88f794aad255d9e1a234d3d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_163857v1: cfe3d5f3eb5cf3b8aff1710c1c5c1d666f932aa8 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163857v1/index.html

-- 
Ville Syrjälä
Intel
