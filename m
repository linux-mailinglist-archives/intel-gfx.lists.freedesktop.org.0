Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBED9938D2
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61DD10E0BF;
	Mon,  7 Oct 2024 21:14:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="adApttss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4467310E0BF;
 Mon,  7 Oct 2024 21:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728335686; x=1759871686;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OmzJ+Nfuf3R2vGVH/vVmAwIs9VtpG+x38vJhwLIC9dU=;
 b=adApttss7avKo3eXBu9n4/vUSZ5pUI87KU+0iGKOU2hwWbnlHLMC2L9Z
 Wu+r1+GzhH1HpwczGv5fzZvgcPpu3xxMvYjCdbvDJ2qjVGnHn3b/arBMb
 M+4DRfvJ6kyTGwVOVRd4dbXgyeruqgXSuqvs7ptQy7C6quyy1e4Kd1Udg
 N2GlM398FqsQPjLFgoyd5fXc2QuaYOUmr55/HuKBEZ4SQHa0ey/E++Tp4
 g5/0S393PeofDj/MDyzPRm+KWb8UO+GPQieWksJuRT463gJWTjJayr/N7
 gggK6PJ0ZsLdaZm+4y99uOnvv3wPCz6eUJOI2TOA6axqoeAxSeoYOqfgV w==;
X-CSE-ConnectionGUID: yUfhHHkNSruqprhR8qdNIQ==
X-CSE-MsgGUID: z2+YT2ikT22yhC4NzmIjZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31203042"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="31203042"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:14:46 -0700
X-CSE-ConnectionGUID: uwjzonHXSiC5xs6jgV1VxA==
X-CSE-MsgGUID: Dlw7aYGLQJSLnO9mraSG/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75720622"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:14:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:14:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:14:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:14:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:14:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mD58B1xtC79YrDyJVQEskuFj3iBMY1qqmsE06xY+kcrCSTZ6IXUTdD2yT2PL/bJdY3O/d3gcsVID/3D7gGRQseBW/I4ExqS3geyg6nGlLNpHIMzBZ+H3L9vAz1KIvni6XJ8pytowgFaqXv72kvT50VGjPDxHZmjH4BdN+TV4MlSIuBD1KL/SL0d4pnnHNQqshO/EOxTA5CMEhDJhEYZs/cEyqs2lN76pdk6upXLJLgXcRI0QjHi2BFq9ccPWXz6vXOsbbiRhWRk5ZRYfb3o8t7EtFJG0ApEPTO4f4iAwbkBSZ6qbd3p1hi2OCvJu7JM9HEOIFQAtuiHzEZjr+xHaDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F9V+tZACxT0ErikA1Ry2e28wTS2u/GqBY4U/S76RdFU=;
 b=CMnetAZgva8ZLgaDe/wIIKf4J6PtqRaBdjoMifNOX2tN4boefNtB0Rcy+BRwk0TeR0kBuDRIt5gQ/4m3lvaMKxTjJsM2zN7nroxz4mWI07l8p6Vy2uLA3E+r835OupXGoh+dRSixga8yHxp1kNSWqj7FU7S05xGslrnQlRtG/YtztmQnQjy7cHhWKGNWhBsy2Gfkl2+B7s+wAfAks1Tv9wHB6u8YJQkt9prFQvsjmQFWCUq2p2XuJPRLRdE/RkWGcZTuy3rRrRiHIxiTDT5K2hwgIftDc1g+KDm5NUEucPaYT8z2po2eD0mExSZOTtrbd9g+GjalHdFq3tDOLFppcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:14:37 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:14:37 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 13/31] drm/{i915,xe}: Consolidate display suspend functions
Thread-Topic: [PATCH 13/31] drm/{i915,xe}: Consolidate display suspend
 functions
