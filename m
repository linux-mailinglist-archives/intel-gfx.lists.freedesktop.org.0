Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AD1C8D50C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 09:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F263810E2D2;
	Thu, 27 Nov 2025 08:20:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwAJ+PXB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF5010E0F3;
 Thu, 27 Nov 2025 08:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764231619; x=1795767619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vI6SendogGR/vAtw7x/9KhR2cVwEPTJl4TRyb1T5N2U=;
 b=kwAJ+PXBGAcJvekcze5SbHeCG9BTn6GaYzEJAIf4pbuge+aAkNvuYAxx
 YJXP6oNM8wzAEJr5FOoyR9v1RtPYSxLVWuG1RoCXtazFR9+19EV5m8B+k
 BdI/nOAYLxdhq3FeoN6Ico7QEi+k8Ceetkffa06bOp/cL3UAUGLVOf8Sw
 VpJiqIiZvWpOCs9COljnSgyZHOJrNvS0ZJuO9Z+sWibm59t0FUQRZOXuq
 9YgnK/OCHFiBbILyYuKXxnd3fkSLCudCutg6egfmplKwdPZkn39Uhhdt6
 VnwIqmZ1KxIZJ01oCnfpWvCxHwPAdoWmgVZroeg6SEafMd3W3pUqHTzFg A==;
X-CSE-ConnectionGUID: rkV4qi/+TIiahc4ByS5DYA==
X-CSE-MsgGUID: glYYLXhVQPyRKdLtpK3gbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="76965069"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="76965069"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:20:08 -0800
X-CSE-ConnectionGUID: JUFRf9eGQz+aprGY9ocKXQ==
X-CSE-MsgGUID: AueSbJnwT+yEwGWCbaHnHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="192984000"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:20:07 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:20:07 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 00:20:07 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:20:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J5BrfqL0rU7z6lahITPYz7RRgGKP1xRdSSvFi/oIzHumbn50hm7IkcxUVgKI4eqGuADArYM0GINfVcH05yTFTGwyQEqC3j+ZbMyADsFvd3vUDUbmY0AzFUVUVm8y0q6FoDPSlRNhvVpryAKKLzNgg4YMvc0XaLrWDeqYUD2ptgSCXYvIwTVwB3qaZ2IQ25wcJ/k5wAPH7cHFnUE+DrUMkP028QJLpLP2WxsKQIrz6FvoAAeaGfo9KlEbQ8nvVeIec+oSu+FnbyB8+0n6WfCmcoM1wCGzi1Azq/nqTSNAJC1fcSlvt3xQaVn4Y58EpnflWT1BeAGH7Hj3DxaFtQpC6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZXvQF3/EhhkJpM3t1/sq/yOS1lDMKNn9dZmrPQxCXc=;
 b=d0ywCahB9eLyIIAxuHiZW7K7BR0bfyUL7TueKMichtU3gpiUl5SijijDc4Ny7LFEcvyT64IkGC78o4q3ezwY348lcPknwYZcaqmD/PFTJyovrZxPMZgJdJO7rIS+Y9T6GyO3ULdaafAK7JAp7sDUoSz7vbgGVNhecmJgSukNWOt6zjK7IYtmwZg4C9mwOJ3f8SBy35ZZmYl/+3HOxmAAp2rIVQzXBexJ0U9MmEa1LAB7LA0mtuT29ceCzq/A4eMH5Z+2f8M4OTFZEohoK8xRZk7FSp97H2acbFkVLrfQ+SGN6xMTmVI46Q2AdR1IhhmJwOLelSt9UbulS/D/JoktNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 by MW6PR11MB8410.namprd11.prod.outlook.com (2603:10b6:303:249::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 08:20:03 +0000
Received: from PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063]) by PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063%4]) with mapi id 15.20.9366.009; Thu, 27 Nov 2025
 08:20:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [RESEND 2/4] drm/{i915, xe}/dsb: allocate struct intel_dsb_buffer
 dynamically
