Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B704B4FEB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 13:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802E310E15A;
	Mon, 14 Feb 2022 12:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0688510E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 12:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644841228; x=1676377228;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=U3M7MzF6LldafgdwbUt4v7Jm1Wz6Xd8/6KFBPKZsF+0=;
 b=e4OH22ifeTe/uveASnTevwl/W+OVeIdwA+ZmZ/H5NEkWsx39wDae4c92
 HH3PrOcVZUB5IUbh+HkiotqBrHVflfbmtvflbKfEihlWWtFMUslXO9Voh
 yinORqmW5tcdV5hWjyO9cAteQZOYVtPyeyizQ4EhXszhxK0r0KoAEeHr6
 aJONP5zRV9kB61oQnPGWGf8+svB6mHJiy+fMB7jhdRsGo6kK3fyKgp6cq
 oQHrVOHhMrybOD8kEty0D3s0Q+phCezpCT+ZoXvmDtT8nYvdU1X1HdnRp
 yrpcoWOjIyF0Di5WnrdSpG8oszTKi1dJboXCV/HKnFQWlQzys9U4cVShc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="233625348"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="233625348"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 04:20:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="528137249"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 04:20:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <cf5d9c10-e70e-3904-868c-4398d4a4359c@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1644507885.git.jani.nikula@intel.com>
 <cf5d9c10-e70e-3904-868c-4398d4a4359c@linux.intel.com>
Date: Mon, 14 Feb 2022 14:20:23 +0200
Message-ID: <874k517i7s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 00/14] drm/i915: drm_i915.h cleanup
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

On Thu, 10 Feb 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 10/02/2022 15:45, Jani Nikula wrote:
>> I've sent parts of this before. Another rebase round.
>
> All look good to me.
>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks a bunch, pushed the lot!

> Going forward you can maybe impress the readers even more by including 
> the before/after of your header tree / depth counter script. :)

Then they'll insist on me publishing the hacks I have. :p

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
