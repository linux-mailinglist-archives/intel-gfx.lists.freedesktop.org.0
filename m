Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D85F9D2203
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 09:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC55810E085;
	Tue, 19 Nov 2024 08:59:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j1CAnXKr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1BB10E085;
 Tue, 19 Nov 2024 08:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732006742; x=1763542742;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GCH3YeMmwkORz23CVt0uaBB9xNcAH1zR7r0mF4QyMwY=;
 b=j1CAnXKra+iPDnzJU1ghf6dQ8huqK/soKuNaKY71+XUJOiJcoOux5EPv
 0jfPs06QA7Sq4HhR2XVaCFiFFwzUUbepeLxfNYC4hJlmG+z03uuqozLFr
 aKHQQotSpSCtAfZGAhPlBRcChrUxYSRGs5yubbpbg2o5aFZ+cZdFWvvCe
 8lAsR81wjdtVoCjqhZa/kFqv1DKqbyUyJ50V0dQ2SBw8GlmSwqe/Y3Zi2
 neH/jH2RmzbXQiF6zz1+yED1O9bZpgbGXfxBgWRBNyB6CV9XqPKZcLYvP
 L+KCZE1LCjL7QfjjzqGFuJLcIeECvETan300NQZMDNUbEiWra2IYLOdBd Q==;
