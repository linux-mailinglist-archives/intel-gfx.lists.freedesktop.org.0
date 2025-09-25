Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088AEB9E1EC
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 10:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9574D10E891;
	Thu, 25 Sep 2025 08:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dqaUNmxw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667D310E891;
 Thu, 25 Sep 2025 08:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758790207; x=1790326207;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CpObzvfzYirzdSd9Xqhwx9SPuibo2cqfz0CTcGWzosc=;
 b=dqaUNmxwnvW+hyH9IDot0kZrGk0ake2eM6XRXmEEEky6JpQdPV1Tje5o
 C88F6VAPfKUMO87gKMXJIfKvoRsyW7wKepAagBPXNDlz3k9Sk49lj6F1B
 0biKrK6xBFu8M1lZf92Ig3RUcMMfvBd5FbNxTUz2lSSkh5rI3gdVkTWMZ
 Zc/5pm3SRNP99hzhtO2B8ZHQk/tqp8R4kPpPyBdJlHPbLBxgJJcuQOk8g
 qZ4hAFvJ+llIWvWNYNqdcVmzUSYFXF9iqTSt7m3mi6l/WvXHoQz4nHMus
 9ZiNUT2Ewshajx4n5+j/3HuB8BOVv5p/bLqHS4SOLM/E72g1Kca5hQ4hp g==;
X-CSE-ConnectionGUID: 2mURsdwlTrenwRM6Eer1QA==
X-CSE-MsgGUID: /xSMBJMYSfaPZD1RTcV5lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="64738619"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="64738619"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 01:50:03 -0700
X-CSE-ConnectionGUID: nfCIR6N5SeWmfnGVTDW4YQ==
X-CSE-MsgGUID: 8nPONowBRZiUU6kJqVN0Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="177672135"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.196])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 01:49:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/gem: add
 i915_gem_fence_wait_priority_display() helper
In-Reply-To: <ikxg4ddkaymzhjckhyvs4y4wf7ozuopmfytjykfhiokjl6fw4m@ujuqzucgajn2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250924085129.146173-1-jani.nikula@intel.com>
 <ikxg4ddkaymzhjckhyvs4y4wf7ozuopmfytjykfhiokjl6fw4m@ujuqzucgajn2>
Date: Thu, 25 Sep 2025 11:49:55 +0300
Message-ID: <1cc6ac258c92dab5f3f84c996c8038b5f6b03600@intel.com>
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

On Wed, 24 Sep 2025, Andi Shyti <andi.shyti@kernel.org> wrote:
> Hi Jani,
>
> On Wed, Sep 24, 2025 at 11:51:29AM +0300, Jani Nikula wrote:
>> Add i915_gem_fence_wait_priority_display() helper to wait with
>> I915_PRIORITY_DISPLAY. This drops the intel_plane.c dependency on
>> i915_scheduler_types.h, and allows us to remove the compat header from
>> xe.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

-- 
Jani Nikula, Intel
