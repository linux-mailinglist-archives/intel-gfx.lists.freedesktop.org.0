Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E215866BF4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 09:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6655F10EF41;
	Mon, 26 Feb 2024 08:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QY7RYh71";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C1A10EF41;
 Mon, 26 Feb 2024 08:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708935526; x=1740471526;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A2vYDtmFgBNVIafhZdLCq2YwX9T9a2fFFIcXekF6CfA=;
 b=QY7RYh71jH4N6sy7CzMFJyp+KesLswI/efijI5MFX9uSED3ecUwRLlsW
 D/0qj7xYovkmW79MI99jtigrONO55texl+v+maLohszeY6qZd0CjA2Rqw
 fLc5yiyWaXQ+3uigQQDmUX2qTCdlv/RRyjpE48ZmBZ4NPLwQHDUMjRgN2
 UvPCL1gHoDZ7AzzLipVk5uXClTqTLTzyujsZNEOBnDxQDH4Xb+6lfJm9o
 RAjQivz2Drbi7BqVETCmQGBn1fjKxOr8zAK4WuRNq9h3N6VpLxOgjnoVF
 MOQDejkz3t5lhXeHcDuXz4SZRSa1ExLXsRQvsVcXgMagUfznllaCIIoVE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3351526"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3351526"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 00:18:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6585174"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 00:18:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 00:18:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 00:18:40 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 00:18:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iiLfhk+P1AbCUSIMgTGXDccFMza3YoxPUNz0CIgdlCDHJvyxKWUTjp0xtFM9g4O+p4BpgOts/SmlICNhf3ivWXJaSmHZEydfxh4fMfVFxnxm1VrRVrTsmynA0Ktn7KNtLbZMtSRSsXNBkkoZc/GisVZPpKhYkXG2Y610wTw131Ww99adK2C+Aj8oKiqMCamaKiAD7/k6Jl7Nv3ivPS9CTZ+j9VjPtghfILgyVnMra7EMWRc5n9fOPlLhs484+ZAw4H5slosP5+XaY//1X7/dBKb/AQxm6CqUIPI9CRwFmwRdOAyfyVRDiv1ZDZSl/JeiQPkFdlJWM2yax5QU73pf5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TOvePy77lPmB+YshtAgG37VyEwVuYazk44H3ybl1RWU=;
 b=ExMSO15+JXHctrWbd5ac1d+hoItrZSyPNAMIHKPupadbUfvhuviOx631cuc8yaojc2kjSf/g20S833ZQUFOA1ZuHreMIARKOZBAh4+vD+hJW5e2OiVrEtF1MkhxBCnO/mPeRtA+41+4LwEm31+jwWQfjspebjCw2vb1xlNwATQ1RFgA6JJ9+hPqZG0cjsHiN2SQsgoWvLn660NpCADW9KYHkuaqkF1BByfOoAfEHRPJTVBDTT4O5nyuzAuXMVst1Zja+NPkdQewgQoz8bTcDK591tFRaQzNNDb55i+P/SE1b8FjJNXYUSYREVAdakGBFmK4VVHBO0aUQWAP/fRWrIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB6711.namprd11.prod.outlook.com (2603:10b6:806:25b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Mon, 26 Feb
 2024 08:18:38 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7339.024; Mon, 26 Feb 2024
 08:18:38 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH 1/5] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
 from header file
Thread-Topic: [PATCH 1/5] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
 from header file
