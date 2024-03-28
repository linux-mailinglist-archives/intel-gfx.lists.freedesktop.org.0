Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C6A88FD56
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F8210F10D;
	Thu, 28 Mar 2024 10:46:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqxzbPPj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3814110E53D;
 Thu, 28 Mar 2024 10:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711622807; x=1743158807;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6y7kQCHPSn/ytHJreLVPJDGNY/mFAL5kJwlXVofXPbs=;
 b=GqxzbPPj7nfRZVwi5wfTyx2V9VzYwNMESjNOV5iiaDZe8sJ5Ojb8b3mn
 IKMWvpB4/8zuZyAU/yivBiY++g4LyoXy50r1zn83XBBtjawvR61B7Hds3
 i2+C5KfDN7dSVUzCgaSk8Fp3/Hc+4UkxKRkRLWLZctsOJE65JWTuxmnOR
 vtBlLQ3/wKM6n2VSADPmOgy+Ay/Z4rnPLz7OSvPNQ7W6XnRAuVeuqqIjV
 8vFx9xOwMtWbqBXnTPlCSenMzHgSv9nnPL01tLnI+BpOUPM+gApGLUeOf
 4P04FvZq2w2Mf0DANUwQGsB126EWlxH49ts8euAjuPIWhz+IETFAjmDEK Q==;
X-CSE-ConnectionGUID: P2G2fgDCRgKTlYo4YxqU6A==
X-CSE-MsgGUID: /1/aG/N6RB6AsCu88CqnqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6628933"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6628933"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:46:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21333164"
Received: from abdulqaf-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.138])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:46:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/i915: use fine grained -Woverride-init disable
In-Reply-To: <b9138bc4-61e4-476a-9aa5-8842235bce2e@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240328102455.944131-1-jani.nikula@intel.com>
 <b9138bc4-61e4-476a-9aa5-8842235bce2e@app.fastmail.com>
Date: Thu, 28 Mar 2024 12:46:42 +0200
Message-ID: <87o7ayfxbh.fsf@intel.com>
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

On Thu, 28 Mar 2024, "Arnd Bergmann" <arnd@arndb.de> wrote:
> On Thu, Mar 28, 2024, at 11:24, Jani Nikula wrote:
>> Use localized __diag_push(), __diag_ignore_all() with rationale, and
>> __diag_pop() for specific initializations instead of blanket disabling
>> of -Woverride-init across several files.
>>
>> Note that we've tried this before with commit 88e9664434c9 ("drm/i915:
>> use localized __diag_ignore_all() instead of per file") and reverted in
>> commit 290d16104575 ("Revert "drm/i915: use localized
>> __diag_ignore_all() instead of per file""). The issue turned out to be
>> in __diag_ignore_all() and it was fixed by commit 689b097a06ba
>> ("compiler-gcc: Suppress -Wmissing-prototypes warning for all supported
>> GCC"). So we should be able to pull this off now.
>>
>> Cc: "Arnd Bergmann" <arnd@arndb.de>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Looks good to me,
>
> Acked-by: Arnd Bergmann <arnd@arndb.de>

Thanks! I'll take this via drm-intel-next for v6.10. Up to you what to
do with your patch [1], either drop the i915 and xe changes, or we can
handle the trivial conflict too if keeping the changes helps you
somehow.

BR,
Jani.


[1] https://lore.kernel.org/all/20240326144741.3094687-2-arnd@kernel.org/

-- 
Jani Nikula, Intel
