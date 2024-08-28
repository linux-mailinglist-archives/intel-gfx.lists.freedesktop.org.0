Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937B8962B63
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 17:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28ECE10E577;
	Wed, 28 Aug 2024 15:10:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ai+Q/70P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE2E610E576;
 Wed, 28 Aug 2024 15:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724857858; x=1756393858;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+OwYc8bK2ZE/BbrISfqwEqzDsEWaDGtTsTjHjxyCVHw=;
 b=Ai+Q/70PEP46daLsLChGJ80Z0I9fAyd++NWXesPJ6fZ6XCH30a3iU5ip
 tfDRrhFJBRFJX5QVQVR5rmcvkfDnXYQ7sK11WInnxDdZRINUonlUBalv0
 LqMHH9+fdycnpDHA1a/yp8ixzvfJ6T9JC+vF/2nRy2+LUpYB7j1tz3g2g
 E+Xl0eTShxifzEfe7nDbLQtWhbofhcH2XvCy3fFPMD6uHLma3galbqCGO
 Dyc7uU2d3bsD0eddydT1m+16tACi6ZJ2Jp+tViTfJjJDiGxz+6AtzE8Fc
 uOwcNol0X9mR18LmYNbB2fc/XtXkrWVken/w+s3I7SZUAnQCVeg9H6nJW g==;
X-CSE-ConnectionGUID: 5IMRYiTHSkKcGidUgJKnTQ==
X-CSE-MsgGUID: G8aGE9lhR7uIQqhMw8EbRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="27162727"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="27162727"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 08:10:56 -0700
X-CSE-ConnectionGUID: TSUn6mMoQcuff7YyyZsGFQ==
X-CSE-MsgGUID: fixwIkM3TNeTfOiKMuSkcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="67613148"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 08:10:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Hamza Mahfooz <hamza.mahfooz@amd.com>, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [RESEND 3/3] drm/amd/display: switch to guid_gen() to generate
 valid GUIDs
In-Reply-To: <87mskwyc6p.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240812122312.1567046-1-jani.nikula@intel.com>
 <20240812122312.1567046-3-jani.nikula@intel.com>
 <dac8f408-6f13-4ee7-a54c-342d51ba88d1@amd.com> <87mskwyc6p.fsf@intel.com>
Date: Wed, 28 Aug 2024 18:10:49 +0300
Message-ID: <87h6b4y96u.fsf@intel.com>
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

On Wed, 28 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 28 Aug 2024, Hamza Mahfooz <hamza.mahfooz@amd.com> wrote:
>> On 8/12/24 08:23, Jani Nikula wrote:
>>> Instead of just smashing jiffies into a GUID, use guid_gen() to generate
>>> RFC 4122 compliant GUIDs.
>>> 
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> 
>>> ---
>>
>> Acked-by: Hamza Mahfooz <hamza.mahfooz@amd.com>
>>
>> I would prefer to take this series through the amdgpu tree though,
>> assuming nobody minds.
>
> How long is it going to take for that to get synced back to
> drm-misc-next though?

Also getting acks from Alex and Harry to merge via drm-misc-next.

BR,
Jani.


>
> BR,
> Jani.
>
>
>>
>>> 
>>> Side note, it baffles me why amdgpu has a copy of this instead of
>>> plumbing it into drm mst code.
>>> ---
>>>   .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 23 ++++++++++---------
>>>   1 file changed, 12 insertions(+), 11 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>>> index 72c10fc2c890..ce05e7e2a383 100644
>>> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>>> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
>>> @@ -2568,9 +2568,9 @@ static int dm_late_init(void *handle)
>>>   
>>>   static void resume_mst_branch_status(struct drm_dp_mst_topology_mgr *mgr)
>>>   {
>>> +	u8 buf[UUID_SIZE];
>>> +	guid_t guid;
>>>   	int ret;
>>> -	u8 guid[16];
>>> -	u64 tmp64;
>>>   
>>>   	mutex_lock(&mgr->lock);
>>>   	if (!mgr->mst_primary)
>>> @@ -2591,26 +2591,27 @@ static void resume_mst_branch_status(struct drm_dp_mst_topology_mgr *mgr)
>>>   	}
>>>   
>>>   	/* Some hubs forget their guids after they resume */
>>> -	ret = drm_dp_dpcd_read(mgr->aux, DP_GUID, guid, 16);
>>> -	if (ret != 16) {
>>> +	ret = drm_dp_dpcd_read(mgr->aux, DP_GUID, buf, sizeof(buf));
>>> +	if (ret != sizeof(buf)) {
>>>   		drm_dbg_kms(mgr->dev, "dpcd read failed - undocked during suspend?\n");
>>>   		goto out_fail;
>>>   	}
>>>   
>>> -	if (memchr_inv(guid, 0, 16) == NULL) {
>>> -		tmp64 = get_jiffies_64();
>>> -		memcpy(&guid[0], &tmp64, sizeof(u64));
>>> -		memcpy(&guid[8], &tmp64, sizeof(u64));
>>> +	import_guid(&guid, buf);
>>>   
>>> -		ret = drm_dp_dpcd_write(mgr->aux, DP_GUID, guid, 16);
>>> +	if (guid_is_null(&guid)) {
>>> +		guid_gen(&guid);
>>> +		export_guid(buf, &guid);
>>>   
>>> -		if (ret != 16) {
>>> +		ret = drm_dp_dpcd_write(mgr->aux, DP_GUID, buf, sizeof(buf));
>>> +
>>> +		if (ret != sizeof(buf)) {
>>>   			drm_dbg_kms(mgr->dev, "check mstb guid failed - undocked during suspend?\n");
>>>   			goto out_fail;
>>>   		}
>>>   	}
>>>   
>>> -	import_guid(&mgr->mst_primary->guid, guid);
>>> +	guid_copy(&mgr->mst_primary->guid, &guid);
>>>   
>>>   out_fail:
>>>   	mutex_unlock(&mgr->lock);

-- 
Jani Nikula, Intel
