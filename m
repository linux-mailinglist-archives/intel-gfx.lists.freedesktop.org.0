Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DE394A3F2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 11:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6515310E49C;
	Wed,  7 Aug 2024 09:15:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I6ghWfCR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C358F10E48B;
 Wed,  7 Aug 2024 09:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723022139; x=1754558139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vq3SqVTI1DLGeq2sH0JkRzNl/4CKsTntlUNAW9zM3LI=;
 b=I6ghWfCRGI2dWiMh036dPZCJeRTeCV8cLibRJkxMbF7+1S6o8UrYlgfr
 MatERM62uwxo7KjM8Dt2P9rmDMbo1iNsYVvjuXdx3lKQSkJb9vUmXwAvC
 L1GE/RL9qlgzLyxPJLd48+ij4ET5TaxKY1htlFrHFsyuAUU6Ri1vmK7x0
 WD/alV1ntsO2HkpPAPWcgBNw/ohGh3LAerz9bDAyceU9ObPiI3g2BAxuj
 IJmqtrO/ZMdwJ0oUP02V1xw+fsg3wVQWetJ9PFLLk0wG8EXwgi+C9aB0A
 yVi2JwMuQebImnHqsjWNUyAj+74GAipDlDB9FtZecAwZyVQ/8FQa2REMa g==;
