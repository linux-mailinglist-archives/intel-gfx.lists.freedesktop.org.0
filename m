Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43265B2ADDF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 18:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA1610E49D;
	Mon, 18 Aug 2025 16:15:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KzWZyCGB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63CD910E06A;
 Mon, 18 Aug 2025 16:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755533720; x=1787069720;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CTa2sc3CtBFseXwBZ6geTxGuNO9GRt7SNrTaoWsMuqo=;
 b=KzWZyCGBFeSPYfwb/MRFKjsVsDn0DNrsCJqWkSoyb5EjOl7sWEOWoyp+
 q4prUUo4Is50qwHznzWKbL/BwIv9abY7ROV1Zm3qwYCI8bIUCbZe/zFGo
 asj5Tnjk/RA9r/s1ym6O+ITj2cLhfJ7m8V5dPU+oeByi/GohvFOm9eH1M
 BuwhiJbMrcfFcJvD0ypNuCp1tbqVsHSEj+dIP2sRYDCgXfz0NbRUf2j6b
 R0huQb5Ah/c8SYQrAlTzUaJnZ+rzMm9c3XAcZwielDGCjdYE97LGc5Gnt
 zP5p/SB1BdhNPHJ+qw4afS/RoG2J/xiI+dbE50GK64qN6NLJGH+0iRHvC g==;
X-CSE-ConnectionGUID: L/k7OMiyRt+jT4/W3N/K2g==
X-CSE-MsgGUID: MpkeS1IEQUyOUaRO7CcNDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="68471837"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="68471837"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:15:05 -0700
X-CSE-ConnectionGUID: 56Cp6y/6R8elD0WPni7obg==
X-CSE-MsgGUID: ATJ9ktvaQGaK1yv6ZjegoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="171834442"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:15:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:15:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 09:15:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.65) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:15:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kDsdfi8hY4BwgxW8Aq6JwRVpmPgSWkuL2zPsdQ4O4q8jrrltOmNpKmeJiXxMKZg8cGHT4uf7/PnYaBKa/QGtqKXCM3D9vY5GQt93sffRk+TqnODOlVCd+wLomFseNjK9gh24r7iPdFNaJ38YYjqZKm5AJAi9yFF2cTR5jwJVwIQlCushQy9VHPps/BXs7SFQyYTKjHgk52i931A8w8cCeYkrd90WHaRhDnWpEf7LS3VKx71u/aVrgxKoDBw9Nucly/RwL8VyJcMKwXmXi+KdGWdHc1vg9XIdHs8TvMtf9oURkHWHwGHLMl93j5B5sszf1EkIWTj3ObXNaQh3WhlWoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EOSXty6Xx4/PCu8X2jcnkUzbumiKy73aXyxsdyCMk38=;
 b=pBRXjYPlf/AZhI1zJccWf0juFdq7uowPO0xImpcRn9kfZpLi5kRCmYezigb9EB0vuE2OLoO2FJpthaOHTCY+TfuNQ5aXi8InwkqDfHpHYZVWRH/vxAXNsSwU8+8Y+M5G8poBFIZWC+sbEJ34ghTPUXqjEi27Stcw8syRTmynMPGb+qfIRw4QCBaaOcMu3crXAp5Z/FLRdUF5BzasEi7u2v6nTDR5iu6lpqz0uTdXfVr3+3kWh4aeQWtcp/x6zCd3Lqcw9Txc3rkNGGiamZnGMhJdRWKVJ6Tb0P8rWgj+gBxLbijBJETHvazpwo8ygADk4dhaUoarbd+GNNah741rFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA0PR11MB7379.namprd11.prod.outlook.com (2603:10b6:208:431::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 16:14:56 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 16:14:55 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 05/12] drm/i915/dp: Add SDP latency computation helper
Thread-Topic: [PATCH 05/12] drm/i915/dp: Add SDP latency computation helper
Thread-Index: AQHcEBQkNMtMrDpkG0eEZYPfLReJkrRoljbA
Date: Mon, 18 Aug 2025 16:14:55 +0000
Message-ID: <IA1PR11MB634847B5053822B52CACA857B231A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
 <20250818073128.2319762-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250818073128.2319762-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA0PR11MB7379:EE_
