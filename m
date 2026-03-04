Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gE0YBgQNqGn2nQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:44:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F31A1FE813
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6587610E086;
	Wed,  4 Mar 2026 10:44:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KHtt8V8e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2D110E9A9;
 Wed,  4 Mar 2026 10:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772621056; x=1804157056;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=vCA4+YVMBZWgzn0NbL35trR6Xzl8t3mNnBt4u+9xh88=;
 b=KHtt8V8eqTAANFGARzm/82eNm78UpnF+Exe6NFTpm45mmmN43HlXn17i
 SzwC90w5qUaVUhaNyXMgxPr8kNUw3LgCmxoFx7SfegZY3izQH96+fGL5E
 rfq1e+UPcvNBxuTh/OZeBeRX+lrQKtxq0OqqdKwwuX95XixpZaPZ2aRG7
 KxGgyj4WaAKQG3w7Hy5cKyaJxcyNgJu0MK6UVYBFhWCgCm9v7McwwOZOr
 wdDWKwEmeAd45Xhiut0x0sjSFOo4+A3HjDNcew9v2VyOSq0tXD3IkejcI
 MKmd3CMqimx5Zd66q2+7Hhotoi4psiIItlj070XmSwvb/CzHar3UqQm2F A==;
X-CSE-ConnectionGUID: LinhhwEVTEmnHyrj1inm3g==
X-CSE-MsgGUID: 5XLS8VbPQpitGWe03aq03w==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="72705186"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="72705186"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:44:15 -0800
X-CSE-ConnectionGUID: /ILZDKMARAuKgRpbCkQmhg==
X-CSE-MsgGUID: h5SJkreKQjGO58RgriZLXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="221275598"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:44:15 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:44:15 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 02:44:15 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:44:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qn7SFrKsquwQrkmZeuWPYS3qfQuegQZLmZcNcoo5pY9ZaRmbKzsVryeyx54/6hHsKQHWePB6fZm7/kl69vzkrF97YV7Vvs+lPNHp584UWe/5Rb8AaYLX3lwJzcGZt60X/Ku79J3bLxeX/9ff/v/vJ0Rq+dLHKsXzW/xjvzXCucouGfuLXdVxXOYhpeDidpZzikjGcn1pdNvPRp95A8DOygVIUaejOPRa6wm2f6Qwx7wHadEn1mgqZN4v4H8kujJtP83J4AAw9mkFmB7cTAKy1Wl24VPxR8LMcNMO5jjBeUTX9TfcmlUxswHSo8bJCnEHyGumXjpF5YrYDcPEte+lrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vCA4+YVMBZWgzn0NbL35trR6Xzl8t3mNnBt4u+9xh88=;
 b=oHXOIRIBjzuU7Oti2A4an8M7QbCVIltNQ/cPK65lTVTWXvnLKTIfe5kG5/Y2EbefBADJ/F8/ew9lqNmIDzmlSrMeSrMtftYqeF9VF+MRRb5Dg4PSYo5dWlpIfuBuN0mJuJDqT+aXInAXr0yn/YPp3o+o8//wXZMAC3KUwim1u8FBjfeCCAJtASbfFcGS62vzyJfzwd3RTWhV5Ww//tj032qW6mR9pSZjn9AniFszn4t7TIni98LG+tsD1M8gdR7/rOfiHf+4EdQtKoM31PSjbx+Cy4iJ813UVHasRL0MbG958M2YHNALdN+6uosmVRS/vWXI5PnkfTS23qGMz2WGFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4887.namprd11.prod.outlook.com (2603:10b6:510:30::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.22; Wed, 4 Mar 2026 10:44:12 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 10:44:12 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/4] drm/i915/dsc: Add helper for writing DSC Selective
 Update ET parameters
Thread-Topic: [PATCH v2 3/4] drm/i915/dsc: Add helper for writing DSC
 Selective Update ET parameters
