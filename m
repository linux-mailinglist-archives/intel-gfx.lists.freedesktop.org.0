Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E0682BC90
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 09:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E194710E1AF;
	Fri, 12 Jan 2024 08:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0888810E1AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 08:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705049927; x=1736585927;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Uugxulao6OUnOBVaIqxdX8FxmyhGbXjg1RRvDFWxVaw=;
 b=Z+13TUeFWEv8GZX5mX6pEzF+rsPuZqCzkzcpnDvo50RmphdXfMS3JAwS
 Rzt5grLwp11+3imWw//Bcl9WBfModW2vX6QaN3zdalVGcml2OKZULXam8
 w/xfizkEUcg8H4/Gk0hM6VBzFw18bowxXLRv1FMoWUVA7wt5ea3sp9k7G
 P4/g376X3P84V0qdA1jI3Uc4YtrRQlw05EKevC52jOPp2AbyHIJK/IECc
 kLP1W+Ar748CWBBWmr4G76TDwdjwTBnzFNTeOS5m9lCVSEnSQ7u0yRhPW
 M+jB33NkWUNg6+FgHhD2LrHhPblV948Bv0FTsW5sY9I6Jsz4GxOh8EQd1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="20588575"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="20588575"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 00:58:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="1029859006"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="1029859006"
Received: from kklimes-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.38.5])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 00:58:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 2/2] drm/xe: Modify the cfb size to be page size
 aligned for FBC
In-Reply-To: <87edenszea.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240110110009.28799-1-vinod.govindapillai@intel.com>
 <20240110110009.28799-3-vinod.govindapillai@intel.com>
 <87edenszea.fsf@intel.com>
Date: Fri, 12 Jan 2024 10:58:39 +0200
Message-ID: <87bk9rszb4.fsf@intel.com>
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Jan 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 10 Jan 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
>> drm_gem_private_object_init expect the object size be page size
>> aligned. The xe_bo create functions do not update the size for
>> any alignment requirements. So align cfb size to be page size
>> aligned in xe stolen memory handling.
>
> Please send this to the intel-xe mailing list.

Oh, and by "this" I mean this one patch. Patch 1 is mostly
non-functional cleanup.

>
> BR,
> Jani.
>
>
>>
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> ---
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
>> index 888e7a87a925..bd233007c1b7 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
>> @@ -19,6 +19,9 @@ static inline int i915_gem_stolen_insert_node_in_range(struct xe_device *xe,
>>  	int err;
>>  	u32 flags = XE_BO_CREATE_PINNED_BIT | XE_BO_CREATE_STOLEN_BIT;
>>  
>> +	if (align)
>> +		size = ALIGN(size, align);
>> +
>>  	bo = xe_bo_create_locked_range(xe, xe_device_get_root_tile(xe),
>>  				       NULL, size, start, end,
>>  				       ttm_bo_type_kernel, flags);

-- 
Jani Nikula, Intel
