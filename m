Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9161694A574
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 12:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CCDA10E490;
	Wed,  7 Aug 2024 10:28:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVRUmYHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D7210E490
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 10:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723026514; x=1754562514;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ChCSdcBMohfYPlaoYEdii7d0TTaCtAvM0g5ltYX8WmY=;
 b=FVRUmYHC9fKDtpNT5RGcFanVvJYAd8WQ4kb3z9CxqXD3XDRUbIf9CzPJ
 1kN/olkZbNO+kSlx0Nnr8QeBLcpMrg7TBtyJH4iwJrYXEXAIguuN/IJNf
 i79wkDNeJcQ6O/5RH0HdF3Dzykj9TYOu9DjxqYV2+FFvhowf2VvZi4er0
 MrcqzSuFmksZBWg3Fg4rhaBEtwbfG4CzoMH67B5WdoNW4tboBlpG4k3J4
 HaMTv8uk4BmgOqO2xXNlCIJYD4roVZQD8EFEH04tb3dd+pQN6pxwaDLIJ
 ygdqlYbwJT+gkPglx6amJNS1kIiulNV3+Gg6Y/ZDHMZZnDZ3S3ZFGqAjv Q==;
X-CSE-ConnectionGUID: 1EVnR6ZiQrGnEy3cPvbZFA==
X-CSE-MsgGUID: FBoGii00TVisFDFa6YzDlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20667881"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="20667881"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 03:28:34 -0700
X-CSE-ConnectionGUID: piZBUxx5SxSV05eKou0UeQ==
X-CSE-MsgGUID: IxAuYWijSICvElqlHtZoqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="61456381"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 03:28:33 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 03:28:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 03:28:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 03:28:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U5tDqTivVzm2ovmuHo/mwe0VdZK0iQSyZWpgbSe1TjYVQD+HboKaR66JeFiBYjjsqbQtQiZI0XOahEeRNncHKn5efLY+HV6WRGyYk5AdlBXf3s0pEfHuKx6JnRMMSlht2qrWzdEKx5Aa89vQv85ncPkPFykbCuWZFvd1yb4jbSjeSbMHddpnkClcLeaUNt3K5gRanYb1GDt4xfASp9wl7q4/GsmkbbfyYM/PftQix1EsauazwPPGJ+vMqPtFs0O4U02qsjkaBIkjST0Bh4gHOTniAD4zGPy2O96DaH0y3GfxAoffv/4FDfE/3F9eq5dM6F7rw72PRQ4rJGdF+69YlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChCSdcBMohfYPlaoYEdii7d0TTaCtAvM0g5ltYX8WmY=;
 b=yKYi+Nxak1IYz3GoO/otK2paL6SHGYvyPMvmXYllD+rEG7sb3eigSuuqQ4ERl/CTDDua6yv01ZIVdasMvlRKpArnBGiRATNxojXJQJPIOc4JS0ukM+P0uRhPiIbrQkEFLOOPW5wfV08wTyisi64CmDvDNudI4dI+bPV7h+B1vg1DT5Tichf3tYBynxYjgur3GwLXUKbL1tQSnkRTz5JQSsNolYMocfj4xOgRsB//aBMXzqzhEjNjDR0IVRkuqu1Jgs8d/rKxiiw/g3TTE2B1ONMa9331j0r+md+aZU2Bj+JVQXkBf0wJC+zdHXVgItANG1DHkvgFHsJXcHwe/E6/7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Wed, 7 Aug
 2024 10:28:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7828.029; Wed, 7 Aug 2024
 10:28:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCH 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHazsLzsFIXhMxKUkuPn+Bjm9M4YbIbu7oAgAAOnzA=
