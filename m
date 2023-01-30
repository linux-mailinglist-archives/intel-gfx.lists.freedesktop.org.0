Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF57C680674
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 08:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1A210E0C5;
	Mon, 30 Jan 2023 07:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50BD110E0C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 07:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675063700; x=1706599700;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to:content-transfer-encoding;
 bh=SwDjDM0UVsRjorYGU4cIBmAZ0wQ7GHb2GJ+tUt7lAes=;
 b=kNg9FdoGzyTLf07Sw8Q8vt+8WklRdRmHd4HU8huzKPEUQ8yIeZma3PUV
 RMQeKcm8/OFpILFTafUp/P++6sYZiNnPCcVrx0no2NALjc7V9PP+PJqKi
 a3UdHvy6CjxVXOEoflTXEgymTgAJGzlZh6scLorUc1XxV/cDqryWMG8ve
 rVvFLX1VyQXy23lx7rX4dK80Lst1fxfTZYwSIVpqcqLSMtxRzlc0fNWY7
 9sc/bJ6bzSPZbJBYIqZbTrW2GqSxTNcLtxnShizh5SLVBRyBbsDjoFnbP
 CDKksU6d+cCEuSKOUbhzWx25MNWUre9cph633oGyX6LAThQeLVbnS3gz9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="325192815"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="325192815"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2023 23:28:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="772389242"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="772389242"
Received: from pmachan-mobl1.ger.corp.intel.com (HELO [10.213.2.187])
 ([10.213.2.187])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2023 23:28:18 -0800
Message-ID: <b162b43c-251a-8363-a89c-f49672c6fad7@intel.com>
Date: Mon, 30 Jan 2023 08:28:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230127153003.2225111-1-andrzej.hajda@intel.com>
 <167484741741.18990.9295105526690300217@emeril.freedesktop.org>
 <DM8PR11MB56554810EDFC92C7C7562028E0CD9@DM8PR11MB5655.namprd11.prod.outlook.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DM8PR11MB56554810EDFC92C7C7562028E0CD9@DM8PR11MB5655.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_async=5Fflip_mode_per_plane_tracking_=28rev5?=
 =?utf-8?q?=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 28.01.2023 12:24, Saarinen, Jani wrote:
> Hi,
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Patchwork
>> Sent: perjantai 27. tammikuuta 2023 21.24
>> To: Hajda, Andrzej <andrzej.hajda@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] ✗ Fi.CI.IGT: failure for drm/i915: implement async_flip mode per
>> plane tracking (rev5)
>>
>> Patch Details
>> Series:	drm/i915: implement async_flip mode per plane tracking (rev5)
>> URL:	https://patchwork.freedesktop.org/series/108371/
>> State:	failure
>> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/index.html
>>
>> CI Bug Log - changes from CI_DRM_12655_full -> Patchwork_108371v5_full
>>
>>
>> Summary
>>
>>
>> FAILURE
>>
>> Serious unknown changes coming with Patchwork_108371v5_full absolutely need to
>> be verified manually.
>>
>> If you think the reported changes have nothing to do with the changes introduced in
>> Patchwork_108371v5_full, please notify your bug team to allow them to document
>> this new failure mode, which will reduce false positives in CI.
>>
>> External URL: https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_108371v5/index.html
>>
>>
>> Participating hosts (10 -> 11)
>>
>>
>> Additional (1): shard-rkl0
>>
>>
>> Possible new issues
>>
>>
>> Here are the unknown changes that may have been introduced in
>> Patchwork_108371v5_full:
>>
>>
>> IGT changes
>>
>>
>> Possible regressions
>>
>>
>> *	igt@gen9_exec_parse@allowed-single:
>>
>> 	*	shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-glk4/igt@gen9_exec_parse@allowed-single.html>  ->
>> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-
>> glk1/igt@gen9_exec_parse@allowed-single.html>
> Similar issue seen on CI_DRM_12656:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12656/shard-glk5/igt@gen9_exec_parse@allowed-single.html
> So I assume not due to this patch.

Thanks for checking this. Yes, this issue is not connected with the 
patch. The issue is also observed in:
http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12659/shard-glk5/igt@gen9_exec_parse@allowed-single.html


Regards
Andrzej

