Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252C4CB8143
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 08:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB03F10E53F;
	Fri, 12 Dec 2025 07:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jrC4TYQa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E55810E53F;
 Fri, 12 Dec 2025 07:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765523501; x=1797059501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oVBekxEpxZyodik0ALK1vZ+RCqhk5LuY9Kifp+rIREc=;
 b=jrC4TYQaKOgJ/Z39ozKjFyo8MIAHgB57rKwMWO6zDSZYLm+b7L3GpH7B
 S543ze9tx20wewh6BLpOBWyZfCZ2ewNxc14pJP2+o1y1D47Xul6gwsMhM
 9bOxVb71ejkQVUXucElj1ChaAaAEweRBKwlIHN+jrYDM8DrtiBNFv4ZRO
 3qcF2mueDxGew413yPv1ww0IM5af4EQbgvwZToyCxvgzuhT4HPs5jU9hI
 I+owv0LVXzvA2/aEjK48uKinsOdjJW1iAgTbkRSjQMl1pJhCZhvXSKoFF
 I7U7H61payQTjdLYYVMhNoTPxFX2SEAx6AsJaNXBg8EJpyU+fVTaahiVg g==;
X-CSE-ConnectionGUID: ncEaY5b2StCXfH7NS85J2g==
X-CSE-MsgGUID: zTO1wOTIQ0Sv8fsCJBFqdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67470349"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67470349"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 23:11:39 -0800
X-CSE-ConnectionGUID: fKQZBxntQ4WXDze1RZHbTw==
X-CSE-MsgGUID: r2EMEZCLQIyxdrQ8mX5R+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="202094298"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 23:11:36 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 23:11:34 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 23:11:34 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.33) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 23:11:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jmv46ANM2vjp0SVZtKWjfqhPDrArX5TbSQshqDeCV6Xg3FqvBV5TkB31Cwy+BHRZY/jHbmA3E3KheTtEC65+TJAw7luUkMzyNfLZ9Qt12KLvKy05ompMYdeVhN3pmBFDN4CB4UQ5umO27JjCYb/Mx1clYaciN7lUdEJ/hwiPSMGrUUu4l7BSl79xzB6EznI+sl4IyDppKq4f3spSg0q1mtzVkITH/AFLxBxBOHstIFq4qX5OpTCfghMEZ2t9opsL2TTSJaTsaBiUXjqCM+d1yDz5TvpDiMtDwWmB16sI5rnA/fosZGmyEXtGUnyOfsErnY0hTqLS2Sy0dAbXTMGAnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oVBekxEpxZyodik0ALK1vZ+RCqhk5LuY9Kifp+rIREc=;
 b=SE9bAIApvI1/V3BKTN+/kDTtUSPvH1ewZuSiSxHCooOKKynYM//QaX4KRbwiaEl5gFJzn/FE+3FBCov5QJDRZciiSvrKBuLy68aH3qSVxXo/0BQoTSEZFh+sREUAkWVh0gZT2xvv+/erp0KuTEG4yhwc3IjeaX892xtqhF/RaQQ18ioCJwaZNNxPcniC95TxwBh5L2fNtrj06ZPXwuOVCXE7F7RL9+3MLEbuipQzUfzKvSJ1H+dnmb/4TFCo/y2Phij+tNcW0COMZhNk2QBewomUzo/hH8PVrCkqtj2944RKbrjwHyXQwSRmi58MUHoOceI102g6sAJHYy/ocMSpog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5950.namprd11.prod.outlook.com (2603:10b6:510:14f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 07:11:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 07:11:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Dibin
 Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 9/9] drm/i915/display: Add DC3CO disable handling for psr2
