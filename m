Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15F0AB97C3
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 10:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E7810E9EA;
	Fri, 16 May 2025 08:32:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AjZGM05i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D80CD10E2B0;
 Fri, 16 May 2025 08:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747384367; x=1778920367;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=fam1aViP1OFzTlNefnQbn3wa7wDnU301c4lK2+77nVw=;
 b=AjZGM05ibE8j8A3P4Lz2cHZrubSNVsWMT/QzKwFUdW0wHB2Of/vi32ue
 St8yOov7wngYXs/2JuaS0jNXDzdYSu/xFGhZZBpI1nBbS6L4qy2G/YQO7
 uCDnqpwRvYwQJ6kACQxj8vMA/bq3cu7EPLuQws9cBGecGOSUGnHt47QnX
 veQYJOpQScR5SEDl4LDGFoobYZ+LNfnzW4z94Tl1ocg7LuA5w9IxppAFm
 FcR0dCb9NUHZcxqfMWT2mZdvgz2kGxahr3o8vl7YTgwIWAKSjB5IObeWf
 XmRsAQDVBz/ATC6IOm7LERSJBx25bK9blOZ93hUDc2L+kQYxjCjkuo/oy A==;
X-CSE-ConnectionGUID: fgXL5WllQA2PfBdw94x0sw==
X-CSE-MsgGUID: v8YmyKqiSYmQ3+Mf5Oskbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="66898409"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="66898409"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:32:35 -0700
X-CSE-ConnectionGUID: nmWB0Lp3SVeJhEw6cZ8Ouw==
X-CSE-MsgGUID: fYkE79UMQauCaO6OK9NIaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="138519802"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 01:32:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/{i915, xe}: convert i915->display and
 xe->display into pointers
In-Reply-To: <174662247594.2473.11365997948191677836@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1746610601.git.jani.nikula@intel.com>
 <174662247594.2473.11365997948191677836@intel.com>
Date: Fri, 16 May 2025 11:32:30 +0300
Message-ID: <87y0uxvtup.fsf@intel.com>
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

On Wed, 07 May 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-05-07 06:38:32-03:00)
>>Another small step towards separating i915 and xe drivers from
>>display. Convert the i915->display and xe->display members into
>>pointers. In the future, we can allocate them dynamically, but one step
>>at a time.
>>
>>BR,
>>Jani.
>>
>>
>>Jani Nikula (4):
>>  drm/xe/rpm: use to_xe_device() instead of container_of
>>  drm/xe/display: do not reference xe->display inline
>>  drm/i915: do not reference i915->display inline
>>  drm/{i915,xe}: convert i915 and xe display members into pointers
>
> Series is
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, merged to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
