Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC089F8C5C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 07:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5571710E372;
	Fri, 20 Dec 2024 06:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yj0oLaSk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E4610E06F;
 Fri, 20 Dec 2024 06:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734674888; x=1766210888;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IGWtA+bHmsicMWPTkxxJViKIzUTLvHIksL2OhPxUXLU=;
 b=Yj0oLaSkR+5U+x8o5HrrZYl3dPophDplDaLyQpMCrdt/3oHFvu5RiVrh
 mk2dc3WW8oRIlYqTE+qAHVPADC0mhhGGLUg/cmFJ73UyAa7pahefoJ94z
 dnbkRdOMY7AXZF8XjN8pdtxwn77tfDDIfHd0ac91jJmy8afIvuSdNHj4q
 Ax8pO4Er8Ut0xehmF0XCQEX70PLa15iPNq9qPM+1NcpYmXm5eujW3yPw/
 Yb0M5O9CrO4JO3soASLoIV2iXEG/rpnYOQwtjn4Ch89oshVl3ZGuDWTCC
 pXvUKUwaqzE+vetrqkLHTyotInr4UUeuCIzr1XekV65OZeAXOegi14CIE g==;
X-CSE-ConnectionGUID: O71asD1VSrCjknr+N7D7wQ==
X-CSE-MsgGUID: aAds6OuXQPiw+RWiAIZBUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45903881"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="45903881"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 22:08:05 -0800
X-CSE-ConnectionGUID: 2gsN+453Qf+eJVcNoXLpKQ==
X-CSE-MsgGUID: Q+DV8n2lTxmQiBQhFjz8wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121702775"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 22:08:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 22:08:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 22:08:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 22:08:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dTMkAJIEA8UBk4OAhSSKlyRHTMmS4dv/oXOzb5B0FdGGvzllq2GehKChImyGxnarSDO+Sfqh/KUF4eEpcolztdWvNeY240LBl6Xyu8oD/9ZzmrZ9z4HN4FLiQULLiAFwTEg2q6EPtlEVEyvazkGuPievEoLIl/PK9TW/rK+3LOo5Uxn0s6T9bhbLlis/OrVJluXyrNT6+yNK1CaNJLqzDvWwvZxcXP+jLwNeheaJznD/yoEGMcxWP+xV5puJTw+6NOeYrukHCCPdUn6m9/GLcF+Yl5L8KtGSHcy6XmXaW5gvATWmV1pWqb+cv98FaLFTa3miJh3TkwRDLBBilfqBrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IGWtA+bHmsicMWPTkxxJViKIzUTLvHIksL2OhPxUXLU=;
 b=DzXdl1h6g1hQNLrjVP5hWakgzuO6DODxSvCD4Key4Fi/0cZVhi8GQfccNCMZyEruFKYxIr8AkgAr0YULq0QLVAVuwyKFcoT0w3pSGYLwOqiEfZjjq27tCSgzOWv/diBJTjnRds+6DpgN+feXLf56vSR3peMF3VuLVsIP4NjidQ//qE9q40tmba9crYlWESYnj0UYDwiLraIT2TT20FvES190xdTzoBDxqifwNF5zFPUwz1qIkKsHO5gjw9SL9KIlLDQKTrs+CTcvKi2jCIbfCqa1mJ0ZhCTJVMb5yFVLriuLH7Eu0cQYOIZ8FlknDWvsXhXfXVuD99OfrUjiMIg85Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by DS0PR11MB6446.namprd11.prod.outlook.com (2603:10b6:8:c5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.22; Fri, 20 Dec
 2024 06:07:30 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 06:07:30 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Topic: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Index: AQHbTKKl84d6Mr7ID0mlhFrRHWMxiLLtxYSAgADbFiA=
