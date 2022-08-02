Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B43587E8D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 17:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887EE8E592;
	Tue,  2 Aug 2022 15:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DEFF10E008
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 15:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659452693; x=1690988693;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=JyNzZ6D3kUhXulUIGgPs9FFlqz5G1syYprqcfV3ZGNk=;
 b=fPtyDn1GWHzgxLJLpdP/eSJkb6JP3EMLiCU7kqED9ZqLUPxpB7tBEaU5
 nUukvOGPXAnZC1FizGI8xHAr2QyTgf3EeaB5y0UKFbt2esYDF6i6bj5le
 E4SpEn5EfUqevlmAqJH9H5nSlke+Jq8CZJjOywSxYYuKUeFM5pJrqp7Al
 XWSQYUpC4GvCrNvAOhc0i9SemE41Eol//A1Qbh+oOl2QB9Bve5otQNqyE
 yRznXcKlDZA8SYpbMiiCYgDrZb4nNjdg4qIVQb2UiypgZiv8RhprL7lKn
 t2cgWk7ewFRq6QLDVIYSuvzas4CMIIuUL7+lI+jY6DoqFtAGE1EO5a04X g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="272475218"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; 
 d="scan'208,217";a="272475218"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:04:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; 
 d="scan'208,217";a="578247498"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.7.78])
 ([10.252.7.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:04:41 -0700
Content-Type: multipart/alternative;
 boundary="------------jmB9CvDQC07iXTTKmCNF9si2"
Message-ID: <d23f789e-27f8-6da6-0fb3-37d3c22c57f7@linux.intel.com>
Date: Tue, 2 Aug 2022 17:04:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 "Das, Nirmoy" <nirmoy.das@intel.com>
References: <20220726144844.18429-1-nirmoy.das@intel.com>
 <165886293336.21570.4451202956636119001@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <165886293336.21570.4451202956636119001@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Remove_shared_locking_on_freeing_objects?=
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

This is a multi-part message in MIME format.
--------------jmB9CvDQC07iXTTKmCNF9si2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 7/26/2022 9:15 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/gem: Remove shared locking on freeing objects
> *URL:* 	https://patchwork.freedesktop.org/series/106720/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11943_full -> Patchwork_106720v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_106720v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_106720v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (13 -> 13)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_106720v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@device_reset@unbind-reset-rebind:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@device_reset@unbind-reset-rebind.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@device_reset@unbind-reset-rebind.html>
>

Tested this on my local TGL NUC with success, seems spurious.


Nirmoy

>  *
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_11943_full and 
> Patchwork_106720v1_full:
>
>
>       New IGT tests (4)
>
>  *
>
>     igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-a-hdmi-a-4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.40] s
>  *
>
>     igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.41] s
>  *
>
>     igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-c-hdmi-a-4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.41] s
>  *
>
>     igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-d-hdmi-a-4:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.41] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_106720v1_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@feature_discovery@display-4x:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@feature_discovery@display-4x.html>
>         (i915#1839 <https://gitlab.freedesktop.org/drm/intel/issues/1839>)
>  *
>
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>  *
>
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>
>      o
>
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
>  *
>
>     igt@gem_exec_fair@basic-pace@bcs0:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2848
>         <https://gitlab.freedesktop.org/drm/intel/issues/2848>) +4
>         similar issues
>  *
>
>     igt@gem_exec_params@rsvd2-dirt:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_exec_params@rsvd2-dirt.html>
>         (fdo#109283 <https://bugs.freedesktop.org/show_bug.cgi?id=109283>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@verify:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_lmem_swapping@verify.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-off-3:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_pxp@reject-modify-context-protection-off-3.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>  *
>
>     igt@gem_userptr_blits@access-control:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@gem_userptr_blits@access-control.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +13
>         similar issues
>  *
>
>     igt@gem_userptr_blits@unsync-unmap-after-close:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_userptr_blits@unsync-unmap-after-close.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>  *
>
>     igt@gen7_exec_parse@basic-rejected:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gen7_exec_parse@basic-rejected.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#6405 <https://gitlab.freedesktop.org/drm/intel/issues/6405>)
>  *
>
>     igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html>
>         (fdo#111644
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>         i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397> /
>         i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>  *
>
>     igt@kms_big_fb@linear-8bpp-rotate-90:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>  *
>
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>  *
>
>     igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html>
>         (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>  *
>
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_color@ctm-0-50@pipe-b-dp-1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl6/igt@kms_color@ctm-0-50@pipe-b-dp-1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl7/igt@kms_color@ctm-0-50@pipe-b-dp-1.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>         +37 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +6
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-c-ctm-0-25:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>  *
>
>     igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_content_protection@legacy:
>
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_content_protection@legacy.html>
>         (i915#1319 <https://gitlab.freedesktop.org/drm/intel/issues/1319>)
>  *
>
>     igt@kms_content_protection@uevent:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_content_protection@uevent.html>
>         (i915#2105 <https://gitlab.freedesktop.org/drm/intel/issues/2105>)
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-edp-1-32x10:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-edp-1-32x10.html>
>         (i915#4462
>         <https://gitlab.freedesktop.org/drm/intel/issues/4462>) +7
>         similar issues
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-edp-1-512x170:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-edp-1-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +7
>         similar issues
>  *
>
>     igt@kms_cursor_crc@cursor-sliding@pipe-b-vga-1-512x512:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-snb7/igt@kms_cursor_crc@cursor-sliding@pipe-b-vga-1-512x512.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +6
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_flip@2x-nonexisting-fb-interruptible:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_flip@2x-nonexisting-fb-interruptible.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825> /
>         i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +1
>         similar issue
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +5
>         similar issues
>  *
>
>     igt@kms_flip@flip-vs-suspend@b-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl4/igt@kms_flip@flip-vs-suspend@b-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html>
>         (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +9
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +84
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html>
>         (i915#160 <https://gitlab.freedesktop.org/drm/intel/issues/160>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +5
>         similar issues
>  *
>
>     igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>         (i915#1188 <https://gitlab.freedesktop.org/drm/intel/issues/1188>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_multiple@atomic-pipe-b-tiling-4:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-4.html>
>         (i915#5288 <https://gitlab.freedesktop.org/drm/intel/issues/5288>)
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         similar issues
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#1911 <https://gitlab.freedesktop.org/drm/intel/issues/1911>)
>  *
>
>     igt@kms_psr@psr2_cursor_plane_move:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +1
>         similar issue
>  *
>
>     igt@kms_psr@psr2_suspend:
>
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_psr@psr2_suspend.html>
>         (i915#132
>         <https://gitlab.freedesktop.org/drm/intel/issues/132> /
>         i915#3467 <https://gitlab.freedesktop.org/drm/intel/issues/3467>)
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#5289 <https://gitlab.freedesktop.org/drm/intel/issues/5289>)
>  *
>
>     igt@nouveau_crc@pipe-d-source-outp-complete:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@nouveau_crc@pipe-d-source-outp-complete.html>
>         (i915#2530 <https://gitlab.freedesktop.org/drm/intel/issues/2530>)
>  *
>
>     igt@perf@polling-parameterized:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl1/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl3/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
>  *
>
>     igt@perf@polling-small-buf:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@perf@polling-small-buf.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@perf@polling-small-buf.html>
>         (i915#1722 <https://gitlab.freedesktop.org/drm/intel/issues/1722>)
>  *
>
>     igt@prime_nv_pcopy@test2:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@prime_nv_pcopy@test2.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>  *
>
>     igt@prime_vgem@coherency-gtt:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@prime_vgem@coherency-gtt.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656>)
>
>
>         Possible fixes
>
>  *
>
>     igt@fbdev@pan:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@fbdev@pan.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@fbdev@pan.html>
>  *
>
>     igt@gem_ctx_persistence@legacy-engines-hang@blt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         (i915#6252
>         <https://gitlab.freedesktop.org/drm/intel/issues/6252>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>  *
>
>     igt@gem_ctx_persistence@legacy-engines-hang@render:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-dg1-12/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>         (i915#4883
>         <https://gitlab.freedesktop.org/drm/intel/issues/4883>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-dg1-14/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>  *
>
>     igt@gem_eio@kms:
>
>       o {shard-tglu}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-8/igt@gem_eio@kms.html>
>         (i915#5182
>         <https://gitlab.freedesktop.org/drm/intel/issues/5182>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-1/igt@gem_eio@kms.html>
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>      o
>
>         {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-2/igt@gem_eio@unwedge-stress.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-1/igt@gem_eio@unwedge-stress.html>
>
>      o
>
>         shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb2/igt@gem_eio@unwedge-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html>
>         +2 similar issues
>  *
>
>     igt@gem_exec_endless@dispatch@bcs0:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html>
>         (i915#6247
>         <https://gitlab.freedesktop.org/drm/intel/issues/6247>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html>
>  *
>
>     igt@gem_exec_endless@dispatch@vecs0:
>
>       o {shard-tglu}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-8/igt@gem_exec_endless@dispatch@vecs0.html>
>         (i915#3778
>         <https://gitlab.freedesktop.org/drm/intel/issues/3778>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-1/igt@gem_exec_endless@dispatch@vecs0.html>
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl7/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846
>         <https://gitlab.freedesktop.org/drm/intel/issues/2846>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl1/igt@gem_exec_fair@basic-deadline.html>
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>      o
>
>         {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html>
>
>      o
>
>         shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html>
>  *
>
>     igt@gem_exec_reloc@basic-gtt-cpu:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html>
>         +4 similar issues
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb3/igt@gem_huc_copy@huc-copy.html>
>  *
>
>     igt@gem_partial_pwrite_pread@writes-after-reads:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html>
>         +2 similar issues
>  *
>
>     igt@gem_softpin@evict-single-offset:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@gem_softpin@evict-single-offset.html>
>         (i915#4171
>         <https://gitlab.freedesktop.org/drm/intel/issues/4171>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@gem_softpin@evict-single-offset.html>
>  *
>
>     igt@gem_userptr_blits@huge-split:
>
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-snb2/igt@gem_userptr_blits@huge-split.html>
>         (i915#2724
>         <https://gitlab.freedesktop.org/drm/intel/issues/2724>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-snb2/igt@gem_userptr_blits@huge-split.html>
>  *
>
>     igt@gem_workarounds@suspend-resume-fd:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html>
>         +7 similar issues
>  *
>
>     igt@gen9_exec_parse@valid-registers:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html>
>         +1 similar issue
>  *
>
>     igt@i915_hangman@engine-engine-error@bcs0:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html>
>         (i915#6258
>         <https://gitlab.freedesktop.org/drm/intel/issues/6258>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html>
>  *
>
>     igt@i915_pm_backlight@basic-brightness:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@i915_pm_backlight@basic-brightness.html>
>         (i915#3012
>         <https://gitlab.freedesktop.org/drm/intel/issues/3012>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html>
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>      o
>
>         shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#454
>         <https://gitlab.freedesktop.org/drm/intel/issues/454>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html>
>
>      o
>
>         {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#3361
>         <https://gitlab.freedesktop.org/drm/intel/issues/3361>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@i915_pm_dc@dc6-dpms.html>
>
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>
>      o
>
>         shard-apl: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl8/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#6405
>         <https://gitlab.freedesktop.org/drm/intel/issues/6405>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>
>      o
>
>         shard-glk: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-glk5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#6405
>         <https://gitlab.freedesktop.org/drm/intel/issues/6405>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp:
>
>      o
>
>         {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html>
>
>      o
>
>         {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html>
>
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         +1 similar issue
>  *
>
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098> /
>         i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html>
>         +7 similar issues
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>  *
>
>     igt@kms_flip@flip-vs-suspend@a-dp1:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         +18 similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>  *
>
>     igt@kms_plane@plane-panning-top-left@pipe-b-planes:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3546
>         <https://gitlab.freedesktop.org/drm/intel/issues/3546> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>  *
>
>     igt@kms_properties@plane-properties-legacy:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html>
>  *
>
>     igt@kms_psr@primary_render:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_psr@primary_render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_psr@primary_render.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr@psr2_primary_mmap_gtt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html>
>         +1 similar issue
>  *
>
>     igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html>
>  *
>
>     igt@kms_vblank@pipe-b-query-idle:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html>
>         +26 similar issues
>  *
>
>     igt@perf@short-reads:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl6/igt@perf@short-reads.html>
>         (i915#51 <https://gitlab.freedesktop.org/drm/intel/issues/51>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@perf@short-reads.html>
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@prime_vgem@basic-write.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@prime_vgem@basic-write.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2852 <https://gitlab.freedesktop.org/drm/intel/issues/2852>)
>  *
>
>     igt@gem_exec_fair@basic-none@vcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2848
>         <https://gitlab.freedesktop.org/drm/intel/issues/2848>) +4
>         similar issues
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#588 <https://gitlab.freedesktop.org/drm/intel/issues/588>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) ->
>         DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@kms_psr2_su@page_flip-nv12:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html>
>         (i915#5939
>         <https://gitlab.freedesktop.org/drm/intel/issues/5939>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb8/igt@kms_psr2_su@page_flip-nv12.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@nouveau_crc@pipe-b-source-outp-inactive:
>
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl1/igt@nouveau_crc@pipe-b-source-outp-inactive.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl1/igt@nouveau_crc@pipe-b-source-outp-inactive.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +1
>         similar issue
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11943 -> Patchwork_106720v1
>
> CI-20190529: 20190529
> CI_DRM_11943: fedf33eeec77c1a0dfb243eacdbce82ca0ffa704 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_106720v1: fedf33eeec77c1a0dfb243eacdbce82ca0ffa704 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------jmB9CvDQC07iXTTKmCNF9si2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/26/2022 9:15 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:165886293336.21570.4451202956636119001@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/gem: Remove shared locking on freeing objects</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/106720/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/106720/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11943_full -&gt;
        Patchwork_106720v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_106720v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_106720v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (13 -&gt; 13)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_106720v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@device_reset@unbind-reset-rebind:
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@device_reset@unbind-reset-rebind.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@device_reset@unbind-reset-rebind.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p><br>
    </p>
    <p>Tested this on my local TGL NUC with success, seems spurious.</p>
    <p><br>
    </p>
    <p>Nirmoy<br>
    </p>
    <blockquote type="cite"
      cite="mid:165886293336.21570.4451202956636119001@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_11943_full and
        Patchwork_106720v1_full:</p>
      <h3>New IGT tests (4)</h3>
      <ul>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-a-hdmi-a-4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.40] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.41] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-c-hdmi-a-4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.41] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-d-hdmi-a-4:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.41] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_106720v1_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@feature_discovery@display-4x:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@feature_discovery@display-4x.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1839"
                moz-do-not-send="true">i915#1839</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>
              <p>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>)</p>
            </li>
            <li>
              <p>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@bcs0:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2848"
                moz-do-not-send="true">i915#2848</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_params@rsvd2-dirt:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_exec_params@rsvd2-dirt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109283"
                moz-do-not-send="true">fdo#109283</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_lmem_swapping@verify.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_pxp@reject-modify-context-protection-off-3.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4270"
                moz-do-not-send="true">i915#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@access-control:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@gem_userptr_blits@access-control.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +13 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_userptr_blits@unsync-unmap-after-close.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen7_exec_parse@basic-rejected:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gen7_exec_parse@basic-rejected.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109289"
                moz-do-not-send="true">fdo#109289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                moz-do-not-send="true">WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6405"
                moz-do-not-send="true">i915#6405</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111644"
                moz-do-not-send="true">fdo#111644</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2411"
                moz-do-not-send="true">i915#2411</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_big_fb@linear-8bpp-rotate-90.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111614"
                moz-do-not-send="true">fdo#111614</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3743"
                moz-do-not-send="true">i915#3743</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3743"
                moz-do-not-send="true">i915#3743</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111615"
                moz-do-not-send="true">fdo#111615</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6095"
                moz-do-not-send="true">i915#6095</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-snb7/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@ctm-0-50@pipe-b-dp-1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl6/igt@kms_color@ctm-0-50@pipe-b-dp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl7/igt@kms_color@ctm-0-50@pipe-b-dp-1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a>) +37 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109284"
                moz-do-not-send="true">fdo#109284</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@legacy:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_content_protection@legacy.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1319"
                moz-do-not-send="true">i915#1319</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_content_protection@uevent.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2105"
                moz-do-not-send="true">i915#2105</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-edp-1-32x10:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-edp-1-32x10.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4462"
                moz-do-not-send="true">i915#4462</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-edp-1-512x170:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-edp-1-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3359"
                moz-do-not-send="true">i915#3359</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-sliding@pipe-b-vga-1-512x512:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-snb7/igt@kms_cursor_crc@cursor-sliding@pipe-b-vga-1-512x512.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111825"
                moz-do-not-send="true">fdo#111825</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_flip@2x-nonexisting-fb-interruptible.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111825"
                moz-do-not-send="true">fdo#111825</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3637"
                moz-do-not-send="true">i915#3637</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl4/igt@kms_flip@flip-vs-suspend@b-dp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +84 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/160"
                moz-do-not-send="true">i915#160</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109280"
                moz-do-not-send="true">fdo#109280</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111825"
                moz-do-not-send="true">fdo#111825</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1188"
                moz-do-not-send="true">i915#1188</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_multiple@atomic-pipe-b-tiling-4:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-4.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5288"
                moz-do-not-send="true">i915#5288</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_psr2_su@page_flip-p010.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1911"
                moz-do-not-send="true">i915#1911</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_plane_move:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_suspend:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_psr@psr2_suspend.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/132"
                moz-do-not-send="true">i915#132</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3467"
                moz-do-not-send="true">i915#3467</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111615"
                moz-do-not-send="true">fdo#111615</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5289"
                moz-do-not-send="true">i915#5289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@nouveau_crc@pipe-d-source-outp-complete.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2530"
                moz-do-not-send="true">i915#2530</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling-parameterized:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl1/igt@perf@polling-parameterized.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl3/igt@perf@polling-parameterized.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5639"
                moz-do-not-send="true">i915#5639</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling-small-buf:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@perf@polling-small-buf.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@perf@polling-small-buf.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1722"
                moz-do-not-send="true">i915#1722</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_pcopy@test2:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@prime_nv_pcopy@test2.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109291"
                moz-do-not-send="true">fdo#109291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@coherency-gtt:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@prime_vgem@coherency-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111656"
                moz-do-not-send="true">fdo#111656</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@fbdev@pan:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@fbdev@pan.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                moz-do-not-send="true">i915#2582</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@fbdev@pan.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6252"
                moz-do-not-send="true">i915#6252</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@legacy-engines-hang@render:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-dg1-12/igt@gem_ctx_persistence@legacy-engines-hang@render.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4883"
                moz-do-not-send="true">i915#4883</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-dg1-14/igt@gem_ctx_persistence@legacy-engines-hang@render.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-8/igt@gem_eio@kms.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5182"
                moz-do-not-send="true">i915#5182</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-1/igt@gem_eio@kms.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>
              <p>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-2/igt@gem_eio@unwedge-stress.html"
                  moz-do-not-send="true">TIMEOUT</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3063"
                  moz-do-not-send="true">i915#3063</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-1/igt@gem_eio@unwedge-stress.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb2/igt@gem_eio@unwedge-stress.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/5784"
                  moz-do-not-send="true">i915#5784</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb7/igt@gem_eio@unwedge-stress.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_endless@dispatch@bcs0:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6247"
                moz-do-not-send="true">i915#6247</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_endless@dispatch@vecs0:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-8/igt@gem_exec_endless@dispatch@vecs0.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3778"
                moz-do-not-send="true">i915#3778</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-1/igt@gem_exec_endless@dispatch@vecs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl7/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2846"
                moz-do-not-send="true">i915#2846</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl1/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>
              <p>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs0:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3281"
                moz-do-not-send="true">i915#3281</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html"
                moz-do-not-send="true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb7/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb3/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3282"
                moz-do-not-send="true">i915#3282</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-single-offset:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@gem_softpin@evict-single-offset.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4171"
                moz-do-not-send="true">i915#4171</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@gem_softpin@evict-single-offset.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@huge-split:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-snb2/igt@gem_userptr_blits@huge-split.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2724"
                moz-do-not-send="true">i915#2724</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-snb2/igt@gem_userptr_blits@huge-split.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume-fd:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html"
                moz-do-not-send="true">PASS</a> +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@valid-registers:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2527"
                moz-do-not-send="true">i915#2527</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_hangman@engine-engine-error@bcs0:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6258"
                moz-do-not-send="true">i915#6258</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@basic-brightness:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@i915_pm_backlight@basic-brightness.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3012"
                moz-do-not-send="true">i915#3012</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>
              <p>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/454"
                  moz-do-not-send="true">i915#454</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3361"
                  moz-do-not-send="true">i915#3361</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-1/igt@i915_pm_dc@dc6-dpms.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
          <ul>
            <li>
              <p>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl8/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                  moz-do-not-send="true">WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/6405"
                  moz-do-not-send="true">i915#6405</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-glk5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                  moz-do-not-send="true">WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/6405"
                  moz-do-not-send="true">i915#6405</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp:</p>
          <ul>
            <li>
              <p>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                  moz-do-not-send="true">i915#1397</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                  moz-do-not-send="true">i915#1397</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2521"
                moz-do-not-send="true">i915#2521</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@atomic:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html"
                moz-do-not-send="true">INCOMPLETE</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111314"
                moz-do-not-send="true">fdo#111314</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4369"
                moz-do-not-send="true">i915#4369</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html"
                moz-do-not-send="true">PASS</a> +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html"
                moz-do-not-send="true">PASS</a> +18 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1188"
                moz-do-not-send="true">i915#1188</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-top-left@pipe-b-planes:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3558"
                moz-do-not-send="true">i915#3558</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3546"
                moz-do-not-send="true">i915#3546</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4070"
                moz-do-not-send="true">i915#4070</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_properties@plane-properties-legacy:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_render:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_psr@primary_render.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_psr@primary_render.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-2/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4070"
                moz-do-not-send="true">i915#4070</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-b-query-idle:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html"
                moz-do-not-send="true">PASS</a> +26 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@short-reads:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl6/igt@perf@short-reads.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/51"
                moz-do-not-send="true">i915#51</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl9/igt@perf@short-reads.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-rkl-1/igt@prime_vgem@basic-write.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3291"
                moz-do-not-send="true">i915#3291</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-rkl-5/igt@prime_vgem@basic-write.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2852"
                moz-do-not-send="true">i915#2852</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@vcs0:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-tglb1/igt@gem_exec_fair@basic-none@vcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-tglb1/igt@gem_exec_fair@basic-none@vcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2848"
                moz-do-not-send="true">i915#2848</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/588"
                moz-do-not-send="true">i915#588</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-nv12:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5939"
                moz-do-not-send="true">i915#5939</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-iclb8/igt@kms_psr2_su@page_flip-nv12.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109642"
                moz-do-not-send="true">fdo#109642</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@nouveau_crc@pipe-b-source-outp-inactive:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11943/shard-skl1/igt@nouveau_crc@pipe-b-source-outp-inactive.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1888"
                moz-do-not-send="true">i915#1888</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106720v1/shard-skl1/igt@nouveau_crc@pipe-b-source-outp-inactive.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11943 -&gt; Patchwork_106720v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11943: fedf33eeec77c1a0dfb243eacdbce82ca0ffa704 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_106720v1: fedf33eeec77c1a0dfb243eacdbce82ca0ffa704 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------jmB9CvDQC07iXTTKmCNF9si2--
