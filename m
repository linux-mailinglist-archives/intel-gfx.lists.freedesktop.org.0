Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 31yOLLRWOmrd6QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:49:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1366D6B5EE9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:49:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DPG54mBr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4FB10EA5F;
	Tue, 23 Jun 2026 09:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C73510E0C2;
 Tue, 23 Jun 2026 09:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782208178; x=1813744178;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DPSZW78PP2MipAh42zesDrBd+Dcf51enMwHgZoe44Tk=;
 b=DPG54mBrg+W70m8ZzxIYLeZMs25dwAgbQpO7dsAvjAkVK2RPh9Mh6pcg
 YddUCaqKROtPR5tqq30JLs0nWJQjEbjhgDdmTovHibfF58erG7zzFj0+V
 HroA94H+8lz/Hrl+46koTki25U20GcON+ofYzJeB/lFQh4ob741qv4vGR
 TCINpj0Vgifromaf4w2mWqKCIG/ms4Ky+aN+GcTL/PqRMQCazeer3orrK
 vMVENZyC0N0ZNRnKGmUwHUKBjWL33T95T/WSEiL23j8WCBAEvREv8uiJ2
 DRQwzijfQfNTNrgwyhL49MChKFs0K6SWOkTg07ASZjntasmQL6CBE8Vit Q==;
X-CSE-ConnectionGUID: cBSqrX17QZ6vD5KeKfaxfA==
X-CSE-MsgGUID: DKx8HIvGSRmoc8BpSYyz4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82988733"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82988733"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:49:37 -0700
X-CSE-ConnectionGUID: 3S3xjheqR3SW8RafJdFslA==
X-CSE-MsgGUID: U4Rg72gkQQK77gA8ROk82w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="249334891"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:49:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:49:35 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 02:49:35 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:49:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wjyXbpLN6F4m97hpN7Ksx1KPcgqLbNZHCiZudCwdNv8W3N6vxMK7bnCs15brApRDB8HWKGslD6zhh0e9xAbqWnFPEQLhtcZik2mSCY9STczgi6xNiNh/Gv25ojX4RWxiTJxphsI0kUyyrGMa5NH8hYft5lLxyvJQRZrULwLRRS/OyRlEsmghVVXY5/kX/YiO7oeiJFJLudqkHVVi0Mgx1oQXIXlqvDuZB9PDrNszh99bgaSjur3GmGWdi5SKpVBPYPgMO90DeVCAoHeM6DeCZD8NpO90D8KnftIVBih9E/r9nFRbof+EISPmGRCY/ryS6aVFL0A2ZT9LRNvvuQ9UXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DPSZW78PP2MipAh42zesDrBd+Dcf51enMwHgZoe44Tk=;
 b=Fd6HECZG/YLN3rdTv2UnZheO4IEG+3esfUDKbUEtYxqSvg6+dVHw+DQtyBJ/t6CaL7HpV9PeLcQ8eobcA3kEoaihceyEmkxixl1tzhYrx/U0p008jkMEbVtpwZWu4rANZ0x9zW6P35xWlXn4Q6TJGqqb5C+w/hUuGvBrT1T7XVgbm2KnySwP7EHceuqxzXIu4NiciL7JFEqjJaxSKXbObDlgvbGO2M8dlxwpxmq9hz9Dn2Um8V6L67hurregtw3k32JVZlCFvVZ1riD0lW5Gw89g+wo7iyHP7NsOb7bcqOlTDhrI6znfITShnzaeAAtPGc0z7ndqfC5NSkxjX1nWXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SJ2PR11MB7425.namprd11.prod.outlook.com
 (2603:10b6:a03:4c0::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.19; Tue, 23 Jun
 2026 09:49:32 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 09:49:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 06/28] drm/i915/dp: Simplify querying of forced link
 parameters
Thread-Topic: [PATCH v2 06/28] drm/i915/dp: Simplify querying of forced link
 parameters
