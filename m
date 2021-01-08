Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2232EF0B4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 11:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BDA89B51;
	Fri,  8 Jan 2021 10:33:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D2089B51
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 10:33:45 +0000 (UTC)
IronPort-SDR: n5Vs6O0L0YNXXQwxY73ySmtYSyuR7PkkOTOeWYKAPR+Mp8W3ZXOkNmL3FIWcEXaN+3mEFaEIee
 aZAMLUE3Gokw==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="239127829"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="239127829"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 02:33:44 -0800
IronPort-SDR: 2WOrKSV5eFwCGXw4gL+0rGvyw5+hnNIBnxERh+AJC6AubLDWgHTn+X66PQ4hhrpYpqZrC8Y6Hy
 PAc3U6XBsHxg==
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="351639067"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 02:33:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
In-Reply-To: <20201229070456.GG11717@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1608648128.git.jani.nikula@intel.com>
 <a5a60c020b4f9277de1276b2d6010119a5f072ab.1608648128.git.jani.nikula@intel.com>
 <20201229070456.GG11717@intel.com>
Date: Fri, 08 Jan 2021 12:33:40 +0200
Message-ID: <87a6tjzpiz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/pps: rename
 intel_dp_check_edp to intel_pps_check_power_unlocked
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 29 Dec 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> On 2020-12-22 at 20:19:49 +0530, Jani Nikula wrote:
>> Follow the usual naming pattern for functions.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
>>  drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
>>  drivers/gpu/drm/i915/display/intel_pps.h | 2 +-
>>  3 files changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 334ba1775cd3..65406d4ccdbe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1046,7 +1046,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>>  	 */
>>  	cpu_latency_qos_update_request(&i915->pm_qos, 0);
>>  
>> -	intel_dp_check_edp(intel_dp);
>> +	intel_pps_check_power_unlocked(intel_dp);
>>  
>>  	/* Try to wait for any previous AUX channel activity */
>>  	for (try = 0; try < 3; try++) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>> index 3e62d1450682..dfd6722bc40e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -431,7 +431,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
>>  	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
>>  }
>>  
>> -void intel_dp_check_edp(struct intel_dp *intel_dp)
>> +void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> IMHO comment to take pps_lock would be useful here.

Part of the point of this change is to name it _unlocked to highlight it
does not take the lock, i.e. you should be aware of locking. You see
this pattern all over the kernel. It's self-documenting code.

Moreover, after the edp check, the calls here have:

	lockdep_assert_held(&dev_priv->pps_mutex);

which both documents the requirement as well as ensures the proper usage
in lockdep builds. I don't think a comment adds any value.

BR,
Jani.


> Thanks,
> Anshuman.
>>  {
>>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
>> index 4780b59a59df..8dda282abd42 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.h
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
>> @@ -22,7 +22,6 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wake
>>  #define with_intel_pps_lock(dp, wf)						\
>>  	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
>>  
>> -void intel_dp_check_edp(struct intel_dp *intel_dp);
>>  void intel_pps_backlight_on(struct intel_dp *intel_dp);
>>  void intel_pps_backlight_off(struct intel_dp *intel_dp);
>>  void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
>> @@ -31,6 +30,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
>>  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
>>  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
>>  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
>> +void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
>>  
>>  void intel_pps_vdd_on(struct intel_dp *intel_dp);
>>  void intel_pps_on(struct intel_dp *intel_dp);
>> -- 
>> 2.20.1
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
