Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12785A33A4F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 09:55:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F33E110EA2A;
	Thu, 13 Feb 2025 08:55:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fG5qNb92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B23B710EA26;
 Thu, 13 Feb 2025 08:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739436918; x=1770972918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FQEp6T7Goyv/+SQG/pzcH+XDG/0w3ApHLnO0q78086o=;
 b=fG5qNb921Cl/vRyBIn07tjGbJwyKtzoNentmYl9wfch/FFq/CbkkXHv/
 0HM5JSt41rH1opXFvvjXOe+kn6H+IEpctvkaHstgPGcUIGoaHBhlgs36E
 Z9hJ5xLMF2xSSIM0I0oboVHWxfqNd5rYw2jx/QbjNA538GfhupHo1NLk6
 WS3WT2ZbOPUnoeVoow8LXngCdo41MkMxEIVKnSWSXOwBkpbagqSZx/X+U
 9aOd4rD/tX/4UQCFyZxi9R9kVDagEVFGoykZ6NPGpHr7yApVe5W18+tat
 UX7ir1oXOZOo12iOTNVneI8ZwKpDohkefl9foQrhV7myz6VE2W8UlKu2r w==;
X-CSE-ConnectionGUID: +/ncfyh0TfiedteyrSdIMg==
X-CSE-MsgGUID: zfOsQEXHTGa67NRq45uOVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40045909"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40045909"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:55:17 -0800
X-CSE-ConnectionGUID: 7+73ZN1WQe2kYWgOGrCyZQ==
X-CSE-MsgGUID: qOG+MiqjTbmoDgmOpfO5nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117187813"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 00:55:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 00:55:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 00:55:15 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 00:55:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eynzWACA+JJIbxjXgqY387YU43/HnqmXvFwfLKRlvlcuhMQq6P7dwvcRlOMqwIwcOEHsv4zDpRPL4NJt+UTBldixVF5t2TP7PwJq7giRsVHI7HpVYL6Lg+coXHVb8Z3OmDnRUPxj14PnSFmXyUKNkvLPzgwB/M4UAWNw6JIR8mTGfo7JgyPgiRXwfleDXszvlkoF3cD0pHHd8Jb/Qg5eC/J0VNuQDLzugF377fK5ekckT9PqwtAx3u4TjtXZXm/9FQtFkqaORcLDSWbI8hlBGnW81evdnc4oJt1onJ6A1K8bJ5Qe7eI8mQHppsFRQSvhPA0e2r7qDHoZm/nSVnatIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JySlTO3iPBn+4hMb4bC3Kj513PpNuoSc2EIblRe9edM=;
 b=E7db7PUrdvriaudNpiMRkZe+9wbbNw0V4M0gfSBN4b530lomnymoL6/OUu60mJgvN4bUJOeoCBTMfS5wfycnZ/nmmbDCoEYQg9M+UlpArmhC0dAT57/fZKNVA+cDShfwKJ/VYmCJ8aEg1gwNepX97wxeAsnCr2dLGrnmblFfNYY6csZdB8m2gDiHTb6AhIEJiTylE+k7fmWCTCXzQIDDxKfBWln5OsoT4wr/M2yKp6HTpMtxtvozAGoz+Xq3ZFcN8mpMdFNG/+NempYW6+qb8dDZoAKTMnLIe+2GEkrhFqioS+ietQr9BqJupE6Erg/IYmz8v614UhlELkce24h3bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Thu, 13 Feb
 2025 08:55:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 08:55:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 02/14] drm/i915/hdmi: convert g4x_hdmi.[ch] to struct
 intel_display
Thread-Topic: [PATCH 02/14] drm/i915/hdmi: convert g4x_hdmi.[ch] to struct
 intel_display
Thread-Index: AQHbfWxnxUe2efjedEWrKylPeWzfU7NE7jTg
Date: Thu, 13 Feb 2025 08:55:10 +0000
Message-ID: <SN7PR11MB6750DD603EED3A6002849BB6E3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
 <4fbaaa4cdab8ec020e5b3fb2f615b3c244c9da2d.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <4fbaaa4cdab8ec020e5b3fb2f615b3c244c9da2d.1739378095.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8035:EE_
