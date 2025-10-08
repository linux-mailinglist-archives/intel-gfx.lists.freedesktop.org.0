Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD0DBC4BC8
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 14:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1291B10E392;
	Wed,  8 Oct 2025 12:16:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MiX5GxFB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1298110E0F2;
 Wed,  8 Oct 2025 12:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759925814; x=1791461814;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CnghocxviGUDwEsGK5Oamjq9R4QrwDxD9JCWAeKqFwY=;
 b=MiX5GxFBAOwDb3ef1JbleySMuXdvEusRmuYmdKOqKwjtgTEgR77GOD4V
 fOLOPIrHGD0e1t34z7zC/G55yCkk7CfYrVWjVP5pQ9DtXU3fRRo/Ip5BR
 zJkoSS7s+Ui2sot+H23FDHAFIW1qyAtHcX2Gwta9DAh8VdYKSSNBj0rbZ
 IrEWpG0Iv2qgv2V6DI9uZsoOzlQ28HYXdYL/NTFVVJUvVs/u68H2AQx5+
 KpNvcuZIMnCQ8i9MbkvT+1bFkG6yxQPQi4vWH9GqCOC8dHx/HsUeehKm4
 zORZHGNNabufGlW+RjSQtoS0pIYfuR4brUiV4VGDovz6ViSgS6JNP/w2p Q==;
X-CSE-ConnectionGUID: COTTR4QhRDCFUhgoylSyNA==
X-CSE-MsgGUID: xwnd7pJqRv2hNsWX6PdVbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="73462248"
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="73462248"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 05:16:53 -0700
X-CSE-ConnectionGUID: qUSnoenrTFetPoBo3EntGw==
X-CSE-MsgGUID: CpUhdHx6Qg+rhTlKs3Jupw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="204146332"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2025 05:16:52 -0700
Date: Wed, 8 Oct 2025 14:16:49 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v2 5/5] tests/gem_eio: Avoid exceeding CI disk
 space limit
Message-ID: <20251008121649.sxkfeqazz3wm2akl@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
 <20251007113910.3336564-12-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251007113910.3336564-12-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2025-10-07 at 13:38:28 +0200, Janusz Krzysztofik wrote:
> Each call to trigger_reset() results in GPU state dumped to stderr.
> Subtests that call trigger_reset() many times from a loop tend to exhaust
> per test disk space limit watched by igt_runner.  That results in
> incompletes reported instead of actual subtest results, and CI coverage
> unnecessarily reduced as a further consequence.  Stop dumping GPU state
> from those subtests.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tests/intel/gem_eio.c | 33 +++++++++++++++++----------------
>  1 file changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index cbbf78b932..54ae65155f 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -139,7 +139,7 @@ static bool i915_reset_control(int fd, bool enable)
>  	return igt_params_set(fd, "reset", "%d", enable);
>  }
>  
> -static void trigger_reset(int fd)
> +static void trigger_reset(int fd, bool dump)
>  {
>  	struct timespec ts = { };
>  
> @@ -159,7 +159,8 @@ static void trigger_reset(int fd)
>  	igt_kmsg(KMSG_DEBUG "Checking that the GPU recovered\n");
>  	gem_test_all_engines(fd);
>  
> -	igt_debugfs_dump(fd, "i915_engine_info");
> +	if (dump)
> +		igt_debugfs_dump(fd, "i915_engine_info");
>  	igt_drop_caches_set(fd, DROP_ACTIVE);
>  
>  	/* We expect the health check to be quick! */
> @@ -199,7 +200,7 @@ static void test_throttle(int fd)
>  
>  	igt_assert_eq(__gem_throttle(fd), -EIO);
>  
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  }
>  
>  static void test_create(int fd)
> @@ -208,7 +209,7 @@ static void test_create(int fd)
>  
>  	gem_close(fd, gem_create(fd, 4096));
>  
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  }
>  
>  static void test_create_ext(int fd)
> @@ -233,7 +234,7 @@ static void test_create_ext(int fd)
>  		gem_close(fd, handle);
>  	}
>  
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  }
>  
>  static void test_context_create(int fd)
> @@ -246,7 +247,7 @@ static void test_context_create(int fd)
>  
>  	igt_assert_eq(__gem_context_create(fd, &ctx), -EIO);
>  
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  }
>  
>  static void test_execbuf(int fd)
> @@ -269,7 +270,7 @@ static void test_execbuf(int fd)
>  	igt_assert_eq(__gem_execbuf(fd, &execbuf), -EIO);
>  	gem_close(fd, exec.handle);
>  
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  }
>  
>  static int __gem_wait(int fd, uint32_t handle, int64_t timeout)
> @@ -475,7 +476,7 @@ static void __test_banned(int fd)
>  		/* Trigger a reset, making sure we are detected as guilty */
>  		ahnd = get_reloc_ahnd(fd, 0);
>  		hang = spin_sync(fd, ahnd, intel_ctx_0(fd), 0);
> -		trigger_reset(fd);
> +		trigger_reset(fd, false);
>  		igt_spin_free(fd, hang);
>  		put_ahnd(ahnd);
>  
> @@ -562,7 +563,7 @@ static void test_wait(int fd, unsigned int flags, unsigned int wait)
>  
>  	igt_require(i915_reset_control(fd, true));
>  
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  	drm_close_driver(fd);
>  }
>  
> @@ -580,7 +581,7 @@ static void test_suspend(int fd, int state)
>  	igt_system_suspend_autoresume(state, SUSPEND_TEST_DEVICES);
>  
>  	igt_require(i915_reset_control(fd, true));
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  	drm_close_driver(fd);
>  }
>  
> @@ -642,7 +643,7 @@ static void test_inflight(int fd, unsigned int wait)
>  		put_ahnd(ahnd);
>  
>  		igt_assert(i915_reset_control(fd, true));
> -		trigger_reset(fd);
> +		trigger_reset(fd, true);
>  
>  		gem_close(fd, obj[1].handle);
>  		drm_close_driver(fd);
> @@ -705,7 +706,7 @@ static void test_inflight_suspend(int fd)
>  	put_ahnd(ahnd);
>  
>  	igt_assert(i915_reset_control(fd, true));
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  	drm_close_driver(fd);
>  }
>  
> @@ -791,7 +792,7 @@ static void test_inflight_contexts(int fd, unsigned int wait)
>  		put_ahnd(ahnd);
>  
>  		igt_assert(i915_reset_control(fd, true));
> -		trigger_reset(fd);
> +		trigger_reset(fd, true);
>  
>  		for (unsigned int n = 0; n < ARRAY_SIZE(ctx); n++)
>  			intel_ctx_destroy(fd, ctx[n]);
> @@ -851,7 +852,7 @@ static void test_inflight_external(int fd)
>  	igt_spin_free(fd, hang);
>  	put_ahnd(ahnd);
>  	igt_assert(i915_reset_control(fd, true));
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  	drm_close_driver(fd);
>  }
>  
> @@ -901,7 +902,7 @@ static void test_inflight_internal(int fd, unsigned int wait)
>  	put_ahnd(ahnd);
>  
>  	igt_assert(i915_reset_control(fd, true));
> -	trigger_reset(fd);
> +	trigger_reset(fd, true);
>  	drm_close_driver(fd);
>  }
>  
> @@ -959,7 +960,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>  
>  		/* Unwedge by forcing a reset. */
>  		igt_assert(i915_reset_control(fd, true));
> -		trigger_reset(fd);
> +		trigger_reset(fd, false);
>  
>  		gem_quiescent_gpu(fd);
>  
> -- 
> 2.51.0
> 
