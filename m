Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16975025B4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 08:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227BD112006;
	Fri, 15 Apr 2022 06:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74CA112006
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 06:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650004783; x=1681540783;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XAGdAFOYXLbEk3bj+MIcwroZEzVDthVBJM8GbvdqBcQ=;
 b=mH2f+sQYBnxQCaQPSKkIIFUSMWKreaYIEAU0fd9gKlvmPRGiR+vY8hxu
 2hePBIklYK2nOsSIHWowZO4y1S48COIp+Eh2xigPPVFmVWhpFsNsbVjUc
 veyBMP99MqoJ4p2aVoc/Pjjno87q7mh1XWFZbnxXw7JqBXVhk+kgTZpP5
 1kSrqFslj7Q1+czE0YNeOSEKwfPJ5ERNYlmfJ8sGRbTK/FwGaLCuKE91r
 4D4TG2eraaWYRpy/ID56/ki9qMACEJhmmpgBBQEwL0YEk5d29kWcCPnru
 mI61dtpvrUkMWYakQ8OTAoANyBzzrXz3fp466LxlobNvKEHaQW8i79gdL g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262548653"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="262548653"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 23:39:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="661672518"
Received: from vphirema-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.53.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 23:39:43 -0700
Date: Thu, 14 Apr 2022 23:39:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20220415063943.ypkptpcukksgkujk@ldmartin-desk2>
References: <20220413005707.3627314-1-anusha.srivatsa@intel.com>
 <164995946065.1346.15377126225893636507@emeril.freedesktop.org>
 <8e998738cef34abe824fe39c998d39d7@intel.com>
 <20220415043714.zmx7lvsk3q5ve5k5@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220415043714.zmx7lvsk3q5ve5k5@ldmartin-desk2>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogICBzdWNjZXNzIGZvciBk?=
 =?utf-8?q?rm/i915/dmc=3A_Load_DMC_on_DG2_=28rev4=29?=
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "'intel-gfx-ci@eclists.intel.com'" <intel-gfx-ci@eclists.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 14, 2022 at 09:37:14PM -0700, Lucas De Marchi wrote:
>On Thu, Apr 14, 2022 at 08:54:49PM +0000, Anusha Srivatsa wrote:
>>HI,
>>
>>The result here says SUCCESS but closer look  shows that it never ran on any DG2. Wanted to know if something went wrong at the system side and if it needs to be revived. The patch is simply loading DMC and shouldn’t cause the system to not boot up at all.
>>
>>Any info in this regard will be very useful.
>
>I think the issue is less about the feedback saying "SUCCESS" and more
>about "why was it not tested on DG2 and we have no clue what happened?".
>
>Not gating a "SUCCESS" message is needed for platforms that are unstable
>due to not been completed yet: otherwise almost all patches series would
>return "FAIL" and it would be even more useless.
>
>So, as DG2 is one of those platforms, I think it's ok to have this
>behavior. But it's not very good to simply have no results and no
>feedback on what really happened.

So I got a local system with DG2 to check and results were not good,
which may explain the CI behavior.

Running BAT with the command below (should be roughly equivalent to what
CI uses)

	$ sudo ./build/runner/igt_runner --piglit-style-dmesg --dmesg-warn-level 4 \
		--disk-usage-limit 20M --per-test-timeout 180 \
		-o -s -b tests/intel-ci/blacklist-pre-merge.txt \
		--test-list tests/intel-ci/fast-feedback.testlist \
		build/tests ~/igt-results

When trying this with DMC, the machine rebooted when reached the
kms_busy test. Resuming with igt_resume, the machine froze on
igt@i915_pm_rpm@basic-rte (I think, not really sure it was this, but it
was one of the pm-related patches).

If enabling DMC depends on a newer IFWI, it's likely CI system doesn't
have it. Same for the system I tried since I didn't try updating.
Either that or there still seems to be something missing. Can you try
the command above locally to make sure it at least completes?

thanks
Lucas De Marchi

>
>Lucas De Marchi
>
>>
>>Thanks,
>>Anusha
>>
>>From: Patchwork <patchwork@emeril.freedesktop.org>
>>Sent: Thursday, April 14, 2022 11:04 AM
>>To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
>>Cc: intel-gfx@lists.freedesktop.org
>>Subject: ✓ Fi.CI.BAT: success for drm/i915/dmc: Load DMC on DG2 (rev4)
>>
>>Patch Details
>>Series:
>>
>>drm/i915/dmc: Load DMC on DG2 (rev4)
>>
>>URL:
>>
>>https://patchwork.freedesktop.org/series/102630/
>>
>>State:
>>
>>success
>>
>>Details:
>>
>>https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/index.html
>>
>>CI Bug Log - changes from CI_DRM_11500 -> Patchwork_102630v4
>>Summary
>>
>>SUCCESS
>>
>>No regressions found.
>>
>>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/index.html
>>
>>Participating hosts (48 -> 45)
>>
>>Additional (2): bat-adlm-1 fi-pnv-d510
>>Missing (5): bat-dg2-8 fi-bsw-cyan fi-icl-u2 bat-dg2-9 fi-bdw-samus
>>
>>Known issues
>>
>>Here are the changes found in Patchwork_102630v4 that come from known issues:
>>
>>IGT changes
>>Issues hit
>>
>> *   igt@i915_selftest@live@execlists:
>>
>>    *   fi-bsw-nick: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bsw-nick/igt@i915_selftest@live@execlists.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-bsw-nick/igt@i915_selftest@live@execlists.html> (i915#2940<https://gitlab.freedesktop.org/drm/intel/issues/2940>)
>>
>> *   igt@i915_selftest@live@hangcheck:
>>
>>    *   fi-snb-2600: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-snb-2600/igt@i915_selftest@live@hangcheck.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-snb-2600/igt@i915_selftest@live@hangcheck.html> (i915#3921<https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>>
>> *   igt@i915_selftest@live@requests:
>>
>>    *   fi-blb-e6850: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-blb-e6850/igt@i915_selftest@live@requests.html> -> DMESG-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-blb-e6850/igt@i915_selftest@live@requests.html> (i915#4528<https://gitlab.freedesktop.org/drm/intel/issues/4528>)
>>
>> *   igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>>
>>    *   fi-pnv-d510: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#5341<https://gitlab.freedesktop.org/drm/intel/issues/5341>)
>>
>> *   igt@prime_vgem@basic-userptr:
>>
>>    *   fi-pnv-d510: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-pnv-d510/igt@prime_vgem@basic-userptr.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39 similar issues
>>
>> *   igt@runner@aborted:
>>
>>    *   fi-bsw-nick: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-bsw-nick/igt@runner@aborted.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3428<https://gitlab.freedesktop.org/drm/intel/issues/3428> / i915#4312<https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>>    *   fi-bdw-5557u: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-bdw-5557u/igt@runner@aborted.html> (i915#4312<https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>>    *   fi-blb-e6850: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-blb-e6850/igt@runner@aborted.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2403<https://gitlab.freedesktop.org/drm/intel/issues/2403> / i915#4312<https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>>
>>{name}: This element is suppressed. This means it is ignored when computing
>>the status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>>Build changes
>>
>> *   Linux: CI_DRM_11500 -> Patchwork_102630v4
>>
>>CI-20190529: 20190529
>>CI_DRM_11500: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux
>>IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>>Patchwork_102630v4: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux
>>
>>== Linux commits ==
>>
>>16f68d87628e drm/i915/dmc: Load DMC on DG2
