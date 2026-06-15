Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 08ggC1L4L2plKgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 15:04:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 747EF686820
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 15:04:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BpsNjm7J;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB0110E3FD;
	Mon, 15 Jun 2026 13:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0659410E3F7;
 Mon, 15 Jun 2026 13:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781528654; x=1813064654;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=X9M02/eyd9Ychqu0w2Md/7AGkRGLsUOPGXeoZlvbM/k=;
 b=BpsNjm7JpJlL/xVSFQMs9eBOrHchb2qLgBVfRg3gpVnHBAWY/iobgh9+
 85fA+GBE0qVxH8mlDL1UUC72D383tmjFhOoCEor3Ac50FCCesFIk43Pie
 t6q7YVPYIRrQSh/Dsgjc83VCV381wuqH21bmYLZQliKbuE01ZP0cZyblI
 bGQo8TUsPFoNm2TNdEmx9FdA6AyWFkJEeNMxs+s3KghC02iNXqdzo7TnX
 1jQ6um8GP2YUx+I1dJ47Y9TYif9Rj8b7/dt4q2EXKLf3M3dZmmHDoSCB5
 he5nGmtrnKQxy3S2ewTTQ5x3fSajl2nBveOnW6HlkCVUDdL+3YlrY82tQ w==;
X-CSE-ConnectionGUID: Y/4mxJ47SROollZoSEvKLA==
X-CSE-MsgGUID: xjezHEdNR5udOt8MNr418A==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="99684811"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="99684811"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 06:04:13 -0700
X-CSE-ConnectionGUID: 9RQKsntYRE2aORFn+ysgxg==
X-CSE-MsgGUID: NoY4L+V6SjaS8SuY/YQwmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="243307369"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 06:04:10 -0700
Date: Mon, 15 Jun 2026 15:04:08 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
cc: "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for
 each port
In-Reply-To: <DS4PPFE901A304F84F770ADC3C9DB312343E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
Message-ID: <7589c690-ea42-23f5-06b5-ed90354625e8@intel.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-5-michal.grzelak@intel.com>
 <DS4PPFE901A304FB4F026BD63D97D447834E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F84F770ADC3C9DB312343E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-117037932-1781528651=:605841"
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[lists.freedesktop.org:server fail,intel.com:server fail];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[intel.com:server fail,lists.freedesktop.org:server fail];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RBL_SEM_FAIL(0.00)[131.252.210.177:server fail];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 747EF686820

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-117037932-1781528651=:605841
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 15 Jun 2026, Kandpal, Suraj wrote:
>
>> Subject: RE: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for
>> each port
>>
>>> <suraj.kandpal@intel.com>; Grzelak, Michal <michal.grzelak@intel.com>
>>> Subject: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for
>>> each port
>>>
>>> Every devdata needs a separate intel_ddi_buf_trans since each port can
>>> request an override. Add buffer's pointer into intel_bios_encoder_data.
>>>
>>> Allocate struct intel_ddi_buf_trans for the port if VS/PE-O was
>>> requested and is supported. At the same time, allocate struct
>>> intel_ddi_buf_trans_entry and store it inside struct intel_ddi_buf_trans.
>>>
>>> Deallocate the buffer as well as entries if the request is supported.
>>>
>>> v4->v5
>>> - set devdata->vspeo->num_entries in intel_bios.c
>>>
>>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_bios.c | 32
>>> +++++++++++++++++++++++
>>>  1 file changed, 32 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>>> b/drivers/gpu/drm/i915/display/intel_bios.c
>>> index 70467344f08e..3d8864374cac 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>> @@ -34,6 +34,7 @@
>>>  #include <drm/drm_fixed.h>
>>>  #include <drm/drm_print.h>
>>>
>>> +#include "intel_ddi_buf_trans.h"
>>>  #include "intel_display.h"
>>>  #include "intel_display_core.h"
>>>  #include "intel_display_rpm.h"
>>> @@ -72,6 +73,7 @@
>>>  struct intel_bios_encoder_data {
>>>  	struct intel_display *display;
>>>
>>> +	struct intel_ddi_buf_trans *vspeo;
>>>  	struct child_device_config child;
>>>  	struct dsc_compression_parameters_entry *dsc;
>>>  	struct list_head node;
>>> @@ -2628,6 +2630,30 @@ static void sanitize_device_type(struct
>>> intel_bios_encoder_data *devdata,
>>>  	devdata->child.device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT; }
>>>
>>> +static void allocate_vswing_preemph_override(struct
>>> +intel_bios_encoder_data *devdata) {
>>> +	int num_rows = devdata->display->vbt.vspeo.num_rows;
>>> +	union intel_ddi_buf_trans_entry *entries;
>>> +	struct intel_ddi_buf_trans *vspeo;
>>> +
>>> +	if (!intel_bios_encoder_requests_vspeo(devdata))
>>> +		return;
>>> +
>>> +	vspeo = kzalloc_obj(*vspeo);
>>> +	if (!vspeo)
>>> +		return;
>>> +
>>> +	entries = kzalloc_objs(*entries, num_rows);
>>> +	if (!entries) {
>>> +		kfree(vspeo);
>>> +		return;
>>> +	}
>>
>> So there is a small chance you may end up with NULL pointer dereference in
>> this code.
>>
>> So in the case vspeo or entries allocation fails we free the space and quietly
>> return. But we use
>> intel_bios_encoder_requests_vspeo() to decide if we want to use custom
>> VS/PE Tables, a function who is not aware if all the allocations happened in a
>> error free way.
>> So lets says it did not and now if anyone tries to deference devedata->vspeo
>> they’ll see a bug.
>> Maybe we can have a flag can_use in vspeo struct and fill that as true if all
>> allocations work out & keep it false by default. So along with
>> intel_bios_encoder_requests_vspeo() we also need to check this flag before
>> we decide if We want to go the VSPEO route or not.
>>
>
> Since you create a function validate_vspeo later which does this exact thing I think I am good with this patch.

But I think it's still worth-mentioning in the commit message, so will
include it.

>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks :)

BR,
Michał

>
>> Regards,
>> Suraj Kandpal
>>
>>> +
>>> +	devdata->vspeo = vspeo;
>>> +	devdata->vspeo->entries = entries;
>>> +	devdata->vspeo->num_entries = num_rows; }
>>> +
>>>  static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data
>>> *devdata,
>>>  				      enum port port)
>>>  {
>>> @@ -2846,6 +2872,7 @@ static void parse_ddi_port(struct
>>> intel_bios_encoder_data *devdata)
>>>  	sanitize_dedicated_external(devdata, port);
>>>  	sanitize_device_type(devdata, port);
>>>  	sanitize_hdmi_level_shift(devdata, port);
>>> +	allocate_vswing_preemph_override(devdata);
>>>  }
>>>
>>>  static bool has_ddi_port_info(struct intel_display *display) @@
>>> -3383,6
>>> +3410,11 @@ void intel_bios_driver_remove(struct intel_display
>>> +*display)
>>>  	list_for_each_entry_safe(devdata, nd, &display->vbt.display_devices,
>>>  				 node) {
>>>  		list_del(&devdata->node);
>>> +
>>> +		if (devdata->vspeo)
>>> +			kfree(devdata->vspeo->entries);
>>> +
>>> +		kfree(devdata->vspeo);
>>>  		kfree(devdata->dsc);
>>>  		kfree(devdata);
>>>  	}
>>> --
>>> 2.45.2
>
>
--8323329-117037932-1781528651=:605841--
