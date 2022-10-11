Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EF45FBDBD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 00:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0677910E052;
	Tue, 11 Oct 2022 22:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC36710E052
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 22:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665526659; x=1697062659;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kwsBtftAtcvkzUFYsD5p7w7T/+e0nzoLmdiXoqkAre0=;
 b=eIo8lhwYPJHkTseHGZwyc7F89Z+dikcz09QCbzG8SIvCn+aw5Gn+kowz
 iDcEwIGbhdanJAxp2SL46w+m2UyWZhL4nRZ6tIpExOHgHiW1F4KVGlcu1
 z8VAMyY/B70XCso8Xjzes6vwiHQWFhbqX1VslmbMLEzZWm7qvQueOqbsf
 tlIvvAhzmVASmvTvmr29XESqNh3kdye03H7ePU9DmciNhFpxXojGeU7T+
 Kce428tb40n2DJuf7Uwwd4Whpz2coROUI30/UMvuk5VQu/SvekTY46jrd
 DCsI/M4ob5DfJy2QV45//hfcmPhaRRUvwALo6G3/EooAfBxncwnb3y4kk g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="303379039"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="303379039"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 15:17:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="731166520"
X-IronPort-AV: E=Sophos;i="5.95,177,1661842800"; d="scan'208";a="731166520"
Received: from plos-mobl2.ger.corp.intel.com (HELO intel.com) ([10.213.13.94])
 by fmsmga002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2022 15:17:37 -0700
Date: Wed, 12 Oct 2022 00:17:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y0XrfxDgLxMwPdhV@ashyti-mobl2.lan>
References: <20221011135940.367048-1-andi.shyti@linux.intel.com>
 <166551854770.5541.10551641698547913217@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <166551854770.5541.10551641698547913217@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/trace=3A_Removed_unused_frequency_trace?=
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 11, 2022 at 08:02:27PM -0000, Patchwork wrote:
> Patch Details
> 
> Series:  drm/i915/trace: Removed unused frequency trace
> URL:     https://patchwork.freedesktop.org/series/109582/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109582v1/index.html
> 
> CI Bug Log - changes from CI_DRM_12233_full -> Patchwork_109582v1_full
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_109582v1_full absolutely need to
> be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_109582v1_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Participating hosts (9 -> 9)
> 
> No changes in participating hosts
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_109582v1_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@i915_selftest@live@ring_submission:
>       □ shard-skl: NOTRUN -> INCOMPLETE +1 similar issue

looks unrelated.

Andi

