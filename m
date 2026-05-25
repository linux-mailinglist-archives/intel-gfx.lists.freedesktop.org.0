Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id tTfKA4AiFGq2KAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:20:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8CE5C9321
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D12610E184;
	Mon, 25 May 2026 10:20:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V8Rsu1oR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB4010E177;
 Mon, 25 May 2026 10:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779704443; x=1811240443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dhS5poMcRSyZfUVGLQfT8g96U8IIlgkZArbviIW4ot8=;
 b=V8Rsu1oRMjY5pnofZDHoIa13RyecSjsl+MEb71G4iw8CGTjS17ypIY7U
 vbdG+YIT85a0eAaQV2Gd789ttIBcJQSCoz97XFh9KzzDxJnFIEg7f4lIh
 B3tMiABl4GszHGDHSoHBhwruFU4JbcT7df3JF51zJOcC6pV1QnUQI1qUg
 aDRIgDtFRA/mDjv1aLB1bG0v1IqSYh2F3FiidYaLW7oqS5xr4FVLCVAFY
 qP0ueV8DKe9u9RDivMwE/ENp2h0umszagJzjME8v3GZQTmY7tIWxGE1b1
 z3KBp5tBt4K6CT2afMm6jdFpjEuW4IeXbF599VN3XepNHW+QVU4uJa2Nd Q==;
