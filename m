Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AB3A6D65D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6BE10E23A;
	Mon, 24 Mar 2025 08:38:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5+1N81X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DB710E23A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Mar 2025 08:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742805539; x=1774341539;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BKb98E/4YkHR2oQgdsGBiuo0LrrfUtwZ3tZjFQSWM4c=;
 b=j5+1N81X7Lxivs+NGLgzqIGQzwBJl43oWCjOyyg6Oyv4pqy1A11M9HF2
 tEJTTohe/DO65n7/m7Dub/BJnIUBcsdYgg1eebcl/jHvA9GzeELfqYZeO
 MEwlDRlBeNR7bEenE0pB2OsTlZ44vKDKhn5A+RsRRn2GvVh8/1Wi8cHxH
 Uf2G3uQJCj1TIlZKgHsuf7W2WdXt4pM1PwxtmV00fp3m9q41s1JGl7fli
 evgzS/Saojsskesrx53c0NtC8LzUC7nFDBeZOoHZRmneXP1E2Nn+YGxWS
 fc+2G4gOFJReBT83q/gXliG+6EdYSf8IqUrEiFuxvG0mYyJlu4Qc+6XRA Q==;
X-CSE-ConnectionGUID: Sx3FRPVwRUSewKX8n+vmxA==
X-CSE-MsgGUID: 7OZU4av0Rp6IkqCU07DqSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="46742475"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="46742475"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:38:53 -0700
X-CSE-ConnectionGUID: zWVtAclTSaaAp1T2r002rQ==
X-CSE-MsgGUID: cCfhR4hwQ+OB8f36yMBKTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124934865"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:38:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com
Subject: Re: [PATCH v8] drm/i915/dmc: Create debugfs entry for dc6 counter
In-Reply-To: <c2f69b8f-9d2e-40b4-aec5-27130c06c810@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250321123707.287745-1-mohammed.thasleem@intel.com>
 <c2f69b8f-9d2e-40b4-aec5-27130c06c810@intel.com>
Date: Mon, 24 Mar 2025 10:38:48 +0200
Message-ID: <87sen2bz6v.fsf@intel.com>
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

On Mon, 24 Mar 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 3/21/2025 6:07 PM, Mohammed Thasleem wrote:
>> Starting from MTL we don't have a platform agnostic way to validate
>> DC6 state due to dc6 counter has been removed to validate DC state.
>>
>> The goal is to validate that the display HW can reach the DC6 power
>> state. There is no HW DC6 residency counter (and there wasn't such
>> a counter earlier either), so an alternative way is required. According
>> to the HW team the display driver has programmed everything correctly in
>> order to allow the DC6 power state if the DC5 power state is reached
>> (indicated by the HW DC5 residency counter incrementing) and DC6 is
>> enabled by the driver.
>>
>> Driver could take a snapshot of the DC5 residency counter right
>> after it enables DC6 (dc5_residency_start) and increment the SW
>> DC6 residency counter right before it disables DC6 or when user space
>> reads the DC6 counter. So the driver would update the counter at these
>> two points in the following way:
>> dc6_residency_counter += dc5_current_count - dc5_start_count
>>
>> v2: Update the discription. (Imre)
>>      Read dc5 count during dc6 enable and disable then and update
>>      dc6 residency counter. (Imre)
>>      Remove variable from dmc structure. (Jani)
>>      Updated the subject title.
>> v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
>>      Use flags to check dc6 enable/disable states. (Imre)
>>      Move the display version check and counter read/update to
>>      a helper. (Imre)
>>      Resize the variable length. (Rodrigo)
>>      Use old dc6 debugfs entry for every platform. (Rodrigo)
>> v4: Remove superfluous whitespace. (Jani)
>>      Read DMC registers in intel_dmc.c (Jani)
>>      Rename dc6_en_dis to dc6_enabled and change its type to bool. (Jani)
>>      Rename update_dc6_count and move it to intel_dmc.c (Jani)
>>      Rename dc6_en_dis to start_tracking. (Imre)
>>      Have lock for dc6 state read aswelll. (Imre)
>>      Keep the existing way print 'DC5 -> DC6 count' along with
>>      new 'DC6 Allowed Count' print. (Imre)
>>      Add counters in intel_dmc struct. (Imre)
>>      Have interface to return dc6 allowed count. (Imre)
>>      Rename dc6_count to dc6_allowed_count. (Rodrigo)
>> v5: Rename counters and move in to dc6_allowed structure. (Imre)
>>      Order declaration lines in decreasing line length. (Imre)
>>      Update start_tacking logic. (Imre)
>>      Move get couner inside lock and DISPLAY_VER code to helper. (Imre)
>> v6: Change intel_dmc_get_dc6_allowed_count return type to bool. (Imre)
>>      Update debugfs print to better allien with old print. (Imre)
>>      Remove braces at if/else for signle line statements. (Imre)
>> v7: Remove in line variable declaration. (Imre)
>> v8: Rebase the changes.
>>
>> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
> Thanks for the patch and the reviews, patch is pushed to drm-intel-next

Where are the CI results? We don't push stuff without CI results.

