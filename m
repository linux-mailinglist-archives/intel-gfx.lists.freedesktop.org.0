Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1002F615FEB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 10:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADB310E44F;
	Wed,  2 Nov 2022 09:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0840310E44F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 09:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667381742; x=1698917742;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yMPbP3tGs5y6bIk+a12eZk6Vid/20d11A7v7MDJ1qgc=;
 b=FCocFguoESabXgadG3o+BZm9+Znv1No1WwmTfWL5EoWpIPNq4jaWBpdP
 JoqNqtYilWLy3WOUTL+MBaY7eiFzBMP8xWIFWiSrEgj302z1hmzVshl/o
 begFc1h/pW0z3jy44SMP8YauCW6RJnJ0ig2e8suuKDtKHGWxomOUgYKl1
 bnQLPIW/bzv/rtpeCoFtDmEkJj90x7mK6PRZU1VTJxNQQr/f2IncTHA3/
 4qzlZI6rPevCQzvUxb1qcnV8Jg+fvJ0fYofwKo43ljPIL3icnlmqSBoFM
 LzWL/pKxomy9AMVQDzDGYEPlRp+euCQ9/VDBFhvQnKPhP+fQFEoMeDCx6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371449144"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371449144"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 02:35:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="667513968"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="667513968"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 02:35:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, Alan Previn
 <alan.previn.teres.alexis@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <e5fd8ac2-3b78-a34c-2ff3-eb38ffafb60d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024184031.613550-1-alan.previn.teres.alexis@intel.com>
 <e5fd8ac2-3b78-a34c-2ff3-eb38ffafb60d@intel.com>
Date: Wed, 02 Nov 2022 11:35:37 +0200
Message-ID: <87sfj17l7a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/pxp: Separate PXP FW interface
 structures for both v42 and 43
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

On Tue, 01 Nov 2022, "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel=
.com> wrote:
> On 10/24/2022 11:40 AM, Alan Previn wrote:
>> Previously, we only used PXP FW interface version-42 structures for
>> PXP arbitration session on ADL/TGL products and version-43 for HuC
>> authentication on DG2. That worked fine despite not differentiating such
>> versioning of the PXP firmware interaction structures. This was okay
>> back then because the only commands used via version 42 was not
>> used via version 43 and vice versa.
>>
>> With MTL, we'll need both these versions side by side for the same
>> commands (PXP-session) with the older platform feature support. That
>> said, let's create separate files to define the structures and definitio=
ns
>> for both version-42 and 43 of PXP FW interfaces.
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>   .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 39 +++++++++++++
>>   .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 45 +++++++++++++++
>>   .../i915/pxp/intel_pxp_cmd_interface_cmn.h    | 27 +++++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 20 +++----
>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 12 ++--
>>   .../drm/i915/pxp/intel_pxp_tee_interface.h    | 57 -------------------
>>   6 files changed, 127 insertions(+), 73 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42=
.h
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43=
.h
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cm=
n.h
>>   delete mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
>>
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h b/dri=
vers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
>> new file mode 100644
>> index 000000000000..501012d3084d
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
>> @@ -0,0 +1,39 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#ifndef __INTEL_PXP_FW_INTERFACE_42_H__
>> +#define __INTEL_PXP_FW_INTERFACE_42_H__
>> +
>> +#include <linux/types.h>
>> +#include "intel_pxp_cmd_interface_cmn.h"
>> +
>> +/* PXP API Version 42 Core Definitions */
>> +#define PXP42_APIVER 0x00040002
>
> Is it worth having a unified macro for this instead of 2 separate=20
> defines for 42 and 43? e.g
>
> #define PXP_APIVER(x, y) (x << 16 | y)
>
> And then use PXP_APIVER(4, 2) or PXP_APIVER(4, 3). Just a suggestion,=20
> not a blocker.
>
>> +
>> +/* PXP-Cmd-Op definitions */
>> +#define PXP42_CMDID_INIT_SESSION 0x1e
>
> This might be better off closer to the matching structure. Not a blocker.
>
>> +
>> +/* PXP-In/Out-Cmd-Header */
>> +struct pxp42_cmd_header {
>> +	struct pxpcmn_cmd_header header;
>> +	u32 status;
>> +	/* Length of the message (excluding the header) */
>> +	u32 buffer_len;
>> +} __packed;
>
> The PXP specs indicate that the header is common between v42 and v43,=20
> with one field being considered a union, so we can just define it as=20
> fully shared in the common file. Something like:

Agreed. Using separate structs is going to lead to trouble with any
shared code.

BR,
Jani.


>
> struct pxp_cmd_header {
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 u32 api_version;
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 u32 command_id;
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 union {
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 u32 status;=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /* out */
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 u32 stream id;=C2=A0 /* in */
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }
>  =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 u32 buffer_len;
> }
>
>
>
>> +
>> +/* PXP-Input-Packet: Create-Arb-Session */
>> +#define PXP42_INIT_SESSION_PROTECTION_ARB 0x2
>
> I was a bit confused by the comment above the define, took me a moment=20
> to understand that the define is not of the command ID matching the=20
> packed, but one of the possible values of one of the fields. Maybe move=20
> it inside the structure and below the matching variable like we usually d=
o?
>
>> +struct pxp42_create_arb_in {
>> +	struct pxp42_cmd_header header;
>> +	u32 protection_mode;
>> +	u32 session_id;
>> +} __packed;
>> +
>> +/* PXP-Output-Packet: Create-Arb-Session */
>> +struct pxp42_create_arb_out {
>> +	struct pxp42_cmd_header header;
>> +} __packed;
>> +
>> +#endif /* __INTEL_PXP_FW_INTERFACE_42_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/dri=
vers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> new file mode 100644
>> index 000000000000..d7d93876bbef
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>> @@ -0,0 +1,45 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright(c) 2022, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#ifndef __INTEL_PXP_FW_INTERFACE_43_H__
>> +#define __INTEL_PXP_FW_INTERFACE_43_H__
>> +
>> +#include <linux/types.h>
>> +#include "intel_pxp_cmd_interface_cmn.h"
>> +
>> +/* PXP API Version 43 Core Definitions */
>> +#define PXP43_APIVER 0x00040003
>> +#define PXP43_MAX_HECI_IN_SIZE (32 * 1024)
>> +#define PXP43_MAX_HECI_OUT_SIZE (32 * 1024)
>
> Those MAX_HECI defines are unused
>
> Daniele
>
>> +
>> +/* PXP-Cmd-Op definitions */
>> +#define PXP43_CMDID_START_HUC_AUTH 0x0000003A
>> +
>> +/* PXP-In/Out-Cmd-Header */
>> +struct pxp43_cmd_header {
>> +	struct pxpcmn_cmd_header header;
>> +	u32 in_out_data;
>> +	/* Length of the message (excluding the header) */
>> +	u32 buffer_len;
>> +} __packed;
>
> This is unused (but anyway superseded by previous comment about the=20
> unified header)
>
>> +
>> +/* PXP-Input-Packet: HUC-Authentication */
>> +struct pxp43_start_huc_auth_in {
>> +	struct pxpcmn_cmd_header header;
>> +	u32 status;
>> +	/* Length of the message (excluding the header) */
>> +	u32 buffer_len;
>> +	__le64                  huc_base_address;
>> +} __packed;
>> +
>> +/* PXP-Output-Packet: HUC-Authentication */
>> +struct pxp43_start_huc_auth_out {
>> +	struct pxpcmn_cmd_header header;
>> +	u32 status;
>> +	/* Length of the message (excluding the header) */
>> +	u32 buffer_len;
>> +} __packed;
>> +
>> +#endif /* __INTEL_PXP_FW_INTERFACE_43_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h b/dr=
ivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
>> new file mode 100644
>> index 000000000000..5c301ddc55e2
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
>> @@ -0,0 +1,27 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright(c) 2022, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#ifndef __INTEL_PXP_FW_INTERFACE_CMN_H__
>> +#define __INTEL_PXP_FW_INTERFACE_CMN_H__
>> +
>> +#include <linux/types.h>
>> +
>> +/*
>> + * there are a lot of status codes for PXP, but we only define the cros=
s-API
>> + * common ones that we actually can handle in the kernel driver. Other =
failure
>> + * codes should be printed to error msg for debug.
>> + */
>> +enum pxp_status {
>> +	PXP_STATUS_SUCCESS =3D 0x0,
>> +	PXP_STATUS_OP_NOT_PERMITTED =3D 0x4013
>> +};
>> +
>> +/* Common PXP FW message header */
>> +struct pxpcmn_cmd_header {
>> +	u32 api_version;
>> +	u32 command_id;
>> +} __packed;
>> +
>> +#endif /* __INTEL_PXP_FW_INTERFACE_CMN_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/=
i915/pxp/intel_pxp_huc.c
>> index 7ec36d94e758..ea8389d54963 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> @@ -13,14 +13,14 @@
>>   #include "intel_pxp_huc.h"
>>   #include "intel_pxp_tee.h"
>>   #include "intel_pxp_types.h"
>> -#include "intel_pxp_tee_interface.h"
>> +#include "intel_pxp_cmd_interface_43.h"
>>=20=20=20
>>   int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
>>   {
>>   	struct intel_gt *gt =3D pxp_to_gt(pxp);
>>   	struct intel_huc *huc =3D &gt->uc.huc;
>> -	struct pxp_tee_start_huc_auth_in huc_in =3D {0};
>> -	struct pxp_tee_start_huc_auth_out huc_out =3D {0};
>> +	struct pxp43_start_huc_auth_in huc_in =3D {0};
>> +	struct pxp43_start_huc_auth_out huc_out =3D {0};
>>   	dma_addr_t huc_phys_addr;
>>   	u8 client_id =3D 0;
>>   	u8 fence_id =3D 0;
>> @@ -32,10 +32,10 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *px=
p)
>>   	huc_phys_addr =3D i915_gem_object_get_dma_address(huc->fw.obj, 0);
>>=20=20=20
>>   	/* write the PXP message into the lmem (the sg list) */
>> -	huc_in.header.api_version =3D PXP_TEE_43_APIVER;
>> -	huc_in.header.command_id  =3D PXP_TEE_43_START_HUC_AUTH;
>> -	huc_in.header.status      =3D 0;
>> -	huc_in.header.buffer_len  =3D sizeof(huc_in.huc_base_address);
>> +	huc_in.header.api_version =3D PXP43_APIVER;
>> +	huc_in.header.command_id  =3D PXP43_CMDID_START_HUC_AUTH;
>> +	huc_in.status             =3D 0;
>> +	huc_in.buffer_len         =3D sizeof(huc_in.huc_base_address);
>>   	huc_in.huc_base_address   =3D huc_phys_addr;
>>=20=20=20
>>   	err =3D intel_pxp_tee_stream_message(pxp, client_id, fence_id,
>> @@ -57,11 +57,11 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *px=
p)
>>   	 * returned with HuC not loaded we'll still catch it when we check the
>>   	 * authentication bit later.
>>   	 */
>> -	if (huc_out.header.status !=3D PXP_STATUS_SUCCESS &&
>> -	    huc_out.header.status !=3D PXP_STATUS_OP_NOT_PERMITTED) {
>> +	if (huc_out.status !=3D PXP_STATUS_SUCCESS &&
>> +	    huc_out.status !=3D PXP_STATUS_OP_NOT_PERMITTED) {
>>   		drm_err(&gt->i915->drm,
>>   			"HuC load failed with GSC error =3D 0x%x\n",
>> -			huc_out.header.status);
>> +			huc_out.status);
>>   		return -EPROTO;
>>   	}
>>=20=20=20
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/=
i915/pxp/intel_pxp_tee.c
>> index 052fd2f9a583..7226becc0a82 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> @@ -14,7 +14,7 @@
>>   #include "intel_pxp.h"
>>   #include "intel_pxp_session.h"
>>   #include "intel_pxp_tee.h"
>> -#include "intel_pxp_tee_interface.h"
>> +#include "intel_pxp_cmd_interface_42.h"
>>   #include "intel_pxp_huc.h"
>>=20=20=20
>>   static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kd=
ev)
>> @@ -286,14 +286,14 @@ int intel_pxp_tee_cmd_create_arb_session(struct in=
tel_pxp *pxp,
>>   					 int arb_session_id)
>>   {
>>   	struct drm_i915_private *i915 =3D pxp_to_gt(pxp)->i915;
>> -	struct pxp_tee_create_arb_in msg_in =3D {0};
>> -	struct pxp_tee_create_arb_out msg_out =3D {0};
>> +	struct pxp42_create_arb_in msg_in =3D {0};
>> +	struct pxp42_create_arb_out msg_out =3D {0};
>>   	int ret;
>>=20=20=20
>> -	msg_in.header.api_version =3D PXP_TEE_APIVER;
>> -	msg_in.header.command_id =3D PXP_TEE_ARB_CMDID;
>> +	msg_in.header.header.api_version =3D PXP42_APIVER;
>> +	msg_in.header.header.command_id =3D PXP42_CMDID_INIT_SESSION;
>>   	msg_in.header.buffer_len =3D sizeof(msg_in) - sizeof(msg_in.header);
>> -	msg_in.protection_mode =3D PXP_TEE_ARB_PROTECTION_MODE;
>> +	msg_in.protection_mode =3D PXP42_INIT_SESSION_PROTECTION_ARB;
>>   	msg_in.session_id =3D arb_session_id;
>>=20=20=20
>>   	ret =3D intel_pxp_tee_io_message(pxp,
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h b/driver=
s/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
>> deleted file mode 100644
>> index 7edc1760f142..000000000000
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
>> +++ /dev/null
>> @@ -1,57 +0,0 @@
>> -/* SPDX-License-Identifier: MIT */
>> -/*
>> - * Copyright(c) 2020-2022, Intel Corporation. All rights reserved.
>> - */
>> -
>> -#ifndef __INTEL_PXP_TEE_INTERFACE_H__
>> -#define __INTEL_PXP_TEE_INTERFACE_H__
>> -
>> -#include <linux/types.h>
>> -
>> -#define PXP_TEE_APIVER 0x40002
>> -#define PXP_TEE_43_APIVER 0x00040003
>> -#define PXP_TEE_ARB_CMDID 0x1e
>> -#define PXP_TEE_ARB_PROTECTION_MODE 0x2
>> -#define PXP_TEE_43_START_HUC_AUTH   0x0000003A
>> -
>> -/*
>> - * there are a lot of status codes for PXP, but we only define the ones=
 we
>> - * actually can handle in the driver. other failure codes will be print=
ed to
>> - * error msg for debug.
>> - */
>> -enum pxp_status {
>> -	PXP_STATUS_SUCCESS =3D 0x0,
>> -	PXP_STATUS_OP_NOT_PERMITTED =3D 0x4013
>> -};
>> -
>> -/* PXP TEE message header */
>> -struct pxp_tee_cmd_header {
>> -	u32 api_version;
>> -	u32 command_id;
>> -	u32 status;
>> -	/* Length of the message (excluding the header) */
>> -	u32 buffer_len;
>> -} __packed;
>> -
>> -/* PXP TEE message input to create a arbitrary session */
>> -struct pxp_tee_create_arb_in {
>> -	struct pxp_tee_cmd_header header;
>> -	u32 protection_mode;
>> -	u32 session_id;
>> -} __packed;
>> -
>> -/* PXP TEE message output to create a arbitrary session */
>> -struct pxp_tee_create_arb_out {
>> -	struct pxp_tee_cmd_header header;
>> -} __packed;
>> -
>> -struct pxp_tee_start_huc_auth_in {
>> -	struct pxp_tee_cmd_header header;
>> -	__le64                    huc_base_address;
>> -};
>> -
>> -struct pxp_tee_start_huc_auth_out {
>> -	struct pxp_tee_cmd_header header;
>> -};
>> -
>> -#endif /* __INTEL_PXP_TEE_INTERFACE_H__ */
>>
>> base-commit: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a
>

--=20
Jani Nikula, Intel Open Source Graphics Center