> 
> Known issues
> 
> Here are the changes found in Patchwork_109582v1_full that come from known
> issues:
> 
> IGT changes
> 
> Issues hit
> 
>   • igt@gem_eio@reset-stress:
> 
>       □ shard-tglb: PASS -> FAIL (i915#5784)
>   • igt@gem_exec_balancer@parallel-bb-first:
> 
>       □ shard-iclb: PASS -> SKIP (i915#4525) +2 similar issues
>   • igt@gem_exec_fair@basic-deadline:
> 
>       □ shard-glk: NOTRUN -> FAIL (i915#2846)
> 
>       □ shard-skl: NOTRUN -> FAIL (i915#2846)
> 
>   • igt@gem_exec_fair@basic-none@rcs0:
> 
>       □ shard-glk: NOTRUN -> FAIL (i915#2842)
>   • igt@gem_huc_copy@huc-copy:
> 
>       □ shard-tglb: PASS -> SKIP (i915#2190)
>   • igt@gem_lmem_swapping@heavy-verify-multi-ccs:
> 
>       □ shard-glk: NOTRUN -> SKIP (fdo#109271 / i915#4613)
>   • igt@gem_lmem_swapping@verify-ccs:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#4613) +3 similar issues
>   • igt@gem_pread@exhaustion:
> 
>       □ shard-skl: NOTRUN -> WARN (i915#2658)
>   • igt@gem_userptr_blits@input-checking:
> 
>       □ shard-glk: NOTRUN -> DMESG-WARN (i915#4991)
>   • igt@gen9_exec_parse@allowed-single:
> 
>       □ shard-apl: PASS -> DMESG-WARN (i915#5566 / i915#716)
>   • igt@i915_module_load@reload-with-fault-injection:
> 
>       □ shard-tglb: PASS -> DMESG-WARN (i915#2867)
>   • igt@i915_pm_dc@dc6-dpms:
> 
>       □ shard-skl: NOTRUN -> FAIL (i915#454)
>   • igt@i915_selftest@live@gt_heartbeat:
> 
>       □ shard-skl: NOTRUN -> DMESG-FAIL (i915#5334)
>   • igt@i915_selftest@live@gt_pm:
> 
>       □ shard-skl: NOTRUN -> DMESG-FAIL (i915#1886)
>   • igt@i915_suspend@sysfs-reader:
> 
>       □ shard-apl: PASS -> DMESG-WARN (i915#180)
>   • igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> 
>       □ shard-skl: NOTRUN -> FAIL (i915#3763)
>   • igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#3886) +1 similar issue
>   • igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       □ shard-glk: NOTRUN -> SKIP (fdo#109271 / i915#3886) +1 similar issue
>   • igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#3886) +14 similar issues
>   • igt@kms_chamelium@dp-edid-change-during-suspend:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +7 similar issues
>   • igt@kms_chamelium@hdmi-hpd-for-each-pipe:
> 
>       □ shard-glk: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +1 similar issue
>   • igt@kms_chamelium@vga-hpd:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +3 similar issues
>   • igt@kms_content_protection@atomic@pipe-a-dp-1:
> 
>       □ shard-apl: NOTRUN -> INCOMPLETE (i915#7121)
>   • igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
> 
>       □ shard-glk: PASS -> FAIL (i915#2346)
> 
>       □ shard-skl: NOTRUN -> FAIL (i915#2346)
> 
>   • igt@kms_flip@flip-vs-expired-vblank@c-edp1:
> 
>       □ shard-skl: PASS -> FAIL (i915#79) +1 similar issue
>   • igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
> 
>       □ shard-iclb: NOTRUN -> SKIP (i915#6375)
>   • igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
> 
>       □ shard-iclb: NOTRUN -> SKIP (i915#3555) +2 similar issues
>   • igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
> 
>       □ shard-iclb: NOTRUN -> SKIP (i915#2587 / i915#2672) +8 similar issues
>   • igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
> 
>       □ shard-iclb: NOTRUN -> SKIP (i915#2672) +1 similar issue
>   • igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
> 
>       □ shard-iclb: NOTRUN -> SKIP (i915#2672 / i915#3555)
>   • igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
> 
>       □ shard-glk: NOTRUN -> SKIP (fdo#109271) +65 similar issues
>   • igt@kms_plane@plane-panning-top-left@pipe-a-planes:
> 
>       □ shard-snb: PASS -> SKIP (fdo#109271) +3 similar issues
>   • igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-b-hdmi-a-2:
> 
>       □ shard-glk: NOTRUN -> FAIL (i915#4573) +2 similar issues
>   • igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#5776) +2 similar issues
>   • igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-c-dp-1:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271) +38 similar issues
>   • igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271) +201 similar issues
>   • igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#658) +2 similar issues
>   • igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
> 
>       □ shard-glk: NOTRUN -> SKIP (fdo#109271 / i915#658)
>   • igt@kms_psr2_su@page_flip-p010:
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109642 / fdo#111068 / i915#658)
>   • igt@kms_psr@psr2_cursor_blt:
> 
>       □ shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
>   • igt@kms_setmode@basic:
> 
>       □ shard-snb: NOTRUN -> SKIP (fdo#109271)
>   • igt@kms_writeback@writeback-invalid-parameters:
> 
>       □ shard-glk: NOTRUN -> SKIP (fdo#109271 / i915#2437)
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#2437)
> 
>   • igt@perf@polling-parameterized:
> 
>       □ shard-skl: NOTRUN -> FAIL (i915#5639)
>   • igt@syncobj_timeline@wait-all-delayed-signal:
> 
>       □ shard-skl: PASS -> DMESG-WARN (i915#1982)
>   • igt@sysfs_clients@pidname:
> 
>       □ shard-glk: NOTRUN -> SKIP (fdo#109271 / i915#2994)
>   • igt@sysfs_clients@split-25:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#2994) +3 similar issues
> 
> Possible fixes
> 
>   • igt@gem_exec_balancer@parallel-keep-submit-fence:
> 
>       □ shard-iclb: SKIP (i915#4525) -> PASS
>   • igt@gem_exec_schedule@wide@vecs0:
> 
>       □ shard-skl: INCOMPLETE -> PASS
>   • igt@gen9_exec_parse@allowed-all:
> 
>       □ shard-glk: DMESG-WARN (i915#5566 / i915#716) -> PASS +1 similar issue
>   • igt@i915_pm_dc@dc9-dpms:
> 
>       □ shard-apl: FAIL (i915#4275) -> PASS
>   • igt@kms_big_fb@linear-16bpp-rotate-180:
> 
>       □ shard-iclb: FAIL (i915#1888 / i915#7036) -> PASS
>   • igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
> 
>       □ shard-skl: INCOMPLETE (i915#4939) -> PASS
>   • igt@kms_fbcon_fbt@fbc-suspend:
> 
>       □ shard-apl: FAIL (i915#4767) -> PASS
>   • igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
> 
>       □ shard-glk: FAIL (i915#79) -> PASS
>   • igt@kms_flip@plain-flip-ts-check@b-edp1:
> 
>       □ shard-skl: FAIL (i915#2122) -> PASS
>   • igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
> 
>       □ shard-apl: DMESG-WARN (i915#180) -> PASS +2 similar issues
>   • igt@kms_psr@psr2_primary_blt:
> 
>       □ shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> 
> Warnings
> 
>   • igt@gem_exec_balancer@parallel-ordering:
> 
>       □ shard-iclb: FAIL (i915#6117) -> SKIP (i915#4525)
>   • igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       □ shard-iclb: SKIP (i915#658) -> SKIP (i915#588)
>   • igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
> 
>       □ shard-iclb: SKIP (i915#2920) -> SKIP (i915#658)
>   • igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
> 
>       □ shard-iclb: SKIP (i915#658) -> SKIP (i915#2920)
>   • igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       □ shard-iclb: SKIP (fdo#111068 / i915#658) -> SKIP (i915#2920)
>   • igt@runner@aborted:
> 
>       □ shard-apl: (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL) (i915#180 / i915#3002 /
>         i915#4312) -> (FAIL, FAIL, FAIL, FAIL, FAIL) (fdo#109271 / i915#180 /
>         i915#3002 / i915#4312)
> 
> Build changes
> 
>   • Linux: CI_DRM_12233 -> Patchwork_109582v1
> 
> CI-20190529: 20190529
> CI_DRM_12233: 6fbcc8bcd3c991362bec9b644b6a982630406d6b @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_109582v1: 6fbcc8bcd3c991362bec9b644b6a982630406d6b @ git://
> anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://
> anongit.freedesktop.org/piglit
> 
> SECURITY NOTE: file ~/.netrc must not be accessible by others