Thread-Index: AQHcqwzkXTyW+KBP7kWGDXVTmoXwl7WeDgIAgAAKRoCAABRUAIAABPaA
Date: Wed, 4 Mar 2026 10:44:12 +0000
Message-ID: <bbd91dcba0803f59395f3f33562580a58a3df896.camel@intel.com>
References: <20260303125409.503148-1-jouni.hogander@intel.com>
 <20260303125409.503148-4-jouni.hogander@intel.com>
 <5bb046c8-b154-4fc3-a119-e7c2a41b4c6b@intel.com>
 <64747118136fee7be6a7924dfc9199e6a852de05.camel@intel.com>
 <507f582b-fbe5-4ab6-bf4d-78c23359b207@intel.com>
In-Reply-To: <507f582b-fbe5-4ab6-bf4d-78c23359b207@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4887:EE_
x-ms-office365-filtering-correlation-id: 1f460d4c-555a-410a-0d7f-08de79daf92e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: H2q5r/i2PJh6dyh3Jdzymn2rP6MXGyxbLs9tB6rPmE8au0Sko2IhWtsiEZXEnkD55eX2yOUZSqcQ7VS6HJe0w/iCYOw7hPbMXb/igN/vlT4N0B5teYzRrd+lPIkhig76UKMnh+o/IGZNivWOuaZJ7Yu8zBBY98wmnIXROjPMpH4O93ah3QUL6dDXbQmmPMOZaV7ADk0BkVvDgKTlWPtOgYoNZWm1S9Ck95Fk90zUPufLJoKGBSaJLehpA+wu6Re/rQpxqNtOATyjiqF2qWkcopi924cDRkxxr2llhL7I6rvrBgA+TZHibNOU2DQC3gVSDKNpoNREbu/is6IRx9D9s9CufxAF1sIW574pC2DwHBXf2c7h+Q69Ts8dJUTbGok91hlwd0CFUQ5hENsJyTdCNKdqamnDx2jHBO2E604ga3Z8yqJzhzHzIaz9N6BAhaMBEElJbzCfyVVWmFvxN2g4MtTjqHkO71KGUvQaj1HkCLJcY4AD6ARnUlRksJd9fp52y5vHbyDXydNrrrU1HXvIkWy2/Eu7tV7rwsPvBAv5dxW/MmL/DiTtz1IsCHZo4f+GcWvOj66gSHQftOKAjDj9Nca4F8MvY8k/L6aZQ9NnHqfVtNEE/5B7ZQOjr/G7woJr14Qly/pLgZRjATnZduBBmnGk7XAzeR16T5lFolNHpdrhSUrCeiqHFhZoZSLpOzR63uX5z3jI78TyU42bwHMJqpcqOoA+xQaDw7UsBLkZTJeCUyDIvs5uzlvDYtaEsZFhT6+39ocypBGeKv7CQKx/G95dR6zuBghZo7P5Y6JsEsQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHd6YWw0c1ppRHJvTnRFSUtrK2tLVlZsdzVURFg0MGFzbXBWTUFNWEM0OE9m?=
 =?utf-8?B?cFYyLzdkRkRLQXd0ZmFDSm9YcG9SS2cwSU9aYTdKOWtvN25zYmkxZEd2S3Vs?=
 =?utf-8?B?ZVF0YUVrNnl1dmNDdHFtSUlWUjcvUzN5U2k2ZThFYmtFb0ZaVlRJZ0U4dXl0?=
 =?utf-8?B?NHUwVUo5RjBwK2FHZ3BFbFBGVjc1T0RGSW9JNk8rQjk3eFJHVkZOOWV4K2w1?=
 =?utf-8?B?Q0pEbms5dU16RHRXcmdSYnNEYnFmUDl5bVB5QXZKZHBpb0JKeUJyRE15T2w1?=
 =?utf-8?B?bUxJdkszOHQ3Q2o1T1FJNUJVLzdubkxlNHBjZU9TRE1sOFBaTGNrbFNucW9K?=
 =?utf-8?B?TUtqVmQwQ3dxUGFGOWsrSkZVbmpTSWtkdWwzeUQ4QUZLQnhEUlA2VWFjZUlp?=
 =?utf-8?B?ZHlNVUEwUzdPTHR1NnIvdGVqcXlYSXhrU2NOSjdBWEhBOXdHdUdoY1RBZ3Jy?=
 =?utf-8?B?dXJqR2xKMXFFWFhHRXZsTWdFY3NIUUtLOG5YT1N3R2Nsakt2ZmJwZXNxUlRP?=
 =?utf-8?B?Tzk3VEdYU2hHeVZzOENJemJCZEFFbkhNejZoaVlxTDhJZVIyaEFzb1MzRldX?=
 =?utf-8?B?YlVwa1J5VzFkcmFBRjhXZkp3YjZzaEpXckRJNDRoMXZpaEJUWllUU09nQ1BI?=
 =?utf-8?B?TEJuQVFuQk5MeklyNEpZMHhaeE5GeWhiemUyRVZmZzVQb1NUczFVS0phZVg4?=
 =?utf-8?B?V2F2aWg5ekJSSHVZT0xRNDJtNzMyRmZQWXFySm80cW1TZVUrRmlNM28zNFoz?=
 =?utf-8?B?ZjN0T2liWVpONkg4b0ZZbzR0SlR6VnZaWHFaRy9qWXNLM0dHL25sOEpUbVEv?=
 =?utf-8?B?TkIzVGpaVlptcmJIWEJwQUJUYWRVWURFTDlYQXg0SFd3bFdEVzdXSDRhaXRl?=
 =?utf-8?B?czdhTmk4TFU5b3RmVGp1SjJpQUNVazhFVkMyMmhQd2tyajZ4U0hkZFg5OVFa?=
 =?utf-8?B?VHdsVnpZeXRlV0dBakp2bW9OL2FVcERLeHJQb2tJeWxPUkpvWk5GZSsxaVRS?=
 =?utf-8?B?ZGRHZUlETnpwU2Nqa1RjZUtweHVHTDdrRFI5VE5MVHYwTVY1TmRTblQrOGI3?=
 =?utf-8?B?ME1qRVNGNlg3Y3F1MmhKeUk1dnNiUC90b2lKNUxEZmM4R1NsYTFTVU52VC9M?=
 =?utf-8?B?R2lFWFV4bVJabGJFa0Eza1F4NUZEZk9MY3Y2b09tNDBwdjFpam1PMEp2U2pS?=
 =?utf-8?B?YjhnT3ZST0l3eGNrOENUNWxDcVc1QUpqdiszNlZKakxaUmR4Rmp6dDl6aUVr?=
 =?utf-8?B?RVpzK0JCa0ZibXFGSHRSejR0K2NYZ0tUNVRBcTU1QkZNTG9TbWp2MGdhL2Rl?=
 =?utf-8?B?c2ZYYzNVcUZlQTBLU3g3ZkFaZDFqdDNEdDhRU3ludFh2VWFrMFNLL2ZzNk5t?=
 =?utf-8?B?dG1Za1BVN1pFN0dxQlU2Y2J4Smw1cUJWZmlUSU5HeWI0UEErVEVZSGxXQzlB?=
 =?utf-8?B?U3ZCR29nRjBldEt5QWUwTmo3R2g1WENoRTcvaXYyS3NNMG1sVDFBUUk2bnJT?=
 =?utf-8?B?VE1FUFE2RmhBaDlIc3A4WThNMzJFM2NQYUc1UmhRVmR2YnRCNERxT3NiR2FI?=
 =?utf-8?B?WjlVTjF0UWFtUGYvUlJBVm5wR0MrcFRsa3pHTklKVlFaVnYxRWwza05tcE5k?=
 =?utf-8?B?Y2dsYmRnMUp2STN2T3ByNlE4TXZDcTZtQ3hLbjVXVHY1cmkvbHQ5ZllXaDdP?=
 =?utf-8?B?dDRzbHVVZm5tbjQ1MEd2Z1I1S3ljTlFDT290SjJpelFwU3pzckdhUnJ2YTFN?=
 =?utf-8?B?azR4bU5GQlRZTW9ZYm1MbVdNQ1VleFJBdmpCdUxxVCtiQTN4YzBDS3NzTGow?=
 =?utf-8?B?ZTdHZjE1R1BZaXBDZFQ1bzljVGo0WHNWVlF4a2NQd3kyOGJQU1c4M2gzYm9B?=
 =?utf-8?B?anE0OUFmV0NpSkM4bVd0VEJON1FsNzBaUm5TSHhGcWhGSDRjUHVxSElpbFNk?=
 =?utf-8?B?cGNQNWphTlVRS0E5MjI4VlR0ZnNLT2pGaW0vdlk2SjZzMHhqQ3ROMU55WU41?=
 =?utf-8?B?cUg3NjZDNlB4NEwzM0MzQmtQOXhSazQzeVZPekdidHNvbG9iL2hOeWg3bUNT?=
 =?utf-8?B?Q2YzaXM1ZlpsOXdqN015anNLbEFtMFhxZ0pCeTlwRVY0bzlFV0d3ZW9YclZo?=
 =?utf-8?B?QWtOUDlkYy9ER0YwaUZMZDhuTGpBQ2hlZTA1UXdvVnB6YkwrbEVjU0JIMzI3?=
 =?utf-8?B?S3IyR3VlcEJtd1JETEM3RVNPdzNoMU9OTEg1c1BPa0RPUDBWak9oMGlGVHZN?=
 =?utf-8?B?N0hBRmRwMjcrckdKSHZMWjVRWnZyY3NienR5eUx1U042NnZNRm9pWE9Eb0lV?=
 =?utf-8?B?UG5LU2ZpYnJ5SGVuVDAvNW8vaUFyL090Mk15UGtTdHZxUVl1K2taODZCa0tU?=
 =?utf-8?Q?2o2CebEtzS4iGypcxit6LNR3KWFlGkf7iaTRDTh5PXtzF?=
