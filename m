Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD9A9E93F3
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 13:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B42F10E6D9;
	Mon,  9 Dec 2024 12:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzkHmQLx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEBB310E6D9
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 12:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733747383; x=1765283383;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hlf3hnCclUCxbs3ircf6smGqYlIdtYeZubNuWid0w28=;
 b=WzkHmQLx8EH/CMECZDYrCdoLFVPrb+GtwjZLbKALTQ556KSWifVX07Lv
 +1Y6V9x7tdJ93HYxkOW5ilEFJtXJMbFzdMnZHnGaFL6VCuyjjEvGfCw3b
 UNGsnHDZhcC15bRVjOJBzLYR80A6rIRSjtNR+HisQ0TIOb2fxQbR0spBz
 XG62TRhaleMvmMA5dHceADCR3Hj8bNplTDUq3Anwq/0Cfdl2/akyrMKQI
 ACd5j/W96F7iRmDNx40vtRWKT4oBSXCfoN56D3thb/ueba5NJliD4cM4+
 S0Ti8MLMcJpXCUVjq+6zKLESBwyqUe6y4xieH+Evh+3o+kCtHFzJpAi+4 Q==;
X-CSE-ConnectionGUID: lAUzgxMpQ6iL0AMgAiv5wg==
X-CSE-MsgGUID: CjzSkzR6QZexzV63e4GFOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="33382634"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="33382634"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 04:29:42 -0800
X-CSE-ConnectionGUID: 7/xX6aL2SPefAFslDcoLPQ==
X-CSE-MsgGUID: 0fzcYU/gQvqVF3hk2hFWvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="99868631"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 04:29:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 04:29:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 04:29:41 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 04:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sor09wj32nVyWg7UIhQ1TUBodR8tbTZyotTStuIWMjcstCwyYJKcpbF2mzpJp2uLYH4HfAFKcyq5qI/rQWlTsG2OI0PIGMSNNcZUkEO0TZMaULsnoVKorIQ/j0cKZ5FZV7rcxAQEhTnNr4n6rhWu23gr1+WETVRjqrkazHirV03rkhmNckJKRPALk0UJfUjkzEfmfjaeWvikmA39W5+hsHSR0QlIuY7zo42gw0mMaCxxkQQyzs4/dWZQ/hhdkubusc34mUPeLe7anlqUslvC0RRd50KMuINgl7gEdB3+4Od6c1wBUSZJtTAViL9wOQ+5XPiPUvcn7jdkIs2IppoLgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hlf3hnCclUCxbs3ircf6smGqYlIdtYeZubNuWid0w28=;
 b=yGBkY2tZjhI3xkQGnS/yv/+uZ4VkhNDjNU5i5UFZ+CaDpdh9Xm5KdrOJfzRn5PuFgc5/g90WqMM/Ne8hVYw99tf+DzCx7YtrXZk8ME0MowzxlOuqalIXxTAcqkvu1Xi6ytaExoIK4fpwEllzMMo3dCWcem4VlOiU9JDZn8kGDrw40uk0IxeT4+clIrcNY6jVEmtjs21BbpefvmT+E53k3U2kKxVrTGWu7Bsp+FluiqBrhTjVkEh0+vrSA4buTVYnlJlRXbkCKl7k5l0Dj5Y2A6tcVRewDZQSBdcqOi30d9C78Qv2o1xW6X9vmofqGebwYGWKB2T/9iGgFpwP+ScOng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.17; Mon, 9 Dec
 2024 12:29:39 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8207.017; Mon, 9 Dec 2024
 12:29:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbRjaRCNplQRjFvU62VhAJExIXCbLdnkyAgAAtWzCAAARqgIAAAhgggAAE9YCAAAdI0A==
