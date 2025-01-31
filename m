Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65580A23D80
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C8010E1CE;
	Fri, 31 Jan 2025 12:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZxSuqV7B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67C510E1CE;
 Fri, 31 Jan 2025 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738325100; x=1769861100;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PYOvuP69Tn+O0df/pCGAAFG5lCsFsc8H2Xy0DWvY+PA=;
 b=ZxSuqV7B4E/BoXZ92i+5ScGLCsJ+99xrEdpU5KyEspI2m0fTnP265Hj7
 lFT4qa+LwRgEd9TfO3VQ2Re58Jc6uPLtv88XfeKCZ+egsA8YhPtOso5f9
 MIYj3yc6dySQaWSGU59BwFcb6Jy9FNXvi+lWbevUYii7cufuK7qd4ODQZ
 Bh4SesuKOZwNCLsnP5lYnUhxgVL8xtqvoqEcVZqHajJVSH6TrvwVqn2Ym
 TaalQJNO4xPO0CZKwr6G6MQvSkkQrBVqSXYwO+W0hUyVCtZXHHtgVih6B
 b+qCyO6PtobAHBB1jXaKW1Q7wyzdJ1f/96AQjUxZjkqRjwCQ7STnOQ5tE A==;
X-CSE-ConnectionGUID: SJGKxEL0SgGAMXWUYJGQgA==
X-CSE-MsgGUID: yE9vhD8hTwaHbsJNom71Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="49489172"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="49489172"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:05:00 -0800
X-CSE-ConnectionGUID: f0Jqk4U3QlWLET3JjSVGYQ==
X-CSE-MsgGUID: t+Rjn5B8QsmsKA36bq/B+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="114606903"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 04:05:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 04:04:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 04:04:58 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 04:04:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jDvjoQYgfQd0EUcQN/KfcsYTwUBF4pochkom/EuZuamIY+rk1TE6XI9v0ipTaArSg86NMC8z5paael5RmLQlzlSZXBz8MaIGDnopkBdlsi/+aOJhAWneqvMVuYfBEqT7q27ozABuoiFFbSdmEqVjHzBVCVKiwo/3IPNICQQHsTWsIoFiOfmz5hvTgH0+Tl+pcAnTCQTZGn+QmsZ1d+x8/tiuEVhbFKjDwKoFmIP7gSOheeoct6Vb5reYuxnJeBnwrG8aflBvCyDoNr8ucW+AH9zfx75seKTkuqgnUTFqhkoVrtNSPE9uSKvHdxv2wMa711JYO2zOxxCtcYbvG92jiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYOvuP69Tn+O0df/pCGAAFG5lCsFsc8H2Xy0DWvY+PA=;
 b=af02FzvJF0h2iFRGUuNkx7E+3GrEJToRfL2xQxTpjb8DyufG3G4pOWplqjOQJUH07hzwO9BGwOM/7S3nKZE64Pu993o32cBG3u93naGfC3FO6D4Z3lCoobPUhXW01iqPkYANCDM/zAKfAwdEq+YzLkgGe3UVX+wwTD5dsbBth3wkq7wXfZHb+awwtGauSBB831GLMqRV26i08FdKsOM6fVtroDrrLp8s4Mn/wj1Kn6qlJ9ol1orudvJuKCIfHZV602tT3n3GMIAC8T6JEbL/kviVSfwxSwt44kAqc1Csgmz062lAVN2UNbESBIPZWz2VKX0Vvjf0OZ9go5wkRppCVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by SJ2PR11MB7672.namprd11.prod.outlook.com (2603:10b6:a03:4cd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Fri, 31 Jan
 2025 12:04:29 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%6]) with mapi id 15.20.8398.017; Fri, 31 Jan 2025
 12:04:29 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvc2Vs?=
 =?utf-8?B?ZnRlc3RzOiBhdm9pZCB1c2luZyB1bmluaXRpYWxpemVkIGNvbnRleHQgKHJl?=
 =?utf-8?Q?v3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9zZWxmdGVz?=
 =?utf-8?Q?ts:_avoid_using_uninitialized_context_(rev3)?=
