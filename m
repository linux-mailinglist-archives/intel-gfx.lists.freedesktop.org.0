Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB93634945
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:29:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F5410E0CB;
	Tue, 22 Nov 2022 21:29:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D7010E0CB
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:29:23 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id j12so14883501plj.5
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 13:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=XYbx+av6DBnORVcQ2ULxfCSTDy21R06QMcTObHYEV34=;
 b=YGgKFSzVDtg4WqE7blC+H6hUzPYoBzvcBGqcO8VWfLHbMTqWNn4bE7btkALc2ygD5T
 D2Xj8asn40IU8QFMvKIiMRt9BNe+DUkTI09kpbDa7g6S4DYFTI1rHz51KuXDTKNuj/Sh
 Njuax5n6GHUJW8GAskJ2gtcmll/eWEZMsPzskTGXNZq1xDdhzPToaaPHs1DMAxoR4CXC
 g4T4/4TWRfjOCE9jGNmZHF8RmxInIK24wUW/svb5XVdP3I4wtMt1v020nT6Bdw3YBKkC
 HS1n2b8c0YyB6P4nGoAjBTrENJqPW49nR/dgfsFdWHaBGUsSvvgdvsl3W2dE202ZTirX
 l7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XYbx+av6DBnORVcQ2ULxfCSTDy21R06QMcTObHYEV34=;
 b=UHznRcGt/KLqsAtZdKFaG6jsPQ+XJlUrgL/8bCNkFiuu7KS19I20l4QU1k3yJrmTeD
 WOKJEi696TLdbGcvpN9LqPUBhggtB01znr78BOKWLmY+oeRZzoadqqmygQ9tMce6bZTN
 m5ifx4+Xwmb2fa5KUZx1qIj3SS2G1YDiw2I3vFLETnsdc4DCjXQ6l/WhOguy+QJDiqFx
 aHF09Oj0pigpfUr+jkY6r+6q09ITSTSKgYmBgbCbwx72BeBMSM5nJp3SDIIVZhEVCwaF
 14OfPjJ5jwBSxEPnFghKWJHPSz1HeNYEQmiddOYA3O8iapb6m1LL5qODSBQYzDMXUfcD
 XK8Q==
X-Gm-Message-State: ANoB5pk8ZrDk8DV2ACgcZwe5/ZtMli61FN8gZrxLhaEIDR+xff+V+3jk
 j8kk9KKCtuKsfwYhA1DI8yE=
X-Google-Smtp-Source: AA0mqf5KzdFRzATj/MphE9mRIT5fns0fCeoG8/eWEzDJc/WpbIxhsTPN2fpHhxYabp11HdHmpTseJw==
X-Received: by 2002:a17:903:2407:b0:17f:3da:f19d with SMTP id
 e7-20020a170903240700b0017f03daf19dmr8588893plo.147.1669152562517; 
 Tue, 22 Nov 2022 13:29:22 -0800 (PST)
Received: from localhost ([2620:10d:c090:400::5:bb3])
 by smtp.gmail.com with ESMTPSA id
 b8-20020aa78ec8000000b005627ddbc7a4sm11086709pfr.191.2022.11.22.13.29.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Nov 2022 13:29:22 -0800 (PST)
Date: Tue, 22 Nov 2022 11:29:20 -1000
From: Tejun Heo <tj@kernel.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y30/MIsLmVAZ7pQi@slm.duckdns.org>
References: <20221109161141.2987173-1-tvrtko.ursulin@linux.intel.com>
 <20221109161141.2987173-12-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221109161141.2987173-12-tvrtko.ursulin@linux.intel.com>
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
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 cgroups@vger.kernel.org, "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 09, 2022 at 04:11:39PM +0000, Tvrtko Ursulin wrote:
> +DRM scheduling soft limits
> +~~~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +Because of the heterogenous hardware and driver DRM capabilities, soft limits
> +are implemented as a loose co-operative (bi-directional) interface between the
> +controller and DRM core.
> +
> +The controller configures the GPU time allowed per group and periodically scans
> +the belonging tasks to detect the over budget condition, at which point it
> +invokes a callback notifying the DRM core of the condition.
> +
> +DRM core provides an API to query per process GPU utilization and 2nd API to
> +receive notification from the cgroup controller when the group enters or exits
> +the over budget condition.
> +
> +Individual DRM drivers which implement the interface are expected to act on this
> +in the best-effort manner only. There are no guarantees that the soft limits
> +will be respected.

Soft limits is a bit of misnomer and can be confused with best-effort limits
such as memory.high. Prolly best to not use the term.

> +static bool
> +__start_scanning(struct drm_cgroup_state *root, unsigned int period_us)
> +{
> +	struct cgroup_subsys_state *node;
> +	bool ok = false;
> +
> +	rcu_read_lock();
> +
> +	css_for_each_descendant_post(node, &root->css) {
> +		struct drm_cgroup_state *drmcs = css_to_drmcs(node);
> +
> +		if (!css_tryget_online(node))
> +			goto out;
> +
> +		drmcs->active_us = 0;
> +		drmcs->sum_children_weights = 0;
> +
> +		if (node == &root->css)
> +			drmcs->per_s_budget_ns =
> +				DIV_ROUND_UP_ULL(NSEC_PER_SEC * period_us,
> +						 USEC_PER_SEC);
> +		else
> +			drmcs->per_s_budget_ns = 0;
> +
> +		css_put(node);
> +	}
> +
> +	css_for_each_descendant_post(node, &root->css) {
> +		struct drm_cgroup_state *drmcs = css_to_drmcs(node);
> +		struct drm_cgroup_state *parent;
> +		u64 active;
> +
> +		if (!css_tryget_online(node))
> +			goto out;
> +		if (!node->parent) {
> +			css_put(node);
> +			continue;
> +		}
> +		if (!css_tryget_online(node->parent)) {
> +			css_put(node);
> +			goto out;
> +		}
> +		parent = css_to_drmcs(node->parent);
> +
> +		active = drmcs_get_active_time_us(drmcs);
> +		if (active > drmcs->prev_active_us)
> +			drmcs->active_us += active - drmcs->prev_active_us;
> +		drmcs->prev_active_us = active;
> +
> +		parent->active_us += drmcs->active_us;
> +		parent->sum_children_weights += drmcs->weight;
> +
> +		css_put(node);
> +		css_put(&parent->css);
> +	}
> +
> +	ok = true;
> +
> +out:
> +	rcu_read_unlock();
> +
> +	return ok;
> +}

A more conventional and scalable way to go about this would be using an
rbtree keyed by virtual time. Both CFS and blk-iocost are examples of this,
but I think for drm, it can be a lot simpler.

Thanks.

-- 
tejun
