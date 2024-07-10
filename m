Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD00C92CCF6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6208B10E1CB;
	Wed, 10 Jul 2024 08:26:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQco2c/X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E269589304;
 Wed, 10 Jul 2024 08:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720600017; x=1752136017;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kvFOmNKfSzR2qZ8dt1fokFFhvT4steO/6QWFe29SPbw=;
 b=CQco2c/XaMakuSVIPrKjj4YGdc4idqRg04foWBPlXOX7o3IutXJpzjIx
 DySubKOFZGRaVMmQX6qfgH4Oegs7TfxvNwpQgKXch5q2wY5WtmQlReFGW
 XM/SI5OfQL0RuV1xFC1Qu8CxgkQM1/e59NQuKOWBf4qBQ9oeu2+J1fnOM
 z66/1TdmLSTb6L/nwzQfMUF3HJij9Rmfmmgy1XoIz8NzWv+F6R02Ha497
 zL9QF7ZwKi/b8xyvBjXJRdWGVYhf7wNLWbjqgJp6duux6GnyOmIlbZD0e
 oIgkbkExwA3tXMr9veG9TlEvUjqCjUc70Orn/AZAyzHxfXdt8i9dJHwbO Q==;
X-CSE-ConnectionGUID: 8PHOqSUSQwm00mrTBwKmqQ==
X-CSE-MsgGUID: 27lvDOYCSoG0R5sHolEb9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="12470405"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="12470405"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:26:56 -0700
X-CSE-ConnectionGUID: 23/kR3FQTqGxe8tfQqlmQA==
X-CSE-MsgGUID: jPUWO/TEQ+Cp2sIT9A5FqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="71368830"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:26:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:26:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:26:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:26:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oCbzhTwH/0NiqMn4yERxt9hdYW2rNO7qbhqlA0WWqQXoVwIasG59abAWFSx/jd2JlDjcQsyslfQEvQ1CDPfGG2+hoLvIARANPkaGMwh4OcCrHhBDz83oUm5B9A431tTFZbbCrqcX7EBCafux+rVmL/BS5VGULifc+p6lccikXis7nTCoKPNzG7iPxdM02y3rgIqDajQm4mKLjU31UxPNAoD5GBZY41m2ZkCSYyR1oMsQfhsJIuN1GaNdWdK8KVW2N4avh1MZKQ/0CQcUCUx870exKZzaViihyIsn+F1IUEM9p3UBuV5MDxkoWHEvTBqV8IKalndR7weBxRsxQLERIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kvFOmNKfSzR2qZ8dt1fokFFhvT4steO/6QWFe29SPbw=;
 b=V2MFU7IUXZ44bdAM/iuBjIgCyefvOhrRv+yA/Vw6Qeq7tnmZpHbj9AIuhNVWkldT2QAFKtoxDy2+7cvmKSQiGyxBORiqEq/Ovz7VankvlsfqIWy8Ijhpbnu970GYm20NPjNut8Be6THOWr1TiJRFKzpaDq8ZW/39ttb1a61d4QdoI9Cyh2KGrEEouC+J5xucdRWGNNrZUOKoJFzZg8KrvPcFwBAmx1kp8E/4gcHKDk5625/Wnrfk/JGOEn1WIJafsGoUKewD93JbcCRRbzC6/wXMoncBC6B7k1QeWH1vK/eIOuicofoVyvI9QGICGDTw9HzahCwnnFwqrKurZ+d9bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Wed, 10 Jul
 2024 08:26:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:26:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 11/20] drm/i915/fbc: Extract intel_fbc_max_cfb_height()
