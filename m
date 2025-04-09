Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 453ABA81EB4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 09:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A183F10E7F6;
	Wed,  9 Apr 2025 07:54:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="glk7F8zV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F32C10E7F6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 07:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744185296; x=1775721296;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Qsl9YMkdAintvjg8Nfw8l2lVCOIqYcGbw8kUbAC3mlw=;
 b=glk7F8zVQ6HT9DfZoesWjNnck6z7+t2ISynHtFtnd5tpYkv6P9U3OHlz
 iS6lMZRdeP09X3nPYA5stzGVvM4agK//FaBp8NkCQA0qauld/KvoG86ZO
 xD96BI4EIi19RYkYvu0JwmOXj7kST4raPiVvw9WzPaOa+w28REMSakTmK
 n9e0bE1M7Xi1iVA28mrjnnCMQr0xwrUaUmtOiUi/cZFjcc6RlykLnccIz
 /dMSEdj4wZ7CwbpsGUAksmwU2KRXchpErDqpN8b3hKMW8Q5ykQKQs2HCH
 Di4S4wphdQfdHcXGOCBB6qvJ8QH7+IrB2F1VFuzuy81y1V9RGe9HLUcfr A==;
X-CSE-ConnectionGUID: wQkMMjm8QM2gNEz0KQBXRQ==
X-CSE-MsgGUID: QkXvTEhGTSeMJp2gL4ud9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="63044845"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="63044845"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 00:54:56 -0700
X-CSE-ConnectionGUID: GpPwWU+LS/6ScRjxulxzOQ==
X-CSE-MsgGUID: Dc029wgvSwaLmGKDpuUo0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="159497203"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 00:54:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 0/2] drm/i915/dsi: couple of fixing
In-Reply-To: <SJ0PR11MB58940EE32DA88AFBB2D8EE49F1B52@SJ0PR11MB5894.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1743682608.git.jani.nikula@intel.com>
 <SJ0PR11MB58940EE32DA88AFBB2D8EE49F1B52@SJ0PR11MB5894.namprd11.prod.outlook.com>
Date: Wed, 09 Apr 2025 10:54:51 +0300
Message-ID: <8734ehydkk.fsf@intel.com>
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

On Tue, 08 Apr 2025, "Tseng, William" <william.tseng@intel.com> wrote:
> Hi Jani
>
> Both patches look good to me after reviewing and testing the
> two patches with the hardware. The MIPI DSI panel is working
> with the patches. In the test, both clock and data timing have
> no change before and after patch.
>
> Please let me know if you have any questions.

If you think we should merge these, please provide your Reviewed-by and
Tested-by, and I will. :)

BR,
Jani.





>
>
> Regards
> William
>
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, April 3, 2025 8:22 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Tseng, William
>> <william.tseng@intel.com>
>> Subject: [PATCH 0/2] drm/i915/dsi: couple of fixing
>> 
>> When I was reviewing [1] these oddities caught my eye.
>> 
>> BR,
>> Jani.
>> 
>> [1] https://lore.kernel.org/r/20250311100626.533888-1-
>> william.tseng@intel.com
>> 
>> Cc: William Tseng <william.tseng@intel.com>
>> 
>> Jani Nikula (2):
>>   drm/i915/dsi: separate clock and data lane prepare timing
>>   drm/i915/dsi: unify naming and simplify checks for dphy params
>> 
>>  drivers/gpu/drm/i915/display/icl_dsi.c | 90 ++++++++------------------
>>  1 file changed, 26 insertions(+), 64 deletions(-)
>> 
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
