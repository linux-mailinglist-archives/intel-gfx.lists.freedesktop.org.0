Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECEF93474C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 06:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE49D10E521;
	Thu, 18 Jul 2024 04:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLMHkd98";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A564510E521
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 04:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721278694; x=1752814694;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xyHrC9OAHNUr8LDSNoKeg5XHOYWfrJdXKs5pzHFKSas=;
 b=SLMHkd98Sob+7t45ywPaOs2ULMAh9qKOQ+7f9P70XyvGz9CEc0734uGZ
 DXyASQ9Zxwaz9FtTeIhJ2oMfJNhnQ4TpxLcM0TS1gR0BRzJRXUm3tAT1Q
 +dIHvdNCvFUfEmzGu+SV0GhpxJw1FACwNYZ+vfP0H9KXHT0YAn1BHjZ/I
 X6ckVlclwwsrm1bnae6B4TcK2pNHWKL/A4dMk+Gagw1fV/IVtlzEAo/iu
 Xfofy+AF0kcfCtihWMGurd48S2Ho0CqH5EHqQw4dvtFSB6E/9oq26neOi
 blOlKU9WvGYgc1OsbnkNAHT41MbTbT6A79rt6eUlWZQbH1NzREGAKgEa6 w==;
X-CSE-ConnectionGUID: 4UmRj5U4REmiiRbtPIjsRw==
X-CSE-MsgGUID: 5w2Plfg7QjWbnNn737Gj7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="29399204"
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="29399204"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 21:58:13 -0700
X-CSE-ConnectionGUID: p1z1clW1TK6+hwKZyUEPtw==
X-CSE-MsgGUID: ubbeBE1zS9+z22WE11nSrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="55773360"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 21:58:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 21:58:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 21:58:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 21:58:12 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 21:58:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eMXqQnGB7O2RLGSUyhEEzjJO8GWLPV26aBAqHoQzA0q0phKlNHCZZ7wQnoGYHjo36eiG0BOvk9W4hpC+cVP4Tz7QnBh0g4/Gfu4W4zsn8bOMpgk2ms4tGM+TkHGeHFxZe1B8+mHmdUXN9JZ9v6ixSnKGl69m0pSGYsxYN0MeIwHoPowa9jfvs6oS6JxqAxMll7cY8iJlu5eMJR+IX+ZNQIY/9jPARUqimp7qWWOI8UKqIl1+XY6qPTrXIIkrTwgZq5Kf0wWMP6A9ApRCGQFPTLf/hEm1lZ6SzLRNF8XYQKqDtGAIoradDG1L9paG+7HrQo8yd/nifhlfKM+biqaH0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xyHrC9OAHNUr8LDSNoKeg5XHOYWfrJdXKs5pzHFKSas=;
 b=p2z7MX6RZJ8wyvMWnzyqcZVRv1S0EHLBThOvvn6VpUpH2DNOUeHBBiQNLwfOAbN6LnEPmSsNdQpKCn72HyWkTxk8A7JeEzOkbiBr7/teXHEmFQHxmopp/XxVtwRIZtUCpRZVCfoIV2+ijLQtbBvWohCWT9BYLt/TMr2YNDbGK6+epYBEQDSuxgHERC7qKvn907T209yqf28rygAo15nwvdTmKN1w3zEAbw8TdL3ih4A89pOySfdmbBDc1Cvh4Z/v5vjMnUiCbrixCVY3I3j5H3WaS+2a4o36t8tjphugVB6otfZ5kooQIA/1qgnOS3ZZndy0PsJL1JXrz/ePSWt+dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6427.namprd11.prod.outlook.com (2603:10b6:510:1f5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.23; Thu, 18 Jul
 2024 04:58:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7784.016; Thu, 18 Jul 2024
 04:58:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Xaver Hugl <xaver.hugl@kde.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] RFC: drm/drm_plane: Expose the plane capability and
 interoperability
Thread-Topic: [PATCH] RFC: drm/drm_plane: Expose the plane capability and
 interoperability
Thread-Index: AQHa0dWgayUDRJABNU2t98O9W18IorHxrF8AgApMmGA=
Date: Thu, 18 Jul 2024 04:58:09 +0000
Message-ID: <DM4PR11MB6360FCACDA0F1D4024C45097F4AC2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240709074656.1389387-1-arun.r.murthy@intel.com>
 <26511362.1r3eYUQgxm@xavers-framework>
