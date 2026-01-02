Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3318CEE1F9
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 11:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6697510E0EA;
	Fri,  2 Jan 2026 10:05:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6mHXfWI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A74B10E091;
 Fri,  2 Jan 2026 10:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767348355; x=1798884355;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SXM081W1pnu5rQLVC+O66tBMhK7Q/kRhCHlpQITHM/Q=;
 b=b6mHXfWIe0A8l4JM07JTGaq+rS5T8dJJfDcG1SYyxBj2pnv2JD8Vq2YN
 cmOtKpIUI8oM8Lz9R4CnZuG+DtlohM4tS2whNfmJNROZh5r7Uzz7K6PtD
 KADgW9u9j0fcCc5IzH3Xq9etY0NYYiu5QGvaofbpw5vFEPOdDAg8zlqb2
 5rzTknfaI6M8609q8Mg94FA0qU7MmAFfWm1G4UVKQNRsAwSpSsdwx94cq
 fsR8H1tSsbRM3WjmVonnS5KW5xXkeGSvZ4VQMP/YmDZg39PCUIEAzkXix
 SmUBmnMCUM9KeQ2dbWh1z0MUbhVKVrtuf86aERC9WXHDwtpvFUKP0qCuE A==;
X-CSE-ConnectionGUID: fzvjZYNQTraHWOY5fmGs3Q==
X-CSE-MsgGUID: q6jVkkD3TAiEwk6AWbAmpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="68746955"
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="68746955"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 02:05:55 -0800
X-CSE-ConnectionGUID: RwdII9NDQVGBa+opt1mkXg==
X-CSE-MsgGUID: FCaaErsFTkSvWqULfU1JAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="232481340"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 02:05:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: remove accidentally added empty file
In-Reply-To: <06b7096b-f4b6-445c-91f5-8d037a0f6840@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251231103232.627666-1-jani.nikula@intel.com>
 <06b7096b-f4b6-445c-91f5-8d037a0f6840@intel.com>
Date: Fri, 02 Jan 2026 12:05:49 +0200
Message-ID: <0e637a111b4acc9596306a5a95172ccde476c6a3@intel.com>
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

On Fri, 02 Jan 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 12/31/2025 4:02 PM, Jani Nikula wrote:
>> intel_display_limits.c was never supposed to be added. Remove it.
>>
>> Fixes: f3255cf4490e ("drm/i915/display: Add APIs to be used by gvt to get the register offsets")
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks, pushed to din. There's no CI, I think it doesn't know what to do
with just a file removal.

BR,
Jani.



>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_limits.c | 0
>>   1 file changed, 0 insertions(+), 0 deletions(-)
>>   delete mode 100644 drivers/gpu/drm/i915/display/intel_display_limits.c
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.c b/drivers/gpu/drm/i915/display/intel_display_limits.c
>> deleted file mode 100644
>> index e69de29bb2d1..000000000000

-- 
Jani Nikula, Intel
