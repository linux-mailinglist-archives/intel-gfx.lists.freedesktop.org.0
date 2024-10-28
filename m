Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573669B33FD
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC06B10E4D4;
	Mon, 28 Oct 2024 14:49:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtWXKWdk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961D810E4D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730126966; x=1761662966;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=poBwEQ4qfo5vGmhV0BdTgGT6DemPfW5FKvTX3/f3UFY=;
 b=CtWXKWdkJNllFWi/4eCBsAXEJy8wQDo2bxZvypNgl/hGJMfpVUdcASbB
 GRj1H/Xfdq9notK1J26JLs8tEVyu6uIkWz2+2o/KsH+Tkd44TCKOvCSd7
 tgzhgNHcHqys2GYMAuC2dxnmJ6AXzD2ZipFCIJxfkuNfqe84Mv+0IdHXU
 Ev3TCcGm7gL3LO3LNQ0SR1FZD5Vd+wZXUg8vlUqLi3QZ7x0EFob6hYbqO
 locIG3n/WwkruXCIhURfoUAc6ZmSZ485Fc3Vw8pd+BPhY4xYuncVNYxJd
 KeirkW8PrJoitkSB6oZUow9Up4wKXAVZWIHAz7KoevlOGlrul7BAfT0oK Q==;
X-CSE-ConnectionGUID: f9UD0jhXTaCtad4qtTCBjQ==
X-CSE-MsgGUID: M0E2QwG2SEe096xU+pQJQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29156093"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29156093"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:49:26 -0700
X-CSE-ConnectionGUID: ZubovXBeTticiIFZO5EU+g==
X-CSE-MsgGUID: 7aZX99OXSrOPHcoctHQRAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="104957830"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:49:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Tejun Heo <tj@kernel.org>,
 stable@vger.kernel.org, Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Schedule the HPD poll init
 work on an unbound workqueue
In-Reply-To: <vgkma7lsnlajc2ttvk3zrfzfqw4uclyjvjq3qlb54pmrcuolvd@7xdf4nzxxdcx>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230901140403.2821777-1-imre.deak@intel.com>
 <vgkma7lsnlajc2ttvk3zrfzfqw4uclyjvjq3qlb54pmrcuolvd@7xdf4nzxxdcx>
Date: Mon, 28 Oct 2024 16:49:21 +0200
Message-ID: <877c9sp9ji.fsf@intel.com>
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

On Mon, 28 Oct 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> +Jani
>
> On Fri, Sep 01, 2023 at 05:04:02PM +0300, Imre Deak wrote:
>>Disabling HPD polling from i915_hpd_poll_init_work() involves probing
>>all display connectors explicitly to account for lost hotplug
>>interrupts. On some platforms (mostly pre-ICL) with HDMI connectors the
>>I2C EDID bit-banging using udelay() triggers in turn the
>>
>> workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
>>
>>warning.
>>
>>Fix the above by scheduling i915_hpd_poll_init_work() on a WQ_UNBOUND
>>workqueue. It's ok to use a system WQ, since i915_hpd_poll_init_work()
>>is properly flushed in intel_hpd_cancel_work().
>>
>>The connector probing from drm_mode_config::output_poll_work resulting
>>in the same warning is fixed by the next patch.
>>
>>Cc: Tejun Heo <tj@kernel.org>
>>Cc: Heiner Kallweit <hkallweit1@gmail.com>
>>CC: stable@vger.kernel.org # 6.5
>>Suggested-by: Tejun Heo <tj@kernel.org>
>>Suggested-by: Heiner Kallweit <hkallweit1@gmail.com>
>>Reported-by: Heiner Kallweit <hkallweit1@gmail.com>
>>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9245
>>Link: https://lore.kernel.org/all/f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com
>>Signed-off-by: Imre Deak <imre.deak@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_hotplug.c | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>index e8562f6f8bb44..accc2fec562a0 100644
>>--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>>+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>@@ -774,7 +774,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
>> 	 * As well, there's no issue if we race here since we always reschedule
>> 	 * this worker anyway
>> 	 */
>>-	queue_work(dev_priv->unordered_wq,
>>+	queue_work(system_unbound_wq,
>> 		   &dev_priv->display.hotplug.poll_init_work);
>> }
>>
>>@@ -803,7 +803,7 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
>> 		return;
>>
>> 	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
>>-	queue_work(dev_priv->unordered_wq,
>>+	queue_work(system_unbound_wq,
>
> This 1y+ patch doesn't apply anymore and now we also have xe to account
> for.  I'm reviving this since we are unifying the kernel config in CI
> and now several machines testing i915 start to hit this warning.
>
> Looking at the current code for xe we have:
>
> 	drivers/gpu/drm/xe/xe_device_types.h:
>
>          /** @unordered_wq: used to serialize unordered work, mostly display */
>          struct workqueue_struct *unordered_wq;
>
>
> ... which is, actually, just display.
>
> Jani, should we move this wq to display where it belongs, with the right
> flags, rather than queueing it on system_unbound_wq?

I think the general answer is:

1. Never use i915 or xe core workqueues in display code.

2. Use system workqueues where appropriate for display, and cancel the
   individual work where needed. While there are legitimate uses for the
   dedicated workqueues, I'm guessing a large portion of their use may
   be cargo-culting and/or the result of system wq flush going away, and
   not based on any real analysis.

3. For display stuff, add the minimal necessary workqueues in display
   code, and use them where appropriate. Also cancel the individual work
   where needed, and flush the entire workqueue only when really
   necessary. The entire workqueue flushing is also cargo-culting and/or
   the result of system wq flush going away.

4. Finally move the display wq init/cleanup to display code.

Now, I don't know what the answer in this particular case, or many of
the other cases, is. And that's probably one of the reasons we have the
status quo. :(


BR,
Jani.


-- 
Jani Nikula, Intel
