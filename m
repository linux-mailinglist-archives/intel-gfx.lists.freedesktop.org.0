Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 283465B1968
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 11:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A6910EA7A;
	Thu,  8 Sep 2022 09:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9972A10EA96
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 09:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662630957; x=1694166957;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=EtxmG15t+/ff3T8Qwv23eXjCmMhdyYoNm72FaF5+Qis=;
 b=lm4T3rOJZXBfQO9wFs0BN1O25uzNZ8Cg5UoJVn8cCeUTlLf+M3FfxhRK
 QBSDhp2I0DZjroFJef84z7/8IOniOGOzH3x1CPJ31zEowRjIO+wiZbbB1
 qwrwtx4WLj9AH6GVl3l1ArcdUDPWdZVPMXMk2gtp2gncVpkIpzmKtB/8O
 aln8IdVjjhmmwpST9AOE+tTAhaxLKc/N3/GcbVIgqhDwDxZJ778Z5Ndk+
 8Eu9utbDzH7njm2eWYi6gYz8s62LPCR97GSnhWBhhqX/NEMx2ISEZmqLw
 2Mfk4br2SxMGb8298V/jBoy5z6DfulDLvoNn3h/qf1C0jpDg+qKk1JbH/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="383420230"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; 
 d="scan'208,217";a="383420230"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:55:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; 
 d="scan'208,217";a="676617453"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.222.34])
 ([10.251.222.34])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:55:55 -0700
Content-Type: multipart/alternative;
 boundary="------------6VdYUdTZzQ6guytCCMJkK6ef"
Message-ID: <b1b70d7c-0be0-d818-6cb6-087229d5546f@linux.intel.com>
Date: Thu, 8 Sep 2022 11:55:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220907172641.12555-1-nirmoy.das@intel.com>
 <166259891895.27233.1647539864072973131@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <166259891895.27233.1647539864072973131@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Set_correct_domains_values_at_=5Fi915=5Fvma=5Fmove=5Ft?=
 =?utf-8?q?o=5Factive?=
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
--------------6VdYUdTZzQ6guytCCMJkK6ef
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 9/8/2022 3:01 AM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Set correct domains values at 
> _i915_vma_move_to_active
> *URL:* 	https://patchwork.freedesktop.org/series/108258/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12089_full -> Patchwork_108258v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_108258v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_108258v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (12 -> 12)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_108258v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html>
>
There is a NPD which happened before this machine 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html

Unrelated to this series but need more investigation.