Date: Mon, 9 Dec 2024 12:29:39 +0000
Message-ID: <BL1PR11MB59794D532D2347FA047B83A1F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
 <20241204100328.3738778-2-animesh.manna@intel.com>
 <59438896581fbd20a460c6243c1116bfec31e480.camel@intel.com>
 <BL1PR11MB5979ADA574A73E61AE34E2A2F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <891038f168e400cf6fdedea89be4264959242281.camel@intel.com>
 <BL1PR11MB5979323382ECE7A6F3E39E41F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <4bc12e74c14c5acc5fbea556ba4ad41f206ee54e.camel@intel.com>
In-Reply-To: <4bc12e74c14c5acc5fbea556ba4ad41f206ee54e.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|CO1PR11MB4852:EE_
x-ms-office365-filtering-correlation-id: 1129b52e-2c9b-4246-52fd-08dd184d267a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cG5xTWx1RDFndnJtek02Z2ppSFFkdUpVSG5KbXArekIzVEF6dGhTdUpORWRz?=
 =?utf-8?B?K3FlR3dHMFFyeCtuMExpSkhGVTg4Z2hCeDV1OTFqZlRQczBGcllCYXloemtv?=
 =?utf-8?B?SEt1TnFUR1ZtcjFaUjF4U2dqajVrYlVYUEtkSlZQdGlkR2hCM1oweGhqMWhL?=
 =?utf-8?B?VFp1WThpQWpMbldwL0xJMmJZU1d3dWxML0ZVNFpUVFBwVVBoZ3JSTmhvOHhG?=
 =?utf-8?B?b2grWGpPZHMzUklhZVJpYzFHSGc4U2ZaVHNsNE5PWkRqUEZTYWFKaTlZdW1B?=
 =?utf-8?B?b2MwUStUTmlvU1dUSXhzTERWQVJtek1xcUpNcC8reVFwdmR3UEoxbkRZNXYr?=
 =?utf-8?B?UDBnMTcwUHVkUWFySExnckRkT2lybHZWSUluSGxoUktLUWJPdnZNSEd1cU5B?=
 =?utf-8?B?SUtLSE50VDRNSHRvc0FQOU5yMG5yMjBBZklQRm1ETkVoc0ZwZUtqTzl6UXR6?=
 =?utf-8?B?VlJGY0I1dXdVSzlaWjJzcXNQOXVyWGJDR2cra1QwQXh1aHlNUGJERS80NUhw?=
 =?utf-8?B?L1lMSjRXcDhkWFo0VTZFc05JYmdrbExISkovdHJ4NUtMa2FWZk5FcWcrQVp0?=
 =?utf-8?B?dUl4dDIxZ2czdFgrQm9OVFV1OW9NS1dKMlprMFRlaEVKNUhCbnRQSTF4bXIy?=
 =?utf-8?B?R0NjYzJBZVhFRnpYQWQ2Y29IanpSRmtDYVpYbUlRRWlwa1dUTDNiSmUzNC9k?=
 =?utf-8?B?aGtEZ0VoVkpZaGg0MnluVk1QNWdsb1d1cHZkLytPb0JNcmdDOFIxVFBJVmY5?=
 =?utf-8?B?R3F2djNsS09Da0w3aTgva21UNjBlRldiR1M5ajkzeGdscHlKakxYRFpEL3JQ?=
 =?utf-8?B?WU1kTC9XMXJpblh3djhLaHlxNThDS3hPblNScDBqU0F5Q3dVQkxrQWNuSGhw?=
 =?utf-8?B?L1k0TlVPaGlwaXhYdmFSWFQraE9sb1hucUU2MHlRZW9jRjArdGFmZE5qZWRS?=
 =?utf-8?B?azdCMmFmb2FLT29qeHpuZ1p4WXNqUkJkUmpYaDVYTWRCNGFCOWdYSTUzUE5C?=
 =?utf-8?B?U0EySjJZZkNXMkZ6QlBsMTRRczVHd1dIN05STU5LUzRkaG9LTEdxaUhmSlVL?=
 =?utf-8?B?NjJ3K2VNZ2VVTzJzNjBGQUVQVmgvZUk1TVRxWVZiNDJXT0R2RG1CaUcxY2hU?=
 =?utf-8?B?c0dIWlR3QTFjS2RyM053NzY0cUNYVExHbDlyUUdoWUFlQ1hHZGRuWTdEOE1s?=
 =?utf-8?B?OWNaOGFNaVRkN0o5YVRvQ1ZVaS9BSG1iaTFvUGVSUXZTOUVUOEN0aUR0VEVB?=
 =?utf-8?B?bUhaNmFVZTdBMVZVbHpxa2hRZnh2MmxBekNXc21Ra3JJbHFhbU0rS2d0TlNy?=
 =?utf-8?B?bFhRNjlyQTNYaUFOS2xEdmFYUlBKalpRaW5MYjRNQSt4RUpWdGtWUnQ3TW1l?=
 =?utf-8?B?bkxFUGx6WTNTSko4YWhWbkFFekRtcHRFUy9tYklVNXZ1UlA4cTh6L3Z0U2FX?=
 =?utf-8?B?MzJSWklvaFI3dXV3Q2d3S3RqS1MwK1RNOUpIZ1ZXWklqbkE0Wi94N0lYVU1U?=
 =?utf-8?B?aS9rKzJpL214Um0yYTVrREI5WTU5cWJkVk1VMEhyY0hLR0ZYZFV2VklPUnVR?=
 =?utf-8?B?VEFJc3J4bVNhSVVuYXhyN2l6SFRtdFZpV2RNTmZDalpESTRkR0lIYUtGSjd6?=
 =?utf-8?B?UkFESDY0Zm9jbzMyeHJmZDJoK0tlQjU3NEdMc1krMHF0UkVMQ2tiK0orRjJC?=
 =?utf-8?B?ZHJFanJpOUVPZS9Kc29TM0pvb29RVWg5VnRHYjZxb2FFNmtLeXJzMGJCOUpC?=
 =?utf-8?B?L2gvdmdTWlRYS0NUeHBnY3lGNnJKTFE3WjMwVlo3RUM0eC9qZHA1cTF1eFJt?=
 =?utf-8?B?cWUrTXAzTDh2Mjc1a1dQalcyWCtNcUk1OURZT3d2TlFOMFpZU3ppWDlwNlV5?=
 =?utf-8?B?Q2VaZlhwVDNrYnlGMW05d2lzOGhtUklXaGtld2swZUN4dlE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0tIUVJydHJCUEJFUzZuQkhZUkNaWmRNYWNEYWNacXRRZXBZaFRCczFWQUIr?=
 =?utf-8?B?Z28xdnhYWlFMSklXdmprRk1OY1QrUG9OZ2dJUWVvTXNmNVB2U3V6dnExdkNi?=
 =?utf-8?B?WUlEOGNKMHVubU5XdDJwWkFMV2FUVDNlK2twU1JNeXQ0REJsVlJzS2Nva2l2?=
 =?utf-8?B?dFJEMmw1bm43UVMyZlJEUDB3UWI0aTIvTlFGUEFWK3hoeTJQRDBSSU9nQ1Zk?=
 =?utf-8?B?eXYrTjRFREtIUTdWY3k2OGpOeUJaVTdRREk4SDZKdnByQVArVW5tU0FidjZr?=
 =?utf-8?B?ZTUzWEtscVJNYzI4RUVzT041cDN5WHZLdm1ZYjdqbVFLc3h1N1ZQZmpjNGVI?=
 =?utf-8?B?M1N4Q28vNjBBWE8yT1A4aStrZjRnU3pFcnBJeXFmOUlDWk5RWDFmMS9wdjZl?=
 =?utf-8?B?RWdCM3pvd3ZwdVlRUjNaQkFqdFpGc0JPNVhEd3ZsYTF2cHlLVVBPdkFsb3Zn?=
 =?utf-8?B?N1ZZY1orTkxVUnhGcGp1Y2tMSGQ4WGdqVS9JMkNyVllRSWtkWGFHUXZQQzZ2?=
 =?utf-8?B?V2pJL0o3dGhFSytaOWZMOXFxK2trS3g2R1lXVzd3Y2laYzRqTmdYSG5ZZnkw?=
 =?utf-8?B?YjdJMWxHTlVlWEpGR1U1SDFxT2ZER1dCOVZmejdHMDFtVFMvU0RYSm1GNDNF?=
 =?utf-8?B?c2xsM0xoajY5QTVtdHlMOXJRWk5kaGcveTdCYk1MdzJIQW9JRWoyWlZmdVNH?=
 =?utf-8?B?SkYxOFFlakZha0RWQ3d0cU1hMFkyMXYydHh1eEMwSWVWLzlFUVFhSjZFa000?=
 =?utf-8?B?N2pBbW1KV25NdXdCUE1jTE9XMUhoTkxIb3hsTkhtLzgyb2xEa09tWDRNR3FC?=
 =?utf-8?B?UnNLaVNoVkJYQi8yQUlsZW9ubWdhR1cxeHZRQmRlN24rMVVscDZtNGtnN0Vl?=
 =?utf-8?B?NDlMOHZEY0Q5cnFROCtEK2R5Z1JxY2ZFd2pFRnJ0d1J5OGxvUE03bDJ1Y2tZ?=
 =?utf-8?B?RzE4ZUZ5SFpFa1dSR2hTblJpWUpwa01MWER0VVY4YnA2WWpsYVdraFlZaGJW?=
 =?utf-8?B?N1U2WE1uSHBnSHpVdkp4cTBWYU1BalVyWFJ1eksyRUVYTXdQaGxGUFRnYnlR?=
 =?utf-8?B?QkRMSzdLZHk5cHc4NzNoSyswaWx5OVB2cXIrVkpHbndSVHBLM0FiMUk3ZXM5?=
 =?utf-8?B?a0RZVGtJRzVGUDAyNEUza1o0dG9MNGdKUWtCd3RwOUZNSXJiRHpocDFiSjRZ?=
 =?utf-8?B?bXB4ZGZENDdpRDU3Y2ZIWFN4bVN4MDIrTmdUNTNpL1d6RWRHNFZkQkNaSlRT?=
 =?utf-8?B?czJJRHVOcDY0Z0R0K2s0K2E1amVGTFZzbXNHOVlLS05kaXNsNEltK1QyOW45?=
 =?utf-8?B?TFVFaURNOHZ3clE3Ukx3YzBMK05ZSXF1VHhXVHdqcDdOWmZ1Q1FuQmdvOE10?=
 =?utf-8?B?WUZEamlVNmtQMUhtT0NBZmpzeG9ucWZQRVZwKzRIbit5UFZFcjBlS3d5Wjdt?=
 =?utf-8?B?YVNXUjk2dTdkWENNMmMzaGE4bmlET2hPR3lwa3U0Sy9Eb0FsNG52bmRuOFNM?=
 =?utf-8?B?cUhoNWsyU2Rvb0NCdUFEMTFEdE5vWk5pODhqbkdJWmduazJJZGtzNzR2b2ZQ?=
 =?utf-8?B?WE9QaUhGUDBzRjcySE5xSUI2K1FxMkxSV1JyczEyemtGQmVGY0x3dWxxUm5y?=
 =?utf-8?B?YWdSTzZQaWJzeUN6VW1GVTFFK3ZveGdOb0t6VzBtb3lVTGp5SUxNOElaYnFL?=
 =?utf-8?B?cUxnUUZLakYvN0V5VGd6OTJ4RjZ3ZXRkajlWQVZGdDFzSVZmbGdONktNNDlV?=
 =?utf-8?B?UTV2RUZZL21IZFQ0UVZaTGFHQkFmajk0dkxrSDQ3VHhkZEwvS3lMdUNqN2k5?=
 =?utf-8?B?S01vWGpzSDVyUG9ZZlIwOFZ1eUx3K2RZNEpETi9KeWtiSGNiL2NlRlNpaDU2?=
 =?utf-8?B?U2lFanBZYmQ2cUV6UURxT2NZNnpkVSs4cDZSVG1CczlnaEdQeHBDVGVOazkz?=
 =?utf-8?B?SkZlTldudlJXSzB3UGpzM3NsRXhna2NSSDA3N0I5dmNyRnl3YlpuUkRiTmtj?=
 =?utf-8?B?TVk0Y3kvd0xNbUhRWXNiQmJPVUkrTXRwTWloVDdyNjRsNXF4dGNxajh6Zndi?=
 =?utf-8?B?K1ZFcjBDRjJsU2orVmFOZ3hxWUhPZE5yc3RXSDZHbVdwbWNpWmk4dStjd3VT?=
 =?utf-8?Q?xl9CCBjswAu8ACX/dTiBTIfes?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1129b52e-2c9b-4246-52fd-08dd184d267a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 12:29:39.3296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F2EBRjc16RLbokHYmjXTn9jKawaqmkIMqkbSH3rZNILwG5aDOJBQ4Cmx2yRgwXx6gM9fPfMgFKYoT2e40+cDAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4852
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgOSwg
MjAyNCA1OjI5IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBK
YW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBCLCBKZWV2YW4gPGplZXZhbi5iQGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzJdIGRybS9pOTE1L2xvYmY6IEFkZCBsb2Jm
IGVuYWJsZW1lbnQgaW4gcG9zdA0KPiBwbGFuZSB1cGRhdGUNCj4gDQo+IE9uIE1vbiwgMjAyNC0x
Mi0wOSBhdCAxMTo1NCArMDAwMCwgTWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4NCj4gPg0KPiA+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU2VudDogTW9uZGF5LCBEZWNlbWJl
ciA5LCAyMDI0IDU6MDQgUE0NCj4gPiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiA+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEIsIEplZXZhbg0K
PiA+ID4gPGplZXZhbi5iQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIg
MS8yXSBkcm0vaTkxNS9sb2JmOiBBZGQgbG9iZiBlbmFibGVtZW50IGluDQo+ID4gPiBwb3N0IHBs
YW5lIHVwZGF0ZQ0KPiA+ID4NCj4gPiA+IE9uIE1vbiwgMjAyNC0xMi0wOSBhdCAxMToxOSArMDAw
MCwgTWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gPiBTZW50OiBNb25kYXksIERlY2Vt
YmVyIDksIDIwMjQgMjowNiBQTQ0KPiA+ID4gPiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiA+ID4gPiBnZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gPiA+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PjsgQiwgSmVldmFuDQo+ID4gPiA+ID4gPGplZXZhbi5iQGludGVsLmNvbT4NCj4gPiA+ID4gPiBT
dWJqZWN0OiBSZTogW1BBVENIIHYyIDEvMl0gZHJtL2k5MTUvbG9iZjogQWRkIGxvYmYgZW5hYmxl
bWVudA0KPiA+ID4gPiA+IGluIHBvc3QgcGxhbmUgdXBkYXRlDQo+ID4gPiA+ID4NCj4gPiA+ID4g
PiBPbiBXZWQsIDIwMjQtMTItMDQgYXQgMTU6MzMgKzA1MzAsIEFuaW1lc2ggTWFubmEgd3JvdGU6
DQo+ID4gPiA+ID4gPiBFbmFibGVtZW50IG9mIExPQkYgaXMgYWRkZWQgaW4gcG9zdCBwbGFuZSB1
cGRhdGUgd2hlbmV2ZXINCj4gPiA+ID4gPiA+IGhhc19sb2JmIGZsYWcgaXMgc2V0LiBBcyBMT0JG
IGNhbiBiZSBlbmFibGVkIGluIG5vbi1wc3IgY2FzZQ0KPiA+ID4gPiA+ID4gYXMgd2VsbCBzbyBh
ZGRpbmcgaW4gcG9zdCBwbGFuZSB1cGRhdGUuIFRoZXJlIGlzIG5vIGNoYW5nZSBvZg0KPiA+ID4g
PiA+ID4gY29uZmlndXJpbmcgYWxwbSB3aXRoIHBzciBwYXRoLg0KPiA+ID4gPiA+ID4NCj4gPiA+
ID4gPiA+IHYxOiBJbml0aWFsIHZlcnNpb24uDQo+ID4gPiA+ID4gPiB2MjogVXNlIGVuY29kZXIt
bWFzayB0byBmaW5kIHRoZSBhc3NvY2lhdGVkIGVuY29kZXIgZnJvbQ0KPiA+ID4gPiA+ID4gY3J0
Yy0NCj4gPiA+ID4gPiA+IHN0YXRlLg0KPiA+ID4gPiA+ID4gW0phbmldDQo+ID4gPiA+ID4gPg0K
PiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+DQo+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKgwqAgfCAyNQ0KPiA+ID4gPiA+ID4gKysrKysr
KysrKysrKysrKysrKysNCj4gPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmjCoMKgwqAgfMKgIDQgKysrKw0KPiA+ID4gPiA+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMyArKysNCj4gPiA+ID4gPiA+
IMKgMyBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4gPg0KPiA+ID4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+ID4gPiA+ID4gPiBpbmRleCA1NWYzYWUxZTY4YzkuLjc1MDYzMzQyYTEwMCAxMDA2NDQN
Cj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5jDQo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYw0KPiA+ID4gPiA+ID4gQEAgLTM2Nyw2ICszNjcsMzEgQEAgdm9pZCBpbnRlbF9hbHBt
X2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBsbmxfYWxwbV9jb25maWd1cmUoaW50ZWxfZHAsIGNydGNf
c3RhdGUpOw0KPiA+ID4gPiA+ID4gwqB9DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gK3ZvaWQg
aW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+
ID4gPiA+ID4gPiAqc3RhdGUsDQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0Yykgew0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPQ0KPiA+ID4gPiA+ID4gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+ID4g
PiA+ID4gPiArwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSA9DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50
ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiA+ID4gPiAr
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiA+ID4gPiA+
ICsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghY3J0Y19zdGF0ZS0+aGFzX2xvYmYp
DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxfZW5j
b2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+ID4gPiB1YXBpLmVuY29kZXJfbWFzaykgew0KPiA+ID4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHA7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaWYgKCFpbnRlbF9lbmNvZGVyX2lzX2RwKGVuY29kZXIpKQ0KPiA+ID4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsN
Cj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiA+ID4gPiA+ICsNCj4g
PiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHBfaXNf
ZWRwKGludGVsX2RwKSkNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfYWxwbV9jb25maWd1cmUoaW50ZWxfZHAsDQo+ID4gPiA+
ID4gPiBjcnRjX3N0YXRlKTsNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFRoaXMgaXMgcmVjb25maWd1
cmluZyBsb2JmIGV2ZW4gaWYgaXQncyBhbHJlYWR5IGNvbmZpZ3VyZWQ/IElzDQo+ID4gPiA+ID4g
dGhhdCB3YW50ZWQ/DQo+ID4gPiA+DQo+ID4gPiA+IGhhc19wc3IgYW5kIGhhc19sb2JmIGFyZSBt
dXR1YWxseSBleGNsdXNpdmUsIHNvIGFscG1fY29uZmlndXJlKCkNCj4gPiA+ID4gd2lsbCBiZSBj
YWxsZWQgb25jZS4NCj4gPiA+DQo+ID4gPiBoYXNfcHNyIGlzIHVucmVsYXRlZC4gQ29uc2lkZXIg
ZS5nLiBjYXNlIHdoZXJlIHhlLmVuYWJsZV9wc3I9MCBpcyBpbg0KPiA+ID4gYm9vdGNtZC4gaGFz
X3BzciBpcyBhbHdheXMgZmFsc2UuIEFMUE1fQ1RMIGlzIHdyaXR0ZW4gd2l0aCBsb2JmDQo+ID4g
PiBlbmFibGVkIG9uIGV2ZXJ5IGNvbW1pdCBpZiBoYXNfbG9iZiBpcyB0cnVlLg0KPiA+DQo+ID4g
Q3VycmVudGx5IFZSUiBmaXhlZCByZWZyZXNoIG1vZGUgY2hlY2sgaXMgbm90IGFkZGVkIGluIHRo
aXMgcGF0Y2gNCj4gPiBzZXJpZXMgd2hpY2ggY2FuIHRha2UgY2FyZSBvZiByZXNldHRpbmcgdGhl
IGhhc19sb2JmIGZsYWcgYXMgd2VsbCwNCj4gPiB0aGFua3MgZm9yIGNhdGNoaW5nLCB3aWxsIGFk
ZCBpbiBuZXh0IHZlcnNpb24uDQo+ID4gSG9wZSB3aXRoIHRoZSBhYm92ZSBjaGFuZ2UgdGhlIGJl
bG93IGNvbW1lbnRzIHdpbGwgYmUgYWRkcmVzc2VkLg0KPiANCj4gUGxlYXNlIG5vdGUgdGhhdCBp
dCBpcyBub3QgYWJvdXQganVzdCByZXNldHRpbmcgdGhlIGZsYWcuIFNvbWVvbmUgaGFzIHRvIHJl
c2V0DQo+IGxvYmYgZW5hYmxlIGJpdCBpbiBBTFBNX0NUTCBhcyB3ZWxsLg0KDQpBZ3JlZSwgd2ls
bCBhZGQgYSBjaGVjayBmb3IgKG9sZF9jcnRjX3N0YXRlLT5oYXNfbG9iZiAmJiAhbmV3X2NydGNf
c3RhdGUtPmhhc19sb2JmKSB0byBjbGVhciB0aGUgYml0ZmllbGQgb2YgQUxQTV9DVEwuDQoNClJl
Z2FyZHMsDQpBbmltZXNoDQo+IA0KPiBCUiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4g
Pg0KPiA+IFJlZ2FyZHMsDQo+ID4gQW5pbWVzaA0KPiA+DQo+ID4gPg0KPiA+ID4gQW5vdGhlciB0
aGluZyBoZXJlIGlzIHRoYXQgbG9iZiBpcyBuZXZlciBkaXNhYmxlZCBhZnRlciBpdCBnZXRzDQo+
ID4gPiBlbmFibGVkPw0KPiA+ID4NCj4gPiA+IFBsZWFzZSBhbHNvIHJldmlldyBjYXNlcyB3aGVy
ZSBsb2JmIG5lZWRzIHRvIGJlIGRpc2FibGVkLiBFLmcuDQo+ID4gPiByZWZyZXNoIHJhdGUNCj4g
PiA+IGNoYW5nZS4gU2VlIGJzcGVjIDcxMDQxLg0KPiA+ID4NCj4gPiA+IEJSLA0KPiA+ID4NCj4g
PiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gPg0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiBB
bmltZXNoDQo+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBCUiwNCj4gPiA+ID4gPg0KPiA+
ID4gPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+
ID4gPiA+ID4gK30NCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+IMKgc3RhdGljIGludCBpOTE1
X2VkcF9sb2JmX2luZm9fc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQNCj4gPiA+ID4gPiA+
ICpkYXRhKQ0KPiA+ID4gPiA+ID4gwqB7DQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0ZTsgZGlmZg0KPiA+ID4g
PiA+ID4gLS0NCj4gPiA+ID4gPiA+IGdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5oDQo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5oDQo+ID4gPiA+ID4gPiBpbmRleCA4YzQwOWIxMGRjZTYuLjJmODYyYjA0NzZh
OCAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5oDQo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uaA0KPiA+ID4gPiA+ID4gQEAgLTEyLDYgKzEyLDggQEAgc3RydWN0IGlu
dGVsX2RwOw0KPiA+ID4gPiA+ID4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gPiA+ID4g
PiA+IMKgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGU7DQo+ID4gPiA+ID4gPiDCoHN0cnVjdCBp
bnRlbF9jb25uZWN0b3I7DQo+ID4gPiA+ID4gPiArc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsN
Cj4gPiA+ID4gPiA+ICtzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4g
PiDCoHZvaWQgaW50ZWxfYWxwbV9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7
DQo+ID4gPiA+ID4gPiDCoGJvb2wgaW50ZWxfYWxwbV9jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLCBAQA0KPiA+ID4gPiA+ID4gLQ0KPiA+ID4gPiA+ID4gMjEsNg0KPiA+
ID4gPiA+ID4gKzIzLDggQEAgdm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3Ry
dWN0IGludGVsX2RwDQo+ID4gPiA+ID4gPiAqaW50ZWxfZHAsDQo+ID4gPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gPiA+ID4gPiAqY29ubl9zdGF0
ZSk7DQo+ID4gPiA+ID4gPiDCoHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4g
PiA+ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ID4gPiArdm9pZCBpbnRlbF9hbHBtX3Bvc3Rf
cGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiA+ID4gPiA+ICpzdGF0
ZSwNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPiA+
ID4gPiA+IMKgdm9pZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nv
bm5lY3Rvcg0KPiA+ID4gPiA+ID4gKmNvbm5lY3Rvcik7DQo+ID4gPiA+ID4gPiDCoGJvb2wgaW50
ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ID4gPiAq
aW50ZWxfZHApOw0KPiA+ID4gPiA+ID4gwqBib29sIGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9z
dXBwb3J0ZWQoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ID4gPiAqaW50ZWxfZHApOyBkaWZmIC0t
Z2l0DQo+ID4gPiA+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ID4gPiA+ID4gPiBpbmRleCA0ODA1YmY2ODJkNDMuLmZmZDk2YjE4N2U1ZSAx
MDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gPiA+ID4gQEAgLTU1LDYgKzU1LDcgQEANCj4gPiA+
ID4gPiA+IMKgI2luY2x1ZGUgImk5eHhfcGxhbmUuaCINCj4gPiA+ID4gPiA+IMKgI2luY2x1ZGUg
Imk5eHhfcGxhbmVfcmVncy5oIg0KPiA+ID4gPiA+ID4gwqAjaW5jbHVkZSAiaTl4eF93bS5oIg0K
PiA+ID4gPiA+ID4gKyNpbmNsdWRlICJpbnRlbF9hbHBtLmgiDQo+ID4gPiA+ID4gPiDCoCNpbmNs
dWRlICJpbnRlbF9hdG9taWMuaCINCj4gPiA+ID4gPiA+IMKgI2luY2x1ZGUgImludGVsX2F0b21p
Y19wbGFuZS5oIg0KPiA+ID4gPiA+ID4gwqAjaW5jbHVkZSAiaW50ZWxfYXVkaW8uaCINCj4gPiA+
ID4gPiA+IEBAIC0xMTkwLDYgKzExOTEsOCBAQCBzdGF0aWMgdm9pZA0KPiA+ID4gPiA+ID4gaW50
ZWxfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9wb3N0X3Bs
YW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4g
PiA+ID4gPiArDQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZnJvbnRidWZmZXJf
ZmxpcChkZXZfcHJpdiwgbmV3X2NydGNfc3RhdGUtDQo+ID4gPiA+ID4gPiA+IGZiX2JpdHMpOw0K
PiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAobmV3X2NydGNfc3Rh
dGUtPnVwZGF0ZV93bV9wb3N0ICYmIG5ld19jcnRjX3N0YXRlLQ0KPiA+ID4gPiA+ID4gPiBody5h
Y3RpdmUpDQo+ID4gPiA+DQo+ID4NCg0K