In-Reply-To: <26511362.1r3eYUQgxm@xavers-framework>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6427:EE_
x-ms-office365-filtering-correlation-id: 708ac304-bb70-423f-163b-08dca6e6383e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aTRKejArem5sdExZZVNsWUFxcnBrTWdMQVhTaWdCRHJXOG1NTUJrWEx2Z3Rs?=
 =?utf-8?B?WFFVMWJDUEkySzNXSUxTdk9HelhZaU9xa2ZIN2FqY2FZMUFrNHZkU2trZ1Z0?=
 =?utf-8?B?amROL0l6VUFQNlJ6SnpFWDBtM3FONmd5Z29ySHZSOW1aV25mckZzcmdxUFI0?=
 =?utf-8?B?K2Z6WmkzR1I4Z3lSNVRpa3dBeWY1M0doMzNha3lRNkFLN0FtcVdXOWRPNkhZ?=
 =?utf-8?B?dE0yaWk4dTZjRFFsYWNQWFFVbzJGRDViZCtLOTRIdEV6ZmU2bSt3Q2Yrcklk?=
 =?utf-8?B?YndnWWFyUkRZbHRkU1NXVERLUUttUWV4b0F1dk03L2dENG1sd3ZZSXlQMUVF?=
 =?utf-8?B?Znlsc0pGazIwSE5NeSs5SFRJOXpPbnFJVHQ5RzlkVWE1M1h3MytwdFRxOHd2?=
 =?utf-8?B?MS9LcHBzaWxuT3c4cjZ3KzJTVGZmZ1o5THRYYUNUaWQrQ083TzVDMDdYRmd3?=
 =?utf-8?B?VWJRZkd6eEJjeVgvNHhGTThqaURjU2EyRVIvbnJiTHFEdVNmeWlpZG5abXV6?=
 =?utf-8?B?UGw3ZWJGY2UyUk1MaFhBM1dFSS83b2Y4eWpPeVQ4V3dyY2pyKzQ5bXVzVk1X?=
 =?utf-8?B?M2pzVmtSNzdkSlEvVVg1by9kVnB4MlhwRjFzYk5ZOVZ6a3h2dTJ3citUaWJt?=
 =?utf-8?B?ZkhKN3M1TTZjSkdxY0t1VENHYWlXSEdjNElHSHFXNHBVd3U5UXNOWnZYWS9q?=
 =?utf-8?B?cE5hSE1LZmRRVTV2TnNpTGlURnF2NVlWamMzTUsvUWFBMHlkbTdEQVcxOUd2?=
 =?utf-8?B?N2JaMU5lSkQrUHJTWEtIdi9iMTBDbFVIMThlbjB4MnIybWxzRkpjWnY2dmwv?=
 =?utf-8?B?d0dqcUZnWTRVMEdValg5N2wwa2tXR3hZVkRiTVhLUmVOdS9UeUZ0OHJiZ0VP?=
 =?utf-8?B?R3Faa2dvcUF6djc5eWVYNDNoZE8zQ2dXc3cxM01BSnBlWWk4aXJ6RXBRQWU1?=
 =?utf-8?B?akx0c0ZoNVVNVTR6UVNpWGZmajAvSHJ6R3Y1azF0THRCeUo1NFdkbkJnU0dB?=
 =?utf-8?B?OFhySnNoNlZmTzI0RVhJcmh1MTAwOEZVa2ZBRnE2MzVaZWovNy84YlhwMURC?=
 =?utf-8?B?R0QrWEFmWFNzbGRHc0g2c2k5NDNxdnhFZU9QVlh5YVRwZm9QVWsvZUR0UEIv?=
 =?utf-8?B?ck53ZUpTZWZzMCttdkIyclFlendrZENjSlQwTUwxYUJOSVVTSDMybW1QTzRX?=
 =?utf-8?B?SWZDOUlHMFp4Q3V3OGFNVlRxb2xTZEk2cWxYR3pzNTNBWDNocTZMVTdyZkp5?=
 =?utf-8?B?VXdkakdMMVNIUy84S1FDNHJ0OVpFbExjT1hTRjVLeVZtbk9hR3RRVDVxR1hq?=
 =?utf-8?B?QWZ0eDVGYmx4QUVnOXIyQjV1anNrY1JoazJ2QU5kWWV6TG1ta2MyNzYrMmdp?=
 =?utf-8?B?WG9OakRNUXNTRDBuM1grZmJOaXFDdUU2Nkcvc0FLRDBzK3Z3Q01LbkZEVFZa?=
 =?utf-8?B?eVRRU2JCTHpQcGxTRU00MlZQOWRHWmxKajdjQ0hXQUtTditQM2phOUt2a1RX?=
 =?utf-8?B?aFhzeW9zRWVSRmVDQU1kU1Z6blVzYUl3MWg2MVlpeDVvcFlFZE5lT1poeDdY?=
 =?utf-8?B?bm5lWDd1akR5WGVsMFVTMjJFK2xrTXdVOFo5Wkw0YWhUOWplWVpZZStEemo3?=
 =?utf-8?B?cGFDV0lVV0hURDlFMnVZUWlzWU4vRTBvRUJXa2gvcWIxNlovYnJDSGhqZXhs?=
 =?utf-8?B?dC84UHdKOENsRng3emtsaE83cm15ZzlYQ29DdkczN1d0NlViSDM2ODdONXV1?=
 =?utf-8?B?ZGRrVHR6OTB3eUd2SnpzcWZpUE5nZmV0d0VnQks2c2dneVJEWllmNUdQNkRB?=
 =?utf-8?B?aGd2OVAxclI5MU83SUdNSHFtSkFSYlpvaDVoaVg2OFJnWkZWQjJNNWtQZnp5?=
 =?utf-8?B?SEZaU0dPRGRsK29jQzNyTkRVVytIWk5JREw5YmJyUEo2Tmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1hXOUM2Unp1Y0xGN3pnL0xhT1NzcDZVYVZHaHJYNFRwc1lEMmJqZWhQdytt?=
 =?utf-8?B?MG8zOTJGdXFOakRYby9LaGk0SFI5REJVU1N2dVp2eEF6eVhzelkzVi8xWnBl?=
 =?utf-8?B?VDNOTlk5cld0U1FDS3N3cm1PdERZWHcyTkNjVDJvQ2hZaVl2SWFkeGVSOHZn?=
 =?utf-8?B?TXVmTVluaUpXTlJMQW9US1RXaXRPMnIrVUpwY3hoaGtLYlVoRHI0ZU9YUENL?=
 =?utf-8?B?SVdmNGxiemJyWlJsRkdKOER1WENQeW1PaG9WcStZVVcyS1RtOHBBWm9FdG0y?=
 =?utf-8?B?ZURlTFZuQ3MvY2FnbHJBa2VRQVVXVVpNTzMwR1UwNEFHNEEwQzR1T2UwejJO?=
 =?utf-8?B?NkdwdUV6WElkQzk3cm0zV1VUL2lxTXl0S0pjSXh1bU5OZDU5d2NSNEkvTENp?=
 =?utf-8?B?QnpIc1Y5QStFbTVUdVhINlltQm5HcUhENFFuaGorTEx3ZDg2SEtya29ZWk1l?=
 =?utf-8?B?dXVxTCtVbmVYbnlOeCswS0FjNTJpVG9nQWpnTFloN2hrMjdIOUw2NzNRQ0xp?=
 =?utf-8?B?NjlacVg0bjRrb21FK0pZaUNTVitsS0puZzNBVk1scm5VcE1lMkI3UG9Jd0Jr?=
 =?utf-8?B?TjNyWFFwZnNNVDJzNEo5dFpCLzR1SjR3RDdlTFZoR2FvaTJpMTVPL2ZHVk5G?=
 =?utf-8?B?dkNyVzhnLzVBQjV4cE1EMnlnNlFtYS80dlh2bzZ3UE9jaVZNMUJxQVhLRXRt?=
 =?utf-8?B?OTdERlhTamdFUWhuZkJQOHFaUXJNQWEydVJISmE0MG9xN0RlOFJXTzBiSHI1?=
 =?utf-8?B?UGNWRHFRd0V1ZEQvaEFFdXlJNnl0YlZDdExqZmZUdmJjQnN0Q1Q5TDJwVnVi?=
 =?utf-8?B?eEVvdWcvY2JxbTRrSjNGa1ExeHFrUWJEYkh1ODZoWHVNNHpPTlZRNXMwaVg5?=
 =?utf-8?B?Tzg3UlhkeG5IUkREbml4cmVqYUgxdVhnSC9ZSWJCSlhOUE9PTWYvaEFqTkgz?=
 =?utf-8?B?c3VFZk1oRDhHZGtOc3FrN0k5QXdKVEp6ZXNWcDZGSjVseWFOS2pQOHp0WVdr?=
 =?utf-8?B?b3pkU0xoem43UUxrMHNVYkg5YnRpSU9COWxpQzJXWXJiQXFGV3l4N3pXN210?=
 =?utf-8?B?YnNvanp1enhXd2lNbVdZR3pGak95VVlBdUFndUNkK25lblp0UXp4UGVvVmxL?=
 =?utf-8?B?UXVBY3hzamxDVFBhaEFPK3UyaG0vSVBuLzhRVmRTeCtUWmdiS0ZHRnNVQWlw?=
 =?utf-8?B?VXJRbDZOb0ovWGFHUTljdzZ1V3lwa0lTU1Uydlp2b0NhZjZDU3BsaTd4eStO?=
 =?utf-8?B?YU1sc2IzSTRicTJzajRBa0ROb3NGSGlvY3FSN0NCaDlZSlRETDQ3eVVLbFZC?=
 =?utf-8?B?U0k5VWN4aExiUmh2NXBTZXhtT1NSNGpId3kvSGJtOFhqb3JDQzYveXl6T1pa?=
 =?utf-8?B?ZXVGZjloM2dWNE5HNGswRU42R20xRVFMbXRtWUJ1ektrcWZNTE1tcW5sclcx?=
 =?utf-8?B?dENLVC9HdkV5Si9JUytpdUxVT1dGSkhMeThiakg4Wmp0aGZRVG5lR1JRdDR5?=
 =?utf-8?B?UkcrK0RMNWtaUjJQUEphVTZLV21sN1gva0xKd3NYZEJHdDlPcktNQmFtcEl5?=
 =?utf-8?B?STEyNVZZRTU4VzBtVkVnWVFNcEMvRUdrcktwSFdBb2tldTBEcmkyVHlEYnhJ?=
 =?utf-8?B?cXczLzQ1REhQQVNoWi90djAvRWI3S0xUSkxQWUhyMTNNYVB3RENWQlVwMXd1?=
 =?utf-8?B?cEVLZUtNekVrVy9iZmJacUowWkdJdWlPelRzUzRjVnpqTVBNRENmYjVmblcv?=
 =?utf-8?B?aHo0R0oraEQwQ3ZIWmUyUHFaWGdzbG1sT2phSDU4cWpwdk4yWnA2Rlh1RDNx?=
 =?utf-8?B?dEF6VnNDVjNOZUpRVnpXUmxkNGxMY2oyWndMbG5HQ2s2bEw1YVk4QWo4c0h6?=
 =?utf-8?B?Zmc4REd1MVkvSm5zbnpYbVlFM1FGblRxdWNmUU04SXNQVFErTGM2ZVpXdTE0?=
 =?utf-8?B?ZEEyOGY3dytHdGVrblAzcUpIek5EYThCbTIxSGxUTElPN0dENjVVNzhKdnVL?=
 =?utf-8?B?R2x6NzkzZ1dwUVF4aC9qNDltaW11UzM4U0dEdFgyTE9rbTdrRlBlS1VtQWNt?=
 =?utf-8?B?L3VKOU1ZSmxpREM1aFo1eTJJS25IT0pIR25yUGNsaG1NVEpac0Q5VUFQL3pP?=
 =?utf-8?Q?+6e4YCsDjMlCwjnrHChwgBYKA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 708ac304-bb70-423f-163b-08dca6e6383e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2024 04:58:09.5817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bak9Amfkyybl2HAiY29LXxYtnDaW0mH8dJbKQheXaWLG936ssKYoy/WaPUXac2KNhduN3e/RkKIKxgst6NFPLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6427
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBYYXZlcg0K
PiBIdWdsDQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDExLCAyMDI0IDk6MDYgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gUkZD
OiBkcm0vZHJtX3BsYW5lOiBFeHBvc2UgdGhlIHBsYW5lIGNhcGFiaWxpdHkgYW5kDQo+IGludGVy
b3BlcmFiaWxpdHkNCj4gDQo+IEhpLA0KPiANCj4gT24gRGllbnN0YWcsIDkuIEp1bGkgMjAyNCAw
OTo0Njo1NiBNRVNaIEFydW4gUiBNdXJ0aHkgd3JvdGU6DQo+ID4gRWFjaCBwbGFuZSBoYXMgaXRz
IG93biBjYXBhYmlsaXR5IG9yIGludGVyb3BlcmFiaWxpdHkgYmFzZWQgb24gdGhlDQo+ID4gaGFy
d2FyZSByZXN0cmljdGlvbnMuIElmIHRoaXMgaXMgZXhwb3NlZCB0byB0aGUgdXNlciwgdGhlbiB1
c2VyIGNhbg0KPiA+IHJlYWQgaXQgb25jZSBvbiBib290IGFuZCBzdG9yZSB0aGlzLiBMYXRlciBj
YW4gYmUgdXNlZCBhcyBhIGxvb2t1cA0KPiA+IHRhYmxlIHRvIGNoZWNrIGEgY29ycmVzcG9uZGlu
ZyBjYXBhYmlsaXR5IGlzIHN1cHBvcnRlZCBieSBwbGFuZSB0aGVuDQo+ID4gb25seSBnbyBhaGVh
ZCB3aXRoIHRoZSBmcmFtZWJ1ZmZlciBjcmVhdGlvbi9jYWxsaW5nIGF0b21pY19pb2N0bC4NCj4g
Pg0KPiA+IEZvciBFeDogVGhlcmUgYXJlIGZldyByZXN0aWN0aW9uIGFzIHRvIGFzeW5jIGZsaXAg
ZG9lc250IHN1cHBvcnQgYWxsDQo+ID4gdGhlIGZvcm1hdHMvbW9kaWZpZXJzLiBTaW1pbGFyIHJl
c3RyaWN0aW9ucyBvbiBzY2FsaW5nLiBXaXRoIHRoZQ0KPiA+IGF2YWlsYWJpbGlsdHkgb2YgdGhp
cyBpbmZvIHRvIHVzZXIsIGZhaWx1cmVzIGluIGF0b21pY19jaGVjayBjYW4gYmUNCj4gPiBhdm9p
ZGVkIGFzIHRoZXNlIGFyZSBtb3JlIHRoZSBoYXJkd2FyZSBjYXBhYmlsaXRpZXMuDQo+ID4NCj4g
PiBUaGVyZSBhcmUgdHdvIG9wdGlvbnMgb24gaG93IHRoaXMgY2FuIGJlIGFjaGVpdmVkLg0KPiA+
IE9wdGlvbiAxOg0KPiA+DQo+ID4gQWRkIGEgbmV3IGVsZW1lbnQgdG8gc3RydWN0IGRybV9tb2Rl
X2dldF9wbGFuZSB0aGF0IGhvbGRzIHRoZSBhZGRyIHRvDQo+ID4gdGhlIGFycmF5IG9mIGEgbmV3
IHN0cnVjdC4gVGhpcyBuZXcgc3RydWN0IGNvbnNpc3RzIG9mIHRoZSBmb3JtYXRzDQo+ID4gc3Vw
cG9ydGVkIGFuZCB0aGUgY29ycmVzcG9uZGluZyBwbGFuZSBjYXBhYmlsaXRpZXMuDQo+ID4NCj4g
PiBPcHRpb24gMjoNCj4gPg0KPiA+IFRoZXNlIGNhbiBiZSBleHBvc2VkIHRvIHVzZXIgYXMgYSBw
bGFuZSBwcm9wZXJ0eSBzbyB0aGF0IHRoZSB1c2VyIGNhbg0KPiA+IGdldCB0byBrbm93IHRoZSBs
aW1pdGF0aW9uIGFoZWFkIGFuZCBhdm9pZCBmYWlsdXJlcyBpbiBhdG9taWNfY2hlY2suDQo+ID4N
Cj4gPiBVc3VhbGx5IGF0b21pY19nZXRfcHJvcGVydHkgaXMgY29udHJvbGxlZCBvdmVyIHRoZSBz
dGF0ZSBzdHJ1Y3QgZm9yDQo+ID4gdGhlIHBhcmFtZXRlcnMvZWxlbWVudHMgdGhhdCBjYW4gY2hh
bmdlLiBCdXQgaGVyZSB0aGVzZSBjYXBhYmlsaXRpZXMNCj4gPiBvciB0aGUgaW50ZXJvcGVyYWJp
bGl0aWVzIGFyZSByYXRoZXIgaGFyZHdhcmUgcmVzdHJpY3Rpb25zIGFuZCB3b250DQo+ID4gY2hh
bmdlIG92ZXIgZmxpcHMuIEhlbmNlIGhhdmluZyBhcyBhIHBsYW5lX3Byb3BlcnR5IG1heSBub3Qg
bWFrZSBtdWNoIHNlbnNlLg0KPiA+IE9uIHRoZSBvdGhlciBoYW5kLCBPcHRpb24gMSBpbmNsdWRl
IGNoYW5nZXMgaW4gdGhlIHVhcGkgc3RydWN0DQo+ID4gZHJtX21vZGVfZ2V0X3BsYW5lLiBTaG91
bGRudCBoYXZlIGltcGFjdCBvbiBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LA0KPiA+IGJ1dCBpZiB1
c2Vyc3BhY2UgaGFzIHNvbWUgaW1wbGVtZW50YXRpb24gc28gYXMgdG8gY2hlY2sgdGhlIHNpemUg
b2YNCj4gPiB0aGUgc3RydWN0LCB0aGVuIGl0IG1pZ2h0IGEgY2hhbGxlbmdlLg0KPiANCj4gQWRk
aW5nIGZpZWxkcyB0byB0aGUgc3RydWN0IHNob3VsZCBiZSBva2F5LCBidXQgYWRkaW5nIGEgcGVy
LXBsYW5lIGltbXV0YWJsZQ0KPiBwcm9wZXJ0eSBpcyBhbHNvIGZpbmUgYW5kIElNTyB0aGUgY2xl
YW5lciBvcHRpb24uIFdlIGFscmVhZHkgaGF2ZSB0aGUgc2FtZSB0aGluZw0KPiB3aXRoICJJTl9G
T1JNQVRTIiBhbmQgInR5cGUiIHRoYXQgZG9uJ3QgZXZlciBjaGFuZ2UgZWl0aGVyLg0KPiANCj4g
RWl0aGVyIHdheSwgaGF2aW5nIGEgY2FwYWJpbGl0eSBmbGFnIHBlciBmb3JtYXQrbW9kaWZpZXIg
cGFpciBzb3VuZHMgZ29vZCB0byBtZQ0KPiBhbmQgc2hvdWxkIGJlIGJvdGggZWFzeSB0byBtYWtl
IHVzZSBvZiBpbiB1c2Vyc3BhY2UuDQoNCkFkZGluZyBuZXcgZmllbGRzIHRvIGEgc3RydWN0dXJl
IHBhcnQgb2YgYW4gZXhpc3RpbmcgVUFQSSBtYXkgbm90IGJlIGEgZ3JlYXQgaWRlYS4NClRoaXMg
Y2FuIGhhdmUgc29tZSBpc3N1ZXMgb2YgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBhbmQgbXVsdGlw
bGUgc3RydWN0dXJlIGRlZmluaXRpb25zDQp3aXRoIHZhcmlvdXMga2VybmVsIGFuZCB1c2VyIHNw
YWNlIGhlYWRlciB2ZXJzaW9ucy4gU28gdGhpcyBkb2Vzbid0IGxvb2sgdmVyeSBwcm9taXNpbmcu
DQpPdGhlcnMgY2FuIGNoaW1lIGluIGFuZCBzaGFyZSB0aGVpciBwZXJzcGVjdGl2ZS4NCiANCldl
IGNhbiBleHBvc2UgYW4gaW1tdXRhYmxlIHBsYW5lIGNhcGFiaWxpdHkgcHJvcGVydHkgKHdpdGgg
aW50ZXJvcGVyYWJpbGl0eSBpbmZvKSB3aGljaCB1c2Vyc3BhY2UNCmNhbiByZWFkIGFuZCBiYXNl
ZCBvbiB0aGUgY2FwYWJpbGl0aWVzIGV4cG9zZWQgcGxhbmUgdGhlIGNvbXBvc2l0aW9uLiBTbywg
b3B0aW9uIDIgbG9va3MgbW9yZQ0KdmlhYmxlIHRvIG1lLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5r
YXINCg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMg
fCAgMyArKysNCj4gPiAgaW5jbHVkZS9kcm0vZHJtX3BsYW5lLmggICAgICAgICAgIHwgIDggKysr
KysrKysNCj4gPiAgaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oICAgICAgIHwgMjAgKysrKysr
KysrKysrKysrKysrKysNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspDQo+
ID4NCj4gPiA9PT09PT09PT09PT09T3B0aW9uIDI9PT09PT09PT09PT09PT09PT09PT09PT0NCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyBpbmRleCAyMmJiYjJkODNlMzAu
LmI0NjE3N2Q1ZmM4Yw0KPiA+IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
YXRvbWljX3VhcGkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGku
Yw0KPiA+IEBAIC02MzEsNiArNjMxLDkgQEAgZHJtX2F0b21pY19wbGFuZV9nZXRfcHJvcGVydHko
c3RydWN0IGRybV9wbGFuZQ0KPiAqcGxhbmUsDQo+ID4gIAkJKnZhbCA9IHN0YXRlLT5ob3RzcG90
X3g7DQo+ID4gIAl9IGVsc2UgaWYgKHByb3BlcnR5ID09IHBsYW5lLT5ob3RzcG90X3lfcHJvcGVy
dHkpIHsNCj4gPiAgCQkqdmFsID0gc3RhdGUtPmhvdHNwb3RfeTsNCj4gPiArCX0gZWxzZSBpZiAo
cHJvcGVydHkgPT0gY29uZmlnLT5wcm9wX3BsYW5lX2NhcHMpIHsNCj4gPiArCQkqdmFsID0gKHN0
YXRlLT5wbGFuZV9jYXBzKSA/DQo+ID4gKwkJCXN0YXRlLT5wbGFuZV9jYXBzLT5iYXNlLmlkIDog
MDsNCj4gPiAgCX0gZWxzZSB7DQo+ID4gIAkJZHJtX2RiZ19hdG9taWMoZGV2LA0KPiA+ICAJCQkg
ICAgICAgIltQTEFORTolZDolc10gdW5rbm93biBwcm9wZXJ0eQ0KPiBbUFJPUDolZDolc11cbiIs
DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9wbGFuZS5oIGIvaW5jbHVkZS9kcm0v
ZHJtX3BsYW5lLmggaW5kZXgNCj4gPiBkZDcxOGM2MmFjMzEuLmRmZTkzMTY3N2QwYSAxMDA2NDQN
Cj4gPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fcGxhbmUuaA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJt
L2RybV9wbGFuZS5oDQo+ID4gQEAgLTI2MCw2ICsyNjAsMTQgQEAgc3RydWN0IGRybV9wbGFuZV9z
dGF0ZSB7DQo+ID4gIAkgKiBmbG93Lg0KPiA+ICAJICovDQo+ID4gIAlib29sIGNvbG9yX21nbXRf
Y2hhbmdlZCA6IDE7DQo+ID4gKw0KPiA+ICsJLyoqDQo+ID4gKwkgKiBAcGxhbmVfY2FwczoNCj4g
PiArCSAqDQo+ID4gKwkgKiBCbG9iIHJlcHJlc2VudGluZyBwbGFuZSBjYXBjYWJpbGl0ZXMgYW5k
IGludGVyb3BlcmFiaWxpdHkuDQo+ID4gKwkgKiBUaGlzIGVsZW1lbnQgaXMgYSBwb2ludGVyIHRv
IHRoZSBhcnJheSBvZiBzdHJ1Y3QNCj4gZHJtX2Zvcm1hdF9ibG9iLg0KPiA+ICsJICovDQo+ID4g
KwlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKnBsYW5lX2NhcHM7DQo+ID4gIH07DQo+ID4NCj4g
PiAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX3JlY3QNCj4gPg0KPiA+ID09PT09PT09PT09PT1P
cHRpb24gMT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaA0K
PiA+IGluZGV4IGQzOTAwMTFiODliNC4uMGI1YzFiNjVlZjYzIDEwMDY0NA0KPiA+IC0tLSBhL2lu
Y2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaA0KPiA+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJt
X21vZGUuaA0KPiA+IEBAIC0zMTIsNiArMzEyLDIwIEBAIHN0cnVjdCBkcm1fbW9kZV9zZXRfcGxh
bmUgew0KPiA+ICAJX191MzIgc3JjX3c7DQo+ID4gIH07DQo+ID4NCj4gPiArI2RlZmluZSBEUk1f
Rk9STUFUX1BMQU5FX0NBUF9MSU5FQVJfVElMRQlCSVQoMCkNCj4gPiArI2RlZmluZSBEUk1fRk9S
TUFUX1BMQU5FX0NBUF9YX1RJTEUJCUJJVCgxKQ0KPiA+ICsjZGVmaW5lIERSTV9GT1JNQVRfUExB
TkVfQ0FQX1lfVElMRQkJQklUKDIpDQo+ID4gKyNkZWZpbmUgRFJNX0ZPUk1BVF9QTEFORV9DQVBf
WWZfVElMRQkJQklUKDMpDQo+ID4gKyNkZWZpbmUgRFJNX0ZPUk1BVF9QTEFORV9DQVBfQVNZTkNf
RkxJUAkJQklUKDQpDQo+ID4gKyNkZWZpbmUgRFJNX0ZPUk1BVF9QTEFORV9DQVBfRkJDCQlCSVQo
NSkNCj4gPiArI2RlZmluZSBEUk1fRk9STUFUX1BMQU5FX0NBUF9SQwkJCUJJVCg2KQ0KPiA+ICsN
Cj4gPiArc3RydWN0IGRybV9mb3JtYXRfYmxvYiB7DQo+ID4gKwlfX3U2NCBtb2RpZmllcjsNCj4g
PiArCV9fdTMyIHBsYW5lX2NhcHM7DQo+ID4gKw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiAgLyoqDQo+
ID4gICAqIHN0cnVjdCBkcm1fbW9kZV9nZXRfcGxhbmUgLSBHZXQgcGxhbmUgbWV0YWRhdGEuDQo+
ID4gICAqDQo+ID4gQEAgLTM1NSw2ICszNjksMTIgQEAgc3RydWN0IGRybV9tb2RlX2dldF9wbGFu
ZSB7DQo+ID4gIAkgKiBzdXBwb3J0ZWQgYnkgdGhlIHBsYW5lLiBUaGVzZSBmb3JtYXRzIGRvIG5v
dCByZXF1aXJlIG1vZGlmaWVycy4NCj4gPiAgCSAqLw0KPiA+ICAJX191NjQgZm9ybWF0X3R5cGVf
cHRyOw0KPiA+ICsJLyoqDQo+ID4gKwkgKiBAIGZvcm1hdF9ibG9iX3B0cjogUG9pbnRlciB0byB0
aGUgYXJyYXkgb2Ygc3RydWN0DQo+IGRybV9mb3JtYXRfYmxvYi4NCj4gPiArCSAqIFNwZWNpZnkg
dGhlIHBsYW5lIGNhcGFiaWxpdGVzL3Jlc3RyaWN0aW9ucyB3LnIudCB0aWxpbmcvc3luYy0NCj4g
YXN5bmMNCj4gPiArCSAqIGZsaXBzIGV0Yw0KPiA+ICsJICovDQo+ID4gKwlfX3U2NCBmb3JtYXRf
YmxvYl9wdHI7DQo+ID4gIH07DQo+ID4NCj4gPiAgc3RydWN0IGRybV9tb2RlX2dldF9wbGFuZV9y
ZXMgew0KPiANCj4gDQo+IA0KDQo=
