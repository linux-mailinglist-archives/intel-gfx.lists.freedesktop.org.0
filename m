Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1B0502170
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 06:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7081910E1D7;
	Fri, 15 Apr 2022 04:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E679810E1D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 04:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649997434; x=1681533434;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=otlxgQzKZeKSGdZsBxxcXenm2eAEy1i/rjCKGivhdTg=;
 b=Y3e+HIDQWjkp3Q/j5ahwQrwzvSW2Wmq+e9ZfqTDylcbParclwGPWff3r
 odU/95JHVtxsEOmLd2h8RaoCLg4EIol7efIqi0HGZFEP4PEW24xN7IDel
 qOu8SHKSEq65htJLEj26+wm3p0/Oyv9aTXu1cBVDfwwdb7hZYad+AzKbj
 wGw18kLmy8PGTSPd3sjPFwyPpxA2/6uY8bpXGIg1VCHGPGvO+5zbOIELW
 2FzYIfNCvEgunQPoStIs4CcIjcIx3Tq+9pHRgLfVuHGghr848VxHn6JD0
 03eiwFmGBs2t/ywhru4Dee4G1NrZB3VcP+lUXYEKPx4JoBZlqyARGyMpP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262845530"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="262845530"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 21:37:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="560444340"
Received: from rramesh2-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.35.174])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 21:37:13 -0700
Date: Thu, 14 Apr 2022 21:37:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20220415043714.zmx7lvsk3q5ve5k5@ldmartin-desk2>
References: <20220413005707.3627314-1-anusha.srivatsa@intel.com>
 <164995946065.1346.15377126225893636507@emeril.freedesktop.org>
 <8e998738cef34abe824fe39c998d39d7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8e998738cef34abe824fe39c998d39d7@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/dmc=3A_Load_DMC_on_DG2_=28rev4=29?=
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 14, 2022 at 08:54:49PM +0000, Anusha Srivatsa wrote:
>HI,
>
>The result here says SUCCESS but closer look  shows that it never ran on any DG2. Wanted to know if something went wrong at the system side and if it needs to be revived. The patch is simply loading DMC and shouldn’t cause the system to not boot up at all.
>
>Any info in this regard will be very useful.

I think the issue is less about the feedback saying "SUCCESS" and more
about "why was it not tested on DG2 and we have no clue what happened?".

Not gating a "SUCCESS" message is needed for platforms that are unstable
due to not been completed yet: otherwise almost all patches series would
return "FAIL" and it would be even more useless.

So, as DG2 is one of those platforms, I think it's ok to have this
behavior. But it's not very good to simply have no results and no
feedback on what really happened.

Lucas De Marchi

>
>Thanks,
>Anusha
>
>From: Patchwork <patchwork@emeril.freedesktop.org>
>Sent: Thursday, April 14, 2022 11:04 AM
>To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
>Cc: intel-gfx@lists.freedesktop.org
>Subject: ✓ Fi.CI.BAT: success for drm/i915/dmc: Load DMC on DG2 (rev4)
>
>Patch Details
>Series:
>
>drm/i915/dmc: Load DMC on DG2 (rev4)
>
>URL:
>
>https://patchwork.freedesktop.org/series/102630/
>
>State:
>
>success
>
>Details:
>
>https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/index.html
>
>CI Bug Log - changes from CI_DRM_11500 -> Patchwork_102630v4
>Summary
>
>SUCCESS
>
>No regressions found.
>
>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/index.html
>
>Participating hosts (48 -> 45)
>
>Additional (2): bat-adlm-1 fi-pnv-d510
>Missing (5): bat-dg2-8 fi-bsw-cyan fi-icl-u2 bat-dg2-9 fi-bdw-samus
>
>Known issues
>
>Here are the changes found in Patchwork_102630v4 that come from known issues:
>
>IGT changes
>Issues hit
>
>  *   igt@i915_selftest@live@execlists:
>
>     *   fi-bsw-nick: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-bsw-nick/igt@i915_selftest@live@execlists.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-bsw-nick/igt@i915_selftest@live@execlists.html> (i915#2940<https://gitlab.freedesktop.org/drm/intel/issues/2940>)
>
>  *   igt@i915_selftest@live@hangcheck:
>
>     *   fi-snb-2600: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-snb-2600/igt@i915_selftest@live@hangcheck.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-snb-2600/igt@i915_selftest@live@hangcheck.html> (i915#3921<https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>
>  *   igt@i915_selftest@live@requests:
>
>     *   fi-blb-e6850: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11500/fi-blb-e6850/igt@i915_selftest@live@requests.html> -> DMESG-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-blb-e6850/igt@i915_selftest@live@requests.html> (i915#4528<https://gitlab.freedesktop.org/drm/intel/issues/4528>)
>
>  *   igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>
>     *   fi-pnv-d510: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#5341<https://gitlab.freedesktop.org/drm/intel/issues/5341>)
>
>  *   igt@prime_vgem@basic-userptr:
>
>     *   fi-pnv-d510: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-pnv-d510/igt@prime_vgem@basic-userptr.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39 similar issues
>
>  *   igt@runner@aborted:
>
>     *   fi-bsw-nick: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-bsw-nick/igt@runner@aborted.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3428<https://gitlab.freedesktop.org/drm/intel/issues/3428> / i915#4312<https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>     *   fi-bdw-5557u: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-bdw-5557u/igt@runner@aborted.html> (i915#4312<https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>     *   fi-blb-e6850: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102630v4/fi-blb-e6850/igt@runner@aborted.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2403<https://gitlab.freedesktop.org/drm/intel/issues/2403> / i915#4312<https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>{name}: This element is suppressed. This means it is ignored when computing
>the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>Build changes
>
>  *   Linux: CI_DRM_11500 -> Patchwork_102630v4
>
>CI-20190529: 20190529
>CI_DRM_11500: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux
>IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>Patchwork_102630v4: 91c829bc09be35f3e9a6674274969c72f60b5e22 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>== Linux commits ==
>
>16f68d87628e drm/i915/dmc: Load DMC on DG2