<1> [483.195059] BUG: kernel NULL pointer dereference, address: 
0000000000000000
<1> [483.195067] #PF: supervisor read access in kernel mode
<1> [483.195070] #PF: error_code(0x0000) - not-present page
<6> [483.195074] PGD 0 P4D 0
<4> [483.195077] Oops: 0000 [#1] PREEMPT SMP NOPTI
<4> [483.195081] CPU: 1 PID: 1555 Comm: i915_module_loa Tainted: G U 
6.0.0-rc4-Patchwork_108258v1-g15f061f3fed9+ #1
<4> [483.195086] Hardware name: Intel Corporation Tiger Lake Client 
Platform/TigerLake U DDR4 SODIMM RVP, BIOS 
TGLSFWI1.R00.3197.A00.2005110542 05/11/2020
<4> [483.195091] RIP: 0010:intel_uc_fw_fetch+0x2e3/0x440 [i915]


>  *
>  *
>
>     igt@i915_pm_rps@engine-order:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/igt@i915_pm_rps@engine-order.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@i915_pm_rps@engine-order.html>
>
Unrelated failure at 
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/tests/i915/i915_pm_rps.c#L861


Nirmoy

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_108258v1_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-apl: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html>)
>         -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html>)
>         (i915#4386 <https://gitlab.freedesktop.org/drm/intel/issues/4386>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_eio@in-flight-contexts-1us:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/igt@gem_eio@in-flight-contexts-1us.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/igt@gem_eio@in-flight-contexts-1us.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>  *
>
>     igt@gem_eio@kms:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb7/igt@gem_eio@kms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb2/igt@gem_eio@kms.html>
>         (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs1:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb2/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk5/igt@gen9_exec_parse@allowed-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk8/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>  *
>
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +46
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-hpd-fast:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +1
>         similar issue
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +7
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html>
>  *
>
>     igt@gem_exec_balancer@parallel:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb5/igt@gem_exec_balancer@parallel.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb4/igt@gem_exec_balancer@parallel.html>
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846
>         <https://gitlab.freedesktop.org/drm/intel/issues/2846>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>  *
>
>     igt@gem_exec_reloc@basic-gtt-read-noreloc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html>
>         +2 similar issues
>  *
>
>     igt@gen9_exec_parse@bb-start-param:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html>
>  *
>
>     igt@i915_pm_dc@dc9-dpms:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html>
>         (i915#4281
>         <https://gitlab.freedesktop.org/drm/intel/issues/4281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html>
>  *
>
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglu-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>         (i915#3825
>         <https://gitlab.freedesktop.org/drm/intel/issues/3825>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglu-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>  *
>
>     igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2.html>
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr@psr2_sprite_render:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb6/igt@kms_psr@psr2_sprite_render.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@kms_psr@psr2_sprite_render.html>
>         +2 similar issues
>  *
>
>     igt@perf_pmu@busy-double-start@bcs0:
>
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk2/igt@perf_pmu@busy-double-start@bcs0.html>
>         (i915#118
>         <https://gitlab.freedesktop.org/drm/intel/issues/118>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk2/igt@perf_pmu@busy-double-start@bcs0.html>
>  *
>
>     igt@prime_vgem@coherency-gtt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@prime_vgem@coherency-gtt.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         fdo#111656
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111656> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
>
>
>         Warnings
>
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#5939
>         <https://gitlab.freedesktop.org/drm/intel/issues/5939>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@runner@aborted:
>
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#6599
>         <https://gitlab.freedesktop.org/drm/intel/issues/6599>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#6599 <https://gitlab.freedesktop.org/drm/intel/issues/6599>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12089 -> Patchwork_108258v1
>
> CI-20190529: 20190529
> CI_DRM_12089: 15f061f3fed969a615209a8dd343debd8410c691 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_108258v1: 15f061f3fed969a615209a8dd343debd8410c691 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------6VdYUdTZzQ6guytCCMJkK6ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/8/2022 3:01 AM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:166259891895.27233.1647539864072973131@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: Set correct domains values at
              _i915_vma_move_to_active</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/108258/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/108258/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12089_full -&gt;
        Patchwork_108258v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_108258v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_108258v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (12 -&gt; 12)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_108258v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>There is a NPD which happened before this machine
<a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12091/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html</a></p>
    <p>Unrelated to this series but need more investigation.<br>
    </p>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-normal534" class="dmesg dmesg-normal" style="font-family: monospace; white-space: pre; overflow-wrap: normal;">&lt;1&gt; [483.195059] BUG: kernel NULL pointer dereference, address: 0000000000000000</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-normal535" class="dmesg dmesg-normal" style="font-family: monospace; white-space: pre; overflow-wrap: normal;">&lt;1&gt; [483.195067] #PF: supervisor read access in kernel mode</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-normal536" class="dmesg dmesg-normal" style="font-family: monospace; white-space: pre; overflow-wrap: normal;">&lt;1&gt; [483.195070] #PF: error_code(0x0000) - not-present page</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-normal537" class="dmesg dmesg-normal" style="font-family: monospace; white-space: pre; overflow-wrap: normal;">&lt;6&gt; [483.195074] PGD 0 P4D 0 </span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-normal538" class="dmesg dmesg-normal" style="font-family: monospace; white-space: pre; overflow-wrap: normal;">&lt;4&gt; [483.195077] Oops: 0000 [#1] PREEMPT SMP NOPTI</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-warnings539" class="dmesg dmesg-warnings" style="font-family: monospace; color: orangered; font-weight: bold; white-space: pre; overflow-wrap: normal;">&lt;4&gt; [483.195081] CPU: 1 PID: 1555 Comm: i915_module_loa Tainted: G     U             6.0.0-rc4-Patchwork_108258v1-g15f061f3fed9+ #1</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-normal540" class="dmesg dmesg-normal" style="font-family: monospace; white-space: pre; overflow-wrap: normal;">&lt;4&gt; [483.195086] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake U DDR4 SODIMM RVP, BIOS TGLSFWI1.R00.3197.A00.2005110542 05/11/2020</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-warnings541" class="dmesg dmesg-warnings" style="font-family: monospace; color: orangered; font-weight: bold; white-space: pre; overflow-wrap: normal;">&lt;4&gt; [483.195091] RIP: 0010:intel_uc_fw_fetch+0x2e3/0x440 [i915]</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-warnings541" class="dmesg dmesg-warnings" style="font-family: monospace; color: orangered; font-weight: bold; white-space: pre; overflow-wrap: normal;">
</span></div>
    <div style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; color: rgb(0, 0, 0); font-size: medium; font-style:
      normal; font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      start; text-indent: 0px; text-transform: none; white-space:
      nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:
      0px; text-decoration-thickness: initial; text-decoration-style:
      initial; text-decoration-color: initial;"><span id="dmesg-warnings541" class="dmesg dmesg-warnings" style="font-family: monospace; color: orangered; font-weight: bold; white-space: pre; overflow-wrap: normal;">
</span></div>
    <p></p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:166259891895.27233.1647539864072973131@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@engine-order:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/igt@i915_pm_rps@engine-order.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@i915_pm_rps@engine-order.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>Unrelated failure at
<a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/tests/i915/i915_pm_rps.c#L861">https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/blob/master/tests/i915/i915_pm_rps.c#L861</a></p>
    <p><br>
    </p>
    <p>Nirmoy<br>
    </p>
    <blockquote type="cite"
      cite="mid:166259891895.27233.1647539864072973131@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_108258v1_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-apl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/boot.html"
                moz-do-not-send="true">PASS</a>) -&gt; (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl4/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/boot.html"
                moz-do-not-send="true">PASS</a>) (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4386"
                moz-do-not-send="true">i915#4386</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_eio@in-flight-contexts-1us:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/igt@gem_eio@in-flight-contexts-1us.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/igt@gem_eio@in-flight-contexts-1us.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3063"
                moz-do-not-send="true">i915#3063</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb7/igt@gem_eio@kms.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb2/igt@gem_eio@kms.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5784"
                moz-do-not-send="true">i915#5784</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>
              <p>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>) +2 similar
                issues</p>
            </li>
            <li>
              <p>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                  moz-do-not-send="true">i915#2842</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb2/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk5/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk8/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/716"
                moz-do-not-send="true">i915#716</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/716"
                moz-do-not-send="true">i915#716</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +46 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-hpd-fast:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@kms_chamelium@hdmi-hpd-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5519"
                moz-do-not-send="true">i915#5519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5519"
                moz-do-not-send="true">i915#5519</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6268"
                moz-do-not-send="true">i915#6268</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb5/igt@gem_exec_balancer@parallel.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb4/igt@gem_exec_balancer@parallel.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2846"
                moz-do-not-send="true">i915#2846</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read-noreloc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3281"
                moz-do-not-send="true">i915#3281</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-param:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2527"
                moz-do-not-send="true">i915#2527</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc9-dpms:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4281"
                moz-do-not-send="true">i915#4281</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-tglu-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3825"
                moz-do-not-send="true">i915#3825</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-tglu-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a2.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_render:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb6/igt@kms_psr@psr2_sprite_render.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@kms_psr@psr2_sprite_render.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@busy-double-start@bcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-glk2/igt@perf_pmu@busy-double-start@bcs0.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/118"
                moz-do-not-send="true">i915#118</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-glk2/igt@perf_pmu@busy-double-start@bcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@coherency-gtt:</p>
          <ul>
            <li>{shard-rkl}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-rkl-2/igt@prime_vgem@coherency-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111656"
                moz-do-not-send="true">fdo#111656</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5939"
                moz-do-not-send="true">i915#5939</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html"
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
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-apl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl7/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl4/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl1/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12089/shard-apl3/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>) (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                moz-do-not-send="true">i915#3002</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                moz-do-not-send="true">i915#4312</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                moz-do-not-send="true">i915#5257</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6599"
                moz-do-not-send="true">i915#6599</a>) -&gt; (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl6/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108258v1/shard-apl7/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>) (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                moz-do-not-send="true">i915#3002</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                moz-do-not-send="true">i915#4312</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                moz-do-not-send="true">i915#5257</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6599"
                moz-do-not-send="true">i915#6599</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12089 -&gt; Patchwork_108258v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12089: 15f061f3fed969a615209a8dd343debd8410c691 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_108258v1: 15f061f3fed969a615209a8dd343debd8410c691 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------6VdYUdTZzQ6guytCCMJkK6ef--
