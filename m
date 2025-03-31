Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68579A760FE
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 10:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2D010E39F;
	Mon, 31 Mar 2025 08:11:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oF6OcB4q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBE810E395;
 Mon, 31 Mar 2025 08:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743408667; x=1774944667;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=Yq4cB+GrEViBldly0WEUVhhEhL/jkM4JyI80+Ph9V4o=;
 b=oF6OcB4q5QPvWmfXrCqDLMupuQn3wyNnz+qpj/yA7JcATGLzBxuH3Y+A
 8F0z4w9zFlRCT9g16q+7WuOnSY0FzccO43NNqzpe9OXpPVyFinMaPqimT
 ztqMQurRNcCYMNK6uuxGNxVRVuvWG6hHa9kGCMYq6SRRf0aPDywk5l8ze
 RFEk5kQmfQfmXb+dcvs6DFJF5yzBRhGOTW9hS5UP+MEcV9mOeb4hoOdBD
 v9+zie8tEz181AtDOKGLK9Ld5uA0QdJhmWhWgIg/6mDQl9qPTI+oQA2Gr
 9zNy293SjsD7Mzcemk0qnsNjyvERcaPY/CNe6C7Xq9P8V85IA2ral2YVD g==;
X-CSE-ConnectionGUID: HFROQgpYQUKtIMwmmLCBjA==
X-CSE-MsgGUID: 8i2NqLq8Ruq4/33VPrTSpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11389"; a="55345842"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="55345842"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 01:11:06 -0700
X-CSE-ConnectionGUID: 1xe4/17XReaSsqWsJ9jipA==
X-CSE-MsgGUID: 3N3GnpErSUu2hYe4BiybVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="149198835"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2025 01:07:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 31 Mar 2025 01:07:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 31 Mar 2025 01:07:13 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 31 Mar 2025 01:07:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QkH8H2SB5mobSY8CJPZrCRfYJlWxxvSZ0Ck+4nA24fy+IUCcRhvTPRXr2A6hW0icr/mTPAUnPFobZ0n5AW70oHPdCUbjHOXh2KN3xVIQfO7/qiAtrxcVy+MpFfbKQDEzo2Ztlxcl/0Z0WJ2qq8gAtCyXG5Xyqpb9jPN0RFyfEnqr4Dq9I9zFP+9yeRUUdQOYQkTeOdYQ4gE4p/g/J0x0xaQ1FMOTRwk6b7hmM33Q/EWXBQYm3SFjXoJH+6Kq4p5SAVqqp5f8MNUIqtyhQuinKKQSo/YRy+DmBIRCzuPiQbgX2t0SAFBTzPuh+NeXzTm//mHGPIQjNfq4cfoh/z6Q9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iygINjFIU9VuA96Bl9wxmZ2jCb6bw0xk/8FTdYE0lI4=;
 b=AFiUPZsT6RkNKF/TtmftCDiAyIr1FbJxV2mxst8lR0nc6iI1jwp8D646dT+USti/nQaQenpVXQj0YmH2zoZr060yWK4vmcpoouCMGZjR1lH+W2E4U/+VqZN4QwkMEorbxD+CrzRLaRU+lBDpJhK/RMFEgzcqttKb4S+CI5312lzacY0NTUn0/J271vLBCcvobySUO/KkHcvAvqVfydoOx/zDR0Lxoi/Tgm6AgHeIFeu+bVtQ2AisbeNTof/N9ZAjq+wgB0vHnOLAZcoqNd4w/3g1Yb3JLcTCF9XBt1ZCYbRLWZl84qi0yvnCq1JDYiQdRk2l18Z8MxcHWusaaMUipA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by CH3PR11MB8341.namprd11.prod.outlook.com (2603:10b6:610:178::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.52; Mon, 31 Mar
 2025 08:07:10 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746%3]) with mapi id 15.20.8534.043; Mon, 31 Mar 2025
 08:07:10 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Ville Syrjala <ville.syrjala@linux.intel.com>, Vandita Kulkarni
 <vandita.kulkarni@intel.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>, "Cooper
 Chiou" <cooper.chiou@intel.com>
Subject: RE: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
Thread-Topic: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
Thread-Index: AQHbkm0/3weI5ZtOJ0S4UnI4Q2puRLOIaz0AgASWnQA=
Date: Mon, 31 Mar 2025 08:07:10 +0000
Message-ID: <SJ0PR11MB589490938579B493076E42D2F1AD2@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20211217100903.32599-1-william.tseng@intel.com>
 <20250311100626.533888-1-william.tseng@intel.com> <87semx4gsz.fsf@intel.com>
