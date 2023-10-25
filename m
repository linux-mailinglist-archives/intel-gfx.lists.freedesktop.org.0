Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 406517D6AD8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DEB10E59A;
	Wed, 25 Oct 2023 12:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167EF10E59A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698235687; x=1729771687;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=evn2sMULPbDhmy7wW8R+xytYxNYPPIZr3HY9je6TDyA=;
 b=iDz7ifWIvaC/DB6ioDi8Fl94U0xm+Gtf1LiFgZcMhGhwLASdqlZiWPcM
 zVhD4bXB+v+RIy1NouPUYt7cq01SyCheCoKYaZhHiAckYchB9pQAepAbJ
 mub10U8hg4P6DqXX/O/Hb2d03huirhfs53mjwmZwOYj12jxKFzsDqUpfW
 txuTL1ldZAfPCRfgI0djOwuqnuExDSeKf292AgbQVK55pt7ZzMVT9x757
 jFVEb/jlJI5sJpA6LQKHAlTcHXW3pVOYBNE6H7QWi0LozKrJNPX4GBgU/
 BQcw6U2rhHEW1XPpC+XHdjZeWtPb1++wS2vZrnAEO/iGa1pYT9RHKuzXG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="387109274"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="387109274"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="6537194"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.83])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:06:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SJ1PR11MB6129C9C7F943148519AD4FF9B9D4A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018102723.16915-1-vinod.govindapillai@intel.com>
 <20231018102723.16915-2-vinod.govindapillai@intel.com>
 <SJ1PR11MB6129C9C7F943148519AD4FF9B9D4A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Wed, 25 Oct 2023 15:08:02 +0300
Message-ID: <87lebq9a71.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/display: debugfs entry to
 list display capabilities
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

On Thu, 19 Oct 2023, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
>> Sent: Wednesday, October 18, 2023 3:57 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sharma, Swati2
>> <swati2.sharma@intel.com>; Borah, Chaitanya Kumar
>> <chaitanya.kumar.borah@intel.com>
>> Subject: [PATCH v4 1/2] drm/i915/display: debugfs entry to list display
>> capabilities
>> 
>> Create a separate debugfs entry to list the display capabilities IGT can rely on
>> this debugfs entry for tests that depend on display device and display runtime
>> info for both xe and i915 drivers.
>> 
>> v2: rename the entry to i915_display_capabilities (Chaitanya)
>> 
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>
> Assuming that it has no other impact in user-space. The change looks LGTM.
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks for the patches and review, pushed the first patch.

Please get the igt change merged before pushing the second patch.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index fbe75d47a165..b0248dfa8dea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -641,6 +641,17 @@ static int i915_display_info(struct seq_file *m, void
>> *unused)
>>  	return 0;
>>  }
>> 
>> +static int i915_display_capabilities(struct seq_file *m, void *unused)
>> +{
>> +	struct drm_i915_private *i915 = node_to_i915(m->private);
>> +	struct drm_printer p = drm_seq_file_printer(m);
>> +
>> +	intel_display_device_info_print(DISPLAY_INFO(i915),
>> +					DISPLAY_RUNTIME_INFO(i915), &p);
>> +
>> +	return 0;
>> +}
>> +
>>  static int i915_shared_dplls_info(struct seq_file *m, void *unused)  {
>>  	struct drm_i915_private *dev_priv = node_to_i915(m->private); @@
>> -1059,6 +1070,7 @@ static const struct drm_info_list
>> intel_display_debugfs_list[] = {
>>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
>>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>>  	{"i915_display_info", i915_display_info, 0},
>> +	{"i915_display_capabilities", i915_display_capabilities, 0},
>>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>>  	{"i915_ddb_info", i915_ddb_info, 0},
>> --
>> 2.34.1
>

-- 
Jani Nikula, Intel
