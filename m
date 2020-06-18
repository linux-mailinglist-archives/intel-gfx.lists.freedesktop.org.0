Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 864321FEF08
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 11:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D280A6EB33;
	Thu, 18 Jun 2020 09:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFBC6EB33
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 09:52:31 +0000 (UTC)
IronPort-SDR: Ar319vr9Zc3fd76X9Qf6LY8YsKxk8BDfTzKA7106UGunY6fN1oY9J4HNBPApetpfi9NUFxn7wm
 asNpPrzQ0xNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122258728"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122258728"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 02:52:30 -0700
IronPort-SDR: Qd7h/IxJNF15ntJ7Zl9+oq8TjZXrmfZh1izJV8j8xGZVPZa99YyuAllzQeNTiEq6pLXlQiVXyq
 WkiIrxIVcn9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="273806760"
Received: from crochet-mobl2.ger.corp.intel.com (HELO [10.252.49.161])
 ([10.252.49.161])
 by orsmga003.jf.intel.com with ESMTP; 18 Jun 2020 02:52:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200618095014.252677-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <1fb2b246-ce6c-1e06-68a7-6a4e968aa6d5@intel.com>
Date: Thu, 18 Jun 2020 12:52:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200618095014.252677-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests: Move perf/perf_pmu under i915
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18/06/2020 12:50, Chris Wilson wrote:
> These are i915 specific tests of the perf and perf-workalike interfaces,
> so move them under i915/
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   tests/Makefile.sources      | 8 ++++++--
>   tests/{ => i915}/perf.c     | 0
>   tests/{ => i915}/perf_pmu.c | 0
>   tests/meson.build           | 6 ++++--
>   4 files changed, 10 insertions(+), 4 deletions(-)
>   rename tests/{ => i915}/perf.c (100%)
>   rename tests/{ => i915}/perf_pmu.c (100%)
>
> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index eaa6c0d04..af900bcfc 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -88,8 +88,6 @@ TESTS_progs = \
>   	kms_vblank \
>   	kms_vrr \
>   	meta_test \
> -	perf \
> -	perf_pmu \
>   	prime_busy \
>   	prime_mmap \
>   	prime_mmap_coherency \
> @@ -115,6 +113,12 @@ sysfs_preempt_timeout_SOURCES = i915/sysfs_preempt_timeout.c
>   TESTS_progs += sysfs_timeslice_duration
>   sysfs_timeslice_duration_SOURCES = i915/sysfs_timeslice_duration.c
>   
> +TESTS_progs += perf
> +perf_SOURCES = i915/perf.c
> +
> +TESTS_progs += perf_pmu
> +perf_pmu_SOURCES = i915/perf_pmu.c
> +
>   TESTS_progs += gem_bad_reloc
>   gem_bad_reloc_SOURCES = i915/gem_bad_reloc.c
>   
> diff --git a/tests/perf.c b/tests/i915/perf.c
> similarity index 100%
> rename from tests/perf.c
> rename to tests/i915/perf.c
> diff --git a/tests/perf_pmu.c b/tests/i915/perf_pmu.c
> similarity index 100%
> rename from tests/perf_pmu.c
> rename to tests/i915/perf_pmu.c
> diff --git a/tests/meson.build b/tests/meson.build
> index e69bdb7d0..28091794f 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -336,14 +336,16 @@ test_executables += executable('i915_pm_rc6_residency',
>   	   install : true)
>   test_list += 'i915_pm_rc6_residency'
>   
> -test_executables += executable('perf_pmu', 'perf_pmu.c',
> +test_executables += executable('perf_pmu',
> +	   join_paths('i915', 'perf_pmu.c'),
>   	   dependencies : test_deps + [ lib_igt_perf ],
>   	   install_dir : libexecdir,
>   	   install_rpath : libexecdir_rpathdir,
>   	   install : true)
>   test_list += 'perf_pmu'
>   
> -test_executables += executable('perf', 'perf.c',
> +test_executables += executable('perf',
> +	   join_paths('i915', 'perf.c'),
>   	   dependencies : test_deps + [ lib_igt_i915_perf ],
>   	   install_dir : libexecdir,
>   	   install_rpath : libexecdir_rpathdir,


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
