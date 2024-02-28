Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A98386A82C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 07:02:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8828B10E2C2;
	Wed, 28 Feb 2024 06:02:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwdlTm1i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17CD710E2C2;
 Wed, 28 Feb 2024 06:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709100133; x=1740636133;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2aCxUGbp9h9iBe/qoeEgFEHy+AAP2i6LQ14AiR19mG4=;
 b=DwdlTm1i8FHSqACb+gN2aci6B3CSK0ojNM0guPJg33i3TazXPiUSG8vL
 f6cd6kTXta5mr0+wRd+k2rD1gtALIc9FJMLVtaxDTy8IcSF1Lk6z543E0
 RNiVG10S2B3MsMDXKtgftUJTJHTa1OAR6PWOVh03+tBKGKxYexC6z6G6i
 fN539ynhMVFA4f7mYcZHfzijDnLw4hJ8ngt3MZ6thK/Vyke3H9qbF5lf4
 MAAgk2KdxxRNVnPlZnL+ir8leSVqE6GiJ+x0Iq4rzhNXWkdAWZ6P/hcJ8
 SYKBPRlTERIYoKA0gIX0gsVBUhFfkZ6E9p+nHV4z0Evdyh0Vd3BnDAZJx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3326819"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3326819"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 22:02:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="11903876"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 22:02:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 22:01:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 22:01:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 22:01:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 22:01:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxjKUTLXYuyeLOG5qyF2/cRhxohu71s14Z+Vi8zE6vJXhr5LCM14klNNpjNr1Zgq165mffaGbi1GF1kuAPrVYrq05FCKDYhlYbG4zihxlW2AVCVkp3Uhyy2GfO9tV8XVhv0qvG9BwtRPAc2lEaOy5/PlVboj0t2vmcb/Ey25wUEJBIwtgmKdQwi8212xGatPRcgghon3FFGVqBSmOTNqBk6dBQLXXHOUaK+DAMOs+KUhHzR3jrFg7jRXggbjONVAFqiHZk5sHYM+RrwLDUPg39/fURGIFXarq8+FTrd7oN1FUuagxgcV4ZQPWW5BvX4jjlm1gQPlnZvNzhqrWsv4ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ySH/uak+gIUuALk90y+FSgQX4SNeEyqMWUmY6PTi3U=;
 b=M3aqe4A3lGmLMzNTuSU9Nz/GvFSy/5rrVq7RSc7nSloD2Zv9s+Ykgm6HyCBWID7KVWh+5yGHLdrX7PUw/1T29F/ZtFd9IkKWeQpFe3hOu4V1uDhkaMlK63uuP/4PMaCaZnxu0AGftqKETET1r/wg51+UVRaGFPqwndgNPF5b/y1xLAtfbtaOiDvaVnbzaqTnV+vJaB2MnVhJ0KGfwV4O5T4zn4Thl6kuM5vOXMeGVM31eJL2fsxOKBSJZWoSvBu6tZyaqehUr8CiKCZnfQciIyn9i68NYlZb6hDAN6N1CaR8cPfnEVtvtOZQwFHxSBz0FV4Dw/p1AcTU/MydZ2wB1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB5661.namprd11.prod.outlook.com (2603:10b6:a03:3b9::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Wed, 28 Feb
 2024 06:01:20 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 06:01:20 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
 from header file
Thread-Topic: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
 from header file
Thread-Index: AQHaaT6wFc8ZY7GS402qWGEfsSm0rbEdu0WAgAGI56A=
Date: Wed, 28 Feb 2024 06:01:20 +0000
Message-ID: <IA0PR11MB73073FE862DD78B1A7CF39B4BA582@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240227053204.1748920-2-suraj.kandpal@intel.com>
 <20240227063330.1775323-2-suraj.kandpal@intel.com>
In-Reply-To: <20240227063330.1775323-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB5661:EE_
x-ms-office365-filtering-correlation-id: 977d1b0e-cc67-4c25-a23f-08dc3822afb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dY2D+wbSucbVXfKw2uDIT4w5HK3xlF2sHCOHz518a/AwiSP21or0fO/Iu9GCq4nxA/NRBOBY5E2eH5gKsdD4m7W0Jc3RhBVWi3KdU+MCI9euX97rSAhwM/lbC6pNdX/o2mw6gqC3435jP1NR4ESV+lGGP1ldYbhHQk2xIc2i3CoPUsv+RV/pBeAGZ/ZimI+f7Q3TuNiFtLdGGCWZuq+Cly/G1NHHNrCnjIhW+ISNP2khipUVVHoSk4i0zf1Yoe3Fz3RCxCPtjBqo+YMIf/bKthez6rz4g6t5G1ZIn0OZyHlYGirC0FaayJ07gD1jAKoMz287vB3idKzlK2TDLZNCx4kABCWmvi7cY1vc2ISTo+3mABNgfpc36hkVz/OiKoTvYZXannpLXnALu8NMvyYjAw+uDWPfAabzOU1ZbsgKveswv/wcmkmWTI5rAH9daOs5KjGtvaD77FsHQK2TNJW7tRoWmkDM4ydfQis/svNmR77P1jf3kYAX5poLBdxRLoKxW8PiD47/Y4AE32rfckDwm5KQYYR3CXFxT4Scw9IOwddujS/3t20cIZHqtQCpas11kVIpaOlRh7QoqpEZCcqTY6IbCyYhF9EK3QbSJTOxL8kx52YENFlIeOJEhNjEudAqytRn0KwuqeBkOzhY5RADxeq1qbmRgKMsu5jvx8+YzoN8+d4R1FJeiPwFm3Ze0q32Y3PGtL8yhtJ8ESD08FMnNh8J2kl172K7yJrwQ3my1TE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QNnycdDIeyLNcThs6A3jKItf13e/3E63rTOob6GrSdSzwnCF2I9U34H/yNAb?=
 =?us-ascii?Q?N4Pxb7lZGQcMxCRabe2EbmSsoVJYLLv2VbpGcj1c7Nhjz4nNnet0Z0KBlf02?=
 =?us-ascii?Q?FP89igYq5ENRuwzEIKDWz9eFLZSKuSN64uYpY1ix7AhXLfWFcWyw3Er1O66h?=
 =?us-ascii?Q?LNT2xHwRklwGt+x8z8JDji9LlD6Ur2UH1qJrmkzc2Z+UN089LziO4cVM8bpF?=
 =?us-ascii?Q?YYryLgHAj0vQIunmV87IcpU8WpYo9Lcical6t08++qplnz2uoaJbEKdoqGu3?=
 =?us-ascii?Q?LgnyuNpP+KkCpiS2H38VvPU6UaZra+TAd7sIzrDI831rjBAHyOpdZfM5QR+g?=
 =?us-ascii?Q?hX9jk+hLFSekaflMW1PCvXcHfkcYtDddRIsk5OkYFQtA00jEJ9gffK280nBs?=
 =?us-ascii?Q?zUZBXsBY/9wmHG4fp9EBD0aQ3dA5RFwDRjbziosGAv9mcScvm1nV+oH1f61A?=
 =?us-ascii?Q?scPd3GODpR6H/yWSLQEXbIaIMZHrZP4ajNoFFzKRilgsKRzeAJ78V9Wxez3F?=
 =?us-ascii?Q?iDaJNVAVGXNDsxsAdvqDXSNXoBwRN85d+y7XxcJ+nBR4y6zkfVaHbknRbgnv?=
 =?us-ascii?Q?qIvQNifCS850sLhWYZA/edQP9Ur3jeVrbYr1wjmzuZiiv8Bx9BSlaHZc9fXb?=
 =?us-ascii?Q?5g4XdUcKb7WDSfsu3gzmBafpYBZpzGdI3AQpmGqUn67Bm6KLhM8nhqd7xaUt?=
 =?us-ascii?Q?RCAsOzg8FE59f1XggIHznLXE3I+j+L899UXGelHbYqf7f573/qNwC/uUm/jz?=
 =?us-ascii?Q?iQnQQdY2I5UAsnHywVBeuonUUGCz6F8C+k7W8CcmLsTXiXaCDTRt92bMqOhx?=
 =?us-ascii?Q?BcgT+7FYS0+jQUC39mC0PI0seITUud2bormXjtOYNlkYuI6yorqk1WI6oz71?=
 =?us-ascii?Q?K9di8ff939bp7MJQTr18zAuUP5HSL5JM/szhf9fpJHzQE7FcuvUSUD5kAcso?=
 =?us-ascii?Q?mDmxCdsCQZsfPbjffWqRlZ5ckIIrSRp+DF2hWN90B8iMlN9kVvIkFUrO4osR?=
 =?us-ascii?Q?YEwbBtVHekOgSP3f/QQEFoMUUkBnbe3tOQFpcSi9EVgEKx83OI/eOM/GTA3j?=
 =?us-ascii?Q?VIyrdtTrfQviyGmDz5wR5EnmIHiqwLfIURQPl/iZ4nRZpCC+oRbLVNj5P33M?=
 =?us-ascii?Q?IKJ6Bd7rfxox4wLaTEWuggzLQlxO9iERmOj9lS/mGs/BeMqlx/Nvdt2QsRkN?=
 =?us-ascii?Q?p+Pt4EqtvD47xgktRFOlmHLNueshG62vqzPxeD8kj/iv7+MoqEWYRykac2ef?=
 =?us-ascii?Q?LmLl3eAu2/Wvfjdir6jP1SGVOC9Gju6nyWn6IUFRDNy/PLV4IN8gLe9Tvodw?=
 =?us-ascii?Q?WL+aELjm7zw+x7dfLIV9XjIG/BX8vWwgVIc/dL+KQU6OtXPy3/RuvQ+PNJHZ?=
 =?us-ascii?Q?RzsCPT0GcgMgq4sLDlif7Ltp2BCXSqWaq9LNnN9tf+Hzd1bpItGIVwov20EQ?=
 =?us-ascii?Q?SQpRnUvmOpJOIW7O9iESv8NLInoP2x4/zWtS5kqJRWWB8iis8BXezE+xEzrZ?=
 =?us-ascii?Q?N6DGqBDTd8KphbHBMSI6LSSk1Qb9miN27rr4pKxh+2twhA9GgTCCso17jNZB?=
 =?us-ascii?Q?6hgAnkCablklNPoQ8OyFy4IqN032OzKW7lLa343l?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 977d1b0e-cc67-4c25-a23f-08dc3822afb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2024 06:01:20.7531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u6JMKqV0qb8tHxu4RDSLP7iKjF6hdQiIGdzgQ+B1xvJVXcN8rhReSANLX90EoGF8ys0E6BpuW4oaCOcOVvOpNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5661
X-OriginatorOrg: intel.com
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


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Tuesday, February 27, 2024 12:04 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
> from header file
>=20
> Move intel_hdcp_gsc_message definition into intel_hdcp_gsc.c so that
> intel_hdcp_gsc_message can be redefined for xe as needed.
>=20
> --v2
> -Correct commit message to reflect what patch is actually doing [Arun]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 6 ++++++
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 7 +------
>  2 files changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 302bff75b06c..35823e1f65d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -13,6 +13,12 @@
>  #include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
>=20
> +struct intel_hdcp_gsc_message {
> +	struct i915_vma *vma;
> +	void *hdcp_cmd_in;
> +	void *hdcp_cmd_out;
> +};
> +
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)  {
>  	return DISPLAY_VER(i915) >=3D 14;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index eba2057c5a9e..5f610df61cc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -10,12 +10,7 @@
>  #include <linux/types.h>
>=20
>  struct drm_i915_private;
> -
> -struct intel_hdcp_gsc_message {
> -	struct i915_vma *vma;
> -	void *hdcp_cmd_in;
> -	void *hdcp_cmd_out;
> -};
> +struct intel_hdcp_gsc_message;
>=20
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);  ssize_t
> intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> --
> 2.43.2