Thread-Topic: [PATCH 11/20] drm/i915/fbc: Extract intel_fbc_max_cfb_height()
Thread-Index: AQHazusgDHQqnLbF0U+FyO31uT704rHvps+g
Date: Wed, 10 Jul 2024 08:26:54 +0000
Message-ID: <DM4PR11MB63606CD88B0030C31E9CB869F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB7455:EE_
x-ms-office365-filtering-correlation-id: 004c08ac-a394-461f-2243-08dca0ba0e1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZUFDdmZVT2NBN25vUmQyVzNGM1RYL0lXcXNFcklFVjA1ZkpacndVNzRiYU1J?=
 =?utf-8?B?R1VrSW5EOUZoWnZYYytVVmROcjVWem9NYUh4UjhZc0ozZ2owMWtUejdsWXBH?=
 =?utf-8?B?YUNPdDFBOEJDVWtFUXFHM2lSbi9pSWhkMU1CL3VzSUFwbmlwR1B5VEowV1ZI?=
 =?utf-8?B?STk0Um9WMjZFaFB0dE8wRFdsV0I5Y1hMeG1SVWhMRXBiT3IyWGIzKzB6ZTAz?=
 =?utf-8?B?eHRQM2VWQk1ZcnUycVR5NGN0SmN3S0RZT2syRWtSUmpMaXpuREtHQzdBb0g0?=
 =?utf-8?B?VnZ1dFhSOVZOSWZHMzEvSVhiQm9USWt6Y1Jic0FJditkVE1vSGprL3JZTGlT?=
 =?utf-8?B?WEZMV3RWdnJjbkFFdWEzMFpaSkRmMWo3RWJwTVljUFJNT1AzYWZjTlRBUVlm?=
 =?utf-8?B?YnFPZDFGRSt3U2E2ajN6bWQyT0xTS0VZQnJ5TDJ4ZEExOTdvYm8wdTQxM1dS?=
 =?utf-8?B?NUNNYjd5eW5uMHQxVmpmWkhXSzVlMk1iWWJzYitnMFk4SnNjMTRvMVI2ZTls?=
 =?utf-8?B?WlNjdEwveVFmcVNQWEhuRmJrc1NsNUlHMTZ2Q3czNVJmd2pXcjI1NHZ1dElT?=
 =?utf-8?B?OVJyVXpVL3VDZUV2WklVblFCV2NybkhxU2kzOXV2VEoyOG1EUjZDaVhsbEFa?=
 =?utf-8?B?cjlYVHdET1RGODNDL3lBWXE3QUhKbG1YWnFDZU1ySHJIMmd6OFhESkJXNkp4?=
 =?utf-8?B?U3M1c0thUFlFb3NvMTlacU9jNUh3RFdiR0FOMGdjUzBGV3pFa3Nxb0tRdjJ6?=
 =?utf-8?B?cTViSEEyUzJEcXdVQnlmVEhUUDd6bmF0SCs4cmcybDhVRlI1WmIzQ1orUDNE?=
 =?utf-8?B?eGlHb0YvM201YVNKZzd6UFMzUzVZRzc2dW1GVko2MjhzbFBjbkUwRmYvald1?=
 =?utf-8?B?c3hSNDB6Y1ZuVGZBZmZwbk1MeUE3aE1oZHhnakxBeGpmeGQ4Ty8rTWFJR2VS?=
 =?utf-8?B?cDVGa2xldVBtdHllblBxRy9hS2crOW9pSlYxOUxISGg2UzFUN2MvdUxVQmph?=
 =?utf-8?B?Y3hqemdrUTRnSURpdkNUOHlyUER6V3N3VnFURE5WeWMyQllkQ3NUUjRsdG9n?=
 =?utf-8?B?OXlIYU9FK0h6MjBZeXdKaStRSVVTd1ZIOWY2SE5KVnM0ektaSTF3TlJGdFJr?=
 =?utf-8?B?Vy9pc3RTOEkyL2JoVG50VEdBR0NZeGJyOWJFL0J1U21mNGZqeDZwZ1c4bHVF?=
 =?utf-8?B?OCtxLzc5R29DTklVTCt4bWxGSE1Gei82c3dpRTRsRVZEOVhJWWQ1bDJFUm95?=
 =?utf-8?B?dUpROE9zWXJWMVY0dHR6R2tBaUZhbWpyMjk4WmVidWpBOGFDQ2NBOUdyVzN6?=
 =?utf-8?B?cEtna0xwOGlZbHM5NjJsaThnSklYN1NHd0pxaGRmOTVyYU51aGcvN0M4MUVH?=
 =?utf-8?B?dFVIbGw0Y1hSWnppdTdrQUFOT3o0UXBBUllaMFcvZjJNektSYkxPS0ZteEsw?=
 =?utf-8?B?cDQ3NUxlTXQ0S2p0eVVINzdadGVRWnZLM09KWDJlZmtMbzYwYkVWejAwa3hI?=
 =?utf-8?B?THpSaGtzeFNpdXZSNUVGa2xZQTFpQ2R3L3M5TXVhcG9YTC9PcEhmdk9SYlpl?=
 =?utf-8?B?dkJGNzlwWDBzS09LaG9YU1dWQk95KzgwaTBTWm9QKzl2cjVGa2pDRmhrMTR4?=
 =?utf-8?B?Q0NFVHFHbWRvcm81VUk0WW5XblNxekZPUmlRcGdFRStjalM0RWgyZ054aVF2?=
 =?utf-8?B?Wi94UEt0dU4zRGdUS2RZTVdEWVRHc3h6eCtFSm0wdTFxcmpCd3FIVk9UYXlu?=
 =?utf-8?B?MlRqQkNQUTV0SU1QQ2xJenFwWHlZSFU2Z1IxaWI0dXo0a3loMHlOK0tmQ2JI?=
 =?utf-8?B?UG1WNkx5cHZxS211NnJIcytKTFVZQWxSUnpQSUI3V0NDdU9OV0VvbXllOENP?=
 =?utf-8?B?REdHUFZkNkhzRkF4N1FlOHRVQzlyeUUzblBRNkNLRGUxUlE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGZsYzBpTHdjRE5mdzM5WlJ3Z1RSdldHaWhBZTdnNTZudTMrclJjQlZvM3JP?=
 =?utf-8?B?TjZ1TllXUU5QQnk0TGNTNCsyUFZCcUJKeHlDWk1PQUp6czNzQXRMZkxXbFRR?=
 =?utf-8?B?ZkhnQmh1ZkNzRDF5eCtLRGZlNTRsbFR3anlWbFFwc3NSUkFoSEZ6WHFoR3cr?=
 =?utf-8?B?cWo2dzVTUDBGVDBkcEZydVpsTVJCSlJDcXhhaWFzQTJ2UVprZlc1cVlRTlBS?=
 =?utf-8?B?YmtIVU0yWjFvaWdsZWZ4Y3hlTXMrMGU1WEg2NEJrNUFnYm9tWHVrUURldWMy?=
 =?utf-8?B?YThOM1d1cjFJb1RGVzA2MGEyMUQ1NzVkQjlXWkJRR1FIaUd5SkRJeHFOcmRW?=
 =?utf-8?B?Zi9RRzBSQ2FHVXJzbUxwbnV3cDR0TzE0NnlsRGVUbThzS0hVaVp4cC84bWEw?=
 =?utf-8?B?QWF6YnhzVHNWVDBlNEdBNWxvb3AyMkl5ZExCbjdvcWUrbWlmNGxsSWhyMk9C?=
 =?utf-8?B?M2NvSTRPMEx2NnlEajJ2ZHpPeEhGODBFVDFKVHZYd1E2SU1GYmRjenFzWFBo?=
 =?utf-8?B?N3NhK3E5MDRzdndXVTBTeURab0o2dndiVmt3cjNDUXR1T3NFMzFMTFpxNGtz?=
 =?utf-8?B?alJRUERYTFZaY29od2U3cCt2UjZoQnE1UnBLV1NySFJQM3hmbGxjRDBGS000?=
 =?utf-8?B?akt1bXZmalVTWjF3ei9ENVFXTlBCQjZOMEc4R2RmWWlEczl1azBDOENZRmZi?=
 =?utf-8?B?S0NONVE4Ukk2Mm1mekJDYm1kVGJvMFFVSmJTUW0xVnJ3MDlINWNTaVRLWEtr?=
 =?utf-8?B?dDR3NnVpTE9GOHJrMkdGNWNwR0hKSGtJbGtoTzh3cCt1WmY1ZWFORDB1eUNW?=
 =?utf-8?B?OWdEeUtIV2xnRnYvZlM3M3ZGMHVkR0pUbHVYQUUyam1FeE1NS1BqcDlzZ2lz?=
 =?utf-8?B?MmQ2ZGdFQlZZeDQ4anBnRlFrTkFTdTY2SldCRUNGMkpldG5uWTliM0diSzNo?=
 =?utf-8?B?YjZISmFaZFZOZDk3L2hwcWdzcml6czNVTHk1OVdDWURQWko4WS9jUGdTaWdv?=
 =?utf-8?B?eFJuMzRqTldkdlpLVEJUMUQ2Wmk5OWNUWjkrT29pTysvRGcvMW5tNHNVV20v?=
 =?utf-8?B?dlFnSUJNV2hTTEE4dTlaZ3JRdzBtWU1FMUx3OGZaQU00QURVbmN2emIxZEFB?=
 =?utf-8?B?RWp4eWdTS2tZMFYwWDdpa1hOYXBzb0VFYXVXa0FWRG5GQS9YWFY3TUpGM09N?=
 =?utf-8?B?MTVsMFZSOXIvUUhqcGJtaDFZQ1NWZWJ4VnRzcWJJSWd4V21WWWJUb0x2eWdE?=
 =?utf-8?B?dVk2MncxUEZzcVZXWGE1eHVQT21LRU5RQ3QzeklxaE1Kd05MSk1sa1RNOFds?=
 =?utf-8?B?dWlhUlkwbUo0Zys4akt5RjRFQUNhUWkwaGx2bEhuTXppeTQyelBqdlRib0R6?=
 =?utf-8?B?VWwwS3ZIc2RSbDNsNWtvZ21jLytHOW1hYzhWWlFRbW1pbDB5U0ZtVmkvc240?=
 =?utf-8?B?MFBKZS81TWlQdGFmN3krZkpyUVN2OTZ6YkFIMzltTUROeTFZZFExTHU1dVNw?=
 =?utf-8?B?YUNxNnlNR21icWhhQXZEZnJUVHRmSEYxcHFuQmdwamVaNno1TVkxVWgzRllF?=
 =?utf-8?B?QkpiNmRTQ0hUa1BUTGtBQnMvVFA2VDFnOVVZQnp6aDV5YjZOVkh3eHFUck96?=
 =?utf-8?B?MkRiWlJ4VU9zQm52RGlFRlRpQnpIbHFhR3NiQ2hLam5CajhiK0haUzd6empY?=
 =?utf-8?B?Rzg3eXY4QlZ1eFR5SUFYVzdrY0FWQTJDYS85KzU5WGovV010aTFiaDN0L2Y1?=
 =?utf-8?B?QkJKcTR4MFJFYUc1dWNmVCtBY3ZQUjJ4c3pLUWhxRitSTU4rNHNxZjU3MHpz?=
 =?utf-8?B?VkFCTVFaai93Ry9EWStHL0lBNUNXVDhFM2ZaWXNXWFNQeWMzcGo0c1NUWHQ3?=
 =?utf-8?B?WHVXVXh6OExtTWxsdDNUR0Z4NFFKSk9UNktXYnZVQTFjbUFmSUduV29jTUhj?=
 =?utf-8?B?YnBkWW9Wa290TWRPRHZjQ3Y2VkU3NnhFWUlUVU5EaGpxY2lUVHNtTmg3QkJo?=
 =?utf-8?B?azh4N0JpUlBXNDN0VDZsMWpad3hmNmUxNmVTR1N2TFdTUk5VclFEcnJ4OFNR?=
 =?utf-8?B?SGdJQXVaVDFJbFRCMVgxV3RUbUlGU3V6Q1FWU0hITjBnLzlqN1p3R1cvb0Rt?=
 =?utf-8?Q?d4MQcV4BAxHJYVgb7b2mlX+r5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 004c08ac-a394-461f-2243-08dca0ba0e1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:26:54.0488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: elTD6tMD3GsV7iRFtODhDesZT7zt+8P3xbPzpd59bjT5Fl8V5RNI4LOKi5P3ulYmcgM1OSuRVqMwSd2QCzx4YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDExLzIwXSBkcm0vaTkxNS9mYmM6IEV4dHJhY3QgaW50
