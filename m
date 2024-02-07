Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE5884C7AB
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 10:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 482481131A6;
	Wed,  7 Feb 2024 09:40:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KVhZNz4c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8191131A2;
 Wed,  7 Feb 2024 09:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707298843; x=1738834843;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SfiiqIHcCWCo0GcYuFse7BSbvkBtHXG1oyU0x2OZAJA=;
 b=KVhZNz4cZ+ud87UYc+IoN9DbRc+9Ks/07DhXJgayZRJtm90GUxDYTqNP
 3aDu1M4zW+UQolT6RhCxaSHgmq7ddTYzA3IUQ+NwDwhAaA7RXKM97bJ7x
 EiudQqScEtDfng/gO1sIx93iWJzJtq5fi+z5N9YdBSVtxtdrp3uIZ1jTr
 8JBlpfmJazMVdOtJ7HXHCC2Vl6LbMiPG+jI/s09sgbIRPVV6QpqQCv/Vc
 Tk2d3hTnPFvKgEA2Xrj0QOVvE8CZS7NGc54z0FAS4G9Cc8cW/LgXTop5h
 XU6sx5ggIrwwj5lhHfhYGG+clGfgYcjWIdesHL1yuC+TbWS2FMDkrKcuX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="859850"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="859850"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 01:40:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="1563229"
Received: from mtiebout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 01:40:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
In-Reply-To: <c30a93fa-8372-43cc-8151-e660c30d4e36@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240202083737.1088306-1-suraj.kandpal@intel.com>
 <20240202083737.1088306-3-suraj.kandpal@intel.com>
 <c30a93fa-8372-43cc-8151-e660c30d4e36@intel.com>
Date: Wed, 07 Feb 2024 11:40:32 +0200
Message-ID: <87fry4d33j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 05 Feb 2024, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.co=
m> wrote:
> On 2/2/2024 12:37 AM, Suraj Kandpal wrote:
>> Enable HDCP for Xe by defining functions which take care of
>> interaction of HDCP as a client with the GSC CS interface.
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 188 ++++++++++++++++++++++-
>>   1 file changed, 184 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/=
xe/display/xe_hdcp_gsc.c
>> index 0f11a39333e2..eca941d7b281 100644
>> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> @@ -3,8 +3,24 @@
>>    * Copyright 2023, Intel Corporation.
>>    */
>>=20=20=20
>> +#include "abi/gsc_command_header_abi.h"
>
> My original idea was for the users to not include this header and rely=20
> on the size provided by the emit functions. I see you use the check the=20
> input size, which I didn't do on the proxy side because the buffer is=20
> sized to be big enough for all possible commands. Overall not a blocker,=
=20
> just consider the option.
>
>>   #include "i915_drv.h"
>
> Do you actually need i915_drv.h? You shouldn't be using any structure=20
> from i915 here. If you just need it for the pointers to struct=20
> drm_i915_private, just add a forward declaration for the structure.

Xe side it really must be struct xe_device, not drm_i915_private.

See xe Makefile.

BR,
Jani.