Thread-Topic: [RESEND 2/4] drm/{i915, xe}/dsb: allocate struct
 intel_dsb_buffer dynamically
Thread-Index: AQHcXsV3qvvq0YnqxkuYlbnNksSMYrUGL4cw
Date: Thu, 27 Nov 2025 08:20:03 +0000
Message-ID: <PH7PR11MB8035FB6E3088F3C1D5506BFCF9DFA@PH7PR11MB8035.namprd11.prod.outlook.com>
References: <cover.1764155417.git.jani.nikula@intel.com>
 <af94dc06c55a866efa9105ae0a8d244e4c6b17ab.1764155417.git.jani.nikula@intel.com>
In-Reply-To: <af94dc06c55a866efa9105ae0a8d244e4c6b17ab.1764155417.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8035:EE_|MW6PR11MB8410:EE_
x-ms-office365-filtering-correlation-id: b0c614ab-1e06-46a9-20ed-08de2d8dc3f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sSiIpuHtKCjbZBHowzGcXuHJT+LdL95O4QtfQjA/0qRennbFLse2Gzt8/KYA?=
 =?us-ascii?Q?/jHcKST8lqjuAKRXn8GjEpnljo+Q4/ay8/BuUXk/WeVXTI/x11CzmH6sQDwW?=
 =?us-ascii?Q?36Q/RuJiQGYE6a7EcOfGGpfT+E6T7kVx1s8//IT5YFVJytQx5lsY9Vv/0kVQ?=
 =?us-ascii?Q?VTJvYbFOys7J2PB70JAOizNvDWQ/kFUJnKkjYTL9Pt/9oarxaO9v3vQSqZLe?=
 =?us-ascii?Q?HPihOl69VoJSBU9VEVUf3Hgxlq7ne4aathFJvl1U1RDOFqFwABXDnbcRfzQn?=
 =?us-ascii?Q?TxsXh5DQAgVnks0XMktOZU8gD5m2qTG5ce+a+B/YI1AspbHDub3BoI3N0uhp?=
 =?us-ascii?Q?zJCcM3eb1j3D4rNN0JWJHq/TaLMgz2OtbJSKQKvu6AlXHB4+U1y1PVYncDNE?=
 =?us-ascii?Q?cqAinlCYqa4rigiYFTI4B7EBBHpUV5oZT2+zUNoUvMRKOwEZtS7AYWfJaBZC?=
 =?us-ascii?Q?CXwhx/nk8jMZIRA+YnWjekl76jMF1hQQbdbfQNvauhTrhcmc8mSNGTzUzCQn?=
 =?us-ascii?Q?zFfAHAq8lwY3QDtDQ4HWBxGNhRLDSghfX7xeph4sbcf6akON+j+Tyx+xdoeP?=
 =?us-ascii?Q?qGHAH3HidDTrLhGXJuQjmOXWxDHUg/aDIou1lMhI3FXRPLkaoRNF1Dj5Xsfp?=
 =?us-ascii?Q?3ZNVXsdJXAEW753DHiqqSr8ol/nEM+3M6sOlCsoJ9u/SfXpbm0vCsetCVXfI?=
 =?us-ascii?Q?5/PoAQf+T6ggXh/DE96DwZSeu9OHnHq+hZ49KwclF66yjl4kCaSwyLNOxDuv?=
 =?us-ascii?Q?waOLAdI4tghIY7n66DGrq4F6AF0IdUJuSpV/FIV8IgyUFxdGjXGQjlIUK0y9?=
 =?us-ascii?Q?9+GpfAaDgazSQwwTkfqX9J60XPD5D0eOBg5O7mSDDkzoaK64oce5+s6Hpalc?=
 =?us-ascii?Q?73+85zYAxg3syIhTAy3ZcY+vdpxd6f1l2wnCFnB7ffXp2XOMmc6JxVgYfwYI?=
 =?us-ascii?Q?jJrQUWQQ08c9K1dEyjLnSvZYFpuIG3vBdQsjZ1R7MZHQiyWPZ0SWGnM0Jyrp?=
 =?us-ascii?Q?U3dmJUhCg4b5ixzUujo+alTr4RkcO51N//ENT/P+bQGTC5qB3jl5iGoGy/wJ?=
 =?us-ascii?Q?soInPE+4wW219o7U7GbIA+plofbay19D6aS/u/VywPwXiB35M2/bc0oIeSvy?=
 =?us-ascii?Q?O3vdwA1eG8ziRDen8TrRk3YX4doeghsMRr730C+3ORITS7ZKlV9iaLg9jq1b?=
 =?us-ascii?Q?nJRtxLN270Kr5YDZG8j35IeqjPV/EgKMzHITOlrlNarOqD5NqBMWa939Razr?=
 =?us-ascii?Q?PpiF6R9EaA7ubQrp4KUPAN5uGKWMP3ZtdhVFKgHddGRcxntFaH7BuhWqAAPX?=
 =?us-ascii?Q?6gW9jLYJ7RaANVRACnHht0mOyF/uj0XM96gnUM6EfHDi7gc6hLOmQtvpHse5?=
 =?us-ascii?Q?M1SV2/DlQGEbbopaL2KsiNdaWm4buelBdFIIrK/3Etx9QE7DfnMmtZwfiSjw?=
 =?us-ascii?Q?MN68c0vinIbeugEBirfUl/bsdPxWO4gLJWexw4sVEWp87l6o9yJkwEp6G/6a?=
 =?us-ascii?Q?XTKI2i540EB81VN9zIfzaUzk3Guznf6r60Ze?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8035.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OOOW9HZJMqxvcyoKr6xAUNZGt2d2IW3pVx13N5Lfv9fW5N3G9tiInMqe+SYy?=
 =?us-ascii?Q?AM8MS5x8XIcbJL34Oz7+Y45XWgM9MB9bTdElvLkOGCibBSuqMuqKsiS6qFJS?=
 =?us-ascii?Q?jgL5UGrpBhXtKQsTL+xGZQfiIFcjv4yG8yiwX7Jqa8Gtb9jHHFt9/I5ZxAKD?=
 =?us-ascii?Q?F6yQdBMu1BSXTblEPAxeSApqIZHMIRNoLw1dQhwq0MYVKYUdUpOtZxTJHEIJ?=
 =?us-ascii?Q?hiRAjUsXHyz0bOAnagLrq6UhIKNgb5jfOkPRzCDCuNdijTFc9YhXOxtRubgK?=
 =?us-ascii?Q?ojaUFSHkbuirMVJyhBVUHV5f+uIWOdZBOdVDvr0KrIaFPV04FflkjelDsw90?=
 =?us-ascii?Q?qvHSeZU/VKXYLLNLceASR9nR6C/w+kLdTkyIMmGDE6a4OqLmtogJy2TtSWtU?=
 =?us-ascii?Q?JL2li7JJ8npHsXldnp+nG/gs/yhTLmYCayU2YV07KNx/aBN8B/86IOmYZBz5?=
 =?us-ascii?Q?7BW8f47bBszvRj7MN4/h0PozNtQVZSit2AZ7GQo+QWy5TUb0NLLv8TSeZHOA?=
 =?us-ascii?Q?DFeLMSJnrslnPgJ/TxC73WzXFQTb0OuPhDtWhkPag05gexshTvmiWU6LyMwR?=
 =?us-ascii?Q?nlebKlwxCSfoFXNbTHktrM5mUnZvenDy3qRO5OJW+iBNHsMZykHTrlHSJdoy?=
 =?us-ascii?Q?gqXIZQBP1th+lIJqmiue/bqhelSi1DfTXpdDUjzXUXiZicIl+6BcSR0wCpqZ?=
 =?us-ascii?Q?HhLqWS9mo4fTOvTUzQO5TsqTjpgam6/hxXtuvrptlJTe3gkxDmmX65DhzOUo?=
 =?us-ascii?Q?2BT7AQiwlArNaXUkxASsS9JKMTSLbqBzGOmYVRf5AaxzBgdRXZoNFMjb5hmV?=
 =?us-ascii?Q?8JZJLg5SgSzcqnggvEtI7N8ARHWFzt8Fl3WTfqr6GEIfhahWM64hg3MsNBoz?=
 =?us-ascii?Q?br4Gd1j8h9dQrEvAFvB+PSygHsZxCXZjqZwOCznYFk1DxSJavTKGOa/NZ7Ha?=
 =?us-ascii?Q?4PrnYznLpQAAWTH2F69KuFWXXt1urr0j+15gjn0+itzFMgS8q0yDdg7EGuy2?=
 =?us-ascii?Q?+aKGHM6tIRttOmQJrTulHky8cjSikoi0Jr4us+h3cRHEWP2z+e6toFbRVFvQ?=
 =?us-ascii?Q?LEPs9hgU/cAuI6CBVBWDBImDwoU402SWh9KkNBCMol0jT94z/5GQCvCr7gM4?=
 =?us-ascii?Q?wHAgqfjR2oLo4v54SHFgshprAle7TRKWjlniwYsr0zu02erP2UhjJ81Htdwa?=
 =?us-ascii?Q?VjGSpTRLpAPnEDnGhJuqzjJUFMBY6r/IVl4sTHB4wSVU1eR5KD6KVaV7BD1D?=
 =?us-ascii?Q?AhZwxU1VpKFdZK7h+tU+QCmzUcSNxabpjLD+k4vF3sPDLw/pfL2r3IwUsE5O?=
 =?us-ascii?Q?M1qA6hjbDNM4GOjixUs3CV6TmDKqG8j+OVKghjN6/Bw7CfExaDjGVWnkaccZ?=
 =?us-ascii?Q?njzBh7npResCKYFDYxE9f4NndlQ4GKOO4ebAIZR2GIko9SW2vnzC3Q//MnBV?=
 =?us-ascii?Q?EeY4YXOcTAZIJZ2ODgB/uQyL9DJfzGglvHAN+Cer1rY7Q0cSqF16+r3Mn9kL?=
 =?us-ascii?Q?pE/yI9TJ6lNvq7qiR0MXbVQyi13cC5KmcYZpJ73s+Afz25HiimvuzgkgvQa7?=
 =?us-ascii?Q?zGRzj6V4ascFmaLQPESUZNFTuBNHqWno/xOfIJzz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8035.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0c614ab-1e06-46a9-20ed-08de2d8dc3f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 08:20:03.3779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WjNdZ/KU/LJisfaH2rLXw7ZDvA2kZIV9lKqxZxOeiTYdtMJhHoAcqbV+XPvW+TEZlk5FCoC52BYV6hkX5qEDtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8410
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, November 26, 2025 4:41 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com
> Subject: [RESEND 2/4] drm/{i915, xe}/dsb: allocate struct intel_dsb_buffe=
r
> dynamically
>=20
> Prepare for hiding the struct intel_dsb_buffer implementation details fro=
m
> the generic DSB code.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c      | 42 ++++++++++---------
>  .../gpu/drm/i915/display/intel_dsb_buffer.c   | 34 +++++++++++----
>  .../gpu/drm/i915/display/intel_dsb_buffer.h   |  3 +-
>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c    | 28 ++++++++++---
>  4 files changed, 72 insertions(+), 35 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 6d546f9ff316..ec2a3fb171ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -26,7 +26,7 @@
>  struct intel_dsb {
>  	enum intel_dsb_id id;
>=20
> -	struct intel_dsb_buffer dsb_buf;
> +	struct intel_dsb_buffer *dsb_buf;
>  	struct intel_crtc *crtc;
>=20
>  	/*
> @@ -211,10 +211,10 @@ static void intel_dsb_dump(struct intel_dsb *dsb)
>  	for (i =3D 0; i < ALIGN(dsb->free_pos, 64 / 4); i +=3D 4)
>  		drm_dbg_kms(display->drm,
>  			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
> -			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
> -			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
> -			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
> -			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
> +			    intel_dsb_buffer_read(dsb->dsb_buf, i),
> +			    intel_dsb_buffer_read(dsb->dsb_buf, i + 1),
> +			    intel_dsb_buffer_read(dsb->dsb_buf, i + 2),
> +			    intel_dsb_buffer_read(dsb->dsb_buf, i + 3));
>  	drm_dbg_kms(display->drm, "}\n");
>  }
>=20
> @@ -231,12 +231,12 @@ unsigned int intel_dsb_size(struct intel_dsb *dsb)
>=20
>  unsigned int intel_dsb_head(struct intel_dsb *dsb)  {
> -	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
> +	return intel_dsb_buffer_ggtt_offset(dsb->dsb_buf);
>  }
>=20
>  static unsigned int intel_dsb_tail(struct intel_dsb *dsb)  {
> -	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) +
> intel_dsb_size(dsb);
> +	return intel_dsb_buffer_ggtt_offset(dsb->dsb_buf) +
> +intel_dsb_size(dsb);
>  }
>=20
>  static void intel_dsb_ins_align(struct intel_dsb *dsb) @@ -263,8 +263,8 =
@@
> static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
>  	dsb->ins[0] =3D ldw;
>  	dsb->ins[1] =3D udw;
>=20
> -	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, dsb-
> >ins[0]);
> -	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, dsb-
> >ins[1]);
> +	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, dsb-
> >ins[0]);
> +	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, dsb-
> >ins[1]);
>  }
>=20
>  static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb, @@ -335,1=
3
> +335,13 @@ void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
>=20
>  	/* Update the count */
>  	dsb->ins[0]++;
> -	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0,
> +	intel_dsb_buffer_write(dsb->dsb_buf, dsb->ins_start_offset + 0,
>  			       dsb->ins[0]);
>=20
> -	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, val);
> +	intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos++, val);
>  	/* if number of data words is odd, then the last dword should be
> 0.*/
>  	if (dsb->free_pos & 0x1)
> -		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos, 0);
> +		intel_dsb_buffer_write(dsb->dsb_buf, dsb->free_pos, 0);
>  }
>=20
>  void intel_dsb_reg_write(struct intel_dsb *dsb, @@ -521,7 +521,7 @@ stat=
ic
> void intel_dsb_align_tail(struct intel_dsb *dsb)
>  	aligned_tail =3D ALIGN(tail, CACHELINE_BYTES);
>=20
>  	if (aligned_tail > tail)
> -		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
> +		intel_dsb_buffer_memset(dsb->dsb_buf, dsb->free_pos, 0,
>  					aligned_tail - tail);
>=20
>  	dsb->free_pos =3D aligned_tail / 4;
> @@ -541,7 +541,7 @@ static void intel_dsb_gosub_align(struct intel_dsb
> *dsb)
>  	 * "Ensure GOSUB is not placed in cacheline QW slot 6 or 7
> (numbered 0-7)"
>  	 */
>  	if (aligned_tail - tail <=3D 2 * 8)
> -		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
> +		intel_dsb_buffer_memset(dsb->dsb_buf, dsb->free_pos, 0,
>  					aligned_tail - tail);
>=20
>  	dsb->free_pos =3D aligned_tail / 4;
> @@ -606,14 +606,14 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb)
>  	 */
>  	intel_dsb_noop(dsb, 8);
>=20
> -	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
> +	intel_dsb_buffer_flush_map(dsb->dsb_buf);
>  }
>=20
>  void intel_dsb_finish(struct intel_dsb *dsb)  {
>  	intel_dsb_align_tail(dsb);
>=20
> -	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
> +	intel_dsb_buffer_flush_map(dsb->dsb_buf);
>  }
>=20
>  static u32 dsb_error_int_status(struct intel_display *display) @@ -888,7
> +888,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
>  			      !is_busy,
>  			      100, 1000, false);
>  	if (ret) {
> -		u32 offset =3D intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
> +		u32 offset =3D intel_dsb_buffer_ggtt_offset(dsb->dsb_buf);
>=20
>  		intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
>  				  DSB_ENABLE | DSB_HALT);
> @@ -934,6 +934,7 @@ struct intel_dsb *intel_dsb_prepare(struct
> intel_atomic_state *state,
>  				    unsigned int max_cmds)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_dsb_buffer *dsb_buf;
>  	struct ref_tracker *wakeref;
>  	struct intel_dsb *dsb;
>  	unsigned int size;
> @@ -953,9 +954,12 @@ struct intel_dsb *intel_dsb_prepare(struct
> intel_atomic_state *state,
>  	/* ~1 qword per instruction, full cachelines */
>  	size =3D ALIGN(max_cmds * 8, CACHELINE_BYTES);
>=20
> -	if (!intel_dsb_buffer_create(display->drm, &dsb->dsb_buf, size))
> +	dsb_buf =3D intel_dsb_buffer_create(display->drm, size);
> +	if (IS_ERR(dsb_buf))
>  		goto out_put_rpm;
>=20
> +	dsb->dsb_buf =3D dsb_buf;
> +
>  	intel_display_rpm_put(display, wakeref);
>=20
>  	dsb->id =3D dsb_id;
> @@ -988,7 +992,7 @@ struct intel_dsb *intel_dsb_prepare(struct
> intel_atomic_state *state,
>   */
>  void intel_dsb_cleanup(struct intel_dsb *dsb)  {
> -	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
> +	intel_dsb_buffer_cleanup(dsb->dsb_buf);
>  	kfree(dsb);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> index 1eafcb2dedcb..fc1f0e6031ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> @@ -31,48 +31,66 @@ void intel_dsb_buffer_memset(struct
> intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
>  	memset(&dsb_buf->cmd_buf[idx], val, size);  }
>=20
> -bool intel_dsb_buffer_create(struct drm_device *drm, struct
> intel_dsb_buffer *dsb_buf, size_t size)
> +struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device
> +*drm, size_t size)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(drm);
> +	struct intel_dsb_buffer *dsb_buf;
>  	struct drm_i915_gem_object *obj;
>  	struct i915_vma *vma;
>  	u32 *buf;
> +	int ret;
> +
> +	dsb_buf =3D kzalloc(sizeof(*dsb_buf), GFP_KERNEL);
> +	if (!dsb_buf)
> +		return ERR_PTR(-ENOMEM);
>=20
>  	if (HAS_LMEM(i915)) {
>  		obj =3D i915_gem_object_create_lmem(i915,
> PAGE_ALIGN(size),
>=20
> I915_BO_ALLOC_CONTIGUOUS);
> -		if (IS_ERR(obj))
> -			return false;
> +		if (IS_ERR(obj)) {
> +			ret =3D PTR_ERR(obj);
> +			goto err;
> +		}
>  	} else {
>  		obj =3D i915_gem_object_create_internal(i915,
> PAGE_ALIGN(size));
> -		if (IS_ERR(obj))
> -			return false;
> +		if (IS_ERR(obj)) {
> +			ret =3D PTR_ERR(obj);
> +			goto err;
> +		}
>=20
>  		i915_gem_object_set_cache_coherency(obj,
> I915_CACHE_NONE);
>  	}
>=20
>  	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>  	if (IS_ERR(vma)) {
> +		ret =3D PTR_ERR(vma);
>  		i915_gem_object_put(obj);
> -		return false;
> +		goto err;
>  	}
>=20
>  	buf =3D i915_gem_object_pin_map_unlocked(vma->obj,
> I915_MAP_WC);
>  	if (IS_ERR(buf)) {
> +		ret =3D PTR_ERR(buf);
>  		i915_vma_unpin_and_release(&vma,
> I915_VMA_RELEASE_MAP);
> -		return false;
> +		goto err;
>  	}
>=20
>  	dsb_buf->vma =3D vma;
>  	dsb_buf->cmd_buf =3D buf;
>  	dsb_buf->buf_size =3D size;
>=20
> -	return true;
> +	return dsb_buf;
> +
> +err:
> +	kfree(dsb_buf);
> +
> +	return ERR_PTR(ret);
>  }
>=20
>  void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)  {
>  	i915_vma_unpin_and_release(&dsb_buf->vma,
> I915_VMA_RELEASE_MAP);
> +	kfree(dsb_buf);
>  }
>=20
>  void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf) diff -=
-git
> a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> index 496ece42b4a1..2cf639fae47a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> @@ -21,8 +21,7 @@ u32 intel_dsb_buffer_ggtt_offset(struct
> intel_dsb_buffer *dsb_buf);  void intel_dsb_buffer_write(struct
> intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
>  u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);  v=
oid
> intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 va=
l,
> size_t size); -bool intel_dsb_buffer_create(struct drm_device *drm, struc=
t
> intel_dsb_buffer *dsb_buf,
> -			     size_t size);
> +struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device
> +*drm, size_t size);
>  void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);  void
> intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf);
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index 1bbebc0313c8..ee7717b1980f 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -31,15 +31,23 @@ void intel_dsb_buffer_memset(struct
> intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
>  	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val, size);  }
>=20
> -bool intel_dsb_buffer_create(struct drm_device *drm, struct
> intel_dsb_buffer *dsb_buf, size_t size)
> +struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device
> +*drm, size_t size)
>  {
>  	struct xe_device *xe =3D to_xe_device(drm);
> +	struct intel_dsb_buffer *dsb_buf;
>  	struct xe_bo *obj;
>  	struct i915_vma *vma;
> +	int ret;
> +
> +	dsb_buf =3D kzalloc(sizeof(*dsb_buf), GFP_KERNEL);
> +	if (!dsb_buf)
> +		return ERR_PTR(-ENOMEM);
>=20
>  	vma =3D kzalloc(sizeof(*vma), GFP_KERNEL);
> -	if (!vma)
> -		return false;
> +	if (!vma) {
> +		ret =3D -ENOMEM;
> +		goto err_vma;
> +	}
>=20
>  	/* Set scanout flag for WC mapping */
>  	obj =3D xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
> @@ -48,21 +56,29 @@ bool intel_dsb_buffer_create(struct drm_device
> *drm, struct intel_dsb_buffer *ds
>=20
> 	XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
>  					XE_BO_FLAG_SCANOUT |
> XE_BO_FLAG_GGTT, false);
>  	if (IS_ERR(obj)) {
> -		kfree(vma);
> -		return false;
> +		ret =3D PTR_ERR(obj);
> +		goto err_pin_map;
>  	}
>=20
>  	vma->bo =3D obj;
>  	dsb_buf->vma =3D vma;
>  	dsb_buf->buf_size =3D size;
>=20
> -	return true;
> +	return dsb_buf;
> +
> +err_pin_map:
> +	kfree(vma);
> +err_vma:
> +	kfree(dsb_buf);
> +
> +	return ERR_PTR(ret);
>  }
>=20
>  void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)  {
>  	xe_bo_unpin_map_no_vm(dsb_buf->vma->bo);
>  	kfree(dsb_buf->vma);
> +	kfree(dsb_buf);
>  }
>=20
>  void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
> --
> 2.47.3

