Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A3415274E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 08:58:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AA3F6F4A6;
	Wed,  5 Feb 2020 07:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10816F4A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 07:58:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 23:58:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="224571249"
Received: from flurie-mobl.ger.corp.intel.com (HELO localhost) ([10.252.52.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 23:58:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <op.0fg226jqxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-2-daniele.ceraolospurio@intel.com>
 <op.0fg226jqxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Date: Wed, 05 Feb 2020 09:58:25 +0200
Message-ID: <87d0atwjmm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/i915/debugfs: Pass guc_log
 struct to i915_guc_log_info
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

On Tue, 04 Feb 2020, "Michal Wajdeczko" <michal.wajdeczko@intel.com> wrote:
> On Tue, 04 Feb 2020 00:28:29 +0100, Daniele Ceraolo Spurio  
> <daniele.ceraolospurio@intel.com> wrote:
>
>> The log struct is the only thing the function needs (apart from
>> the seq_file), so we can pass just that instead of the whole dev_priv.
>>
>> v2: Split this change to its own patch (Michal)
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_debugfs.c | 6 ++----
>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c  
>> b/drivers/gpu/drm/i915/i915_debugfs.c
>> index e75e8212f03b..7264c0ff766c 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -1753,10 +1753,8 @@ stringify_guc_log_type(enum guc_log_buffer_type  
>> type)
>>  	return "";
>>  }
>> -static void i915_guc_log_info(struct seq_file *m,
>> -			      struct drm_i915_private *dev_priv)
>> +static void i915_guc_log_info(struct seq_file *m, struct intel_guc_log  
>> *log)
>
> maybe to avoid polluting i915_debugfs.c we should move this function to
> gt/uc/intel_guc_log.c as universal printer:

On that note, I'm going to split display bits from i915_debugfs.c to a
file of its own under display/ [1]. I think there's enough guc/huc stuff
to warrant moving them to a separate file maybe under gt/uc/.


BR,
Jani.

[1] http://patchwork.freedesktop.org/patch/msgid/20200204151810.8189-1-jani.nikula@intel.com


>
> void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)
>
>>  {
>> -	struct intel_guc_log *log = &dev_priv->gt.uc.guc.log;
>>  	enum guc_log_buffer_type type;
>> 	if (!intel_guc_log_relay_created(log)) {
>> @@ -1784,7 +1782,7 @@ static int i915_guc_info(struct seq_file *m, void  
>> *data)
>>  	if (!USES_GUC(dev_priv))
>>  		return -ENODEV;
>> -	i915_guc_log_info(m, dev_priv);
>> +	i915_guc_log_info(m, &dev_priv->gt.uc.guc.log);
>
> too many dots ... this is "guc" info function, maybe we should have:
>
> 	struct intel_guc *guc = &dev_priv->gt.uc.guc;
> or
> 	struct intel_gt *gt = &dev_priv->gt;
> 	struct intel_uc *uc = &gt->uc;
> 	struct intel_guc *guc = &uc->guc;
>
> as that "guc" is likely to be reused in "more" below
>
>> 	/* Add more as required ... */
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
