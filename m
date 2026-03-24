Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJhAKJ2FwmlVegQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 13:37:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EBA30864C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 13:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFD010E695;
	Tue, 24 Mar 2026 12:37:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUh9pE63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D05010E695;
 Tue, 24 Mar 2026 12:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774355866; x=1805891866;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4dMfXTOl95IfYBZ7Gln76X2804QeMn5vbjwpqKwXfJk=;
 b=KUh9pE63N4WERjxs7GIvzADW4YWhJGhQpNcY74m2xG6rdEZL6DCV0ZRe
 gEglhf3EVVZmAQXamEkxg1JAT3CfXzTOxp+JvmY72O4XNakcTmhQ4VbaL
 z3KsOMFBpVfKMLi0Ot0zPln9LSnYeHp5TrwBB0kup3W+nb4B1ofeCJ4yq
 BBmmVlYPMMKMA8spbAO+iWB7Cw3NNLfksIqnu/zvVQmOnHdwF11+Z02hK
 3KVBOmK11yUQh5DjeeeNby/BrnKYCciu/tw3YNONaiUFwr2ObdZ30kWr0
 Jm1PvAIEJwTzDZRNq2V+E2/OESvW6SmRKLuOUZi1p6/Q7AaKhWupLYe8Y Q==;
X-CSE-ConnectionGUID: IqzVHZwgSu2tsYXUMYQTNg==
X-CSE-MsgGUID: Tf1DeqTxTquBEQrI1c50ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="79277531"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="79277531"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 05:37:46 -0700
X-CSE-ConnectionGUID: n1Oqt8CYR2i53X00nYTzag==
X-CSE-MsgGUID: b3s/ebsFRJKYy6+b54vZwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224309355"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 05:37:45 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 05:37:44 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 05:37:44 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 05:37:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QHhk8Z8r5Ie1oheLPh7/E3dy8wswZERnmbfDu0BcuhRk9PZb88aMpUpLAXIcMI2uA5kFQBhckuDKmmjq2EkGYHYoF5VrIL9IIwqcxCmW1zUUNiR69zDwXifFEEEoLQR4d3imvt1y3rr2K5YjELd733PMkQQBnlPyY3/WW9YJxqGEc+BuOJx9bJorxXVvFDLMWVP5bximpuOhgqePcIDZnkDIli/+KvVkC0p7ZE8+W1wsJhgZq1YyXczw9tFBKU2zIUCGV4b1XQpPPkPhBxd/62f3uL2GSjBNpPhGAo81gFLoKRQG3Y6n42LTmiU80APYLiwgAb9g/7tAtOD94nKluA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4dMfXTOl95IfYBZ7Gln76X2804QeMn5vbjwpqKwXfJk=;
 b=ZAmVgNIchaAvvylYebuz+1ObAtiIm2Y5nw7dWt3/Wi1RE2fjvOgrPkQsjRzNKzD7X/Qwg4tMMF17Tw0l5B9L2T8m4bS00LDeyk8NkfYtrOzNp52Wt+gLfpTzqdlVYQfz6Uhnl7F0hETdGeKWpkLCb5tM716D/HEEl9I/ftt7KlgAzwVi3DBgAMrjz+GSp946cv+9Mzqay12tFjIgJngcur8diXpnN1iIRa+VxeH7FKeoI2t811NJAeXg+fD/3eD1NLZMkFl5SaYC0IM7VJcXQMnVfq/Ojh00O94+rOSDoF1mW5AQBsirujTYiEEeK07Jr/Etbnwhy5RXL8kmpMkjVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BL3PR11MB6386.namprd11.prod.outlook.com
 (2603:10b6:208:3b6::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 12:37:40 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d%2]) with mapi id 15.20.9723.014; Tue, 24 Mar 2026
 12:37:40 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH] drm/i915/psr: Fixes for Dell XPS DA14260 quirk