Thread-Index: AQHc/dn+N3ysUiNEwUiCfkbTriHJcrZL72eQ
Date: Tue, 23 Jun 2026 09:49:32 +0000
Message-ID: <DS4PPF69154114F4BF197D8EC7C9EF660D8EFEE2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-7-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SJ2PR11MB7425:EE_
x-ms-office365-filtering-correlation-id: 8b8d6d7a-b113-48a0-cbeb-08ded10cb9e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|38070700021|3023799007|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: /g9c/3wHwwXf0VkuNzpz0MC7tCVJuxScrorcF4hGiD/zB8D7vXjCVL4Mk6zlrP8x06fv0xOjf8uCzWLh3lb0zJmmU8eheOn0+3h+8tZsMjmrR7RvpQ4BIaLi7cnS4y04oFalfzoKmWevhTlUWyUAiN1k8gt02ktnz6Cl6jsdYt5TwpSUpcqTibM4VmBb6EXKDXVDpvyuXPSOOwkrMquFhrwhBonbZzgvZGm/OZZVeFj4efk05Ld57eDx6OCS6lWjMSKfoDYx4B3lbJeDzzVA4xRQtlBEeBsckebuXPdDd1e+qtxs5tUiYITHAb32j6EP7GbKdDNrnP5i1TxFo/0jq5eER6pmCD23ApA3tY/fak+xatDs87qfX7IMRakw7QPGaiTcXkp1BGdPVmUoA0IpIx2bpPWBJ7PomQW+TRiM6UfBWisE7s71rpkqQExGOOtHPpUZopFCAcZ0Oybr7ehncuEHp5fHxFnEjHGh6A1N2DhsA1rrYOB3WYxMFkWj1WIvZqEr8gOXIx+aBN44DtNr1i4HdNuY9JM/IsW8wvw9tFjikG3hH6qvJqoekhIrjwcxtjwI0NcfxloHM2aaETyOtIiMTh5/izlBJytOlQuI8EQMoKeuR5VaSwlXRKFza7H+HWmiDZgc2ns3Co9V25hffPXFP+gg4F4cYIrqDwAOvFiyYi98RxUlWKaUafj99LmKyGCfg730sQ7axOK2CogPhmxs/QKQOyJ3GBr9IQl2/0M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(38070700021)(3023799007)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RG13WFNwQUR4bjErWmtOcEJDbHJhSDRhR2FHMHlGMnp4cmVLYS84c0ZDeTRo?=
 =?utf-8?B?TzVvWFFxaUwra0VGMHZ6RzZaNG5oVjJSdDdGQisxNVNLVHVucitzbjFwK2JS?=
 =?utf-8?B?aUwxRExBTEcwaTlJR2J3WlB5L1BXSjFGaWROTW04TEVJSjNvS2lsVWh4Undu?=
 =?utf-8?B?RHI2NENVRVNQK2VnM2lyYzBIYzdFOVdja3EvUnBoa1ljS3NKWEg5VnAzL2Rt?=
 =?utf-8?B?UHpkbjd5RFZQbitMR0hDQXM3SzVVVFQ0THpFMlBiRHQ2SWIyNTdhVTNxZHcw?=
 =?utf-8?B?cDI2c3BTNkxKMlpISDIySmUwTmljOUdYK21HVjhsT2xVRE52a2F0RHFEa2dT?=
 =?utf-8?B?S2dZSFRMZjBHZitURzk3TldlbmIvZEg0TWtzRkNYaldRT3VHVXNIVXh2OU80?=
 =?utf-8?B?Z2Y3amFYQzdiY0pna3RoYkpWY3I0bHdicWdJZ0JXQWZISlVDNzgvNWlCeEU1?=
 =?utf-8?B?M0dsZHN4WStCay9DTmpPSnNIWjFET3ZZbkE2MlR4Qlk0TzRYV0RqajIxL1lD?=
 =?utf-8?B?NXM4WVdaT3hJZ1hsY3MvUFBvcjlVNlZtdzRKUnVYMjllVXlHWGIzVzhlQlBy?=
 =?utf-8?B?TlIwRnF1T2szbGlZb2xjMXJ2dlpDbVBmR29nQlhrUDh3ZTErM2N4L3dobnNH?=
 =?utf-8?B?VWFqNC9kOEZhQys3a3Z3Zy9hREtpbVBNQUovU0k4bk84QmpjY3d4bWc2a20z?=
 =?utf-8?B?UmlZVExjYjhnMEpEK1hQaUkweTFYanA4Q0x4cVR5MEhPWmZzR2pyMHhDamZ6?=
 =?utf-8?B?S2xVRTJFSlVTNXQ3WjdKNlRBYkVVNlI5S1R6bmljYm5oVkMvMzhJQUw5YktL?=
 =?utf-8?B?Vmk5RElaa1plSkszN2pvVXNVTE16VmJoTnh4YUZxK2ZqM0pyRTRTa2xBdnlS?=
 =?utf-8?B?L1ZrT28rand4bWJYT0lBWGFLb00yVms2WVpseDZhaThnK0hOaW5jMFRyNk5w?=
 =?utf-8?B?UmdDSEdqZjVHMGY3NVJJTCtjTmpycjJwVWFNMjNERFBCTndDRzNUaDNLRHI2?=
 =?utf-8?B?NnUwaDJqK0JPcC9PSTV1Mi9ncXVhcW1VM1ZUM0NzRmJwTnBmRkpaM1NQUEJU?=
 =?utf-8?B?UHBRYmx2TVhMWjhSbE5GMU5yQjVWMzRNNHVHMDBnUjdqV3QrYWIySlN6UWFk?=
 =?utf-8?B?RUpwaXhiOXhBVFZFLzlQV2l5aWZVR1F0MjBqYmdJeGsyZkJkbTZ6TWllWC9x?=
 =?utf-8?B?akxwQlAxMGFsWE9kOC9aVExNeUhsRngxVGE4ODlBUUpjNVRJUzlua1N0Rzlo?=
 =?utf-8?B?LzFNUGluak5VaWdhTUZxam51VW9DNWx0bWJOdVEzMHFTd09jdnhtbUV3WlV5?=
 =?utf-8?B?WWNrcnpBUmF6Vm15aUVvcVRaczJVeUNMU25IaWhIdXJyMVZDUGZ4QnNmUWwr?=
 =?utf-8?B?Qno2bng2NkVCRzFKMHpkNlpUajF1cWZQWll4TnJNRklzM0pKUEJOQ1ZWS3pY?=
 =?utf-8?B?NUIyTUF0OGQwbzI4SW12bU90NUxCYlVGdmFUelR0c3dyOEg4SGtmMkcxYzBw?=
 =?utf-8?B?T0dUZFNrS3hwQTR0enEzZDJJdU1Hc3F4K3IzU2lobkFWd2p6QzgvYkpMcDBN?=
 =?utf-8?B?U1U4cXMrdFdLVWdHbWNnSHJaS1o0UFIyNitDbzdTUTBkUUE4L3ZGVExqZFow?=
 =?utf-8?B?ODNRa3p4OFJmc1o3aDJKSmhhbjJZRzdzajRDemxSUTBUVVB6dE9Mbk40SkYv?=
 =?utf-8?B?d2dOQzR3aGFjT25aeXhDdEhhSC8ySUpXSU9XamFnYTJoRnM2aUhIOTNZOVV6?=
 =?utf-8?B?VHFoRUFlQXJCOGZsazJCdXI5TXczbm1adlJNS1YvV0wwUytiUzVjemFQNU9n?=
 =?utf-8?B?cHhYQnJTVFhtK0wvUnhVM1hJZk12TXNBVmsvdk9BTFYzcjVFSS9LZ29RMGlD?=
 =?utf-8?B?bncyWitjb3hDYjZKYmxHUlMxMEEvMEY5ckpuZk1STW1leFhyT25lR1pJVmVw?=
 =?utf-8?B?bjA3RHlUNDJqSlFOdDVlOUtiTlRaOVk0K0NwVG83WStWYTB2cXYxbzVGajFa?=
 =?utf-8?B?cmR6YUh1R21hVzdWZzkzOXdIMk1McVdxVmVsREpFVGVjcnYwWldNQ3VPb3l0?=
 =?utf-8?B?bUM3d3F2YTc4aFIyV1VBWi9wT0ltamhYSC9uaTFnZUk0c0VtMmZkRWJwZmJ0?=
 =?utf-8?B?alQ0RU9WNzNPYWRTUkFJTyt2V1NLakFnOTZwbHRzZndyOGdxNml1Z3VZeUgr?=
 =?utf-8?B?N3A3RFp4RUtmRTBwQWNNQUJadGQxWUNRa0hzUU5xcVdJS0p5Z0t1SGlJaWZm?=
 =?utf-8?B?Q0JTNUpXZmZNc0h2MGc3Wm1pbjJCV045RExuU2FROEl5N0Z4ZGJ5RGVPZm5w?=
 =?utf-8?Q?9PkK7aHB3IrG68Wq2v?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RWvDioG1d6eLmtJIw6wbUkjGsJPp8RFzASwbyTrbAANitDDtuhD0FHqWjQmS7skGBrTJ4lakZXRrhfTbU1maM0XCS+6R93085g/JpDGcOu8FN22FigTg4vmb+w4yYgFf6B3j5oET45o1Cr8E2ibeOxmYqA/bAUdsiMyNyuTYuCZ4LGewl6CtQzILHyZ6fSODQQo9IAMjFI9dFHdzl3T5WLOZxgZL+k0/M/3YFoniRxMxF8IiRBQ/zUhGV3HY5iygtqfBgLlpRGLeVdii2wlMVvsPC7sw7qQG40s2+S9TVHUrPs8a1NfAXqlLP0choq4hvfdFtwU7ivNtVXIdCL7Emw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b8d6d7a-b113-48a0-cbeb-08ded10cb9e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 09:49:32.1516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vw7WZPWPmgZlTr2ihBV8fscra0uKSGhrZyG8oxbYAVXJQiL38bxNHqsjnuFPXlcJAH199e2CYnNwgF5+yILBHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1366D6B5EE9

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDA2LzI4XSBkcm0vaTkxNS9kcDogU2ltcGxpZnkgcXVlcnlpbmcgb2YgZm9y
Y2VkIGxpbmsgcGFyYW1ldGVycw0KPiANCj4gU2ltcGxpZnkgcXVlcnlpbmcgdGhlIGZvcmNlZCBs
aW5rIHJhdGUgYW5kIGxhbmUgY291bnQgYnkNCj4gcGVyZm9ybWluZyB0aGUgemVybyBjaGVja3Mg
aW5zaWRlIHRoZSBoZWxwZXJzLCBhbGxvd2luZyBjYWxsZXJzDQo+IHRvIHVzZSB0aGUgcmV0dXJu
ZWQgdmFsdWVzIGRpcmVjdGx5Lg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWth
LmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyAgICAgICAgICAgfCA4ICsrKystLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jIHwgOSArKysrKysrKy0NCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggNzY0M2ZlMDc5ZTE1Yi4uYzRhZDM4
NmFjYzZkYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiBAQCAtMzcyLDcgKzM3Miw3IEBAIGludCBpbnRlbF9kcF9tYXhfbGFuZV9jb3VudChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gIAlpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X2ZvcmNl
ZF9wYXJhbXMobGlua19jYXBzLCAmZm9yY2VkX3BhcmFtcyk7DQo+IA0KPiAtCWlmIChpbnRlbF9k
cC0+bGluay5mb3JjZV9sYW5lX2NvdW50KQ0KPiArCWlmIChmb3JjZWRfcGFyYW1zLmxhbmVfY291
bnQpDQo+ICAJCWxhbmVfY291bnQgPSBmb3JjZWRfcGFyYW1zLmxhbmVfY291bnQ7DQo+ICAJZWxz
ZQ0KPiAgCQlsYW5lX2NvdW50ID0gaW50ZWxfZHAtPmxpbmsubWF4X2xhbmVfY291bnQ7DQo+IEBA
IC0zOTQsNyArMzk0LDcgQEAgc3RhdGljIGludCBpbnRlbF9kcF9taW5fbGFuZV9jb3VudChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gIAlpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X2Zv
cmNlZF9wYXJhbXMoaW50ZWxfZHAtPmxpbmsuY2FwcywgJmZvcmNlZF9wYXJhbXMpOw0KPiANCj4g
LQlpZiAoaW50ZWxfZHAtPmxpbmsuZm9yY2VfbGFuZV9jb3VudCkNCj4gKwlpZiAoZm9yY2VkX3Bh
cmFtcy5sYW5lX2NvdW50KQ0KPiAgCQlyZXR1cm4gZm9yY2VkX3BhcmFtcy5sYW5lX2NvdW50Ow0K
PiANCj4gIAlyZXR1cm4gMTsNCj4gQEAgLTE2NjcsNyArMTY2Nyw3IEBAIGludGVsX2RwX21heF9s
aW5rX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gDQo+ICAJaW50ZWxfZHBfbGlu
a19jYXBzX2dldF9mb3JjZWRfcGFyYW1zKGxpbmtfY2FwcywgJmZvcmNlZF9wYXJhbXMpOw0KPiAN
Cj4gLQlpZiAoaW50ZWxfZHAtPmxpbmsuZm9yY2VfcmF0ZSkNCj4gKwlpZiAoZm9yY2VkX3BhcmFt
cy5yYXRlKQ0KPiAgCQlyZXR1cm4gZm9yY2VkX3BhcmFtcy5yYXRlOw0KPiANCj4gIAlsZW4gPSBp
bnRlbF9kcF9jb21tb25fbGVuX3JhdGVfbGltaXQoaW50ZWxfZHAsIGludGVsX2RwLT5saW5rLm1h
eF9yYXRlKTsNCj4gQEAgLTE2ODIsNyArMTY4Miw3IEBAIGludGVsX2RwX21pbl9saW5rX3JhdGUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gDQo+ICAJaW50ZWxfZHBfbGlua19jYXBzX2dl
dF9mb3JjZWRfcGFyYW1zKGludGVsX2RwLT5saW5rLmNhcHMsICZmb3JjZWRfcGFyYW1zKTsNCj4g
DQo+IC0JaWYgKGludGVsX2RwLT5saW5rLmZvcmNlX3JhdGUpDQo+ICsJaWYgKGZvcmNlZF9wYXJh
bXMucmF0ZSkNCj4gIAkJcmV0dXJuIGZvcmNlZF9wYXJhbXMucmF0ZTsNCj4gDQo+ICAJcmV0dXJu
IGludGVsX2RwX2NvbW1vbl9yYXRlKGludGVsX2RwLCAwKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+IGluZGV4IDFkM2EzZmYw
MDdhMDMuLmUzOWU2Yzk5ZWMyNWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBAQCAtNDMsMTMgKzQzLDIwIEBAIGlu
dCBpbnRlbF9kcF9tYXhfY29tbW9uX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4g
DQo+ICBzdGF0aWMgaW50IGZvcmNlZF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+ICB7DQo+ICsJaWYgKCFpbnRlbF9kcC0+bGluay5mb3JjZV9sYW5lX2NvdW50KQ0KPiAr
CQlyZXR1cm4gMDsNCj4gKw0KPiAgCXJldHVybiBjbGFtcChpbnRlbF9kcC0+bGluay5mb3JjZV9s
YW5lX2NvdW50LCAxLCBpbnRlbF9kcF9tYXhfY29tbW9uX2xhbmVfY291bnQoaW50ZWxfZHApKTsN
Cj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50IGZvcmNlZF9saW5rX3JhdGUoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gIHsNCj4gLQlpbnQgbGVuID0gaW50ZWxfZHBfY29tbW9uX2xlbl9yYXRl
X2xpbWl0KGludGVsX2RwLCBpbnRlbF9kcC0+bGluay5mb3JjZV9yYXRlKTsNCj4gKwlpbnQgbGVu
Ow0KPiANCj4gKwlpZiAoIWludGVsX2RwLT5saW5rLmZvcmNlX3JhdGUpDQo+ICsJCXJldHVybiAw
Ow0KPiArDQo+ICsJbGVuID0gaW50ZWxfZHBfY29tbW9uX2xlbl9yYXRlX2xpbWl0KGludGVsX2Rw
LCBpbnRlbF9kcC0+bGluay5mb3JjZV9yYXRlKTsNCj4gIAlpZiAobGVuID09IDApDQo+ICAJCXJl
dHVybiBpbnRlbF9kcF9jb21tb25fcmF0ZShpbnRlbF9kcCwgMCk7DQo+IA0KPiAtLQ0KPiAyLjQ5
LjENCg0K
