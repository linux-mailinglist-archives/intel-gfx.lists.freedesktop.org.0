Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X2tMJZ+hMmr82wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:31:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0576669A1FE
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:31:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZZN8JSug;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894AE10ED9E;
	Wed, 17 Jun 2026 13:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870E310EA4A;
 Wed, 17 Jun 2026 13:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781703063; x=1813239063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=51FXYAZ82y0rUAWmiCknm3y431BxHsiL780Y+j7Hc9E=;
 b=ZZN8JSugr/6UDbTANmKTva4kubVFbGOxDirPDUGnkGRQ0PZ7d1SSOZlO
 Ou8ZvEFPnGh7uhSLZ7CNJYdUDo1dLOjf7gWS0IlyXOOCVGjEy2n1xYHbE
 g6Pl92aWvXjS2qP5kEzr02kiZ1yR4a3ntgZK0o9GN9CiC9m6pURh4Jclz
 hHMbzsoMdyRd5+MTT0KrbTDZLCcr+2tLNBBQ5ypMYWSYgNfhw9uDgD6c7
 ime71yp4J7nuUxunWxcMrGFj7TYCO1mb67H+XCIZy+skmdXM1z9GDgNRo
 a5wgH/cBN/q07QE63f0tDgrv+l4obm6eriWVyNA4ONaqfDdCDvuuHnC31 Q==;
X-CSE-ConnectionGUID: P3AldMt1Su+kA+Yh7ECbbA==
X-CSE-MsgGUID: lB21Y7YrS0OGtCzQm6hCOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93981374"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93981374"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:31:03 -0700
X-CSE-ConnectionGUID: CNan4soRR7uXLTDjYSXhag==
X-CSE-MsgGUID: Zz10l0QWRYOXiPm0do8+ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245161472"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:31:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 06:31:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 06:31:00 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 06:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O6nXbqp4BRcDHF4DQaeoUUSD8C8htlDlbcRSJsS9hggoX6hSSERqq6znaB6o4254zRhNErKQMvpgAZNRRgpLV0enitoE6/oN9DmYcUav8o7m4xxQcXFJ5TtO1YcME8g5FYuI+lsNJ90l7ZcmSDKKY4qPcGDLt+vwsem8zhrNj9sXKqL66LsyypnxE14c0Z6wKeR7+wVzKsv/9DyIfvCL+BWR5Nb+m9cHXkEQXB9qeoDnajfgjkZZUjDxyeBRaXmsVh2tIUd02WI63qJI4T7K6Jt11+bVMn+yb0vGLBiWTZ1vRWryYVOrpE9ZrA/vK/Fohh4rbP878uMYRciNi7/tKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=51FXYAZ82y0rUAWmiCknm3y431BxHsiL780Y+j7Hc9E=;
 b=V//3ZxWPBKGuCVh+Le9tJfDuW7wpwMl/ahIDYvUhxV3YdTYkiRL4ZD4ZS5NSeO2CNWBxcK9mH1mhwlSGevzse+GIkCSsd+UpN3YN+D9QXs99+7etUmP2U+7EXKes4wf1R2JB181vtK99Dn9XC0DHrFRn5SEnpH2C0uHF59IuHaihgjZLBh8SqM4GNPG27pEnkRLAYFTXi426aApTA+0BSJ8Er/uKvlIAdxhvLSGhktDH5zHqZN1UQTbKQMyQyTQoXiw210ycjl+6UI1qG4zweJW8cQUh4rWMpea9PC2wc4/TFNmi/tUklz//JI5fRVseaM6PTgppep/ICMFRKUjD5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA1PR11MB8861.namprd11.prod.outlook.com (2603:10b6:208:59a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 13:30:57 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 13:30:57 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Lee,
 Shawn C" <shawn.c.lee@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: update to the BW buddy configuration
