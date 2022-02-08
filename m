Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DB54AE17E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 19:51:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D0210E597;
	Tue,  8 Feb 2022 18:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE9110E597
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 18:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644346307; x=1675882307;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Q2mh3eOg4xNTxgD0+mwb382wcBgYuaMQIdn7dMUxwAc=;
 b=gqhYPmJmeMYX1chJ10Lxy6eqJWf77uwWLyXW4+004l1tQkBVdY6hhsyR
 KZBv5EjLn2RMjfEpPj4roUQmVngeR9dRMH756iwKdxiXFP6/R94s6DS23
 r56Ve/E9CWQ0eHUWXC9HAyuRK3iFAjj+12d5p4T2cwZctW9BoJtz7wqfw
 W/rr6E2/7ZwONz2Pf2TwpA1MpRU1ONl7KKT6fvgV9SuHIqEuC4qSq36CZ
 252BZwinAbMqkvG8TSoPO/cYuKNuvvlbfZL/MCxHyuOowIzkG1f+JoBzn
 0kX85PZf/o4Ba5aE8wyX6ASzE5yAOK2DSVL4XLSTwoqHTnATG3lA8wrdz w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="249232313"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="249232313"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 10:51:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="540736470"
Received: from ijbeckin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.19.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 10:51:41 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>, Will Deacon
 <will@kernel.org>, Waiman Long <longman@redhat.com>, Boqun Feng
 <boqun.feng@gmail.com>
In-Reply-To: <20220208184208.79303-6-namhyung@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220208184208.79303-6-namhyung@kernel.org>
Date: Tue, 08 Feb 2022 20:51:38 +0200
Message-ID: <87y22lp4xx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Protect lockdep functions
 with #ifdef
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
Cc: intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Radoslaw Burny <rburny@google.com>,
 Byungchul Park <byungchul.park@lge.com>,
 "Paul E. McKenney" <paul.mckenney@linaro.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 08 Feb 2022, Namhyung Kim <namhyung@kernel.org> wrote:
> With upcoming lock tracepoints config, it'd define some of lockdep
> functions without enabling CONFIG_LOCKDEP actually.  The existing code
> assumes those functions will be removed by the preprocessor but it's
> not the case anymore.  Let's protect the code with #ifdef's explicitly.

I don't understand why you can't keep the no-op stubs for
CONFIG_LOCKDEP=n.

BR,
Jani.

>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Signed-off-by: Namhyung Kim <namhyung@kernel.org>
> ---
>  drivers/gpu/drm/i915/intel_wakeref.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
> index dfd87d082218..6e4b8d036283 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.c
> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
> @@ -106,8 +106,11 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
>  	wf->wakeref = 0;
>  
>  	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
> +
> +#ifdef CONFIG_LOCKDEP
>  	lockdep_init_map(&wf->work.work.lockdep_map,
>  			 "wakeref.work", &key->work, 0);
> +#endif
>  }
>  
>  int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)

-- 
Jani Nikula, Intel Open Source Graphics Center
