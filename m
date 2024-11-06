Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 951FB9BE43A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 11:26:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040DB891B4;
	Wed,  6 Nov 2024 10:26:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OxXH9rtF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA09789838;
 Wed,  6 Nov 2024 10:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730888784; x=1762424784;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BB+Uiu41lMm/YrKnv9zkOSGwknp5+HdFF4+ZpT8VTMU=;
 b=OxXH9rtFENW/KoSWFgdZh6shOVpZ75LxI88i+YLR0PuxaXiFRj+bGOzj
 ro856/ZcW42aHJs/HKYSZoPIEMSLttsqaTgxwYiFNjzsDzXQcpGz8ZrEo
 tnY/PlNtmH7HHZrGYIIWMf/oePKkZ1X/wXO2f5KoAsIlhiJctdK+i4oJx
 69xL+N9ohdjorO+6nZCWkNo/eqovMD+DxnXZlMJXG0z37pVu7gFpbR+iG
 iWajkN+Me/dwSurLuCX6FwAM+PoAA+vtNUTOLvva1l8edRKNwAl8VXJgw
 8Tuchw1AXxCy4R7QpqM7PIJVAbyhlByHf4cozNFUuewsn+9yVx8cM5lcD g==;
X-CSE-ConnectionGUID: HGsZFsbjTn6EakdDhDxM8w==
X-CSE-MsgGUID: WkCYH//qQ7iQQVAEiZguDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="34606552"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="34606552"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:26:23 -0800
X-CSE-ConnectionGUID: S2qh4TE2TLSU857xNHjK/w==
X-CSE-MsgGUID: ZwK+YGDzSkCwYndYfxpY4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="84586569"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 02:24:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 02:24:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 02:24:56 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 02:24:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CFNY6Yqg1NiNidGfX+zDsxI2Pl+YFdm7iaRRjGQGrhCGCwe7krx/OnvTlIbB4z0oSLfOB+8T0xsZO9PlVnsGczhNCgGaL/jrw0oQCh6bgRDJH2FUNcvTX18sqqc3QXnE3KpmFwOZFOxsNrAWum6GgAcsKQU04aaIBOVnV5H+3eu6l13SyriyJfCzDuw0Y8KBAzkSuR4Zeqpii7pzEDW6ahWFrOrxd7cHq15DU8lxfhy71WzXU92utzQuEXLiU8WCH6kmGzfeVrF/cjU5upJ7f69uoNVKxgMMcoqMNSUPviM4i+tGqEcR+oYMJxA6eEmcMpGgOKHanVvRhhv5GqgjYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BB+Uiu41lMm/YrKnv9zkOSGwknp5+HdFF4+ZpT8VTMU=;
 b=F2L7mgLQuh07EG3eqPLemreP3jjAyuq8nv+9u72h02awe5vecUvzY4hwVHi/GZpsiRprxnbYxwXdPwdfYy+VatR8jGO4Wf32bsJHz3KLVYfuSTBz7h3uw/DeFMFHo6HN2BZ7gbtKSrra44ufBhv/Q8o7HWYEIs2cUU5tqAm2Q8DeQSWw7td3AnNg0jSOrjzTvoBn1QjqijlAziuLJ2baW7B/2pW+7w8HQ9NIlDztjuGe//rlLhb9AUR7HYrqLV1MUgNSf4/165Ihdu20zJs8wQEABhSysYLyWEdN2xTzikYcx6YcSqVYdMqKjhvJUWepVoNDWIT5XgsUqEtMntDBeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MN0PR11MB6159.namprd11.prod.outlook.com (2603:10b6:208:3c9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 10:24:53 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 10:24:53 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 07/15] drm/i915/display: convert HAS_IPS() to struct
 intel_display
Thread-Topic: [PATCH 07/15] drm/i915/display: convert HAS_IPS() to struct
 intel_display