In-Reply-To: <87semx4gsz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|CH3PR11MB8341:EE_
x-ms-office365-filtering-correlation-id: 759390c1-a565-47d8-d266-08dd702b09bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?GOGDjKt6Eg29TBnNTkg6hAedMEh7orIStHsi84/wbcHNeUsD6+DGsSHTw01d?=
 =?us-ascii?Q?w7AN8CFq5Rdfb5LcxJxz6wF2DZrnNLjCziEcftVysKz19fBLTgm3Rk9CsKq4?=
 =?us-ascii?Q?7Fp/4cJ9cCStcatiEMInkxw7Tqe6/qs6Z6/Bhz6lhDpd8CS78j+o9WX1B6Yw?=
 =?us-ascii?Q?ZIQusai7FdUcRB7xY4iTzY8Uy7zoC6KRFRwvOKsfAdBEzuTegB7fCLyX7wuF?=
 =?us-ascii?Q?IWNzzRq0VvoMCF0cf3aF9uQ14e7BLrYGDl74aYCGzrDUUZm6DtS4962cbZnl?=
 =?us-ascii?Q?Uj62qi3rlQv/CC/EUIJzFZnVeOCNuVXCOsx3KBxMdY8TanRHAy5wFD43v0uc?=
 =?us-ascii?Q?5ERxSV2/tlPVvOlBHmEdMQHoyqYvhEV3//2VVUIgQ1f1vgaUuym7kkKl6huS?=
 =?us-ascii?Q?lhbv7Z2HVsWF9qwPNMpBW6e08XydDTM0nNWjOMI5yIrUXxjjNS+u9TieIii9?=
 =?us-ascii?Q?6WyhlAkuZu+ncowWqaHRpJrAdaJGMuEOREZktCIpEzZKSfvq5U7xUIwXsMV3?=
 =?us-ascii?Q?+Mm9SoTi9W5GBLdlFHoREQ8VhRsLTnnapZoJfkjSn4bdw7Y4HsvLerLhbD9/?=
 =?us-ascii?Q?lJxUkpStWGzeUH1Dr4vgJhQP4Fdj2d8vjrN/4KuZd8+AP4UFI1wNHCpGi8zh?=
 =?us-ascii?Q?RF/ya1+T9+2sHeEc80G8tVZ6PYGB/tWnhcHoF/rtUv4zlLtvTn0OaKOATSCY?=
 =?us-ascii?Q?Ds3oT+EA4ISgB9KNQeZ1PxDF7sDchLK6SS/Ax+/w8uzio8U5zGo9pZ0k5WxR?=
 =?us-ascii?Q?APAWx5jp8J9BB5B34wS/xuzljmavmlgJJ9EIDj9VYwWggmYSOagOscn/l6v0?=
 =?us-ascii?Q?15d5e+k+zP3zDG4C1b+jAK8lwn51jf5g2vYZSKmLHYU2FM/YhyqB9/NO+2nP?=
 =?us-ascii?Q?x39fbQ9yQ91GOzT6HG7P81q9RSRa8Hyk5ZzwMBqUELJLSzPhSSgtfa31rImw?=
 =?us-ascii?Q?rfpyTHViiAZ+NxcbfcLBxXZ76KRSa5Tek5sOTIw+Ksfj1LT1EjisBbqtvIQX?=
 =?us-ascii?Q?enUS+ucrC9/D0VA9hJcjIx8FWLaJOFgJ/MuRHoRO7+k1nA30f4ZtK5KQW7S5?=
 =?us-ascii?Q?t8IqM/12WPsF2VRC6wMVfkJDVPIsMadLEeVbemQqq1Y5w20tOFJW2KU7XSxl?=
 =?us-ascii?Q?P68HdDkTd/HQqbL7cs/MCGyKNB1EDRDpD4ocGddM9cWyvBVwVOkGuJAk87C+?=
 =?us-ascii?Q?tWXW1IOITAYWM9uktQKPK+31ITRRFD4v/gm2vWxgwiyJbfu98EKnGSwuCqFn?=
 =?us-ascii?Q?07uRIgA4kuO4ehNHINkbjUDvDckuFxMpB2JRrVr/9XPYw6NTuhSi90PPx3w4?=
 =?us-ascii?Q?yzZhyzaX8tk4YsRiPxfKfOmXhM8sq8cDkZEKvWfsUJCQ2Db4N1ECzUAmEOI2?=
 =?us-ascii?Q?VHGLa/a4gkApLWzz1MH6ySBIZD+v?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tcui+UBOW9nbaQZlrjYkiVtavNtgeWoCIsaHjiyuIxcNfr69VczV1hUAlr6O?=
 =?us-ascii?Q?SanEJnS6pvGPzzeffb14o2p3XvmOm2KHbxVTLZtvwd0lj+zzu+yd8wm1fstr?=
 =?us-ascii?Q?p2rru6bmnflpSDlI1jiSP7j3y4ThtsMQxyGZHwfeq8XVxrEU7TUWU4sWa3p0?=
 =?us-ascii?Q?5AfnN5KZhgqq3Ix0YWyUBXwjzQpOKdSlVJYrZThN+XRRgrGwVuBOj0pj+Fuo?=
 =?us-ascii?Q?4rOSKG1fQj5F960rc9RzeEsoHtPRAB7Axa4CDKWpglk99Z5jMk/L4FKfbFfY?=
 =?us-ascii?Q?i85QKzlJ7EwXXkdvzSWn4h1+A68IFrJgVXH5DglmSZ67qNo0SZM4rvqi23yb?=
 =?us-ascii?Q?Ciyk32QHXyZd2h5YqVPk8zsk2fMMgSATjo2sB/e3Ho1P++pWY7Ub6TPwwsnl?=
 =?us-ascii?Q?yu7/51BAb/RB7VNaA+NlAOBYTxdtI36KjgwVobTWR+SNBPklWi9YTUlRlT6E?=
 =?us-ascii?Q?hCt08Kv2DyxokR4VX77PVIJHRUKQwhjCjQ3kH4fZAKrlpsdZJOK4d2qsgoT2?=
 =?us-ascii?Q?ZdJ0xersrs7vBnACwdV34ANJibjzkBx9fM5KcwIV3HyRCXRecMOweS4y9APQ?=
 =?us-ascii?Q?MOdFcOpzemYfQnPAjSBM3I/OV9BHhiMbnRE4sUXo6FR962wl1mD0stdfIt9v?=
 =?us-ascii?Q?wkwYM9vaOeTBOpVkYnKX1cInEjWZQPuitgpYCkoDEPW46z4W+V9R+jppG8fU?=
 =?us-ascii?Q?oeVK7aRmOfLAXUoh6xMUCj52PifwaRLEqkhf7kNS1Swdx17/otuQxOUXLF3i?=
 =?us-ascii?Q?6JreABxFrwYHiA+D0NcE/ltiiZkbG+2HLXwpXq4Y+FaaLd81XIqREJFdvv3i?=
 =?us-ascii?Q?hQ8vFkCorcdeQlJTwV6ee+i6z237uUqDjXkxc5rcqSdNePvX8jwTsLmZ23Yy?=
 =?us-ascii?Q?N4DEbbrZDZ302lZaQj+otOLWHsAMRCAV9JXN7rfLJMkcTYqOYJxlwU5nnR/A?=
 =?us-ascii?Q?k5MSCl4RwUj8eAhLmhokp1yLcBJACBVi17PjuMiT0G16T5qJAaVikdNRik0+?=
 =?us-ascii?Q?LxtNYi7FfaIgnOEfHmv812+F0xGTdgq+Wo6NgewDW7xlwTRyjPNvWjAQq5YA?=
 =?us-ascii?Q?bLUv7F+AjZuEPFOp4TxMyQrZkjafYGJ9RG9Ds6y85MdltYwL9uxXe9EvLPcH?=
 =?us-ascii?Q?uixR0su1Y2vpwRyZ6NKuqhqFvHVcQtzukrTgOBWL0sUT6u+o0Exu1qhWtLLo?=
 =?us-ascii?Q?Vliyh5MzvRLYxcT6lyDVpVgaLpJDQ0gNwPZlXgiIXjw3IdzTC4qW9yCHTc+f?=
 =?us-ascii?Q?0EgrO7sZHrNlLg5BdvQKRFPceqvP3kHIDquJxemo5Ki51qWxHr2H/+nsob0N?=
 =?us-ascii?Q?dq9mBms7BZTp9NEIQ/BkcU687SC+EfMa2WP1X1R9EKxV95TM5g7Hlu1V9O0W?=
 =?us-ascii?Q?YFEcSSpyMD/roceqazcVHNvXMJ7D+uoUgEY4MgCPuHR+c1m4b5dlx2BCFsFS?=
 =?us-ascii?Q?ic48sIknGpzwo7w710VbbIhaSf0uaH8Ywwxt1KKMC3QGy/wF0ztlhnFy5LGK?=
 =?us-ascii?Q?TsYypKrqHHKXZoQqB5C0nefdG2UCy8No1AXJDDT6EpPTdBxGUG0xr8PrtH57?=
 =?us-ascii?Q?21uoB3Yv2KDEE2aYDnN4wDfVYok3ohnIaGNSD7Qr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 759390c1-a565-47d8-d266-08dd702b09bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2025 08:07:10.5358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9iJF8sJTugdmeIk0F/vcFVju2fa6AId+Zv/IZQXLAhxUkZM9Sh+cqguqxhLI1DqNtvn2rdLq15I0/uo9fD4jyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8341
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
Reply-To: "20250311100626.533888-1-william.tseng@intel.com"
 <20250311100626.533888-1-william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, March 28, 2025 5:59 PM