x-ms-office365-filtering-correlation-id: 3f510f22-195b-4f54-268f-08ddde725ed4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NagFDBv5wOyxCxmHXLQpKz/8QIX1S1Mo0MTCzuSWFgbraFYPQMKhjFiYl8P1?=
 =?us-ascii?Q?+4U7g0hlELg7mUUfTTRPyWGgyPnWNgJq0urwgK+/Xl9y9lBoWbI+j/WAAvLs?=
 =?us-ascii?Q?CqmztpkQWOE8AuUUHtb4oHm4cOdrtDwO8k0Acc4tFwPaq9tZ0OhFmCjUJgO7?=
 =?us-ascii?Q?x4rUP0nUbBtpaqmv7+SkMHuPx06rHufRKzMS/t0RvPOO5zh3+2+NhpemjZ5R?=
 =?us-ascii?Q?ixjeJQroPHOiMnxyPiGlXYcjIOVlN5QXSbjpYJk0Kcm7OlA8JpuVhpLZSCFn?=
 =?us-ascii?Q?lnNzqIdjLuMtuKWr2nWAYREYYjShoMIoAgy+UQTLd/JUNQ2TQRfo4bfAbUlF?=
 =?us-ascii?Q?raXEiku9tKzEOgNGblDErZAiBJTKie9aDSlbTJxcFGyb4IrCe9TSY55bnNFk?=
 =?us-ascii?Q?ztFEbHENwMRyp29Z3gnnWF4mA3qARLuymV5R5K63PO4mzR508S4mmOneb4uG?=
 =?us-ascii?Q?PpjMtxqiwYYTIBYY7ZHeTcFo7JqOapR4Gm5fB8RSuOGHnWmJtm9G9IZg/hS3?=
 =?us-ascii?Q?XskeaQAWhzL6kr5UJprTxECF/ZsSlhQRZSvjGPqR1+TEOAJHXWuwX3xHGq/s?=
 =?us-ascii?Q?gzKvusP2lvQRjVYDUibCC2QeqLeabUPl9EzWDeMPxDZ2L1OJbnMlUQiWs7TA?=
 =?us-ascii?Q?flIevrhz9i6jzW4FOGzQHrS6LvPLaGbWIeap4VQSLXYy0PtR6Mv0h2wwJxkZ?=
 =?us-ascii?Q?F0iyIE09aPzJRov86n0iZVimxv7eQ/12N96LCxWb/FN8s2h0WqyVscF9zANX?=
 =?us-ascii?Q?SQad0Nyg6Phj/5HDq5KtzcqxN7SSNRUY8I9nigCBQuP4utiej3aHkaGafysi?=
 =?us-ascii?Q?lywur2BpNQuPiaKaYnGdD4s7WCgNjJuS8/pkuhMwSfsbGvGXBdPLsEkSOykK?=
 =?us-ascii?Q?y6k8wIhbAQJDernx7Gpr86zLBYSyB6YuqUK/QY0t10NkSKnlDkSgy48zicac?=
 =?us-ascii?Q?BLkyeVo+ZJijy2UCGke+b9SE92i1u9kE/3+1lK3N0/SCMiw6RIqybOejUlIg?=
 =?us-ascii?Q?qmpr5edJGrh2BT0lhpBvpyt5MS/mA1MmYV7QcBmydL+uQtr7K3c8BmONGZHK?=
 =?us-ascii?Q?6tEN2PZzVj/gAtYP2zGwivCua/7oIcGd0666JZl7GrbgUioTIJfzLM/oKsoX?=
 =?us-ascii?Q?UOaOIY5c3io5k1FqtHo3R975FqawYlKz65M5JNPCNhp7zc5FXgRE0c4dyQUk?=
 =?us-ascii?Q?P5KM18Xkm5DuOLcgN0RjIa4XM6BLjP1lOWwRE16rjJuoBn86kgPJMd87rKGD?=
 =?us-ascii?Q?X2QiJCkpCsqeCq703UFU8CWH6mUNX9HPtDKz+HOvlDnRgpz/88ullNDXqahC?=
 =?us-ascii?Q?hKx//fBCcHPokq7tESUOKZhHADPJdwQ+lKrYrdgqsg0OLVgBe7wAQzPROREg?=
 =?us-ascii?Q?u4YcSRM1NHu3Eq4EYMy2WZIIx/k2S4eErqoqvxK/mwAqeV6xcPemlZdf4E5c?=
 =?us-ascii?Q?c6Zhb2nwT5S1u/EBD9rcdCIJiBHgzfG92F9H5uzTcot4NVOS96S46t80kjrO?=
 =?us-ascii?Q?0JBmlgagHWp92W0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zR0KS6J99ijQqKc3RApdpaT9e3vkRax3Knv6+Hy7So4uYUm1qKlNhAxiCrAU?=
 =?us-ascii?Q?li2FQBKYsRaKPywjLgyVdqy8uKiyXkXxdG2DVhE1H6vUfQTfHIFSDD4Haf8h?=
 =?us-ascii?Q?GknX8HN8RLwe/qenHSpsFRi6lNVOgjq5Wk8fNp+bQ8yWe/87D0xlExin6lc3?=
 =?us-ascii?Q?TPke1TnfxxRAM1reFi3ZJuTyhrGPQ4e8Lbu9IUHb5rvlCesGSso4r9Q+wPsY?=
 =?us-ascii?Q?gGzvY/MPWxnlFso64ZB3WBFp7kSAO1w7sdzQwy2XeD3czRStV1k3/D0gr7Sk?=
 =?us-ascii?Q?nKo8UjrDv7h8aU3R6+6dDB+YlMuVhtEOZGOOqrco27g5PoYc6n4UWSYkGJt/?=
 =?us-ascii?Q?dVLY4zeNexmYl+OYBi6MLfgTl16GquWrfPkX+1RlAvkQqLyCQRWmDakpfGt3?=
 =?us-ascii?Q?nmCL0+nG7srycT0UaFGX3PEcqeqeFMMJGKoEU26yG9weDU4Pp48CcL98+h12?=
 =?us-ascii?Q?Z8lOmqg1lD/nfM7gD00Trs6cse6TKPNgW7ZCgkXaC0hPOvUzHE6dqKabAUOk?=
 =?us-ascii?Q?EKDx5EMMN9vXROFJkc7c9s6LRLA5DFWDb3q/WZseVwC8Q4J1jBEL0tmRVzGC?=
 =?us-ascii?Q?WPQ7k+Zr12mR5H3Js9mNvgRe+j/ybZL/2hzCkEb811igYjKQkGLc6S8/6GvA?=
 =?us-ascii?Q?vKTkQRDFMvx8bvB4YzGYR9Zl/ROfHBuo98J8B8kEP8YJzTyd0a9zKI0frNHG?=
 =?us-ascii?Q?WeOAoxOi4J2LGfLiAtaWAvpQUZZZ/P7vgO8sokvzSVyvJpcJjKs60XV0FOE+?=
 =?us-ascii?Q?HmFh60aP5r39KZY+ABUGk6PHkm8n1ctl6uiAogRyei9qj7HAFCKeRCHhF3NN?=
 =?us-ascii?Q?aqV0IZVpSByBAACV1c6INDNuFKCVZ2Pb80QalJQAUAH5n8+wN8MHX0AVibmm?=
 =?us-ascii?Q?A0owjZcq5qis3GBuZmpcbcCIzDL+EZ+QjhYFYiTI9xVZbplHUfZ7sI9qpATa?=
 =?us-ascii?Q?FL3RXObqYDMI5pzaEi3duvUcB2fpWobpFFcchAMbSXRT/pQJADpfNXVs99LW?=
 =?us-ascii?Q?f0xxd6ojlAIfqnrfefHj/1zWNRKIByK0wQ9eR5AC+eMIKUvNf01MyGwiV9N/?=
 =?us-ascii?Q?BZDPzeqop5irVGv2O12Q7ZO/8H/7VI2eQXSqLYgou7xmyA/vVcuS9JpQ+OR8?=
 =?us-ascii?Q?AMUP2GNZBppxGKoXmG46L4RwI/1DkiSHMIiitbCV16IbCCRs/CBWzxfug0Ph?=
 =?us-ascii?Q?IWxIbY+hKaRA/iqkgOtMK+Jhh6RDBsr2Gz7gUkXH+VlnjxzUxJc4Lv5qQcTe?=
 =?us-ascii?Q?7JourPDjAbLhKy6HXsHKlKdY/rdZH1VTWNkZiQDu4pzXca1Sv1Zxl77RZbjm?=
 =?us-ascii?Q?0cX1pxFKgBumT0s6r0FwMKNsW+Sco5L2JJ8Na+/6hqQ8MrkOqTFEaZ2u+CMY?=
 =?us-ascii?Q?QJybr68cxR6956ZvCgT0l/BXa+7PNoMb3EklfQ6sgQhJkiYtmd+NBYt9NB6P?=
 =?us-ascii?Q?zV65BKV4kQ0707VjABBKMrMV+Dhh2EMPAbItlIZYEl2UOmaCyRtebjM73ZMm?=
 =?us-ascii?Q?kxJwW1MEBpTV0U0hfPZ59mEu5Pv1uyro33XDLpiKS/AuJaINbTaJsDcxq+2i?=
 =?us-ascii?Q?aq7ejGoq48Q/aCM6XHlfJ/LRHca3gFTzUqhR0cn/L8Rqew7D9DGqxCcCQUlP?=
 =?us-ascii?Q?PRg6FOaKCgBKzAmkHv/4wu4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f510f22-195b-4f54-268f-08ddde725ed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2025 16:14:55.4959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6HGyoWFq/IhyKIQ6AJZafW0FETL5psxcH6poPATaw9LyGOBAJCRnu0xPeyE3/VMjhCvgDQeWC1GDk9YOpcN6FR1H7WcGbVR7/uU0u0UIpXNKhmFcRYZz+6cmyRMck25P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7379
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 18 August 2025 13:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 05/12] drm/i915/dp: Add SDP latency computation helper
>=20
> Add a helper to compute vblank time needed for transmitting specific
> DisplayPort SDPs like PPS, GAMUT_METADATA, and VSC_EXT. Latency is based
> on line count per packet type and current line time.
>=20
> Used to ensure adequate vblank when features like DSC/HDR are enabled.
>=20
> Bspec: 70151
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_dp.h |  1 +
>  2 files changed, 48 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 625036c47bdf..0c2bec1fbe42 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6826,3 +6826,50 @@ void intel_dp_mst_resume(struct intel_display
> *display)
>  		}
>  	}
>  }
> +
> +static
> +int intel_dp_get_sdp_latency(u32 type, int linetime_us) {
> +	int lines;
> +
> +	switch (type) {
> +	case DP_SDP_VSC_EXT_VESA:
> +	case DP_SDP_VSC_EXT_CEA:
> +		lines =3D 10;
> +		break;
> +	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> +		lines =3D 8;
> +		break;
> +	case DP_SDP_PPS:
> +		lines =3D 6;
> +		break;
> +	default:
> +		lines =3D 0;
> +		break;
> +	}
> +
> +	return lines * linetime_us;
> +}
> +
> +int intel_dp_compute_sdp_latency(struct intel_crtc_state *crtc_state,
> +				 bool assume_all_enabled)
> +{
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	int sdp_latency =3D 0;
> +	int linetime_us;
> +
> +	linetime_us =3D DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
> +				   adjusted_mode->crtc_clock);
> +	if (assume_all_enabled ||
> +	    crtc_state->infoframes.enable &
> +
> intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
> +		sdp_latency =3D max(sdp_latency,
> +
> intel_dp_get_sdp_latency(HDMI_PACKET_TYPE_GAMUT_METADATA,
> +							   linetime_us));
> +
> +	if (assume_all_enabled || crtc_state->dsc.compression_enable)
> +		sdp_latency =3D max(sdp_latency,
> +				  intel_dp_get_sdp_latency(DP_SDP_PPS,
> linetime_us));
> +
> +	return sdp_latency;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 0657f5681196..994994d68475 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct
> intel_crtc_state *crtc_state,
>=20
>  int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector); =
 void
> intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external=
);
> +int intel_dp_compute_sdp_latency(struct intel_crtc_state *crtc_state,
> +bool assume_all_enabled);

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>=20
>  #endif /* __INTEL_DP_H__ */
> --
> 2.45.2

