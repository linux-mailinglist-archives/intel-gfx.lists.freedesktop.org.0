Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C67E0A4388C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 10:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD3B10E5C3;
	Tue, 25 Feb 2025 09:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lcx+d7gH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF96910E5C3;
 Tue, 25 Feb 2025 09:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474136; x=1772010136;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7deWdEd+m4vp+7kFq53Zf0xYaeK4FLGxoUWorQZlK1k=;
 b=lcx+d7gHtSYfs0vR0VXAUfKcHg2kMtCVJ8AYS5aBqKpoMRZfPQ1JvRNM
 W+S06lwRMQ9P/2ibEto0fVwyGOQcrHpay1KBB/QFNwyNZfmpKXAr6ZnDe
 vvQ3HMP9KA1hComd4Bw5Md5srHo6ekprlUSeM+lMx9jLRheQLhNHhVXWj
 gcNpKNfd8CQDoMyWjM9Nm6vYZPzso0KOuxcyIjbRtVKVvK4fxWGVn4pif
 rvKFnyB46S6a8BlZHQMJ5AR12gAn3tEpqpQRXWKzn3T7AEhZok0Cok7RV
 UB2svWB9AtCht1Kui+wNBjtxsef65LUYTe6mwnwyjh+mkFG7BuHFwAgJE A==;
