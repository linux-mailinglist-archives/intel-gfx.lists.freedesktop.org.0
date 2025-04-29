Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1F5AA08B1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 12:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A7010E432;
	Tue, 29 Apr 2025 10:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5JrTaR/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A7010E305;
 Tue, 29 Apr 2025 10:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745922935; x=1777458935;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=8/tdSwXQRgUbCPRghOn8c0dbMrmMt6zd1gpqE+YaqKc=;
 b=j5JrTaR/koiySNvx0TkYPmyFC4umtCZa5nJ4RHRNSsDGfqqrNERZVsjc
 KnKROkttXh1lTxubndniFYLuq0yS2jHCzHPq4c3nG0l8CFAlxYsKYxe91
 0pCxFSxKn9i8Q5ihIxBu4AhKYAt3+Nvi8DNUjfdR3RTjFC/CZpqDEV+6K
 SGnsFPY2cruJ+P/m53Uch0J3wQYCRvWojSB1hix8sH4ZziKVntwGTxQy6
 H7y43fH7pxtn8gr0jWLOhaJhZk0oedP41D2RcVyYMhhvRt8EP67ccHKjx
 pztZwzI17SFO6fGFQBICgXUGJbKfkcDqvuncZlhviN+0/EztjpyZ6p/tc w==;
X-CSE-ConnectionGUID: YKcGDc7PSbOy2bzjyyQfXg==
X-CSE-MsgGUID: C7TWCo8WTQ6iQ09UQSufvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58190462"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="58190462"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 03:35:35 -0700
X-CSE-ConnectionGUID: eyzLMlOlS8ir2iUgIKoZMA==
X-CSE-MsgGUID: BuLzMCZlR0yGJcSSqMSM3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="133683677"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.9])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 03:35:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/2] drm/i915: Use intel_connector for DP and HDMI
In-Reply-To: <20250428134716.3396802-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250428134716.3396802-1-imre.deak@intel.com>
Date: Tue, 29 Apr 2025 13:35:29 +0300
Message-ID: <87cycvw8zy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 28 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> This patchset - resent now separetely from patchset [1], adding the same
> patches originally - converts intel_dp.c and intel_hdmi.c to prefer
> using an intel_connector vs. drm_connector pointer.
>
> Cc: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> [1] https://lore.kernel.org/all/20250408214342.1953197-1-imre.deak@intel.com
>
> Imre Deak (2):
>   drm/i915/dp: Use an intel_connector pointer everywhere
>   drm/i915/hdmi: Use an intel_connector pointer everywhere
>
>  drivers/gpu/drm/i915/display/intel_dp.c   | 105 ++++++------
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 189 ++++++++++++----------
>  2 files changed, 159 insertions(+), 135 deletions(-)

-- 
Jani Nikula, Intel
