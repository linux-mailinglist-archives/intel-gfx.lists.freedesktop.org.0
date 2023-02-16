Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AF9699BF7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 19:12:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DCD10EE61;
	Thu, 16 Feb 2023 18:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CAEB10EE61
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 18:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676571164; x=1708107164;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=p+KT+M7g1ArpaOtDEPdTK5ZW7MvIy1jPHZ9bjY1ouyQ=;
 b=LYzrBJjfZb/ISLpqyUS5E5+VBXViebGkVhrSkPyb99MypHEF9uyca5P4
 nY0F81bcqKeXb6RlzBmWJWTYhYGqhQfAc4U+J9KzCu9S2oU4tYsNeoCq/
 5NWdy2Rcs+yRcm5ORSMpduKBlOvDhO5hp2vs0HOyg77eRhb8EI9SoLkXZ
 KZh2xy8ioZff0WgZKHQPBrZyrjmWjsHxjTmtOC62BXHr849Fxs7xHtb6A
 68ZP0pgA8DgZhMjmeCa/Qri8Bix/uLXZVBewZljcTHImFI3cjS+J94XWz
 LYUMb+owtjqwsGCLs8JSGNXaZy5vkb4ATo9j5qQ34DfO3WqwWkCt7EhDY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="331792758"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="331792758"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 10:10:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="700607227"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="700607227"
Received: from uwah-mobl.ger.corp.intel.com (HELO localhost) ([10.252.63.106])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2023 10:10:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
In-Reply-To: <87r0upmr4i.wl-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
 <20230215005419.2100887-6-umesh.nerlige.ramappa@intel.com>
 <87lekx2895.fsf@intel.com> <87r0upmr4i.wl-ashutosh.dixit@intel.com>
Date: Thu, 16 Feb 2023 20:10:29 +0200
Message-ID: <87fsb5zdka.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/perf: Group engines into
 respective OA groups
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Feb 2023, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> On Thu, 16 Feb 2023 02:51:34 -0800, Jani Nikula wrote:
>>
>> > +static int oa_init_gt(struct intel_gt *gt)
>> > +{
>> > +	u32 num_groups = __num_perf_groups_per_gt(gt);
>> > +	struct intel_engine_cs *engine;
>> > +	struct i915_perf_group *g;
>> > +	intel_engine_mask_t tmp;
>> > +
>> > +	g = kcalloc(num_groups, sizeof(*g), GFP_KERNEL);
>> > +	if (drm_WARN_ON(&gt->i915->drm, !g))
>> > +		return -ENOMEM;
>>
>> No warnings or messages on -ENOMEM is standard policy.
>
> Hmm I think this is the only error for which this code is failing the
> probe. So if we are not going to fail the probe, we should at least allow a
> WARN_ON? Exception proves the rule?

A whole lot of other things are going to go bonkers on -ENOMEM, and
getting that warn isn't going to help anyone...

Maybe we do need to fail probe on this after all, but it just seemed
pointless at the time it was introduced a few patches earlier.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
