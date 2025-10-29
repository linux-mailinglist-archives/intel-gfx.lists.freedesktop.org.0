Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC81C1B12D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA22910E7B0;
	Wed, 29 Oct 2025 14:06:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvXcm3f6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5980610E7B0;
 Wed, 29 Oct 2025 14:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761746775; x=1793282775;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=PGa3N7g8KN+XqQrRWMv/6i0itMXsFcQYwIxF1LUXLi8=;
 b=IvXcm3f6xw89sR2CRCRq/6ADE2cX4AzjbbNVNMBXFyEoYhz6nasbwBrs
 sT7l2GRYAtI0i+PQ69LxQ6b13Ra6dD56Zfgzmhm3BuRrQZUdetbazjKOT
 Y0gdw8A4CNWdK+bVvAiPhgSTdK3FaQEs/SDvydwgoHQORxz+J4cuBBgDr
 EtQyusOYrpvM0igANLOB+oITSG4Vc97s1eJ3rk50NmO6HcqXSqmpdR9Wl
 /xL5TLEhmgg5yu/koQFm19ZMlXLo+UAlay1HyZI3GukhRFkQEhb+78wMv
 DCCFY+DtHpGsQ2wZT5FDEpIqM8Z7iL/UqA7y8KBdLbF787cunCokeOXsW A==;