Thread-Index: AQHbcwRPyHrSeMgQcE63yWd9owwO3rMvPZOAgAGMypA=
Date: Fri, 31 Jan 2025 12:04:29 +0000
Message-ID: <PH8PR11MB67530A9A30928684DC503650F2E82@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <iuaonpjc3rywmvhna6umjlvzilocn2uqsrxfxfob24e2taocbi@lkaivvfp4777>
 <173823400465.2815826.2611967640478376490@b555e5b46a47>
 <lqjzu6uigoihbvk45wztwh4k67so64zd3jt5ytwstzhjbjanbi@gh2jgbetis75>
In-Reply-To: <lqjzu6uigoihbvk45wztwh4k67so64zd3jt5ytwstzhjbjanbi@gh2jgbetis75>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|SJ2PR11MB7672:EE_
x-ms-office365-filtering-correlation-id: 90dcdc0e-28c5-4610-a5a8-08dd41ef6a54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|13003099007|38070700018|7053199007;
x-microsoft-antispam-message-info: =?utf-8?B?VDRGaWNMRFhKSEtLUmlKNlRibG0yQzVadUtJVm9vMjBvWTR2ZTNMZkttdlps?=
 =?utf-8?B?SVlaT2RSMVdLQm1yUWF4KzZDQkhIMkpuWmVMbHBsU0p3ZlZ6YytLb1pHN2NK?=
 =?utf-8?B?OE9TR2FxQ2RrZFEwRHh4SkQvcUFzSmphQnFTVjlrVFdDaENIOUJMYXVQR0VE?=
 =?utf-8?B?b25zRk9EcjkzYUMxU01BdkR6YVlFY0Zib3N5bjVva1MrUlE2YXZDRUhCZlVS?=
 =?utf-8?B?V3FlY0JGUkNoSkNuTHVGZmI4eE52ZEpZTnhtUWRKOWdGNVBwTmx1c1hoSUpG?=
 =?utf-8?B?bXFvQ3VQY0FJZndTOG5vMXhhMnBKSnp4aU5kN3RBMEJqaUJBVFJScDgrK0ZT?=
 =?utf-8?B?MG85b00yVzBsNTR0cUF5QkpjRTA1QTU0eFl5WkdTOEpoUnhHa2VuZVpia0lK?=
 =?utf-8?B?dG9FNTQ3TEZ4R0p6NENpMXhhN1NHY0M4cGVQQkJXZ2hVQlJMZmE1T2MvSzh4?=
 =?utf-8?B?Ymw4MjQrNDh3eHVjdWRXZk1NVUlqY2pibGtZNXYvNDFlVklCU0V5MlFXNFZM?=
 =?utf-8?B?ZnBBS0VxWEJtM3hkcWNzZDlNZHdPYVZXTGlVT25lTktWRlE4T1dGLzZTWlFJ?=
 =?utf-8?B?UGs5STg4cldOY21neTZLU0pob29PMG9xSE1XSGU4SFcwNmgzdkNsNTR1MW04?=
 =?utf-8?B?aitJZGZCWWZ6Z0hQMUpZZzZKNk1DRVlLd2crZENONi8zZ010SHhwSXlyek5I?=
 =?utf-8?B?aU5QY3VZVS9hTmN1N1BPM29LYmpRZXl2N0hmWVhYUEVaOVBUV2pXNDRqeEZx?=
 =?utf-8?B?Y202clJvTklJRm5EMDVSMUptTGhPM1RXZUJYaFhURE1JREpLRTV2TUFLemhE?=
 =?utf-8?B?OWF6b3lpK2szbnlMb0Z1M3dUUEozcWM0Sk4rU3AxRGxHeWljaGFtdlhpMWhx?=
 =?utf-8?B?Q0h4OG1Ha1FodlZnNG1QOC91T1B1dHNxV2JwRVlNMkprRXByUEN3N0ZxcDVL?=
 =?utf-8?B?RjVYZDZtc21RQlJlTFZkR2M2SjdacWl3ZGZaRUM1bmpJK3pkUUJ2L2lTT1Ew?=
 =?utf-8?B?MEZ5b0RucE4xa0VydEczUjZERkhvK3VRdDNISGYvVHd0bFVsNWd6VGM5Z21H?=
 =?utf-8?B?eVgvRW81UE9wVVgrK3crYUh4L24xS3dINVlMWVl4OFloMWt6bUxRdnE3WFNa?=
 =?utf-8?B?TXB6TXV0dHpTcFpzR1hHQWVORWREZSt0RDFhdHRQNzZ3VVNUY0JxUEM1WEpH?=
 =?utf-8?B?QzhXK2YyL29KLzdtNVU2MkV4aFhMTXVVell0Mm1kK25PdytSQUZuNEZIbUYv?=
 =?utf-8?B?dTB1a29OemZwRVpibFhjaDZKdDZCdTFTMUdqVTFjWUFWdVgrTFRSSXZZTDgz?=
 =?utf-8?B?alQ5R3U3aXUyUlFTTGVsSmFWWjNEcFNTNG9vK29CK01DTi9RbWwvbGdyS0xj?=
 =?utf-8?B?clR0b1RWV3JkR2FTT3NhNmFKVzZlWXNtenBzdlZIbXhoc0wwdUE2My9qbEU5?=
 =?utf-8?B?Y2RzM0hCa1pnYUo4bU5hcG1xUUx3cmphMDRIUVN1cWI1ajEyelRZSmVIQXRj?=
 =?utf-8?B?MXRDSzR4WUR4KzFCREl5QmtOQ0lGSGlhdnNMZGtHeFJYc0E2SmUwV2tORDdG?=
 =?utf-8?B?RTZHbFpnb0dVMXNDR1Jkb0Y5WkIxbHRXYU5oc1dFVTAxMW9HSG9abmYvOG9t?=
 =?utf-8?B?STJSejMyYm5tWFZVSkYyRHAzd3BKcGRMRjlRUUlsaFVpeGhCaytkTjRKOUV2?=
 =?utf-8?B?Zm5yTG1vNVkxYWpTZ3A2NWFtZzZPd3NaRkw1MUFkMG9vc0ZtWkFOai9ESmZa?=
 =?utf-8?B?VUQ1eVN6eGhRaFZSYk5WR2xkWXFKZXRDNzRiWWhMaXRWZDhoUHprRjYyM3ds?=
 =?utf-8?B?aTdLY1VNWDNKb0lVTENXRDdZVXhhRTlCK2JEZTJNZkJUcmZ6S0twWmlKQ043?=
 =?utf-8?Q?XVbNomv4H/KL/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(13003099007)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2dmUk9ZNEd5R25FRGpHZTkvTHdENDFKdjNvNUpISXBPd0xmWDdGQ1RHTmVt?=
 =?utf-8?B?Y1NySjNtQkRCK0xFOFlickcwWHJXR2JYNnhydXljVVpSZ1plOXc1UTZFN0NU?=
 =?utf-8?B?bE94bFZkZ01ZbUZhOHdidE5hNUhGT0hJQ2dmVmx2aEFzZkRaeThuOERFRk00?=
 =?utf-8?B?Y0UybVJiR3FoS09pN3E2L0U5VEZFL0NXYjFkWE5OcVR5ZThZaTloeU1hdzdN?=
 =?utf-8?B?ZDZSSFFOd2ZBOVoxdk14anM1Z0NFWVZlckRSVlBnNk8yVTBtdkttaTh5SGk0?=
 =?utf-8?B?WVlsZXJORHdNZ0NRWCtkTUlKcSt4Sjh6bGtYalN2UXJjNlhFdGNScXBrd1Iw?=
 =?utf-8?B?SjIwTmxaQ0dwV3RRaEZFQnlXZ2dxOXVTZ2hNZ0p1eEpVclROeXphN2tvdUow?=
 =?utf-8?B?SlVkMC8vN1RBWXdzUTFROC80eUx2eHFGYjRSSlJlZW0xUjdoay9CVXRQOTBy?=
 =?utf-8?B?NktnM3hNZlcva05Ucm9KcFJXb1pZTHdYMHBVWm9kQWNhUlY5Rlp6RmppYUhK?=
 =?utf-8?B?MkkzRjd0V0Y1RlFuRnZXVG5BV0cvckVQU1AwQlpFT1hNc3RtTkoxS3RUdHZM?=
 =?utf-8?B?emtwNExIQTVuTWN3WnFUd0FtaDloamFFVmkvZlE5eXNnaG1wblhhNDJURWVX?=
 =?utf-8?B?ZjJjZjZJOE14Sk81QVhXRWluUGkzcU5KR2VhWndERDZYUXc1V1pjK0ZJd0FE?=
 =?utf-8?B?S2hkcEx5Y3BRT3pkelc3c1FIMU05bmlKNWhLOHl5WHNWZGpQZFNRNnEvU01i?=
 =?utf-8?B?aFZUYkN6MS9sbnR5dTZHZzRsOHpZWlMwdDU4YytPbzN5LzIycnc4eWJWSVRS?=
 =?utf-8?B?c0VveEgwLzEybjFjbVJaUUJJalV3S3RvNG45STM2R0ExQWcvSEtOTzU0Vlp0?=
 =?utf-8?B?RDBvZ2lUQzY3eDYyRWRhb3ZvRlBidEhTRXlGeUlPbUxnN0phNUJlN3JyMWxW?=
 =?utf-8?B?Zkd5YkhrVTFaVjNjUTQ1cDZpaytXS3E1c0lTRWtMQTIwWlhvSEtIR1lrR0lT?=
 =?utf-8?B?bTZCS044OUt5QXFpWUw4eUtqK2treWhzQS9QZnU0V0w4ZmJxenRpREh5Snlx?=
 =?utf-8?B?Vk8wb1luTVVCWGpCVitYQks2YXlOL1Vub0xnRG5xVXdkWWpYRmozNURPM0VZ?=
 =?utf-8?B?VmpqSVNSeDNzVGFaLy9NZXdlRkVhQ2dZYXhMZU1YenFtQS9yd09jSk80N0Zz?=
 =?utf-8?B?WWw2RVVNNDJPdmQ1SzBGbmJOdTAxT2RnaEhLRkY4UmVZUmswemRVU3JUUW5s?=
 =?utf-8?B?ekJUZSs1V041NVJ4UjBuNFNCaTEvb3FJaW1odzl3akVPNUxZZkxUb1dLdk5k?=
 =?utf-8?B?Y2hsRVBtMVliRmNvbEVjKy9YakEzM2xlakQ3QnVLOGEwU3hPSUlDelRsays5?=
 =?utf-8?B?dFExQk9YSDEvNTBEWTUyOFMwTFVmdUhwN2s3TDRiMEc1U0NCd01SVzdHazBX?=
 =?utf-8?B?aWdJT094NXRhazZXdDdGK0NFYlBvQ29IT0VBYnE4bVY4VWlVcW8zQnVST3A4?=
 =?utf-8?B?c2FNV1RXMmlEWE96Y2tiSmhBbWdDQ0NPekJLTnpjcCsrU1Zwa1VnZVdRSG1Y?=
 =?utf-8?B?MThDcEErSzhGQ2psL2pCL2FuT1VtUys1OGEySG9ZRHdnOGJKcC9WaFBDSTF3?=
 =?utf-8?B?S2JPdHV2TWdMWUgraTUyVnFzT3pGR1N2SnZFSUR6MVF0VWFRUzUzQnppZWlh?=
 =?utf-8?B?bmhsb2NHTnIrTHZXekdTL09IdjFNa1A5aEFYYlllVlZTR2J4bE85dERqblAx?=
 =?utf-8?B?TjVCeUFwODNhaVNRYlEyQ1h6VXp5QkUzZkQraVQvSTRpMzZNU2lNZ0JUQk5q?=
 =?utf-8?B?cCtXNU9JeHpJQks5NksyckxBRWordDFPTk5jcWdocmpSVnJiaUtwV0k5eVdz?=
 =?utf-8?B?YlZOUDlLNThncUJmZ2kwMWE4Y0lkS0M0WnMra2oyOW95Y0FTSVRZZHlPcDRJ?=
 =?utf-8?B?MDZoV0Z3WUhvVTNMb0Eya011eWhlMk9JeGNTSDhNenpiT1BhQUQ1OHA5K0Nu?=
 =?utf-8?B?ZURMYVZuSU5RMHVFWFRMZkZhN2pyNUhGVE1LWFdiblhLbitFYnFRZ2YrdGpU?=
 =?utf-8?B?QjQxeStzTGtsdldHKythZllIK0NXU3JBOGdqRE1iTUZacEtzS0RsMmF3OEtE?=
 =?utf-8?B?NmF4T2RPcGsxMHZsMlJaUHlaLzNLMmRFbVVOS054eTM2QmVGUlRtOHk5bGg2?=
 =?utf-8?B?WVdtMnp5TkUyS0NlcWdWc2dFK1B3T3FLRkdJZFZ2S2RDcnRZdE5SeUp4Qk9o?=
 =?utf-8?B?VUtZejhXellqaCtibUgrOTE5UDVBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90dcdc0e-28c5-4610-a5a8-08dd41ef6a54
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 12:04:29.2960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: odRpyY2OOMadX+Ci0znBiL5jYjV+nxYL01ZSC77kzp5l9HpCJLnRWbC8iugAyV/9Qy6eT4E1W8mvZMJ8vA7QkrqXPYM+w0Rq2eM1U94/YPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7672
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQzOTkwLyAt
IFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEtyenlzenRvZiBLYXJhcw0KU2VudDogVGh1
cnNkYXksIEphbnVhcnkgMzAsIDIwMjUgNTo1NCBQTQ0KVG86IEk5MTUtY2ktaW5mcmFAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3Vi
amVjdDogUmU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvc2VsZnRlc3Rz
OiBhdm9pZCB1c2luZyB1bmluaXRpYWxpemVkIGNvbnRleHQgKHJldjMpDQoNCkhpIENJIHRlYW0s
DQoNCmJlbG93IGZhaWx1cmVzIGFyZSBub3QgcmVsYXRlZCB0byBteSBwYXRjaC4gQ291bGQgeW91
IHJlLXJlcG9ydD8NCg0KS3J6eXN6dG9mDQoNCj4gU2VyaWVzOiBkcm0vaTkxNS9zZWxmdGVzdHM6
IGF2b2lkIHVzaW5nIHVuaW5pdGlhbGl6ZWQgY29udGV4dCAocmV2MykNCj4gVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0Mzk5MC8NCj4gU3RhdGUgOiBm
YWlsdXJlDQo+IA0KLi4uDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUg
YmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDM5OTB2MzoNCj4gDQo+ICMjIyBJR1QgY2hh
bmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiANCj4gICAq
IGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLXdmX3ZibGFua0BhLWRwMToNCj4gICAgIC0gZmkt
Y2ZsLTgxMDl1OiAgICAgICBbUEFTU11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdICsyIG90aGVyIHRl
c3RzIGRtZXNnLXdhcm4NCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xNjA0MS9maS1jZmwtODEwOXUvaWd0QGttc19mbGlwQGJhc2ljLWZs
aXAtdnMtd2ZfdmJsYW5rQGEtZHAxLmh0bWwNCj4gICAgWzJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM5OTB2My9maS1jZmwtODEwOXUvaWd0
QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtd2ZfdmJsYW5rQGEtZHAxLmh0bWwNCj4gDQo=