Thread-Index: AQHbDsJy7v8YB8+yWk2QbbaHlXL9abJ73S4w
Date: Mon, 7 Oct 2024 21:14:37 +0000
Message-ID: <BL1PR11MB5445A7AE7F159BF20FB9CB8EE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-14-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-14-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|DS7PR11MB7691:EE_
x-ms-office365-filtering-correlation-id: f81cacd1-6bb6-43f5-225f-08dce7150ceb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ce06lRlAoh84L4z+O8narTcANSZXZsn+Df2tPBx0Ei2ACu1+5ot7rv3Umv84?=
 =?us-ascii?Q?DfXfuO3ZaqLnfvNBn5lqA5l8T+OxYAlkALz/BdLjPhkd5Y67uD64st8pG0tj?=
 =?us-ascii?Q?OuvVsnJWKIEbjUtldrVoztLDXyPq1pg27qKUyRNEgmP9HoIRKzlrRdSnJUIi?=
 =?us-ascii?Q?XGC64T5YW85P4y0nFeebH3bgiUtu/omon+s/yFMq8bsM1Hq80YmQqkqAo2wj?=
 =?us-ascii?Q?3fyyIg8XCFJZjF0rDvRUarnME4PngOhnvKSU92b27XVm7TPJQ4lRZBUdISh3?=
 =?us-ascii?Q?CddhKz/9Z7hCuvq3VNNbCpHikhqoyakl4Qhk5WGjCCtNSo37XpPirG/MTPqk?=
 =?us-ascii?Q?yJVN7+RP68NmRKxfN32WuMQm+WCvdWzD8sT6i2zw1oSh2iiRbVUBZgCOi39F?=
 =?us-ascii?Q?5p80cx1UnQWLx6WwOdjSmd7iJJmS45zNhOAH4SKvp5/xXwH0Un+HIyXvzKAN?=
 =?us-ascii?Q?B22fppKZZAtVaIDqgPCVneBghkxpFLAoiNn8m+IzNyS5E5Ag+vl8UiNkAKSC?=
 =?us-ascii?Q?NpkDY/FnwBOuMSDliMhzwgw5dHmfC3JbDuG9jK0KOwKhGDv6HmorDrcdao+L?=
 =?us-ascii?Q?cQxD6N1O5hBIo2aevu64MK97cZ1PI2OwMK8yyc1nrKi7U7Npy2YGSbcCOgIU?=
 =?us-ascii?Q?dVl2WTqLAypg1WBiHBt2LNdAh3pvS9PQ2bJLhIZ0LelGH5SUfj2R501catu3?=
 =?us-ascii?Q?XUGgGsbF7MJUvHPLYROO/94hf+RwojTwlKs8teanBA0EnxDqKsbBoC3eXs8B?=
 =?us-ascii?Q?q+f11m05GSp6ZbjEElM92TslyHb5NIEA24O1cjvzdaXNvQqTpPAnb38MeAZn?=
 =?us-ascii?Q?AezpPSbxhylwANBwlyoxzDi0KhqwYosCsXS3Wb1jIMh6BJUsMGGVE4HGNznT?=
 =?us-ascii?Q?5IYjzieT5FvRhYtfCzI1mk76IujRAIZoSGqpegmthvJXMzbRVKsAlzl5lqrp?=
 =?us-ascii?Q?uSAbNSljk4ZkIKsuT//YXIjjgIWdcQOoUnFS3DVtlsk1t76tHArBk/IwdN4V?=
 =?us-ascii?Q?01OtatuW4tJLzRdE5zHn8Xlvu1cIZjaCAryzJgbOXN4eJi0jBXYSCYAeQ2K6?=
 =?us-ascii?Q?5OBJrmbHXo3sRI1dsFSCGzP5Ohrm728s0wMpZzN0ktvYnbCpi9TlDbC57rZS?=
 =?us-ascii?Q?4GxBzaljJAuMkjUjpvsCXN4E6joB2msOpHqJSp4NFespqU3gGOZfAYf19KBY?=
 =?us-ascii?Q?NykWEB1Qn2mX3VmTP9YJAz6RGTZ+uA+pE7idCgHDKo5zfIDsSlwmgTUyf/gL?=
 =?us-ascii?Q?Qp5lRnEsP2Eu7Tm8HW0TtwW26r0q7Be5aJFZ5vXA/3d+H7GblOd3Sm35JD5K?=
 =?us-ascii?Q?aQsp1GOXYruZvWhj6q3DTuih2EjzpSoEYr6iupJS9qIcSA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ttXGxFz2MNAqCC9mTpSdC2rkCYrHP3NULFrTEaK67SqdhpvuuV2HqDdKaKY8?=
 =?us-ascii?Q?NByV73AKu3hTzIU3XxH0rWet9ObgVMRt76YEZe7DxqKuuOyDd7ejbAwg9tXn?=
 =?us-ascii?Q?GEiUeDZVNuCk5KxwpOoowo4nTRGn5igsDViB+Uua2Dhfj4eAzVD4Jphq3AYn?=
 =?us-ascii?Q?RH2xJ5Hy2uMR9TbWA9TkpP2WxdZPVeMmn+ebylwyXBS/Qo8YYcQBzUzcRB/T?=
 =?us-ascii?Q?fetL0ccE1JJAjHkuD3eqFHh2a8Gd6xKU4gx13v9KfFjW1R6JeM0en6CyTb7M?=
 =?us-ascii?Q?8N7w8Odk93PVeRTFst23riUCgnibXp9SYKeAPEXBzMwhtphfjg+JCvGuT1WL?=
 =?us-ascii?Q?XdCPH4nOn32e1gEyv/MqQKWBL5u2qU5UEKdaN+xYCykCB7xYoEYIQLmq63i0?=
 =?us-ascii?Q?Jt0E/LBK8DdpVHy8VYQQ+xyP1bkrBrHp+o3DUMnvo+0mLYInWKtdxLV5Bi7Q?=
 =?us-ascii?Q?Xk7wSngFnC+dgD307BRoQj65JEHgHb3NOGcpE9ZJDRqjno3cBvMwq4d7ClV0?=
 =?us-ascii?Q?/mOAfEM02kba3mhn36elbAE6X5IlCkPAJKtvjtSs8AFcK2sXXWaI+SjO3QAa?=
 =?us-ascii?Q?nYamnz/P3pZZTBblPRbeO+B4x2i4ijL6+ifW7TLS6G4ULJ53fwoktqaD4Ppm?=
 =?us-ascii?Q?905X3Z+pbF3zYViXefaHaQETEV3ck0pXyWfTZCyvZedv9M0s5cBmLuxMocub?=
 =?us-ascii?Q?GhiXJZIf4XC/o5UWg95jRJLVrGWk06qL1n9U/MPGaxukRgHSh1IpTZDjCm4d?=
 =?us-ascii?Q?S5tat1IKdowSFV1C2Jq12XlBtfCmyj6FldGzOg5c2RkLVk1RF9TJf+sNVE3C?=
 =?us-ascii?Q?e9llyTve2p8wHSqUFfdq13ckP+hZo7bY+rFJFlq9Y2l+IPe9lrQUa+IRvZ+H?=
 =?us-ascii?Q?aO67DixRFPNvR59S2Fal9FNhpP/e3XJkpbznBhXytrocLvzN/ne2VuA6jlU6?=
 =?us-ascii?Q?irbRu9Ydhux0uKyh4XK24P5ns1G+c7IQmC3hCSQyNdXAuDCr8tHeKWl8cZiZ?=
 =?us-ascii?Q?MUoFDWzFmUC2NNTnqgo/L8P9ZCo2W30nWNgI5Qjm+vWAU7Fz/thPigo34IGt?=
 =?us-ascii?Q?vmdCKc6lmaorkxVFuTkLyH1oOaxvKfF8wYWR8mRWM3JrbNbLWxi5KssQwMe6?=
 =?us-ascii?Q?q1X7yoPE0B5dsvxPxgUiRMd07xeFYkqCx7123KJGCU++P1D/oAv+FA4DHKX/?=
 =?us-ascii?Q?AfINkuYAO8QrxHf4O2vtMrfozO7Y/99lalHP3OuFl9aNSHjfy7NTxtyWl/4G?=
 =?us-ascii?Q?jiaWdd5LDWeFGiuziq46uhT/vzgc/hUq0rmp4GfCPP5nfiyT0d7HLNOyCSsE?=
 =?us-ascii?Q?5+d2hnWUDT6WedTrwaF8E0gDPqrTdMxnk2T+l5Ec7pzh1UBnA2ydU05zt2kx?=
 =?us-ascii?Q?ukS1cpIW0G/32aBxXglMmx1KWyYO99gT70VrbrwuibZ9mw8raIgl4+pm2r/V?=
 =?us-ascii?Q?PiOFk//BpFut0SKS//aJ4u8WH8oly6L+LfKZTycTSj4TV/utRo29Nv8I1mUO?=
 =?us-ascii?Q?FEChiNyB1HD+XS718bYJAnLisyj+DsOpiRfspzCOCO+5SloiSLmdPO63U5Sr?=
 =?us-ascii?Q?QALILLDkpPVAfUtr0a7tWN1de3kQaDCYyPbG5CDg5swko50XgWq0aTbPdcX1?=
 =?us-ascii?Q?Cw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f81cacd1-6bb6-43f5-225f-08dce7150ceb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:14:37.6614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lGMQosd4ZHN+riVpeE5XG0L7p7xw7Sp8OoXFuYTC00Epj2SrT9Qxsy4Oz1A1moh3eJ8xOqkuI8Q+UngsjWFHC9+uhUCHDR/9UPm2cRGXAdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 13/31] drm/{i915,xe}: Consolidate display suspend functions
