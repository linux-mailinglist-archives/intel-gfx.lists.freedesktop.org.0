Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0715298A0A5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 13:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946FF10E3F0;
	Mon, 30 Sep 2024 11:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jnvv/1NX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DEEE10E3F0;
 Mon, 30 Sep 2024 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727695854; x=1759231854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9v+I7FLTE6iOLaDy9MMpz5M028234OIWxjk845zaj0w=;
 b=jnvv/1NXKa088Jq2Hy+8xouQevi/aBu6f4vP1dAwwYF6CfS8EJfILKdG
 jQjXsDJ63opSZbnGIsMJ9nQMehLTWofcmpzPQAzaOzpkL1EkMHOsXVWUC
 oRhOxVRVnR7VHZroPWTPfMZq+P0lCdZbCAKWxMdZ8bYruX8xlKPX3V6OJ
 7BfjfLDFm7EbhyMStDAstqq98pVT0tJsZ4AGg9SdZP1xmAkU6QRr7Na/1
 O1lcvYth6bnpb9hd1SOYbDsZcCHSEWdyknXQ2xn8seZZp7ZCh0vQGOABc
 d3OG4DRrSR2SoQZXHz8oIXV4UJ9VeIfqYSCiy52twzIFMEwyA09YoJrN5 g==;
X-CSE-ConnectionGUID: N07wvWPvRHeH9Ih6Uh9SRw==
X-CSE-MsgGUID: UdEmlaKGRueIkhqsfHKJSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="30575055"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="30575055"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 04:30:53 -0700
X-CSE-ConnectionGUID: n9qpde4EQ/64D5WmCChKeg==
X-CSE-MsgGUID: 14i014/yTeGAOeLXcZUXRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="74069081"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.102])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 04:30:52 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Peter Senna Tschudin <peter.senna@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] tests: drm_fdinfo: Fix zero tolerance checks
Date: Mon, 30 Sep 2024 13:30:48 +0200
Message-ID: <5818814.DvuYhMxLoT@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <918f0645-c079-49e0-b17a-96dec3a35793@linux.intel.com>
References: <20240916090329.5279-1-janusz.krzysztofik@linux.intel.com>
 <918f0645-c079-49e0-b17a-96dec3a35793@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi Peter,

On Monday, 30 September 2024 12:47:45 GMT+2 Peter Senna Tschudin wrote:
> 
> On 16.09.2024 11:03, Janusz Krzysztofik wrote:
> > When we expect an engine to be busy, we check if its reported busy time
> > falls within a +/-5% tolerance range of measurement time period.
> > However, when we expect the engine to be idle, we compare its reported
> > busy time against zero, still with a +/-5% tolerance range, but now
> > calculated against the zero value, then no tolerance at all.  Obviously,
> > such check fails when the reported busy time is not exactly zero.
> > 
> > Compare engine idle time against measurement time period instead of
> > comparing its busy time against zero when we expect the busy time to be
> > close to zero.  As a debugging aid, display messages with the compared
> > values when requested via --debug option or when a failure occurs.
> > 
> 
> Reviewed-by: Peter Senna Tschudin <peter.senna@linux.intel.com>

Thank you, pushed.

Janusz


> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/drm_fdinfo.c | 51 ++++++++++++++++++++--------------------
> >  1 file changed, 25 insertions(+), 26 deletions(-)
> > 
> > diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
> > index 43216a64e..45d17aaaa 100644
> > --- a/tests/intel/drm_fdinfo.c
> > +++ b/tests/intel/drm_fdinfo.c
> > @@ -107,12 +107,18 @@ static const char *engine_map[] = {
> >  };
> >  
> >  #define __assert_within_epsilon(x, ref, tol_up, tol_down) \
> > -	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
> > -		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
> > -		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
> > -		     #x, #ref, (double)(x), \
> > -		     (tol_up) * 100.0, (tol_down) * 100.0, \
> > -		     (double)(ref))
> > +	do { \
> > +		igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
> > +			     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
> > +			     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
> > +			     #x, #ref, (double)(x), \
> > +			     (tol_up) * 100.0, (tol_down) * 100.0, \
> > +			     (double)(ref)); \
> > +		igt_debug("%f within +%.1f%%/-%.1f%% tolerance of %f\n",\
> > +			  (double)(x), \
> > +			  (tol_up) * 100.0, (tol_down) * 100.0, \
> > +			  (double)(ref)); \
> > +	} while (0)
> >  
> >  #define assert_within_epsilon(x, ref, tolerance) \
> >  	__assert_within_epsilon(x, ref, tolerance, tolerance)
> > @@ -241,10 +247,8 @@ single(int gem_fd, const intel_ctx_t *ctx,
> >  	else
> >  		end_spin(spin_fd, spin, FLAG_SYNC);
> >  
> > -	assert_within_epsilon(val,
> > -			      (flags & TEST_BUSY) && !(flags & TEST_ISOLATION) ?
> > -			      slept : 0.0f,
> > -			      tolerance);
> > +	assert_within_epsilon((flags & TEST_BUSY) && !(flags & TEST_ISOLATION) ? val : slept - val,
> > +			      slept, tolerance);
> >  
> >  	/* Check for idle after hang. */
> >  	if (flags & FLAG_HANG) {
> > @@ -255,7 +259,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
> >  		slept = measured_usleep(batch_duration_ns / 1000);
> >  		val = read_engine_time(gem_fd, e->class) - val;
> >  
> > -		assert_within_epsilon(val, 0, tolerance);
> > +		assert_within_epsilon(slept - val, slept, tolerance);
> >  	}
> >  
> >  	igt_spin_free(spin_fd, spin);
> > @@ -328,11 +332,8 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> >  
> >  	log_busy(num_classes, val);
> >  
> > -	for (i = 0; i < num_classes; i++) {
> > -		double target = i == e->class ? slept : 0.0f;
> > -
> > -		assert_within_epsilon(val[i], target, tolerance);
> > -	}
> > +	for (i = 0; i < num_classes; i++)
> > +		assert_within_epsilon(i == e->class ? val[i] : slept - val[i], slept, tolerance);
> >  
> >  	gem_quiescent_gpu(gem_fd);
> >  }
> > @@ -405,9 +406,9 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> >  	log_busy(num_classes, val);
> >  
> >  	for (i = 0; i < num_classes; i++) {
> > -		double target = slept * busy_class[i];
> > +		double target = slept * busy_class[i] ?: slept;
> >  
> > -		assert_within_epsilon(val[i], target, tolerance);
> > +		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
> >  	}
> >  	gem_quiescent_gpu(gem_fd);
> >  }
> > @@ -460,9 +461,9 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> >  	log_busy(num_classes, val);
> >  
> >  	for (i = 0; i < num_classes; i++) {
> > -		double target = slept * busy_class[i];
> > +		double target = slept * busy_class[i] ?: slept;
> >  
> > -		assert_within_epsilon(val[i], target, tolerance);
> > +		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
> >  	}
> >  	gem_quiescent_gpu(gem_fd);
> >  }
> > @@ -601,10 +602,8 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
> >  			else
> >  				end_spin(i915, spin, FLAG_SYNC);
> >  
> > -			assert_within_epsilon(val,
> > -					      flags & TEST_BUSY ?
> > -					      slept : 0.0f,
> > -					      tolerance);
> > +			assert_within_epsilon(flags & TEST_BUSY ? val : slept - val,
> > +					      slept, tolerance);
> >  
> >  			/* Check for idle after hang. */
> >  			if (flags & FLAG_HANG) {
> > @@ -616,7 +615,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
> >  							1000);
> >  				val = read_engine_time(i915, class) - val;
> >  
> > -				assert_within_epsilon(val, 0, tolerance);
> > +				assert_within_epsilon(slept - val, slept, tolerance);
> >  			}
> >  
> >  			igt_spin_free(i915, spin);
> > @@ -724,7 +723,7 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
> >  						1000);
> >  			val = read_engine_time(i915, class) - val;
> >  
> > -			assert_within_epsilon(val, 0, tolerance);
> > +			assert_within_epsilon(slept - val, slept, tolerance);
> >  		}
> >  
> >  		igt_spin_free(i915, spin);
> 




