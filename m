Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C7CA776C4
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 10:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2EC10E518;
	Tue,  1 Apr 2025 08:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGEceyJo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E1CD10E518
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 08:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743497203; x=1775033203;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PsGkjwijO7QZJn7Tb41UnkWLgAytQqDzIVDErOmndxE=;
 b=DGEceyJoKjoRvROLyIp2SI6/aS1tDqiqr/eKuAarE3yLjtrgnEnp8Cei
 Z6yDLod/1GZxMWofk/WUibYzkkViBvB36HjOaIL23Z5Q0h3wueEOgT0sV
 vvhndxAiFSWug8PG6LysnCdGrDtodVzDDzjKmlYt9/nMf7Euy6/7VGL7S
 QTf3JWZkhrZCEMxwIAgcyUDu0PPTb71lOnmzBkhKfsyqvqt1j1LpbnVqo
 IxdKQ3ET4qAejppdIVUj8NJovFYLG31/AI2GZPkd4L7BTcz0OqHw9g0ZK
 jsu5i/VjJTkcLZDDwpQIdx4oMCmO6x8AqeVQDtbC+pXvd/CWjYT+xE2Nl A==;
X-CSE-ConnectionGUID: cOjPL5uwQ5SI7bwW8s/8AA==
X-CSE-MsgGUID: 4/BWU/qmT2Oxhb6vTSvABw==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="44522764"
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="44522764"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 01:46:43 -0700
X-CSE-ConnectionGUID: ktFo+2eeRGaQq03HgzqcFA==
X-CSE-MsgGUID: 5nS/a4vKTqKtV1fSTywAcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,292,1736841600"; d="scan'208";a="157253689"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 01:46:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Zhenyu Wang <zhenyuw.linux@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, Kees Cook <kees@kernel.org>, Nicolas
 Chauvet <kwizart@gmail.com>, Damian Tometzki <damian@riscv-rocks.de>,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/gvt: fix unterminated-string-initialization
 warning
In-Reply-To: <Z-la1kFHvH4zu_X5@dell-wzy>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250327124739.2609656-1-jani.nikula@intel.com>
 <Z-la1kFHvH4zu_X5@dell-wzy>
Date: Tue, 01 Apr 2025 11:46:37 +0300
Message-ID: <87bjtg46c2.fsf@intel.com>
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

On Sun, 30 Mar 2025, Zhenyu Wang <zhenyuw.linux@gmail.com> wrote:
> On Thu, Mar 27, 2025 at 02:47:39PM +0200, Jani Nikula wrote:
>> Initializing const char opregion_signature[16] = OPREGION_SIGNATURE
>> (which is "IntelGraphicsMem") drops the NUL termination of the
>> string. This is intentional, but the compiler doesn't know this.
>>
>
> Indeed...
>
>> Switch to initializing header->signature directly from the string
>> litaral, with sizeof destination rather than source. We don't treat the
>> signature as a string other than for initialization; it's really just a
>> blob of binary data.
>> 
>> Add a static assert for good measure to cross-check the sizes.
>> 
>> Reported-by: Kees Cook <kees@kernel.org>
>> Closes: https://lore.kernel.org/r/20250310222355.work.417-kees@kernel.org
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13934
>> Tested-by: Nicolas Chauvet <kwizart@gmail.com>
>> Tested-by: Damian Tometzki <damian@riscv-rocks.de>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>>  drivers/gpu/drm/i915/gvt/opregion.c | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
>> index 509f9ccae3a9..dbad4d853d3a 100644
>> --- a/drivers/gpu/drm/i915/gvt/opregion.c
>> +++ b/drivers/gpu/drm/i915/gvt/opregion.c
>> @@ -222,7 +222,6 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
>>  	u8 *buf;
>>  	struct opregion_header *header;
>>  	struct vbt v;
>> -	const char opregion_signature[16] = OPREGION_SIGNATURE;
>>  
>>  	gvt_dbg_core("init vgpu%d opregion\n", vgpu->id);
>>  	vgpu_opregion(vgpu)->va = (void *)__get_free_pages(GFP_KERNEL |
>> @@ -236,8 +235,10 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
>>  	/* emulated opregion with VBT mailbox only */
>>  	buf = (u8 *)vgpu_opregion(vgpu)->va;
>>  	header = (struct opregion_header *)buf;
>> -	memcpy(header->signature, opregion_signature,
>> -	       sizeof(opregion_signature));
>> +
>> +	static_assert(sizeof(header->signature) == sizeof(OPREGION_SIGNATURE) - 1);
>> +	memcpy(header->signature, OPREGION_SIGNATURE, sizeof(header->signature));
>> +
>>  	header->size = 0x8;
>>  	header->opregion_ver = 0x02000000;
>>  	header->mboxes = MBOX_VBT;
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
