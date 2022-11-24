Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D55637B7C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 15:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2273A10E0E4;
	Thu, 24 Nov 2022 14:32:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C895610E0E4
 for <Intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 14:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669300351; x=1700836351;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qsOe7kr5bqAeEs2k/WY123wWj03USp72QHcrBt6ZUWY=;
 b=YdWcf41fq39Ivhh7dLTW1aIq1dwOroSpPnFVu93vZTPkOyC7K7G4s4gK
 Dx4VDW1LgW7tN/7Vf8FKZyGvJ59kCf0f078XBW1QNWzwgVpk2hEpMKk07
 rgMQH9e5PkQd+v6xn0pob1hpncibFwQATmaZmJ6Xt8iaeaZ0Z5g7qByQQ
 iZAgc4Ec3nr2AJqlM6MT7w+gZ96t8yjIIhxOlHBQsK2nG1jySxN6hlX9C
 xnPwJ0ayNdCoi5Yo65pyaot1S3/byRetZwC/erQYDsWY32Uu08UO4NmJB
 XtmHY+3sRfu7KVO5IsrQyY7a5n0HQkDh2x/disLFz+I6wJF7xhZLShbRc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="400604952"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="400604952"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 06:32:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="644511115"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="644511115"
Received: from smurr10x-mobl1.amr.corp.intel.com (HELO [10.213.209.98])
 ([10.213.209.98])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 06:32:27 -0800
Message-ID: <30f42096-3f42-594e-8ff1-c09341925518@linux.intel.com>
Date: Thu, 24 Nov 2022 14:32:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Tejun Heo <tj@kernel.org>
References: <20221109161141.2987173-1-tvrtko.ursulin@linux.intel.com>
 <20221109161141.2987173-12-tvrtko.ursulin@linux.intel.com>
 <Y30/MIsLmVAZ7pQi@slm.duckdns.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y30/MIsLmVAZ7pQi@slm.duckdns.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 11/13] cgroup/drm: Introduce weight based drm
 cgroup control
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 Johannes Weiner <hannes@cmpxchg.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 cgroups@vger.kernel.org, "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/11/2022 21:29, Tejun Heo wrote:
> On Wed, Nov 09, 2022 at 04:11:39PM +0000, Tvrtko Ursulin wrote:
>> +DRM scheduling soft limits
>> +~~~~~~~~~~~~~~~~~~~~~~~~~~
>> +
>> +Because of the heterogenous hardware and driver DRM capabilities, soft limits
>> +are implemented as a loose co-operative (bi-directional) interface between the
>> +controller and DRM core.
>> +
>> +The controller configures the GPU time allowed per group and periodically scans
>> +the belonging tasks to detect the over budget condition, at which point it
>> +invokes a callback notifying the DRM core of the condition.
>> +
>> +DRM core provides an API to query per process GPU utilization and 2nd API to
>> +receive notification from the cgroup controller when the group enters or exits
>> +the over budget condition.
>> +
>> +Individual DRM drivers which implement the interface are expected to act on this
>> +in the best-effort manner only. There are no guarantees that the soft limits
>> +will be respected.
> 
> Soft limits is a bit of misnomer and can be confused with best-effort limits
> such as memory.high. Prolly best to not use the term.

Are you suggesting "best effort limits" or "best effort <something>"? It 
would sounds good to me if we found the right <something>. Best effort 
budget perhaps?

>> +static bool
>> +__start_scanning(struct drm_cgroup_state *root, unsigned int period_us)
>> +{
>> +	struct cgroup_subsys_state *node;
>> +	bool ok = false;
>> +
>> +	rcu_read_lock();
>> +
>> +	css_for_each_descendant_post(node, &root->css) {
>> +		struct drm_cgroup_state *drmcs = css_to_drmcs(node);
>> +
>> +		if (!css_tryget_online(node))
>> +			goto out;
>> +
>> +		drmcs->active_us = 0;
>> +		drmcs->sum_children_weights = 0;
>> +
>> +		if (node == &root->css)
>> +			drmcs->per_s_budget_ns =
>> +				DIV_ROUND_UP_ULL(NSEC_PER_SEC * period_us,
>> +						 USEC_PER_SEC);
>> +		else
>> +			drmcs->per_s_budget_ns = 0;
>> +
>> +		css_put(node);
>> +	}
>> +
>> +	css_for_each_descendant_post(node, &root->css) {
>> +		struct drm_cgroup_state *drmcs = css_to_drmcs(node);
>> +		struct drm_cgroup_state *parent;
>> +		u64 active;
>> +
>> +		if (!css_tryget_online(node))
>> +			goto out;
>> +		if (!node->parent) {
>> +			css_put(node);
>> +			continue;
>> +		}
>> +		if (!css_tryget_online(node->parent)) {
>> +			css_put(node);
>> +			goto out;
>> +		}
>> +		parent = css_to_drmcs(node->parent);
>> +
>> +		active = drmcs_get_active_time_us(drmcs);
>> +		if (active > drmcs->prev_active_us)
>> +			drmcs->active_us += active - drmcs->prev_active_us;
>> +		drmcs->prev_active_us = active;
>> +
>> +		parent->active_us += drmcs->active_us;
>> +		parent->sum_children_weights += drmcs->weight;
>> +
>> +		css_put(node);
>> +		css_put(&parent->css);
>> +	}
>> +
>> +	ok = true;
>> +
>> +out:
>> +	rcu_read_unlock();
>> +
>> +	return ok;
>> +}
> 
> A more conventional and scalable way to go about this would be using an
> rbtree keyed by virtual time. Both CFS and blk-iocost are examples of this,
> but I think for drm, it can be a lot simpler.

It's well impressive you were able to figure out what I am doing there. 
:) And probably you can see that this is the first time I am attempting 
an algorithm like this one. I think I made it /dtrt/ with a few post/pre 
walks so the right pieces of data propagate correctly.

Are you suggesting a parallel/shadow tree to be kept in the drm 
controller (which would shadow the cgroup hierarchy)? Or something else? 
The mention of rbtree is not telling me much, but I will look into the 
referenced examples. (Although I will refrain from major rework until 
more people start "biting" into all this.)

Also, when you mention scalability you are concerned about multiple tree 
walks I have per iteration? I wasn't so much worried about that, 
definitely not for the RFC, but even in general due relatively low 
frequency of scanning and a good amount of less trivial cost being 
outside the actual tree walks (drm client walks, GPU utilisation 
calculations, maybe more). But perhaps I don't have the right idea on 
how big cgroups hierarchies can be compared to number of drm clients etc.

Regards,

Tvrtko
