Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B2336B28B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 13:53:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B76489C29;
	Mon, 26 Apr 2021 11:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7359389C29
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 11:53:13 +0000 (UTC)
IronPort-SDR: qYYiBRdRF3yiD/cn8azWS1FimwYWsTPv94NQILkrsTaWe4KzttNVDEQqe7bGdkZPHMCeoskz86
 Wh6AiSVL2MDw==
X-IronPort-AV: E=McAfee;i="6200,9189,9965"; a="257624793"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="257624793"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 04:53:09 -0700
IronPort-SDR: pf2QlYxv2+lqHxn3XCORTG58st2cY0jRCmfqo1r1ynYwfQ2AkejMZE8sRPiwORPGH7lxrm1uhh
 OkRiX79Q1maQ==
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="429367526"
Received: from unknown (HELO localhost) ([10.252.50.197])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 04:53:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <39ebb433-1a1b-db1e-b7e6-9d4d7971d18c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210421172804.70877-1-umesh.nerlige.ramappa@intel.com>
 <20210421172804.70877-2-umesh.nerlige.ramappa@intel.com>
 <39ebb433-1a1b-db1e-b7e6-9d4d7971d18c@intel.com>
Date: Mon, 26 Apr 2021 14:53:03 +0300
Message-ID: <87o8e15kkg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] i915/query: Correlate engine and cpu
 timestamps with better accuracy
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 23 Apr 2021, Lionel Landwerlin <lionel.g.landwerlin@intel.com> wrote:
> On 21/04/2021 20:28, Umesh Nerlige Ramappa wrote:
>> +static int
>> +query_cs_cycles(struct drm_i915_private *i915,
>> +		struct drm_i915_query_item *query_item)
>> +{
>> +	struct drm_i915_query_cs_cycles __user *query_ptr;
>> +	struct drm_i915_query_cs_cycles query;
>> +	struct intel_engine_cs *engine;
>> +	__ktime_func_t cpu_clock;
>> +	int ret;
>> +
>> +	if (INTEL_GEN(i915) < 6)
>> +		return -ENODEV;
>> +

[...]

>> +
>> +	if (IS_GEN(i915, 6) &&
>> +	    query.engine.engine_class != I915_ENGINE_CLASS_RENDER)
>> +		return -ENODEV;
>
>
> Thanks a bunch for rebasing this.
>
> My only comment on this patch would be : don't we want 
> IS_GEN_RANGE(i915, 1, 6) instead of IS_GEN(i915, 6) ?

Please see the new deprecation comments in i915_drv.h. We're moving from
GEN to VER. In short, please use the new VER macros for individual
components instead of the generic GEN.

Thanks,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
