Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8824C4A07
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 17:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6AF510E6B7;
	Fri, 25 Feb 2022 16:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB47710E6B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 16:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805081; x=1677341081;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gSQWQDoOY11OtmgbxdHRIJOUNEvI78P7zpI5PVNtUUQ=;
 b=ehuyonnB25D/bRweJRzirRl/hBb9D3QnK22EMx4NkZxFClMqxmEmjcZb
 1/tHhkD2juo/OWIW56ivMj8Kxs2C9s5twQp2BK/47k7I3m7723616UkYD
 YQVsJq1mfxAFBhI8D6dyU55lxPEMpEsXERA8kLUDJW4qffO0A2bAd8jVG
 4st+7NeApjeFH7c3aGYVTXKZhLKb1yykkXqysuKLibd6FGmuldpipK4HB
 HU10j9+/Q+UyLQmIhkXF6jrr4Qh6qXFXsgNQ9wg2DizWb4TlHmY5VPl1C
 YF6Tt9EgBJtDWHOn2oxYSznlsgnU1JSE/dTrNMDBRd3YBedFQi3eJ64tH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313240386"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313240386"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:04:41 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="509309316"
Received: from unknown (HELO ldmartin-desk2) ([10.209.25.147])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:04:41 -0800
Date: Fri, 25 Feb 2022 08:04:40 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220225160440.s7yxd7tgnj7azocl@ldmartin-desk2>
References: <20220223210933.3049143-1-lucas.demarchi@intel.com>
 <164577882558.6269.7127051609555719055@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <164577882558.6269.7127051609555719055@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Do_not_try_loading_wrong_DMC_version?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 25, 2022 at 08:47:05AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915/dmc: Do not try loading wrong DMC version
>URL   : https://patchwork.freedesktop.org/series/100664/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_11279_full -> Patchwork_22393_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_22393_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_22393_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_22393_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_eio@in-flight-suspend:
>    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-skl8/igt@gem_eio@in-flight-suspend.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl6/igt@gem_eio@in-flight-suspend.html
>
>  * igt@kms_flip@busy-flip@a-hdmi-a1:
>    - shard-glk:          [PASS][3] -> [FAIL][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-glk1/igt@kms_flip@busy-flip@a-hdmi-a1.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-glk8/igt@kms_flip@busy-flip@a-hdmi-a1.html

this could only be a regression if it was in another display_ver == 12.
Those are not.

>
>
>#### Warnings ####
>
>  * igt@i915_pm_dc@dc3co-vpb-simulation:
>    - shard-skl:          [SKIP][5] ([fdo#109271] / [i915#658]) -> [INCOMPLETE][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-skl10/igt@i915_pm_dc@dc3co-vpb-simulation.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>
>
>#### Suppressed ####
>
>  The following results come from untrusted machines, tests, or statuses.
>  They do not affect the overall result.
>
>  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>    - {shard-tglu}:       NOTRUN -> [DMESG-WARN][7] +1 similar issue
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglu-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

this one woruld be suspicious, but the DMC issue there is caused by an
earlier error. Checking another run for this same machine, both are
loading the same DMC:

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-1/boot9.txt
<7>[    6.100322] i915 0000:00:02.0: [drm:intel_dmc_ucode_init [i915]] Loading i915/tgl_dmc_ver2_12.bin
<7>[    6.101182] i915 0000:00:02.0: [drm:intel_fbc_init [i915]] Sanitized enable_fbc value: 1
<7>[    6.102264] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM0 latency 3 (3.0 usec)
<7>[    6.102480] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM1 latency 54 (54.0 usec)
<7>[    6.102592] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM2 latency 54 (54.0 usec)
<7>[    6.102712] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM3 latency 54 (54.0 usec)
<7>[    6.102820] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM4 latency 54 (54.0 usec)
<7>[    6.102977] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM5 latency 73 (73.0 usec)
<7>[    6.103040] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM6 latency 110 (110.0 usec)
<7>[    6.103176] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM7 latency 115 (115.0 usec)
<6>[    6.104018] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)

and https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglu-1/boot16.txt
<7>[    6.108031] i915 0000:00:02.0: [drm:intel_dmc_ucode_init [i915]] Loading i915/tgl_dmc_ver2_12.bin
<7>[    6.109333] i915 0000:00:02.0: [drm:intel_fbc_init [i915]] Sanitized enable_fbc value: 1
<7>[    6.110644] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM0 latency 3 (3.0 usec)
<7>[    6.111192] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM1 latency 54 (54.0 usec)
<7>[    6.111311] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM2 latency 54 (54.0 usec)
<6>[    6.111481] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)
<7>[    6.111479] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM3 latency 54 (54.0 usec

Can't be caused by this series.

Lucas De Marchi