x-ms-office365-filtering-correlation-id: 6e06c2d2-8087-474b-0844-08dd4c0c1f8e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JE7G3s1mVRf5qlcnmjIlgY583KjbiVXcANSid7VLT2nTv5zlc62F3FRedb89?=
 =?us-ascii?Q?c/nvpdyIowmFhWIZm8sm2f5/xmqf5/L1LUzClptjUFr0UAT2ae93Q/O4QilC?=
 =?us-ascii?Q?ESp4PJe03gbAym8lalpZbN1/TqSSWYtWXo/3qxbtiu+50bHLl/N1v+VU2CFP?=
 =?us-ascii?Q?OmAQmzoesF4LND5c0evukLfdWLohsYdnFUEBlmZ5YsHtEg4LC2TcSDFF60pL?=
 =?us-ascii?Q?TeeMC6dRtW6vYYhbaCdsoBX4VpyG29Qv65v8VJgjjABMjP079DvtrqF+emws?=
 =?us-ascii?Q?arMU7aQeQchZP5+Z2FV+yFhcottW7pLeFhUMhWBshnAlNKwWxivgqQ3PMhQa?=
 =?us-ascii?Q?IBzyyUOF7Jk2XMq26FXw4go3ENRbDY2KU+cpBXZBm1I0p9M6jOdVCVCb/jUn?=
 =?us-ascii?Q?pqg4Qs7LoKPGukMGBK+XqNoZRJ1cgp0h4fL8DQF3tcS0fwQ0yzVP3aGaAMqM?=
 =?us-ascii?Q?jGx/Y5guYdw+7JyPyUEUtolAxj5dChrbLeIB56N4SSHjsoKkbOyp5SkA60G/?=
 =?us-ascii?Q?JHdiIDEgHtsOytmNpbpMjB1E4hWZinjQ1TSvu4ptknTdioZktHbObAeUF2q4?=
 =?us-ascii?Q?vXtewJA/Edcc3e60J3u7QrCPBpC/UIQVJEnGnnDYE1OeBJ7hGalarsDvY+tn?=
 =?us-ascii?Q?mvrHVD85izccS6D6T8O+RMltrmD05bkPprfLSTipNkSvOIzSBLgsZPPAylBq?=
 =?us-ascii?Q?96u8gfKo58XypLp5u31uHozl8T9uriYBoFDviKT0bJ/nsr3okphgIvR+oZF5?=
 =?us-ascii?Q?K0PZJlxotfHZuz2GbrVx+eZCc2ZxpddwNHFK+OiUG4AZ22Pt0TN4xIvL4M7l?=
 =?us-ascii?Q?oa5ajDhEig22yDerBXkG7aW2r5uKfR3L8LQQEXFiwFebP4kcvDAPgBqRoYBf?=
 =?us-ascii?Q?7eQuww3lNR3qkiAi9znNeENv/ftDIA1PCrSSOxPxUGXmZJZFLM5JwQYRk03b?=
 =?us-ascii?Q?0jezKiqmHdFHcNzlCJlPjkTSOvT8Sb6ZBIyF3A8CeYMaxjK3mZCWed8xBBc1?=
 =?us-ascii?Q?GiuRznuFXeHIg30wbaAAE8UwYfVkzjXDCCwQpsMw53N/qHCUHK0HIiQfsCH1?=
 =?us-ascii?Q?q7E50J0c8OgdaO2+bQeysU1/STTI1bEIP/6O+pFV4sQR/uJ46bcEuQQoDQ/N?=
 =?us-ascii?Q?CoXm5nu4gvRLuFd2SMHe5jEOAcJ1IbRBn9ZAXk9obNMvuJtzOtVGEqxwlMeq?=
 =?us-ascii?Q?TMMbovu1FCQSqVRKuaZbLqJPb7FLSsFbkpCXIZDibTNzMe6BAYiJWrukVosy?=
 =?us-ascii?Q?CjKRIF49y0aefL6EG9Ce/cRKTNBXlhyVTuf8EDlDItB3qPzld5QvMpeL/78E?=
 =?us-ascii?Q?WGS7tlC/9Knoh7RpqGuMSZASQoI2FdJFMhHoVPEskiYPXFwDS+RucFjG5APl?=
 =?us-ascii?Q?lNZapUI2PXmX9EQjf4CjTlFZmTKggre5jN3j0J6shIIJyEYEwHSu8Dl4weq+?=
 =?us-ascii?Q?mly/IRKa2j3RoNKLCnFb0TQ6BfvTLKU6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KtcgxdDU/tmzPRtyX/0vEfpmj0ZDZSFT4iguqgo8Fq089JGlq6Ge/EPLEwde?=
 =?us-ascii?Q?kTKuNJTjc0RGWfKzgwKpf+h6HtaK03D5chkl6mshTThTe534TCoqFjVpFlag?=
 =?us-ascii?Q?Jrp50QDzzZl6pGvyJm5NCAaj5FqxFhKLrTo0DOSaovOEdTZPt5i/JbHq7XKw?=
 =?us-ascii?Q?4pxRPup30UNLsAkjMxorAtWa2sJOnqIZoX3p2cJeyMR6hdRUVocHDMr+fGR6?=
 =?us-ascii?Q?kCSjl/hSdqk03uosJl6XrNzjLpUEw4oSNHtmR9j3vl9TuyoP60I6Q2C9Zx6i?=
 =?us-ascii?Q?ByWnyWXXwLc0Za3RKMXGIM3CEIaaQiS+nccpm5KGS/mNKJ9PRKxubzayI+zn?=
 =?us-ascii?Q?rulX/pSOXgpoKSjBRZbcgWTzz+WM0sSiLIL8tvSzINBIHdq0N5OYQ1+hddBO?=
 =?us-ascii?Q?EQeP3tUEiam233dE8Pbdzu/cbw87SKzrhz82gBZaKg1LGzgFO3XYHjxM4GbD?=
 =?us-ascii?Q?Ip+sf1vtrwELNCOAKIAV+7JDsyx0NpyFEkSB1P1L2lHh5ER41QPy/bTfHxlP?=
 =?us-ascii?Q?CZRsW4Sj4eH9Fza5S1vxTyk4QdjOjft6JYKNoldm1uMb3ULl9puiQqWPq3r3?=
 =?us-ascii?Q?KNn0AjM6Tdseb0QUkY2xhl1JTnCRr3A8qYPnr+69mCB8tWMiMXyYyhbECUsG?=
 =?us-ascii?Q?6fOvsoy+0Lg4oJq9Wqij8fNKIpwHmDwYIyLmQYnwU9ZE3ViI39uwMVZ6zThx?=
 =?us-ascii?Q?iF4xGVUDPbzEgF4WzANJgtYI1KVkBRSIWOOQ6u0dm0nOrkHN0tKcYP9/+I1y?=
 =?us-ascii?Q?magk03P4/5GGuataZcc2hYQc5rF44HNiailLWpJohaEtGipK04C3g740w9n0?=
 =?us-ascii?Q?nUGkXSY+BLsGKlr6tbkVdDTMIS4IlrPRev1DbtFi8wHX/aApZU+u91b70n/t?=
 =?us-ascii?Q?1ayE341hoPglCSJ8o0LLR9dRCdhN1T1Cpy8cn0/o/x3z7skYjmr84v/wzKWN?=
 =?us-ascii?Q?8cypl34+jqCJJW0i5x1f6B98sp+qrHm2gR5Zq9ahirnJXMloKCkanEWRKOXr?=
 =?us-ascii?Q?cTcUuyoUDxP1LGq3nZQf1Z/Dn72Tqe2JdjDwULExjb8wh8ZpEszpGswHWgeQ?=
 =?us-ascii?Q?UYvuH5WPVHmC28QX6G72qS+QNH+5sjnEf98LLsvfQUmrXfJ0P5COX5+tRJDl?=
 =?us-ascii?Q?+X1yZJNC7kCITHSSaVT+zmlnP4ci5QU3APkIwAiAdMQOz4l09sc1vkg41W79?=
 =?us-ascii?Q?vTxXj16Ucp1kJKAEpiHvT4b1QPV61Bi1fUpckfx31g0e2N5QRh9nlhpub9+s?=
 =?us-ascii?Q?v6I4Q1J4Y4Qwk/vb7uuGKktezD5j0E7bf6oD40/uHAFutd09xgS6wpldo551?=
 =?us-ascii?Q?Dh/hqeKyQ9aUdudydCcWH8HmGbXyjXx7omkQdBZ5jc74QvPticwX6z/PHqY1?=
 =?us-ascii?Q?RLtBd72l1Nqcj75PB8U4j57XFHQQWZStgpfUqP6HmC69LsIsKTze6icYt42O?=
 =?us-ascii?Q?Khk5JWjobeTtagCS748Xxk6egw4wMXKUfkmDpj9Hsem7LaOmF2kzO8GWnN1V?=
 =?us-ascii?Q?HwRLM8+y62F3yp5ppWlixG8LqLCn5ZD2jxEtvXgsOPef7F4NBV1eMf/l6lT8?=
 =?us-ascii?Q?BS21KQZAj1eDEGVbWXrBvF0PkqOwp2hUQWe0zk7y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e06c2d2-8087-474b-0844-08dd4c0c1f8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 08:55:10.8942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rdg3SpgegJjJ/S2OTBI4v6nAzFUeHzg3+f7dvsdeY/P2hjAjh/nF0hiMtpYcl87/4Xz24GM6BEd5RMCF27O1Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8035
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, February 12, 2025 10:07 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 02/14] drm/i915/hdmi: convert g4x_hdmi.[ch] to struct
> intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er.
> Convert as much as possible of g4x_hdmi.[ch] to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 139 +++++++++----------
>  drivers/gpu/drm/i915/display/g4x_hdmi.h      |   6 +-
>  drivers/gpu/drm/i915/display/intel_display.c |  16 +--
>  3 files changed, 79 insertions(+), 82 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 9e1ca7767392..6670cf101b9a 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -27,8 +27,8 @@
>  static void intel_hdmi_prepare(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state *crtc_state)  {
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);