X-CSE-ConnectionGUID: u4VgB7wCS3qYkSgEgJqLeQ==
X-CSE-MsgGUID: KRUrCrHuR7W3rAyF+w3FRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52694183"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52694183"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:02:15 -0800
X-CSE-ConnectionGUID: ahTbYgIFTjSm/NW3C5hH5g==
X-CSE-MsgGUID: DmF2Q9PjTZCh9nXGd4hSdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120429897"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:02:14 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 01:02:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 01:02:13 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 01:02:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qhVAmca/qvz+l37wCSv0QNojLnHJnRPiOIY6cT3IXZ4Cw2UU1e2xTQpT3BprOlFRyQysKt0q3Krr2mdHQ60PqtMAIkk4ISC3vzH+y7alMp59fOj3iqt/PlmvtR4cTM2tlswhLRdJLmiu2mT6dOA39GsCNSaM3NJ5+0GWFJ7QfiaCWnRM3ancLhhJoc87CcFhtdLzsW9eNjZ5Szkz9AKIvJv2bPZ1n2nHaz1IyGVTMTCDlQAda5THjmg4eLUDscOBWLpyjRqePcxSsxR9igs+xzgual5gmQGFV62IVSVDeMOX78s7HOuRd5erac6pUEufZKOnNBld8MzbfrtIkTxCxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/YbQNwi420SKe/XpRrPtUTiubFhIlP05kRL0AvFaE9U=;
 b=yKBEZu5mGB9y607u1InKXGPc4gqBoBXQ/+jqyumn/XbmNn3/fSylmp1meG/JywOxiPXMnEWU05jDTk5Zdi43sCM91q8htABy4ktrxqZNEDCnOXOdztaqHhKoF8U2JMP3FrRCt+v1s/HUFq3jWGCkRQ+3jMNq0iIWop64FePZWL4K0ihCOnVUplxLDsEo4dO2xA2GWCsox4G6b2VIwt5SA5LIjWukWjGb70acGMKPd0eJT6C8Gt6H9oGYxfpoC4FFS/hjeGoM47yNl28E7gho1n8HNpwGV82Cr13Fpy3/wG5fKb1U/HZXSipIJ+oheJcuAbgdGZ1mff+L2Sbq9Fb2dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB8296.namprd11.prod.outlook.com (2603:10b6:a03:47a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 09:02:11 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 09:02:11 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Thread-Topic: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Thread-Index: AQHbhpZwSO9q1PhhNUuCxKOUgbJjsrNWRSEAgAFsPCA=
Date: Tue, 25 Feb 2025 09:02:11 +0000
Message-ID: <PH7PR11MB5981F7169632987B2EB06884F9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-3-animesh.manna@intel.com> <87wmdf7har.fsf@intel.com>
In-Reply-To: <87wmdf7har.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB8296:EE_
x-ms-office365-filtering-correlation-id: eff43013-ee77-421d-a064-08dd557b1762
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2n/s5oCXMnyRFysE/HEJ3SnevesN8Iw6qRLtFH+zWEhF9HOJ7eAYkqYaGdLu?=
 =?us-ascii?Q?SumkdJd9tRSEO/FmDPWyoak8eqz5gRzEQOS3QHcuN7EF+aO9FNGUk/xEliqG?=
 =?us-ascii?Q?OArHbS6h4PNhc6iLGGmXZsTcrbpKmp1V6bfM8XRISMOQ1N+o3QiS02+ARzH7?=
 =?us-ascii?Q?9ObFapQDu/TmIodMbdhM4weeiK36WxCpPhfYik2yLklFiT3MgWx3Z0xTGOvz?=
 =?us-ascii?Q?OQSHJthL54Ev7k9S3KkG2hj72l7BMaVHDCfnAkGEuhcJ780fgZEse7CWfvm/?=
 =?us-ascii?Q?Blmj2gVpvrdGzbWkwH55qKBxGSkIppjlNVKSDloG0dTJavFiuCndciymm7va?=
 =?us-ascii?Q?QBNLLDXBRPAIlZiVR8PIWgAFTLshMk8oa5vZjIcwG+/gOji6+TlGuZpl0z8S?=
 =?us-ascii?Q?YlaKu/D1ymmZyXf6ksx5nWFdZjykPhKrBmxbPrMNTvnEH0cG09khzNpSSPpP?=
 =?us-ascii?Q?s6pGJXedcRzj7Idtjnx5CAGHrpPlEYtPtrqQV7psCUu4zaEbxvE7IGHHXm5J?=
 =?us-ascii?Q?G18MiY21koLxIv7XR26l42zJIbwho1z0wCOu6U0v8gFFPfH9DbfbSBejWyzG?=
 =?us-ascii?Q?k5MMTl4G05qAG7+ZHPEE0mkdytCc2+6VFmdrAAd520PFlS32hwkgB7KGzNQK?=
 =?us-ascii?Q?IyJCDK2PIOy9o/tOGpJabokBTflCEFXdeelpzpULI7BTC5VlHNBIHSmJa534?=
 =?us-ascii?Q?JBo23fjtxkdOftmmWSvJvx3u0I5YjwlJIiCXOd1eIoPC7jK1JMpxlytWFONg?=
 =?us-ascii?Q?JZJdkDl1zmG4vXio93e9NZ7N0xmeiW0NgFrWb0+cGDXtIU1QUJTahHNICANO?=
 =?us-ascii?Q?pywCSC1gjSG75szoGLCQ9uTB0Xe1FVm3hBCXOuFo3m9GLYpuHaRL9FDePVnY?=
 =?us-ascii?Q?VynN3M590vnnDanYDz9b/rdDW+WxB2wKaEuOPRC8DNHOqr8NDfz9o9C+ywH8?=
 =?us-ascii?Q?GU5G52dKZ9zFX+dzdG55mmUDiI4GNAAZz8nOb/kk9Ma0urKll3tFJtXuNMY7?=
 =?us-ascii?Q?qD+jM9WUCjE5zmwfWzKGpw2q+FZVLiWlgvA6Svo9rYBLHMDJFZVKqjjwnpxh?=
 =?us-ascii?Q?FJd785PSjVrAv8BHck8O5LW553rttDcIFyl7OOZufbtm+86wI/RazBynDJOP?=
 =?us-ascii?Q?d4xBaOl+VkcVXt0Hlx20s84Qqbm1b/pPy9mjCmBmWLCArrH6vX8ikMG3RoFu?=
 =?us-ascii?Q?yCxEto3nFeT1RFQIgVyzc/faltr4PHSJRJ1OYWZ3ET1Z23WOuC+Q7OF9KjdF?=
 =?us-ascii?Q?1QCoqJwQxubBvdIgJiTTW/fE4wRC2BBwbYxtRM7ScDOUuZLK4ySzwbvcU8Oy?=
 =?us-ascii?Q?9en2OybjlUy650NLaD2ZxoOXT2tlLcv3zPzi/f4/G+lqKC58h1RkEgEJ4/H1?=
 =?us-ascii?Q?7yJ00PhIlO8qrSAraI8H5Lkhbna8ysjqGosEKP1e7L2v3lr3BM04JcC4le+L?=
 =?us-ascii?Q?JsnAqJ0lIZXAK9VDWd6zZ9qG+vJs7Z4U?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LTQIPEuA/QNd7sZLsa5aihjpEWD68gwwKhLDoED85kntYssVzgQVFqWV4W53?=
 =?us-ascii?Q?55a4A7LztuXaE5g6vW5uZ6ACd7SXdtYSVp5OLUW88n4i8+I/2jXorXMoTYa+?=
 =?us-ascii?Q?svsdaVjJrmqKW/0OgYLmRcSbo+gDh8Cp8Q6EClyggQME2rFdiRv+c0H7KxkG?=
 =?us-ascii?Q?cuJXkTFu+GhGyhxFTk98mOmLSOvKCMhih9Lk5/ARoTyNUGUaiFOun8T+P8BC?=
 =?us-ascii?Q?vDkjv+gjgU7LZfcDmn9b1lNfDmarNyBizh+jlO9a/NZkKNgT05k+gY2Relh2?=
 =?us-ascii?Q?4jnFXcphlvHE/IY9HitSGtZrSOEXFtF+4nven6Z9Tl6tn7vH+WbNcaiMeHZ0?=
 =?us-ascii?Q?3WFlVNBOKXU6DqDKbR/qlNS9WPFXf+3rX703FcopuIpCIQltTyK/RBtqTEYo?=
 =?us-ascii?Q?OQ+M0vNThkMC4NJdTUL6ozrldaalYFBS7FuNA34Afo1TzQMfdT+XBJvYQ2Ag?=
 =?us-ascii?Q?mJOCzZAFCcz0CL5/ZU8BMqEJvJKTeSii8oS5vSE3fEPH7Ew6O88J0z9izdVL?=
 =?us-ascii?Q?5MIzd2g4lvOmvlbiyKNSEbk83Q58eTY6mnG3nHhnjepEzzlscNlMWsfUs1LB?=
 =?us-ascii?Q?bOlj6rpLBzWCwLIR66OWxTIBkOHgrm5kv0qPoz9AjTynipd0sQ71Ed+VX7f6?=
 =?us-ascii?Q?17E1uLnSFMEXxY1SCdSH3v+bn+Fpr06+4v26/No+6kMVcbFrnbJ6CeKioboG?=
 =?us-ascii?Q?zA9jJY2EJ5IZuZG7Nnqt2sQ6ji1OStWpN4QjOqRqoIVGCnoYh9SOSOfMCXdO?=
 =?us-ascii?Q?8RC/epSDGRZ0/4eHsyzZIuMngIGailx2uNIoi7ADv04v6xe/w+HqlqczCyMf?=
 =?us-ascii?Q?8sJXrX/zOS50dbY3xPXUhczSMhZyytH4rBgoWBTmyx5IG/bG85CUeX7+TdiD?=
 =?us-ascii?Q?U7sZphLH6qiYmPJFwwlFhm4e7RX1HmcgnRgxXqVS3KbSYEn4Ikh3c/JdHWQJ?=
 =?us-ascii?Q?0g4UU0Pka1H+lvGrUHv6c48DnSlEchWRc80ylyuJ7/GEdhCYugeFQmwHL/F/?=
 =?us-ascii?Q?i54buaVC2VHkaglxX//EeYtAf9fXQxYtvQ+Y0y0hjEM9XRq8iEP+osE9bvX6?=
 =?us-ascii?Q?0BvQTvQjMS0OLLRzvEZqVIYlVC+pt5nIjbKqp0oGqfAlE0BEnA3h8fmHhFD5?=
 =?us-ascii?Q?3gvDw85MbbPSnqQ7Yb98YYqkT9YR626XKW7wHPlzPcyVICHl4Ql6cIZRnM05?=
 =?us-ascii?Q?gLSZc5lOpIOOFebJARllqGj4s+0+YTjFYdXyZ/QrmcfR+dQ+OZl7Re18H/F1?=
 =?us-ascii?Q?RMTRGf9lvSHYScJZSpImSQ2C/jrBJu/KkZ0ZOfvXogmDWJwde5OpaKusLSQd?=
 =?us-ascii?Q?0uO98gfJoNhd4KdqbHBe0C5Wm1u3s3V6T2TzitScTcx9Ax0sglAlRRd8uxG7?=
 =?us-ascii?Q?FIRyS6tr59M7o47l+mGxxiI/GK7hP1umqIcyif4xUkkqwEhmKqGA+dK9cXYp?=
 =?us-ascii?Q?zdFur858MnI1M0kXIrajZiRCS7Su4iKDjK0sub6rxrH3zc+SimPJSdS2mgmD?=
 =?us-ascii?Q?nVE68TuofaV9IUEhU5F0vYO9o/FGt/9aTnh0qHKjCPYl+4ZmB5EV88Ve+L2q?=
 =?us-ascii?Q?sK4I9LuJ2wfDAIOtAUU3Kv32EnSqJHE55h8HCNwh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eff43013-ee77-421d-a064-08dd557b1762
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 09:02:11.7877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SeZ2l0C/L9sOtbu/TLnNic6aRzJ/4vKCklSy6/ltJy3mP0bWfElqpqqARUU34FbcTrpS2OAfs1XSWOysjqRCMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8296
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, February 24, 2025 4:15 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
> psr_disable
>=20
> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Currently clearing of alpm registers is done through psr_disable()
> > which is always not correct, without psr also alpm can exist. So
> > dis-integrate alpm_disable() from psr_disable().
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c     | 21 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_alpm.h     |  1 +
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 ++
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 11 ----------
> >  5 files changed, 25 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index a53ed83f6b22..d94c96ba46b1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -365,6 +365,7 @@ void intel_alpm_configure(struct intel_dp
> *intel_dp,
> >  			  const struct intel_crtc_state *crtc_state)  {
> >  	lnl_alpm_configure(intel_dp, crtc_state);
> > +	intel_dp->alpm_parameters.transcoder =3D crtc_state-
> >cpu_transcoder;
>=20
> Why do we need to store this?

While refactoring found that some places where we don't have access to crtc=
_state and only intel_dp is passed, using cpu_transcoder we can access ALPM=
 register, will relook again and try to drop the saving of transcoder in in=
tel_dp.=20

>=20
> >  }
> >
> >  void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> > @@ -440,3 +441,23 @@ void intel_alpm_lobf_debugfs_add(struct
> intel_connector *connector)
> >  	debugfs_create_file("i915_edp_lobf_info", 0444, root,
> >  			    connector, &i915_edp_lobf_info_fops);  }
> > +
> > +void intel_alpm_disable(struct intel_dp *intel_dp) {
> > +	struct intel_display *display =3D to_intel_display(intel_dp);
> > +	enum transcoder cpu_transcoder =3D
> > +intel_dp->alpm_parameters.transcoder;
> > +
> > +	if (DISPLAY_VER(display) < 20)
> > +		return;
> > +
> > +	if (!(intel_de_read(display, ALPM_CTL(display, cpu_transcoder)) &
> ALPM_CTL_ALPM_ENABLE))
> > +		return;
>=20
> Why are we checking the hardware state here? We should know what state
> the hardware is in, right?
>=20

Agree, we can drop the above read.

> > +
> > +	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
> > +		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
> > +		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> > +
> > +	intel_de_rmw(display,
> > +		     PORT_ALPM_CTL(cpu_transcoder),
> > +		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0); }
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h
> > b/drivers/gpu/drm/i915/display/intel_alpm.h
> > index 2f862b0476a8..91f51fb24f98 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> > @@ -28,4 +28,5 @@ void intel_alpm_post_plane_update(struct
> > intel_atomic_state *state,  void intel_alpm_lobf_debugfs_add(struct
> > intel_connector *connector);  bool
> > intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);  bool
> > intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
> > +void intel_alpm_disable(struct intel_dp *intel_dp);
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 7937f4de66cb..26aa32d4d50e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -35,6 +35,7 @@
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> >  #include "icl_dsi.h"
> > +#include "intel_alpm.h"
> >  #include "intel_audio.h"
> >  #include "intel_audio_regs.h"
> >  #include "intel_backlight.h"
> > @@ -3570,6 +3571,7 @@ static void intel_ddi_disable_dp(struct
> intel_atomic_state *state,
> >  	intel_dp->link_trained =3D false;
> >
> >  	intel_psr_disable(intel_dp, old_crtc_state);
> > +	intel_alpm_disable(intel_dp);
>=20
> We have old crtc state here, why do we save the transcoder to intel_dp an=
d
> use that?

Got it, we can drop saving of transcoder in intel_dp here.=20

Regards,
Animesh

>=20
> >  	intel_edp_backlight_off(old_conn_state);
> >  	/* Disable the decompression in DP Sink */
> >  	intel_dp_sink_disable_decompression(state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 4440521e3e9e..b78721c451b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1801,6 +1801,7 @@ struct intel_dp {
> >  	struct {
> >  		u8 io_wake_lines;
> >  		u8 fast_wake_lines;
> > +		enum transcoder transcoder;
> >
> >  		/* LNL and beyond */
> >  		u8 check_entry_lines;
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index c1dd9c739fd4..1d202f2eb356 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -2141,17 +2141,6 @@ static void intel_psr_disable_locked(struct
> intel_dp *intel_dp)
> >  	if (intel_dp_is_edp(intel_dp))
> >
> > intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)-
> >base,
> > false);
> >
> > -	/* Panel Replay on eDP is always using ALPM aux less. */
> > -	if (intel_dp->psr.panel_replay_enabled &&
> intel_dp_is_edp(intel_dp)) {
> > -		intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
> > -			     ALPM_CTL_ALPM_ENABLE |
> > -			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> > -
> > -		intel_de_rmw(display,
> > -			     PORT_ALPM_CTL(cpu_transcoder),
> > -			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> > -	}
> > -
> >  	/* Disable PSR on Sink */
> >  	if (!intel_dp->psr.panel_replay_enabled) {
> >  		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
>=20
> --
> Jani Nikula, Intel