X-CSE-ConnectionGUID: +fEDAAvhSAStaq9Fcgt1yQ==
X-CSE-MsgGUID: 1MRnw3QiTmyRPXiJIBIk9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="19603673"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="19603673"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 00:59:01 -0800
X-CSE-ConnectionGUID: ovLgol69R46PJqWrN9L3bQ==
X-CSE-MsgGUID: iZkmMLVvTbmVgbHxiBB2/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89901991"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 00:59:01 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 00:59:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 00:59:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 00:59:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FQ/uTOvL+4X6HAUmzwc8u1pxFuP7dRFcaxmoI+7vSXd8/2fBp87UWrzN7GTb9ooqiXCxGVqtli0N7Nls82BiQeXrLGdsZmob21d2cdgiOh/hH9HJJvk9rBdIiaQFLSOEQXkZmxkKu1u4teDzd9EpMfwoDdSC+lb6Cwd8UoVjk6jMeUn9O+JtQsSIYSX5xhjO7s9b1CCW1I79+PEa97PzVqq02S/IfkW5EXFLh3/v1pPOnOF0HDHvmC3r+xGhmc1WGWPLNXhV07Z6RasIdhsavt46nRTvYlufIOi+b9DU0b3LWLPkhLhoHV6PYx0X1VCvFA/VS5XMuUkLzuG0zpcO1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GCH3YeMmwkORz23CVt0uaBB9xNcAH1zR7r0mF4QyMwY=;
 b=QYmLT3rP4udPrFXAxw21W1fw8WjEyqwHXIpEaqi3L9BrQcI41H7EFz/+HSAJyPjAInZSx1OnJzGVwovJaElzFVCuhHz6XuTuwc4hsAFnUgv0s02tTodGFrFiEkw7Bk0+ZYhCZ3lUz0ShHZdCqftUxP7NaRdixLjauVl1He+eb823ddgonLHa5cPQcWF+YAnubqFxsyABoSCl632WAh3IaEVbUX8hOHn1wi/rr9A3n0C/6fWMZz7Rbu0yKg/P/NmK8rZDe63qWPo1b92S9IBr5zRQpsy8yTujfCSQGIyHhmaXuZUHov7HQjBeTP0x9AkCu1kWJu7BBB5oZ5GL6WuFZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM6PR11MB4580.namprd11.prod.outlook.com (2603:10b6:5:2af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.25; Tue, 19 Nov
 2024 08:58:58 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8158.023; Tue, 19 Nov 2024
 08:58:58 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [RFC PATCH 4/4] drm/i915/xe3: disable FBC if PSR2 selective fetch
 is enabled
Thread-Topic: [RFC PATCH 4/4] drm/i915/xe3: disable FBC if PSR2 selective
 fetch is enabled
Thread-Index: AQHbOhUiw/cjWohRAUWBah1Dekm3yLK+TGMAgAAB+gA=
Date: Tue, 19 Nov 2024 08:58:57 +0000
Message-ID: <fa75e770bbfbdd679f07a0eb36986175252cf80a.camel@intel.com>
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
 <20241118235325.353010-5-vinod.govindapillai@intel.com>
 <87ttc338t3.fsf@intel.com>
In-Reply-To: <87ttc338t3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM6PR11MB4580:EE_
x-ms-office365-filtering-correlation-id: 41699102-4cab-4bd8-cc1a-08dd0878675e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NG9GakJFZXZETXBYWHgwZjByVGZldnY0Q2hpQWRndHE3OGZUd2N4Z1I1aEFI?=
 =?utf-8?B?SDdDS1B2T2kzWUxKRUg1bDY1Slc0ZlIzdVdrZUMzZWI3d1gxeWg4NUtxU2Qx?=
 =?utf-8?B?L3pNRnV4TVJ6TGRIOHloQ2kwR2VXajZmTVBFbkp2MW9UelQ1Y2xKZ2lHWFpR?=
 =?utf-8?B?S3QxSHhDM2wzNjl2SVc5ak55ODk2clJZQ21qRlZCWENuMzlWZ2pCS2wyM0kw?=
 =?utf-8?B?V0NCcXZyZjIzcTlHTU0vUGpyWHQ0K1pTd01zeTFwdFlVRnRHZUplWVJJTitC?=
 =?utf-8?B?ZUI0OE9oQzg4NnVOSDBNRm5kUVo2Qk1oMGxVZmhMYVBHNDFTek1LMmNHeEgy?=
 =?utf-8?B?M2orYUVzV1lFTWg4TXdFSDEyZVRtN0VxRHdlT2FPdm90aHlJakNEQzlxYXdR?=
 =?utf-8?B?b204bFh3cklUVFZCN0lZWkd2UVZWNDNNaTNlRDZxa01ONlBkSnc0M1hhbzVs?=
 =?utf-8?B?NFViYjVvZWxEYlBYdmR3cEZFMitNeWFqUGM1MFNBTmZYV2UyVVRLMjcwa0tu?=
 =?utf-8?B?dXRoU0lrN2k1RWxsTWhkczM2amgxYXcwSC93Qjg5bzV3ZFUyYWFhb2lsUzJX?=
 =?utf-8?B?WFpMRHE3MFNjWmJjdnhjVVg4SEdTSi9vbWtueXB6WDgxNzNLb3R1SG80dFRW?=
 =?utf-8?B?bXNVaTRiNDl0VE1xbFN2ZVQ4QXV0TjRPaUIvWHZ3dExFWXBJTW1jMjZqMi8x?=
 =?utf-8?B?S2Y5eG5LK0lkb2dtVDJzVUExYS9FK1hobks4dXYwdGhOdG53TFY0U3dhenZ0?=
 =?utf-8?B?bWk3VExCT3o0T3lIMG9IaG00KzRmbWE3YzFESUZXTmFOcFhERXdkYzEvQ3Aw?=
 =?utf-8?B?eWI3SWhaMWlrb1NjSHVQZDBhK1dlK2ZjVXBJWDJTWURpRU9yWGg5RzUzZUNO?=
 =?utf-8?B?aVdib3JQbmhIUUNPYlZsWXlubGhLM1lmS056cGdocjNSdWFIUmxjaFlSblky?=
 =?utf-8?B?K2p2STg3L2NTY2tUNWRUUE1pbjlLTVpkb01QNXRIMk1ib0ZVcFllV1IrQllx?=
 =?utf-8?B?UXdjeGZpeitraW96SU84T2pSYy9NVFZtakVNZFBGSmxtSVNlaFIyVFNPaU92?=
 =?utf-8?B?aFAzRHdpcUdSbmZmeWkvWmJJUnZaRDc5dFJrWG1HbU1OcDBwWDlKK2NuT0Qy?=
 =?utf-8?B?MmhMcTNDL09UTWJBRFdMbTIrOWkwUlRuK0JncExRNWdGSDZEUm9wU280c0VY?=
 =?utf-8?B?QzBJUlYvKzN1bGJsYzZBSHJuS1hxaWpKeGJkdzFrZncvWW56RGJ1dDBQV2sv?=
 =?utf-8?B?WDdEc3NuZzBCTzZvbzZMb1M0aUFsTFdVdUFMQU5GRWJlV3hPTzdTbkE5cEJv?=
 =?utf-8?B?MW5RemIvNmo0T001TkdRT0xnVUtVc1pwNW14alc2ZGd3L0QzdHBlVjhacGox?=
 =?utf-8?B?TTgwQUlDcW1ROHZDV3pVRnFDWVExNEN0RUN4Y2RiclVENXpVNlZ1MkJka0JK?=
 =?utf-8?B?b1VvMW1QK2lCa2FyNGkwdHFkV0t2L1pFQlN6VnVWTnBxblhjSmVpSkdZbzBT?=
 =?utf-8?B?ck1zSXlJOWZPWElBZlc3azRlRTdyL2F0K2xTSnVoL29GWmNpQU92cTkxc096?=
 =?utf-8?B?eWNieit5bUdVem5DaFFKaEcyMGkzTUtXeW90aFRlR1NRLzBxL1o5ODRoM091?=
 =?utf-8?B?RUx2aDRxWUNJeXlrVlZ2ays1QS9HcG9jdlpZOTljMWxtelA5dlBCaWM0K1ZY?=
 =?utf-8?B?SHVFaDZnNmVQNlFGWllCUS9wWSttMXZ2Nkp1NDc0ZFl3cnpnczI5dkhjM2ow?=
 =?utf-8?B?dXQrVFRLSDltSFZUR2MzcDZRYjVFdVZvd2lqNFZJU05wSjhINFpnOFVXK3FR?=
 =?utf-8?Q?J+RJX3xhWKMXCBUr0qsuGUmUehC0ZYIJuc4rc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUwyN0pCUXBValk4ekVuK0hTd2V5WDZLdnRsano0MGhEdU51NHhrWWJ3WWpG?=
 =?utf-8?B?ZVVhdG1SQVB0ckEyaDRPTG9tSW1HM29WeTlHUnZ5NytzRUZNcnZOZ3IwcVdT?=
 =?utf-8?B?OEQvRVdlOWIxN0JoS1NWY1NpM2YvUHgvRCt4ZzlXWHpXRk9ETVp2ZkdWVStq?=
 =?utf-8?B?R0lrTm9peEhsM2lWakxtOXR1YlRBZ2QxczM0STBYVmh2SkR4cnpHeTFHcWxq?=
 =?utf-8?B?TkNoeXVZblNyajBpU0ZqWS94RER1WC9jT2JrWVZjSnZtdmFhMFFhaEg2ZUg2?=
 =?utf-8?B?NUU3ZUkyVEEzSEcwWUNSUGFRaC85ZHNjaGZxUTJzRTM2eGg3Ui9zM3dpQVJt?=
 =?utf-8?B?TS92c2hTL0sySFo3RmNaZUQvNHg1ckFuSktOdUdSS0pHdk95ZWgyV0VEODFB?=
 =?utf-8?B?NEVNTlROaUdMR3lkL1FTTUZZWXk0ZUkwUHdXRmV5R0gwZURRWnpneG9NblNk?=
 =?utf-8?B?YjN0TlVpT0tVVFNyemlaWS9hWkg0bDdBZE0zVlBkZnBMN2VRZklFY0VmQ2JO?=
 =?utf-8?B?RU4yenp6VnhZVG5MZWdQcDNnSm5mVjNBTzB6NGs0T2k5c0lRM1QzalZNdmpi?=
 =?utf-8?B?ZHNCQkU1aWNqT3lsRHFLSVNpaWtJeTh3bjdpd2YzK2JBcW1KRjNRYU9JOFNH?=
 =?utf-8?B?bDJYcXRwcVF2RWF5Wkp3eVJzak5HQmw2TElreDNHUG14YnZOZWN1UEJFSnhh?=
 =?utf-8?B?NXdjNEFVTXdGQ3dUUHpUejZuSjdMZXlvcVVTOTF5Y0pMTzJJZ3FuUWZpdTRz?=
 =?utf-8?B?ZG5Ba2tVQlZ0K2hETTR1SnljT3ZodTJYSWlRbmowbk11UUNiZkVwUEg4NlJ5?=
 =?utf-8?B?c3BXYWtJTEg3M1g5TXZ5ZFJMN0RUQjg3ZHQxcUdreHVzbHNLczNvZlA2UTVE?=
 =?utf-8?B?OVRkM1F1K2xrNkZSMVZGcGg3Vm5CZ0pGTHV5V3lRMVVuakVJRGcybjI3QTAz?=
 =?utf-8?B?L0ZjUC9KdzhqRk1iU0g0cFE1US93V29Nd0FxZGJxclc4Y2lNaXdpSGE3WENH?=
 =?utf-8?B?b1hDMkl6SXVQL05NczNENS9lSWlObDhOK2NGNTJCLzVLZVpuT0RBbi8ybWps?=
 =?utf-8?B?M1pEbG15UFoxZytzRENySGRFNUpWUWNKMnFPUUFIc25tbklQTzlBNzVUUjFp?=
 =?utf-8?B?WTBRbkh4MWk3cDdOWDFsczVGZ0grVExqQkgzVVZGVnQwRmV2dXloZUtQc3Y2?=
 =?utf-8?B?Ymt0K3E3TVlzdDlxMGJGR1JhR1JjczZtMUh0K0ZXMXkxZnhvK3NnbzFzRVJR?=
 =?utf-8?B?a2NUdWlldVZuZmp3RkdxQk1NNDlpWjRESFNCN2lrOHlkQnpuTjZEcFJjSGZD?=
 =?utf-8?B?ZDBHVUFPeW1tT1d0VmI1Wlk5Zm95eFJHaGhIMFFZY1NZY1hkN28zOFRZaXQy?=
 =?utf-8?B?NzhEd0V3NVo2a2VsVitocFJpNitqSzFURFM2YVFNNWl3WTFML1RXSmZ1MUhW?=
 =?utf-8?B?TUhwa1dnR0NPb3FDUTJnWWlUSkc2L045bVYybjlyT2tvWE1BSjhITGhQRWEx?=
 =?utf-8?B?NzZKUmVmckFQcEJpbHpINUtmWVhHOElwam9FZ2U0cVd4Wmc5MmVZcFY4WFoy?=
 =?utf-8?B?cmRYeTBIYklRbWlyR2tCZFZTVTRsY3dIaVFab0FMb205dWVWSjVVTUs2U3M3?=
 =?utf-8?B?REpBTXdLK0Z1c0Y3T3pWbFc0dDUvZXF1N3lRU3ZJcTRKQUFhSjNQb29IS1VH?=
 =?utf-8?B?Z0dzNVBjV213UEk1RDhOOEpMVjRxSHVISWdJODdNVmRHRzJMbWxtT0RZT0hD?=
 =?utf-8?B?eW9GaFpkNmU5dC95bDFGQjhRKytucExOREpUbUFrTXQ4OTNLNVo4NS9aVEVs?=
 =?utf-8?B?dG1uM3JlaW1KT0ZMaXNjWXhUT0FKc2s5dXZqMUtFaWI3Z2pzQ21FTEVpNWE3?=
 =?utf-8?B?UW92MC92T2tEN2FPR2Fyd2tPUmJtZHVRaHpsUzZyVGpaS210L1JJTVZMYWZ1?=
 =?utf-8?B?UkRoSkZQYWRmZTNnSXI2NWRSelFzRDBza0pEWUdtQlNiL04ydkk2c2h4RS9s?=
 =?utf-8?B?a1ByLzNaRXJSZUZZdGtKVCtQdlV4cmJRaHNPeVBNczBlaWRUM0gvcnMwc01F?=
 =?utf-8?B?WTdVc1MvbkptV09BUURsS2FOM0JQWG9TR3VMRGlseFEwUG1aZWZVUUY3ZFcy?=
 =?utf-8?B?VVBob2ZYaWYrK3hZdjJhTVArL0FhTGpwREI2amYxa3llSTB4bm5sdEk5cFdJ?=
 =?utf-8?Q?CJQWINJJ9L6iUxnReTXxguQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EE76A99CFB4E9847AFEB25B6C8C9CBD9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41699102-4cab-4bd8-cc1a-08dd0878675e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2024 08:58:57.9445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lZ2p8PQp/s+3KQnCk/vNBFI1uOXoLrijyZ6f/BP7DwK3CIyJEHQoDhnpVozsX6pdm6ndl9tL5NGoodhh9kDbFMtnWbrsAXex00XOUhAO7q8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4580
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

T24gVHVlLCAyMDI0LTExLTE5IGF0IDEwOjUxICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAxOSBOb3YgMjAyNCwgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZCQyBkaXJ0eSByZWN0IHN1cHBvcnQgYW5kIFBT
UjIgc2VsZWN0aXZlIGZldGNoIGNhbm5vIGJlIGVuYWJsZWQNCj4gPiB0b2dldGhlci4gSW4geGUz
IGRyaXZlciBlbmFibGVzIHRoZSBGQkMgZGlydHkgcmVjdCBmZWF0dXJlIGJ5DQo+ID4gZGVmYXVs
dC4gU28gUFNSMiBpcyBlbmFibGVkLCB0aGVuIG1hcmsgdGhhdCBwbGFuZSBhcyBGQkMgY2Fubm90
DQo+ID4gYmUgZW5hYmxlZC4gTGF0ZXIgb24gd2UgbmVlZCB0byBmaW5kIGEgd2F5IHRvIHNlbGVj
dCBiZXR3ZWVuDQo+ID4gRkJDIGFuZCBQU1IyIGJhc2VkIG9uIGFtb3VudCBvZiBkYW1hZ2VkIGFy
ZWFzLg0KPiA+IA0KPiA+IEJzcGVjOiA2ODg4MQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdv
dmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDkgKysrKysrKy0t
DQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
PiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+IGlu
ZGV4IDAxMDgwMTcxNzkwZi4uZTFkNTVmNWYyOTM4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gQEAgLTEzNDYsOSArMTM0NiwxNCBAQCBz
dGF0aWMgaW50IGludGVsX2ZiY19jaGVja19wbGFuZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogRGlzcGxheSAxMisgaXMgbm90IHN1cHBv
cnRpbmcgRkJDIHdpdGggUFNSMi4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogUmVjb21tZW5kYXRp
b24gaXMgdG8ga2VlcCB0aGlzIGNvbWJpbmF0aW9uIGRpc2FibGVkDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoCAqIEJzcGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+ID4gK8KgwqDCoMKgwqDCoMKg
ICoNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBJbiBYZTMsIFBTUjIgc2VsZWN0aXZlIGZldGNoIGFu
ZCBGQkMgZGlydHkgcmVjdCBmZWF0dXJlIGNhbm5vdA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIGNv
ZXhpc3QuIFNvIGlmIFBTUjIgc2VsZWN0aXZlIGZldGNoIGlzIHN1cHBvcnRlZCB0aGVuIG1hcmsg
dGhhdA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIEZCQyBpcyBub3Qgc3VwcG9ydGVkLg0KPiA+ICvC
oMKgwqDCoMKgwqDCoCAqIFRPRE86IE5lZWQgYSBsb2dpYyB0byBkZWNpZGUgYmV0d2VlbiBQU1Iy
IGFuZCBGQkMgRGlydHkgcmVjdA0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiAtwqDCoMKg
wqDCoMKgwqBpZiAoSVNfRElTUExBWV9WRVIoZGlzcGxheSwgMTIsIDE0KSAmJiBjcnRjX3N0YXRl
LT5oYXNfc2VsX3VwZGF0ZSAmJg0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCAhY3J0Y19zdGF0
ZS0+aGFzX3BhbmVsX3JlcGxheSkgew0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChJU19ESVNQTEFZ
X1ZFUihkaXNwbGF5LCAxMiwgMTQpICYmIERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwICYmDQo+
IA0KPiBUaGlzIHdpbGwgbmV2ZXIgYmUgdHJ1ZS4NCj4gDQo+IEJSLA0KPiBKYW5pLg0KDQpvb3Bz
ISBUaGFua3MhIFdpbGwgZml4IHRoYXQhDQoNCkJSDQp2aW5vZA0KPiANCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgJiYgIWNydGNfc3RhdGUtPmhh
c19wYW5lbF9yZXBsYXkpIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBs
YW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gIlBTUjIgZW5hYmxlZCI7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0K
PiANCg0K
