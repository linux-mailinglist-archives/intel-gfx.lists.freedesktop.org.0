Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9071315775F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 13:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52B76E979;
	Mon, 10 Feb 2020 12:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64DF6E979
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 12:59:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 04:59:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="226140727"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 04:59:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87r1z2aera.fsf@gaia.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200204135217.21974-1-jani.nikula@intel.com>
 <87r1z2aera.fsf@gaia.fi.intel.com>
Date: Mon, 10 Feb 2020 14:59:47 +0200
Message-ID: <87d0am1tto.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: pass i915 to
 psr_global_enabled()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 10 Feb 2020, Mika Kuoppala <mika.kuoppala@linux.intel.com> wrote:
> Jani Nikula <jani.nikula@intel.com> writes:
>
>> Make future work slightly easier.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Pushed to dinq, thanks for the review.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index db3d1561e9bf..e86e9dc1fe06 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -61,9 +61,9 @@
>>   * must be correctly synchronized/cancelled when shutting down the pipe."
>>   */
>>  
>> -static bool psr_global_enabled(u32 debug)
>> +static bool psr_global_enabled(struct drm_i915_private *i915)
>>  {
>> -	switch (debug & I915_PSR_DEBUG_MODE_MASK) {
>> +	switch (i915->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
>>  	case I915_PSR_DEBUG_DEFAULT:
>>  		return i915_modparams.enable_psr;
>>  	case I915_PSR_DEBUG_DISABLE:
>> @@ -930,7 +930,7 @@ void intel_psr_enable(struct intel_dp *intel_dp,
>>  
>>  	mutex_lock(&dev_priv->psr.lock);
>>  
>> -	if (!psr_global_enabled(dev_priv->psr.debug)) {
>> +	if (!psr_global_enabled(dev_priv)) {
>>  		drm_dbg_kms(&dev_priv->drm, "PSR disabled by flag\n");
>>  		goto unlock;
>>  	}
>> @@ -1085,7 +1085,7 @@ void intel_psr_update(struct intel_dp *intel_dp,
>>  
>>  	mutex_lock(&dev_priv->psr.lock);
>>  
>> -	enable = crtc_state->has_psr && psr_global_enabled(psr->debug);
>> +	enable = crtc_state->has_psr && psr_global_enabled(dev_priv);
>>  	psr2_enable = intel_psr2_enabled(dev_priv, crtc_state);
>>  
>>  	if (enable == psr->enabled && psr2_enable == psr->psr2_enabled) {
>> -- 
>> 2.20.1
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