>
>>
>> Suppressed
>>
>>
>> The following results come from untrusted machines, tests, or statuses.
>> They do not affect the overall result.
>>
>> *	igt@gem_ccs@suspend-resume:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-2/igt@gem_ccs@suspend-resume.html>  (i915#5325
>> <https://gitlab.freedesktop.org/drm/intel/issues/5325> ) -> SKIP <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-5/igt@gem_ccs@suspend-
>> resume.html>
>>
>>
>> Known issues
>>
>>
>> Here are the changes found in Patchwork_108371v5_full that come from known
>> issues:
>>
>>
>> IGT changes
>>
>>
>> Issues hit
>>
>>
>> *	igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>>
>> 	*	shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/Patchwork_108371v5/shard-glk3/igt@kms_dither@fb-8bpc-vs-panel-
>> 6bpc@pipe-a-hdmi-a-1.html>  (fdo#109271
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271> )
>>
>>
>> Possible fixes
>>
>>
>> *	igt@drm_fdinfo@virtual-idle:
>>
>> 	*	{shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html>  (i915#7742
>> <https://gitlab.freedesktop.org/drm/intel/issues/7742> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-5/igt@drm_fdinfo@virtual-
>> idle.html>  +1 similar issue
>>
>> *	igt@gem_ctx_persistence@many-contexts:
>>
>> 	*	{shard-dg1}: ABORT <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-dg1-14/igt@gem_ctx_persistence@many-contexts.html>
>> (i915#4983 <https://gitlab.freedesktop.org/drm/intel/issues/4983> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-dg1-
>> 12/igt@gem_ctx_persistence@many-contexts.html>
>>
>> *	igt@gem_eio@in-flight-suspend:
>>
>> 	*	{shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-4/igt@gem_eio@in-flight-suspend.html>  (fdo#103375
>> <https://bugs.freedesktop.org/show_bug.cgi?id=103375> ) -> PASS <https://intel-
>> gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-5/igt@gem_eio@in-
>> flight-suspend.html>
>>
>> *	igt@gem_exec_endless@dispatch@bcs0:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html>
>> (i915#6247 <https://gitlab.freedesktop.org/drm/intel/issues/6247> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 4/igt@gem_exec_endless@dispatch@bcs0.html>
>>
>> *	igt@gem_exec_fair@basic-none@vcs0:
>>
>> 	*	{shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-2/igt@gem_exec_fair@basic-none@vcs0.html>
>> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 5/igt@gem_exec_fair@basic-none@vcs0.html>  +1 similar issue
>>
>> *	igt@gem_exec_fair@basic-pace-share@rcs0:
>>
>> 	*	shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-
>> glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>>
>> *	igt@gem_exec_reloc@basic-wc-read-noreloc:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html>
>> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 5/igt@gem_exec_reloc@basic-wc-read-noreloc.html>  +15 similar issues
>>
>> *	igt@gem_pwrite_snooped:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-3/igt@gem_pwrite_snooped.html>  (i915#3282
>> <https://gitlab.freedesktop.org/drm/intel/issues/3282> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 5/igt@gem_pwrite_snooped.html>  +2 similar issues
>>
>> *	igt@gen9_exec_parse@batch-invalid-length:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-2/igt@gen9_exec_parse@batch-invalid-length.html>
>> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 5/igt@gen9_exec_parse@batch-invalid-length.html>  +5 similar issues
>>
>> *	igt@i915_pm_dc@dc6-dpms:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html>  (i915#3361
>> <https://gitlab.freedesktop.org/drm/intel/issues/3361> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-4/igt@i915_pm_dc@dc6-
>> dpms.html>
>>
>> *	igt@i915_pm_rpm@modeset-non-lpsp-stress:
>>
>> 	*	{shard-dg1}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-
>> stress.html>  (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397> ) ->
>> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-dg1-
>> 12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html>
>>
>> *	igt@kms_atomic@atomic_plane_damage:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-2/igt@kms_atomic@atomic_plane_damage.html>
>> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 6/igt@kms_atomic@atomic_plane_damage.html>  +1 similar issue
>>
>> *	igt@kms_big_fb@linear-16bpp-rotate-180:
>>
>> 	*	{shard-dg1}: FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-dg1-13/igt@kms_big_fb@linear-16bpp-rotate-180.html>
>> (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-dg1-
>> 18/igt@kms_big_fb@linear-16bpp-rotate-180.html>
>>
>> *	igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
>>
>> 	*	{shard-tglu}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-tglu-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-
>> y_tiled_gen12_rc_ccs.html>  (i915#7651
>> <https://gitlab.freedesktop.org/drm/intel/issues/7651> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-tglu-2/igt@kms_ccs@pipe-a-
>> crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html>  +4 similar issues
>>
>> *	igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>>
>> 	*	{shard-tglu}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-tglu-6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-
>> legacy.html>  (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>  /
>> i915#7651 <https://gitlab.freedesktop.org/drm/intel/issues/7651> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-tglu-
>> 2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html>  +2 similar issues
>>
>> *	igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>>
>> 	*	shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-
>> interruptible@ab-hdmi-a1-hdmi-a2.html>  (i915#79
>> <https://gitlab.freedesktop.org/drm/intel/issues/79> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-glk8/igt@kms_flip@2x-flip-vs-
>> expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html>
>>
>> *	igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
>>
>> 	*	{shard-tglu}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-
>> cur-indfb-draw-blt.html>  (i915#1849
>> <https://gitlab.freedesktop.org/drm/intel/issues/1849> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-tglu-
>> 2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html>  +2
>> similar issues
>>
>> *	igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-
>> modesetfrombusy.html>  (i915#1849
>> <https://gitlab.freedesktop.org/drm/intel/issues/1849>  / i915#4098
>> <https://gitlab.freedesktop.org/drm/intel/issues/4098> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html>  +9 similar issues
>>
>> *	igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-2/igt@kms_plane@pixel-format-source-
>> clamping@pipe-b-planes.html>  (i915#1849
>> <https://gitlab.freedesktop.org/drm/intel/issues/1849> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-6/igt@kms_plane@pixel-
>> format-source-clamping@pipe-b-planes.html>  +1 similar issue
>>
>> *	igt@kms_psr@sprite_plane_move:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-4/igt@kms_psr@sprite_plane_move.html>
>> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072> ) -> PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 6/igt@kms_psr@sprite_plane_move.html>  +1 similar issue
>>
>> *	igt@kms_rotation_crc@exhaust-fences:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-4/igt@kms_rotation_crc@exhaust-fences.html>
>> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>  / i915#4098
>> <https://gitlab.freedesktop.org/drm/intel/issues/4098> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-
>> 6/igt@kms_rotation_crc@exhaust-fences.html>  +12 similar issues
>>
>> *	igt@prime_vgem@basic-fence-read:
>>
>> 	*	{shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-rkl-3/igt@prime_vgem@basic-fence-read.html>
>> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295>  / i915#3291
>> <https://gitlab.freedesktop.org/drm/intel/issues/3291>  / i915#3708
>> <https://gitlab.freedesktop.org/drm/intel/issues/3708> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-rkl-5/igt@prime_vgem@basic-
>> fence-read.html>
>>
>> *	igt@sysfs_timeslice_duration@timeout@rcs0:
>>
>> 	*	{shard-dg1}: FAIL <https://intel-gfx-ci.01.org/tree/drm-
>> tip/CI_DRM_12655/shard-dg1-
>> 13/igt@sysfs_timeslice_duration@timeout@rcs0.html>  (i915#1755
>> <https://gitlab.freedesktop.org/drm/intel/issues/1755> ) -> PASS <https://intel-gfx-
>> ci.01.org/tree/drm-tip/Patchwork_108371v5/shard-dg1-
>> 18/igt@sysfs_timeslice_duration@timeout@rcs0.html>
>>
>> {name}: This element is suppressed. This means it is ignored when computing the
>> status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>>
>> Build changes
>>
>>
>> *	Linux: CI_DRM_12655 -> Patchwork_108371v5
>>
>> CI-20190529: 20190529
>> CI_DRM_12655: d9b0bc4a0e9edfcbf171e09d3743b7186cd801f7 @
>> git://anongit.freedesktop.org/gfx-ci/linux
>> IGT_7139: 1e2fdea2a5547aba6d8595b7ac1c5e4543e90f2f @
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>> Patchwork_108371v5: d9b0bc4a0e9edfcbf171e09d3743b7186cd801f7 @
>> git://anongit.freedesktop.org/gfx-ci/linux