X-CSE-ConnectionGUID: qAiJNkugQ1+HBVcnVK5NGw==
X-CSE-MsgGUID: sXw32mgvQoacb9oxrjNOMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="80580620"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="80580620"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 03:20:42 -0700
X-CSE-ConnectionGUID: NND3X3GqR865FYW+QAC1Sg==
X-CSE-MsgGUID: J0wwXKMvQtmeif4bXQCYFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="238533455"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 03:20:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 03:20:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 03:20:42 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 03:20:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B9VgceDOhE/DvS4gkFl16I+Q7EluQEzbzSgYFB2n6BlvNHZdaJzVeivkyo6mayJHWAfOHAGrcUdRN3iErXgXxWQ/5cUNRH++erYisNjLC5kawapfPRjLFkKHpzWrtpJmW+P5ZjpTyFXpWtTaUIxhotKVD9LpxNfWOBD0tNRtXDh5X5A7l3bPIDl7aRRsZk/2BS6hJmUL+/7Hyiofg/x48Lmm2RubIhw/PDDB4xfUacjZWfeBu5cTppk16wHqstxXPpDfbSlrFkA9Dx2g7M/dqbBuX3rnHtnIjFmE8lmbPDF1IA750MdheXfkraBsLcK2KZl5Drr4wrsad6syPFuyjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dhS5poMcRSyZfUVGLQfT8g96U8IIlgkZArbviIW4ot8=;
 b=D0Fea0Ryw9Xgd6Mh1CMDF3/72O7EQNLQmV382RlCWcDrY1kis4aTWtiKTRK5xedyVhN2QCegIqnLAv0LYDTAsE0aXxpVV34vScg2S3zonF0GCEWAxxH08ZklS5jC2FZLYJlZ6i2TsFJKGzUTNv020euacysL5T/C9gdWUn2QXjxmbFjRgsEOm6tcubBpFmcqVgmWCcQfggqEyeN9Ar9XVklIHDij+PAe83vmK16XffonCuk8cVurD+aTq3l7jcAPebuR978XQINMAHl4LwE62l5XaskjJAfSNcH3Spdd6+h+cL47kaQmLtIqmKLEKlpqe5haoa4FQ+ZxCmTbtNqwUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL4PR11MB8869.namprd11.prod.outlook.com (2603:10b6:208:5a8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 10:20:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 10:20:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Use DC_OFF wake reference to block
 DC6 on vblank enable
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Use DC_OFF wake reference to block
 DC6 on vblank enable
Thread-Index: AQHc6EZw7OSgI/uEO0GjXSVJjrb6B7YW27EAgAe0AYA=
Date: Mon, 25 May 2026 10:20:37 +0000
Message-ID: <a44e39d2930223fb2889f924497e8c4338eaeb18.camel@intel.com>
References: <20260520104944.239797-1-jouni.hogander@intel.com>
 <20260520104944.239797-2-jouni.hogander@intel.com>
 <dd038d76-36dd-a119-0a8a-46df00f062eb@intel.com>
In-Reply-To: <dd038d76-36dd-a119-0a8a-46df00f062eb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL4PR11MB8869:EE_
x-ms-office365-filtering-correlation-id: ca02e809-4bd4-48f2-af0f-08deba474414
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021|22082099003|18002099003|56012099003|4143699003|11063799006|6133799003;
x-microsoft-antispam-message-info: PKRB4KHrBAQAqx978s8s4flMB9Z2Z1fIRX3wD0ygoy6lw9K4Rp8Kz9PK+o4Mng9hIUjlpvzivvlSEWjS3nOI1tUTdVU96mzzvok58wzejafnqttQy72P47Nzyr3CYSDpVMqCRVTPKaE2FIA1UmP/uDsEoCwfH9rj304kcmtjf8UVDSFSF868TIuIV8YQqLzBw6oqVG/jGwMI8XRO8CPVWRMoFSqYHvald/Zli3MxbvBL8954J/Er9xpwpvqGjStM6dXdRAmD9fwh8cLKUsQ8zV8PUPOvKu1LwHelqYBgYdBEwQFNXDoqhYY+ZYxmVdVy29uDuesTt+CnBNc8buGA+kvcSR4pHmmvbJC6eUSLKMseqVjPXH+VtWXtCX4EsK3za6gyH0+mOPmid3KqhQWWIIk8/pn1sjXFtiBk/vnstTbipLoeO2a6qYDr+6eS50/QbQp+xnocgqszOwhJHQ5VJJJZK0nES9FVnpT9MPthXM9P1g0hZWgNBMpwbArK3OBOGI4k6oCiBD5HMzBag2cUTIs/2B34opHmOMVylqv/e8k2xev079LTYvCtk8/QwiGtgkOinexu5iLazGUIjPoOr/M0YdD9obrV7oraAj6Qn+iTKu7nZXSQKPtBQgg7tjo79EhsF5FDQUkCi7Quar+7r3yH5q0sXBFKaem7W9tBrv7CPTFBrdUkqWKhRVU08FQhF7vf7aThFIzlPOH5ooNur9FAJwuIfrlF9aGAXMP7cAp+5EbMzMY1nIYor8PPdyAO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021)(22082099003)(18002099003)(56012099003)(4143699003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnpDenRpRnhMc05pNVRnN3NFQm5MREVTRXNDTG5jc3Ztc2NxaUt3V1c1UGhn?=
 =?utf-8?B?eWJaZTI3TC9VK3VPVFJQdTJxZG9JUlJQS0VNelB2d1JMdjJJNklGUU9Oa1Q3?=
 =?utf-8?B?cit5cDR0alIxeUROSldXUWxsTXhyMG1tTzNROVcrVjFvZmIwQWV2MDJLWEc3?=
 =?utf-8?B?RGVNRTgzd3o3SHZtZHlKMlcxVEVvM1hYM3p4YkJaZjExVFo3Y3dML3VmWFE3?=
 =?utf-8?B?cWZvOS9JVlQ0R2lhMUtpQXY1VWRGcVEyVDFlYldvTEp5WTlEOVZQaTdwcmMr?=
 =?utf-8?B?M3NpQXpDQThuUmwzS0UvR0FTMWptdVpTK080SWNqdURNN3V6Sm4wc25GSFRE?=
 =?utf-8?B?TzR5YkV6bHltbk9iT29na2oxam5mMTBzdGF2M1dvMzJTYWVQd3RjWFZtcTJw?=
 =?utf-8?B?OWJXb1ZyWENVejFSZnV0WEFXQWJCc0IrdFFZZkpoMk1RdDJnQ3d0RkkvdmNn?=
 =?utf-8?B?YUtIZmZTMncxam11OTNZTTUwSFdOOURHRzZTeWdMS29GM1Z5Z28yTmJFUTZt?=
 =?utf-8?B?UDFOZm83S0lIWmpsL2FjNVlrT2NvZnorWkk2R0JoWDNiblhtTzd4aWQzQ2Vl?=
 =?utf-8?B?VS9FYndGbUVyaFJ3T3BIRVFJUHBhMFZ2NVArWTJON242TzNCTTg4Nmc2dEht?=
 =?utf-8?B?T3Zkc3NiOG9xbUVmekV3VjRPb0hmS1dNeUlVUkhJWi9DaEtjSjRPUEVDN0hj?=
 =?utf-8?B?SEZxaEVCY29JaDdpWk1TVVdJd3JNRUNTeC82YUNHWGh6dWcrK1plSEFpNmhI?=
 =?utf-8?B?UXpGUnZYZWp5SzNYOVNSQTBHbFV2cnN4Vk16OUttd09yQnZBSFM3RkFSaW1J?=
 =?utf-8?B?dXZqaFRYMDFZeUE2NkZSSVV0Z2NaRmpFQUpiS2xRNFk2a2grNGNxMml0RElx?=
 =?utf-8?B?dHFvMisxUjR5c1lXbVhudy9TQXdtdUxyL1FZcGlKTUo4REZXalZreVNnUUdy?=
 =?utf-8?B?WC8wN0FRc3k3QndRUG5CUXByQkJKdWRUbVFjMDBKM3UyV3pYWGozaHVXT1pl?=
 =?utf-8?B?dXNacXdzUEMwcEQ3WnF6RlBPR1RsbW0zbHViM3Q3K3FXdjJ4Q3hQUHNHSGQ5?=
 =?utf-8?B?UzIzbC9iRVgxODRsOHRkMnlMdDVhdG1UTWxTYzljbk9PVWp6blpkYWdOdDhi?=
 =?utf-8?B?V1Q1Vm1sdE82OVNuc0VodzJYZ2JkQ3RqRThFWkI2QXhTZEpKVmtRV1JiL0x5?=
 =?utf-8?B?eHVyaU1YajhSbDQ4Y0NFRmJQeHNFRTRHbVJ4RTdzUE9TMVhhM3RvNzZaSERj?=
 =?utf-8?B?U1E5dlhnT3U5TEVNZS9sR2wvT1BqVThuaVlqbkUwMWMySnN5aXpVZDlCWWcw?=
 =?utf-8?B?eGdoejB1RzNtSjFuV3BRQjlNamE5TEIvTzRMZ3JPVzVsK1h3S0hEV1VpNGlO?=
 =?utf-8?B?TUI0UkRudUxOeUcxTUoyUGZKeVRmcmZLZlFZVk43d1lFRDVneHRkakNicVBO?=
 =?utf-8?B?THpjY2MrT2lNUTFRQVpwSk9rN1JzeXhHT1JIVW5WS2tYREpsWDdxZSsyZzdB?=
 =?utf-8?B?eGxkUzVzaWNOUG9RbDAwYldzVnBtRDJWMWcrUjVDaUxibDBhSUd2WkNmb3Vv?=
 =?utf-8?B?ZkhjeGY0U3o3T0R3U3JVZWlrWFpydFlLeC85dUZOK294d0dSa2pqKzR1eHFl?=
 =?utf-8?B?MDZ3WjNjNmticndZalM0N1lVbVp5UHE4SVczSDhkS093STRDanp1NXg5TkNB?=
 =?utf-8?B?SUtxaitKK09ZTFhjZmxiRlRCbDdlNWxjYXNQYUNhVEhGVjgyWSt5T0FjZDJ5?=
 =?utf-8?B?SGVyTjcwMEZtOHdpTWh3ZENJWWV3ZGtyVUFLTzJmQndyN3FtL25NQ3NQLzA3?=
 =?utf-8?B?bXdXNjF2MEM5cEMzc3F0OFNKVVE5TXN0ZTNSSGJCQ0NOOUFCUG9hNEE1Qkl0?=
 =?utf-8?B?S1F0UExNaXVuZFRSSG1pb0pYUnpLLzlXYmxmdk1iTmtvU1A1NDArVktiYWVq?=
 =?utf-8?B?cnR3Skt5MG9oY0d1RkZHVEIxZnkrRGxuOTJXLzZMZnVMYytzN3Z4cVVuMTM5?=
 =?utf-8?B?OTVvVTI1MjNnSk9wMUFOSU1Pb2N2SDZabVF2aGdXMndUTDJMbW42QjQvaUM3?=
 =?utf-8?B?UDJnRjNMaDhPUkZqdHJTZTV6cFNxMFF5ajNZcC93NVZzQWUvclBQR2tZSHpj?=
 =?utf-8?B?NURSRkpXUVU4Y0thT0d2MHVmVXlZNm5oUTQ5Uk5wNXRVZWg4RExRem1RMkpi?=
 =?utf-8?B?YjNXUmpTTUlIV3NOQ1BRK2hmUnc4QVovTU03RU5XaWllWXNNTG5weGMyVklW?=
 =?utf-8?B?UXIxODFPNGhoTjVxN3d2d2dKSnpiV2dWN2g2Y3d1dUpyZFJNWDhCT3F2WE5l?=
 =?utf-8?B?cGtFNGxtbERQVGNRUWEwWFpYS1h2TW1KY3J6M2trbm5uUVRYd05kS0VXRDZQ?=
 =?utf-8?Q?xgYFCzvpahyX73MLg56RgyPRwtVp7eQ9e49xIW/0bQAun?=
x-ms-exchange-antispam-messagedata-1: u/qfDm9J5gq9hhL66tM6HzBne/tO4WMLGqk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AA8ACBF75713E247B55C859FFF481D3A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SldI4mxgZ5refOr+2Z8ZTD+h6iAv+LNTmQQyjkc5/QU8WbTpnUIX7RDVJL/FrFS5gQ/Yh2dGmFOoqlUE7akbVwN4IxsXmRdEdiSbmbXlQdPN4c/qal877JoSfoiUdBGa5nk49y7DRT2Wdaku3Mwnx9N5qdGQj7NFn7s8ZwHGnPC2e5sph5m67Hvm38dsYDs9kS3YMDxg4xDPAnrxf3CIKz9TT1jlv/kyCvkBpNtjuuoHljip0PmFH3uoW13IxL5qThjLdP+Bry4ovAXH7H75fnZLN7TuJpQa35I+Bim4aokjAQJL8/kcM5aqWQV64IOwWDpi0kxakjY3c6d4etlfHQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca02e809-4bd4-48f2-af0f-08deba474414
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 10:20:38.0467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3XA2PGCMxeOqNjPDhn9sA40CVJMQlWhVwgV/xwMcOdNoEnkXX7f4OvOPL1CoRV/mcRI5Mu9PWYhhWlMWlXB4Qtd433RH4aPFol8XpNRPRaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8869
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
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5B8CE5C9321
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTA1LTIwIGF0IDE0OjQyICswMjAwLCBNaWNoYcWCIEdyemVsYWsgd3JvdGU6
DQo+IE9uIFdlZCwgMjAgTWF5IDIwMjYsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiBXZSBh
cmUgb2JzZXJ2aW5nIGZvbGxvd2luZyB3YXJuaW5nczoNCj4gPiANCj4gPiAqRVJST1IqIHBvd2Vy
IHdlbGwgRENfb2ZmIHN0YXRlIG1pc21hdGNoIChyZWZjb3VudCAwL2VuYWJsZWQgMSkNCj4gPiAN
Cj4gPiBnZW45X2RjX29mZl9wb3dlcl93ZWxsX2VuYWJsZWQgaXMgY29uc2lkZXJpbmcgdGFyZ2V0
IHN0YXRlDQo+ID4gRENfU1RBVEVfRElTQUJMRQ0KPiA+IGFzIERDX09GRiBwb3dlciB3ZWxsIGJl
aW5nIGVuYWJsZWQuIEZpeCB0aGlzIGJ5IHVzaW5nIHdha2VyZWYgZm9yDQo+ID4gdGhlDQo+ID4g
cHVycG9zZS4NCj4gPiANCj4gPiBUbyBhY2hpZXZlIHRoaXMgd2UgbmVlZCB0byBtb2RpZnkgbm90
aWZpY2F0aW9uIGNvZGUgYXMgd2VsbC4NCj4gPiBDdXJyZW50bHkgaXQNCj4gPiBpcyBwb3NzaWJs
ZSB0aGF0IFBTUiBnZXRzIG5vdGlmaWVkIHZibGFuayBlbmFibGUvZGlzYWJsZSB0d2ljZSBvbg0K
PiA+IHNhbWUNCj4gPiBzdGF0dXMuIFRoaXMgaXMgY3VycmVudGx5IG5vdCBhIHByb2JsZW0gYXMg
aXQgaXMganVzdCB0cmlnZ2VyaW5nDQo+ID4gY2FsbCB0bw0KPiA+IGludGVsX2Rpc3BsYXlfcG93
ZXJfc2V0X3RhcmdldF9kY19zdGF0ZSB3aXRoIHNhbWUgdGFyZ2V0IHN0YXRlIGFzIGENCj4gPiBw
YXJhbWV0ZXIuIFdoZW4gdXNpbmcgd2FrZXJlZiB0aGlzIGJlY29tZXMgYSBwcm9ibGVtIGR1ZSB0
bw0KPiA+IHJlZmVyZW5jZQ0KPiA+IGNvdW50aW5nLiBGaXggdGhpcyBzdG9yaW5nIHZiYW5rIHN0
YXR1cyBvbiBsYXN0IG5vdGlmaWNhdGlvbiBhbmQNCj4gPiB1c2UgdGhhdA0KPiA+IHRvIGVuc3Vy
ZSB0aGVyZSBhcmUgbm8gbW9yZSB0aGFuIG9uZSBub3RpZmljYXRpb24gd2l0aCBzYW1lIHZibGFu
aw0KPiA+IHN0YXR1cy4NCj4gPiANCj4gPiB2MjogZW5zdXJlIHRoZXJlIGlzIG5vIHN1YnNlcXVl
bnQgbm90aWZpY2F0aW9ucyB3aXRoIHNhbWUgc3RhdHVzDQo+ID4gDQo+ID4gRml4ZXM6IGFhNDUx
YWJjZmZiNSAoImRybS9pOTE1L2Rpc3BsYXk6IFByZXZlbnQgREM2IHdoaWxlIHZibGFuayBpcw0K
PiA+IGVuYWJsZWQgZm9yIFBhbmVsIFJlcGxheSIpDQo+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJu
ZWwub3JnPiAjIHY2LjEzKw0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IC4uLi9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8wqAgMSArDQo+ID4gLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmPCoCB8wqAgOCArKysrKy0tDQo+ID4gLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICsrDQo+ID4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAyNCArKysr
KysrLS0tLS0tLS0tDQo+ID4gLS0tDQo+ID4gNCBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25z
KCspLCAxNyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+IGluZGV4IDNkYzVhYzc1
YTk4Yi4uNjRjMTM2NWZiMzY2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+ID4gQEAgLTQ5NCw2ICs0OTQsNyBA
QCBzdHJ1Y3QgaW50ZWxfZGlzcGxheSB7DQo+ID4gCQl1OCB2YmxhbmtfZW5hYmxlZDsNCj4gPiAN
Cj4gPiAJCWludCB2YmxhbmtfZW5hYmxlX2NvdW50Ow0KPiA+ICsJCWJvb2wgbGFzdF92Ymxhbmtf
c3RhdHVzX25vdGlmaWVkOw0KPiANCj4gY291cGxlIG9mIHRoZSBmaWVsZHMgaW4gdGhlIGlycSBz
dWItc3RydWN0IGFyZSBwcmVwZW5kZWQgd2l0aCB2YmxhbmssDQo+IHRodXMgDQo+IHdvbmRlcmlu
ZyBpZiB3ZSBjYW4gZG8gaXQgaGVyZSBhcyB3ZWxsLiBNYXliZQ0KPiB2YmxhbmtfbGFzdF9zdGF0
dXNfbm90aWZpZWQ/IG9yIHZibGFua19zdGF0dXNfbGFzdF9ub3RpZmllZD8NCj4gDQo+IEFueXdh
eXMsIGZvciB0aGUgdjI6DQo+IA0KPiBSZXZpZXdlZC1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNo
YWwuZ3J6ZWxha0BpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBNaWNoYWwgZm9yIHlvdXIgcmV2aWV3
LiBXaXRoIHN1Z2dlc3RlZCBjaGFuZ2UgcHVzaGVkIG5vdyB0bw0KZHJtLWludGVsLW5leHQuDQoN
CkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IEJSLA0KPiBNaWNoYcWCDQo+IA0KPiA+IA0K
PiA+IAkJc3RydWN0IHdvcmtfc3RydWN0IHZibGFua19ub3RpZnlfd29yazsNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2ly
cS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJx
LmMNCj4gPiBpbmRleCA4OTlhMzhjMGE3YjcuLjU3ZjM3ZjliODNhNSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4g
PiBAQCAtMTc4Niw4ICsxNzg2LDEyIEBAIHN0YXRpYyB2b2lkDQo+ID4gaW50ZWxfZGlzcGxheV92
Ymxhbmtfbm90aWZ5X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+IAlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gCQljb250YWluZXJfb2Yod29yaywgdHlwZW9m
KCpkaXNwbGF5KSwNCj4gPiBpcnEudmJsYW5rX25vdGlmeV93b3JrKTsNCj4gPiAJaW50IHZibGFu
a19lbmFibGVfY291bnQgPSBSRUFEX09OQ0UoZGlzcGxheS0NCj4gPiA+aXJxLnZibGFua19lbmFi
bGVfY291bnQpOw0KPiA+ICsJYm9vbCB2Ymxhbmtfc3RhdHVzID0gISF2YmxhbmtfZW5hYmxlX2Nv
dW50Ow0KPiA+IA0KPiA+IC0JaW50ZWxfcHNyX25vdGlmeV92YmxhbmtfZW5hYmxlX2Rpc2FibGUo
ZGlzcGxheSwNCj4gPiB2YmxhbmtfZW5hYmxlX2NvdW50KTsNCj4gPiArCWlmIChkaXNwbGF5LT5p
cnEubGFzdF92Ymxhbmtfc3RhdHVzX25vdGlmaWVkICE9DQo+ID4gdmJsYW5rX3N0YXR1cykgew0K
PiA+ICsJCWludGVsX3Bzcl9ub3RpZnlfdmJsYW5rX2VuYWJsZV9kaXNhYmxlKGRpc3BsYXksDQo+
ID4gdmJsYW5rX3N0YXR1cyk7DQo+ID4gKwkJZGlzcGxheS0+aXJxLmxhc3RfdmJsYW5rX3N0YXR1
c19ub3RpZmllZCA9DQo+ID4gdmJsYW5rX3N0YXR1czsNCj4gPiArCX0NCj4gPiB9DQo+ID4gDQo+
ID4gaW50IGJkd19lbmFibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAqX2NydGMpDQo+ID4gQEAg
LTE4MDAsMTAgKzE4MDQsMTAgQEAgaW50IGJkd19lbmFibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0
Yw0KPiA+ICpfY3J0YykNCj4gPiAJaWYgKGdlbjExX2RzaV9jb25maWd1cmVfdGUoY3J0YywgdHJ1
ZSkpDQo+ID4gCQlyZXR1cm4gMDsNCj4gPiANCj4gPiArCXNwaW5fbG9ja19pcnFzYXZlKCZkaXNw
bGF5LT5pcnEubG9jaywgaXJxZmxhZ3MpOw0KPiA+IAlpZiAoY3J0Yy0+dmJsYW5rX3Bzcl9ub3Rp
ZnkgJiYgZGlzcGxheS0NCj4gPiA+aXJxLnZibGFua19lbmFibGVfY291bnQrKyA9PSAwKQ0KPiA+
IAkJc2NoZWR1bGVfd29yaygmZGlzcGxheS0+aXJxLnZibGFua19ub3RpZnlfd29yayk7DQo+ID4g
DQo+ID4gLQlzcGluX2xvY2tfaXJxc2F2ZSgmZGlzcGxheS0+aXJxLmxvY2ssIGlycWZsYWdzKTsN
Cj4gPiAJYmR3X2VuYWJsZV9waXBlX2lycShkaXNwbGF5LCBwaXBlLCBHRU44X1BJUEVfVkJMQU5L
KTsNCj4gPiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGlzcGxheS0+aXJxLmxvY2ssIGlycWZs
YWdzKTsNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gaW5kZXggZjQ0YmU1YzY4OWFlLi5iOGNjZDYz
NWM1NzUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xNzkwLDYgKzE3OTAsOCBAQCBzdHJ1Y3Qg
aW50ZWxfcHNyIHsNCj4gPiAJdTggYWN0aXZlX25vbl9wc3JfcGlwZXM7DQo+ID4gDQo+ID4gCWNv
bnN0IGNoYXIgKm5vX3Bzcl9yZWFzb247DQo+ID4gKw0KPiA+ICsJc3RydWN0IHJlZl90cmFja2Vy
ICp2Ymxhbmtfd2FrZXJlZjsNCj4gPiB9Ow0KPiA+IA0KPiA+IHN0cnVjdCBpbnRlbF9kcCB7DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRl
eCA3MDEwOGUwYTRjMGMuLjE5Y2ZiMjNmZTlmOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC00MTgwLDE0ICs0MTgwLDIwIEBAIHZv
aWQNCj4gPiBpbnRlbF9wc3Jfbm90aWZ5X3ZibGFua19lbmFibGVfZGlzYWJsZShzdHJ1Y3QgaW50
ZWxfZGlzcGxheQ0KPiA+ICpkaXNwbGF5LA0KPiA+IAkJCQkJwqDCoMKgIGJvb2wgZW5hYmxlKQ0K
PiA+IHsNCj4gPiAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gLQlib29sIGJs
b2NrX2RjX3N0YXRlcyA9IGZhbHNlOw0KPiA+IA0KPiA+IAlmb3JfZWFjaF9pbnRlbF9lbmNvZGVy
X3dpdGhfcHNyKGRpc3BsYXktPmRybSwgZW5jb2Rlcikgew0KPiA+IAkJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9DQo+ID4gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+IA0KPiA+IAkJ
bXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gPiAtCQlpZiAoQ0FOX1BBTkVMX1JF
UExBWShpbnRlbF9kcCkpDQo+ID4gLQkJCWJsb2NrX2RjX3N0YXRlcyA9IHRydWU7DQo+ID4gKwkJ
aWYgKENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKSB7DQo+ID4gKwkJCWlmIChlbmFibGUpDQo+
ID4gKwkJCQlpbnRlbF9kcC0+cHNyLnZibGFua193YWtlcmVmID0NCj4gPiArCQkJCQlpbnRlbF9k
aXNwbGF5X3Bvd2VyX2dldChkaQ0KPiA+IHNwbGF5LA0KPiA+ICsJCQkJCQkJCVBPDQo+ID4gV0VS
X0RPTUFJTl9EQ19PRkYpOw0KPiA+ICsJCQllbHNlDQo+ID4gKwkJCQlpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dChkaXNwbGF5LA0KPiA+IFBPV0VSX0RPTUFJTl9EQ19PRkYsDQo+ID4gKwkJCQkJCQlp
bnRlbF9kcC0NCj4gPiA+cHNyLnZibGFua193YWtlcmVmKTsNCj4gPiArCQl9DQo+ID4gDQo+ID4g
CQlpZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkICYmICFpbnRlbF9kcC0NCj4gPiA+cHNyLnBhbmVs
X3JlcGxheV9lbmFibGVkICYmDQo+ID4gCQnCoMKgwqAgaW50ZWxfZHAtPnBzci5wa2dfY19sYXRl
bmN5X3VzZWQpDQo+ID4gQEAgLTQxOTUsMTggKzQyMDEsNiBAQCB2b2lkDQo+ID4gaW50ZWxfcHNy
X25vdGlmeV92YmxhbmtfZW5hYmxlX2Rpc2FibGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiAq
ZGlzcGxheSwNCj4gPiANCj4gPiAJCW11dGV4X3VubG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsN
Cj4gPiAJfQ0KPiA+IC0NCj4gPiAtCS8qDQo+ID4gLQkgKiBOT1RFOiBpbnRlbF9kaXNwbGF5X3Bv
d2VyX3NldF90YXJnZXRfZGNfc3RhdGUgaXMgdXNlZA0KPiA+IC0JICogb25seSBieSBQU1IgY29k
ZSBmb3IgREMzQ08gaGFuZGxpbmcuIERDM0NPIHRhcmdldA0KPiA+IC0JICogc3RhdGUgaXMgY3Vy
cmVudGx5IGRpc2FibGVkIGluICogUFNSIGNvZGUuIElmIERDM0NPDQo+ID4gLQkgKiBpcyB0YWtl
biBpbnRvIHVzZSB3ZSBuZWVkIHRha2UgdGhhdCBpbnRvIGFjY291bnQgaGVyZQ0KPiA+IC0JICog
YXMgd2VsbC4NCj4gPiAtCSAqLw0KPiA+IC0JaWYgKGJsb2NrX2RjX3N0YXRlcykNCj4gPiAtCQlp
bnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUoZGlzcGxheSwNCj4gPiBlbmFi
bGUgPw0KPiA+IC0NCj4gPiAJCQkJCQkJRENfU1RBVEVfRElTQUJMRSA6DQo+ID4gLQ0KPiA+IAkJ
CQkJCQlEQ19TVEFURV9FTl9VUFRPX0RDNik7DQo+ID4gfQ0KPiA+IA0KPiA+IHN0YXRpYyB2b2lk
DQo+ID4gLS0gDQo+ID4gMi40My4wDQo+ID4gDQoNCg==