> To: Tseng, William <william.tseng@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala
> <ville.syrjala@linux.intel.com>; Vandita Kulkarni
> <vandita.kulkarni@intel.com>; Lee, Shawn C <shawn.c.lee@intel.com>;
> Cooper Chiou <cooper.chiou@intel.com>
> Subject: Re: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
>=20
> On Tue, 11 Mar 2025, William Tseng <william.tseng@intel.com> wrote:
> > This change is to avoid over-specification of the TEOT timing
> > parameter, which is derived from software in current design.
> >
> > Supposed that THS-TRAIL and THS-EXIT have the minimum values, i.e., 60
> > and 100 in ns. If SW is overriding the HW default, the TEOT value
> > becomes 150 ns, approximately calculated by the following formula.
> >
> >   DIV_ROUND_UP(60/50)*50 + DIV_ROUND_UP(100/50))*50/2, where 50
> >   is LP Escape Clock time in ns.
> >
> > The TEOT value 150 ns is larger than the maximum value, around 136 ns
> > if UI is 1.8ns, (105 ns + 12*UI, defined by MIPI DPHY specification).
> >
> > However, the TEOT value will meet the specification if THS-TRAIL is
> > set to the HW default, instead of software overriding.
> >
> > The timing change is made for both data lane and clock lane.
> >
> > v1: initial version.
> > v2: change clock lane dphy timings.
> > v3: remove calculation of trail cnt.
> > v4: rebase.
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13891
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > Cc: Lee Shawn C <shawn.c.lee@intel.com>
> > Cc: Cooper Chiou <cooper.chiou@intel.com>
> > Signed-off-by: William Tseng <william.tseng@intel.com>
> > Acked-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>=20
> Pushed to drm-intel-next. Thanks for the patch, and sorry for the delay.
>=20
> BR,
> Jani.
>=20