Thread-Topic: [PATCH] drm/i915/psr: Fixes for Dell XPS DA14260 quirk
Thread-Index: AQHcuEAxiYpxNIN5oU2U5RtUdNIJQrW3G6MAgAA28YCABlILYA==
Date: Tue, 24 Mar 2026 12:37:39 +0000
Message-ID: <DS4PPF69154114F6B7804CF0582C5D90C19EF48A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260320080403.1396926-1-jouni.hogander@intel.com>
 <2392dd1f93c683734a8d1241655ca876d95830b9@intel.com>
 <66dabe45e9253b925568c40ea4364030a0d60b32.camel@intel.com>
In-Reply-To: <66dabe45e9253b925568c40ea4364030a0d60b32.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BL3PR11MB6386:EE_
x-ms-office365-filtering-correlation-id: f3d17bb4-a6f6-49ea-c107-08de89a2231c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|56012099003|22082099003|18002099003|7053199007;
x-microsoft-antispam-message-info: PIJPlU77lJPZ2357gdMiBYs1+J3dtqsNYZ7FTCUiZuao6W3iNYDsJypTtZUQdmziA0Cbg8KdCXVJayTxS9HNREQ3HoB5whNXt1msRmfCWwwy7epxeyMgJ7DpwWqrD/kjKcN4qmdq/sgkRlmYGwUKzwTD4j6pbkv6LMNqh8TzDBIBUeduTTE5Z68RO/82Itgig6N9DfpMlX7qTr5iP5iq9KInziDDCTzXrIWWpy4n15hp6CCj/565gX2M8ucyGV5KsXhkBX/TR30CPBCGKK0EQGWbMlh5eMm/OxF+c4ht4nVcKP+3HGKIsVidmwxchuNxfzvOTGIBcsTxqGvrEmE0VFtVvDEl9IE4MVuyHLcl1apnazQK91GZhfPB/Cj8+ZJzWDMQWGEVuOGx1BGZX5OOJ+jqetrtgbxz0I6Qu4p8zmj56PeEnNW8lYukcw0Ce8G5Kcr/Co3SC4cWAxJGI906lIbpPZr7fjIfnZ1/Fey3qOc04zlCtwk/eYmaVzmivbhYUv6moI5MfSt4RR1fNKLT2bxt33orGwgWyFhp50pOemdvp8wjo2avBoHVT8/93VmIBhFwIcQik6VUwAr/zr1XK0e9YsuaiDUKLUp6sblQivCLY3N7iOpD+2wFXEJjPHk5KrRdRyI0j6hZW2A4yGdvpzV4VnG+UU/c5Qg5WJ/tZs72SUGOK1ioysA61jvngfArCtTB03+qYtmQB9cwEDXOR2kd4z/ONiLc95dzxZXynxiUVLB3ydMmeZ3JHkZ3+hS3P7LdyHBQd+VWOH6ytptrPUffF4apeO/MbPLu7bDWm7o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0VHdnY4bDdUek5TYUwwRlVEcTA4OXl3bTVBYW9nZVhFUEFEOGFhZ2J4QnBP?=
 =?utf-8?B?UDhDNFY2ZjdhRlJZandrdzJYN2NLNjMxREEwYmRkTDNHYUtweTFvZmdqbDVn?=
 =?utf-8?B?MHNMMDJkcmU3R09UaFA0VGFDS2ZyOE55MW5RZWNCd2hCelNWYzdUbkFZVlNa?=
 =?utf-8?B?UjFuMDZUV1QvRlNJdi9vVzkxRXFRR2F5aTl5M3FQU2ROZUZwajEvWFhoQ0E0?=
 =?utf-8?B?TkR3YmwvNEd1Mi9jUWxWbnlXSEJEbTQ1SmZkeWdOeVd6Tm1oWG1aSlRSQWo4?=
 =?utf-8?B?SWhybXNiLzZZZDVHRnhLYUFUaE4yQjNJOWFKVUlnaCtLekdqRlIrcG9UZmk4?=
 =?utf-8?B?L1FQeGdrc0hYdFVCMnZqWlJEKzFKT1lNeGRObFhVYmE5L3hTOGFDamE3T3cx?=
 =?utf-8?B?WnBkdjF0emUyK05jTExkWTBPYjFlTVRVVW1qSWJoc0lDa1pSZ1Z3NGx2cSs0?=
 =?utf-8?B?TVhhbCtYUEpTdENFek9ISnJ5NDQxL0tMZFRkcUtqNWp1WXdPclBieEh1NDdB?=
 =?utf-8?B?YnYzdUlHRmswTStETDNUNGs3QWEvUWppZHJablJRdTNqelRmSHVxQkI4MUw0?=
 =?utf-8?B?YlJQdDhUcUpvRVlzd1h1aW1RRTc1UXVheWcwcTRWZEpiZFZWaXBKZVBSTU9q?=
 =?utf-8?B?cG1seDlCMlFWblp5eEFIWnJPcS9oVlZsaldQTG9WUkJITUxRU1ZSUCs3KzdW?=
 =?utf-8?B?OUxOdlRHVjFDNEszc2JBdlg2NU45eGxwR1NDUmxKUDdVRm41czlGSzQyRm1G?=
 =?utf-8?B?YzhpVEdnWFhzUkVWTGYzYjJrOENVVVNlNW14WFhocWticFpWalVweDFDZmlu?=
 =?utf-8?B?TTdFU2hoYXVXSFBIR3ZOOWxsYkpyZ05iZVUxYTRBMnROamlLZ3RRQjZ1ZENM?=
 =?utf-8?B?aTBQSVk5ZTVQeGhya2RxUTVNNnVDUXBwQTd1RFpOSUVYbWpXbmpKcjRpbU9v?=
 =?utf-8?B?Yk1PUVdZMDhLK0NLdWNQNjM1bnBkUXhKRGRMaTZYTG4zWDFycEhDOU1EQS9y?=
 =?utf-8?B?MFNVZTlKaGFwK0xnQnVkMkp3bThCUWFUdUhDTXo2SFovd2NiNTRwUUJ4eTho?=
 =?utf-8?B?QTVVSXRKL2tRY0ZCVnJjMXR5R2VFRWVzd0VUbDF2RnR4dHlFWE1vbjJORjMx?=
 =?utf-8?B?SlBGRzNMc3BMTTdrckpxVHhzUVM1Ykdhc2tzQyttZ2twMEg4cmdYSmV6djFF?=
 =?utf-8?B?Uk1mcElZTXRpYzM0MERqNDRRazJzV2wvRHZhdUFiUlpvM2hVRytXQ0xrSGJ3?=
 =?utf-8?B?d2tXMTVMankxYVVTSk9aekFRSWpOVUk0dFpiTDMrdFRWM3pHVUVaQlhFK0hu?=
 =?utf-8?B?ZkxKT2ZCWFlBY0ZVYyswU0gyeUpUdm92cmJsVEt2K3UwK3UyemFKdVMyNk1Q?=
 =?utf-8?B?VEVnbE5ISTg0V3YzVGlLSzd0b3Z3SFRUTWRPZDVybThZS0FudWw1VlQ5azNR?=
 =?utf-8?B?ajRBVE5LekxwMysvUks1NStha25HTlg0L3FTdkhiSTBwL05VWm9xYU0xVDF3?=
 =?utf-8?B?WlhWVGdsYVBvb2NGU2YzcFg3aXdna2tBTFFDYUhSdlhDaEQyNlpsaFI0dmMv?=
 =?utf-8?B?Q0JjU2hHQVFIZ1dzZFBncWFGc0U1bW01K2JieE1HemUyMFRhbkh0bUIwR1Zp?=
 =?utf-8?B?QnhVVE1ERDVBUFNJeWd0TkJHWWw5OUxQZlg0RVhKUllEMDh6aDhNSzJUYWFs?=
 =?utf-8?B?S1dweG0vbFo1eUJHMXhkUlB1WklhUDNHcml2YTZ4Q3J6bVEyQzJNaktVNnZ1?=
 =?utf-8?B?M0hzZGlUaWl0VzNRSzJyZDdMYkpiVEtmNkhIWCtyTkVjSnd2OXFjcGYzZEsy?=
 =?utf-8?B?YUxCSnpRNkpWSDhVUy9UYTIycTlJMzBTbzZOTEo5YjIyeFB0OW5WcHFWRERM?=
 =?utf-8?B?STRMTUFRY2ZxZ1UwUGwxRGErYmRFRlRPT0V0cC8ramVYWEMyWXZKZXhPK3BK?=
 =?utf-8?B?OW9hRG9LTzdNL012SmRyb1IwT1JHVVRwUnFyUFlGbmdoUHRpY2hveU93d3VM?=
 =?utf-8?B?TDQwajVhMFUwakFkOXhlVytsbDI3WkVzdWRqU0J2KzRVTEd3MzB5VGVMU0FG?=
 =?utf-8?B?TVlJMjFXYWQ4d3Jmdk5CTmx0Ly9DYkNWclhiWWRCY0RPaW1NTHdjaVFVTUJS?=
 =?utf-8?B?UEtsbkQ0SHBTTGNKMDJ3VWU5cjFOU0JLM21RajRsNCtPNEpmUk8zdFIzamhz?=
 =?utf-8?B?ZkpMbC9mblVrVlZJYlFrSFhtSWx4dDdIdlIxU1YwTm1XTE9YTXRwRHBFUDBO?=
 =?utf-8?B?bzJWZHdBa09QaEExQ2UvblltMnNUMFk2RlgvdUNIVC9aeXI1eXZNRUwxZytC?=
 =?utf-8?B?N0FQUVpXckQxalFRU2ZOTzEzQXRKZzVhOUxZQjY0ZitHM2xRcXVRZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: N+UYIO9wFjMCd7nc1rgVGI7NPk/KTZ3mxQhbU8nDME52ef74qbbWjcDJFMAlJvznNsLDyXEGGCN5DexWeKit0j+AKg0NMSrENEhne2g9z8VE/i8vFcCeTbJraXYR2tMwb+mYGIkYr7kEYVqYiCwywCvJTSjV3+AWrZx/OUzf8qmsAtTdiSdptsTFnXcmLSuz6lU4wbdE2Idmm2BsudvkeyWLyQtKwZk1vzuYdKGtv/UcJUTCTZ6tIbXtRChfClyrC7PrYgXp+kIetsfixNoHCqh4mHiyCbyXMwXw/Q+j+wL3Enpr1BAO6iE4TemQvF6UTAIfKhQsU2xQAnk82462iQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d17bb4-a6f6-49ea-c107-08de89a2231c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 12:37:39.9636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ogv3U8ynyymsM9Vv3Qdq4yJvUrzGwE8XZjxUwYKazyWnM5NaFOL3GNw553FblQzM7v1G+QvYKCx/zjaQfkFuyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6386
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 09EBA30864C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCAyMCBNYXJjaCAyMDI2IDE0
LjAzDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbQ0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hd
IGRybS9pOTE1L3BzcjogRml4ZXMgZm9yIERlbGwgWFBTIERBMTQyNjAgcXVpcmsNCj4gDQo+IE9u
IEZyaSwgMjAyNi0wMy0yMCBhdCAxMDo0NiArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4g
T24gRnJpLCAyMCBNYXIgMjAyNiwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+ID4gRGVsbCBzZWVtcyB0byBiZSBjaGFuZ2luZyBkZXZpY2UgSUQg
ZXZlbiB3aXRoaW4gc2FtZSBkZXZpY2UgbW9kZWwuDQo+ID4gPiBEdWUgdG8NCj4gPiA+IHRoaXMg
d2UgbmVlZCB0byBpZ25vcmUgZGV2aWNlIElEIHdoZW4gYXBwbHlpbmcgcXVpcmsgZm9yIERlbGwg
WFBTDQo+ID4gPiAxNA0KPiA+ID4gREExNDI2MC4gRG8gdGhpcyBieSBhZGRpbmcgREVWSUNFX0lE
X0FOWSBhbmQgYXNzaWduIGl0IHRvIERlbGwgWFBTDQo+ID4gPiAxNA0KPiA+ID4gREExNDI2MCBx
dWlyay4gQWxzbyBhcHBseSB0aGUgcXVpcmsgb25seSBmb3IgZURQIFBhbmVsIFJlcGxheS4NCj4g
PiA+DQo+ID4gPiBGaXhlczogNDVjNzdkNGJmOGQ0ICgiZHJtL2k5MTUvcHNyOiBEaXNhYmxlIFBh
bmVsIFJlcGxheSBvbiBEZWxsIFhQUw0KPiA+ID4gMTQgREExNDI2MCBhcyBhIHF1aXJrIikNCj4g
PiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQpFdmVuIHRob3Vn
aCB0aGVyZSBtaWdodCBiZSBzb21lIGZ1dHVyZSB3b3JrIGFoZWFkIGJ1dCBhcyBhIGZpeCB0aGlz
IHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgIHzCoCAzICsrLQ0KPiA+ID4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jIHwgMTYgKysrKysr
KysrKy0tLS0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1
aXJrcy5oIHzCoCAyICstDQo+ID4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCBiMzE5ZTViZDYyNzQuLjJmMWI0OGNk
OGVmZCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiA+IEBAIC02MTAsNyArNjEwLDggQEAgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxh
eV9pbml0X2RwY2Qoc3RydWN0DQo+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBpbnRl
bF9jb25uDQo+ID4gPiDCoAlpZiAoaW50ZWxfZHAtPm1zdF9kZXRlY3QgPT0gRFJNX0RQX01TVCkN
Cj4gPiA+IMKgCQlyZXR1cm47DQo+ID4gPg0KPiA+ID4gLQlpZiAoaW50ZWxfaGFzX2RwY2RfcXVp
cmsoaW50ZWxfZHAsDQo+ID4gPiBRVUlSS19ESVNBQkxFX1BBTkVMX1JFUExBWSkpIHsNCj4gPiA+
ICsJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYNCj4gPiA+ICsJwqDCoMKgIGludGVs
X2hhc19kcGNkX3F1aXJrKGludGVsX2RwLA0KPiA+ID4gUVVJUktfRElTQUJMRV9FRFBfUEFORUxf
UkVQTEFZKSkgew0KPiA+DQo+ID4gSSdsbCBub3RlIHRoYXQgaW50ZWxfaGFzX2RwY2RfcXVpcmso
KSBjb3VsZCBpbnRlcm5hbGx5IGxpbWl0IGVhY2gNCj4gPiBxdWlyayBmb3IgZURQL25vbi1lRFAu
IEJ1dCB0aGF0J3MgZm9yIGZ1dHVyZS4NCj4gDQo+IFllYWgsIHRoZXJlIHdhcyBhbHNvIGNvbW1l
bnQgZnJvbSBWaWxsZSB0byBjb21iaW5lIGFsbCBkaWZmZXJlbnQgcXVpcmtzIGhlcmUgYW5kIGp1
c3QgdXNlIHRoZXNlICpfKl9BTlkgZm9yIGV2ZXJ5dGhpbmcgdGhhdCBpcyB0bw0KPiBiZSBpZ25v
cmVkLiBJIHdpbGwgYWRkIHJld29ya2luZyB0aGlzIGludG8gbXkgdG9kbyBsaXN0Lg0KPiANCj4g
QlIsDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiA+DQo+ID4gQlIsDQo+ID4gSmFuaS4NCj4gPg0KPiA+
ID4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiA+IMKgCQkJwqDCoMKgICJQYW5l
bCBSZXBsYXkgc3VwcG9ydCBub3QgY3VycmVudGx5IGF2YWlsYWJsZSBmb3IgdGhpcw0KPiA+ID4g
c2V0dXBcbiIpOw0KPiA+ID4gwqAJCXJldHVybjsNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4gPiA+IGluZGV4IDhmMWJmOGY0MThl
Yy4uODgzZjI5N2Q0YjgzIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiA+ID4gQEAgLTg2LDExICs4NiwxMSBAQCBzdGF0aWMg
dm9pZCBxdWlya19lZHBfbGltaXRfcmF0ZV9oYnIyKHN0cnVjdA0KPiA+ID4gaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSkNCj4gPiA+IMKgCWRybV9pbmZvKGRpc3BsYXktPmRybSwgIkFwcGx5aW5nIGVE
UCBMaW1pdCByYXRlIHRvIEhCUjIgcXVpcmtcbiIpOw0KPiA+ID4gwqB9DQo+ID4gPg0KPiA+ID4g
LXN0YXRpYyB2b2lkIHF1aXJrX2Rpc2FibGVfcGFuZWxfcmVwbGF5KHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ID4gPiArc3RhdGljIHZvaWQgcXVpcmtfZGlzYWJsZV9lZHBfcGFuZWxfcmVw
bGF5KHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKQ0KPiA+ID4gwqB7DQo+ID4gPiDC
oAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gPiB0b19pbnRlbF9kaXNwbGF5
KGludGVsX2RwKTsNCj4gPiA+DQo+ID4gPiAtCWludGVsX3NldF9kcGNkX3F1aXJrKGludGVsX2Rw
LA0KPiA+ID4gUVVJUktfRElTQUJMRV9QQU5FTF9SRVBMQVkpOw0KPiA+ID4gKwlpbnRlbF9zZXRf
ZHBjZF9xdWlyayhpbnRlbF9kcCwNCj4gPiA+IFFVSVJLX0RJU0FCTEVfRURQX1BBTkVMX1JFUExB
WSk7DQo+ID4gPiDCoAlkcm1faW5mbyhkaXNwbGF5LT5kcm0sICJBcHBseWluZyBkaXNhYmxlIFBh
bmVsIFJlcGxheSBxdWlya1xuIik7DQo+ID4gPiDCoH0NCj4gPiA+DQo+ID4gPiBAQCAtMTE2LDYg
KzExNiw4IEBAIHN0cnVjdCBpbnRlbF9kcGNkX3F1aXJrIHsNCj4gPiA+DQo+ID4gPiDCoCNkZWZp
bmUgU0lOS19ERVZJQ0VfSURfQU5ZCVNJTktfREVWSUNFX0lEKDAsIDAsIDAsIDAsIDAsIDApDQo+
ID4gPg0KPiA+ID4gKyNkZWZpbmUgREVWSUNFX0lEX0FOWQkJMA0KPiA+ID4gKw0KPiA+ID4gwqAv
KiBGb3Igc3lzdGVtcyB0aGF0IGRvbid0IGhhdmUgYSBtZWFuaW5nZnVsIFBDSSBzdWJkZXZpY2Uv
c3VidmVuZG9yDQo+ID4gPiBJRCAqLw0KPiA+ID4gwqBzdHJ1Y3QgaW50ZWxfZG1pX3F1aXJrIHsN
Cj4gPiA+IMKgCXZvaWQgKCpob29rKShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7IEBA
IC0yNjEsMTEgKzI2MywxMSBAQA0KPiA+ID4gc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGNk
X3F1aXJrIGludGVsX2RwY2RfcXVpcmtzW10gPSB7DQo+ID4gPiDCoAl9LA0KPiA+ID4gwqAJLyog
RGVsbCBYUFMgMTQgREExNDI2MCAqLw0KPiA+ID4gwqAJew0KPiA+ID4gLQkJLmRldmljZSA9IDB4
YjA4MCwNCj4gPiA+ICsJCS5kZXZpY2UgPSBERVZJQ0VfSURfQU5ZLA0KPiA+ID4gwqAJCS5zdWJz
eXN0ZW1fdmVuZG9yID0gMHgxMDI4LA0KPiA+ID4gwqAJCS5zdWJzeXN0ZW1fZGV2aWNlID0gMHgw
ZGI5LA0KPiA+ID4gwqAJCS5zaW5rX291aSA9IFNJTktfT1VJKDB4MDAsIDB4MjIsIDB4YjkpLA0K
PiA+ID4gLQkJLmhvb2sgPSBxdWlya19kaXNhYmxlX3BhbmVsX3JlcGxheSwNCj4gPiA+ICsJCS5o
b29rID0gcXVpcmtfZGlzYWJsZV9lZHBfcGFuZWxfcmVwbGF5LA0KPiA+ID4gwqAJfSwNCj4gPiA+
IMKgfTsNCj4gPiA+DQo+ID4gPiBAQCAtMjc3LDcgKzI3OSw4IEBAIHZvaWQgaW50ZWxfaW5pdF9x
dWlya3Moc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiA+ICpkaXNwbGF5KQ0KPiA+ID4gwqAJZm9y
IChpID0gMDsgaSA8IEFSUkFZX1NJWkUoaW50ZWxfcXVpcmtzKTsgaSsrKSB7DQo+ID4gPiDCoAkJ
c3RydWN0IGludGVsX3F1aXJrICpxID0gJmludGVsX3F1aXJrc1tpXTsNCj4gPiA+DQo+ID4gPiAt
CQlpZiAoZC0+ZGV2aWNlID09IHEtPmRldmljZSAmJg0KPiA+ID4gKwkJaWYgKChkLT5kZXZpY2Ug
PT0gcS0+ZGV2aWNlIHx8DQo+ID4gPiArCQnCoMKgwqDCoCBxLT5kZXZpY2UgPT0gREVWSUNFX0lE
X0FOWSkgJiYNCj4gPiA+IMKgCQnCoMKgwqAgKGQtPnN1YnN5c3RlbV92ZW5kb3IgPT0gcS0+c3Vi
c3lzdGVtX3ZlbmRvciB8fA0KPiA+ID4gwqAJCcKgwqDCoMKgIHEtPnN1YnN5c3RlbV92ZW5kb3Ig
PT0gUENJX0FOWV9JRCkgJiYNCj4gPiA+IMKgCQnCoMKgwqAgKGQtPnN1YnN5c3RlbV9kZXZpY2Ug
PT0gcS0+c3Vic3lzdGVtX2RldmljZSB8fCBAQCAtMzAwLDcNCj4gPiA+ICszMDMsOCBAQCB2b2lk
IGludGVsX2luaXRfZHBjZF9xdWlya3Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+
IMKgCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGludGVsX2RwY2RfcXVpcmtzKTsgaSsrKSB7
DQo+ID4gPiDCoAkJY29uc3Qgc3RydWN0IGludGVsX2RwY2RfcXVpcmsgKnEgPSAmaW50ZWxfZHBj
ZF9xdWlya3NbaV07DQo+ID4gPg0KPiA+ID4gLQkJaWYgKGQtPmRldmljZSA9PSBxLT5kZXZpY2Ug
JiYNCj4gPiA+ICsJCWlmICgoZC0+ZGV2aWNlID09IHEtPmRldmljZSB8fA0KPiA+ID4gKwkJwqDC
oMKgwqAgcS0+ZGV2aWNlID09IERFVklDRV9JRF9BTlkpICYmDQo+ID4gPiDCoAkJwqDCoMKgIChk
LT5zdWJzeXN0ZW1fdmVuZG9yID09IHEtPnN1YnN5c3RlbV92ZW5kb3IgfHwNCj4gPiA+IMKgCQnC
oMKgwqDCoCBxLT5zdWJzeXN0ZW1fdmVuZG9yID09IFBDSV9BTllfSUQpICYmDQo+ID4gPiDCoAkJ
wqDCoMKgIChkLT5zdWJzeXN0ZW1fZGV2aWNlID09IHEtPnN1YnN5c3RlbV9kZXZpY2UgfHwgZGlm
ZiAtLWdpdA0KPiA+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJr
cy5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgN
Cj4gPiA+IGluZGV4IDc3ZTQ5MGNhZWQwZC4uODMyMTRlYjk0YjBjIDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaA0KPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaA0KPiA+ID4gQEAg
LTIxLDcgKzIxLDcgQEAgZW51bSBpbnRlbF9xdWlya19pZCB7DQo+ID4gPiDCoAlRVUlSS19OT19Q
UFNfQkFDS0xJR0hUX1BPV0VSX0hPT0ssDQo+ID4gPiDCoAlRVUlSS19GV19TWU5DX0xFTiwNCj4g
PiA+IMKgCVFVSVJLX0VEUF9MSU1JVF9SQVRFX0hCUjIsDQo+ID4gPiAtCVFVSVJLX0RJU0FCTEVf
UEFORUxfUkVQTEFZLA0KPiA+ID4gKwlRVUlSS19ESVNBQkxFX0VEUF9QQU5FTF9SRVBMQVksDQo+
ID4gPiDCoH07DQo+ID4gPg0KPiA+ID4gwqB2b2lkIGludGVsX2luaXRfcXVpcmtzKHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPg0KDQo=