Date: Wed, 7 Aug 2024 10:28:31 +0000
Message-ID: <IA0PR11MB73076C8B784D728BB90D1F60BAB82@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-2-arun.r.murthy@intel.com> <8734ng65mj.fsf@intel.com>
In-Reply-To: <8734ng65mj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB7958:EE_
x-ms-office365-filtering-correlation-id: 2180c5ae-fe37-4fcb-e1e4-08dcb6cbaf14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aWt0SlFwM2dqQk1pZ0l2VXVzL2FreVRvUS9PUHpGOFJYUHZ5U2x3NWhyZ1pN?=
 =?utf-8?B?UWZ2NnhuaUI4S1lvUUFVWVJxb3Q4bHpZSUN2c01wRU1IQUtwL2hBQ3pKazBx?=
 =?utf-8?B?M2xmL2s5eXlQM1FTRHV5SkNJZWNNaUhhZzU5Y0w4M0QxY1NOcERVWVNRMEQr?=
 =?utf-8?B?c0x1K2ViZzAvcmcrY3JMVjJqVDU2SjRWRGpwblYxRDdNSnhQU2w1ekljN2lp?=
 =?utf-8?B?S1BpTGR5d3NYUmVmcFpZcFhUakkxWU96dk8vK3Y2ZzRtMjlmR1ROWnd6Qi9n?=
 =?utf-8?B?cVYxMHU2SW5IaWVvWmlLamsySmZHWG51OUFqMk83eXlUd2hDQ0NEUjlkYlpz?=
 =?utf-8?B?ZjlKTXFqVnlCMy9PalY0YWFEcnBxTHNGRUtoRkpPL3lkQjRxVEN5NzExR1JK?=
 =?utf-8?B?dTNZMlRTaEJFNml0VUxtYlNNQ1g3dzNYelB1UmQ2U0tjUWRYS2NxUkw5b2Zw?=
 =?utf-8?B?aWV1eEdBYnJNckRoZU9DZ0JKb2FRcGg3eXhxZUt6a2EzaVlnL2dmS3FOOENW?=
 =?utf-8?B?Q0RWVXRxOEl5TG9OK1ZoN29YaWc0TC83emY5OGVVOWMxTTFwT3JSTFFEcWtK?=
 =?utf-8?B?YTNRMEFpMEVYbmRYOEhua1ZzeGRMZkR2bldlVWVCcUFYMmpDZ00rNldEbWYx?=
 =?utf-8?B?bFZJTmp3emt6VWRLTm9YOXFiSVNSVUxZTklTbGFQQ3FDcEF1ZkVzQkQ3K29Q?=
 =?utf-8?B?QWozQVZlcy9sWnlhNFAzZ1luNXJIYlUybHdEcnZXclJ0VjJ2S05ZMmsvMVZD?=
 =?utf-8?B?N0h4QXFJLy80S2g4RlYxUjluRFFPWGFPaGtTMXRvWGszNURLVE9uK21vUkJB?=
 =?utf-8?B?TmpLS1pWVmtGMEdZMHEzQ0pwODVRbmc4azRsRWJYeGkwUGtOTCtwUGwvZlZn?=
 =?utf-8?B?YzkxT01FbVZCNkdtZGVNWmNQeU5sU2dJSnkzblMzdWJ4VHZHc2RMQUd5K01p?=
 =?utf-8?B?VC9RZGwyZEx1ZU5vLzlSSnhvdElZK2RXSDcybWdadDUyV0lJNnJpcStVSWxk?=
 =?utf-8?B?QStGWiswamFjR0dHVThyOEhnV0tPWWN3Y05kc3haQVRaak05eTArN1dlSTAy?=
 =?utf-8?B?dW5BT1h1NG8zZXlrZUZ2WUtyakJqZ0JXTkkyQklXOXE0NjRRbkJIeVVkWkVs?=
 =?utf-8?B?U09UR1pIYWhJdjZRcHZPaVNERjBFSHdLNGpYV3pOTTk0NVJ0TlZFcUpMWnZ6?=
 =?utf-8?B?M3lhVSs1bmRzYUZWL0xUV1F1WlpRQ3Rua2N1VTV3VHA5OVVaN0pYSk11ajdB?=
 =?utf-8?B?NkpiVG9nSUtFekhSVEdxeXZUUWl5R2U4M0Z2djVWNCtTbGR4ZE8zSDFkaWJX?=
 =?utf-8?B?UzBFWHprTyt3aEgwelliTk1aUitySXJ4V2pnNmkvcVZqUnZJWk54Z2dYdi82?=
 =?utf-8?B?blV4SjBwajZXeFNIY2podkxDWFRCcldLNFhQZDJzVkVna0RHZVkxbncrenhQ?=
 =?utf-8?B?WUlyQXZYb09oOFRFRG1hTGpkZTNscHYrT3hsQ211SGpjanVaSUNjc2k5cWVX?=
 =?utf-8?B?a1hORjQ1WHJ4WkNMNklXZlc4cXVQa3h5K3hhZnFLTW56V2loOXFDNS9hOHFP?=
 =?utf-8?B?SlN2cTRXbytKQmp0M1NkQTdidWZzK2xYeTZRdEhlRUlHK1pUUXp5cG93Qnds?=
 =?utf-8?B?SHBjOWRiUU5La29NbkFpR1l1L0xUQU9ickNhOW1lMnRjRUxsZXhLQ0RNRzRr?=
 =?utf-8?B?ZkpRc1pSNFlhZnZIeGdWemRwYWd2WHJnR3FGWXdiZXhtQlBTS1Z0eGptcHBR?=
 =?utf-8?B?MjluK3NKT1RzenBqYWZPcDdYY05tTWFzTTdOSVJGdDg1Z0lBTWthQ1pKSXRF?=
 =?utf-8?B?eEl3SHZnaDZhQWdIVHFXbUxnNzFoTU5nNTFVWU8xNTZOTE5Da2hMbUY5WXJV?=
 =?utf-8?B?djVIK1V1ZWw5WVVUM1k0MnhiTE5XbWFVdS9IUWk1aXBnT0E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VFFQVDJMMWlUR0ROS2pwWUxqYVg4eG5kNENiZEY3N2xad2Y3NmxVRVR4U3NF?=
 =?utf-8?B?SllFZnQzdHRwcjhSSlRCK0s1NmJvN0N5bW16UWE0b2JMMDJYNzlLL1FkVmVC?=
 =?utf-8?B?aG0wNmgrcjNmTitjWjBkWFljWDg3aDBEZXE1cHEvMkJ0T1M0R3hqQ0pCaUox?=
 =?utf-8?B?Lyt2TmdjWkVZKzkwQVlYdGtEM3kwRzM2SGdIWEpxNVQrMzNxakxaYmN5cHFM?=
 =?utf-8?B?YzJueUxLSnhLdk1hUEFLVzlpenB4eDZhVVZRZjQwTFVzbi83L0pwWksvL0lX?=
 =?utf-8?B?dEgrZE9MT2JjSnJLRExYd3JhcHV1d0ZlTlZzWHhreElUSWJOTVZQcUVHcWVR?=
 =?utf-8?B?VkFDQWhzNFB6UVMwWlhxaVdYU0tFSng3R3VkWlNwV3Jjb2tLWGhpL0IvaUg4?=
 =?utf-8?B?WG1Rd0lUb3ZFV1U1YjQvS2VocDhTNlpJVE12TTFYb01MaXpNTHhsTkJ6Wkxr?=
 =?utf-8?B?WnhXelg0VW5RbkpqcGtpaWdKY3YxNTZPWUMyU0paTVpTTFZ1TExDZGp0V1FG?=
 =?utf-8?B?QUNETUpQemZHdEI1NW1qdzJmbXZ6Q0VEQU1NT2NnSlhxVXlCcG1VMEJoczh3?=
 =?utf-8?B?TVQvSWpNWUJIV1BCWHpkN2pZSFVoamxjMmNSRXFBRjFRc1MrUTJIUjJyK0cw?=
 =?utf-8?B?a2ZTTXV3VHNVb3EwOUpISXl2MVpMSkF5OENkb3hIUXJPWktmNjR6RUdZR2NF?=
 =?utf-8?B?a1d3dHZGR3N0MXFNV3VqV2VLZzRNSHd1ZlRIVjRLSWJXY2NTYm1HdWh0bVJR?=
 =?utf-8?B?cnBZeUpFanFKTklMMWpkVklOSys4MU5WME9xUTBnaXRzZ0VXUkZpVUh3am1X?=
 =?utf-8?B?WVFoSytSdU5WeTAvZkdoOC8wVGVoWXhNMHNHdzVwRm1ETUdNMGZ6RkZBaG9O?=
 =?utf-8?B?Tmh0RDJaelJKanJQcXJrQlF2MGFJU3luQ1dFSi81SjMveEJMaGNDSFRRN1Y2?=
 =?utf-8?B?TjlScGFLSm84RC9mZ29EbCtaZXhoVEZUeTRidlBPWFhiVmR5MnRjUWdnMGg1?=
 =?utf-8?B?dU9iWnl3WWYvMDRJZHRWdnNsTDRyNE03MjVjVDhmc3RyeVRTMC9sNEdwRldy?=
 =?utf-8?B?NTMyanUrNFI5OWUyekZPUkVCQUxueFZJN2VtVlJmczd3WHNETHlhWUxWb0x5?=
 =?utf-8?B?bWhWUGZDdHFnWmxFQ3Y3QWlwclVYbjYxN2hVUGRqem9yN0FrZTdoRCs1MGU1?=
 =?utf-8?B?TzBXdDJCZk8rT3BJMkFWNXR2alhobUptZFIreGQ5TkNid2lqa1lIL0lMU05V?=
 =?utf-8?B?WU5lOEZyOXFTN3ZDNnZNaGZOOGVnZGkzVFVKcTRMclhSZWFYN2g0WTR1WFN5?=
 =?utf-8?B?QjZhS3BhQVo5dUFzeEppdDF3OFNDb0RudzlLWjR2cXBITnlZbnhVNnFENjM2?=
 =?utf-8?B?UENwelBncWZTaDYweWJ3WWt1N0xrS2lqd2doanVRWWxyY09oY2VETVVadFgw?=
 =?utf-8?B?aVBOaHcwRVdtdmwwZ2NiRGxqcGg2SjdyODlYVFJUVDJLODZZV0dvV1g4eVoy?=
 =?utf-8?B?ZlVIUExaTWgySi9PVmV1VlhzNnJadUsvRmpMTFRrWjFxT1BYUUVvMWQyeW96?=
 =?utf-8?B?U01pemJtR1RIRStPT2hlRDVoYUFGVGI4UDczUWNtVDNhdjRzOVJVeHpNaHhs?=
 =?utf-8?B?NGY3SFl4b3VGVVdrV2dPWlZpWngvUndaajFtQ0V0RkMrbGU4VE5xRGZnSG9B?=
 =?utf-8?B?eHhTRTFsWlc4ZGY3WlVwTjQ2cHpGZnJpZlRxL2hqTHlZZHpldzBrK0dpR2sx?=
 =?utf-8?B?cTRTVnBsS25tOGhCUEZwUmt4MGRRcmdGMnFMVlZKMXg2b25LQUNEZFJjdVVH?=
 =?utf-8?B?YzZlMTVUYjBBcFRHUDdXa0t3cmdESW9sZDI3VHhkaUdHYW0rNmhNdUpoSE51?=
 =?utf-8?B?TnpnSnRqd1hicDVTVnpqR1ZWUTJoQ1h4N3BwUmZndzA2bU95ZkU4MTltNDgr?=
 =?utf-8?B?bjJQVVV1SDJSVU5EZmxIZUExYUpNSk9kdGlWNmIzSCszbkc3c0tMcEQrTi9N?=
 =?utf-8?B?a0FXM3VVRy9QVFRneHlHdlVmeEdPa3Jhdk0rYmdIbTBMUzVmRFZjRWM4ZEpt?=
 =?utf-8?B?U0Y0a2RXVVY0QXJ4V2hNeHQvZzBMeTZrMHkxcWNLaG1NYlBUaHQ3NkJvMHg0?=
 =?utf-8?B?ZFVvRWJ4aTRqcWQ0bTdhKzR5TUx6M29maTQralZUNW1ZTGE5SXBwQ3haNzgv?=
 =?utf-8?Q?qubwMXXAuVsyP70Ju+9OAzgkSXhyrK4on8TwTkVZRWsf?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2180c5ae-fe37-4fcb-e1e4-08dcb6cbaf14
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2024 10:28:31.1530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dy5eK7oE4npimhcgzrJ3V80VqFmlMY4ztMqyc+3W4F79JJhU353cxxcsfZTH7a2odVw+UE8l7KbZorT5jScIXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7958
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