ZWxfZmJjX21heF9jZmJfaGVpZ2h0KCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBQdWxsIHRoZSBjb2RlIHRvIGRldGVy
bWluZSB0aGUgbWF4aW11bSBDRkIgaGVpZ2h0IGludG8gYSBzZXBhcmF0ZSBmdW5jdGlvbi4gRm9y
DQo+IHByZS1IU1cgdGhlIG1heGltdW0gQ0ZCIGhlaWdodCBpcyB0aGUgc2FtZSBhcyB0aGUgbWF4
aW11bSBwbGFuZSBoZWlnaHQgKGllLg0KPiB0aGUgb2xkZXIgaGFyZHdhcmUgc3VwcG9zZWRlbHkg
ZG9lbnMndCBoYXZlIHRoZSB0cmljayBvZiBsZWF2aW5nIHRoZSBleHRyYSBsaW5lcw0KPiB1bmNv
bXByZXNzZWQpLg0KPiANCg0KTml0OiBUeXBvIGluIHN1cHBvc2VkbHkgYW5kIGRvZXNuJ3QuDQoN
CkxpbWl0IGlzIGFsc28gYWx0ZXJlZCBhbG9uZyB3aXRoIHJlZmFjdG9yOyB3b3VsZCBhIHNlcGFy
YXRlIHBhdGNoIGJlIGJldHRlciA/DQpMZWF2ZSBpdCB5b3VyIGp1ZGdlbWVudC4gT3ZlcmFsbCBs
b2dpYyBsb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMjcgKysrKysrKysrKysrKysrKysrLS0tLS0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBjZjU3NTBl
ZDQ2ODEuLjQ3YjcxNWU1ZDUzMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+IEBAIC0yMDEsMTcgKzIwMSwzMCBAQCBzdGF0aWMgdW5zaWduZWQgaW50
IGludGVsX2ZiY19jZmJfc3RyaWRlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9wbGFuZV9zdGF0ZSAq
cGxhbmVfcw0KPiAgCXJldHVybiBfaW50ZWxfZmJjX2NmYl9zdHJpZGUoZGlzcGxheSwgd2lkdGgs
IHN0cmlkZSk7ICB9DQo+IA0KPiAtc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9mYmNfY2ZiX3Np
emUoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ICpwbGFuZV9zdGF0ZSkNCj4gKy8q
DQo+ICsgKiBNYXhpbXVtIGhlaWdodCB0aGUgaGFyZHdhcmUgd2lsbCBjb21wcmVzcywgb24gSFNX
Kw0KPiArICogYWRkaXRpb25hbCBsaW5lcyAodXAgdG8gdGhlIGFjdHVhbCBwbGFuZSBoZWlnaHQp
IHdpbGwNCj4gKyAqIHJlbWFpbiB1bmNvbXByZXNzZWQuDQo+ICsgKi8NCj4gK3N0YXRpYyB1bnNp
Z25lZCBpbnQgaW50ZWxfZmJjX21heF9jZmJfaGVpZ2h0KHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+
ICsqZGlzcGxheSkNCj4gIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRv
X2ludGVsX2Rpc3BsYXkocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUtDQo+ID5kZXYpOw0KPiAtCWlu
dCBoZWlnaHQgPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7
DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpc3BsYXktPmRy
bSk7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSA4KQ0KPiAtCQloZWlnaHQg
PSBtaW4oaGVpZ2h0LCAyNTYwKTsNCj4gLQllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9
PSA3KQ0KPiAtCQloZWlnaHQgPSBtaW4oaGVpZ2h0LCAyMDQ4KTsNCj4gKwkJcmV0dXJuIDI1NjA7
DQo+ICsJZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gNSB8fCBJU19HNFgoaTkxNSkp
DQo+ICsJCXJldHVybiAyMDQ4Ow0KPiArCWVsc2UNCj4gKwkJcmV0dXJuIDE1MzY7DQo+ICt9DQo+
IA0KPiAtCXJldHVybiBoZWlnaHQgKiBpbnRlbF9mYmNfY2ZiX3N0cmlkZShwbGFuZV9zdGF0ZSk7
DQo+ICtzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2ZiY19jZmJfc2l6ZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUNCj4gKypwbGFuZV9zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFu
ZS0NCj4gPmRldik7DQo+ICsJdW5zaWduZWQgaW50IGhlaWdodCA9IGRybV9yZWN0X2hlaWdodCgm
cGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsNCj4gKw0KPiArCXJldHVybiBtaW4oaGVpZ2h0
LCBpbnRlbF9mYmNfbWF4X2NmYl9oZWlnaHQoZGlzcGxheSkpICoNCj4gKwkJaW50ZWxfZmJjX2Nm
Yl9zdHJpZGUocGxhbmVfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB1MTYgaW50ZWxfZmJj
X292ZXJyaWRlX2NmYl9zdHJpZGUoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ICpw
bGFuZV9zdGF0ZSkNCj4gLS0NCj4gMi40NC4yDQoNCg==
