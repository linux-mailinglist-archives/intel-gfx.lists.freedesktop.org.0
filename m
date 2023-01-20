Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFF6674F54
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 09:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582F310E066;
	Fri, 20 Jan 2023 08:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EB510E066
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 08:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674202938; x=1705738938;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BNwgf05KL52k7RmVZXktCXvHkUlO40bR4NQn4eacMUI=;
 b=QGd7v6C8msshnkSMzowtD8GFmot0CPuzdBclzmpVBnYsves44qjF9zXH
 vwFfPcZYcSK09yEBYwdwsP8swXZa+R6nOnMenpq3qqR+J3LnTT3ryRbsx
 O0/7qcDySavPSIjyjhIDhtTdL0/qiwMqv3qK7iV2cGJrEH6xsRRHkVDnU
 ZiyPLbF1MwsFEF1Fq1W9EcEJb7VMVgCgW9T7s4rQLuFBi91k+AhsgVhCR
 nvm8XimwpTX2gPE6O/t4fMiZKVCYeVJ7svoFq4tOFa0QSV+mdnwFDG/v/
 yDX/QGDWd4u0f6QD7m2SfvIJtF2gpWLFK3a/3FTS1i6Q3jjKzL7VaclVV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="305899626"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="305899626"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 00:22:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="692794780"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="692794780"
Received: from ajgorman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.233])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 00:22:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <c0200ae2-8e53-c439-0417-7f682c15da0e@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <c0200ae2-8e53-c439-0417-7f682c15da0e@linux.intel.com>
Date: Fri, 20 Jan 2023 10:22:01 +0200
Message-ID: <875yd1aa52.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: add i915_config.h and move
 relevant declarations there
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 Jan 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks for the reviews and acks, pushed to drm-intel-next.

Despite having a lot of gem/gt stuff, I opted to use drm-intel-next
instead of drm-intel-gt-next, because I think the i915_drv.h changes
belong in din, and it's easier to sync din -> dign than vice versa.

BR,
Jani.

>
> It however made me spot the wasteful out of line call to 
> i915_fence_context_timeout, with even u64 used as plain bool, so I might 
> be tempted to do something about that as a follow up.
>
> Regards,
>
> Tvrtko

-- 
Jani Nikula, Intel Open Source Graphics Center