Thread-Topic: [PATCH v2] drm/i915/display: update to the BW buddy configuration
Thread-Index: AQHc/b/OJBjvc70gyEOS9dDtcEYsCLZCoBKAgAAfeoA=
Date: Wed, 17 Jun 2026 13:30:56 +0000
Message-ID: <9366aedccae008935872d9d5c2583ef5d1d714eb.camel@intel.com>
References: <20260616184131.295013-1-vinod.govindapillai@intel.com>
 <4abfacf0bf38d230f5b5ed6236d2f28cd9a77f3e@intel.com>
In-Reply-To: <4abfacf0bf38d230f5b5ed6236d2f28cd9a77f3e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA1PR11MB8861:EE_
x-ms-office365-filtering-correlation-id: bf0eb631-300f-4a19-9a14-08decc74a9cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|23010399003|366016|1800799024|56012099006|11063799006|4143699003|18002099003|22082099003|6133799003|38070700021;
x-microsoft-antispam-message-info: +QPuYBiJ83Vj78TpPIsMEtZbvdT8w/vpK/OnOiRL5fXLdNb0FLunIolMktIMgPYAlT3bUGFF1DjS7ieul3JPkTEcqJN+YmaxRSgNbpzi2WPVP8YaN46Jc4S+GaDDKLSwHCS9IQ0ZiG7uP2U6ae+hSNO+OLoMP9mkZyQ/AIigIYgsa9rpPdMPS0vgwbQmclls8QhrXyDa1yE3YNrwOWTVh9f3HdEnocLEd26cvA2FKOSMlE/g2Ojkmxzq2PCYk8xxUpHNJGEteZKook+tFoFEZ3uoxZ4vMRGCesOsgYBTkVM0FIsNjROITlBSj1lZRXG9+gEbcz/YP/4b/tWPs8jPhsx8TGRDjphv2DIwiVtM8Vd0QpI3bue9CTCF9dNMiSoY9mcg1opkK6xgee/BKJUThuu2ohPD6mA3o/5RiX8ND8IJNKUKTThyTMouSUy9dFBJNEI8MBY6mwxCeekvk1Yr/ce23Ei7o44oY5g80+D+gxOeEAeOOKYEMx1nDjBtPAJJ8j3s+RSONPn6Tyimk+GiBnyFx1AcEkr2CTMiysftYnA6i7py8ubqERIUtckO73PYKaVx19auQIXB8u8fqID+Z6Ou4yHzjLtj78MzSd13irZW5foMo9dNCeo1L911bpFveRbFlqnasjF4UWekGiynL9yS7d47RyikctwWvwodo1DKjBYCObmWAH4gfWyMK2s1MJtYM6ZeHA89VpTAbyg+d+PGmHGpx7DLkYd4sJZNrHVSIo2Wd8KXScDV+IKZf8nl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003)(6133799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RjRnaEJDUUxZcGc4VHltM2VyRUN3QW9vdStFZmdMOEVRckRldy9Tdm16Vit5?=
 =?utf-8?B?TmErWC9lOERKSDV0cjdZZ2swRzV4M2ZrTXMxSXREeFVCL0dSRUxLOEdtT05s?=
 =?utf-8?B?d3hFbm5FTGZKUVYycGZDanZwaWM5cnF2ci9GZXFURHdkT09DVmhrQjF5SGdz?=
 =?utf-8?B?OTdqT1FxL0lsZHJnM2FiM3VaZWUveWlEVkgvT1MxaFBTaFozZk93NDR5d3dm?=
 =?utf-8?B?RmM2eWlnSmVuWWZIeEhjRzE1dklQMy9mQTd3Q2dZYjN0SHpzUTVHV1d3ZTdZ?=
 =?utf-8?B?V3V5RkpQZ25oN0VnZytRdmQzM0dWTnNEZm1pZWJlQ3c2anZGSUwxczlSSXpJ?=
 =?utf-8?B?cVlkeXl5WFlCUUJOT21GbVJ1SVVZeEhGU3JENGU4ZmVzZTAvcVZiVjd2ejFz?=
 =?utf-8?B?Wk5MUVNKL0RmKzd6Mk1TSUxmQ2VxTmJuc213aDB3MGJzZ0RYNThPQTNvNGpQ?=
 =?utf-8?B?SW9TVXZPcTh0YWcycnQ2NmFDRkE5WVE3N0pxODhCL0ViTFozWkJqakxidzdq?=
 =?utf-8?B?THYzVWFMTDAzYzdMWmxRK2dBblJCdk1xaG5rOVhMSnJEd0M4S21DQW9JaENB?=
 =?utf-8?B?bTFUdStNdStIekF0dGRYekkvZlczdXRCdWp0aWhPSjJtYTlCSnBsU0Q5dnlY?=
 =?utf-8?B?aFN4RVJSd2VtYW9vU0FDMGNHbVUzWGF5VWlsWVEzbHNIQVBjSW1xTU9CY2Ex?=
 =?utf-8?B?emdyNHpPdy80c1Q4SWZucnJUSXlNMWlZa00rT3NRMFV5QVZ2ZmtTUEROamNy?=
 =?utf-8?B?bGpTU3lCcVo5aXZ6U2FESXdLVGI0TUFxMHNGQ1FXNEE5WHQzclN1TVhRdlk1?=
 =?utf-8?B?eGVTUm95THMyTWJaS2NxQmluaHVVNXVOMDNPSVRSYlNyNjNvdzJHVGx6MStj?=
 =?utf-8?B?YXRZbldwREJLK3dXTCtNQVJoR0V4U1dJWVJYUk5ndUE5dzZPLzNhbTVaTUlF?=
 =?utf-8?B?ZmIzMWlXdzZ1UUhXUmlLb2lKb0FGOWtwV3I4UmxzRVJHRGNQaDJ3d1puTS9w?=
 =?utf-8?B?c29iYzlBQzZTazl1bFRYViswMCtRMUJSY0hPTWJ6OHhQWVUrcWgvM25JNDE1?=
 =?utf-8?B?Q1c5SVZHMXhtZ1M0UUpWRzBTZFFRS3B1UmhHWVB2RHhoWUszeUtEZS9rdXJy?=
 =?utf-8?B?TWJJeit2UUR5RTZtL1NHN1RNMy8xakFkWFRhNm1PSTl0Ui9ybjU3KzhnY1RU?=
 =?utf-8?B?dmZuOTNhV2FqZ0liMTkySkF5c3REa09zK2YzdmVtU1hEcTJTQnNZckRHZjNz?=
 =?utf-8?B?Lzd2Wml4Wkg2Q21aclkyZDdYMElJalNoODJpU3hZNXNxWWtCZ0llR3V6ZkxG?=
 =?utf-8?B?cnBFQk15RkxVaDY4c1UzaDNsWXdCdzNYMFVsbWt0TGEycEhXbFFVUkZ5WXNu?=
 =?utf-8?B?YWxxbXkvNEJwOWQzckc3MG1CYjhlVGZIMjBuQWF3cU9IbjBnL2JRaWlENFc5?=
 =?utf-8?B?Y05jMjhra20rM1hqMHNXOWxwaE0vZGx4amZ0MW1Id3F3aGpuQkJzOCtTZVhE?=
 =?utf-8?B?dXFYS3pWdkRCaWVPUUwwc1FibUxJWkltK1ZLeG9TTzBEa2NiOGRabXdHeG9s?=
 =?utf-8?B?ei9oeHpsR2tuOSsveFFBYWt1dnVrdlJSSnBzN1dVTklEdHFNMnU2N1BXTUJV?=
 =?utf-8?B?UTQxWENNcENFczJ5c2ovSUl2ODF2T3pOU0dSeVltWENYaTVSMzNSYjAxTEtv?=
 =?utf-8?B?eGQvRUlNT1dzeDNkMUgzTEtaVFRuZUlobTg3UmNkQU1IZzNzeW13cUtJVDJO?=
 =?utf-8?B?WUIySnJqdE5mczZXOTBocnpzdnB4c1Y1T3EvMVB5RllpbDh0WmRyUDJiTk1s?=
 =?utf-8?B?Tnpsa3ZwOE1ZM0QwU0tHQlBUeGd6U3hEeWRaSDNxY0tjUHNmRTcza0xVL0Nq?=
 =?utf-8?B?RC95YWhyUlh2dGpLWmFyNkZ5d1VvYUpmNVF1YWpJY2pSNXh6Mzk1MC9Rbmsz?=
 =?utf-8?B?WnJ0aTB3QkFrOEVycXlHU091NC9FWVBtQzlrMzZoMUN2QnppcGRRS1I1dlpM?=
 =?utf-8?B?blFMcnBvZHBXOTAyb1Z0azZONXg0aTZGSlBJMWtnYWhXL2dVdWkzSXBXYUl0?=
 =?utf-8?B?VnZCdlZIYmp3eVhKYXlybjJ3b1VhNGdKVnpwNGZNTDNuVU9vZU9MTVRsZEM3?=
 =?utf-8?B?YStTZDhoeDdaM0dmb2s5QnZMQ1hPRGwwd0xsMWhwVFZwUUNMUlRtT1p3blBD?=
 =?utf-8?B?NllZV1Z6WHlWN0JJZ2FkT1NVQjBTbnRDcSt2WUhxQWQ5NFlYT0VSc0lJTEE5?=
 =?utf-8?B?c1JxUlE4TEk1ZHdaY3hNbUxlWkthbm5Qano1SWc2dWRBWWNZdG9zdGlsakVS?=
 =?utf-8?B?dWE1QktCVWpIeTJWOEh2ZU9LRENvS25XamJkd0VIY0dHODNRQkZaSUxpYzcw?=
 =?utf-8?Q?7vpSDdnfTQfov5uOnU9Eyx0BjS/BXX8tSGGIkDGYnRVkR?=
x-ms-exchange-antispam-messagedata-1: Ts12I0RcbKuc0wORkbEMUSCaZdFKCk01U70gE5wl29QVGS/nasUKwL6I
Content-Type: text/plain; charset="utf-8"
Content-ID: <061FDCAC9D64B24B84D4D62136AD1EFD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VOyRNrKq5iKRWbQWCRq5ruO1F9LijYNk49ugzea5nIN53ddqodhSLm/DYQ6wzmLjM9xGce7cIT2C5G5H1HxH0/LyK4x1UBul0UyPA+0skPD8qIHnWgT2aV5TF8cqbEGOkf34DWMIIzucgW65zzRQvuSgmvohpKBmu5BK0G7ik/vY1cehWoinZ2OZgmnnvYI7twO3Erhbi76MskqMhqX4MwNOCKy4/sOARpBUe6v12rOmpLY4YyTbK4f17JS7O+MhbwygJE4QQP6VkwxT6cO9iNGp4WgAOipRelMo2wnpdgxqrepvCBFr/2rADpmqjTPKaanvlyLxbGnztffIucWfYQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf0eb631-300f-4a19-9a14-08decc74a9cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 13:30:56.9832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BqyGURRPPQstLxiV5VDOnPt6/3Hg5jJhlPO8AQxLj0xyVRCFwuCpcA+vlE77PFPfeJG+gs1RnlJXrKSvDGn6md3GQ9gT1d0IYwVknSeXnrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8861
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.11 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MAILSPIKE_FAIL(0.00)[131.252.210.177:query timed out];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0576669A1FE

T24gV2VkLCAyMDI2LTA2LTE3IGF0IDE0OjM4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAxNiBKdW4gMjAyNiwgVmlub2QgR292aW5kYXBpbGxhaQ0KPiA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEJzcGVjIGhhcyBiZWVuIHVwZGF0ZWQgZm9y
IHhlMl9scGQrIHBsYXRmb3JtcyBvbiBob3cgdG8gaGFuZGxlDQo+ID4gdGhlIGJ3IGJ1ZGR5IHBy
Z3JhbW1pbmcgaW4gY2FzZSBubyBtYXRjaGluZyBtZW1vcnkgY29uZmlndXJhdGlvbg0KPiA+IGlz
IGZvdW5kIHcuci50IHRoZSBjdXJyZW50IHBhZ2UgbWFzayB0YWJsZS4gVGhlIHJlY29tbWVuZGF0
aW9uDQo+ID4gaXMgdG8ga2VlcCB0aGUgZGVmYXVsdCBzZXR0aW5ncyBmb3IgdGhlIHJlbGF0ZWQg
cmVnaXN0ZXJzIGFzIGl0DQo+ID4gaXMgd2l0aG91dCBleHBsaWNpdGx5IGRpc2FibGluZyB0aGUg
YncgYnVkZHkuDQo+ID4gDQo+ID4gdjI6IHJlbW92ZWQgZXh0cmEgZXhwbGFuYXRpb24NCj4gPiAN
Cj4gPiBCc3BlYzogNjg4NzENCj4gPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmphbGEgPHZpbGxl
LnN5cmphbGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxs
YWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA5ICsrKysrKy0t
LQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gaW5kZXggMmU1MWRmY2Q1ZGNlLi4zZDM0OGM1ZGVjZWUg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYw0KPiA+IEBAIC0xNjM0LDkgKzE2MzQsMTIgQEAgc3RhdGljIHZvaWQg
dGdsX2J3X2J1ZGR5X2luaXQoc3RydWN0DQo+ID4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4g
PiDCoAlpZiAodGFibGVbY29uZmlnXS5wYWdlX21hc2sgPT0gMCkgew0KPiA+IMKgCQlkcm1fZGJn
X2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gwqAJCQnCoMKgwqAgIlVua25vd24gbWVtb3J5IGNvbmZp
Z3VyYXRpb247DQo+ID4gZGlzYWJsaW5nIGFkZHJlc3MgYnVkZHkgbG9naWMuXG4iKTsNCj4gDQo+
IFRoZSBkZWJ1ZyBsb2dnaW5nIGJlY29tZXMgbWlzbGVhZGluZyBmb3IgZGlzcGxheSA+PSAyMC4N
Cj4gDQo+IEJSLA0KPiBKYW5pLg0KDQpUaG91Z2ggd2UgZG9udCBleHBsaWNpdGx5IGRpc2FibGUg
dGhlIGJ1ZGR5X2N0bCByZWdpc3RlciwgSSB1bmRlcnN0b29kDQp0aGF0IHRoZSBlZmZlY3QgaXMg
c2FtZS4gVGhhdHMgdGhlIHJlYXNvbiBJIGRpZG50IGNoYW5nZSB0aGUgZGVidWcNCmxvZ2dpbmcg
aW4gdGhpcyBjYXNlLg0KDQpCUg0KVmlub2QNCg0KPiANCj4gPiAtCQlmb3JfZWFjaF9zZXRfYml0
KGksICZhYm94X21hc2ssDQo+ID4gQklUU19QRVJfVFlQRShhYm94X21hc2spKQ0KPiA+IC0JCQlp
bnRlbF9kZV93cml0ZShkaXNwbGF5LCBCV19CVUREWV9DVEwoaSksDQo+ID4gLQkJCQnCoMKgwqDC
oMKgwqAgQldfQlVERFlfRElTQUJMRSk7DQo+ID4gKw0KPiA+ICsJCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA8IDIwKSB7DQo+ID4gKwkJCWZvcl9lYWNoX3NldF9iaXQoaSwgJmFib3hfbWFzaywN
Cj4gPiBCSVRTX1BFUl9UWVBFKGFib3hfbWFzaykpDQo+ID4gKwkJCQlpbnRlbF9kZV93cml0ZShk
aXNwbGF5LA0KPiA+IEJXX0JVRERZX0NUTChpKSwNCj4gPiArCQkJCQnCoMKgwqDCoMKgwqAgQldf
QlVERFlfRElTQUJMRSk7DQo+ID4gKwkJfQ0KPiA+IMKgCX0gZWxzZSB7DQo+ID4gwqAJCWZvcl9l
YWNoX3NldF9iaXQoaSwgJmFib3hfbWFzaywNCj4gPiBCSVRTX1BFUl9UWVBFKGFib3hfbWFzaykp
IHsNCj4gPiDCoAkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+ID4gQldfQlVERFlfUEFHRV9N
QVNLKGkpLA0KPiANCg0K
