Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2C1A854DD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 09:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CB410E230;
	Fri, 11 Apr 2025 07:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hhiLY4KA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E4310E230;
 Fri, 11 Apr 2025 07:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744354850; x=1775890850;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=7ejzPXWz07hFJwiBrRQwdVwF2imwDBNBOp7Tk+s5Dsc=;
 b=hhiLY4KApCYWAd3IMWMgwz1UYULRsU5uxvWI21ro6/JDzQOlfcYpPgsC
 czCxE3yizXnn1vpy8+SbxH++rVsQlCoBTrZOlfHTUpS9RbLWjYwFuLzlQ
 o3PgJeFwuYs6eCEsWIZNQHhyqRPSp4zH1ebQy8ifaIt1D1x3kwvqqm9Vw
 +hQpHHrwwC7FkijgyHGLgCirLMqEERH8hQ52irz0xB3HNNom3n1LdRluF
 aQZIQWn3HwhJR2EWRNT8LudCdOzXoUQBVJpReaq40YhzJq6diHP71Nh2g
 N0RVHxZIYdkB9/bwyity/c4OplVtNp7f9NdtoYSwv9kpGkQ+WPpJ1Y/Zx A==;
X-CSE-ConnectionGUID: ZcbGGSdgRkepLWXIWLqCng==
X-CSE-MsgGUID: mXLldLBYTWCkfzsC2q7dDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="57271526"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="57271526"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:00:49 -0700
X-CSE-ConnectionGUID: o+trTijQTCerZmzU2ZCPWA==
X-CSE-MsgGUID: 6rAfQMdYSHqnvuHDd/FrVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="128887578"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.67])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 00:00:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/debugfs: move PCH type to display caps
In-Reply-To: <SN7PR11MB6750754539172AEC6845950EE3B62@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1744295009.git.jani.nikula@intel.com>
 <a864b7a577ea7a3bd2435e9734e023593edbfd5a.1744295009.git.jani.nikula@intel.com>
 <SN7PR11MB6750754539172AEC6845950EE3B62@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Fri, 11 Apr 2025 10:00:42 +0300
Message-ID: <878qo7uqqt.fsf@intel.com>
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

On Fri, 11 Apr 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, April 10, 2025 7:54 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH 2/2] drm/i915/debugfs: move PCH type to display caps
>> 
>> Arguably PCH is more relevant to display. Move the information to display caps
>> debugfs.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review, both pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 +++
>>  drivers/gpu/drm/i915/i915_debugfs.c                  | 2 --
>>  2 files changed, 3 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index d43ae6729f21..4c208fdb9137 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -53,8 +53,11 @@ static struct intel_display *node_to_intel_display(struct
>> drm_info_node *node)  static int intel_display_caps(struct seq_file *m, void
>> *data)  {
>>  	struct intel_display *display = node_to_intel_display(m->private);
>> +	struct drm_i915_private *i915 = to_i915(display->drm);
>>  	struct drm_printer p = drm_seq_file_printer(m);
>> 
>> +	drm_printf(&p, "PCH type: %d\n", INTEL_PCH_TYPE(i915));
>> +
>>  	intel_display_device_info_print(DISPLAY_INFO(display),
>>  					DISPLAY_RUNTIME_INFO(display), &p);
>>  	intel_display_params_dump(&display->params, display->drm->driver-
>> >name, &p); diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
>> b/drivers/gpu/drm/i915/i915_debugfs.c
>> index 0d9e263913ff..967c0501e91e 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -66,8 +66,6 @@ static int i915_capabilities(struct seq_file *m, void *data)
>>  	struct drm_i915_private *i915 = node_to_i915(m->private);
>>  	struct drm_printer p = drm_seq_file_printer(m);
>> 
>> -	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>> -
>>  	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
>>  	i915_print_iommu_status(i915, &p);
>>  	intel_gt_info_print(&to_gt(i915)->info, &p);
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
