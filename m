Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 278B46CC6F8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 17:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB8110E05D;
	Tue, 28 Mar 2023 15:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FE610E05D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 15:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680018366; x=1711554366;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kzLy9qZiaL+32oHnU4uVEDWOG4TbAjd/BTeJxtju/IY=;
 b=h9kDo8/YylC5sYHEx1OGUGklp9EhQPVOatp8v8CLdTjDU3lm2dJn4x7A
 GCqpPo2ByZMzCIrNFZUcqygeocq6jjJqz+SNW/tRsLcrCf6MJKqaauh4S
 TRN3EdhfX6oVhIpGRZklSVe6ngmHecvI/B4FiHm1EYUYhADIs81GIxPbZ
 PO0cEpEfzqZ9jgvS1shSFMT6UqKNjJ7Z5traSxX2LAgpC7wQd95HiG/sO
 kKyV+0AFwZ8GE5/b0S+T55Fvq7Wv3C5im8FOh12RZbxHKuGa4PJvVnru7
 UmQpuM92HNxhHdefLURNdtB02Fbrq5aBIa/dfAffTBloFiFzpDy47wQIt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="368366415"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="368366415"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 08:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="748438925"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="748438925"
Received: from mmetzger-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 08:46:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZCGuEPfP3VDcdHou@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230327105330.312131-1-jani.nikula@intel.com>
 <20230327105330.312131-2-jani.nikula@intel.com>
 <ZCGuEPfP3VDcdHou@intel.com>
Date: Tue, 28 Mar 2023 18:46:00 +0300
Message-ID: <87zg7w516v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: remove unused config
 DRM_I915_UNSTABLE
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Mar 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Mar 27, 2023 at 01:53:30PM +0300, Jani Nikula wrote:
>> Essentially this is a revert of commit d9d54a530a70 ("drm/i915: Put
>> future HW and their uAPIs under STAGING & BROKEN").
>> 
>> We currently have no users for this config option. The last one was
>> removed in 8c26491f5853 ("drm/i915: Kill the fake lmem support"). Drop
>> it altogether; it's easy enough to resurrect if need arises.
>> 
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, pushed this one to drm-intel-next, and dropped
the commit being reverted in patch 1/2 from core-for-CI.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/Kconfig          |  6 ------
>>  drivers/gpu/drm/i915/Kconfig.unstable | 21 ---------------------
>>  2 files changed, 27 deletions(-)
>>  delete mode 100644 drivers/gpu/drm/i915/Kconfig.unstable
>> 
>> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
>> index 98f4e44976e0..06a0ca157e89 100644
>> --- a/drivers/gpu/drm/i915/Kconfig
>> +++ b/drivers/gpu/drm/i915/Kconfig
>> @@ -164,11 +164,5 @@ menu "drm/i915 Profile Guided Optimisation"
>>  	source "drivers/gpu/drm/i915/Kconfig.profile"
>>  endmenu
>>  
>> -menu "drm/i915 Unstable Evolution"
>> -	visible if EXPERT && STAGING && BROKEN
>> -	depends on DRM_I915
>> -	source "drivers/gpu/drm/i915/Kconfig.unstable"
>> -endmenu
>> -
>>  config DRM_I915_GVT
>>  	bool
>> diff --git a/drivers/gpu/drm/i915/Kconfig.unstable b/drivers/gpu/drm/i915/Kconfig.unstable
>> deleted file mode 100644
>> index cf151a297ed7..000000000000
>> --- a/drivers/gpu/drm/i915/Kconfig.unstable
>> +++ /dev/null
>> @@ -1,21 +0,0 @@
>> -# SPDX-License-Identifier: GPL-2.0-only
>> -config DRM_I915_UNSTABLE
>> -	bool "Enable unstable API for early prototype development"
>> -	depends on EXPERT
>> -	depends on STAGING
>> -	depends on BROKEN # should never be enabled by distros!
>> -	# We use the dependency on !COMPILE_TEST to not be enabled in
>> -	# allmodconfig or allyesconfig configurations
>> -	depends on !COMPILE_TEST
>> -	default n
>> -	help
>> -	  Enable prototype uAPI under general discussion before they are
>> -	  finalized. Such prototypes may be withdrawn or substantially
>> -	  changed before release. They are only enabled here so that a wide
>> -	  number of interested parties (userspace driver developers) can
>> -	  verify that the uAPI meet their expectations. These uAPI should
>> -	  never be used in production.
>> -
>> -	  Recommended for driver developers _only_.
>> -
>> -	  If in the slightest bit of doubt, say "N".
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