X-CSE-ConnectionGUID: VRpRCWhTSBWLBG1P11JFtw==
X-CSE-MsgGUID: mjr+LLI/Sr+0hY6QEh+N4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63772810"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63772810"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:06:15 -0700
X-CSE-ConnectionGUID: TdTouTxxT9yMet20iMFFyg==
X-CSE-MsgGUID: myJke0hEThWT7X1sfqgtZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="185598729"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:06:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 07:06:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 07:06:14 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 07:06:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h0/5nBCFw14lJ+G76xTho16G7GtihUhZf8LP2YWALiyJaJwl+LNRW0V8QIYWFUMwvOOjmPLgfsc5Cg5iUKxP/Jo6g6OOw4ZF+YZto8hm82MlUI4VCAje7cDognjwIQXNfFsU1Y0WJktHnMXomS3feF/lMVenmWanSHOniIgQ95no9+EI0tsaPxJ4Vr/qbKBLWhkXLcruBzSO4sBwDu/fNs2K9tgdpYDF+r3u9PbrKCPnEd/OCmy0/Au3/UDjm+d9rJhRn4TLBp+Scsp2EpH5JC+qgrZmUVtY6EbeXopsY77jBLHicNPW6tLJFlPCHeV2qT+3xumK/frISQYR4dCFgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PGa3N7g8KN+XqQrRWMv/6i0itMXsFcQYwIxF1LUXLi8=;
 b=ACi/B5klkFkax1DIqPvxj3PXbYrUBJS5Wvb+TSj0yRRlDkoWMlEx7OKvr4WgLbeGEZ40kuH4VU35CNHy4wBgYYS3MePvUmrT5Su6llf7QRcQk4inLJT7hEANitfnvGQ55w6OuZ0+r8doQN/4C2JwoinXkdWQsT9trT3/xmVuFul343esWTBApPHsqjb48KNj5tESdo780wjrzwNzz1McZrdge5Hgc8I7AzVnApefdINKqS8byM7rHMj5lLcQSBg71hL3s5IsRh3jPJzoJYkLGaIOLEed01zvJ5Z021NuA4dIZ8lrNnUZfP2I2NjkazvOq6roqMMtx+XUkm/RS41aDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7036.namprd11.prod.outlook.com (2603:10b6:930:50::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.12; Wed, 29 Oct 2025 14:06:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9275.011; Wed, 29 Oct 2025
 14:06:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp_mst: Fix check for FEC support for an
 uncompressed stream
Thread-Topic: [PATCH] drm/i915/dp_mst: Fix check for FEC support for an
 uncompressed stream
Thread-Index: AQHcR/8dVuMM2sp4PUKUhLBSeDOg+bTZKlUA
Date: Wed, 29 Oct 2025 14:06:07 +0000
Message-ID: <6a63fe2775f399458527be8d55e781644945669f.camel@intel.com>
References: <20251028113536.602352-1-imre.deak@intel.com>
In-Reply-To: <20251028113536.602352-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7036:EE_
x-ms-office365-filtering-correlation-id: 808aef68-1245-4375-0be1-08de16f44eaa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TStHbkZ3bEo0OTQySGl4ZE9mU01XbW9IV3VRbTFPZ0NuOWNiMk8zUEhEaHFz?=
 =?utf-8?B?eEdxOG81cGxLbmVrWmsvMHphcjBxZEw4YU9ZZk5LMDBYa1BZMTZwaDFkRzJl?=
 =?utf-8?B?ZllEZjNHbXNYbFZjL1RSa292cDQwa0M0QWlhUjY3cGxpdDFjMWRHd3EvM0da?=
 =?utf-8?B?dkIxMTRTV1o2MDEvcUIxZWozdE5nUlZtUWZNMmN6ak02NDNJRVFuTlllOGx4?=
 =?utf-8?B?NWpaZmhNL0tLSWpqT3d4MTBIbmJOdzhJQWNadk9LSHdXSVVubzJXQWNycFEy?=
 =?utf-8?B?UzZIQ0lGZmRySlJWZUFWWjYyMWRVRktBM2w0bGljMERwYVdCVVREaE5waXFv?=
 =?utf-8?B?VW9CbTlkL3lLQ2pTdFh1S1NVTzRlZGpqY1cya1NOem91TW9WU3JaR3VhajZ1?=
 =?utf-8?B?emN4K3ZNVk1hSVVmYTQ4blFYTTBROEhCVzBWYTIwZktYY3kxRmpxbXV6UXhQ?=
 =?utf-8?B?bXlzTmpUb3ZvVTFyYWJEbmZMWFVhMkJ3K1NEcHRDT3o1WkppMDBQdHc4T2hO?=
 =?utf-8?B?azRuVTh0Q3JMaDI3ZVlIZ3lFS3EvV2t5YlpCRGJkMlI5cktYNmR4WmpHVUJy?=
 =?utf-8?B?QndIWkRtV3ltVUNQQWVFVFpOR2hVdTJIbHZod1JpNmNNWGcxanJJNWd2Q2l1?=
 =?utf-8?B?emVJYlJncXZmTlFPRExyTVNjU0FzWmhxZGN4UUlpcE11TklzcnBGbmJLeU9k?=
 =?utf-8?B?VzFvUnNhSDE4c0hHSzUwY1NCZ2RDRC9jOFN2alFOaGNrTGFuOHNibzJHbEl0?=
 =?utf-8?B?UTk0VW9iSnZtdGxBQlk4NHllM0cwMUlQa0ZweTl6VEVHUnBSMkdoVkNZZzk3?=
 =?utf-8?B?YlZMQTVDdGtFTy9YNmh1RXRiRHltTEZvQ2RKaFlnbzk5UU82RnBPZVE4TTBD?=
 =?utf-8?B?Nmp0eng1b3ZqVWhpTHpVS2pKM1NXSUR3OG1xS0ZneE5CT2pLaWxIZTNGKzhN?=
 =?utf-8?B?d3pyMzllQXJGOEgreXNhaWpxRDJ3d2JhWjFZdHExTExYOWZ0NHpzNXErcFJ5?=
 =?utf-8?B?QlRqenJ1MmlWc1NhUjdmck5JS0oweEtvYUo4VDVYUmtTUzBWSVdpcEJMd1lT?=
 =?utf-8?B?QWNNSWlPMXByd0ZoUXYxcmcvNzVudER6cDR5T2RiVDlXbjlBdUFPVUkxWFNu?=
 =?utf-8?B?QjZibnA2RFIrWmNsSll6aVltMHR0MWVSTlU1VzlYcW1KVVBVSUY5eFVxWVlm?=
 =?utf-8?B?SlV3d29wL1l3QkVMK2tQV09NTERCdnphUTNhTVBHK2RXdkdXZnRTbUxrU1NS?=
 =?utf-8?B?cmY3bUdUSXZBbi9nMlZIRVkyLzJXK2syempNdENnYWtvdjAwTGVuZ3pPUXVN?=
 =?utf-8?B?N2dzSjFyd3dLb09odSt5a2ZyUy9hcUxEdGpWam5WdUs3cVpYYThKam8xYW5I?=
 =?utf-8?B?dHVuVmgreFlVWEVRTWtaTnd4WUtZTlZKRitwdWxpVG8vNE1xWjBVV1hRZ0JW?=
 =?utf-8?B?UzFKYk5OY1UvRkV6ZDJib1FBLzZERS9tSVBld01NdUt4enlTcmJ5SXdmUTFG?=
 =?utf-8?B?MmRSSlA2U0tzV1M4L0ZtWmZtb2pmRSthbTFVOVFyMWFqVkhOOTVUZzR4QmJy?=
 =?utf-8?B?b0t1bXhsQjB6YVRMZnlrVXc2MXIrZmI5Q2FzcVpKanMwc0tLdjkwUWVubjVo?=
 =?utf-8?B?TEJHQjdkNEtCcjFpa0lFZHdCRUlVTjlmWVRMNVhBQ3hMa2VkQzJvSGJGSFUv?=
 =?utf-8?B?aElnd2xPbzhlZUJMVzBIQVpCRWV5ZExSMnJYOTArTU9RQmpaTW9aMWRWYnBO?=
 =?utf-8?B?ZFRiNm9ITW10RnUzbHgrOXdYbkNLSEx1dngrK25vMkRYWlJ2d2xCdGZEeGNQ?=
 =?utf-8?B?cDYwRlBUbjg2RG4xRGRuWEVIQlo0VmgyVVRWdzEwWTI4SWpLNFRVT2Nqd3Iv?=
 =?utf-8?B?aFpzRy9Dd0p2UWZIWmFhcW5NMUhEZngrNHFCM2NKVXg3VFdrVkl6S1kzWUN4?=
 =?utf-8?Q?A73UP349ubsJJZAS+iVY7bjAmm+5QN09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUdvNkYvRmxBZzlTNkxQUmFXUjJjZFZpUTdYd2NTeTNsNlYxYU5tTTNtV2gz?=
 =?utf-8?B?MDVQNTlOSldtcW1XMW5qbTBYSXQ3SGUzbFB5OU11cnJPY0hKWmRFMDJ5UUc3?=
 =?utf-8?B?UlBvSlBPSW9OZXNBUTR5cTVJelJrMFZzQXM5YXZ1SitnVmppYi93KzJQam03?=
 =?utf-8?B?UXNURmJ4Y1dSWWtuSkZCNENaN0p0ZlBVRVh1UXhIN2pRYWRWM1cvU2dzbTZM?=
 =?utf-8?B?aC9uTUg4ZGlVVnNFSTdxdTlFbFQ5aTNqM3NyWWh3akkvUTBRbGY1Y2N6dklL?=
 =?utf-8?B?WVNrSjlTRC9BTTFQU3NpUHlwMC9aaTFNZmVOalZGVnVtSlU5Q2ZORUtLWEFJ?=
 =?utf-8?B?a0RHMk1SaFJmenhvN2ZzVFBwSkdzb0pPY1dMcjdTd2Y4ck1KMHc2aVY2bjBN?=
 =?utf-8?B?R2N5M3l2blN4REtaSDVFWW9PaTJqcFl0cWtqZjZJSFFGZFUrT3lGa29sWUt6?=
 =?utf-8?B?eUc5a09nRTJ5OFJhQVBiWlh5Zmd6anErVnJ0WjdDWTFBNVN5cExWRjFxdGE4?=
 =?utf-8?B?WlNmdStRTndlaHB0bmI0aGlRbFg1RkFRaXZUcFg0N0UrMkUvK0FBSkpsWU1D?=
 =?utf-8?B?czNzUm1XUkFKM2ZQalppWjhLV3E3VFRHK2xwRndUTCtHMldpMmE2OThVbXk0?=
 =?utf-8?B?NWRaZk4yelAyS0JKbTMwdXZocU5jOU9scmk4ek1wN2xvNC9wZFlsbld2bU1M?=
 =?utf-8?B?MzY3ZDRwWkhrU0pKUGdSTDl1K2MyL1VTYjlsK0s4dWpmczZpWGJrclVBZGYr?=
 =?utf-8?B?RlBucmdiYmVlSXFub3BtcTJUV2w3bm9ENUlCZHI3aTJyRWF5eCtzalI2d2Vz?=
 =?utf-8?B?UlhLbVA2MUZEWHFmQndycHFUKzZ0RVdab05HZ2l5U2NWcUNtam5hQVlTbjlB?=
 =?utf-8?B?ejBLUVptV3ZTS0dSVlRIZXl4S1g2OCtUOVJaMFBCaldsdFZvR0J4aVllNEhT?=
 =?utf-8?B?NHVxS01iSnhDR2tKQ1BnYmROWkJSc0sxcUExZ3Q3VEJVUExjbVZTb0dFem5O?=
 =?utf-8?B?UkhzOUF2N1BIU1l5ck9uTkNhQjN4eG45cTREblhtLzdHWXJ5OXFDR1pwQmVU?=
 =?utf-8?B?bENZdHlKU2kyaFd1TFRtNG1jYUlmaS80NWpSMEpEU1F3MmFLVmEreDhkbkZN?=
 =?utf-8?B?SkdPSXNDZ3doSERrSGdZTVBQdHJ0bGdTUE9mT05zVWFGbitBWmZCVXF4REZv?=
 =?utf-8?B?RitSd2MvWTZqdmdaaWVtK1lvNklVUmdmUmlEZXg3cXpPS29WbVhtL0toUGk3?=
 =?utf-8?B?VGVuS3JaUUdta0FkMlg5RHEzZTFMa1lkemVNT000WEFWOVN1UjEwNUdveTF4?=
 =?utf-8?B?Zm1pNk9DSlh0SFV1b0tBbnFBTlcvN2tmMHR3UTdBMTJmWE1ONTBBZ090U0Zx?=
 =?utf-8?B?SGw3YjgvdnhDbTNFU1JCSUVGN2VWK01KRGR0bjFNU3BWQytoNEJPemZhTFND?=
 =?utf-8?B?TVhNT1h5aDk0Y20vcUdhUzJNSythSk82eTNraFpRRUQvVHpzTXZ6emtIVyth?=
 =?utf-8?B?K0N2SVJqdS91ak0zdERxcUlYaWppRUdqSElGb01FalJwc1l6MmVUSVNzcito?=
 =?utf-8?B?OXdMb0RXdXZUbWdtRWNYbytBWU1DVUFwSHYxWWxSem5ibk5qalA3ckI0Vkcz?=
 =?utf-8?B?dk0zT0NFOHdTQVB4cUxuWVJtWjI1OW5aSm1CbzZBNjBRemlhNDhsSVVIOU9o?=
 =?utf-8?B?VnduQTcyWitDRGg4UUhFQmRJU2R4MTZsTC9NVDNsSjlkRlhCU1EyTmxoYUhu?=
 =?utf-8?B?dStFWmRPMkJ3YUI1OUFCWUxQL3Q3N2tmYTV0Q1JTM1ArNG9rcE9teU90TTk2?=
 =?utf-8?B?NHZUYU1IUjcvSlVhaTdFNlkwK0NBdXdITEpwcis0WFNLaHpnZWRCVnFXQ3BF?=
 =?utf-8?B?aHBKelhOdE9oOHJ0VE05MG9HWmZnS2lCZVdYZnZJRm1HTkRpaTlMOUY3RHRs?=
 =?utf-8?B?V0pMS1hsc2tQNjdJTmRDbEVFR1N2eUJhVkdxZVpsMzM3Y3pHbC81cS9LNjVI?=
 =?utf-8?B?dkhoK3VHbTVWU0pVUHBQQ0Y1MVBSWUp1YURpbjM1U0FBTzZnYzBxMFY1WSto?=
 =?utf-8?B?NTFJZmZaYjNJeHc4S3dHemtocGZwZEkySnE2MC93Tzc5K1RYcC9xa0xlVno1?=
 =?utf-8?B?Rk1WWUoyVFJtYS96aDg5VzRXVGE0STNONXlrM2pNamQ1cTJKK0k2R3VPdXcz?=
 =?utf-8?B?cDhmYmlCREtMNE1wRDc4L1p1Z1FPOTA1TzA0WUI4WXZ4dE8zQ21TKzdsR0xU?=
 =?utf-8?B?bkI3SkIyelI2L0x3NjdRVkg4eXVRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A58CDD1BCE541641A563D00A93469507@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 808aef68-1245-4375-0be1-08de16f44eaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2025 14:06:08.0100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S8QMMIaJCpx/JSYZj8sma7PpRSjt2AWqKRZVb0HpkW/db9HLT8FbZb7B7FYEkKPhRNSZPAmyyokr3FY9QmOPbjkIgVPlf1CCf+7vJCamAOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7036
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

T24gVHVlLCAyMDI1LTEwLTI4IGF0IDEzOjM1ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSByZWFzb24gZm9yIGVuYWJsaW5nIEZFQyBmb3IgYW4gdW5jb21wcmVzc2VkIHN0cmVhbSBvbiBh
biBNU1QgbGluaw0KPiBpcw0KPiB0aGF0IHRoZSBEU0MgY29tcHJlc3Npb24gaXMgZW5hYmxlZCBm
b3IgYW5vdGhlciBzdHJlYW0gb24gdGhlIHNhbWUNCj4gbGluay4NCj4gRm9yIHN1Y2ggYW4gdW5j
b21wcmVzc2VkIHN0cmVhbSBGRUMgZG9lc24ndCBuZWVkIHRvIGJlIHN1cHBvcnRlZCBvbg0KPiB0
aGUNCj4gd2hvbGUgcGF0aCB1bnRpbCB0aGUgKERQLVNTVCkgc2luayBEUFJYLiBGb3IgaW5zdGFu
Y2UgaWYgYSBicmFuY2gNCj4gZGV2aWNlDQo+IC0gbGlrZSBhIG1vbml0b3Igd2l0aCBhbiBNU1Qg
YnJhbmNoIGRldmljZSB3aXRoaW4gaXQgLSBpcyBwbHVnZ2VkIHRvDQo+IGENCj4gREZQIGNvbm5l
Y3RvciBvZiBhbiBNU1QgZG9ja2luZyBzdGF0aW9uIGFuZCB0aGUgbW9uaXRvcidzIGJyYW5jaA0K
PiBkZXZpY2UgZG9lcyBub3Qgc3VwcG9ydCBGRUMsIHRoZSBkb2NraW5nIHN0YXRpb24ncyBicmFu
Y2ggZGV2aWNlIHdpbGwNCj4gc3RpbGwgZW5hYmxlIHRoZSBsaW5rIHRvIHRoZSBtb25pdG9yIGNv
cnJlY3RseSwgZGlzYWJsaW5nIHRoZSBGRUMgb24NCj4gdGhhdCBsaW5rIGFzIGV4cGVjdGVkLiBT
aW5jZSBpdCdzIGJlZW4gdmVyaWZpZWQgYWxyZWFkeSB0aGF0IEZFQyBpcw0KPiBzdXBwb3J0ZWQg
Zm9yIHRoZSBjb21wcmVzc2VkIHN0cmVhbSBhYm92ZSwgdGhlIGNvcnJlc3BvbmRpbmcgY2hlY2sN
Cj4gZm9yDQo+IHRoZSB1bmNvbXByZXNzZWQgc3RyZWFtIGNhbiBiZSBkcm9wcGVkOiB0aGUgY2hl
Y2sgZm9yIHRoZSBjb21wcmVzc2VkDQo+IHN0cmVhbSBpbXBsaWVzIGFscmVhZHkgdGhhdCBGRUMg
aXMgc3VwcG9ydGVkIG9uIHRoZSBsaW5rIGJldHdlZW4gdGhlDQo+IHNvdXJjZSBEUFRYIGFuZCBp
bW1lZGlhdGUgZG93bnN0cmVhbSBicmFuY2ggZGV2aWNlLiBJZiBGRUMgaXMgbm90DQo+IHN1cHBv
cnRlZCBvbiB0aGUgd2hvbGUgcGF0aCB1bnRpbCB0aGUgc2luayBEUFJYLCBGRUMgd2lsbCBiZSBk
aXNhYmxlZA0KPiBieQ0KPiBhIGRvd25zdHJlYW0gYnJhbmNoIGRldmljZSBvbiB0aGUgcGF0aCBh
cyBkZXNjcmliZWQgYWJvdmUgZm9yIHRoZSBNU1QNCj4gZG9jayArIE1TVCBtb25pdG9yIGNvbmZp
Z3VyYXRpb24gZXhhbXBsZS4NCj4gDQo+IFRoaXMgZml4ZXMgYSBwcm9ibGVtIGluIHRoZSBhYm92
ZSBNU1QgZG9jayArIE1TVCBtb25pdG9yIGV4YW1wbGUsDQo+IHdoZXJlDQo+IHRoZSBkb2NrIHN1
cHBvcnRzIEZFQywgYnV0IHRoZSBtb25pdG9yIGRvZXNuJ3Qgc3VwcG9ydCBpdCBhbmQgRkVDDQo+
IGdldHMNCj4gZW5hYmxlZCBvbiB0aGUgbGluayBkdWUgdG8gRFNDIGdldHRpbmcgZW5hYmxlZCBm
b3IgYW5vdGhlciBtb25pdG9yJ3MNCj4gc3RyZWFtIG9uIHRoZSBzYW1lIGxpbmsuDQo+IA0KPiBD
bG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9p
c3N1ZXMvMTQyNTQNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jIHwgOSArKysrKysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMNCj4gaW5kZXggYTg0NWIyNjEyYTNmYS4uMjFhNjBiOGM4ODBlZSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC0y
OTksNyArMjk5LDE0IEBAIGludCBpbnRlbF9kcF9tdHBfdHVfY29tcHV0ZV9jb25maWcoc3RydWN0
DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJICogaW50ZWxfZHBfbmVlZHNfOGIxMGJfZmVj
KCkuDQo+IMKgCSAqLw0KPiDCoAljcnRjX3N0YXRlLT5mZWNfZW5hYmxlID0NCj4gaW50ZWxfZHBf
bmVlZHNfOGIxMGJfZmVjKGNydGNfc3RhdGUsIGRzYyk7DQo+IC0JaWYgKGNydGNfc3RhdGUtPmZl
Y19lbmFibGUgJiYNCj4gKwkvKg0KPiArCSAqIElmIEZFQyBnZXRzIGVuYWJsZWQgb25seSBiZWNh
dXNlIG9mIGFub3RoZXIgY29tcHJlc3NlZA0KPiBzdHJlYW0sIEZFQw0KPiArCSAqIG1heSBub3Qg
YmUgc3VwcG9ydGVkIGZvciB0aGlzIHVuY29tcHJlc3NlZCBzdHJlYW0gb24gdGhlDQo+IHdob2xl
IGxpbmsNCj4gKwkgKiBwYXRoIHVudGlsIHRoZSBzaW5rIERQUlguIEluIHRoaXMgY2FzZSBhIGRv
d25zdHJlYW0NCj4gYnJhbmNoIGRldmljZQ0KPiArCSAqIHdpbGwgZGlzYWJsZSBGRUMgZm9yIHRo
ZSB1bmNvbXByZXNzZWQgc3RyZWFtIGFzIGV4cGVjdGVkDQo+IGFuZCBzbyB0aGUNCj4gKwkgKiBG
RUMgc3VwcG9ydCBkb2Vzbid0IG5lZWQgdG8gYmUgY2hlY2tlZCBmb3IgdGhpcw0KPiB1bmNvbXBy
ZXNzZWQgc3RyZWFtLg0KPiArCSAqLw0KPiArCWlmIChjcnRjX3N0YXRlLT5mZWNfZW5hYmxlICYm
IGRzYyAmJg0KDQpXaHkgY3J0Y19zdGF0ZS0+ZmVjX2VuYWJsZSBpcyBzZXQgaWYgaXQncyBub3Qg
Z29pbmcgdG8gZW5hYmxlZCBhbmQgbm90DQpldmVuIHN1cHBvcnRlZCBpbiB0aGUgY3J0YyB0aGlz
IGNydGNfc3RhdGUgaXMgZm9yPw0KDQpBbHNvIHRoZXJlIHNlZW1zIHRvIGJlIHZlcnkgc2ltaWxh
ciBjaGVjayBpbiBtc3Rfc3RyZWFtX2NvbXB1dGVfY29uZmlnLg0KRG8gd2UgbmVlZCB0byBjaGFu
Z2UgdGhhdCBhcyB3ZWxsPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gwqAJwqDCoMKg
ICFpbnRlbF9kcF9zdXBwb3J0c19mZWMoaW50ZWxfZHAsIGNvbm5lY3RvciwgY3J0Y19zdGF0ZSkp
DQo+IMKgCQlyZXR1cm4gLUVJTlZBTDsNCj4gwqANCg0K
