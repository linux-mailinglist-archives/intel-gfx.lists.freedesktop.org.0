Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B56A564B383
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 11:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073EA10E2FF;
	Tue, 13 Dec 2022 10:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C51610E2FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 10:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670928427; x=1702464427;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=PLigep51TPE+6QzIwu2/xRm27iTRTPLD8q3DAM85ZyQ=;
 b=JijL6XAChsXoh9WPIy9ng6uF9+2euxX2b0+pck3X5cEAQNslwWbPwq95
 iC3jaa0Np65zbHm8lQ/UGeAdu7ZdmqV5RXcRQiduFlWMYanRIS8FO2xaI
 PWT5mcDJJYC0G/aaYg5dGUkPgRh/jB7jkE8zNlDyMVB72a9Ruf4oOBJ+n
 KMbVhUzxsrAGkZN+qhON2eHz94y4YztrANVy2Oed9frrRAKSp5Nmegj3E
 oyF4QDp5ChERad+SAm6+TNlZezZkOZvGyYBotTLYGzUPmpr31eyKFMV+M
 K3zKyYYZ0ckIu5rwemZ//OyXhJwrt21u+k0/I/OMEBeZTQtS1DqxIeG+1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="315738281"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="315738281"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:47:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="790874040"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="790874040"
Received: from amicu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.19.220])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:47:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221213070158.2621403-7-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
 <20221213070158.2621403-7-suraj.kandpal@intel.com>
Date: Tue, 13 Dec 2022 12:47:03 +0200
Message-ID: <87359jy40o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915/mtl: Adding function to
 send command to GSC CS
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

On Tue, 13 Dec 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Adding function that takes care of sending command to gsc cs. We start
> of with allocation of memory for our command intel_hdcp_gsc_message that
> contains gsc cs memory header as directed in specs followed by the
> actual payload hdcp message that we want to send.
> Spec states that we need to poll pending bit of response header around
> 20 times each try being 50ms apart hence adding that to current
> gsc_msg_send function
> Also we use the same function to take care of both sending and receiving
> hence no separate function to get the response.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 207 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  28 +++
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h   |   1 +
>  4 files changed, 237 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index dfa211451a1d..42b8c3430365 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -250,6 +250,7 @@ i915-y +=3D \
>  	display/intel_frontbuffer.o \
>  	display/intel_global_state.o \
>  	display/intel_hdcp.o \
> +	display/intel_hdcp_gsc.o \
>  	display/intel_hotplug.o \
>  	display/intel_hti.o \
>  	display/intel_lpe_audio.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/=
drm/i915/display/intel_hdcp_gsc.c
> new file mode 100644
> index 000000000000..aea3a1158c75
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -0,0 +1,207 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright 2021, Intel Corporation.
> + */
> +
> +#include "i915_drv.h"
> +#include "gt/uc/intel_gsc_fw.h"
> +#include "gt/uc/intel_gsc_fwif.h"
> +#include "gem/i915_gem_region.h"
> +#include "i915_utils.h"
> +#include "display/intel_hdcp_gsc.h"

Please sort.

