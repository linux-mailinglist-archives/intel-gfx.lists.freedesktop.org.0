Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA8FB2B869
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 06:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9A010E0C2;
	Tue, 19 Aug 2025 04:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UxgvlQiX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B3B10E0C2;
 Tue, 19 Aug 2025 04:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755578893; x=1787114893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BSs67M2zuguaPaSGVeowFTcp6nQmoTmIVOtdqj9Y0RQ=;
 b=UxgvlQiXUIIAix/MrJVBgkYzqfXsx0aU91fb1FwJYyBHHtIgC3mck0FW
 SSWT0hYFAAuIZjArGpFOUhEYU+G9Qlm1ekR5fsXW4qi+oF040siTEWWgz
 e0IA22E/ijtQYRo5wh54rZrLvoVDG0xcr5N9n3sZJVlf87g3CRMw8CAYa
 XgYIWauMYA8Wes9H6ig8rc7vyg3xQ447DhweBh75gmd+m9kaKPnzf+noq
 B58LdAvv/9yznAAY+fRgxbRn6FqSUnL+rzf4UrR8P8kyWQp+4hGmavlm6
 RKHeRhHVs3K0mBotgYBDRY6qy88PwQVDJdMBmF/PL4/tVVhIO62wdLhbl g==;
X-CSE-ConnectionGUID: RAxkuNRjQ+ygF/AdJpCBQQ==
X-CSE-MsgGUID: 1lP+B9RVRYyaPUczkNcNfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57669901"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57669901"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 21:48:13 -0700
X-CSE-ConnectionGUID: zunuzGK0TEq3gfeD4USFaw==
X-CSE-MsgGUID: Ziw+BpOzR9iVGwTkuUMeAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="171988532"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 21:48:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 21:48:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 21:48:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.41)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 21:48:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VxdGvuC/B3PTYEPy9+ksx3oogvVAqlxjVTlaKO3eAsuhyQdSx4dK2FUxx0rLd88JH9rTeYN4xFe7QvigN0aHJMUl6rPwh+UTIPFAazNZXQtcZeEPgAI6JW9SiJJRLqZdjb53Oldo1iSN+aG678h8WzxFCyPalrQl5TFC1hl57vWtpi5ecHov+fRmp3oom8KsDz14Y1ko9qLWNJbfUUtFwrBehVpzhOnVLxrNvgvu5j97PL4MGZG5HCBcHxkVRsJWiCGzSNwq9wre/OljeioGlx1AEjb/qMlyTqrn9knokKNM5VWFJzQbTO9X5R10YpXO2lR9bSarJ2WbbEG+87DfNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BSs67M2zuguaPaSGVeowFTcp6nQmoTmIVOtdqj9Y0RQ=;
 b=v1c713v/OlX//BmpxMsX78pukZAxzjO7cjRMDQL4pONnhDCE8m2No6ZhmKr2tD8kqPoWyqj/GHa7XaGmTmAsJ+bhlH2aTIJsES9xitEvTYZJuZpvB2Iet3F7iJF8CZS6MXvWVbDqF71pQLVZRt6yeUpjiJxrdSsrK388l/OqZfmMwVrM0OGCieRSY1JkuJ6eJv5jtE1nHdlzmoTN4GAtH7OmvLff+52/+RbTJISvnQBpHK6d4Q/Z8sT+Aa4cNVI4bblrOxyGKzRWpIgisK2N/6d2mFwVkWoKeTcMlwwYxaYDXVIOh6rCe7PQgDuN+Mf1fz+8gO09x0916C8+dp65Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CYXPR11MB8691.namprd11.prod.outlook.com (2603:10b6:930:d5::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.24; Tue, 19 Aug 2025 04:48:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 04:48:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Underrun on idle PSR wa only when pkgc
 latency > delayed vblank
Thread-Topic: [PATCH] drm/i915/psr: Underrun on idle PSR wa only when pkgc
 latency > delayed vblank