Date: Fri, 20 Dec 2024 06:07:30 +0000
Message-ID: <IA1PR11MB646708055F57F30F4103FD23E3072@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-2-nemesa.garg@intel.com> <Z2RDkcPdNv5vMJOl@intel.com>
In-Reply-To: <Z2RDkcPdNv5vMJOl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|DS0PR11MB6446:EE_
x-ms-office365-filtering-correlation-id: 6acfed3a-a54d-4919-ec8d-08dd20bc966b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?N1hNR043RGFaL2lRZUdwMVpoeUlJUTV6bERoUm5RS0diS1hmZUFrdmlYNGdY?=
 =?utf-8?B?MWdvNmhHVzRQclR5ZmQveVlzYlpBeFVDSDVGZnNaU0RBOGgvMTBEMGlWK3FG?=
 =?utf-8?B?b3Z1emRpS0RLdVhKVzZGSUtUYmZjeWxyTHg4WXR6ZXhOOUNqQWtiL013cDcw?=
 =?utf-8?B?UWVrZ3M4UlpYRXZnK3Jjc1U1RmpGbjVmOElpZkx3dUVaVW43RmE4dVVpUW0x?=
 =?utf-8?B?VDhucVhvQWRwT0tmdXlybmx5eFg0UklLVENKbnJmSWlUazhGd25mTEs0NWp5?=
 =?utf-8?B?c2kyQ0tkY2Izbzk1M2QyOSttaGpPd2tvQnB4RWFwSkpIZnd0am5KWUwvdjR1?=
 =?utf-8?B?a2l4cFB5UktVTHozQytRM09zZDdxbUFRL0wxbW9sYWE0OFFraFVSMnI2V2Ir?=
 =?utf-8?B?dUtmZVIxWU50UVVhNGdGVUJjdi9jd2xPeVZ6ZlYxMVBxWUJiQkc1RE4zVUJY?=
 =?utf-8?B?b3h0aTg5Wk05U29TakZRMUhVUUo2ODcwKzR3TWMraUlvY2FQUk9PMjlFaGFJ?=
 =?utf-8?B?SUVaWkJsSG42aXV0NEJtaHNOazdrSFFnb3RRTEkvbHorZ3k0Vk1EQlFucTkz?=
 =?utf-8?B?Y0UvYklXRFRIdkVXZld2VzFHK0JiRTNsM25CK1J2RmdHKzNxWFRjZ2FQckpW?=
 =?utf-8?B?anhIdWwxU085cndZTEgzMHQ2bHdhUCsxUmZOU0cxcG9YLzF0dW9aTFR2bjh0?=
 =?utf-8?B?S1Z3KyszRTd2RmR0eVJjRWFtcHFhc3pzczlhcTQzbktjby83dUV1S1BuZFlH?=
 =?utf-8?B?cDR1SmdNc3VDejBGcFhRTWt1OWcwL1VFaGRKRjBWa1lxUGFQR3RISk1PbjRN?=
 =?utf-8?B?NFh4RzFTVFdNUUp6WmFqNUt2WDZXZkZ1c3R4bkYwazY0TEhwTXhzSFNYbm1z?=
 =?utf-8?B?Q2l0MS9BYU92blJoMThpWVV4ZVM1QWNsSkNrYlNmUUVJeEVyRmY4OStjVU1p?=
 =?utf-8?B?L1YyZ1BwVUdIM3pXK2huR1FVeVJRMldvV2dlMkp6M0JqYWxodUhvOGNtc1lK?=
 =?utf-8?B?VlE3eGtiQytacUE3ZFVtTjZ5YXlIazBEWWpCV056eUtXTEhzdUp5SUlsRSsz?=
 =?utf-8?B?OGd1TlRQQi9nRnRIYlluMmtsTXlIc0V2cnF5ZnJac05NT3FRVENnNTVxRzdp?=
 =?utf-8?B?VFEvN2lhODR1Y2JXZ3k3WWxsSWplQzdha3UzbEl3cDMwUStReWdFM2RXNjF2?=
 =?utf-8?B?aEtVK2VhdmthdjM3QmlKU3Fwb1FFbmhuLzhibjZMcWZNWEhpWlcvN2thUHl6?=
 =?utf-8?B?TEdPSG1raHF1Q2dUTzdyK0sxNmJhLy8zZ2cvYXJibUR2M0I0OGxNRzBVdm1R?=
 =?utf-8?B?WnVCS2Njb1ltdWlRMmluR2NvREZaVllsbGRQZFh5NTk5V21TWTB3VXpnbnk4?=
 =?utf-8?B?T0xDMWR2aXpOMG0zNjVFamh6L3BBU3BtZW5zekl6K1dVS0FJWjV3S01sTExL?=
 =?utf-8?B?ZldjdGIrY2V1Z01GKzlzb0FJWWJUWlhVeGFxYjcyOVlFTEdFNlpsSnI2czR1?=
 =?utf-8?B?RmoxM0pwb0paczhoWktwVFFMVnorbHVGWlhwUWhMWGp1ZmVzVDFuUDVha1l2?=
 =?utf-8?B?enFKV2FXTjFxTGdDcmJINFVkV0VxeTRraGEyTkE1cWZsd1ZaRXVyMmJ0TTBh?=
 =?utf-8?B?ZkNVbjFDTEtYUy94V1ArQklzQ2tSdS9XUnRwVnNlU1JGQ0N4VzNrVEJZeVRZ?=
 =?utf-8?B?WXcrUFQ2VE54Y2Y5aFFwUGR6Y0t6amlVWTRtaXo3eWJaZEtCSEF1NVFYRnNj?=
 =?utf-8?B?dzVENHBISmhCY1llRnBXYXk0em8yNmZtK2M4UXF1RC85MzFneURSTGtrWjlu?=
 =?utf-8?B?Tk9aVTlyYW9ObHVFMjU5Vm0wL1d6bzhpZFpjaFJVMFRVMEgxeG5PeDJVNGVa?=
 =?utf-8?B?WkljNmkyaTViR20vcHJyNktKVHhxa3VFOGNiUkhwaWhFR2lOV3ZFSVp3cEtm?=
 =?utf-8?Q?R6RfjDAZzfUBq8HJQjv5DiWAE18Eq6Tj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTdlODhDUS9XeHBOMUlpUXpQaC92UVFPa0RTQ3V2TGlBY3htb3NVUDUwMHM5?=
 =?utf-8?B?UzlraWd5L1cxdU04WkJ0OThBQ2VYU3JULzZDUW1ydjJzcm9SVk93VW1mTUhS?=
 =?utf-8?B?dlg1L3BOaXRVZndVRUFKN2NtSHdnRTRVbkdVaDFUamRYWktsdzJzejUwYTQ3?=
 =?utf-8?B?bWdpanJkWWZjZGo5ay9ndzZQNlVWeGtlMUNjOGVFSVlheTRpankwYTFNMlU4?=
 =?utf-8?B?K2NvWHZKZEVJQ0ltaEN5by9iNUM3NW92NU1XQWhjNEtkNlhPd0lLZ0hKeG9u?=
 =?utf-8?B?QmlEdXViL0ZoK2I1MGEzSUdSZDV4K05jL01VcUR5S1hBZ0hOem1OMGx0NEFY?=
 =?utf-8?B?eW43RU5ueWJVZVJJK0VIWjF6WmN1ZlRIbFVLZkVtK3RPcHZDV2dCYlNhNUZi?=
 =?utf-8?B?YXlmeC8xK0liQ1hKOW0zNUYwYi8zYlpuYk9EQUJKOXFPRGRqR2hQd3ljUHhS?=
 =?utf-8?B?TmwydFVKTXlGVWdJVVBsdStXR1UwZkk3SlR3ajRKZ2lRbWZxM2k2THJvMC9K?=
 =?utf-8?B?d2NKRlgyYXFHTDNXNVExRGRYWjBudGRINE5uN0FjdVNON095anphMmtsVWtE?=
 =?utf-8?B?cG41Y3NndFlJSHl6blpSempVaEJSRnVMZWl6bUVqVzlVVEJnRkFHZTJwT3JO?=
 =?utf-8?B?K0VHYlM3VFN5WE0zdUdEemZIZjZtYm9VVUNGZ0dOalUzem5LaTRrL25GdlJJ?=
 =?utf-8?B?ZzZiOWRJQVVVa0xMdzk4MnMwWDQ5WHBoWVNlU0RhL1pLaW9Dc1FRZVlKd1Rk?=
 =?utf-8?B?YjBoRmJhRlhKcTVjNFFmeVJwQUZ0cnYwZ0NqWlI0eDBicE9pMHdRWm9UTjU2?=
 =?utf-8?B?RmwxL25XS1NaZTZ5RGMxY3IwOE0yVzlZd0g1QVR0NnRxN2V3R20vQkE4b2Zm?=
 =?utf-8?B?ekJXNW9IUU12YkNUWEZJVStpZzFzR3lWNjZvNWhLVG5naEVzSHoxOVZOVzVs?=
 =?utf-8?B?YnZabDJTMVZ1ZktsWFhsL3RBVWlCdkJrR3NQOVhQNHBwNUltdXNKcnovUEJy?=
 =?utf-8?B?WGtESUt5UzhXUmxqZGVBbktBdzNUNUVpT1lURmpMcStGSzlaenl0Q25VM3Y4?=
 =?utf-8?B?V01SMlZ3RVllcGUyVFVOZ0lGMitNYk0wN08vYS82WDVVS2JBcEFvYkVLMGww?=
 =?utf-8?B?dlhYV281eUJ6Z2k1TGhBb2Y1Tjc1dFpMejBiMk1ldWlkV2REbWk3R014Mll0?=
 =?utf-8?B?NXkzdUdwMW9ENlpTSWx1VWthYUI3bWNoczNkeTRkYmxIUFFxQlB5Z3p4Uk0x?=
 =?utf-8?B?TkhTRFNFZHMvWjU0NkxwVGo5NjF4bWtPZGZrNWJOSnUvQy81cGI0ZzhpRVlZ?=
 =?utf-8?B?b3pydHVtY2VrejZ6aU96NEs2b0h5TUxiaCswNFU5b3ZKbkp4d3J3VTN6Smda?=
 =?utf-8?B?VHhaTGxRMGoyVDh2V0E0eloveU1WSWxzVEQ2L2RYWDBvajVnR2xTdWdCNEZk?=
 =?utf-8?B?dTJXWmxZOFY1ODdyWldNZU1wMlRNNzFkRGVHb1N0bjc4bFpHT2hXS2ZBM1Rl?=
 =?utf-8?B?ajkrVjg0dWd2NHVsejRRczJzajBSZEpmUW15ZTZlUm9kUlJ5a2xjdkhFd2NQ?=
 =?utf-8?B?RU81RjVkM2hSb3FZMHZNcmJEMksycWozUUkrWVUrTHZKME96T09tbUdkY0tK?=
 =?utf-8?B?a1JianVFUFRUaW9vMHh6eDF1U2xxNXppWWZmcmI0YzRoRFNIMUR5QmJ3QWp0?=
 =?utf-8?B?K3ByZFlGclk0V0IrQld0S3RtQUFqVlhBTWx2VFJ2a2daM083d0J3L29uT0VP?=
 =?utf-8?B?THZEWmJpTXczNXJVc0duclgzNzA1OU9uOGQxMTNzVzllLzl0d3RwMGh5TWlR?=
 =?utf-8?B?ZU5yclFMR0l3WHlWVU5XYVltbU1KWW9PYXBjNnN0WkZrNGY2MTgvTFJCaXpH?=
 =?utf-8?B?TlRNMnA2dDBEM2tWQXhJYk5SSnh0cTNYalJtbnRrUFhNK01TWmxhRENjdWZO?=
 =?utf-8?B?aXN5OW5LaUMwMU1jSzM3cFZkMHRrN3gvdkt5WGRiNzFWSFZDNkIrcjRPYWxY?=
 =?utf-8?B?V3plOG5LN1hNSkNISTFGWVJtcncyN29LczRLbVVyZVZFakRiKzFrbG5IMkor?=
 =?utf-8?B?WE0ySGptV0FHNy9QRm96dFdzeVdDUlRlanZVRzAvblFmQzYvaW5QWWh6c25j?=
 =?utf-8?Q?Q+df5vH3xc1YKR7Gj9Gmoae9M?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6acfed3a-a54d-4919-ec8d-08dd20bc966b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2024 06:07:30.5815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: agXVCNJ1II3I2qdna0w20gwXpuCX4eS7RyJyYBlwW4VjaVnEPMjdHj1V3+dTGA+JgglzIiCg1ZDBJw45PJBR3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6446
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIERlY2Vt
YmVyIDE5LCAyMDI0IDk6MzIgUE0NCj4gVG86IEdhcmcsIE5lbWVzYSA8bmVtZXNhLmdhcmdAaW50
ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMS8yXSBkcm0vaTkx
NS9kaXNwbGF5OiBBZnRlciBqb2luZXIgY29tcHV0ZSBwZml0X2RzdA0KPiANCj4gT24gVGh1LCBE
ZWMgMTIsIDIwMjQgYXQgMDg6MDM6MjhQTSArMDUzMCwgTmVtZXNhIEdhcmcgd3JvdGU6DQo+ID4g
SW4gcGFuZWwgZml0dGVyL3BpcGUgc2NhbGVyIHNjZW5hcmlvIHRoZSBwY2hfcGZpdCBjb25maWd1
cmF0aW9uDQo+ID4gY3VycmVudGx5IHRha2VzIHBsYWNlIGJlZm9yZSBhY2NvdW50aW5nIGZvciBw
aXBlX3NyYyB3aWR0aCBmb3Igam9pbmVyLg0KPiA+IFRoaXMgY2F1c2VzIGlzc3VlIHdoZW4gcGNo
X3BmaXQgYW5kIGpvaW5lciBnZXQgZW5hYmxlZCB0b2dldGhlci5Tbw0KPiA+IG9uY2UgcGlwZSBz
cmMgaXMgY29tcHV0ZWQgYWRqdXN0IHRoZSBwZml0X2RzdC4NCj4gPiBJdCBjYW4gYmUgZG9uZSBi
eSBjb21wdXRpbmcgcGVyIHBpcGUgb3V0cHV0IGFyZWEgZmlyc3QgYW5kIHRoZW4gYW5kDQo+ID4g
dGhlbiBmaW5kIHRoZSBpbnRlcnNlY3Rpb24gb2YgYWJvdmUgYXJlYSB3aXRoIHBmaXRfZHN0IGFu
ZCB0aGVuIGFkanVzdA0KPiA+IHRoZSBjb29yZGluYXRlcy4NCj4gPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IE5lbWVzYSBHYXJnIDxuZW1lc2EuZ2FyZ0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNDENCj4gPiArKysr
KysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiA+IGluZGV4IDIxMzE5Zjc1M2EzNC4uN2JlMmVhMTFiOGIwIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAt
MjU2Myw2ICsyNTYzLDM2IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX3BpcGVfc3Jj
KHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICAJcmV0dXJuIDA7
DQo+ID4gIH0NCj4gPg0KPiA+ICsvKg0KPiA+ICsgKiBUaGUgeC1jb29yZGluYXRlIGZvciBQcmlt
YXJ5IHNob3VsZCBiZSBjYWxjdWxhdGVkIGluIHN1Y2ggYSB3YXkNCj4gPiArICogdGhhdCBpdCBy
ZW1haW5zIGNvbnNpc3RlbnQgd2hldGhlciB0aGUgcGlwZXMgYXJlIGpvaW5lZCBvciBub3QuDQo+
ID4gKyAqIFRoaXMgbWVhbnMgd2UgbmVlZCB0byBjb25zaWRlciB0aGUgZnVsbCB3aWR0aCBvZiB0
aGUgZGlzcGxheSBldmVuDQo+ID4gKyAqIHdoZW4gdGhlIHBpcGVzIGFyZSBqb2luZWQuIFRoZSB4
LWNvb3JkaW5hdGUgZm9yIHNlY29uZGFyaWVzIGlzIDANCj4gPiArICogYmVjYXVzZSBpdCBzdGFy
dHMgYXQgdGhlIGxlZnRtb3N0IHBvaW50IG9mIGl0cyBvd24gZGlzcGxheSBhcmVhLA0KPiA+ICsg
KiBlbnN1cmluZyB0aGF0IHRoZSBmcmFtZWJ1ZmZlciBpcyBjZW50ZXJlZCB3aXRoaW4gUGlwZSBC
4oCZcyBwb3J0aW9uDQo+ID4gKyAqIG9mIHRoZSBvdmVyYWxsIGRpc3BsYXkuDQo+ID4gKyAqLw0K
PiA+ICtzdGF0aWMgaW50IGludGVsX2NydGNfY29tcHV0ZV9wZml0KHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLA0KPiA+ICsJCQkJICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpIHsNCj4gPiArCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlID0gJmNydGNf
c3RhdGUtPmh3LnBpcGVfbW9kZTsNCj4gDQo+IGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICpwaXBlX21vZGUgPSAuLi4NCj4gDQo+ID4gKwlzdHJ1Y3QgZHJtX3JlY3QgYXJlYTsNCj4gPiAr
DQo+ID4gKwlpZiAoIWNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpDQo+ID4gKwkJcmV0dXJu
IDA7DQo+ID4gKw0KPiA+ICsJZHJtX3JlY3RfaW5pdCgmYXJlYSwgMCwgMCwNCj4gDQo+IFRoaXMg
bmVlZHMgYSBwcm9wZXIgeCBvZmZzZXQgdG8gbWF0Y2ggdGhlIHBpcGUncyBwb3NpdG9uIGluIHRo
ZSBvdmVyYWxsIHNjcmVlbg0KPiBsYXlvdXQgKGNhbiBiZSBkZXRlcm1pbmVkIHNpbWlsYXJseSB0
byBpbnRlbF9qb2luZXJfYWRqdXN0X3BpcGVfc3JjKCksIGV4Y2VwdA0KPiB1c2luZyBjcnRjX2hk
aXNwbGF5IGFzIHRoZSB3aWR0aCBpbnN0ZWFkIG9mIHRoZSBwaXBlX3NyYyB3aWR0aCkuDQo+IA0K
VGhhbmsgeW91IGZvciB0aGUgc3VnZ2VzdGlvbi4gIFdoaWxlIGltcGxlbWVudGluZyB0aGlzIGNv
ZGUgdGhlIHByb2JsZW0gd2FzIGludGVsX2NydGNfY29tcHV0ZV9jb25maWcoKSANCihpbnRlbF9j
cnRjX2NvbXB1dGVfcGZpdCAgaXMgZ2V0dGluZyBjYWxsZWQgZnJvbSB0aGlzKSBpcyBnZXR0aW5n
IGNhbGxlZCBmb3IgcHJpbWFyeSBwaXBlIGFuZCBub3QgZm9yIHNlY29uZGFyeSBwaXBlIHNvIHRo
ZW4gSSB0aG91Z2h0IG9mIGZpbmRpbmcgYSBpbnRlcnNlY3Rpb24gcG9pbnQgZm9yIHByaW1hcnkg
cGlwZSBhbmQgdGhlbiBzYW1lIHRoaW5nIGNhbiBiZSB0cmFuc2xhdGVkIGZvciBzZWNvbmRhcnkg
cGlwZSBpbiBjb3B5X2pvaW5lcl9jcnRjX3N0YXRlX21vZGVzZXQoKSwgYnV0IHllcyB0aGlzIHdp
bGwgd29yayBmb3IgMiBwaXBlcyBvbmx5LCBub3QgZm9yIDQgcGlwZXMuDQoNClJlZ2FyZHMsDQpO
ZW1lc2ENCj4gPiArCQkgICAgICBtb2RlLT5jcnRjX2hkaXNwbGF5LA0KPiA+ICsJCSAgICAgIG1v
ZGUtPmNydGNfdmRpc3BsYXkpOw0KPiA+ICsNCj4gPiArCWlmICghZHJtX3JlY3RfaW50ZXJzZWN0
KCZjcnRjX3N0YXRlLT5wY2hfcGZpdC5kc3QsICZhcmVhKSkNCj4gPiArCQlyZXR1cm4gLUVJTlZB
TDsNCj4gPiArDQo+ID4gKwlkcm1fcmVjdF90cmFuc2xhdGUoJmNydGNfc3RhdGUtPnBjaF9wZml0
LmRzdCwgLWFyZWEueDEsIC1hcmVhLnkxKTsNCj4gDQo+IEFuZCB0aGlzIG5lZWRzIHRvIHJlbW92
ZSB0aGUgc2FtZSBvZmZzZXQgd2UgYWRkZWQgb3JpZ2luYWxseS4NCj4gDQo+ID4gKw0KPiA+ICsJ
cmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19jb21w
dXRlX3BpcGVfbW9kZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKSAg
ew0KPiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3Rh
dGUtPnVhcGkuY3J0Yyk7DQo+ID4gQEAgLTI2NDUsNiArMjY3NSwxMCBAQCBzdGF0aWMgaW50IGlu
dGVsX2NydGNfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gIAlpZiAocmV0KQ0KPiA+ICAJCXJldHVybiByZXQ7DQo+ID4NCj4gPiArCXJldCA9
IGludGVsX2NydGNfY29tcHV0ZV9wZml0KHN0YXRlLCBjcnRjX3N0YXRlKTsNCj4gPiArCWlmIChy
ZXQpDQo+ID4gKwkJcmV0dXJuIHJldDsNCj4gPiArDQo+ID4gIAlpbnRlbF9jcnRjX2NvbXB1dGVf
cGl4ZWxfcmF0ZShjcnRjX3N0YXRlKTsNCj4gPg0KPiA+ICAJaWYgKGNydGNfc3RhdGUtPmhhc19w
Y2hfZW5jb2RlcikNCj4gPiBAQCAtNDg2NSw2ICs0ODk5LDEzIEBAIGNvcHlfam9pbmVyX2NydGNf
c3RhdGVfbW9kZXNldChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAg
CQlkcm1fZHBfdHVubmVsX3JlZl9nZXQocHJpbWFyeV9jcnRjX3N0YXRlLQ0KPiA+ZHBfdHVubmVs
X3JlZi50dW5uZWwsDQo+ID4gIAkJCQkgICAgICAmc2Vjb25kYXJ5X2NydGNfc3RhdGUtPmRwX3R1
bm5lbF9yZWYpOw0KPiA+DQo+ID4gKwlpZiAoc2Vjb25kYXJ5X2NydGNfc3RhdGUtPnBjaF9wZml0
LmVuYWJsZWQpIHsNCj4gPiArCQlzdHJ1Y3QgZHJtX3JlY3QgKmRzdCA9ICZzZWNvbmRhcnlfY3J0
Y19zdGF0ZS0+cGNoX3BmaXQuZHN0Ow0KPiA+ICsJCWludCB5ID0gZHN0LT55MTsNCj4gPiArDQo+
ID4gKwkJZHJtX3JlY3RfdHJhbnNsYXRlX3RvKGRzdCwgMCwgeSk7DQo+ID4gKwl9DQo+ID4gKw0K
PiA+ICAJY29weV9qb2luZXJfY3J0Y19zdGF0ZV9ub21vZGVzZXQoc3RhdGUsIHNlY29uZGFyeV9j
cnRjKTsNCj4gPg0KPiA+ICAJc2Vjb25kYXJ5X2NydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2Vk
ID0NCj4gPiBwcmltYXJ5X2NydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkOw0KPiA+IC0tDQo+
ID4gMi4yNS4xDQo+IA0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCg==
