Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C5122FF10
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 03:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CB9789A56;
	Tue, 28 Jul 2020 01:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645C489A56
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 01:47:58 +0000 (UTC)
IronPort-SDR: JMuyjC/4jamVNYCezHyCFvu8TRc+GPESPON9JCeJYx/Y9P0jkj0aztAzsrNGTmmlBvfS1ejJEv
 t1ipMfgyPLrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="130699997"
X-IronPort-AV: E=Sophos;i="5.75,404,1589266800"; d="scan'208";a="130699997"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 18:47:57 -0700
IronPort-SDR: FV0oBaleNt0ZaLcdRWlt5BuSVYGNN0JtlF5AlcUdDFLFd2mWS0xby78QmuJXVMr21Gxn2aUMm2
 Bxr0P9xBHSWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,404,1589266800"; d="scan'208";a="290001858"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga006.jf.intel.com with ESMTP; 27 Jul 2020 18:47:57 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jul 2020 18:47:57 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.138]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.220]) with mapi id 14.03.0439.000;
 Mon, 27 Jul 2020 18:47:56 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvZGlzcGxheTogRW5zdXJlIHRoYXQgcmV0IGlzIGFsd2F5cyBpbml0aWFs?=
 =?utf-8?B?aXplZCBpbiBpY2xfY29tYm9fcGh5X3ZlcmlmeV9zdGF0ZQ==?=
Thread-Index: AQHWWy7ymM+ws5/dcUS5jviHRDv1Qakcwc4A
Date: Tue, 28 Jul 2020 01:47:56 +0000
Message-ID: <74694924dbd548db634148b9ee8eaed2fc738f3f.camel@intel.com>
References: <20200716042742.123169-1-natechancellor@gmail.com>
 <159487600890.25374.16029833195632024587@emeril.freedesktop.org>
In-Reply-To: <159487600890.25374.16029833195632024587@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.116.17]
Content-ID: <FD080C528C77AD47A06DD7367A6D1E1D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Ensure_that_ret_is_always_initialized_in_icl?=
 =?utf-8?q?=5Fcombo=5Fphy=5Fverify=5Fstate?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nathan

Are you planning to check this regressions and send another version with the fix?Or can I do it on top of your patch?

On Thu, 2020-07-16 at 05:06 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state
> URL:	https://patchwork.freedesktop.org/series/79536/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18185/index.html
> CI Bug Log - changes from CI_DRM_8753 -> Patchwork_18185
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18185 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18185, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18185/index.html
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18185:
> 
> IGT changes
> Possible regressions
> igt@i915_pm_rpm@module-reload:
> fi-tgl-y: PASS -> DMESG-WARN +4 similar issues
> Suppressed
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
> igt@i915_pm_rpm@basic-pci-d3-state:
> 
> {fi-tgl-dsi}: DMESG-WARN (i915#1982) -> DMESG-WARN
> igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
> {fi-tgl-dsi}: PASS -> DMESG-WARN +4 similar issues
> Known issues
> Here are the changes found in Patchwork_18185 that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_suspend@basic-s0:
> 
> fi-tgl-u2: PASS -> FAIL (i915#1888)
> igt@kms_addfb_basic@bo-too-small:
> 
> fi-tgl-y: PASS -> DMESG-WARN (i915#402) +1 similar issue
> Possible fixes
> igt@debugfs_test@read_all_entries:
> 
> fi-bsw-nick: INCOMPLETE (i915#1250 / i915#1436) -> PASS
> igt@gem_exec_store@basic:
> 
> fi-tgl-y: DMESG-WARN (i915#402) -> PASS +2 similar issues
> igt@i915_module_load@reload:
> 
> fi-byt-j1900: DMESG-WARN (i915#1982) -> PASS
> 
> fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92) -> PASS
> 
> igt@i915_pm_rpm@basic-pci-d3-state:
> 
> fi-bsw-kefka: DMESG-WARN (i915#1982) -> PASS
> igt@i915_selftest@live@execlists:
> 
> fi-kbl-r: INCOMPLETE (i915#794) -> PASS
> igt@i915_selftest@live@gt_lrc:
> 
> fi-tgl-u2: DMESG-FAIL (i915#1233) -> PASS
> igt@kms_flip@basic-flip-vs-modeset@a-dsi1:
> 
> {fi-tgl-dsi}: DMESG-WARN (i915#1982) -> PASS
> igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
> 
> fi-tgl-u2: DMESG-WARN (i915#402) -> PASS
> Warnings
> igt@gem_exec_suspend@basic-s0:
> 
> fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92) -> DMESG-WARN (i915#1982 / i915#62 / i915#92 / i915#95)
> igt@kms_flip@basic-flip-vs-dpms@a-dp1:
> 
> fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92 / i915#95) -> DMESG-WARN (i915#62 / i915#92)
> igt@kms_force_connector_basic@force-edid:
> 
> fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92) -> DMESG-WARN (i915#62 / i915#92 / i915#95) +4 similar issues
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (46 -> 40)
> Missing (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 
> 
> Build changes
> Linux: CI_DRM_8753 -> Patchwork_18185
> CI-20190529: 20190529
> CI_DRM_8753: 62f01b776240c4586b3cbbdbe6065d4473d45429 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5737: c18a9c1083ce9344ff71ae405b9f2deaa82b6702 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18185: b0efac00fd8cdd3d7a3cc3140ba0df8bda56ebf3 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> b0efac00fd8c drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> 
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