BR,
Jani.

>
>
> Regards,
>
> Ankit
>
>> ---
>>   .../i915/display/intel_display_power_well.c   | 11 +++-
>>   drivers/gpu/drm/i915/display/intel_dmc.c      | 50 ++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
>>   3 files changed, 60 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 751e49b880d6..b9b4359751cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -749,8 +749,9 @@ void gen9_sanitize_dc_state(struct intel_display *display)
>>   void gen9_set_dc_state(struct intel_display *display, u32 state)
>>   {
>>   	struct i915_power_domains *power_domains = &display->power.domains;
>> -	u32 val;
>> +	bool dc6_was_enabled, enable_dc6;
>>   	u32 mask;
>> +	u32 val;
>>   
>>   	if (!HAS_DISPLAY(display))
>>   		return;
>> @@ -769,11 +770,19 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>>   		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>>   			power_domains->dc_state, val & mask);
>>   
>> +	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
>> +	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
>> +	if (!dc6_was_enabled && enable_dc6)
>> +		intel_dmc_update_dc6_allowed_count(display, true);
>> +
>>   	val &= ~mask;
>>   	val |= state;
>>   
>>   	gen9_write_dc_state(display, val);
>>   
>> +	if (!enable_dc6 && dc6_was_enabled)
>> +		intel_dmc_update_dc6_allowed_count(display, false);
>> +
>>   	power_domains->dc_state = val & mask;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index eb6b47ba0870..98f80a6c63e8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -29,6 +29,7 @@
>>   #include "i915_reg.h"
>>   #include "intel_de.h"
>>   #include "intel_display_rpm.h"
>> +#include "intel_display_power_well.h"
>>   #include "intel_dmc.h"
>>   #include "intel_dmc_regs.h"
>>   #include "intel_step.h"
>> @@ -58,6 +59,10 @@ struct intel_dmc {
>>   	const char *fw_path;
>>   	u32 max_fw_size; /* bytes */
>>   	u32 version;
>> +	struct {
>> +		u32 dc5_start;
>> +		u32 count;
>> +	} dc6_allowed;
>>   	struct dmc_fw_info {
>>   		u32 mmio_count;
>>   		i915_reg_t mmioaddr[20];
>> @@ -1233,6 +1238,44 @@ void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct
>>   			   DMC_VERSION_MINOR(snapshot->version));
>>   }
>>   
>> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
>> +					bool start_tracking)
>> +{
>> +	struct intel_dmc *dmc = display_to_dmc(display);
>> +	u32 dc5_cur_count;
>> +
>> +	if (DISPLAY_VER(dmc->display) < 14)
>> +		return;
>> +
>> +	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
>> +
>> +	if (!start_tracking)
>> +		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
>> +
>> +	dmc->dc6_allowed.dc5_start = dc5_cur_count;
>> +}
>> +
>> +static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
>> +{
>> +	struct i915_power_domains *power_domains = &display->power.domains;
>> +	struct intel_dmc *dmc = display_to_dmc(display);
>> +	bool dc6_enabled;
>> +
>> +	if (DISPLAY_VER(display) < 14)
>> +		return false;
>> +
>> +	mutex_lock(&power_domains->lock);
>> +	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
>> +		      DC_STATE_EN_UPTO_DC6;
>> +	if (dc6_enabled)
>> +		intel_dmc_update_dc6_allowed_count(display, false);
>> +
>> +	*count = dmc->dc6_allowed.count;
>> +	mutex_unlock(&power_domains->lock);
>> +
>> +	return true;
>> +}
>> +
>>   static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>   {
>>   	struct intel_display *display = m->private;
>> @@ -1240,6 +1283,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>   	struct intel_dmc *dmc = display_to_dmc(display);
>>   	struct ref_tracker *wakeref;
>>   	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
>> +	u32 dc6_allowed_count;
>>   
>>   	if (!HAS_DMC(display))
>>   		return -ENODEV;
>> @@ -1288,7 +1332,11 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>   	}
>>   
>>   	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
>> -	if (i915_mmio_reg_valid(dc6_reg))
>> +
>> +	if (intel_dmc_get_dc6_allowed_count(display, &dc6_allowed_count))
>> +		seq_printf(m, "DC5 -> DC6 allowed count: %d\n",
>> +			   dc6_allowed_count);
>> +	else if (i915_mmio_reg_valid(dc6_reg))
>>   		seq_printf(m, "DC5 -> DC6 count: %d\n",
>>   			   intel_de_read(display, dc6_reg));
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> index 44cecef98e73..c78426eb4cd5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> @@ -26,6 +26,7 @@ void intel_dmc_debugfs_register(struct intel_display *display);
>>   
>>   struct intel_dmc_snapshot *intel_dmc_snapshot_capture(struct intel_display *display);
>>   void intel_dmc_snapshot_print(const struct intel_dmc_snapshot *snapshot, struct drm_printer *p);
>> +void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool start_tracking);
>>   
>>   void assert_dmc_loaded(struct intel_display *display);
>>   

-- 
Jani Nikula, Intel
