Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2A46FF394
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 16:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6219910E259;
	Thu, 11 May 2023 14:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0896B10E259
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 14:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683814030; x=1715350030;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=m6e/Vt8kCJ/h1FsMSpJliFvu3iHpKu2kPrPhok5JLZU=;
 b=V7i5t5PFexh0Lk/+hS09aCpeftKRmBrcn8jem3Fk5arml6CS4Uhorjhj
 qRaZi7i24t2v2qtx/Qht5A90KnD9I/ih8J7vp6f/AawBXIee8qB1gt0tw
 j76mJv9cDj0zABdkxgKdyRZs62hQQgNY1wQMa3ib7W6zltWFetz/0VsVF
 9yh5eCt4lRDnsPMsqZ0NOpYBoKUH0630uk1EItGhDyoFrBCfqz+jptU+s
 iz3B4H4J9rkOfYZH8aoyIi4NB9T+9oKvfnt6/P0xFJXqnzHOcdACYbqSc
 5ILNnswVAAjWOX1fw7gvgrq1ZSxReOLX9wNbEUjSq+MNVQyoWhSXksCwD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="413857886"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="413857886"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 07:05:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="650196734"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="650196734"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 07:05:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB675091535530A23122E56593E3749@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230511085553.799321-1-jani.nikula@intel.com>
 <SN7PR11MB675091535530A23122E56593E3749@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 11 May 2023 17:05:21 +0300
Message-ID: <87h6sjklpa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: drop display/ prefix from
 include
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 11 May 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, May 11, 2023 2:26 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Teres Alexis, Alan Previn
>> <alan.previn.teres.alexis@intel.com>; Kandpal, Suraj
>> <suraj.kandpal@intel.com>; Shankar, Uma <uma.shankar@intel.com>
>> Subject: [PATCH] drm/i915/hdcp: drop display/ prefix from include
>>
>> The display prefix is unnecessary within the display sub-directory.
>>
>
> LGTM.
>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, pushed to din.

>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> index 7e52aea6aa17..4056bb2323ca 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> @@ -5,11 +5,11 @@
>>
>>  #include <drm/i915_hdcp_interface.h>
>>
>> -#include "display/intel_hdcp_gsc.h"
>>  #include "gem/i915_gem_region.h"
>>  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
>>  #include "i915_drv.h"
>>  #include "i915_utils.h"
>> +#include "intel_hdcp_gsc.h"
>>
>>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)  {
>> --
>> 2.39.2
>

-- 
Jani Nikula, Intel Open Source Graphics Center