Hi Jani

No problem.  Thank you so much for your time.


Regards
William

> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 19 +++----------------
> >  1 file changed, 3 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 82bf6c654de2..6cf9c9275031 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1846,14 +1846,13 @@ static void icl_dphy_param_init(struct intel_ds=
i
> *intel_dsi)
> >  	struct intel_connector *connector =3D intel_dsi->attached_connector;
> >  	struct mipi_config *mipi_config =3D connector->panel.vbt.dsi.config;
> >  	u32 tlpx_ns;
> > -	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
> > -	u32 ths_prepare_ns, tclk_trail_ns;
> > +	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
> > +	u32 ths_prepare_ns;
> >  	u32 hs_zero_cnt;
> >  	u32 tclk_pre_cnt;
> >
> >  	tlpx_ns =3D intel_dsi_tlpx_ns(intel_dsi);
> >
> > -	tclk_trail_ns =3D max(mipi_config->tclk_trail, mipi_config->ths_trail=
);
> >  	ths_prepare_ns =3D max(mipi_config->ths_prepare,
> >  			     mipi_config->tclk_prepare);
> >
> > @@ -1880,14 +1879,6 @@ static void icl_dphy_param_init(struct intel_dsi
> *intel_dsi)
> >  		clk_zero_cnt =3D ICL_CLK_ZERO_CNT_MAX;
> >  	}
> >
> > -	/* trail cnt in escape clocks*/
> > -	trail_cnt =3D DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
> > -	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
> > -		drm_dbg_kms(display->drm, "trail_cnt out of range (%d)\n",
> > -			    trail_cnt);
> > -		trail_cnt =3D ICL_TRAIL_CNT_MAX;
> > -	}
> > -
> >  	/* tclk pre count in escape clocks */
> >  	tclk_pre_cnt =3D DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
> >  	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) { @@ -1920,17 +1911,13
> @@
> > static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
> >  			       CLK_ZERO_OVERRIDE |
> >  			       CLK_ZERO(clk_zero_cnt) |
> >  			       CLK_PRE_OVERRIDE |
> > -			       CLK_PRE(tclk_pre_cnt) |
> > -			       CLK_TRAIL_OVERRIDE |
> > -			       CLK_TRAIL(trail_cnt));
> > +			       CLK_PRE(tclk_pre_cnt));
> >
> >  	/* data lanes dphy timings */
> >  	intel_dsi->dphy_data_lane_reg =3D (HS_PREPARE_OVERRIDE |
> >  					 HS_PREPARE(prepare_cnt) |
> >  					 HS_ZERO_OVERRIDE |
> >  					 HS_ZERO(hs_zero_cnt) |
> > -					 HS_TRAIL_OVERRIDE |
> > -					 HS_TRAIL(trail_cnt) |
> >  					 HS_EXIT_OVERRIDE |
> >  					 HS_EXIT(exit_zero_cnt));
>=20
> --
> Jani Nikula, Intel