Thread-Index: AQHaW0FHODo0Sa07Nkyz8jFHJRTKebEcXABA
Date: Mon, 26 Feb 2024 08:18:38 +0000
Message-ID: <IA0PR11MB73079A4912118E700C463964BA5A2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-2-suraj.kandpal@intel.com>
In-Reply-To: <20240209101412.1326176-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB6711:EE_
x-ms-office365-filtering-correlation-id: b4e1d9c1-49f0-4553-6d85-08dc36a3890d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qm22tCc/AabQxAK5lAB5YOPeUHSeRTljop5BXprzcAGzn31hl4rLykMBM7mIHZNbLkZAVREsMyppJ65RIj+Ud+Q9B7573ucz+BPb/959iLYioh5PaahJvjZbedvQggBXqh7ive59OnKRkDVOeozjLf61EiLKRakVPU7GzgHIQgRGN7Lt7XfwEIIXPg22etbtn/UwkbF6yMDgyp2+KnOQPNW2v4BWGwn0KZmoY4xjt3jDGEEWdMisXCnbzlXDpUTAqdUAOqQsHdjhsJGTP6wmArlO2EApT30UfNvYxz3ZOo7ckpyukQaKt7GubHInDskOwLsPnQevM4pteZ0oVVBbTqki8L1GhxaCXrrGoqWvTw3c8B9/h8RKMQxUENZ1pSqBarxRnTi0vi6vYJjO8fkdnd7ymJeCUu5Ys3b7aheYfF+Yr+2NdIU1WhWP8XVnwlF/nuokDkwscRRsqdqcuqDZvnS3HOFP1oWQfIEsW6Mv16jjmSya6z0oqC+Jnb+oxF2ulIWVRHyh60c6hvivK81QXGmOba6Kl9ayceo2XsxLe6IsLrTczQduPKm9DS3WJAPn4Yc1XzIRckUmxIdyYMUtIjP4AB0s9jNAEmD+yUx6WuiOr/c1xFg73/9dH7s9L1Q8Vg9D4QAYgLaM1EJBy769rZzOi7QjBiHDPX+wZDVt6HqcH1OtLHXSycdKqAjTNJVaP7cnZ6sN5QXF0KpxEEQ7ntMPMiGAo/F9CFWqcd0jj/o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7WLQBNUEk3xRm0cqxL1XExU5UHCb0Sp4kztQKpsjbOtY2tUjnDWnDNIo3H7n?=
 =?us-ascii?Q?uIVbpn0DfuVXLnWxJVW8L0zhkbxB1klUze9gG8dk/1IRyg01mTh90o2XzApx?=
 =?us-ascii?Q?BKn6YjLA5bqfSLHzGxjt6P0SdHH9n1P37DMmFgXLbRKh1QZ7qKXxkxOINqGP?=
 =?us-ascii?Q?BZdhUCZ4Gb6QOWQ0ZH3xUOarNq6u6zHaS206/EgK9if3beYJuR0QeT+JBvRv?=
 =?us-ascii?Q?S5/bZCtKs6o++ePZPvGmjm20j1sV183h/9iZRP2vmTM7XYrJ8OB2n5Z/J5S7?=
 =?us-ascii?Q?1DZXRjS3c0fTtEqOYD98oI6EIQqyRvUVd7rBBWmLMC436/nffGyIrumIHkxF?=
 =?us-ascii?Q?wfMd8Sk4ZAFUgQ54QpRviGZ/9CT5R1rAzzx+8SNXt7hPLOjDLB7WrTClMkCM?=
 =?us-ascii?Q?4xGehTBWpWrOGsSp8zB8rfWn3wI5F5d9wh+ocyPvYtBnuTsufx7OtsohRgWf?=
 =?us-ascii?Q?egnhmeI1fC2YIlGyi0PaiZhXJY69Cn7FTDph7oEK47ypgmIz69XWSkdWzwO+?=
 =?us-ascii?Q?cKPFPld+PO8dao8uL+7FymeoQuE2bHH1wiz6vSjuJMAzS/9JpKsxLOFNiJ8e?=
 =?us-ascii?Q?d2BEL7ztwaO/GWKO0SgaGdMiifIOU7ZPJrIyxtS/wwolaxcSutKCi2E2mamw?=
 =?us-ascii?Q?g2u2Mz1OGb/w0eUeeayDXzqe3WVAWYhhiNkqJkBnZbvXf1vctPqt4FmGKbG6?=
 =?us-ascii?Q?Z//u15GYeuJW903LhqsRbxBPwjS2bvlJ6l505ropr1RjG2YhBsS4yGRMj+Pb?=
 =?us-ascii?Q?EMVK3+RA8MqabQb9hTJt7H2AbybuzwUt3hgi8LzXlwkd7SzAtgw/UI5C4QIT?=
 =?us-ascii?Q?CYJpNAWSLYyvBa/PTn/VxpFzhVVfh0aducdM4Uy4NbpXd3hoZ42snZvxUPYl?=
 =?us-ascii?Q?HwbchGf0G63BhtG8SKjgPBjW1qrYM9G1NzyYti1k8Shx0KMHOJgBPN01mJoQ?=
 =?us-ascii?Q?X0JcF8kcM7bcyjUTk878MRb3wVbNwUsPE5l6cZT03vad13jEoOwxzC861S+h?=
 =?us-ascii?Q?RfjAv74r6ApFhUg7q1thOcWTCsecmmb+1KiUEfCzuu+JYCzhWg+TlmxOazCQ?=
 =?us-ascii?Q?tiWaSlZjIAaIjutOhYjLmiCSiIF5kuQ+o8YblshcpHM32gfAHBSMO/kG5cHa?=
 =?us-ascii?Q?PC+gcCbtN53URkMxuJYwQ0U0SfWNeJ/H39Y8JfHco8ojcx1tzEpkZwVz8PGN?=
 =?us-ascii?Q?BsS8ruOiSVpSFr1n047HgcPptXxC/jErBmKIcniT+vuTy3PgnUhNSAijhDOZ?=
 =?us-ascii?Q?HcoZ/b+tmN7YzWVjcNJAOS/0cuHIdFVSl5otiUBjUdfRtH2jdoHreMBLCH8C?=
 =?us-ascii?Q?k1SFvwVeGKSGydwyBPtlDSk3oHI/9GUO3ZIuzFfmjOqZmq2YYgsU14275GGs?=
 =?us-ascii?Q?Y3NzCyRwDZRC+cJBxQMLdqWYjvDXpWP8tEvFdX8tny6jRmyVbvi1NjuBOlJF?=
 =?us-ascii?Q?ASl1/HZLuArCU6JTRAmJ5gQkQWM/gFjvnZeZ/zjOhONeUyMDJ3QhCqm7mb9S?=
 =?us-ascii?Q?MM1RGHntW8vWyBEaJh44J20Cb15Je9cls/bu8EPEnAJ2Cmu9bXWtTPkzUQUM?=
 =?us-ascii?Q?5WD2eY3AjyRFjwOwOhdA4Sv3ff5GDtef8DBCBwAi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4e1d9c1-49f0-4553-6d85-08dc36a3890d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 08:18:38.6517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SQ6yB90vrBKz5OAnExFzkgZTT8uYoUdM08eLVDdQFWEW56/Jm8O9H8v/7g3n8FcGy5clHm4iO5lO2wieXnIMgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6711
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
> Sent: Friday, February 9, 2024 3:44 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>; Kandpal, S=
uraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 1/5] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
> from header file
>=20
> Move intel_hdcp_gsc_message definition into intel_hdcp_gsc_message.c so t=
hat
> intel_hdcp_gsc_message can be redefined for xe as needed.
I see it moving from intel_hdcp_gsc.c to .h file and not intel_hdcp_gsc_mes=
sage.c

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 6 ++++++
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 7 +------
>  2 files changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 18117b789b16..e44f60f00e8b 100644
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
> 2.25.1