Thread-Topic: [PATCH 9/9] drm/i915/display: Add DC3CO disable handling for psr2
Thread-Index: AQHcaP9XuPBL7V7Jk0iIbq0RC9ebirUdmw0A
Date: Fri, 12 Dec 2025 07:11:25 +0000
Message-ID: <212474a0884c026477653ee664c637506defadeb.camel@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-10-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20251209113332.2770263-10-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5950:EE_
x-ms-office365-filtering-correlation-id: cffb4d3e-12d2-4c1b-8de4-08de394da9d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NDVBcmFoekRMS0JtcDhybHQzaVo5UCtKTWR6WUorUE1QR3RNV0ZLOERqZlk5?=
 =?utf-8?B?bGxHdzRqYU55Y1huaTNyZ2VtRm4vVGtxRENKV0xsT1RwdWV4d2RoSXpEbUtT?=
 =?utf-8?B?V3FNaU0xdFd2ZXgybmJtY09ad29hYWhLRXY0WDZaWkdZU25INW5KQlBzblps?=
 =?utf-8?B?elcwdUZYL1M4SmZpU0J1bDJ2eElVWVFiY3B6Skx6M243bUNFelg5dkRHZE1t?=
 =?utf-8?B?UG1yWUNQcEw4MndqMUlPaDU3L0pPQ0xpTWg5Y0kzVmtsYjlPMjJYVGdBTU9r?=
 =?utf-8?B?ZTJuVjVFUHZBWnZ2S1g4alRLb3VMOVpET0FhemxPTENkb1RoV00rc1NkaGRp?=
 =?utf-8?B?RGlWdUZwS2t2UWVackF1NFh4b3A0VUNSUEpndTRGTTBvWjdvaUdleUsyYjI5?=
 =?utf-8?B?em9UYnRlbTVzSGU5a2hkK0lRT0pudEFXWWh1TGtuRlVITkJCTW9ENlN6UFN0?=
 =?utf-8?B?R21nZUROUnBuNnE4MjArdFJ1K0ZnN3RCMXVEb2xpdUUwRTVZMVhKTkp3cUhz?=
 =?utf-8?B?NGZiUVhPLytvVEtqaTcxamVVMmtlcjI3bXNXbW1kbTg3RWdIdzF1Uy8xOG1S?=
 =?utf-8?B?UnJKTmNkTXNwL3lWUGYxR2NCZEVwSUV6cXdsZHoyTmZyTTVzeElhTGlSZm9V?=
 =?utf-8?B?NzVQNmhaY3E0MTV2ZGE5ME45TGQ2RmtFekwvUEdQMTdDRktEM01mNkthRlVS?=
 =?utf-8?B?YjRQQmN4SUsyN2hBT0d2NFVkYThpYm5BaWxmaEs1T1hFZ0NTY1VlTzUrZGpo?=
 =?utf-8?B?MFg5d24zaUFYMjhZek5SeWVNUlRuUDZmUlFWN1lEZyt3SGc2cUYyaWFWU2lM?=
 =?utf-8?B?TW1LSXFQTGdEQjJ6NE90V1hIYjNQcGE5d3JpVW54eTlpNDcwSWhrUzNDZzVV?=
 =?utf-8?B?dHBvdXJmbUhXamdqaTNyQy83eFVrTnc5OXVBQk03MGdPZG8wcUVmK1l1SjF0?=
 =?utf-8?B?OTNZQXk1SVZWeUhIUWlLWE14RDJQcUZGZG9jOGMwRUV2RnU1S2oxcEdJcTdu?=
 =?utf-8?B?MjlXalloTlpCTXdXZUFjU3ZJaWk1ZzZyQXo5aytjb3EvSytBeXFqdnpzZ0RQ?=
 =?utf-8?B?UG1FcytJcXYzSmlFU3BibVl4Wmx3Z1cwNkV2bmlXOTRVU1RXZnRsQnFPWnRJ?=
 =?utf-8?B?WVFzcFdabVpXSElCV2hPY3o1OUc2SWN6L1JJeTAxdFJ1NGsyTGVjL0ZtZlM5?=
 =?utf-8?B?dVdBNVlmdmVwNFhPYVYraTZhWThoaFhLSUlpYXp2VjcxQXdtL0lRS2R6bHlV?=
 =?utf-8?B?cjRFUzc3cUJIN1AxUkx6WEhCRkg0Nk9HdVNFY1oyd2hUeUZmalpYZVhhK2pD?=
 =?utf-8?B?Q3J0cGIzUWFXc1ZOWENTTUd0U0xkeFYvRW5GRUxqaWhzczJ2RGU0Q0hXVXRj?=
 =?utf-8?B?MlJYV3VBVVczbHBLTFpqdWlFL0wyY1lQdmhIWHY4MU5OQ0pvNFQ1bUkra3VT?=
 =?utf-8?B?STJNMkxhRllQUGswZFZ3d3RBbUJOTlhPbm5OTURJTFRqdnoxaldURmZtSXo1?=
 =?utf-8?B?VE9tcG9PR2cyaUJxaWxLWk0rZWdnZ09sb0pqc1BsVm9Ld0tvWTZoSWdudk52?=
 =?utf-8?B?Wk5zZ2V1UXRtZW1IUElzcnNnc2tYZjBwVElMMGt5TkdpUjRiVjR2bFNBUndF?=
 =?utf-8?B?Z2hUNnlBd2JSOEV6NXhhbUFQQmFDY1hpZ1VtOEo5WjVqMG1TdDNwT2FLNVFO?=
 =?utf-8?B?L1JLSjg3SmxYa0IwMjZJdXNyeWlnSTI5UjhMQTRrVzVyaW5ReElJZXcvUmpD?=
 =?utf-8?B?c0NoUXcxK2xKdmFYeUw2RXdXekRnRzBNUUh2TmhGeWIwc1ErdTVlLytVNWMr?=
 =?utf-8?B?VGlmamI1WnFma25YUUFUSXNYK3VyV3E5Tjc4YlhyNkgrdEdVMEdrbStBei9L?=
 =?utf-8?B?WE1ZUzB5YnNPbWd1L2FSVHFJTFlUWlp4c253QTY0elQvdGwxMUplV2sra0lm?=
 =?utf-8?B?TTEvNHZxUnJmN2hZNFpNZisxYWNqbmg1SS9JaWVHUU1OazRHZ0pvNERyVkYx?=
 =?utf-8?B?bjJCd2hKVHkxMmJpVFJaTlRZS3d2Z3MrcHAxbTgwQUYwV0RRRDhSa3VwUVZK?=
 =?utf-8?Q?G6S5N+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGV6ODRUWFBJRjd2WXduZm05aVc1UEhDMnFqZE5sVnh0endQcEluaHk2MVpL?=
 =?utf-8?B?akJVYitxdEcyVHg5YVhvVE5wQlVaTFpscGE1WXRrek5lMVp6M3VyWFo2SFdV?=
 =?utf-8?B?YXlHdGEvVzE2a1JocURVcm9FVXpOb1BpUzMwNjRaWWQ1WEhTbVVSMXdzNGhz?=
 =?utf-8?B?TmtXV3FqWXFxWnBwdGxXa2VERWVML0FhdWpIc0ZYUU1LM0p0QWdOMVkrZDdD?=
 =?utf-8?B?NjVEUUNFR0kzMnFFeVRETnhmQkdSYnFUaGE2UjlLN09FMW5kUXQvMGlSU1ZN?=
 =?utf-8?B?R0pLRjNBbkdmZTdYT1FLaW9WRmVyQ1hSclljR0ZTWWZBV3FOOHZyS0pCNko5?=
 =?utf-8?B?eWpmbVNGWVkvdStnZFpUa0JWUXRnWWJpME9pdlFOTWNmMXNtSjNjSkVMUCtm?=
 =?utf-8?B?dk9lVEVDci9JR1BaNHhMNktHMUhFNjVBTFlxeXAzTGl3OHZ3MHpNalVSWUNv?=
 =?utf-8?B?Vkk4K2JMeTZtcXJ6dHQrejU1SS8zZlB2L1VRRDRXRThvYjVpTGora213dTRn?=
 =?utf-8?B?eGFqcVlBVHErc05ONG5CMVpteWVqdzI2OUdPRU9iak9XTkpDMlpWUHNJT0Y0?=
 =?utf-8?B?QVpmTXMvckpubEJSdlNUcGp6K29GTnBUV1hla0l1WXdoOTU1K1E2SUl1S1V4?=
 =?utf-8?B?b2JYMXRnLzEyaDhZek9RaGZsQ2k1RmdDNzVhcW00RVFEdi82ZDlOSk9rb2Zz?=
 =?utf-8?B?c1U5aGNwVUxlNUhNeEdYUThEOFh1czVNeFhORVU5YnJVNklaS2ppS2FCUXA2?=
 =?utf-8?B?bUxOYUFiLytwSHcxMnk4TGJpVkRudXBoWXQ3eGZnaWlFVVBOSVlEeDVoRmRu?=
 =?utf-8?B?MGNqRHBJczhXQTN0NHY0TmZzWVUrU1FEeU0zbTFhMFB5NGp2VGt1OVZMcEpW?=
 =?utf-8?B?aXFQeXd1emRmbVIrb081ck1rSWhsWkI3azZqV293STJsekg3MlJTSTR1VVBD?=
 =?utf-8?B?K3ZUd3VPS2YxM0VPSXFVdnlXQlh2N3FQZWp0b3BMeUJWcEtlbkF1aGxaK2lq?=
 =?utf-8?B?K0I2TkNZY2twUmo3TUl1Tm95dDE1REF4dFJKVjFHa25xMG1MdTE3QWphZ2N1?=
 =?utf-8?B?RkpDSFA5ZVFiRy95VUFqd3JtZzJ5QjlXbmVsYXFPSkVpQnBIanpMWmpjVnc4?=
 =?utf-8?B?NTMzencxeENualFPSWNhNjN1THJ2S3Q4S2JybUNrNDU1VTBQRFdISE5hdnlM?=
 =?utf-8?B?eFlwMVk5UjJra2FOTjBHaldKbG9ldnF2TVQ1a3ZZUDVzTWNRTWhBZmFWL1Nr?=
 =?utf-8?B?MmluQkQ3V2VXTHNNTmIvNkxIT0dzTjkvaEgvSkVOQjgyaUVuU2xqY3pHQW9n?=
 =?utf-8?B?bGl2MVlMT01zWVNyZFJWWUllLzRhY0tjK2V4M2oyTC9oQ0YybjZjSjhINW1s?=
 =?utf-8?B?WDRweFdveUtXS3hnc1ZxVjJkVTV0UmlJeVFOQlk1bndya0NZdjQ2OTk4V0Na?=
 =?utf-8?B?aEsyNVFnSTFncnJTay9NTDRtTXY0cktGUGFKakpmb25sN2tYTWltNUluckNh?=
 =?utf-8?B?bkRoZUxNVm1YZnlrNWlsN25jbWlaMWg2MndCU3N6eWo2T0EvM1JvQStRQytR?=
 =?utf-8?B?LzhOYnRFR1pwbjBiMVJSTmlkTWpEUW9EbWFQSHdINVBNd3QzRXVETlQ4Q3FS?=
 =?utf-8?B?amtYWGpLWXdDaDhCb09xNmQyUFVKclNFd0NWSy9weFZ4TlZ1ZnBGRU9JdGRQ?=
 =?utf-8?B?OTgrbG0yczJDTDRINlJSQ1NDRm5oTC9nVDE1V2tqNDg3SzVBbFE1NVZ0SEtu?=
 =?utf-8?B?ZVhNTGxXOHpET1g3bWhwcEJNeU5pbHZmYVZDNENsV0VQVjUzUnVtN3Rtb2FO?=
 =?utf-8?B?am9BNkg5d3ZGK25heHpzNWhCRmplSGduYkRBMzFRSDdJUkk4V1liQldhS0Zp?=
 =?utf-8?B?OUVSUHhLOW9hbEJCelRQTjhMMVFTcGZBNUxlRy92OGQxS0ZMWHZ5MVJQWXUw?=
 =?utf-8?B?a0RCNHhKUW8yd0pwa2JPMDNoUDRYQ05PYW1RNEU2VFlmdzh3emYxSGtiTWZV?=
 =?utf-8?B?NW43SlRoK2hBZUxjUmFRZGE0NXR6NVVzWkg4Qk9XYnhndFFPdWNIQnJhbGMy?=
 =?utf-8?B?YjhCL2krR0lia2VKTDFoMGF5TFYxSVRVa0VvSW9CQUJKc1AwejdmZ0lqbjh3?=
 =?utf-8?B?L3JQelY2V05TYWVWTy9jZkEvMGZYVjkyOTVFb1RFd294RFU3dmdVZkptTGk3?=
 =?utf-8?B?dGIyRFJ4RmlDZytza0JJL3ZXTUdSdWRRVlQwVmIxcGc4U1lLUjQ5akt4V3hl?=
 =?utf-8?B?eXFwTlZZM1pjNFNOcGUzOEkxQTF3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E58BC0379BCEF34C92FD9C6CDFB2384C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cffb4d3e-12d2-4c1b-8de4-08de394da9d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 07:11:25.7177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eJ7XSCUxv1QfWfR4dWijVIlGHpk/NmlkTYgGgz0EjnTFmvzMpdxUFJ1Q4QwAmXehHPMpNdzPdqsZnq+7eI6VHpMR2o6Fg/D08aeMGyrIHWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5950
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