Thread-Index: AQHbLt3WgKUgEPD7XUmcauhRA+FH6rKqDn8A
Date: Wed, 6 Nov 2024 10:24:53 +0000
Message-ID: <e9261e17673b5ca80cdcb0fb765411758e69459d.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <aa1279f5f04ed29b053209d49bb0137eea99119e.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <aa1279f5f04ed29b053209d49bb0137eea99119e.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MN0PR11MB6159:EE_
x-ms-office365-filtering-correlation-id: 3efabcf2-6df8-41c7-3bf3-08dcfe4d410a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dmN0Ull0YVRVR0VsalZ6NGd0eUdPQnpIanE5ZTFXc0tQcktjQ2lMU0FvRG83?=
 =?utf-8?B?OEpsUlVhT1I2ejVLUjVHZUFZVUpraVptSVpRaWQwWDhpYW5wQ1FNNmhxbnds?=
 =?utf-8?B?b3FXOW5jZWthSGliT1lzdFFRQ0RJS2ZoUDVKdkpHZVBxQThYZnRJN1NTcU5L?=
 =?utf-8?B?TjM4Z0tzbGxGcm1ObmtEdjhrNmdsWTJkdTBJUDJxN2RpZzBBS2Q3TUZaMkF2?=
 =?utf-8?B?VFJ0UjNIUEh4RHo2WmN1bXpMQktTNnMzV25rNEIyYS95Ny92YldLTi9VY2Uz?=
 =?utf-8?B?cjFhdkZhaEhVYVRtRkdIVnlBY0tqc05XWS9qaEF3dkhmL3ZHa3ltamIxR015?=
 =?utf-8?B?czZ0dWMyMThNaWozOW1OSW95QUlwT01uWmJGUHhkY0RyLy9pUWp3aEF1WVlH?=
 =?utf-8?B?Q2hHN3NzdzBHaHhCb0pkcERpdXlUL21CdVhHWnlTVzZlL3BBYkp1YWlITHA1?=
 =?utf-8?B?UHVCSGttQlRNbkNBN043VW04cHZWNWMyWmNxditSVFY0b0YzWXd3bWVDUHZL?=
 =?utf-8?B?a2hZT1lCcG1tWlJRclB4bDExQ2l0UkJzd05HM0JUdnY4N3RINU8xbmtHdFcz?=
 =?utf-8?B?SUhWNnZUQ0dKQTd2Rmwzb3FZanhIbUxSRk5Sb0M4MzA4dUw2U3NWekNLcWtM?=
 =?utf-8?B?TkpOaktPNG1wWndSaGtabHhheXF3bnNadlNSMVNuUG0yQlQ0Y25hbi9lTzF1?=
 =?utf-8?B?c2taMWowSzN5QXZhNkV1YkxMTlExaXdtVEd0aXV3cmliZ3lyZmdyTy9lRE5w?=
 =?utf-8?B?QWdHS1dvaWN1QzBGRnFuWVlNM0pnR2dtRitoVUR1RVVDUkpKb3NOODBDTGMw?=
 =?utf-8?B?MkZBWk9zUG5sU25rYm9wVjNXdURjdko4UFNOWHVRYjRQRDZ2VUxJNGxzRWxp?=
 =?utf-8?B?NVNCWkpmWEtrTEw3b0F3dkEzclJRcjg2U1o4ZnY2MFFPMzJTVkN0Qm9aOGtG?=
 =?utf-8?B?S3IxRlZBL3o0U0E2bWdIY05lMCtYNEpTellJajJTWWNDSTM3WU81bWhBemg5?=
 =?utf-8?B?TlFjUWwxQU5rZHZERi9pYTdJMU1PcUo3K040SjRSWi9oODV2Rlc4VTFxbkhH?=
 =?utf-8?B?TXdSS2tSREpIWTNPVUJvU3Z5c2FjTmpOTzFWZW9HeUNZcXVHMnJmMVVCdkNx?=
 =?utf-8?B?dGx5aXRnampZaElhQzVmM2hENnpqQ1RmZVNZMXZwMS9wbFNaSFFZSmYyWktB?=
 =?utf-8?B?STREN2h2TkN0WndzYldIWEk5dVp0TkZwUCtpVEpHSlVnNDYvY3dLck1LVUly?=
 =?utf-8?B?Ykc2VUdyTUQ2b24zU01BdGxCVjhkUHl3Wm1Nb3RqMnR5YUpzbkNPSDl3V2lm?=
 =?utf-8?B?M1hLZzBwbUJqWXBDWTdtTUQxZ2I4akkxcWpqK3ptVWdlUUlmZHNaODBJQ3BT?=
 =?utf-8?B?TmhMTFJLOTVFYzlVZlJMSlBxdTVLenlBRlJyQzduN3VnRUhxd3JTc1cwYWNh?=
 =?utf-8?B?eERaZ2JPYjJDSlg3L0RwbTkwelBBci9PWVQ0dDRkSGZpZ0NSZSt3cm1BZEZ3?=
 =?utf-8?B?UGtJQUwzOTNDT0htbGtBTUhJRjRjOEJmeCtJVGNwdXdrZktYUllGV296YUlr?=
 =?utf-8?B?c2l3emVteVN6YUJ6R0JWZXhiK01TYUdUb0I5eTZwUzdiUGI5czVoK3hxQ21D?=
 =?utf-8?B?ODJnMm1ZcFY5WGIzeDVGMVk1VTJCdE9rcWVlWFVMT3Y1aTJqSFJPbGFjekVQ?=
 =?utf-8?B?dGNaYXhERGZxUXVLV2wwNGF5S0k5TG05bGgzLzdQV1RoaVZTbi9RdWFLYm02?=
 =?utf-8?B?OE9lZlRrOVl6TjYrS0FWWDBiSDRodEIxRXN1Y1BkT2xXRE9tRTBvNmQ2b1pw?=
 =?utf-8?Q?spwZZQtqRFz8CYC2WcBYO5jtyrkCpGmly/Cw4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTZFbjFhUGs0ZkhmZmFaUWZCYXl3Z1ZkUEd3Wks1YjA3eUNaZFJzeFVwRnpq?=
 =?utf-8?B?amVZWCtjT2JxRzF4NFg0TDN0ZU8wWkUvM2VYRHFjTFBsUytkeEdhRDh5Ulhx?=
 =?utf-8?B?b01ORkxrTUZzOW11WWNCb3ZXYXFXMWZSdm9vK2MvREVVaDNHUUEwOGo0NVdI?=
 =?utf-8?B?UytVc2lDU21RaTh6dmN6UVpaNGlCK1BJdXAzZGIzVkI3d2N5T29tSi9sT3JC?=
 =?utf-8?B?NTB1aDN3cStGMjJqTVZ4dGMwUTBaUGVQL0VDWUpEN1UwUGpDWmQzR1RNU2M5?=
 =?utf-8?B?SnZlZkhtdzduWWs2MFg2UVYydUF6TUdlRHV3dGRuSzhkcmx0RWsvbGhOWHZa?=
 =?utf-8?B?Q2F1a2tCZHZSbWRpd3licUZQZ3N6SEs2MTFCTkNJN1ZhRkJmelV1RUdCUTZm?=
 =?utf-8?B?alVCMkQ5Ulh6SXNNV2tWd25LWEJPUjFSMnBtdCtPYmYxQXFhRFVTeVRTNFZo?=
 =?utf-8?B?SmxIV1crMGdycnpob1hBSTR1QTRUK29rMmczaWFNQlJ2blFTM0ZmVCtaaXQ2?=
 =?utf-8?B?R3BvRGZjTTluYlY3YnpTR0U1SWpuc1BERWpaZTU5S3FJNEZtUkdmTkt0RG1S?=
 =?utf-8?B?d3R1Z01xYktFa0VseHprVnBNV0ZoVHgyWWVSUng3M0RLemlpRmZLWXpuMVI5?=
 =?utf-8?B?bTlPMWxaQTg0cEx0bzk4ejFWcFVUYXNBcnJTcVlzbkdaNXpneXpFblE1RlQv?=
 =?utf-8?B?WmZYQXY5Z0ZYMWhaNnpadmc5QjlRMFZ6cUlOWHNkM1ZlM1VHelBOZTlvNldW?=
 =?utf-8?B?VGpCRklSbXhsTzEyU016NXMzU2hRNVdRd1RpS3JFbzFSTHFTcFdxQ1F3cXl6?=
 =?utf-8?B?K2JTTkFYVjQyMk5KUzdsZ1V3T1ZyR2t2dTJSNXhMYUt1QkhvT3pEUkdtc3M1?=
 =?utf-8?B?R2d0VEk5Z3VTMFZRV0gwSExDTlFSZWlRSWV5WnEwZGN0MjM2bzk3Mm8zQ0JI?=
 =?utf-8?B?dVVxSWZmcktvT0RLcWd6NG1sUjE5M3hHdTU3YjVvZnpxYklzRnJ1Y2F6Q0lB?=
 =?utf-8?B?SUpQQVlVelQvYVZhdXhOWndYNHVPbWlWbDlwbytEM1pWT25aTzVkMzJNZXRy?=
 =?utf-8?B?Vk92RHFob1VYUnVVYUFPTGJUcWNTMWtJeEx3ZW55b1hvb0ZaMkdMa2FNVnFy?=
 =?utf-8?B?bFRNUDNnZ0RkdWZVYk5oY0l5K01CbUN5KzBVYlZ3TUIrV1RyLzdlOWNmMjNS?=
 =?utf-8?B?dDFlL0drVGwxdm5vOEt2bVFhRENUcmNlNlMwM3ZuWHVlSnY1NXlTZUZTQVZC?=
 =?utf-8?B?VHJwcUZLSkRWMzZKTExiRExXakYxd2hBYllhZlZyUXJEUEJMZnhsN0Fna05X?=
 =?utf-8?B?WG9uYzNhSGtyMnI4UE1FbFJGcnJPU3pNLy9RcFZkRlY2UUIreVY2WXpldlJF?=
 =?utf-8?B?WlJJUHVJVHJXZUpoejR2ZUJnUW55Zkwza25pakhJY205cWlOS0ZKblpYT05Z?=
 =?utf-8?B?R0VZUlhHekNGWGltZzRHb2RNYWVuOVl2M2V1a1NJbTNmczNVaHhPQUxubEZD?=
 =?utf-8?B?U1BsM1N2VTl4U1lYVzhlWDBwSWQzZFF6clBERkh6NW1MVVRWZTFEU2tuU2tJ?=
 =?utf-8?B?QXo2Yml2b2VrTUZaUTc4TkdqUSsvRnFjb1RQekVHaEJFVE81bDBVbGZNNi8y?=
 =?utf-8?B?MjNwQ2hvVDllN0h6WnQwZ0VObFQxZXBTVEpnNXBoL2N0M1FJdXRBb0NaOXJB?=
 =?utf-8?B?VFRQcGJla1FhenlEZU5sdzJkRFZSbGpHOFQrcnNWR2xLNExuQmNpTW1kRjd4?=
 =?utf-8?B?NWk4S0MwQ0xNc2JQZFZkVnFuR1VpOUlNbkdsdGlGcm13eFRLRW42dFZhbnEy?=
 =?utf-8?B?djMxV3BGU200MUtHc3R0RVA0VjViR1lnWW8xZ0x0cU9TU0U0Q2dnZUtYaGdt?=
 =?utf-8?B?UnJTM1ZyTGNvai9RQU5NL1JpM0ZTbnpUak1ZK28vais5ZU1kc2RnSXJyeUl0?=
 =?utf-8?B?bm9oTmZNREZ5ZHNuRkZZUkFqVnJ6bGZNVkozaVhmcVJLZmRwaGdwWXdsdHgv?=
 =?utf-8?B?WHBBczE4T3NBRDl4cFpiYVBhZ2oxSXRMQXoySWhURWFiZGhlZnBCRklIVzlI?=
 =?utf-8?B?ckRBODkyb3JDRWpHSkpGQm9CK2tyT3dhSitGTG8rSXZ0QVlhUGRwZ25QL2E3?=
 =?utf-8?B?ME9WN0haSHd3TXpQVkJFWll1NldZR0NGckcyczd1WENQZWQ5bkppekNBSGYv?=
 =?utf-8?Q?1f83bgRP6MeWV9lO8qz6JwE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <31EE2F4E6057F24C97113FC0E3F423E1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3efabcf2-6df8-41c7-3bf3-08dcfe4d410a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 10:24:53.6745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CsKGaBXf8NXXE4YZbmuniB5bCtV/UGrih77jNway6rj61WuTjbXTKSwwah8A0jYoEbEy9GDwFxcDaU4nW+Z/uTwupoJGtFzjD/PslNJal/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6159
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19JUFMoKSB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheS4gRG8gbWluaW1hbCBkcml2
ZS1ieQo+IGNvbnZlcnNpb25zIHRvIHN0cnVjdCBpbnRlbF9kaXNwbGF5IGluIHRoZSBjYWxsZXJz
IHdoaWxlIGF0IGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2hzd19p
cHMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgNCArKystCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuY8KgwqDCoMKgwqDCoMKgIHwgMyArKy0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaCB8IDIg
Ky0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
IAoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlA
aW50ZWwuY29tPgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9o
c3dfaXBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2hzd19pcHMuYwo+IGluZGV4
IDM0YzVkMjhmYzg2Ni4uZWU4MTVlMDM0NGU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaHN3X2lwcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9oc3dfaXBzLmMKPiBAQCAtMTg1LDcgKzE4NSw5IEBAIHZvaWQgaHN3X2lwc19wb3N0X3Vw
ZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiDCoC8qIElQUyBvbmx5IGV4
aXN0cyBvbiBVTFQgbWFjaGluZXMgYW5kIGlzIHRpZWQgdG8gcGlwZSBBLiAqLwo+IMKgYm9vbCBo
c3dfY3J0Y19zdXBwb3J0c19pcHMoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gwqB7Cj4gLcKg
wqDCoMKgwqDCoMKgcmV0dXJuIEhBU19JUFModG9faTkxNShjcnRjLT5iYXNlLmRldikpICYmIGNy
dGMtPnBpcGUgPT0gUElQRV9BOwo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjKTsKPiArCj4gK8KgwqDCoMKgwqDCoMKg
cmV0dXJuIEhBU19JUFMoZGlzcGxheSkgJiYgY3J0Yy0+cGlwZSA9PSBQSVBFX0E7Cj4gwqB9Cj4g
wqAKPiDCoGJvb2wgaHN3X2NydGNfc3RhdGVfaXBzX2NhcGFibGUoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDU3YjQyNTU0ZDY1Ni4uZjUzNjExZTgzNTAyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBA
QCAtNDU0NSw2ICs0NTQ1LDcgQEAgc3RhdGljIGludCBoc3dfY29tcHV0ZV9saW5ldGltZV93bShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiDCoHN0YXRpYyBpbnQgaW50ZWxfY3J0
Y19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gwqB7Cj4gK8KgwqDCoMKgwqDCoMKgc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMpOwo+IMKg
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGNydGMtPmJhc2UuZGV2KTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUgPQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxf
YXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gQEAgLTQ1ODYsNyArNDU4
Nyw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4gLcKgwqDC
oMKgwqDCoMKgaWYgKEhBU19JUFMoZGV2X3ByaXYpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKEhB
U19JUFMoZGlzcGxheSkpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9
IGhzd19pcHNfY29tcHV0ZV9jb25maWcoc3RhdGUsIGNydGMpOwo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgKPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+IGluZGV4IDYyNzljNmM2ZTgz
MS4uYjg1YjFkM2ZmNzA4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+IEBAIC0xNjQsNyArMTY0LDcgQEAgc3RydWN0
IGludGVsX2Rpc3BsYXlfcGxhdGZvcm1zIHsKPiDCoCNkZWZpbmUgSEFTX0dNQ0goaTkxNSnCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfSU5GTyhpOTE1KS0+aGFzX2dt
Y2gpCj4gwqAjZGVmaW5lIEhBU19IV19TQUdWX1dNKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMyAmJiAhSVNfREdGWChpOTE1KSkKPiDCoCNkZWZpbmUg
SEFTX0lQQyhpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZ
X0lORk8oaTkxNSktPmhhc19pcGMpCj4gLSNkZWZpbmUgSEFTX0lQUyhpOTE1KcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChJU19IQVNXRUxMX1VMVChpOTE1KSB8fCBJU19CUk9B
RFdFTEwoaTkxNSkpCj4gKyNkZWZpbmUgSEFTX0lQUyhfX2Rpc3BsYXkpwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAoKF9fZGlzcGxheSktPnBsYXRmb3JtLmhhc3dlbGxfdWx0IHx8IChfX2Rpc3Bs
YXkpLQo+ID5wbGF0Zm9ybS5icm9hZHdlbGwpCj4gwqAjZGVmaW5lIEhBU19MUlIoaTkxNSnCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIp
Cj4gwqAjZGVmaW5lIEhBU19MU1BDT04oaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAoSVNfRElTUExBWV9WRVIoaTkxNSwgOSwgMTApKQo+IMKgI2RlZmluZSBIQVNfTUJVU19KT0lO
SU5HKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgKElTX0FMREVSTEFLRV9QKGk5MTUpIHx8IERJU1BM
QVlfVkVSKGk5MTUpID49IDE0KQoK