Nit: If we are changing having a change here why not rename it to i915 too.
It's going to be useless in future since we want to remove drm_i915_private
Usage altogether but in the meantime why not follow the i915 naming convent=
ion.

Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode; @@ -54,13 +54,13 @@ static void
> intel_hdmi_prepare(struct intel_encoder *encoder,
>=20
>  	if (HAS_PCH_CPT(dev_priv))
>  		hdmi_val |=3D SDVO_PIPE_SEL_CPT(crtc->pipe);
> -	else if (IS_CHERRYVIEW(dev_priv))
> +	else if (display->platform.cherryview)
>  		hdmi_val |=3D SDVO_PIPE_SEL_CHV(crtc->pipe);
>  	else
>  		hdmi_val |=3D SDVO_PIPE_SEL(crtc->pipe);
>=20
> -	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, hdmi_val);
> -	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +	intel_de_write(display, intel_hdmi->hdmi_reg, hdmi_val);
> +	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>  }
>=20
>  static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder, @@ -
> 132,6 +132,7 @@ static int g4x_hdmi_compute_config(struct intel_encoder
> *encoder,
>  				   struct intel_crtc_state *crtc_state,
>  				   struct drm_connector_state *conn_state)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state-
> >uapi.state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev); @@ -
> 142,7 +143,7 @@ static int g4x_hdmi_compute_config(struct intel_encoder
> *encoder,
>  			return -EINVAL;
>  	}
>=20
> -	if (IS_G4X(i915))
> +	if (display->platform.g4x)
>  		crtc_state->has_hdmi_sink =3D
> g4x_compute_has_hdmi_sink(state, crtc);
>  	else
>  		crtc_state->has_hdmi_sink =3D
> @@ -154,15 +155,15 @@ static int g4x_hdmi_compute_config(struct
> intel_encoder *encoder,  static void intel_hdmi_get_config(struct
> intel_encoder *encoder,
>  				  struct intel_crtc_state *pipe_config)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	u32 tmp, flags =3D 0;
>  	int dotclock;
>=20
>  	pipe_config->output_types |=3D BIT(INTEL_OUTPUT_HDMI);
>=20
> -	tmp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> +	tmp =3D intel_de_read(display, intel_hdmi->hdmi_reg);
>=20
>  	if (tmp & SDVO_HSYNC_ACTIVE_HIGH)
>  		flags |=3D DRM_MODE_FLAG_PHSYNC;
> @@ -222,33 +223,32 @@ static void intel_hdmi_get_config(struct
> intel_encoder *encoder,  static void g4x_hdmi_enable_port(struct
> intel_encoder *encoder,
>  				 const struct intel_crtc_state *pipe_config)  {
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	u32 temp;
>=20
> -	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> +	temp =3D intel_de_read(display, intel_hdmi->hdmi_reg);
>=20
>  	temp |=3D SDVO_ENABLE;
>=20
> -	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>  }
>=20
>  static void g4x_hdmi_audio_enable(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state
> *conn_state)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_hdmi *hdmi =3D enc_to_intel_hdmi(encoder);
>=20
>  	if (!crtc_state->has_audio)
>  		return;
>=20
> -	drm_WARN_ON(&i915->drm, !crtc_state->has_hdmi_sink);
> +	drm_WARN_ON(display->drm, !crtc_state->has_hdmi_sink);
>=20
>  	/* Enable audio presence detect */
> -	intel_de_rmw(i915, hdmi->hdmi_reg, 0, HDMI_AUDIO_ENABLE);
> +	intel_de_rmw(display, hdmi->hdmi_reg, 0, HDMI_AUDIO_ENABLE);
>=20
>  	intel_audio_codec_enable(encoder, crtc_state, conn_state);  } @@ -
> 257,7 +257,7 @@ static void g4x_hdmi_audio_disable(struct intel_encoder
> *encoder,
>  				   const struct intel_crtc_state *old_crtc_state,
>  				   const struct drm_connector_state
> *old_conn_state)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_hdmi *hdmi =3D enc_to_intel_hdmi(encoder);
>=20
>  	if (!old_crtc_state->has_audio)
> @@ -266,7 +266,7 @@ static void g4x_hdmi_audio_disable(struct
> intel_encoder *encoder,
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>=20
>  	/* Disable audio presence detect */
> -	intel_de_rmw(i915, hdmi->hdmi_reg, HDMI_AUDIO_ENABLE, 0);
> +	intel_de_rmw(display, hdmi->hdmi_reg, HDMI_AUDIO_ENABLE, 0);
>  }
>=20
>  static void g4x_enable_hdmi(struct intel_atomic_state *state, @@ -282,12
> +282,11 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)  {
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	u32 temp;
>=20
> -	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> +	temp =3D intel_de_read(display, intel_hdmi->hdmi_reg);
>=20
>  	temp |=3D SDVO_ENABLE;
>=20
> @@ -295,10 +294,10 @@ static void ibx_enable_hdmi(struct
> intel_atomic_state *state,
>  	 * HW workaround, need to write this twice for issue
>  	 * that may result in first write getting masked.
>  	 */
> -	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> -	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
> +	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
>  	/*
>  	 * HW workaround, need to toggle enable bit off and on @@ -
> 309,18 +308,18 @@ static void ibx_enable_hdmi(struct intel_atomic_state
> *state,
>  	 */
>  	if (pipe_config->pipe_bpp > 24 &&
>  	    pipe_config->pixel_multiplier > 1) {
> -		intel_de_write(dev_priv, intel_hdmi->hdmi_reg,
> +		intel_de_write(display, intel_hdmi->hdmi_reg,
>  			       temp & ~SDVO_ENABLE);
> -		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
>  		/*
>  		 * HW workaround, need to write this twice for issue
>  		 * that may result in first write getting masked.
>  		 */
> -		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> -		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
> +		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>  	}
>  }
>=20
> @@ -329,14 +328,13 @@ static void cpt_enable_hdmi(struct
> intel_atomic_state *state,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)  {
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 temp;
>=20
> -	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> +	temp =3D intel_de_read(display, intel_hdmi->hdmi_reg);
>=20
>  	temp |=3D SDVO_ENABLE;
>=20
> @@ -351,24 +349,24 @@ static void cpt_enable_hdmi(struct
> intel_atomic_state *state,
>  	 */
>=20
>  	if (pipe_config->pipe_bpp > 24) {
> -		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
> +		intel_de_rmw(display, TRANS_CHICKEN1(pipe),
>  			     0, TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
>=20
>  		temp &=3D ~SDVO_COLOR_FORMAT_MASK;
>  		temp |=3D SDVO_COLOR_FORMAT_8bpc;
>  	}
>=20
> -	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
>  	if (pipe_config->pipe_bpp > 24) {
>  		temp &=3D ~SDVO_COLOR_FORMAT_MASK;
>  		temp |=3D HDMI_COLOR_FORMAT_12bpc;
>=20
> -		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
> -		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
> +		intel_de_rmw(display, TRANS_CHICKEN1(pipe),
>  			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
>  	}
>  }
> @@ -386,19 +384,18 @@ static void intel_disable_hdmi(struct
> intel_atomic_state *state,
>  			       const struct drm_connector_state
> *old_conn_state)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	struct intel_digital_port *dig_port =3D
>  		hdmi_to_dig_port(intel_hdmi);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	u32 temp;
>=20
> -	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> +	temp =3D intel_de_read(display, intel_hdmi->hdmi_reg);
>=20
>  	temp &=3D ~SDVO_ENABLE;
> -	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
>  	/*
>  	 * HW workaround for IBX, we need to move the port @@ -419,14
> +416,14 @@ static void intel_disable_hdmi(struct intel_atomic_state *stat=
e,
>  		 * HW workaround, need to write this twice for issue
>  		 * that may result in first write getting masked.
>  		 */
> -		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> -		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
> +		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
>  		temp &=3D ~SDVO_ENABLE;
> -		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
> +		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
>=20
>  		intel_wait_for_vblank_if_active(display, PIPE_A);
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A,
> true); @@ -544,8 +541,8 @@ static void chv_hdmi_post_disable(struct
> intel_atomic_state *state,
>  				  const struct intel_crtc_state *old_crtc_state,
>  				  const struct drm_connector_state
> *old_conn_state)  {
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	vlv_dpio_get(dev_priv);
>=20
> @@ -614,7 +611,7 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
> int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
>  				    struct drm_atomic_state *state)  {
> -	struct drm_i915_private *i915 =3D to_i915(state->dev);
> +	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct drm_connector_list_iter conn_iter;
>  	struct drm_connector *conn;
>  	int ret;
> @@ -623,7 +620,7 @@ int g4x_hdmi_connector_atomic_check(struct
> drm_connector *connector,
>  	if (ret)
>  		return ret;
>=20
> -	if (!IS_G4X(i915))
> +	if (!display->platform.g4x)
>  		return 0;
>=20
>  	if (!intel_connector_needs_modeset(to_intel_atomic_state(state),
> connector)) @@ -637,7 +634,7 @@ int
> g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
>  	 *
>  	 * See also g4x_compute_has_hdmi_sink().
>  	 */
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	drm_connector_list_iter_begin(display->drm, &conn_iter);
>  	drm_for_each_connector_iter(conn, &conn_iter) {
>  		struct drm_connector_state *conn_state;
>  		struct drm_crtc_state *crtc_state;
> @@ -646,7 +643,7 @@ int g4x_hdmi_connector_atomic_check(struct
> drm_connector *connector,
>  		if (!connector_is_hdmi(conn))
>  			continue;
>=20
> -		drm_dbg_kms(&i915->drm, "Adding
> [CONNECTOR:%d:%s]\n",
> +		drm_dbg_kms(display->drm, "Adding
> [CONNECTOR:%d:%s]\n",
>  			    conn->base.id, conn->name);
>=20
>  		conn_state =3D drm_atomic_get_connector_state(state, conn);
> @@ -671,24 +668,24 @@ int g4x_hdmi_connector_atomic_check(struct
> drm_connector *connector,
>  	return ret;
>  }
>=20
> -static bool is_hdmi_port_valid(struct drm_i915_private *i915, enum port
> port)
> +static bool is_hdmi_port_valid(struct intel_display *display, enum port
> +port)
>  {
> -	if (IS_G4X(i915) || IS_VALLEYVIEW(i915))
> +	if (display->platform.g4x || display->platform.valleyview)
>  		return port =3D=3D PORT_B || port =3D=3D PORT_C;
>  	else
>  		return port =3D=3D PORT_B || port =3D=3D PORT_C || port =3D=3D
> PORT_D;  }
>=20
> -static bool assert_hdmi_port_valid(struct drm_i915_private *i915, enum
> port port)
> +static bool assert_hdmi_port_valid(struct intel_display *display, enum
> +port port)
>  {
> -	return !drm_WARN(&i915->drm, !is_hdmi_port_valid(i915, port),
> +	return !drm_WARN(display->drm, !is_hdmi_port_valid(display,
> port),
>  			 "Platform does not support HDMI %c\n",
> port_name(port));  }
>=20
> -bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
> +bool g4x_hdmi_init(struct intel_display *display,
>  		   i915_reg_t hdmi_reg, enum port port)  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	const struct intel_bios_encoder_data *devdata;
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *intel_encoder;
> @@ -697,14 +694,14 @@ bool g4x_hdmi_init(struct drm_i915_private
> *dev_priv,
>  	if (!assert_port_valid(dev_priv, port))
>  		return false;
>=20
> -	if (!assert_hdmi_port_valid(dev_priv, port))
> +	if (!assert_hdmi_port_valid(display, port))
>  		return false;
>=20
>  	devdata =3D intel_bios_encoder_data_lookup(display, port);
>=20
>  	/* FIXME bail? */
>  	if (!devdata)
> -		drm_dbg_kms(&dev_priv->drm, "No VBT child device for
> HDMI-%c\n",
> +		drm_dbg_kms(display->drm, "No VBT child device for HDMI-
> %c\n",
>  			    port_name(port));
>=20
>  	dig_port =3D kzalloc(sizeof(*dig_port), GFP_KERNEL); @@ -723,7
> +720,7 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
>=20
>  	mutex_init(&dig_port->hdcp_mutex);
>=20
> -	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
> +	if (drm_encoder_init(display->drm, &intel_encoder->base,
>  			     &intel_hdmi_enc_funcs,
> DRM_MODE_ENCODER_TMDS,
>  			     "HDMI %c", port_name(port)))
>  		goto err_encoder_init;
> @@ -738,13 +735,13 @@ bool g4x_hdmi_init(struct drm_i915_private
> *dev_priv,
>  	}
>  	intel_encoder->get_hw_state =3D intel_hdmi_get_hw_state;
>  	intel_encoder->get_config =3D intel_hdmi_get_config;
> -	if (IS_CHERRYVIEW(dev_priv)) {
> +	if (display->platform.cherryview) {
>  		intel_encoder->pre_pll_enable =3D chv_hdmi_pre_pll_enable;
>  		intel_encoder->pre_enable =3D chv_hdmi_pre_enable;
>  		intel_encoder->enable =3D vlv_enable_hdmi;
>  		intel_encoder->post_disable =3D chv_hdmi_post_disable;
>  		intel_encoder->post_pll_disable =3D
> chv_hdmi_post_pll_disable;
> -	} else if (IS_VALLEYVIEW(dev_priv)) {
> +	} else if (display->platform.valleyview) {
>  		intel_encoder->pre_pll_enable =3D vlv_hdmi_pre_pll_enable;
>  		intel_encoder->pre_enable =3D vlv_hdmi_pre_enable;
>  		intel_encoder->enable =3D vlv_enable_hdmi; @@ -765,7
> +762,7 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  	intel_encoder->type =3D INTEL_OUTPUT_HDMI;
>  	intel_encoder->power_domain =3D
> intel_display_power_ddi_lanes_domain(display, port);
>  	intel_encoder->port =3D port;
> -	if (IS_CHERRYVIEW(dev_priv)) {
> +	if (display->platform.cherryview) {
>  		if (port =3D=3D PORT_D)
>  			intel_encoder->pipe_mask =3D BIT(PIPE_C);
>  		else
> @@ -780,7 +777,7 @@ bool g4x_hdmi_init(struct drm_i915_private
> *dev_priv,
>  	 * to work on real hardware. And since g4x can send infoframes to
>  	 * only one port anyway, nothing is lost by allowing it.
>  	 */
> -	if (IS_G4X(dev_priv))
> +	if (display->platform.g4x)
>  		intel_encoder->cloneable |=3D BIT(INTEL_OUTPUT_HDMI);
>=20
>  	dig_port->hdmi.hdmi_reg =3D hdmi_reg;
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.h
> b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> index a52e8986ec7a..039d2bdba06c 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> @@ -13,15 +13,15 @@
>  enum port;
>  struct drm_atomic_state;
>  struct drm_connector;
> -struct drm_i915_private;
> +struct intel_display;
>=20
>  #ifdef I915
> -bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
> +bool g4x_hdmi_init(struct intel_display *display,
>  		   i915_reg_t hdmi_reg, enum port port);  int
> g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
>  				    struct drm_atomic_state *state);  #else -
> static inline bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
> +static inline bool g4x_hdmi_init(struct intel_display *display,
>  				 i915_reg_t hdmi_reg, int port)
>  {
>  	return false;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e5ceedf56335..b8c57a5d26a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8235,16 +8235,16 @@ void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>  			/* PCH SDVOB multiplex with HDMIB */
>  			found =3D intel_sdvo_init(dev_priv, PCH_SDVOB,
> PORT_B);
>  			if (!found)
> -				g4x_hdmi_init(dev_priv, PCH_HDMIB,
> PORT_B);
> +				g4x_hdmi_init(display, PCH_HDMIB,
> PORT_B);
>  			if (!found && (intel_de_read(dev_priv, PCH_DP_B) &
> DP_DETECTED))
>  				g4x_dp_init(display, PCH_DP_B, PORT_B);
>  		}
>=20
>  		if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
> -			g4x_hdmi_init(dev_priv, PCH_HDMIC, PORT_C);
> +			g4x_hdmi_init(display, PCH_HDMIC, PORT_C);
>=20
>  		if (!dpd_is_edp && intel_de_read(dev_priv, PCH_HDMID) &
> SDVO_DETECTED)
> -			g4x_hdmi_init(dev_priv, PCH_HDMID, PORT_D);
> +			g4x_hdmi_init(display, PCH_HDMID, PORT_D);
>=20
>  		if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
>  			g4x_dp_init(display, PCH_DP_C, PORT_C); @@ -
> 8277,14 +8277,14 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED ||
> has_port)
>  			has_edp &=3D g4x_dp_init(display, VLV_DP_B,
> PORT_B);
>  		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED
> || has_port) && !has_edp)
> -			g4x_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
> +			g4x_hdmi_init(display, VLV_HDMIB, PORT_B);
>=20
>  		has_edp =3D intel_dp_is_port_edp(display, PORT_C);
>  		has_port =3D intel_bios_is_port_present(display, PORT_C);
>  		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED ||
> has_port)
>  			has_edp &=3D g4x_dp_init(display, VLV_DP_C,
> PORT_C);
>  		if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED
> || has_port) && !has_edp)
> -			g4x_hdmi_init(dev_priv, VLV_HDMIC, PORT_C);
> +			g4x_hdmi_init(display, VLV_HDMIC, PORT_C);
>=20
>  		if (IS_CHERRYVIEW(dev_priv)) {
>  			/*
> @@ -8295,7 +8295,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  			if (intel_de_read(dev_priv, CHV_DP_D) &
> DP_DETECTED || has_port)
>  				g4x_dp_init(display, CHV_DP_D, PORT_D);
>  			if (intel_de_read(dev_priv, CHV_HDMID) &
> SDVO_DETECTED || has_port)
> -				g4x_hdmi_init(dev_priv, CHV_HDMID,
> PORT_D);
> +				g4x_hdmi_init(display, CHV_HDMID,
> PORT_D);
>  		}
>=20
>  		vlv_dsi_init(dev_priv);
> @@ -8316,7 +8316,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  			if (!found && IS_G4X(dev_priv)) {
>  				drm_dbg_kms(&dev_priv->drm,
>  					    "probing HDMI on SDVOB\n");
> -				g4x_hdmi_init(dev_priv, GEN4_HDMIB,
> PORT_B);
> +				g4x_hdmi_init(display, GEN4_HDMIB,
> PORT_B);
>  			}
>=20
>  			if (!found && IS_G4X(dev_priv))
> @@ -8335,7 +8335,7 @@ void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  			if (IS_G4X(dev_priv)) {
>  				drm_dbg_kms(&dev_priv->drm,
>  					    "probing HDMI on SDVOC\n");
> -				g4x_hdmi_init(dev_priv, GEN4_HDMIC,
> PORT_C);
> +				g4x_hdmi_init(display, GEN4_HDMIC,
> PORT_C);
>  			}
>  			if (IS_G4X(dev_priv))
>  				g4x_dp_init(display, DP_C, PORT_C);
> --
> 2.39.5