>=20
> Same sequences are currently executed by i915 and xe during
> system suspend. Consolidate them in the intel_display_driver
> side.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

This is the third patch that could or perhaps should be split into
two patches (I forgot to note it in patch 11) by i915 and xe.

I won't block on it, though.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  .../gpu/drm/i915/display/intel_display_driver.c   |  9 +++++++++
>  drivers/gpu/drm/i915/i915_driver.c                | 12 ------------
>  drivers/gpu/drm/xe/display/xe_display.c           | 15 ++-------------
>  3 files changed, 11 insertions(+), 25 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 86d6ebf0c82f..f509ed1503c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -670,6 +670,15 @@ int intel_display_driver_suspend(struct drm_i915_pri=
vate *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return 0;
> =20
> +	/* We do a lot of poking in a lot of registers, make sure they work pro=
perly. */
> +	intel_power_domains_disable(i915);
> +
> +	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
> +
> +	drm_kms_helper_poll_disable(&i915->drm);
> +
> +	intel_display_driver_disable_user_access(i915);
> +
>  	state =3D drm_atomic_helper_suspend(&i915->drm);
>  	ret =3D PTR_ERR_OR_ZERO(state);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 4fc9d8bce1fd..12639fa232b3 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -43,7 +43,6 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_ioctl.h>
>  #include <drm/drm_managed.h>
> -#include <drm/drm_probe_helper.h>
> =20
>  #include "display/i9xx_display_sr.h"
>  #include "display/intel_acpi.h"
> @@ -55,7 +54,6 @@
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
>  #include "display/intel_encoder.h"
> -#include "display/intel_fbdev.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_overlay.h"
>  #include "display/intel_pch_refclk.h"
> @@ -995,19 +993,9 @@ static int i915_drm_suspend(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_display *display =3D &dev_priv->display;
> -	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> =20
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> =20
> -	/* We do a lot of poking in a lot of registers, make sure they work
> -	 * properly. */
> -	intel_power_domains_disable(dev_priv);
> -	intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, true);
> -	if (HAS_DISPLAY(dev_priv)) {
> -		drm_kms_helper_poll_disable(dev);
> -		intel_display_driver_disable_user_access(dev_priv);
> -	}
> -
>  	intel_display_driver_suspend(dev_priv);
> =20
>  	intel_irq_suspend(dev_priv);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 98ff603a1f84..45949b095d7e 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -346,22 +346,11 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  {
>  	struct intel_display *display =3D &xe->display;
>  	bool s2idle =3D suspend_to_idle();
> +
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	/*
> -	 * We do a lot of poking in a lot of registers, make sure they work
> -	 * properly.
> -	 */
> -	intel_power_domains_disable(xe);
> -
> -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> -
> -	if (has_display(xe)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(xe);
> -		intel_display_driver_suspend(xe);
> -	}
> +	intel_display_driver_suspend(xe);
> =20
>  	xe_display_flush_cleanup_work(xe);
> =20
> --=20
> 2.46.0
>=20
>=20