Thread-Index: AQHbyJMLh+ppAQlEbkmoZv0K/1kNTrRp9n4g
Date: Tue, 19 Aug 2025 04:48:09 +0000
Message-ID: <DM4PR11MB636062D4AC0916666CD23665F430A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250519075223.443266-1-jouni.hogander@intel.com>
In-Reply-To: <20250519075223.443266-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CYXPR11MB8691:EE_
x-ms-office365-filtering-correlation-id: 81f9c54c-dc36-434c-ecaa-08dddedb9891
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?VGIxT2lwK3lTc2FlRmJZZVBEVnhrYmRKQm4rK3hSS2FVaGtaK1ZEaER4Z0xX?=
 =?utf-8?B?VHB3UXhkRURMeXBnUUF0c01kTTlNT3I0KzkvaHZudm9XSGdlcG5IMERPU0h0?=
 =?utf-8?B?T0hscjVHa1pVSHZleVA5cmVkd0VOWEIvSEEwSHJlb056YlN5Z3dPTEgvcm16?=
 =?utf-8?B?amMwZTJPYW1LZzF2KzN3TEI4aGhLSVVaL1NSTGNpbXcrRTdjd29KVEJxZjl1?=
 =?utf-8?B?TFBsUmk2Q1NwenZERlp4TlNNMitRRy83VUNXaVlzRmVKc0NFeU9hSWUySk91?=
 =?utf-8?B?b2dONlVqd2N5SlA1UmtzTkQrWStlMVE3SHY2SW1jaU96V2hjUDdFdkJaWGNB?=
 =?utf-8?B?WUZsUmVGODZFTzNhcXpEUUNkek5ZUDd1clRxRHp5VnFwTTFYdEY4alpJeGhT?=
 =?utf-8?B?OEpkYm9nQ0pMKzkxc1ppb2diWkVvazVXLzhrS0syc1lScEwrdnZwVTZUS0pZ?=
 =?utf-8?B?OEVxd280a05JcnhSb1pqMk1NYUZpNHJPRFpSTWx6R2NhZXQwdlBwMkUvQUV5?=
 =?utf-8?B?Q0hQWFVUajlLUHFlYk1YelE4bU4wUGpvM1VIMnpXSUUzRThEcU5EUzQwWTh1?=
 =?utf-8?B?Z3pXNks3WnRPVXA0ajJlQUl0VGx4L3BydllYaW1ER0FROU03cVBweHN0RUt0?=
 =?utf-8?B?MTdTbWRaN3N3bnQxeldnQUxNV2JQSU9zUlpvT3QrUlZxdHdIeExNNEV1ZkMv?=
 =?utf-8?B?cHZLYUd2YW5hWHEvbll5VVdGVXAyR2xyK1FEdlhPV2JjeFNaZE9HYjJhZjh1?=
 =?utf-8?B?a2ViUEY4Q2x0Ti9pVGp4WTgxQVlYUExyelFtYzNJTXpZT2V4ekE3bk8xUWJH?=
 =?utf-8?B?LzBZZ0hzdmo1a2VUZzdia2tZSzkzUDB4Zkl6b2NweHEvK09hQnJMUnJqK0tO?=
 =?utf-8?B?dXJnR1RBNHQ0NXI2UXBwQWdhZUkzRDY2NnAzT1dDQ0tTMkNSK2NnT1hCTFlO?=
 =?utf-8?B?bXVWWGhzUTJIaXNSMGxlSnpGNlFUNWp4VGx3cVd5T0JJc2FacHROdDBjbTlv?=
 =?utf-8?B?YSt4WnV5RGpRamVQVTZXN2FkQTM0eEJJelFOOE1CdXpSMHpOc2RQUUkwMElB?=
 =?utf-8?B?Wm11RU0vRUxJZGVQK2gxTjEzM0ZNMDhNeUdqeFUrVEcxakxvUExpc2E2cGlU?=
 =?utf-8?B?SERZQ09NSHJWTHFGVWVnNUgydjBxcmF6UWlsbFNUT3FtaWNNczlUV0wwK3ht?=
 =?utf-8?B?TjFPZFFYVVdCb2hBOWZmbzhleGRxcE9Xc3lkZEg4ZXJxZnpBUmpmcFNJU1Jy?=
 =?utf-8?B?clNCVysxNDh6cjhJQ1lDWFgvbUxYZ3g0VnpUdnM4WGoxYWZuekhxTld2dzZN?=
 =?utf-8?B?bW1hWUZjanZYb3Jsbndpb2JNVys4REtsYmc0Sis4Y0pITkJlc0dyN25TWGZk?=
 =?utf-8?B?bUJMbDlrK0pYbXpEaStpbkRsdkY4WUNuN2ZPQ01KbWd4S0haUS9Za1ZFOFJI?=
 =?utf-8?B?ZEJCVjdmZElyZFBNQy9waXRxZ1E3WkNOWHJpbDJRMS9GNEdwb2M5c04yTCt6?=
 =?utf-8?B?V2lXQWhXbHpGQjY2UHp3VktqM1pnTStkREhpT25VRHZudUFEeW9pNUs3Q0Y3?=
 =?utf-8?B?SXlFNWJSbWd5ZVluSEZqSEI0bWNLMlhINkltb29BQkY0M3YwUmxaWXRkM1BO?=
 =?utf-8?B?R0d6WXdaRndTYzVkRWdsQWhNVjNvdXc2eG5JQ29vVUFmN29OckJDSnVLSHRV?=
 =?utf-8?B?QXlOcWlCNlMxZ3Byd0pzOHFmUFRpSVpyOEE3WDVJQTJjQlkxdGEweWIzVmpr?=
 =?utf-8?B?ZU9NV2tndEtVaHRocHIzZ2s2TWszbjNiQnJZZXExeGFGTUJqZDlHalk1dHJq?=
 =?utf-8?B?UUlXQmhDbnVuYllCbXJKQzFMS1gxaWFrVmdrNkdmOWI1eW1LWW42UUd4OC9O?=
 =?utf-8?B?UVBIZzNDdmVIc1daRUdWakRWRitNQWpFVTdyU3BCcDNhWUhqWDVxUkxXNFNx?=
 =?utf-8?B?ZFV4WHRISEdDZWw1eCtkNDlTQWF5TVRndUdwcC9ibWNYRWhrOG5Scy9JdVZM?=
 =?utf-8?Q?f5Q5jwtOoHMdyBelVkfFKDkD7Ufig0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEM0L2pzWDU4MldSNVpraElmdzBkVEFPT29sUmEyaUpaRjJweVBqMjI2TUpT?=
 =?utf-8?B?UFNUeTJPNHNrODZYQ2RVUGRBOEhtODY0VVRPYWEwamo5OVhOV1BhZGVyN3J1?=
 =?utf-8?B?YnNtUXd0VFVZUm5hUnI1TDNaYWhqajQ2MGp1ZCtyLzdWZ0hHdkZOMnlEWFFO?=
 =?utf-8?B?NEpMdjNiZmxWSmVoWVBFYnRDaWVaYjVFL2d3UE1OWmlQRnpXUDZMUHkzRFhW?=
 =?utf-8?B?QW8vc2tzQlZBYzV6VnAvUC94MDhBUFg3diszSm90K1VNVW80WjBzdXg3eHor?=
 =?utf-8?B?QU1BRWdzaW9Scko4WVg1TkZxUnM0Z2FQNm5ZMGRaT05GZXlNK0NyZnNTcGl0?=
 =?utf-8?B?OFhuTVBOdUtyVWc0bnF2ak1hRjN2aG9SRXA3eUtsanJibnA4WWJZeitnd09P?=
 =?utf-8?B?L0xpeU9KUThsMVFpdjBQQVFSbE5hNnVhQ3pCM0NNYmx1NloyQk1xUWxVYVRB?=
 =?utf-8?B?a1dZNG05VXRHRjAxdG1kR1I2QlJNMVRRbzBNWnlGaFJXeTFWbTh1TjQvbUt3?=
 =?utf-8?B?OE9acmw5TGRaTnlpSERBQkplWjhuZWtvUzZwWnZmNUd4NkwvQlVqWW1qa3Fo?=
 =?utf-8?B?VEhtQjFTWHM3NzhueDZVU1dQQytJV1hQVmlFbWpUeDNHMGc4UWFJaW40T1BE?=
 =?utf-8?B?Sm5leWJ3TTAyb2V6YmplY0huZFppY0hMb1RPQnhBQ293RmgrQ1I4bkVabXhv?=
 =?utf-8?B?anZNZzN5R0V3dGFRd2JUNEcydEZKQXNXNzVnNVpwbTdZRDkzeTFzbko1QmZX?=
 =?utf-8?B?cVZMamhabUw4OUg4Sm80bVdaWnpUaklLMGYrVGRhNnhxaVVUeXFEc3E0aldJ?=
 =?utf-8?B?QzhpdE0vZSswYjY3c3h0Nkh4QTFBZFhFUUNxd1doSHJQNlZxSFhmb2dBZlh3?=
 =?utf-8?B?MmQvS3J1N0R2S0kzK1lrKzBDODZTcUE2dFpFaGVZK0VDbk5ZdXNyS0pJZnQy?=
 =?utf-8?B?eUdHL1NwRnF0V0ljaVBWUGlrZUl5UExaTGxScXNoYzE2c3doZXZZekdQNytL?=
 =?utf-8?B?VUphOUxKMlJ3dUtpWmp5WDlzNTQ5bGpsaHQ2UXJxSjducFppajVQMWZmTS85?=
 =?utf-8?B?R3FSRmt0Yk1CMng5NjBGSjhZSTVIYnJxMDhQRFhYRWF2RnNqNVZLL3dBbkxC?=
 =?utf-8?B?WGFMUDlBV1BtaU9leitnNDlUTE9SUXE5aURqQS92a1ZZd1l3WDVzWXhYaXFx?=
 =?utf-8?B?WGVJV3p0WHpPY0R6OG1RTFhTRTkrUEp5SmhtVWx2SG1NRmNOWVdRczhZaUNY?=
 =?utf-8?B?Qjg4OFdCaWVUbkhFdWFnd0hvclRIOE12N0R2bWZXWGpDTkY0YUgrUHZrSTl1?=
 =?utf-8?B?YVlFU3l3Mlhhb3owZUxtWVRFT0VkYjJnS0kxd0oveC9mTi9qWnh6cVRwZENm?=
 =?utf-8?B?RGNvSytDMkQ0eTZLU1lBb0dSRThYWG9LZmFNelozRW9yZ2FNdStnNnh6Ukxo?=
 =?utf-8?B?QUxuRnlsRml3QUQzVEh0YkdkWEJsWkZ1S1lNOEFwWkdKRFc2RmN4WmZDd0hh?=
 =?utf-8?B?OHoyWWZvSndsUkdpSVBMTXVuRjBNcDZ3YnBzRm9ycDZOOWpCWElwTnd6L1Bw?=
 =?utf-8?B?K2FZTTJnVWNsTDI1bTJEQ2NnRE8xa29PcXdZSE9QQnhocHFvb0dBcU14bmpq?=
 =?utf-8?B?YmR6VzNhUGNlRDlKZEticFlUZ01vR0lSa093M3Y2TWZDUGlsWWIyWHBCUVYv?=
 =?utf-8?B?UVdUOXJJTERvcDJrTGlkd2RkbXBQbmdPR2srZ0JiR2dGUWJjMjlISUczRTJM?=
 =?utf-8?B?NCtRTEd3K0M5cmR3ZUcrOUpyVnVESnIyNFNjbnpDUWNkandtbS9YNldzTEow?=
 =?utf-8?B?eHpNb0lOb1lSVDNtdEZ3NUcyejFCOHBZSW9LVzNNUUJIeVZNYVZuMWxpaWha?=
 =?utf-8?B?NUg3ODBYRUhtczVZbytmZ3o3OGJBRGtSdHVaMUJuelNpOSs2SDFhVjh2MGI4?=
 =?utf-8?B?R0JzYWVtSmlnaEIxRWduWGpHNi9veUNBSmdaeHpPMncreTJLbUJZNmJVNWdS?=
 =?utf-8?B?cy9BZXMxL2ZJdFRiUEFranNrRzR1bklDTUk4MkIwMDU3N2c0L09uQmd3bXla?=
 =?utf-8?B?UXRhNUNnK2tTTGJZS3R1RjFQVmxxTmhrK1JISUhjSEZ2WUtNVDRQQXV1Q2xR?=
 =?utf-8?Q?/XZcajlLaRTJ3YWBis0odR5C/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81f9c54c-dc36-434c-ecaa-08dddedb9891
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 04:48:09.4828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: evjzF98mlz9WA600ArT+e6IoYt9+jD6Oum8Mu4kFhqik/hioP2i+jNLNHtQS3w0xhD5CjLCip2AvbDEn4Dy1Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8691
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
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IE1vbmRheSwgTWF5IDE5LCAyMDI1IDE6MjIgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1
L3BzcjogVW5kZXJydW4gb24gaWRsZSBQU1Igd2Egb25seSB3aGVuIHBrZ2MgbGF0ZW5jeQ0KPiA+
IGRlbGF5ZWQgdmJsYW5rDQo+IA0KPiBVbmRlcnJ1biBvbiBpZGxlIFBTUiB3b3JrYXJvdW5kIChX
YV8xNjAyNTU5NjY0NykgaXMgc3VwcG9zZWQgdG8gYmUgYXBwbGllZA0KPiBvbmx5IHdoZW4gcGtn
IGMgbGF0ZW5jeSA+IGRlbGF5ZWQgdmJsYW5rLiBDdXJyZW50bHkgd2UgYXJlIGFwcGx5aW5nIGl0
IGFsd2F5cw0KPiB3aGVuIG90aGVyIGNyaXRlcmlhcyBhcmUgbWV0Lg0KPiANCj4gRml4IHRoaXMg
YnkgYWRkaW5nIG5ldyBib29sZWFuIGZsYWcgd2hpY2ggaXMgc3VwcG9zZWQgdG8gYmUgc2V0IHdo
ZW4gY2FsY3VsYXRpbmcNCj4gd2F0ZXJtYXJrIGxldmVscyBhbmQgcGtnYyBsYXRlbmN5ID4gZGVs
YXllZCB2YmxhbmsgaXMgZGV0ZWN0ZWQuIGN1cnJlbnRseSB0aGlzDQo+IHNjZW5hcmlvIGlzIGJs
b2NrZWQgYnV0IG1pZ2h0IGJlIGFkZGVkIGxhdGVyLiBEdWUgdG8gdGhpcyBhZGQgYWxzbyBUT0RP
IGNvbW1lbnQNCj4gaW50byBza2xfbWF4X3dtX2xldmVsX2Zvcl92YmxhbmsuDQo+IA0KPiBCc3Bl
YzogNzQxNTENCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCAgIHwgIDIgKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgICAgICAgICB8IDE2ICsrKysrKysrKystLS0tLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jICAgICB8ICA1ICsrKysrDQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBpbmRleCAwNTYyMTkyNzJjMzYuLjIwOWVhZDUyMDY2MCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAg
LTExMTYsNiArMTExNiw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsNCj4gIAlib29sIHJl
cV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZTsNCj4gIAlib29sIGhhc19wYW5lbF9yZXBsYXk7DQo+
ICAJYm9vbCB3bV9sZXZlbF9kaXNhYmxlZDsNCj4gKwlib29sIHBrZ19jX2xhdGVuY3lfdXNlZDsN
Cj4gIAl1MzIgZGMzY29fZXhpdGxpbmU7DQo+ICAJdTE2IHN1X3lfZ3JhbnVsYXJpdHk7DQo+ICAJ
dTggYWN0aXZlX25vbl9wc3JfcGlwZXM7DQo+IEBAIC0xNjU1LDYgKzE2NTYsNyBAQCBzdHJ1Y3Qg
aW50ZWxfcHNyIHsNCj4gIAl1OCBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+IA0KPiAgCWJvb2wgbGlu
a19vazsNCj4gKwlib29sIHBrZ19jX2xhdGVuY3lfdXNlZDsNCj4gDQo+ICAJdTggYWN0aXZlX25v
bl9wc3JfcGlwZXM7DQo+ICB9Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gaW5kZXggNDMwYWQ0ZWY3MTQ2Li5hNzVlZjUxNWQwMTYgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtOTMxLDcgKzkzMSw3
IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IxKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+ICAJLyogV2FfMTYwMjU1OTY2NDcgKi8NCj4gIAlpZiAoKERJU1BMQVlfVkVSKGRpc3Bs
YXkpID09IDIwIHx8DQo+ICAJICAgICBJU19ESVNQTEFZX1ZFUngxMDBfU1RFUChkaXNwbGF5LCAz
MDAwLCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4gJiYNCj4gLQkgICAgaXNfZGM1X2RjNl9ibG9ja2Vk
KGludGVsX2RwKSkNCj4gKwkgICAgaXNfZGM1X2RjNl9ibG9ja2VkKGludGVsX2RwKSAmJiBpbnRl
bF9kcC0+cHNyLnBrZ19jX2xhdGVuY3lfdXNlZCkNCj4gIAkJaW50ZWxfZG1jX3N0YXJ0X3BrZ2Nf
ZXhpdF9hdF9zdGFydF9vZl91bmRlbGF5ZWRfdmJsYW5rKGRpc3BsYXksDQo+ICAJCQkJCQkJCSAg
ICAgICBpbnRlbF9kcC0NCj4gPnBzci5waXBlLA0KPiAgCQkJCQkJCQkgICAgICAgdHJ1ZSk7DQo+
IEBAIC0xMDIxLDcgKzEwMjEsNyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCS8qIFdhXzE2MDI1NTk2NjQ3ICovDQo+ICAJaWYg
KChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCB8fA0KPiAgCSAgICAgSVNfRElTUExBWV9WRVJ4
MTAwX1NURVAoZGlzcGxheSwgMzAwMCwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ICYmDQo+IC0JICAg
IGlzX2RjNV9kYzZfYmxvY2tlZChpbnRlbF9kcCkpDQo+ICsJICAgIGlzX2RjNV9kYzZfYmxvY2tl
ZChpbnRlbF9kcCkgJiYgaW50ZWxfZHAtPnBzci5wa2dfY19sYXRlbmN5X3VzZWQpDQo+ICAJCWlk
bGVfZnJhbWVzID0gMDsNCj4gIAllbHNlDQo+ICAJCWlkbGVfZnJhbWVzID0gcHNyX2NvbXB1dGVf
aWRsZV9mcmFtZXMoaW50ZWxfZHApOw0KPiBAQCAtMjAyMiw2ICsyMDIyLDcgQEAgc3RhdGljIHZv
aWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwN
Cj4gIAlpbnRlbF9kcC0+cHNyLnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSA9DQo+ICAJCWNy
dGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZTsNCj4gIAlpbnRlbF9kcC0+cHNy
LmFjdGl2ZV9ub25fcHNyX3BpcGVzID0gY3J0Y19zdGF0ZS0+YWN0aXZlX25vbl9wc3JfcGlwZXM7
DQo+ICsJaW50ZWxfZHAtPnBzci5wa2dfY19sYXRlbmN5X3VzZWQgPSBjcnRjX3N0YXRlLT5wa2df
Y19sYXRlbmN5X3VzZWQ7DQo+IA0KPiAgCWlmICghcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhp
bnRlbF9kcCkpDQo+ICAJCXJldHVybjsNCj4gQEAgLTIyMDIsNiArMjIwMyw3IEBAIHN0YXRpYyB2
b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2Rw
KQ0KPiAgCWludGVsX2RwLT5wc3Iuc3VfcmVnaW9uX2V0X2VuYWJsZWQgPSBmYWxzZTsNCj4gIAlp
bnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkID0gZmFsc2U7DQo+ICAJaW50
ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bzcl9waXBlcyA9IDA7DQo+ICsJaW50ZWxfZHAtPnBzci5w
a2dfY19sYXRlbmN5X3VzZWQgPSAwOw0KPiAgfQ0KPiANCj4gIC8qKg0KPiBAQCAtMzY5Niw3ICsz
Njk4LDcgQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfcHNyX2FwcGx5X3VuZGVycnVuX29uX2lkbGVf
d2FfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHANCj4gIAlzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAgCWJvb2wgZGM1
X2RjNl9ibG9ja2VkOw0KPiANCj4gLQlpZiAoIWludGVsX2RwLT5wc3IuYWN0aXZlKQ0KPiArCWlm
ICghaW50ZWxfZHAtPnBzci5hY3RpdmUgfHwgIWludGVsX2RwLT5wc3IucGtnX2NfbGF0ZW5jeV91
c2VkKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCWRjNV9kYzZfYmxvY2tlZCA9IGlzX2RjNV9kYzZf
YmxvY2tlZChpbnRlbF9kcCk7IEBAIC0zNzIxLDcgKzM3MjMsOA0KPiBAQCBzdGF0aWMgdm9pZCBw
c3JfZGM1X2RjNl93YV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4gDQo+ICAJCW11
dGV4X2xvY2soJmludGVsX2RwLT5wc3IubG9jayk7DQo+IA0KPiAtCQlpZiAoaW50ZWxfZHAtPnBz
ci5lbmFibGVkICYmICFpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiArCQlp
ZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkICYmICFpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9l
bmFibGVkDQo+ICYmDQo+ICsJCSAgICAhaW50ZWxfZHAtPnBzci5wa2dfY19sYXRlbmN5X3VzZWQp
DQo+ICAJCQlpbnRlbF9wc3JfYXBwbHlfdW5kZXJydW5fb25faWRsZV93YV9sb2NrZWQoaW50ZWxf
ZHApOw0KPiANCj4gIAkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiBAQCAt
Mzc5OSw3ICszODAyLDggQEAgdm9pZCBpbnRlbF9wc3Jfbm90aWZ5X3BpcGVfY2hhbmdlKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJZ290byB1bmxvY2s7DQo+IA0K
PiAgCQlpZiAoKGVuYWJsZSAmJiBpbnRlbF9kcC0+cHNyLmFjdGl2ZV9ub25fcHNyX3BpcGVzKSB8
fA0KPiAtCQkgICAgKCFlbmFibGUgJiYgIWludGVsX2RwLT5wc3IuYWN0aXZlX25vbl9wc3JfcGlw
ZXMpKSB7DQo+ICsJCSAgICAoIWVuYWJsZSAmJiAhaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bz
cl9waXBlcykgfHwNCj4gKwkJICAgICFpbnRlbF9kcC0+cHNyLnBrZ19jX2xhdGVuY3lfdXNlZCkg
ew0KPiAgCQkJaW50ZWxfZHAtPnBzci5hY3RpdmVfbm9uX3Bzcl9waXBlcyA9DQo+IGFjdGl2ZV9u
b25fcHNyX3BpcGVzOw0KPiAgCQkJZ290byB1bmxvY2s7DQo+ICAJCX0NCj4gQEAgLTM4MzQsNyAr
MzgzOCw3IEBAIHZvaWQgaW50ZWxfcHNyX25vdGlmeV92YmxhbmtfZW5hYmxlX2Rpc2FibGUoc3Ry
dWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICAJCQlicmVhazsNCj4gIAkJfQ0KPiAN
Cj4gLQkJaWYgKGludGVsX2RwLT5wc3IuZW5hYmxlZCkNCj4gKwkJaWYgKGludGVsX2RwLT5wc3Iu
ZW5hYmxlZCAmJiBpbnRlbF9kcC0+cHNyLnBrZ19jX2xhdGVuY3lfdXNlZCkNCj4gIAkJCWludGVs
X3Bzcl9hcHBseV91bmRlcnJ1bl9vbl9pZGxlX3dhX2xvY2tlZChpbnRlbF9kcCk7DQo+IA0KPiAg
CQltdXRleF91bmxvY2soJmludGVsX2RwLT5wc3IubG9jayk7DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGluZGV4IDgwODBmNzc3OTEwYS4u
Y2NkZTE1MWZhOWZkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF93YXRlcm1hcmsuYw0KPiBAQCAtMjMzMyw2ICsyMzMzLDExIEBAIHN0YXRpYyBpbnQgc2tsX21h
eF93bTBfbGluZXMoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
DQo+ICAJcmV0dXJuIHdtMF9saW5lczsNCj4gIH0NCj4gDQo+ICsvKg0KPiArICogVE9ETzogSW4g
Y2FzZSB3ZSB1c2UgUEtHX0NfTEFURU5DWSB0byBhbGxvdyBDLXN0YXRlcyB3aGVuIHRoZQ0KPiAr
ZGVsYXllZCB2YmxhbmsNCj4gKyAqIHNpemUgaXMgdG9vIHNtYWxsIGZvciB0aGUgcGFja2FnZSBD
IGV4aXQgbGF0ZW5jeSB3ZSBuZWVkIHRvIG5vdGlmeQ0KPiArUFNSIGFib3V0DQo+ICsgKiB0aGUg
c2NlbmFyaW8gdG8gYXBwbHkgV2FfMTYwMjU1OTY2NDcuDQo+ICsgKi8NCg0KTG9va3MgR29vZCB0
byBtZSwgd2UgY2FuIGVuYWJsZSBpdCBvbmNlIHRoZSBwYWNrYWdlIEMgbGF0ZW5jeSBpcyBwcm9n
cmFtbWVkIHRvDQphIG5vbiBGRiB2YWx1ZS4NCg0KV291bGQgc3VnZ2VzdCB0byBrZWVwIGEgdGlj
a2V0IHRvIHRyYWNrIHRoaXMuDQoNClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KDQo+ICBzdGF0aWMgaW50IHNrbF9tYXhfd21fbGV2ZWxfZm9yX3ZibGFu
ayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJCQkgICAgICAgaW50
IHdtMF9saW5lcykNCj4gIHsNCj4gLS0NCj4gMi40My4wDQoNCg==