x-ms-exchange-antispam-messagedata-1: 6ObWR3u5uitcGVSoiLptWtiZHIv8h4NGTq8=
Content-Type: text/plain; charset="utf-8"
Content-ID: <11C625D6B105D140BF84A6A0B4513DD0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f460d4c-555a-410a-0d7f-08de79daf92e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 10:44:12.3404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UqR4RsweXGsKgozQR97kjCNKwaz2qOfV39qbrF1Kmjh36/kpy2kX6g/LR9EtlGq8tv6THWy0Efp9T3gqqniloxwjHa7FD30PLwq5e4L6IUQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4887
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
X-Rspamd-Queue-Id: 6F31A1FE813
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDE1OjU2ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDMvNC8yMDI2IDI6NDMgUE0sIEhvZ2FuZGVyLCBKb3VuaSB3cm90ZToNCj4g
PiBPbiBXZWQsIDIwMjYtMDMtMDQgYXQgMTQ6MDYgKzA1MzAsIE5hdXRpeWFsLCBBbmtpdCBLIHdy
b3RlOg0KPiA+ID4gT24gMy8zLzIwMjYgNjoyNCBQTSwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0K
PiA+ID4gPiBUaGVyZSBhcmUgc2xpY2Ugcm93IHBlciBmcmFtZSBhbmQgcGljIGhlaWdodCBjb25m
aWd1cmF0aW9uIGluDQo+ID4gPiA+IERTQw0KPiA+ID4gPiBTZWxlY3RpdmUNCj4gPiA+ID4gVXBk
YXRlIFBhcmFtZXRlciBTZXQgMSByZWdpc3Rlci4gQWRkIGhlbHBlciBmb3IgY29uZmlndXJpbmcN
Cj4gPiA+ID4gdGhlc2UuDQo+ID4gPiA+IA0KPiA+ID4gPiBCc3BlYzogNzE3MDkNCj4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmRzYy5jIHwgMjINCj4gPiA+ID4gKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4g
PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oIHzCoCAzICsr
Kw0KPiA+ID4gPiDCoMKgIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQ0KPiA+ID4g
PiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmRzYy5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMNCj4gPiA+ID4gaW5kZXggN2U1MzIwMWIzY2IxLi5hZTNhZjNjMmU0MWEgMTAwNjQ0DQo+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+
ID4gPiA+IEBAIC04MjAsNiArODIwLDI4IEBAIHZvaWQgaW50ZWxfZHNjX2RwX3Bwc193cml0ZShz
dHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gwqDCoMKgCQkJ
CcKgIHNpemVvZihkcF9kc2NfcHBzX3NkcCkpOw0KPiA+ID4gPiDCoMKgIH0NCj4gPiA+ID4gwqDC
oCANCj4gPiA+ID4gK3ZvaWQgaW50ZWxfZHNjX3N1X2V0X3BhcmFtZXRlcnNfY29uZmlndXJlKHN0
cnVjdCBpbnRlbF9kc2INCj4gPiA+ID4gKmRzYiwNCj4gPiA+ID4gc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ID4gPiA+ICsJCQkJCcKgIGNvbnN0IHN0cnVjdA0KPiA+ID4gPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCBpbnQgc3VfbGluZXMpDQo+ID4gPiA+ICt7DQo+ID4g
PiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gPiB0b19pbnRlbF9k
aXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+ID4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0g
dG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+IHVhcGkuY3J0Yyk7DQo+ID4gPiA+
ICsJY29uc3Qgc3RydWN0IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZjcnRjX3N0YXRlLQ0K
PiA+ID4gPiA+IGRzYy5jb25maWc7DQo+ID4gPiA+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5w
aXBlOw0KPiA+ID4gPiArCWludCB2ZHNjX2luc3RhbmNlc19wZXJfcGlwZSA9DQo+ID4gPiA+IGlu
dGVsX2RzY19nZXRfdmRzY19wZXJfcGlwZShjcnRjX3N0YXRlKTsNCj4gPiA+ID4gKwlpbnQgc2xp
Y2Vfcm93X3Blcl9mcmFtZSA9IHN1X2xpbmVzIC8gdmRzY19jZmctDQo+ID4gPiA+ID4gc2xpY2Vf
aGVpZ2h0Ow0KPiA+ID4gPiArCXUzMiB2YWw7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwlkcm1fV0FS
Tl9PTl9PTkNFKGRpc3BsYXktPmRybSwgc3VfbGluZXMgJSB2ZHNjX2NmZy0NCj4gPiA+ID4gPiBz
bGljZV9oZWlnaHQpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJdmFsID0NCj4gPiA+ID4gRFNDX1NV
UFMwX1NVX1NMSUNFX1JPV19QRVJfRlJBTUUoc2xpY2Vfcm93X3Blcl9mcmFtZSk7DQo+ID4gPiA+
ICsJdmFsIHw9IERTQ19TVVBTMF9TVV9QSUNfSEVJR0hUKHN1X2xpbmVzKTsNCj4gPiA+ID4gKw0K
PiA+ID4gPiArCWludGVsX2RlX3dyaXRlX2RzYihkaXNwbGF5LCBkc2IsDQo+ID4gPiA+IExOTF9E
U0MwX1NVX1BBUkFNRVRFUl9TRVRfMChwaXBlKSwgdmFsKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAr
CWlmICh2ZHNjX2luc3RhbmNlc19wZXJfcGlwZSA+IDEpDQo+ID4gPiA+ICsJCWludGVsX2RlX3dy
aXRlX2RzYihkaXNwbGF5LCBkc2IsDQo+ID4gPiA+IExOTF9EU0MxX1NVX1BBUkFNRVRFUl9TRVRf
MChwaXBlKSwgdmFsKTsNCj4gPiA+IEN1cnJlbnRseSAzIERTQyBlbmdpbmVzIHBlciBwaXBlIGlz
IG9ubHkgc3VwcG9ydGVkIG9uIEJNRywgd2hpY2gNCj4gPiA+IGRvZXNuJ3QNCj4gPiA+IGhhdmUg
ZURQLCBzbyB2ZHNjX2luc3RhbmNlc19wZXJfcGlwZSB3b3VsZCBuZXZlciBiZSAzIGZvciBub3cu
DQo+ID4gWWVzLCBidXQgaXQgY2FuIGJlIHR3by4gVGh1cyA+IDEuDQo+ID4gPiBGdXJ0aGVybW9y
ZSB3ZSBkbyBub3Qgc3VwcG9ydCB0aGVzZSByZWdpc3RlcnMgZm9yIEJNRyBBRkFJQ1MuDQo+ID4g
PiANCj4gPiA+IEhvd2V2ZXIgbGF0ZXIgc29tZSBwbGF0Zm9ybSBtYXkgaGF2ZSAzIFZEU0MgZW5n
aW5lcyBhbmQgd2hvIGtub3dzDQo+ID4gPiBtYXkNCj4gPiA+IG5lZWQgdGhlIFNlbGVjdGl2ZSBV
cGRhdGUgRVQgY29uZmlndXJhdGlvbiBmb3IgRFNDLg0KPiA+ID4gDQo+ID4gPiBTaW5jZSB3ZSBk
byBub3QgaGF2ZSB0aG9zZSByZWdpc3RlcnMgZGVmaW5lZCwgbGV0cyBtYWtlIHRoaXMNCj4gPiA+
IGNvbmRpdGlvbg0KPiA+ID4gc3BlY2lmaWNhbGx5IGNoZWNrIGZvciBgdmRzY19pbnN0YW5jZXNf
cGVyX3BpcGUgPT0gMWANCj4gPiBXZSBjYW4ndCBkbyB0aGF0IGJlY2F1c2UgaW5zdGFuY2VzIGNh
biBiZSA+IDEuIEFjdHVhbGx5IHdoZW4NCj4gPiBydW5uaW5nDQo+ID4ga21zX3BzcjJfc2Ygb24g
c2V0dXAgd2hlcmUgcGFuZWwgaXMgc3VwcG9ydGluZyBzZWxlY3RpdmUgdXBkYXRlIGFuZA0KPiA+
IGRzYw0KPiA+IHRoaXMgaXMgdGhlIGNhc2UuDQo+IA0KPiANCj4gU29ycnkgSSBtZWFudCBgdmRz
Y19pbnN0YW5jZXNfcGVyX3BpcGUgPT0gMmAuDQoNCk9rIEkgd2lsbCBjaGFuZ2UgaXQgdG8gdGhp
cyBjaGVjay4gQWxsdG91Z2h0IEkgZG9uJ3Qga25vdyBpZiBpdCdzIGFueQ0KYmV0dGVyIHRvIGNv
bmZpZ3VyZSBvbmx5IERTQzAgaWYgd2UgcmVhY2ggaGVyZSBhbmQNCnZkc2NfaW5zdGFuY2VzX3Bl
cl9waXBlID4gMi4NCg0KSSB3aWxsIGFsc28gYWRkIFdBUk5fT05fT05DRSBpZiB2ZHNjX2luc3Rh
bmNlc19wZXJfcGlwZSA+IDIuDQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IA0KPiA+
IA0KPiA+ID4gV2UgY2FuIGhhdmUgcGVyaGFwcyBoYXZlIFdBUk5fT04gaWYgdmRzY19pbnN0YW5j
ZXNfcGVyX3BpcGUgPiAyLA0KPiA+ID4gYXQNCj4gPiA+IHRoZQ0KPiA+ID4gc3RhcnQsIGFzIHdl
IGRvIG5vdCBleHBlY3QgdGhlIFNVIEVUIGNvbmZpZ3VyYXRpb24gZm9yIDNyZCBWRFNDDQo+ID4g
PiBlbmdpbmUgeWV0Lg0KPiA+IEkgc2VlIGV2ZXJ5d2hlcmUgZWxzZSBpbiBpbnRlbF92ZHNjLmMg
c2FtZSBjb252ZW50aW9uIGlzIHVzZWQuIEkNCj4gPiBkb24ndA0KPiA+IHVuZGVyc3RhbmQgd2h5
IHRoaXMgaGVscGVyIGZvciBQU1IgY29kZSBzaG91bGQgYmUgbWFkZSBkaWZmZXJlbnQNCj4gPiBh
bmQgYmUNCj4gPiByZXNwb25zaWJsZSBmb3IgaWRlbnRpZnlpbmcgcG9zc2libGUgRFNDIGNvbmZp
Z3VyYXRpb24gaXNzdWU/DQo+IA0KPiBGb3IgYWxsIHRoZSBQUFMgcmVnaXN0ZXJzIHdlIGFyZSB1
c2luZywgaW50ZWxfZHNjX3Bwc193cml0ZSgpIGFuZCANCj4gaW50ZWxfZHNjX2dldF9wcHNfcmVn
KCkgd2hpY2ggdGFrZSBjYXJlIG9mIHRoaXMuDQo+IA0KPiBCdXQgeWVzLCBJIGNhbiBzZWUgdGhl
cmUgaXMgYSBtaXNzIGluIDIgcGxhY2VzOlJDX0JVRl9USFJFU0gNCj4gcmVnaXN0ZXJzIA0KPiBh
bmQgUkNfUkFOR0VfUEFSQU1FVEVSIHJlZ2lzdGVycywgZm9yIHdoaWNoIDNyZCBEU0MgZW5naW5l
IHRoaW5nIGlzIA0KPiBtaXNzaW5nLiAoSSdsbCBjaGVjayBpZiB0aGVyZSBhcmUgYW55IG1vcmUg
aW5zdGFuY2VzIGFuZCByZWN0aWZ5IHRoaXMNCj4gc29vbikuDQo+IA0KPiBTbyBJIHJlY29tbWVu
ZCBmaWxsaW5nIHRoaXMgcmVnaXN0ZXIgb25seSBmb3IgMiB2ZHNjIHNsaWNlcyBwZXIgcGlwZS4N
Cj4gDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+IA0KPiA+IA0KPiA+IEJSLA0K
PiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBSZWdhcmRzLA0KPiA+ID4g
DQo+ID4gPiBBbmtpdA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+
ID4gPiDCoMKgIHN0YXRpYyBpOTE1X3JlZ190IGRzc19jdGwxX3JlZyhzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywgZW51bQ0KPiA+ID4gPiB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyKQ0KPiA+ID4g
PiDCoMKgIHsNCj4gPiA+ID4gwqDCoMKgCXJldHVybiBpc19waXBlX2RzYyhjcnRjLCBjcHVfdHJh
bnNjb2RlcikgPw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92ZHNjLmgNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zkc2MuaA0KPiA+ID4gPiBpbmRleCBmNGQ1YjM3MjkzY2YuLjMzNzJmODY5NDA1NCAx
MDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmgNCj4gPiA+ID4gQEAgLTE0LDYgKzE0LDcgQEAgZW51bSB0cmFuc2NvZGVyOw0KPiA+ID4g
PiDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjOw0KPiA+ID4gPiDCoMKgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlOw0KPiA+ID4gPiDCoMKgIHN0cnVjdCBpbnRlbF9kaXNwbGF5Ow0KPiA+ID4gPiArc3Ry
dWN0IGludGVsX2RzYjsNCj4gPiA+ID4gwqDCoCBzdHJ1Y3QgaW50ZWxfZHNjX3NsaWNlX2NvbmZp
ZzsNCj4gPiA+ID4gwqDCoCBzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsNCj4gPiA+ID4gwqDCoCANCj4g
PiA+ID4gQEAgLTM3LDYgKzM4LDggQEAgdm9pZCBpbnRlbF9kc2NfZHNpX3Bwc193cml0ZShzdHJ1
Y3QNCj4gPiA+ID4gaW50ZWxfZW5jb2Rlcg0KPiA+ID4gPiAqZW5jb2RlciwNCj4gPiA+ID4gwqDC
oMKgCQkJwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gKmNy
dGNfc3RhdGUpOw0KPiA+ID4gPiDCoMKgIHZvaWQgaW50ZWxfZHNjX2RwX3Bwc193cml0ZShzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+ID4gwqDCoMKgCQkJwqDCoMKgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+ID4g
K3ZvaWQgaW50ZWxfZHNjX3N1X2V0X3BhcmFtZXRlcnNfY29uZmlndXJlKHN0cnVjdCBpbnRlbF9k
c2INCj4gPiA+ID4gKmRzYiwNCj4gPiA+ID4gc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
DQo+ID4gPiA+ICsJCQkJCcKgIGNvbnN0IHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLCBpbnQgc3VfbGluZXMpOw0KPiA+ID4gPiDCoMKgIHZvaWQgaW50ZWxfdmRz
Y19zdGF0ZV9kdW1wKHN0cnVjdCBkcm1fcHJpbnRlciAqcCwgaW50DQo+ID4gPiA+IGluZGVudCwN
Cj4gPiA+ID4gwqDCoMKgCQkJwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+
ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gPiA+IMKgwqAgaW50IGludGVsX3Zkc2NfbWluX2NkY2xr
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ICpjcnRjX3N0YXRlKTsNCg0K
