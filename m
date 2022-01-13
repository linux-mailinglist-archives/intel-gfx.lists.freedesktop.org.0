Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC848E074
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 23:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28A310E1EB;
	Thu, 13 Jan 2022 22:39:41 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729BE10E1EB;
 Thu, 13 Jan 2022 22:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642113580; x=1673649580;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=igyE43tyF4BoXiX/bL/YGRSJkKRKD/xftHB78Nem8bg=;
 b=aaX3jRx9iJAl5QZnCpUtjZRSQUX6gj810PvCMAcykcylxpQcZNrwMPLe
 yyrfMVS7zgBCO932eIO6EGoPJVVA74v3YES4CwmtDMLhSpPLhWWVHY2rm
 6LYGFHvJgtdhDN7uLYvihPfPGvxYUUEi8VYGlN9iw26qdhD7YrGvTf/CR
 qA3MDyHmnhMe/PBZ/HXCV/vejxfpD25c0EE6Gi6EBe6A6sVmUWKPoxJSN
 ZL+oG/6hNJiGzEX5hnVBrf+OLNTFbvyN2zD7YA+Eb6bPwIqkpfTuMk2Ih
 ZjkGfJyfvHe/7so02XRmkJ0wJDR+Z+6s0qb6g/tVkd3CaroYuP/j7kB37 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="330475747"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="330475747"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 14:39:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="559273132"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 14:39:39 -0800
Date: Thu, 13 Jan 2022 14:33:49 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113223349.GA17845@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-14-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-14-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 13/15] lib/i915: Add
 helper for non-destructive engine property updates
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 11:59:45AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Various tests want to configure engine properties such as pre-emption
> timeout and heartbeat interval. Some don't bother to restore the
> original values again afterwards. So, add a helper to make it easier
> to do this.
> 
> v2: Fix for platforms with no pre-emption capability.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  lib/i915/gem_engine_topology.c | 46 ++++++++++++++++++++++++++++++++++
>  lib/i915/gem_engine_topology.h |  9 +++++++
>  2 files changed, 55 insertions(+)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 729f42b0a..bd12d0bc9 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -488,6 +488,52 @@ int gem_engine_property_printf(int i915, const char *engine, const char *attr,
>  	return ret;
>  }
>  
> +/* Ensure fast hang detection */
> +void gem_engine_properties_configure(int fd, struct gem_engine_properties *params)
> +{
> +	int ret;
> +	struct gem_engine_properties write = *params;
> +
> +	ret = gem_engine_property_scanf(fd, write.engine->name,
> +					"heartbeat_interval_ms",
> +					"%d", &params->heartbeat_interval);
> +	igt_assert_eq(ret, 1);
> +
> +	ret = gem_engine_property_printf(fd, write.engine->name,
> +					 "heartbeat_interval_ms", "%d",
> +					 write.heartbeat_interval);
> +	igt_assert_lt(0, ret);
> +
> +	if (gem_scheduler_has_preemption(fd)) {
> +		ret = gem_engine_property_scanf(fd, write.engine->name,
> +						"preempt_timeout_ms",
> +						"%d", &params->preempt_timeout);
> +		igt_assert_eq(ret, 1);
> +
> +		ret = gem_engine_property_printf(fd, write.engine->name,
> +						 "preempt_timeout_ms", "%d",
> +						 write.preempt_timeout);
> +		igt_assert_lt(0, ret);
> +	}
> +}
> +
> +void gem_engine_properties_restore(int fd, const struct gem_engine_properties *saved)
> +{
> +	int ret;
> +
> +	ret = gem_engine_property_printf(fd, saved->engine->name,
> +					 "heartbeat_interval_ms", "%d",
> +					 saved->heartbeat_interval);
> +	igt_assert_lt(0, ret);
> +
> +	if (gem_scheduler_has_preemption(fd)) {
> +		ret = gem_engine_property_printf(fd, saved->engine->name,
> +						 "preempt_timeout_ms", "%d",
> +						 saved->preempt_timeout);
> +		igt_assert_lt(0, ret);
> +	}
> +}
> +
>  uint32_t gem_engine_mmio_base(int i915, const char *engine)
>  {
>  	unsigned int mmio = 0;
> diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
> index 4cfab560b..b413aa8ab 100644
> --- a/lib/i915/gem_engine_topology.h
> +++ b/lib/i915/gem_engine_topology.h
> @@ -115,6 +115,15 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
>  	     ((e__) = intel_get_current_physical_engine(&i__##e__)); \
>  	     intel_next_engine(&i__##e__))
>  
> +struct gem_engine_properties {
> +	const struct intel_execution_engine2 *engine;
> +	int preempt_timeout;
> +	int heartbeat_interval;
> +};
> +
> +void gem_engine_properties_configure(int fd, struct gem_engine_properties *params);
> +void gem_engine_properties_restore(int fd, const struct gem_engine_properties *saved);
> +
>  __attribute__((format(scanf, 4, 5)))
>  int gem_engine_property_scanf(int i915, const char *engine, const char *attr,
>  			      const char *fmt, ...);
> -- 
> 2.25.1
> 