> +
> +struct intel_hdcp_gsc_message {
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	void *hdcp_cmd;
> +};
> +
> +/*This function helps allocate memory for the command that we will send =
to gsc cs */
> +static int intel_initialize_hdcp_gsc_message(struct drm_i915_private *i9=
15,
> +					     struct intel_hdcp_gsc_message *hdcp_message)
> +{
> +	struct intel_gt *gt =3D i915->media_gt;
> +	struct drm_i915_gem_object *obj =3D NULL;
> +	struct i915_vma *vma =3D NULL;
> +	void *cmd;
> +	int err;
> +
> +	hdcp_message->obj =3D NULL;
> +	hdcp_message->hdcp_cmd =3D NULL;
> +	hdcp_message->vma =3D NULL;
> +
> +	/* allocate object of one page for HDCP command memory and store it */
> +	obj =3D i915_gem_object_create_shmem(gt->i915, PAGE_SIZE);
> +
> +	if (IS_ERR(obj)) {
> +		drm_err(&gt->i915->drm, "Failed to allocate HDCP streaming command!\n"=
);
> +		return PTR_ERR(obj);
> +	}
> +
> +	cmd =3D i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt=
->i915, obj, true));
> +	if (IS_ERR(cmd)) {
> +		drm_err(&gt->i915->drm, "Failed to map gsc message page!\n");
> +		err =3D PTR_ERR(cmd);
> +		goto out_unpin;
> +	}
> +
> +	vma =3D i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err =3D PTR_ERR(vma);
> +		goto out_unmap;
> +	}
> +
> +	err =3D i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
> +	if (err)
> +		goto out_unmap;
> +
> +	memset(cmd, 0, obj->base.size);
> +
> +	hdcp_message->obj =3D obj;
> +	hdcp_message->hdcp_cmd =3D cmd;
> +	hdcp_message->vma =3D vma;
> +
> +	return 0;
> +
> +out_unmap:
> +	i915_gem_object_unpin_map(obj);
> +out_unpin:
> +	i915_gem_object_put(obj);
> +	return err;
> +}
> +
> +static void intel_free_hdcp_gsc_message(struct intel_hdcp_gsc_message *h=
dcp_message)
> +{
> +	struct drm_i915_gem_object *obj =3D fetch_and_zero(&hdcp_message->obj);
> +
> +	if (!obj)
> +		return;
> +
> +	if (hdcp_message->vma)
> +		i915_vma_unpin(fetch_and_zero(&hdcp_message->vma));
> +
> +	i915_gem_object_unpin_map(obj);
> +	i915_gem_object_put(obj);
> +	kfree(hdcp_message);
> +}
> +
> +static int intel_gsc_send_sync(struct drm_i915_private *i915,
> +			       struct intel_gsc_mtl_header *header, u64 addr,
> +			       size_t msg_out_len)
> +{
> +	struct intel_gt *gt =3D i915->media_gt;
> +	int ret;
> +
> +	header->flags =3D 0;
> +	ret =3D intel_gsc_fw_heci_send(&gt->uc.gsc, addr, header->message_size,
> +				     addr, msg_out_len + sizeof(*header));
> +	if (ret) {
> +		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
> +		return ret;
> +	}
> +	/*
> +	 * Checking validity marker for memory sanity
> +	 */
> +	if (header->validity_marker !=3D GSC_HECI_VALIDITY_MARKER) {
> +		drm_err(&i915->drm, "invalid validity marker\n");
> +		return -EINVAL;
> +	}
> +
> +	if (header->status !=3D 0) {
> +		drm_err(&i915->drm, "header status indicates error %d\n",
> +			header->status);
> +		return -EINVAL;
> +	}
> +
> +	if (header->flags & INTEL_GSC_MSG_PENDING)
> +		return -EAGAIN;
> +
> +	return 0;
> +}
> +
> +/*
> + * This function can now be used for sending requests and will also hand=
le
> + * receipt of reply messages hence no different function of message retr=
ieval
> + * is required. We will initialize intel_hdcp_gsc_message structure then=
 add
> + * gsc cs memory header as stated in specs after which the normal HDCP p=
ayload
> + * will follow
> + */
> +ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_i=
n,
> +				size_t msg_in_len, u8 *msg_out, size_t msg_out_len)
> +{
> +	struct intel_gt *gt =3D i915->media_gt;
> +	struct intel_gsc_mtl_header *header;
> +	const size_t max_msg_size =3D PAGE_SIZE - sizeof(*header);
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	u64 addr;
> +	u32 reply_size;
> +	int ret, tries =3D 0;
> +
> +	if (!intel_uc_uses_gsc_uc(&gt->uc))
> +		return -ENODEV;
> +
> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
> +		return -ENOSPC;
> +
> +	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +
> +	if (!hdcp_message)
> +		return -ENOMEM;
> +
> +	ret =3D intel_initialize_hdcp_gsc_message(i915, hdcp_message);
> +
> +	if (ret) {
> +		drm_err(&i915->drm,
> +			"Could not initialize hdcp_message\n");
> +		goto err;
> +	}
> +
> +	header =3D hdcp_message->hdcp_cmd;
> +	addr =3D i915_ggtt_offset(hdcp_message->vma);
> +
> +	memset(header, 0, sizeof(*header));
> +	header->validity_marker =3D GSC_HECI_VALIDITY_MARKER;
> +	header->gsc_address =3D HECI_MEADDRESS_HDCP;
> +	header->host_session_handle =3D 0;
> +	header->header_version =3D MTL_GSC_HEADER_VERSION;
> +	header->message_size =3D msg_in_len + sizeof(*header);
> +
> +	memcpy(hdcp_message->hdcp_cmd + sizeof(*header), msg_in, msg_in_len);
> +
> +	/*
> +	 * Keep sending request in case the pending bit is set no need to add
> +	 * message handle as we are using same address hence loc. of header is
> +	 * same and it will contain the message handle. we will send the message
> +	 * 20 times each message 50 ms apart
> +	 */
> +	do {
> +		ret =3D intel_gsc_send_sync(i915, header, addr, msg_out_len);
> +
> +		/* Only try again if gsc says so */
> +		if (ret !=3D -EAGAIN)
> +			break;
> +
> +		msleep(50);
> +
> +	} while (++tries < 20);
> +
> +	if (ret)
> +		goto err;
> +
> +	/* we use the same mem for the reply, so header is in the same loc */
> +	reply_size =3D header->message_size - sizeof(*header);
> +	if (reply_size > msg_out_len) {
> +		drm_warn(&i915->drm, "caller with insufficient HDCP reply size %u (%d)=
\n",
> +			 reply_size, (u32)msg_out_len);
> +		reply_size =3D msg_out_len;
> +	} else if (reply_size !=3D msg_out_len) {
> +		drm_dbg_kms(&i915->drm, "caller unexpected HCDP reply size %u (%d)\n",
> +			    reply_size, (u32)msg_out_len);
> +	}
> +
> +	memcpy(msg_out, hdcp_message->hdcp_cmd + sizeof(*header), msg_out_len);
> +
> +err:
> +	intel_free_hdcp_gsc_message(hdcp_message);
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/=
drm/i915/display/intel_hdcp_gsc.h
> new file mode 100644
> index 000000000000..9f3e3880fe0a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HDCP_GSC_H__
> +#define __INTEL_HDCP_GSC_H__
> +
> +#include <linux/types.h>
> +#include <linux/err.h>
> +/*
> + * FIXME: Spec states that we need to create a random
> + * host session everytime we send message for now creating
> + * a static host session to avoid clashes not using this
> + * header as of now as we see an error if we use anything
> + * other than 0 as host session
> + */
> +#define GSC_HDCP_HOST_HANDLE	0x12233FFEEDD00000

This is unused.

> +
> +struct drm_i915_private;
> +
> +ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_i=
n,
> +				size_t msg_in_len, u8 *msg_out,
> +				size_t msg_out_len);
> +int intel_gsc_hdcp_init(struct drm_i915_private *i915);
> +int intel_gsc_hdcp_fini(struct drm_i915_private *i915);

The function naming needs to match file name.

intel_hdcp_gsc.[ch] -> intel_hdcp_gsc_xxx().

BR,
Jani.

> +
> +#endif /* __INTEL_HDCP_GCS_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h b/drivers/gpu/dr=
m/i915/gt/uc/intel_gsc_fwif.h
> index 1c2a04d092a8..19b98c75367a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
> @@ -34,6 +34,7 @@ struct intel_gsc_mtl_header {
>  	 * Bits 16-31: Extension Size
>  	 */
>  	u32 flags;
> +#define INTEL_GSC_MSG_PENDING	1
>=20=20
>  	u32 status;
>  } __packed;

--=20
Jani Nikula, Intel Open Source Graphics Center