>
>>   #include "intel_hdcp_gsc.h"
>> +#include "xe_bo.h"
>> +#include "xe_map.h"
>> +#include "xe_gsc_submit.h"
>> +
>> +#define HECI_MEADDRESS_HDCP 18
>> +
>> +struct intel_hdcp_gsc_message {
>> +	struct xe_bo *hdcp_bo;
>> +	u64 hdcp_cmd_in;
>> +	u64 hdcp_cmd_out;
>> +};
>> +
>> +#define HOST_SESSION_CLIENT_MASK GENMASK_ULL(63, 56)
>> +#define HDCP_GSC_MESSAGE_SIZE sizeof(struct intel_hdcp_gsc_message)
>
> this define is unused. Also, intel_hdcp_gsc_message is not the actual=20
> message, but just contains a pointer to the object that holds the message.
>
>> +#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>>=20=20=20
>>   bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>>   {
>> @@ -13,22 +29,186 @@ bool intel_hdcp_gsc_cs_required(struct drm_i915_pri=
vate *i915)
>>=20=20=20
>>   bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
>>   {
>> -	return false;
>> +	return true;
>
> Shouldn't you actually do a check in here?
>
>> +}
>> +
>> +/*This function helps allocate memory for the command that we will send=
 to gsc cs */
>> +static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i=
915,
>
> Having a drm_i915_private here that is actually an xe_device is really=20
> weird. I understand that the aim is to re-use most of the display code=20
> from i915, but if you need to different back-ends maybe just have the=20
> function accept a void pointer and then internally cast it to=20
> drm_i915_private or xe_device based on the driver, or use struct=20
> intel_display and cast it back to i915 or Xe with a container_of. I'll=20
> leave the final comment on this to someone that has more understanding=20
> than me of what's going on on the display side of things.
>
>> +					     struct intel_hdcp_gsc_message *hdcp_message)
>> +{
>> +	struct xe_bo *bo =3D NULL;
>> +	u64 cmd_in, cmd_out;
>> +	int err, ret =3D 0;
>> +
>> +	/* allocate object of two page for HDCP command memory and store it */
>> +
>> +	xe_device_mem_access_get(i915);
>> +	bo =3D xe_bo_create_pin_map(i915, xe_device_get_root_tile(i915), NULL,=
 PAGE_SIZE * 2,
>> +				  ttm_bo_type_kernel,
>> +				  XE_BO_CREATE_SYSTEM_BIT |
>> +				  XE_BO_CREATE_GGTT_BIT);
>> +
>> +	if (IS_ERR(bo)) {
>> +		drm_err(&i915->drm, "Failed to allocate bo for HDCP streaming command=
!\n");
>> +		ret =3D err;
>> +		goto out;
>> +	}
>> +
>> +	cmd_in =3D xe_bo_ggtt_addr(bo);
>> +
>> +	if (iosys_map_is_null(&bo->vmap)) {
>
> this can't happen, if the bo fails to map then xe_bo_create_pin_map will=
=20
> return an error.
>
>> +		drm_err(&i915->drm, "Failed to map gsc message page!\n");
>> +		ret =3D PTR_ERR(&bo->vmap);
>> +		goto out;
>> +	}
>> +
>> +	cmd_out =3D cmd_in + PAGE_SIZE;
>> +
>> +	xe_map_memset(i915, &bo->vmap, 0, 0, bo->size);
>> +
>> +	hdcp_message->hdcp_bo =3D bo;
>> +	hdcp_message->hdcp_cmd_in =3D cmd_in;
>> +	hdcp_message->hdcp_cmd_out =3D cmd_out;
>> +out:
>> +	xe_device_mem_access_put(i915);
>> +	return ret;
>> +}
>> +
>> +static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
>> +{
>> +	struct intel_hdcp_gsc_message *hdcp_message;
>> +	int ret;
>> +
>> +	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
>> +
>> +	if (!hdcp_message)
>> +		return -ENOMEM;
>> +
>> +	/*
>> +	 * NOTE: No need to lock the comp mutex here as it is already
>> +	 * going to be taken before this function called
>> +	 */
>> +	i915->display.hdcp.hdcp_message =3D hdcp_message;
>> +	ret =3D intel_hdcp_gsc_initialize_message(i915, hdcp_message);
>> +
>> +	if (ret)
>> +		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
>
> Don't you need a kfree in this error path? alternatively you can use=20
> drmm_kzalloc so that it is always automatically freed.
>
>> +
>> +	return ret;
>>   }
>>=20=20=20
>>   int intel_hdcp_gsc_init(struct drm_i915_private *i915)
>>   {
>> -	drm_info(&i915->drm, "HDCP support not yet implemented\n");
>> -	return -ENODEV;
>> +	struct i915_hdcp_arbiter *data;
>> +	int ret;
>> +
>> +	data =3D kzalloc(sizeof(*data), GFP_KERNEL);
>> +	if (!data)
>> +		return -ENOMEM;
>> +
>> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
>> +	i915->display.hdcp.arbiter =3D data;
>> +	i915->display.hdcp.arbiter->hdcp_dev =3D i915->drm.dev;
>> +	i915->display.hdcp.arbiter->ops =3D &gsc_hdcp_ops;
>
> Does this patch compile on its own? As far as I can see gsc_hdcp_ops is=20
> added in the next patch.
>
>> +	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
>> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>> +
>> +	return ret;
>
> Here as well missing the kfree on error
>
>>   }
>>=20=20=20
>>   void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
>>   {
>> +	struct intel_hdcp_gsc_message *hdcp_message =3D
>> +					i915->display.hdcp.hdcp_message;
>> +
>> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
>> +	kfree(hdcp_message);
>> +
>>   }
>>=20=20=20
>> +static int xe_gsc_send_sync(struct drm_i915_private *i915,
>> +			    struct intel_hdcp_gsc_message *hdcp_message,
>> +			    u32 msg_size_in, u32 msg_size_out,
>> +			    u32 addr_in_off, u32 addr_out_off,
>
> Those 2 variables are unused.
>
>> +			    size_t msg_out_len)
>> +{
>> +	struct xe_gt *gt =3D hdcp_message->hdcp_bo->tile->media_gt;
>> +	struct iosys_map *map =3D &hdcp_message->hdcp_bo->vmap;
>> +	struct xe_gsc *gsc =3D &gt->uc.gsc;
>> +	int ret;
>> +
>> +	ret =3D xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in, msg_s=
ize_in,
>> +				       hdcp_message->hdcp_cmd_out, msg_size_out);
>> +	if (ret) {
>> +		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret =3D xe_gsc_check_and_update_pending(i915, map, 0, map, addr_out_of=
f);
>
> This returns a bool, so you can call it directly inside the if statement=
=20
> instead of casting the return to int.
>
>> +
>> +	if (ret)
>> +		return -EAGAIN;
>> +
>> +	ret =3D xe_gsc_read_out_header(i915, map, addr_out_off,
>> +				     sizeof(struct hdcp_cmd_header), NULL);
>
> Note that here you're only checking that the message is at least as big=20
> as struct hdcp_cmd_header, but if there was an error and the only thing=20
> in the message was the header it'll still pass. This links with a=20
> comment below.
>
>> +
>> +	return ret;
>> +}
>>   ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg=
_in,
>>   				size_t msg_in_len, u8 *msg_out,
>>   				size_t msg_out_len)
>>   {
>> -	return -ENODEV;
>> +	const size_t max_msg_size =3D PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
>> +	struct intel_hdcp_gsc_message *hdcp_message;
>> +	u64 host_session_id;
>> +	u32 msg_size_in, msg_size_out, addr_in_off =3D 0, addr_out_off;
>> +	int ret, tries =3D 0;
>> +
>> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
>> +		ret =3D -ENOSPC;
>> +		goto out;
>> +	}
>> +
>> +	msg_size_in =3D msg_in_len + HDCP_GSC_HEADER_SIZE;
>> +	msg_size_out =3D msg_out_len + HDCP_GSC_HEADER_SIZE;
>> +	hdcp_message =3D i915->display.hdcp.hdcp_message;
>> +	addr_out_off =3D PAGE_SIZE;
>> +
>> +	get_random_bytes(&host_session_id, sizeof(u64));
>> +	host_session_id =3D host_session_id & ~HOST_SESSION_CLIENT_MASK;
>
> Can you move this host session code to a dedicated function in=20
> xe_gsc_submit.c? that way we can re-use it for PXP.=C2=A0 You can also dr=
op=20
> the re-definition of HOST_SESSION_CLIENT_MASK because that's already in=20
> that file.
>
>> +	xe_device_mem_access_get(i915);
>> +	addr_in_off =3D xe_gsc_emit_header(i915, &hdcp_message->hdcp_bo->vmap,
>
> Note that this function does not return the input offset, but the next=20
> writable location (that's why I called it wr_offset in other code)
>
>> +					 addr_in_off,
>> +					 HECI_MEADDRESS_HDCP, host_session_id,
>> +					 msg_in_len);
>> +
>> +	xe_map_memcpy_to(i915, &hdcp_message->hdcp_bo->vmap, addr_in_off, msg_=
in, msg_in_len);
>> +	/*
>> +	 * Keep sending request in case the pending bit is set no need to add
>> +	 * message handle as we are using same address hence loc. of header is
>> +	 * same and it will contain the message handle. we will send the messa=
ge
>> +	 * 20 times each message 50 ms apart
>> +	 */
>> +	do {
>> +		ret =3D xe_gsc_send_sync(i915, hdcp_message, msg_size_in, msg_size_ou=
t,
>> +				       addr_in_off, addr_out_off, msg_out_len);
>> +
>> +		/* Only try again if gsc says so */
>> +		if (ret !=3D -EAGAIN)
>> +			break;
>> +
>> +		msleep(50);
>> +
>> +	} while (++tries < 20);
>> +
>> +	if (ret)
>> +		goto out;
>> +
>> +	xe_map_memcpy_from(i915, msg_out, &hdcp_message->hdcp_bo->vmap,
>> +			   addr_out_off + HDCP_GSC_HEADER_SIZE,
>> +			   msg_out_len);
>
> here you are copying msg_out_len, but you haven't checked if the GSC has=
=20
> actually written that much, you only checked that you had struct=20
> hdcp_cmd_header.
>
> Daniele
>
>> +
>> +out:
>> +	xe_device_mem_access_put(i915);
>> +	return ret;
>>   }
>

--=20
Jani Nikula, Intel
