Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89B49BBD4D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 19:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E536010E4AB;
	Mon,  4 Nov 2024 18:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MkzGcug6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99F310E4AB;
 Mon,  4 Nov 2024 18:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730745050; x=1762281050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jRywgqixbxoBbXxH+rPoTSlgCh4CoAWXys9YkStru8E=;
 b=MkzGcug6CsVUDVYH8KnT8BeM0UQgtDoXRVyf5EGvYL1TAnShj8N0iSGB
 uc7JojTigV07LN1l8PFzV6ShRo911zRIpCICp4qHYaBSP/48YhWUxu82I
 PZvA60sD+918IA4W449yJ8YcBrBbrqmxY6hse8jfsYMvLsqJmGjfcz8FA
 lb6EfXHkfIZC6hU30cvJLqzJTy+iLslp6aQ8E9qU8WNpx3885zKJOTmjE
 hfqn1VOnV8W50eINCqUocuRGvOaLKS0smzoocRCODFr6LahFdu/+m6JLt
 uoA3a2z4iB/EeawVloccO25aVdYIag08JMu28cbkivXo63YtjnzM7mvs1 g==;
X-CSE-ConnectionGUID: j2gmviroRuy6v4Ti0+byVA==
X-CSE-MsgGUID: h/eu0yEFR52ncQlPRclX0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30403992"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30403992"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:30:50 -0800
X-CSE-ConnectionGUID: IOV4Mn1zRuOtNDxD5WXEUg==
X-CSE-MsgGUID: IbNGNzGgSHWGrXMBX5s2sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="84172923"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 10:30:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 10:30:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 10:30:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 10:30:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eG3uvxgZOSkaYzoVWNa92YL1/ep7H719lY8jhc3CbYoVLTinl4Rv2jSNmK8Mxwd0Fjb4aT3u7aLYGXWgzmiwBeqxIuXQVXLWi/HWXsSi5ed9Tzz6NtXuGTiJS5kTJxekb8UyOjRF/EAbFb8wLJVKxcUuJKlsjtXyYo4uiASGRJPh6TP7PEFLFLSMYxHwPtxR32LQkx3nXf36WsXq7bmRdGyzh9wDxT1b4T/vrT6mSsyCt/2Lq3CwvQycRg5yVxShr+GcWDVnpFqrsZ/3hnmbvRrSgULKLfWzUyEo83y6RoRNXUIn5yl3HSp6OEIC6eGxOhijJ6DVehkUpUIEHCe/Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+e50H+kWuRnSIy/YHhhOADWHBS4pLN5j5eGeL9OaPU=;
 b=v5A6MxenNeMGZcObyqUVbXj74C1DA33vG3dNB9e+vqWVvYNn/uXDz0Hcuo+LgyW6TbU/YAUb6N6JWFRW2yl6i2ykh1rNfb7bisk7/mKEdBPSvsovPvmjt6cuz9lBr46RvrWMlUBuQWFGQHXrLMiV/swfYYN6oX/Z77gFEUzQKOUKrfKGU8Q3rGYzsNvQjJc2RGmuiz3PmW0Eqd/nsd97U4+LY28ubpGSRdLFuXQFKYw00odKq5NJRzKxvwl42jtLHxP3OjJr0euFk/0C6yXbAKykLs4hsDjjFbr5tyvVBzQUea4MtlVFzinbTA75U6VfEGwJmYqlrz9XdhyPA3zxWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL1PR11MB5318.namprd11.prod.outlook.com (2603:10b6:208:312::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 18:30:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 18:30:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
Thread-Index: AQHbLpQVboVPjEFqPEOb2/rNA48F3rKnbcCAgAADbXA=
Date: Mon, 4 Nov 2024 18:30:46 +0000
Message-ID: <SN7PR11MB6750DC2587A3ACDBC85A4A6CE3512@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
 <20241104083143.631760-2-suraj.kandpal@intel.com>
 <20241104181457.GK4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241104181457.GK4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL1PR11MB5318:EE_
x-ms-office365-filtering-correlation-id: 5e3802dc-3efa-4e67-5fd4-08dcfcfeccaf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VJ1vJPsvsGp2n+JDPGX7RQjIjtFp63rSNehzQLzpa4ZOkmwHZtBeQmYMOrx8?=
 =?us-ascii?Q?FBm8Ta+jypm45WfwFB2xFgUnPqwdoanKcosUNjxgOXMk07PiyqxfAcmPInmt?=
 =?us-ascii?Q?mdGW6jwSC5k6NZumQk6VDAEZd4ulfmwg0Ol05E9rDIuGrdels2qJ6T2YC7Y8?=
 =?us-ascii?Q?T1y6zcCnxnaEcvFWeq40djgnrT4ZSMlnZGg0ZuvKsKVUi8XEAoYiywCuG5XB?=
 =?us-ascii?Q?oUQUHigmJtpbg7VEVx/J6zSEuKndaehvN1A/FhSAwBk0PRRfsl3ju3GWZVpe?=
 =?us-ascii?Q?Gl1XhQnuPrkEQloEqgo3LdkAabuwFkwo6eYW3CVFjY8wvt2vsu92zvAR9uSv?=
 =?us-ascii?Q?sqW0/n4Jkj+ML2lvwW2pbgauaVkfgRshUF/vRIaBeufQIHHIegQAo/G6nZm7?=
 =?us-ascii?Q?nLM3LD9bBQ8/BSOxwgB/f1wdATbOuwTNwpAMV/oEeTvMIG9zKlZcmNzReN0o?=
 =?us-ascii?Q?7CxgC34hm9zvmFIJ935iz8s1FSIlm7pbj4/LoKrX4COkPq8ohUudjTYFeYmn?=
 =?us-ascii?Q?E2kc0RUnQjlD4bmNk+kkwUn3OxHVekqLhDA8BYuoO1XMDvfFuaTJByu8TKlA?=
 =?us-ascii?Q?FK8XGxjIp6T3rxhlxhkRU4zRInNTef0aKs/naLilMIb+eIR4NG7FG+/zQLSH?=
 =?us-ascii?Q?Ll6FF4Z1ok0jvmOuU3+RnFuXp9qO9O7Kio6eTpT/TIztohQAeE7T2I3CrnqI?=
 =?us-ascii?Q?hZn1lxiS7c5eLVPVsnD3dau/hmyDREBbLcdrWrpiOq+peo3ELKRhG4NaNFm8?=
 =?us-ascii?Q?fG6TKdKH2wzRZFVA1ZrS1Ec6H+uoIYCZu9OIEP/BnOg1zLo31tGYNUhc/znc?=
 =?us-ascii?Q?Am3WlpBlKjtxGAyOzW04mr5FM/IlQcTZCS9ux5beguXmBzhUh8LiwOKo+Kqa?=
 =?us-ascii?Q?CkDc2fGVgZx8iHCsqe0wN0HnyxG8taL7Uz7Xb+v7KqUbvmm55yczPbzNSc2q?=
 =?us-ascii?Q?0d4Mdvifazjn+JnLtAKl57NhqJFwIhfDL1HDDAzvS5I9+t1E5SDLhhcYaief?=
 =?us-ascii?Q?A0JJLZrQTJacePP18GRD4hZl60NkgYgt7Vy2lF3iPt/I40QqAO2S4aFh8hXM?=
 =?us-ascii?Q?hiY2g3SM9fgdzQeP8FKesfiGiJFb8KYU5vFaatACfyK87ARb1KUCHLeLXczc?=
 =?us-ascii?Q?ZF3uB7E2yjx3Tu4hnWCbJKmsODvek4d0AfaxKYMDk6qyHZsylLdGVR0Ifed8?=
 =?us-ascii?Q?+mWU/IcGyhKYlCjCcoSr77taMUGRW2hsC1+/+qT6dROdl0hR5Ou32odq3lFT?=
 =?us-ascii?Q?kF1fa0pusZUAataKDoAQ438Eg73DtVWRTs0dYq0FOmSwZkGqWgute9iQyAkW?=
 =?us-ascii?Q?rbTsvTM/vxXakWKnogXf4jmf9h7HgdvOdlIMnPKYpjNlR5fcOUdFl0Gl5wCG?=
 =?us-ascii?Q?jVegOpE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VJCqhBt5AWlrbsun/JOzYEmihQsnTzZY9hWooqlmONbeBTcoxUhEvCwA9SKP?=
 =?us-ascii?Q?KTmoXsrG41XfshBPpmRihUZVYwPbbG99s9GBt/1Fn/okwuZd1EBzll3+cdM4?=
 =?us-ascii?Q?PQiBY7qg47JmYS1olrGKbh1bnDJqLTKwaHHGlvJ74/nfuihVDomGuyZixdnQ?=
 =?us-ascii?Q?upjsbuPf2gMZ89lhOExRU3KgLSe+kejTuDTrJqFjpsaD67sizaQZ46zGiLTU?=
 =?us-ascii?Q?gKMt0TlXjf38UJtuAYgEQOBLTB+JXu2zHvcv5wjLH6xThJpNxZD/m8WiYJet?=
 =?us-ascii?Q?9u24Wg43aCk4MYXoNWgqmO+2Vkv18excSF/0sgwuvYVkyL96OguC0+mN7np0?=
 =?us-ascii?Q?agXIuDQn/f1HS880GLjkamnqFVOz248f4mqtEbm/LhSscGnXm6jJ6Vm/5pm6?=
 =?us-ascii?Q?IE2GxNsvYe7cBAQ4pjurKxr2yFA6qZfIFtVqfbNek13QWHe+pq943trD5b1M?=
 =?us-ascii?Q?nVek3iL0LVyYIzPbbReXjBWNK9Jh5L/CTWCr5vG1t33fMqNMO9PXIm4wkHGm?=
 =?us-ascii?Q?eCtzoeqUlJR+5EFnGho93zoYv2wJ9CZIcqSTgp0wA+V5kZaarusNTQDkqQwb?=
 =?us-ascii?Q?tFhski3X4JRzd75dK0jAzX2z/FliM3NEsDAxfcAbUm1sYLlyBe0Gi+mVjrn4?=
 =?us-ascii?Q?9at1rLaQzPAKz4UOIWsGk9wTUA2wHmo3I8ZqSdWuOhsuVrrzsMyee+nRT3AE?=
 =?us-ascii?Q?4Ad8UNyaXaXBro0Ptpmxgv+cYBJbQHkVGtl1Dm4ZQs/xX4B2j+FnLKt979//?=
 =?us-ascii?Q?2hALjYOmiVzCdi+FWaFLKT62Tl09Q2gDHkbnA45mgqNScMjUd3yOoPXI4YT8?=
 =?us-ascii?Q?CHiht1P4IH35SyAodpc3iLHukOCVUzowtvcGQ/jcJ3FLrgFytDm/5w90TLqb?=
 =?us-ascii?Q?srbkJlbtHhMcsSgY8CWKALl+4m6AUlrZWC0GbBMG7vltCQZeY0L2olII7hH+?=
 =?us-ascii?Q?4MHsLEx6Y4cL5VyetCBnrAbMznp/bn/YR9CValharnPjYtVvO2MmBH1s+UDd?=
 =?us-ascii?Q?csilXsEb307CuDKLLDMOGrka7G/TS7ZDgBb84M8Pz8YJC/p04wHcF4yKdSuY?=
 =?us-ascii?Q?5xPBFVDORCWyNU39QPuDtFNgxIYq7vIpYx22j8jxlQ/ktfN1ddqPia5svTtS?=
 =?us-ascii?Q?YYVOdxewSO0iK/w8/LRbz+GYVT/yfUhbOUg9iztV4FPwUo7gFaxK57cVi+X5?=
 =?us-ascii?Q?I18AwQMC8CF91I0IgQVnhAI2boalzkqw9xrnovFC1AMf9SAgqli6pRj0sfOw?=
 =?us-ascii?Q?xWkxkBS6iI6j4ci9lKRtJ4/a2N+MZ4DhS9Wk1YxAxnkPh9pn6PnFTcytlfMK?=
 =?us-ascii?Q?sieVbkqbwzUJIks8N6Q7c26LFESuX/MhI0ib+gBX6vCLYFvqxzTzUQsqgiKi?=
 =?us-ascii?Q?uWqg7zFJyiD48Joy1Ir+5o3UekYRQ6J8F6PUHRsm39nC+9bL3NqI3DAsc+rp?=
 =?us-ascii?Q?fWjVxk//3P/X2JC/gURHQC5SzzJ9J0jT7XkdVd4Rsd2KZguQh3cdHx4gKj4W?=
 =?us-ascii?Q?FYq5GBytYO2jW2fRCoWRDubHd0sPfa1gLOwsQQza4a5T9WMRUCnzyRqkGp+Y?=
 =?us-ascii?Q?LkMUlCGCHOpdqTEu9ot/wJuYjUjteAdHKu6i5DY0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3802dc-3efa-4e67-5fd4-08dcfcfeccaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 18:30:46.5431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EDlkP9HSBO5C3hjYUzyRKcYgr8y74LW5DsryZ+q+wO3xv/y203u4u1zhUPKdxfLsEHhxkenAWe0J/CKDOl0H2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5318
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, November 4, 2024 11:45 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 2/2] drm/i915/hdcp: Handle HDCP Line Rekeying for HDC=
P
> 1.4
>=20
> On Mon, Nov 04, 2024 at 02:01:43PM +0530, Suraj Kandpal wrote:
> > TRANS_DDI_FUNC_CTL asks us to disable hdcp line rekeying when not in
> > hdcp 2.2 and we are not using an hdmi transcoder and it need to be
> > enabled when we are using an HDMI transcoder to enable HDCP 1.4.
> > We use intel_de_rmw cycles to update TRANS_DDI_FUNC_CTL register so
> we
> > cannot depend on the value being 0 by default everytime which calls
> > for seprate handling of HDCP 1.4 case.
> >
> > Bspec: 69964, 50493, 50054
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 28
> > +++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 8bca532d1176..54efba65ef5a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -31,6 +31,32 @@
> >  #define KEY_LOAD_TRIES	5
> >  #define HDCP2_LC_RETRY_CNT			3
> >
> > +static void
> > +intel_hdcp_enable_hdcp_line_rekeying(struct intel_encoder *encoder,
> > +				     struct intel_hdcp *hdcp)
> > +{
> > +	struct intel_display *display =3D to_intel_display(encoder);
> > +
> > +	/* Here we assume HDMI is in TMDS mode of operation */
> > +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> > +		return;
> > +
> > +	if (DISPLAY_VER(display) >=3D 14) {
>=20
> As noted on the previous patch, this outer 'if' doesn't do anything since=
 none
> of the nested if's will match versions less than 14.
>=20
> > +		if (DISPLAY_VER(display) >=3D 30)
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > +
> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 0);
> > +		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER))
> > +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> > +				     HDCP_LINE_REKEY_DISABLE, 0);
> > +		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> STEP_FOREVER) ||
> > +			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0,
> STEP_FOREVER))
>=20
> For new code we should definitely be ordering if/else ladders in descendi=
ng
> order.  So the Xe2 clause here should come before the MTL clause.
>=20
> Although it might be cleaner to just have a single function that takes a
> boolean parameter to enable/disable rekeying?  E.g., something along the
> lines of:
>=20
>     static void
>     intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
>                                          struct intel_hdcp *hdcp,
>                                          bool enable)
>     {
>         struct intel_reg reky_reg;
>         u32 rekey_bit;
>=20
>         if (DISPLAY_VER(display) >=3D 30) {
>             rekey_reg =3D TRANS_DDI_FUNC_CTL;
>             rekey_bit =3D XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
>         } else if (DISPLAY_VERx100(display) >=3D 1401) {
>             rekey_reg =3D TRANS_DDI_FUNC_CTL;
>             rekey_bit =3D TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
>         } else if (DISPLAY_VERx100(display) =3D=3D 1400)
>             rekey_reg =3D MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
>             rekey_bit =3D HDCP_LINE_REKEY_DISABLE;
>         } else {
>             return;
>         }
>=20
>         intel_de_rmw(display, rekey_reg, rekey_bit,
>                      enable ? 0 : rekey_bit);
>      }
>=20
> And we can move the stepping-specific workaround implementation to the
> callsite to make it clear that the implementation of enabling/disabling i=
s
> separate from the decision whether to enable/disable (as impacted by the
> workaround).

Also since the constraints remain same for both enablement and disablement =
we can use the same if else checks
as before using the above mentioned method if that sounds good.

Regards,
Suraj Kandpal

>=20
>=20
> Matt
>=20
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > +				     TRANS_DDI_HDCP_LINE_REKEY_DISABLE,
> 0);
> > +	}
> > +}
> > +
> >  static void
> >  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> >  				      struct intel_hdcp *hdcp)
> > @@ -1051,6 +1077,8 @@ static int intel_hdcp1_enable(struct
> intel_connector *connector)
> >  		return ret;
> >  	}
> >
> > +	intel_hdcp_enable_hdcp_line_rekeying(connector->encoder, hdcp);
> > +
> >  	/* Incase of authentication failures, HDCP spec expects reauth. */
> >  	for (i =3D 0; i < tries; i++) {
> >  		ret =3D intel_hdcp_auth(connector);
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