T24gVHVlLCAyMDI1LTEyLTA5IGF0IDE3OjAzICswNTMwLCBEaWJpbiBNb29sYWthZGFuIFN1YnJh
aG1hbmlhbiB3cm90ZToNCj4gZGM2IHNob3VsZCBiZSBlbmFibGVkIGluc3RlYWQgb2YgZGMzY28g
YWZ0ZXLCoCA2IGlkbGUgZnJhbWVzDQo+IHdoaWxlIGluIHBzcjIuKHJlIGVuYWJsZSBwYXJ0IG9m
IHRnbCBkYzNjbyBoYW5kbGluZykNCg0KVGhpcyBpcyBmb3IgUFNSIGFuZCBwcmV0dHkgbXVjaCBm
b2xsb3dpbmcgZXhpc3RpbmcgKGRpc2FibGVkKSBUR0wgREMzQ08NCmNvbnRyb2wuIFdoYXQgaXMg
eW91ciBpZGVhIGhvdyBzZWxlY3Rpb24gYmV0d2VlbiBEQzYgYW5kIERDM0NPIHdpbGwgYmUNCmRv
bmUgaW4gY2FzZSBvZiBMT0JGPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IERpYmluIE1vb2xha2FkYW4gU3VicmFobWFuaWFuDQo+IDxkaWJpbi5tb29s
YWthZGFuLnN1YnJhaG1hbmlhbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgMSArDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA3OA0KPiArKysrKysr
KysrKysrKysrKystDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCA3OCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCAyN2Y2OWRmN2VlOWMuLjZmZjUzY2Q1ODA1
MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE3NTksNiArMTc1OSw3IEBAIHN0cnVjdCBpbnRlbF9wc3Ig
ew0KPiDCoAlib29sIHBhbmVsX3JlcGxheV9lbmFibGVkOw0KPiDCoAl1MzIgZGMzY29fZXhpdGxp
bmU7DQo+IMKgCXUzMiBkYzNjb19leGl0X2RlbGF5Ow0KPiArCXN0cnVjdCBkZWxheWVkX3dvcmsg
ZGMzY29fd29yazsNCj4gwqAJdTggZW50cnlfc2V0dXBfZnJhbWVzOw0KPiDCoA0KPiDCoAl1OCBp
b193YWtlX2xpbmVzOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gaW5kZXggMThiZjQ1NDU1ZWEyLi40YmU3MDlkMWQzMjQgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTE1Nyw2ICsxMTU3LDc4IEBA
IHN0YXRpYyB2b2lkIHBzcjJfcHJvZ3JhbV9pZGxlX2ZyYW1lcyhzdHJ1Y3QNCj4gaW50ZWxfZHAg
KmludGVsX2RwLA0KPiDCoAkJwqDCoMKgwqAgRURQX1BTUjJfSURMRV9GUkFNRVMoaWRsZV9mcmFt
ZXMpKTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgdm9pZCBwc3IyX2RjM2NvX2Rpc2FibGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiArCXN0cnVjdCBpOTE1X3Bv
d2VyX2RvbWFpbnMgKnBvd2VyX2RvbWFpbnMgPSAmZGlzcGxheS0NCj4gPnBvd2VyLmRvbWFpbnM7
DQo+ICsNCj4gKwlpZiAoKHBvd2VyX2RvbWFpbnMtPmFsbG93ZWRfZGNfbWFzayAmDQo+IERDX1NU
QVRFX0VOX1VQVE9fREMzQ08pICE9IERDX1NUQVRFX0VOX1VQVE9fREMzQ08pDQo+ICsJCXJldHVy
bjsNCj4gKw0KPiArCWludGVsX2Rpc3BsYXlfcG93ZXJfc2V0X3RhcmdldF9kY19zdGF0ZShkaXNw
bGF5LA0KPiBEQ19TVEFURV9FTl9VUFRPX0RDNik7DQo+ICsJLyogVG9kbyByZXN0b3JlIFBTUjIg
aWRsZSBmcmFtZXMgLCBBTFBNIGNvbnRyb2wqLw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBw
c3IyX2RjM2NvX2Rpc2FibGVfb25fZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAr
ew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShp
bnRlbF9kcCk7DQo+ICsJc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyAqcG93ZXJfZG9tYWlucyA9
ICZkaXNwbGF5LQ0KPiA+cG93ZXIuZG9tYWluczsNCj4gKw0KPiArCWlmICgocG93ZXJfZG9tYWlu
cy0+YWxsb3dlZF9kY19tYXNrICYNCj4gRENfU1RBVEVfRU5fVVBUT19EQzNDTykgIT0gRENfU1RB
VEVfRU5fVVBUT19EQzNDTykNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJY2FuY2VsX2RlbGF5ZWRf
d29yaygmaW50ZWxfZHAtPnBzci5kYzNjb193b3JrKTsNCj4gKwlpbnRlbF9kYzNjb19zb3VyY2Vf
dW5zZXQoZGlzcGxheSwgREMzQ09fU09VUkNFX1BTUjIpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMg
dm9pZCBwc3IyX2RjM2NvX2Rpc2FibGVfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+
ICt7DQo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+ICsJCWNvbnRhaW5lcl9vZih3
b3JrLCB0eXBlb2YoKmludGVsX2RwKSwNCj4gcHNyLmRjM2NvX3dvcmsud29yayk7DQo+ICsNCj4g
KwltdXRleF9sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiArCS8qIElmIGRlbGF5ZWQgd29y
ayBpcyBwZW5kaW5nLCBpdCBpcyBub3QgaWRsZSAqLw0KPiArCWlmIChkZWxheWVkX3dvcmtfcGVu
ZGluZygmaW50ZWxfZHAtPnBzci5kYzNjb193b3JrKSkNCj4gKwkJZ290byB1bmxvY2s7DQo+ICsJ
LyogZW5hYmxlIERDNiBhZnRlciBpZGxlIGZyYW1lcyovDQo+ICsJcHNyMl9kYzNjb19kaXNhYmxl
KGludGVsX2RwKTsNCj4gKw0KPiArdW5sb2NrOg0KPiArCW11dGV4X3VubG9jaygmaW50ZWxfZHAt
PnBzci5sb2NrKTsNCj4gK30NCj4gKw0KPiArLyoNCj4gKyAqIFdoZW4gd2Ugd2lsbCBiZSBjb21w
bGV0ZWx5IHJlbHkgb24gUFNSMiBTL1cgdHJhY2tpbmcgaW4gZnV0dXJlLA0KPiArICogaW50ZWxf
cHNyX2ZsdXNoKCkgd2lsbCBpbnZhbGlkYXRlIGFuZCBmbHVzaCB0aGUgUFNSIGZvcg0KPiBPUklH
SU5fRkxJUA0KPiArICogZXZlbnQgYWxzbyB0aGVyZWZvcmUgcHNyMl9kYzNjb19mbHVzaF9sb2Nr
ZWQoKSByZXF1aXJlIHRvIGJlDQo+IGNoYW5nZWQNCj4gKyAqIGFjY29yZGluZ2x5IGluIGZ1dHVy
ZS4NCj4gKyAqLw0KPiArDQo+ICtzdGF0aWMgdm9pZA0KPiArcHNyMl9kYzNjb19mbHVzaF9sb2Nr
ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgdW5zaWduZWQgaW50DQo+IGZyb250YnVmZmVy
X2JpdHMsDQo+ICsJCQllbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pDQo+ICt7DQo+ICsJc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4g
KwlzdHJ1Y3QgaTkxNV9wb3dlcl9kb21haW5zICpwb3dlcl9kb21haW5zID0gJmRpc3BsYXktDQo+
ID5wb3dlci5kb21haW5zOw0KPiArDQo+ICsJaWYgKCEocG93ZXJfZG9tYWlucy0+YWxsb3dlZF9k
Y19tYXNrICYNCj4gRENfU1RBVEVfRU5fVVBUT19EQzNDTykpDQo+ICsJCXJldHVybjsNCj4gKw0K
PiArCWlmICghaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgfHwNCj4gKwnCoMKgwqAg
IWludGVsX2RwLT5wc3IuYWN0aXZlKQ0KPiArCQlyZXR1cm47DQo+ICsJLyoNCj4gKwkgKiBBdCBl
dmVyeSBmcm9udGJ1ZmZlciBmbHVzaCBmbGlwIGV2ZW50IG1vZGlmaWVkIGRlbGF5IG9mDQo+IGRl
bGF5ZWQgd29yaywNCj4gKwkgKiB3aGVuIGRlbGF5ZWQgd29yayBzY2hlZHVsZXMgdGhhdCBtZWFu
cyBkaXNwbGF5IGhhcyBiZWVuDQo+IGlkbGUuDQo+ICsJICovDQo+ICsJaWYgKCEoZnJvbnRidWZm
ZXJfYml0cyAmDQo+ICsJwqDCoMKgIElOVEVMX0ZST05UQlVGRkVSX0FMTF9NQVNLKGludGVsX2Rw
LT5wc3IucGlwZSkpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwltb2RfZGVsYXllZF93b3JrKGRp
c3BsYXktPndxLnVub3JkZXJlZCwgJmludGVsX2RwLQ0KPiA+cHNyLmRjM2NvX3dvcmssDQo+ICsJ
CQkgaW50ZWxfZHAtPnBzci5kYzNjb19leGl0X2RlbGF5KTsNCj4gK30NCj4gKw0KPiDCoHN0YXRp
YyBib29sIGludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAN
Cj4gKmludGVsX2RwLA0KPiDCoAkJCQkJwqDCoMKgwqDCoCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqB7DQo+IEBAIC0yMTE3LDcgKzIxODksNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wc3JfZXhpdChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiDCoAkJ
aW50ZWxfZGVfcm13KGRpc3BsYXksIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+ID5wc3IudHJh
bnNjb2RlciksDQo+IMKgCQkJwqDCoMKgwqAgVFJBTlNfRFAyX1BBTkVMX1JFUExBWV9FTkFCTEUs
IDApOw0KPiDCoAl9IGVsc2UgaWYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKSB7
DQo+IC0NCj4gKwkJcHNyMl9kYzNjb19kaXNhYmxlX29uX2V4aXQoaW50ZWxfZHApOw0KPiDCoAkJ
dmFsID0gaW50ZWxfZGVfcm13KGRpc3BsYXksDQo+IMKgCQkJCcKgwqAgRURQX1BTUjJfQ1RMKGRp
c3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSwNCj4gwqAJCQkJwqDCoCBFRFBfUFNSMl9FTkFCTEUs
IDApOw0KPiBAQCAtMjI1OSw2ICsyMzMxLDcgQEAgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZShzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoA0KPiDCoAltdXRleF91bmxvY2soJmludGVs
X2RwLT5wc3IubG9jayk7DQo+IMKgCWNhbmNlbF93b3JrX3N5bmMoJmludGVsX2RwLT5wc3Iud29y
ayk7DQo+ICsJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZpbnRlbF9kcC0+cHNyLmRjM2NvX3dv
cmspOw0KPiDCoH0NCj4gwqANCj4gwqAvKioNCj4gQEAgLTIyODksNiArMjM2Miw3IEBAIHZvaWQg
aW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgCW11dGV4X3Vu
bG9jaygmcHNyLT5sb2NrKTsNCj4gwqANCj4gwqAJY2FuY2VsX3dvcmtfc3luYygmcHNyLT53b3Jr
KTsNCj4gKwljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnBzci0+ZGMzY29fd29yayk7DQo+IMKg
fQ0KPiDCoA0KPiDCoC8qKg0KPiBAQCAtMzQ3NSw2ICszNTQ5LDcgQEAgdm9pZCBpbnRlbF9wc3Jf
Zmx1c2goc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+IMKgCQlpZiAob3JpZ2lu
ID09IE9SSUdJTl9GTElQIHx8DQo+IMKgCQnCoMKgwqAgKG9yaWdpbiA9PSBPUklHSU5fQ1VSU09S
X1VQREFURSAmJg0KPiDCoAkJwqDCoMKgwqAgIWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hf
ZW5hYmxlZCkpIHsNCj4gKwkJCXBzcjJfZGMzY29fZmx1c2hfbG9ja2VkKGludGVsX2RwLA0KPiBm
cm9udGJ1ZmZlcl9iaXRzLCBvcmlnaW4pOw0KPiDCoAkJCWdvdG8gdW5sb2NrOw0KPiDCoAkJfQ0K
PiDCoA0KPiBAQCAtMzUzMyw2ICszNjA4LDcgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoAkJaW50ZWxfZHAtPnBzci5saW5rX3N0YW5kYnkgPSBj
b25uZWN0b3ItDQo+ID5wYW5lbC52YnQucHNyLmZ1bGxfbGluazsNCj4gwqANCj4gwqAJSU5JVF9X
T1JLKCZpbnRlbF9kcC0+cHNyLndvcmssIGludGVsX3Bzcl93b3JrKTsNCj4gKwlJTklUX0RFTEFZ
RURfV09SSygmaW50ZWxfZHAtPnBzci5kYzNjb193b3JrLA0KPiBwc3IyX2RjM2NvX2Rpc2FibGVf
d29yayk7DQo+IMKgCW11dGV4X2luaXQoJmludGVsX2RwLT5wc3IubG9jayk7DQo+IMKgfQ0KPiDC
oA0KDQo=