PiA+ICtzdGF0aWMgaW50IGludGVsX2hpc3RvZ3JhbV9lbmFibGUoc3RydWN0IGludGVsX2NydGMg
KmludGVsX2NydGMpIHsNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9f
aTkxNShpbnRlbF9jcnRjLT5iYXNlLmRldik7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfaGlzdG9ncmFt
ICpoaXN0b2dyYW0gPSBpbnRlbF9jcnRjLT5oaXN0b2dyYW07DQo+ID4gKwlpbnQgcGlwZSA9IGlu
dGVsX2NydGMtPnBpcGU7DQo+ID4gKwl1NjQgcmVzOw0KPiA+ICsJdTMyIGdiYW5kdGhyZXNob2xk
Ow0KPiA+ICsNCj4gPiArCWlmICghaGlzdG9ncmFtLT5jYW5fZW5hYmxlKSB7DQo+IA0KPiBpbnRl
bF9jcnRjLT5oaXN0b2dyYW0gbWF5IGJlIE5VTEwuIERpdHRvIGV2ZXJ5d2hlcmUuDQo+IA0KPiA+
ICsJCWRybV9lcnIoJmk5MTUtPmRybSwNCj4gPiArCQkJIkhpc3RvZ3JhbSBub3Qgc3VwcG9ydGVk
LCBjb21wdXRlIGNvbmZpZyBmYWlsZWRcbiIpOw0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiAN
Cj4gU2VlbXMgaWZmeSB0byBsb2cgdGhhdCBhcyBhbiBlcnJvci4NCj4gDQo+ID4gKwl9DQo+ID4g
Kw0KPiA+ICsJaWYgKGhpc3RvZ3JhbS0+ZW5hYmxlKQ0KPiA+ICsJCXJldHVybiAwOw0KPiA+ICsN
Cj4gPiArCS8qIFBpcGUgRGl0aGVyaW5nIHNob3VsZCBiZSBlbmFibGVkIHdpdGggR0xPQkFMX0hJ
U1QgKi8NCj4gPiArCWludGVsX2hpc3RvZ3JhbV9lbmFibGVfZGl0aGVyaW5nKGk5MTUsIHBpcGUp
Ow0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBlbmFibGUgRFBTVF9DVEwgSGlzdG9ncmFtIG1v
ZGUNCj4gPiArCSAqIENsZWFyIERQU1RfQ1RMIEJpbiBSZWcgZnVuY3Rpb24gc2VsZWN0IHRvIFRD
DQo+ID4gKwkgKi8NCj4gPiArCWludGVsX2RlX3JtdyhpOTE1LCBEUFNUX0NUTChwaXBlKSwNCj4g
PiArCQkgICAgIERQU1RfQ1RMX0JJTl9SRUdfRlVOQ19TRUwgfCBEUFNUX0NUTF9JRV9ISVNUX0VO
IHwNCj4gPiArCQkgICAgIERQU1RfQ1RMX0hJU1RfTU9ERSB8DQo+IERQU1RfQ1RMX0lFX1RBQkxF
X1ZBTFVFX0ZPUk1BVCwNCj4gPiArCQkgICAgIERQU1RfQ1RMX0JJTl9SRUdfRlVOQ19UQyB8IERQ
U1RfQ1RMX0lFX0hJU1RfRU4gfA0KPiA+ICsJCSAgICAgRFBTVF9DVExfSElTVF9NT0RFX0hTViB8
DQo+ID4gKwkJICAgICBEUFNUX0NUTF9JRV9UQUJMRV9WQUxVRV9GT1JNQVRfMUlOVF85RlJBQyk7
DQo+ID4gKw0KPiA+ICsJLyogUmUtVmlzaXQ6IGNoZWNrIGlmIHdhaXQgZm9yIG9uZSB2Ymxhbmsg
aXMgcmVxdWlyZWQgKi8NCj4gPiArCWRybV9jcnRjX3dhaXRfb25lX3ZibGFuaygmaW50ZWxfY3J0
Yy0+YmFzZSk7DQo+ID4gKw0KPiA+ICsJLyogVE9ETzogb25lIHRpbWUgcHJvZ3JhbW1pbmc6IFBy
b2dyYW0gR3VhcmRCYW5kIFRocmVzaG9sZCAqLw0KPiA+ICsJcmVzID0gKGludGVsX2NydGMtPmNv
bmZpZy0+aHcuYWRqdXN0ZWRfbW9kZS52dG90YWwgKg0KPiA+ICsJCQkJaW50ZWxfY3J0Yy0+Y29u
ZmlnLT5ody5hZGp1c3RlZF9tb2RlLmh0b3RhbCk7DQo+ID4gKwlnYmFuZHRocmVzaG9sZCA9IChy
ZXMgKg0KPiAJSElTVE9HUkFNX0dVQVJEQkFORF9USFJFU0hPTERfREVGQVVMVCkgLw0KPiA+ICsN
Cj4gCUhJU1RPR1JBTV9HVUFSREJBTkRfUFJFQ0lTSU9OX0ZBQ1RPUjsNCj4gPiArDQo+ID4gKwkv
KiBFbmFibGUgaGlzdG9ncmFtIGludGVycnVwdCBtb2RlICovDQo+ID4gKwlpbnRlbF9kZV9ybXco
aTkxNSwgRFBTVF9HVUFSRChwaXBlKSwNCj4gPiArCQkgICAgIERQU1RfR1VBUkRfVEhSRVNIT0xE
X0dCX01BU0sgfA0KPiA+ICsJCSAgICAgRFBTVF9HVUFSRF9JTlRFUlJVUFRfREVMQVlfTUFTSyB8
DQo+IERQU1RfR1VBUkRfSElTVF9JTlRfRU4sDQo+ID4gKwkJICAgICBEUFNUX0dVQVJEX1RIUkVT
SE9MRF9HQihnYmFuZHRocmVzaG9sZCkgfA0KPiA+ICsNCj4gRFBTVF9HVUFSRF9JTlRFUlJVUFRf
REVMQVkoSElTVE9HUkFNX0RFRkFVTFRfR1VBUkRCQU5EX0RFTEFZKQ0KPiB8DQo+ID4gKwkJICAg
ICBEUFNUX0dVQVJEX0hJU1RfSU5UX0VOKTsNCj4gPiArDQo+ID4gKwkvKiBDbGVhciBwZW5kaW5n
IGludGVycnVwdHMgaGFzIHRvIGJlIGRvbmUgb24gc2VwYXJhdGUgd3JpdGUgKi8NCj4gPiArCWlu
dGVsX2RlX3JtdyhpOTE1LCBEUFNUX0dVQVJEKHBpcGUpLA0KPiA+ICsJCSAgICAgRFBTVF9HVUFS
RF9ISVNUX0VWRU5UX1NUQVRVUywgMSk7DQo+ID4gKw0KPiA+ICsJaGlzdG9ncmFtLT5lbmFibGUg
PSB0cnVlOw0KPiANCj4gV2hhdCBkbyB5b3UgbmVlZCB0aGlzIGZvcj8NCj4gDQo+IENvbXB1dGUg
Y29uZmlnIHNob3VsZCBiZSB1c2VkIHRvIGRlY2lkZSB3aGF0IHRvIGRvLg0KPiANCj4gT2xkIGFu
ZCBuZXcgc3RhdGUgc2hvdWxkIGJlIHVzZWQgdG8gY2hlY2sgd2hldGhlciBpdCdzIGFscmVhZHkg
ZW5hYmxlZC4NCg0KVGhpcyBpcyB1c2VkIHdoaWxlIHJlYWRpbmcgaGlzdG9ncmFtIGFuZCB3cml0
aW5nIElFVCB2YWx1ZXMuDQpJbiBjYXNlIG9mIGEgc3B1cmlvdXMgaGlzdG9ncmFtIG9yIGluIGNh
c2Ugb2Ygd3JpdGluZyBJRVQgd2hlbiBoaXN0b2dyYW0NCmlzIG5vdCBlbmFibGVkLg0KDQpXaWxs
IHdvcmsgb24gdGhlIHJlbWFpbmluZyBjb21tZW50cy4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0K
QXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
