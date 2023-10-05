Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B95527BABD1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 23:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C4F10E409;
	Thu,  5 Oct 2023 21:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE5C10E19D;
 Thu,  5 Oct 2023 21:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696540165; x=1728076165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KaBfSZlS3KurW86jcVx7PGKHp07IiQLjON3hiUbQvW8=;
 b=Ax264OBn2/E9uVsUsyNT9xyaVbae+KX+KHcf2rHmDRDHZDi0nNQv3113
 xNJbiHbbFOWmc22eLFs7du2us05p02QvIxf6FO3dgfOZwWj1yNvV5PGWf
 z7NBAUpL8hWiUC2nHouxKKZYSFXzhGmbOC1kF9v2xkKqm+cQto3Ydf5Hv
 dv4p0jy8DkmTvK93tnkdAJKngPm7FZRmBufdY2bAUrg4Isg9vcPttU9NO
 0d7VfJt98vZh8Gk9XF6lGVFF3Vz4OD8aK5o1HW9pP5u6aTY/iXTJth5LW
 AYdD6KB9pteeJtSIT7nDioudxu+jhGKdoezF6Mat9Pd0nB5jCGXeo2F/+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="450113051"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="450113051"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="999090435"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="999090435"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 14:09:23 -0700
Date: Thu, 5 Oct 2023 23:09:20 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231005210920.3fsgos77s6ajtkt6@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
 <20231003091044.407965-17-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231003091044.407965-17-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 6/9] tests/kms_selftest: Let subtest
 names match suite names
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,
On 2023-10-03 at 11:10:51 +0200, Janusz Krzysztofik wrote:
> There is a rule specified in Kunit Test Style and Nomenclature guidelines
> [1] that states modules should be named after the test suite, followed by
> _test.  Of course, that rule applies only to modules that provide one test
> suite per module.
> 
> As long as that rule is obeyed by authors of Kunit test modules, there is
> no need to hardcode related IGT subtest names in IGT source code.  We are
> already able to derive subtest names from module names, with their _test
> or _kunit suffixes stripped.  We may expect those names will match Kunit
> suite names provided by the modules.
> 
> Drop custom subtest names from IGT Kunit tests that still use them.
> However, keep the mechanism that allows us to provide a name that differs
> from that derived from module name.  That will be required if we ever need
> to support a kunit test module that provides multiple test suites (think
> of i915 selftests code converted to kunit and the i915 module potentially
> providing three test suites: mock, live and perf).
> 
> [1] https://docs.kernel.org/dev-tools/kunit/style.html
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tests/kms_selftest.c | 37 ++++++++++++++++---------------------
>  1 file changed, 16 insertions(+), 21 deletions(-)
> 
> diff --git a/tests/kms_selftest.c b/tests/kms_selftest.c
> index 080ffdf2c0..6618dbe50b 100644
> --- a/tests/kms_selftest.c
> +++ b/tests/kms_selftest.c
> @@ -37,35 +37,30 @@
>   *
>   * arg[1]:
>   *
> - * @drm_cmdline:            drm cmdline
> - * @drm_damage:             drm damage
> - * @drm_dp_mst:             drm dp mst
> + * @drm_cmdline_parser:     drm cmdline parser
> + * @drm_damage_helper:      drm damage helper
> + * @drm_dp_mst_helper:      drm dp mst helper
>   * @drm_format_helper:      drm format helper
>   * @drm_format:             drm format
> - * @drm_plane:              drm plane
> - * @framebuffer:            framebuffer
> + * @drm_plane_helper:       drm plane helper
> + * @drm_framebuffer:        drm framebuffer
>   */
>  
>  IGT_TEST_DESCRIPTION("Basic sanity check of KMS selftests.");
>  
> -struct kms_kunittests {
> -	const char *kunit;
> -	const char *name;
> -};
> -
>  igt_main
>  {
> -	static const struct kms_kunittests kunit_subtests[] = {
> -		{ "drm_cmdline_parser_test",	"drm_cmdline" },
> -		{ "drm_damage_helper_test",	"drm_damage" },
> -		{ "drm_dp_mst_helper_test",	"drm_dp_mst" },
> -		{ "drm_format_helper_test",	"drm_format_helper" },
> -		{ "drm_format_test",		"drm_format" },
> -		{ "drm_framebuffer_test",	"framebuffer" },
> -		{ "drm_plane_helper_test",	"drm_plane" },
> -		{ NULL, NULL}
> +	static const char *kunit_subtests[] = {
> +		"drm_cmdline_parser_test",
> +		"drm_damage_helper_test",
> +		"drm_dp_mst_helper_test",
> +		"drm_format_helper_test",
> +		"drm_format_test",
> +		"drm_framebuffer_test",
> +		"drm_plane_helper_test",
> +		NULL,
>  	};
>  
> -	for (int i = 0; kunit_subtests[i].kunit != NULL; i++)
> -		igt_kunit(kunit_subtests[i].kunit, kunit_subtests[i].name, NULL);
> +	for (int i = 0; kunit_subtests[i] != NULL; i++)
> +		igt_kunit(kunit_subtests[i], NULL, NULL);
>  }
> -- 
> 2.42.0
> 