X-CSE-ConnectionGUID: 5hGLHG0hQfec4zinddrdYg==
X-CSE-MsgGUID: wcz1mMQ8Q4KAyGyP1XI42A==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31750246"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="31750246"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:15:38 -0700
X-CSE-ConnectionGUID: cTxMxAXNQLSm9B2JZ9xnpw==
X-CSE-MsgGUID: B8jgwhH9QpWJShzy/5KsFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="87726566"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 02:15:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 02:15:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 02:15:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 02:15:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 02:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rp1KGPYHrsyhSrvppT352JP/hI7xiVXZ5zFHZBg+F7AJQnjl5QW4T6jlC7NzNCFdVaFe0ecgVbZsmHDiHxR8n9dQPPKAU79+UhmBKgwQrgxvNFwR/Ue6T89Gadvh9SXtB0ASawazekAxgDCFpapD7VN+K51Qe0QmBorA20tAT7iHlX5G5k/0y76IKwolM7KFXAXWBv2IdnBW/PcXKzAMgED8kFMFwozAc/HcUjNsNL8d4drlVOREOkSaQ1YREtLigZe7SDoWhL7MJlcb+zVSsdbE+v2dBTYxn8zUo4oOIcUj8l6FpyMdaZURUVxYbaSJiLRXg52fTYoWNSbV8J1HOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+9owkVGkDkDGBklG0ZPgBQ/8uG1PX7oK6LOoAumRO2A=;
 b=cAqSGnbTKu8vgkot0HilB1utefC9ny8kLAlyp2LOL/wCAyn552ppJPwpLAScpbAJAYCpEkrHM9Qxgh2iXjGILdUmgLMc0kZO1DKuUq4Z9puzNtxOwJdCLFD2RWTOvvNS95SdmAygHZAoQRr3pbhd6LcJKUpljmmN/MnoALPyUFccMW653IsXNG5UDkP0zJu3yqk6p3okKdU9Ml3ibSpscZxGNW1v1KNDtgY5X2BcFRF6ULX8zkhrCrU7uXGjHspHz2farIoz7W0m/3PzhdgDCqfZfQXnh9MYy6ocqL8+ZYdIf/5HnWtruvKQzTU23HRWNVP/RAMzPOx7ZKJBR5xlZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB7514.namprd11.prod.outlook.com (2603:10b6:510:276::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Wed, 7 Aug
 2024 09:15:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7828.029; Wed, 7 Aug 2024
 09:15:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
Thread-Topic: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
Thread-Index: AQHa59/4PrQKgW+uHkmgVGswgbZP+LIabxeAgAEKSrA=
Date: Wed, 7 Aug 2024 09:15:33 +0000
Message-ID: <IA0PR11MB73075A16A0CF48FBCF8AF5C0BAB82@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240806085513.3051107-1-arun.r.murthy@intel.com>
 <ZrJSHdb7bu90VnJr@ideak-desk.fi.intel.com>
In-Reply-To: <ZrJSHdb7bu90VnJr@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH7PR11MB7514:EE_
x-ms-office365-filtering-correlation-id: 352df1c3-e3e8-4dcf-c1ef-08dcb6c17de2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?w3WEdBMXsC5PC8K2wlETT5h/Dp7Lk4lPLQg/eyKylvz8doOLw6VSCRqfieIO?=
 =?us-ascii?Q?vcDeNuv9D0ZymQyeESSJnLkLJn69C/ED+Wh0QXwaR4QoydimTABnfYgSGp6G?=
 =?us-ascii?Q?8lGDxyBOXI+kFXv/x0J0POLwvx5RO0lgwBWL0gTc+KdGkYddw1qws9iqKj+W?=
 =?us-ascii?Q?AyGfJY7bnKIL9yAnLKZjmIPtMR/q9y1sQ2aUbyfOuc6HgJh0ZbZDUUswyGfU?=
 =?us-ascii?Q?yX+yjmHk/lEi94gO5bZk3mveQxHbD/t871TEfIMYL8aE3VHPI9VCU0lh8k5w?=
 =?us-ascii?Q?msotmHNj9QqglVvENAI/WnWe6ptGFWY/1860joY5jqtdVOkeBHPbSmkxINuD?=
 =?us-ascii?Q?Nxz3j+ydXY1mnOL0XPun7BCeM1Ok9nHhgcwwATmyDUYQ+/X+INTIXDgszL3Y?=
 =?us-ascii?Q?VDvY+TiOqLRcrt81oDb0BKMm34eCPlCw3JuIXZOi3l2/pyLZ9fvf89x8gD/n?=
 =?us-ascii?Q?VtybEncI2YDynMzPU7UV0p/CellVNv6NBfcbQDpgoSltuQXIoVlaY2xsfc5A?=
 =?us-ascii?Q?jIAh+9uTOvTyCGPmVzPSWWe3Cxl4KZxEX3/JHv1jQb9YEDt2tnpA2/cBWGdC?=
 =?us-ascii?Q?uTusP0ShXV2nIFyxYKI/TAw6al749TEjkRIgQ+DUrW12bSyJyF7nW1LZXI7B?=
 =?us-ascii?Q?zehurwRyVerWPyymyxjQ6OqPUMWA0dGAF411tOxPx9FL3gq+7tCCH9116bww?=
 =?us-ascii?Q?43IiriuARFqSgyBpGwwylk8cHsQ8Al4Fbk7hlwED24Aqa3ueDmWm8zCdV1Se?=
 =?us-ascii?Q?i3fON7ms4whmXeMQZfvaMWl9Afe8sG+eZEod7vYDWFuILq/+iUojIA1eGskq?=
 =?us-ascii?Q?TQXgiGeW66LgeZbJtsn5I1+XMBsHWRmTDkgAYo8o6DX3ZIW6aG8O+Xj7qN/S?=
 =?us-ascii?Q?IgoGJ+VNOpiEu83Axu0miRJqk2Qd6C4PsX8h93tefbYpFrI5qsyhAANTMnGh?=
 =?us-ascii?Q?ef0fDkyM/RmU645CUAFTga2I4Afn1ud697YJMu9eQ9JxFy3d0x89m2wQqCO2?=
 =?us-ascii?Q?Cm0CvAOmiEPUfTZueSKydVL7JyJVNsn0C4O+29niQD4lrB3bPDonwv2OFlWV?=
 =?us-ascii?Q?BPx1AujlVHf70LreePL84fk9IqI7U38xOtjiOFOK4VCnzLwFw7mFx7Yrgr0j?=
 =?us-ascii?Q?hXuZeHR3BjXPqqYbda3tPmu5+rE5Vdv33hOcxW3OkEd4rgPoVHPKJPIMjlD1?=
 =?us-ascii?Q?kpI3iGoIId5Rb5afYMij+Zu7IoepROld3oONCXnCad0ZMB0+yG9zB1HBE3Uw?=
 =?us-ascii?Q?wts0UT/hxwsRd2rERpEf9T3elOsW7rt58NauGmD4LBD7atMYmCLqUmVSI/W3?=
 =?us-ascii?Q?tWYEMY0IiRz1sKGYkpoyr1tBQmzYf0qRz8jptrKf+AVncQHY6ZTec946k20z?=
 =?us-ascii?Q?A8v1HcYnzwgdFqmcO3LsixjJUC9Zyy8WC5olGM4hFzKPVxogyA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oQDsyRXorbI4SFUYEIn8Lx3xvro8FgDTjC5DIpS5bkV1Uzs2skxt+wRJus2V?=
 =?us-ascii?Q?iSAsmzzl9JQGPFTu/Uq6hRgxf1czdQSH9wYyBsuSj8cuCOAkBuZEYtcQRTli?=
 =?us-ascii?Q?xrwpMQjn3VHHLIXTleaNpuT8+9ZzBAM3AvKWb1nZlP4hziy5X9zN4IEnSL7I?=
 =?us-ascii?Q?3Kftshi5n8Y2M4PYqC/CX/fJAFtwMEtJ+qooTryEVDPOEk9rHDL4u1hTCjl7?=
 =?us-ascii?Q?ghP1UOmjLxwG7WphtZRIzT7nW27uCY743AsPRa4eY1aHqERJ28eoWxr+9uNR?=
 =?us-ascii?Q?1gOYkVJ22X0g6yygaQ1dDT+ENmZ5oHL1YDX+5hJjPHuK7chscmLfPPAE5x9Q?=
 =?us-ascii?Q?q9j3w+9lEERQZC9/9rVjMrXVGsMs1BPQvZj1mPzQwDIne6Dgw2wNlvJsn6Jl?=
 =?us-ascii?Q?iWvhOaVlV18shSFFgAOA6RTTPBpkXkPO2LQO2zDaGmlMr1946EFGXph/Bk++?=
 =?us-ascii?Q?mMFSG+1u9ieelMf7/FTFno+vUwwmFn1SeCiOR3cXObRfc1JFBeCF9g+8m3kx?=
 =?us-ascii?Q?AcsuP305E+CNk0+dV4rel7spISzkIs8mM84izCwmILRnhROKE95FuqlWv/SW?=
 =?us-ascii?Q?bXnne4gObXnJ+yt7meegNeZzCUBB19zA9dUDDUQ7Xw+Ydpe0etxsgpmvOKS8?=
 =?us-ascii?Q?1VldJ2JD1t6g1xebY0N/SiNqwhMips/MkRFK1Fyp9lO8rmH2lY7N1ekTl9vb?=
 =?us-ascii?Q?lNiiA49oBr1n5x14fg5pfWijoEYYrRWqhCN0xUAfE/krc3fvBvmNOkpOGgK1?=
 =?us-ascii?Q?sv/totni7AJ6tFxPwHqbjFtJvnxn0vl/YtxtsEcgrUV7CxPSz8v96v+4s0bt?=
 =?us-ascii?Q?rQYpSyTCdgFwXt+0KWMY/63RgsKWUdwUB1Blkz/fqosEBbyQRO0q/lwe9gqd?=
 =?us-ascii?Q?AbIepTLB8lXHvsevsxPgnawdA3V0yEl5f/OYYAyBBwmSHD2fW3Otnuc9++Vg?=
 =?us-ascii?Q?QfMpt4WqvER5VUB0Laa6csmNdPIbIwEDxVpb2cxbR0khN0OrbH6eHsyoaeeQ?=
 =?us-ascii?Q?IuCkLjp4d7xSYIGMf8sPuhGPwtUePR2qdl70i85s2MYYZo9sMoKS/G5F0eed?=
 =?us-ascii?Q?TcRn7R/gPQGk3gikqhoHvmMDzT9KAZhRT1CZ/arRqMNvU2HU0biy4QTYqbu/?=
 =?us-ascii?Q?LqUyLr800ULTn3Rs1nAuz8a4u+LKZQClqnhKlM5DD8el6QMN2RrvvIaxkGSy?=
 =?us-ascii?Q?Qc3bQX4hp625Egl+fQFOn7hlUytOFmN4UPBemv7YzpdTcsgJGG8WUyEmJAiM?=
 =?us-ascii?Q?r+Vsfsx9ONwxDbaQrYOltw4opG2KxqKqvZcVxHKze+SZCBBMsDe6Sg7QgS8O?=
 =?us-ascii?Q?jHHlrnh5yXpJYYbcRW8CHWHtRmISwieGACG3j3cvLJ4/9PoTl6Loi2GrEeH1?=
 =?us-ascii?Q?V8eHktrK/1ei5x3ei4tCFEJEy8oA2Ajj4+SR0bm4xSh5BPLs8gefpomOsJy0?=
 =?us-ascii?Q?0qCFo2Als2JlIh8CNpskPzmijRgYK7a3KHpxnklXyd7sTXLBvldEx4mFIGuc?=
 =?us-ascii?Q?OyiJSYbsxU82W+jvtYPgX4fBnAlepCd1c6IGUM772tuK7xeLuwdktTU1DLKv?=
 =?us-ascii?Q?QNA6r0fszeOoaRXp6X38y3JWRcZw36g33GUHYCiMZ/FFIoeVD/rs0yf9BUUH?=
 =?us-ascii?Q?tSe7NzweLThalUfzMxnfPJ95jDboN2FQpJ89CJHkF7P8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 352df1c3-e3e8-4dcf-c1ef-08dcb6c17de2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2024 09:15:33.6097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9K220UUCQjweE6wBveOPIdmh5pegMFIsbeT5r3AOxIwXMy2lEq17Xpf6uJpXH6m0eaeupbzCQVbg0pf1Xa2bAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7514
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, August 6, 2024 10:11 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/xe/pm: Change HPD to polling on runtime suspend
>=20
> On Tue, Aug 06, 2024 at 02:25:13PM +0530, Arun R Murthy wrote:
> > HPD is interrupt based and on runtime suspend change it to polling as
> > HPD is not a wakeup event. A worker thread is scheduled for doing this
> > polling and it keeps polling for HPD live status on an internval of 10s=
.
> > On runtime resume disable polling and fallback to interrupt mechanism.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_pm.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> > index 9f3c14fd9f33..d952b06ebfb4 100644
> > --- a/drivers/gpu/drm/xe/xe_pm.c
> > +++ b/drivers/gpu/drm/xe/xe_pm.c
> > @@ -22,6 +22,7 @@
> >  #include "xe_pcode.h"
> >  #include "xe_trace.h"
> >  #include "xe_wa.h"
> > +#include "intel_hotplug.h"
> >
> >  /**
> >   * DOC: Xe Power Management
> > @@ -378,6 +379,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
> >  		if (err)
> >  			goto out;
> >  	}
> > +	/* Enable hpd polling on runtime suspend */
> > +	intel_hpd_poll_enable(xe);
> >
> >  	xe_irq_suspend(xe);
> >
> > @@ -427,6 +430,9 @@ int xe_pm_runtime_resume(struct xe_device *xe)
> >
> >  	xe_irq_resume(xe);
> >
> > +	/* Disable hpd polling on runtime resume */
> > +	intel_hpd_poll_disable(xe);
>=20
> This should be handled in xe_display_pm_resume() (likewise enabling polli=
ng in
> xe_display_pm_suspend()), in fact it's already called there.
In xe_display_pm_suspend we have drm_kms_helper_poll_disable and it disable=
s
output polling. Moreover we don't have the functions defined for
enable/disable_hpd defined in connector_ops which is referenced by
drm_kms_helper_poll_enable/disable.

What we need is on runtime_suspend the poll work should be
enabled so that hotplug can be detected and can come out of runtime_suspend=
.
The same poll work is not required on system suspend.

> Also this is missing the xe->info.enable_display check and polling should=
n't be
> enabled when system (vs. runtime) suspending.
Probably HAS_DISPLAY can be added before calling this intel_hpd_poll_enable=
.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> Not sure why the display is suspended/resumed only if d3cold is allowed, =
for
> many of the display s/r steps at least it doesn't make sense to me.
> For now moving the d3cold check within
> xe_display_pm_suspend()/resume() and enabling/disabling polling regardles=
s of
> that flag would be the simplest imo.
>=20
> > +
> >  	for_each_gt(gt, xe, id)
> >  		xe_gt_resume(gt);
> >
> > --
> > 2.25.1
> >
