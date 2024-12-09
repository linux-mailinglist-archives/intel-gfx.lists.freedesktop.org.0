Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE659E8DB8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 09:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB20A10E66B;
	Mon,  9 Dec 2024 08:43:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GL5q1BSW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068CC10E66F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 08:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733733832; x=1765269832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+8+iPeGKWvjrHUK0VqddkQv7ZHNpdf2WfeboySNAMwo=;
 b=GL5q1BSW6ZAXWlKfYWIvmOuESpH7tvMNRyNoSpuUleOlH/DniTHN6feI
 NLRj4KAHMw/DTVQhQLLAi3Ag+fGuky62J0H9XBhK0nUaoWYab7zLNm5iF
 Ku/9maLvcNdHAMk4FYds+Xc8UYWUfXSC691SZGKCvDY1B4mpM/4prbzna
 fpLfSDokNmmu0IMPiqpnRPHJ/V1seZCnyhXm+O5+o6Pww6bVKd6PrsrT6
 WELXVcqg2L/0KFu/d/621GdzEMmHtB37fGCNNkqxeL7zTWvkzz5Gy4J9X
 uMb9hiiHu61LSaQmRMGOPl2MYB+9p86u5fzQkoz54oSpuJ6XQCSMJLhGP Q==;
X-CSE-ConnectionGUID: 7+yx/FyXR1+X5Sw301syjw==
X-CSE-MsgGUID: hc0OgzmVSgyapVqUsSD5fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="33354245"
X-IronPort-AV: E=Sophos;i="6.12,218,1728975600"; d="scan'208";a="33354245"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 00:43:51 -0800
X-CSE-ConnectionGUID: DRzw14nDRW+pl4pfHMWoVw==
X-CSE-MsgGUID: yQrSGTDoTkyR+Bk4HSLdoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,218,1728975600"; d="scan'208";a="99058058"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 00:43:51 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 00:43:51 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 00:43:51 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 00:43:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oVzatV6sPbPLao6UKKHNBQOTCsYeiML476iDkxiVY2AchPkgkzUbG3fhq5BLYXUSuGocyuxHbSZskWyF4cA99wk44lqwXdsaP9G86epeBmfHCs3ZuMmLY/Zw0u80CnrhaIy9PA6qZdv1LrvPXwQ/Y3yZIG6/KuDPlI9ZAZID50oy4TqlmkG7VBERd01T38A3AZF4BssNJtUSWaIvncRERuXgh4FGu7BvdaKZBfDENQNpkJ9WU5qTpThIUNI9hDSwBFSp/3kc8Dd5Uom6GZEwq06PVw4NS+5XDKf5LtlcgxyWqKKn73pnlovZKPKqIDYuW7CKR51c1iNjSZdBurqxDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+8+iPeGKWvjrHUK0VqddkQv7ZHNpdf2WfeboySNAMwo=;
 b=uk0zcigFMXQfVTKCsIPVboEBn2nkrJtK8J2TuqgUv1WPkIx3ZcAy32Dm1z1dXPdxxrN1GdjTuPF5NqFVTamgtTrD50HcBf3DExfZE5OJCX+HvmcxuqlnVLS2nU+XCS4HCJlWRJ29E+KNe5DgCjflxANGkS/eOSmMVNvh9JGC0lRdbhk7A/PoFgm0bBroDvNiVNOrMLDyS+CNkSlOniNmKL1HsKtYw0Bq/a8IDH0vlVR0nFEGp1giNnVqd7kEGFj3osYxfu6hsRGWt4nudQOjYtDzRujFd9DJ/JGZgXNwnXLFZI8uqLSk/xXUjP/U2YwvxOSDH/cJn/XXutD0sIqbKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Mon, 9 Dec
 2024 08:43:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8207.024; Mon, 9 Dec 2024
 08:43:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 0/2] LOBF enablement fix
Thread-Topic: [PATCH v2 0/2] LOBF enablement fix
Thread-Index: AQHbRjaO17aPS9hQ2UCgl3duEQL2xrLdoFGA
Date: Mon, 9 Dec 2024 08:43:48 +0000
Message-ID: <e05ae59d8641a94465f891930a59039acfa6b7c8.camel@intel.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
In-Reply-To: <20241204100328.3738778-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7257:EE_
x-ms-office365-filtering-correlation-id: fdae8123-9f3c-417a-4d28-08dd182d9995
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Wk9MaGxyMDhHVm40V3JxSVlScnJZdjRoc1V5bEM4ZU55SGpEMitFUThwTVIy?=
 =?utf-8?B?Vkt5bUZGWHZYMU11N3llRE01WDRKWndhTklqRnoyTC8xWGgwMzhrT2FhdjBu?=
 =?utf-8?B?bzhxSTNiUmk0NjJ6cDBFQVJkWWFMbk5BTjBFY0NMRTQzaTBJc1c3ZTNDSHkv?=
 =?utf-8?B?RXhkVllKOThtZW5YUnhZR2VFSHVVWnRUcW9PZEkyQVNjZE9JOW0xd1J1OW9p?=
 =?utf-8?B?THNBNFVaOGg4S2FyRjI2N3VoZ1JIMDJTSGVlanRGcE9zU1kwZDVndENidGhH?=
 =?utf-8?B?OUR2M2ZneFY3VXhiREVvWVpXL0JGUGhTUEJZUmpsb2p1NGtlZGN4ZkF5Umxy?=
 =?utf-8?B?a3AweUxTSGRHL045alBTN1Y3aTJqOWdLL090RWJ5NDFNZlUzUDZEQ0VTaXFo?=
 =?utf-8?B?MlNaL3I2bWJhc0U3Kyt6VUVHVGZUdndEREZFM1l4UTFMakJVRERnUHk0UlJy?=
 =?utf-8?B?ZWFtME85eDBmOTgxb3ZDbjFZVFF0dXVOTzRod1d3VnV6UG1oQllXdUFsRTY4?=
 =?utf-8?B?VU53TURZdDk4OWgxTy9XNWZMTGszS3JpRDE0ZFBUWkd3M0JhUjVJdnpWTWdz?=
 =?utf-8?B?UGo5QkU2NkJTcjd2c0tpUjJPbUxrVW53c281bnNMa3pzY3NsODhaR3Q2Qmc4?=
 =?utf-8?B?ODFZU01xdXBGa2drZ3AvZ0JkTFF5b2RtbGlOMUtkWnRQTlkrK0ZTdkNPTUNL?=
 =?utf-8?B?NFI1UGtSWUowb3YyMlVHMVdNT0xFK3RUT0g3NS96Y0tRNFdCMjJyZGJjYmNj?=
 =?utf-8?B?L0xrc1ZZRkI2aG9mQUVqT1hCdzdULzJuUEFWQUl4akFya25IUmZmTStpdDlX?=
 =?utf-8?B?Zjl3M1lBcTE0VEQxaEVvSWdmZXlLVEQ5NWxOTTduSHA1VDVQSXF6WFBHUUNz?=
 =?utf-8?B?cjB0QTAzSHlTc2Y0cVJwcjhVUmVVQzBBL2k3eUpUMXJlV08yamJ6bTJONUFO?=
 =?utf-8?B?a3p6SlJkaXY3SWg2WEhRU1JIZmtkd216d2Y1bkh6bVhJZkRaV1cyaTdSRmRL?=
 =?utf-8?B?SlRORlc4TUFDSWI5LzlVV28vZEhlSGlXeWlzdVRwNnc0SFlVdHp2anZ1TjNw?=
 =?utf-8?B?WnV3d2wxQm96c2hVTVdhVWtuVDVvZnBITFdBdXFISUhqbG5XR2hOSVNJbjBR?=
 =?utf-8?B?L1BPTThOSlJjc0szd0kzOUhWQ3dDcjBObEQrSnhydjhKVlhZL3Zzb2lJTXRr?=
 =?utf-8?B?dXYwMHZJbjgyZU13OXI3bTFaMS9DUUo0OGJNalNFTklZbmlGZFRHV3lkbmZM?=
 =?utf-8?B?SXY0eUI5TXVXSFI3ZzlvdVAwSTNCVUMrMEF5R2ROdHh5VnZQZU9SMmxXcDFt?=
 =?utf-8?B?S2xzR1o5WUJyOG1kNUVaeEROSnI1MmVOUzNUR3JzVGZUUlN4ekEyMmlaZzBp?=
 =?utf-8?B?alE2VlNwYTNPR1JsM1ZrVytNSEp3TXpMVDQ0V2tQb0QzNnBkWE4yZFNaUlZr?=
 =?utf-8?B?MWhwTjNhSUhwNnZZclA3UFhzRmhpUDg0b29uVDRocyt6VXp1bFNpYk1Cbmd0?=
 =?utf-8?B?VkVQVlR3TEpJRTY1VXdEK00reVJPRG41L25MeUJPZk5DdVIyT0NFVG4yVzVh?=
 =?utf-8?B?R0F6K3NHeExrTFMxMTMrWGRhWlVKamtpZjk1U05QZXFvSVlESytLNndBV2tz?=
 =?utf-8?B?QlltZXhJNWFjT2tlaGtOcjBjeTVJQktGN2w3Q3dnNTUxTktrdUZ4VkxNU2Zk?=
 =?utf-8?B?VkloK0FZa1I1NTU5d0Rzem16R24zV0l5OTg2RmRVQXdvejR0T2hSQmIxbjZq?=
 =?utf-8?B?bEFFWGJNMXFqd2FxMm1oTGR0S2JpWHBkTGgrZEJ4dkFkMGUxMmdhMGsxdDIz?=
 =?utf-8?B?b2RMNTljVExOREFhMlpLYWdRWHpxajJWaVlFeUh1eUJ5TWkweHdkcTNvRFZU?=
 =?utf-8?B?ZitKWXpIL2NWU2thZ2tIc25ZcFlpYmdDOEdrS1VwbjE1TFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVFrTXMweGhieUdMMlVjOVVxcVBnZ3QyUTdtcndlcWtoZUJxd3V0MTk0b0dV?=
 =?utf-8?B?NnRVdDEyZGRkRHpSSnNTdTczYWRPRHhmeEdmd2pUMVFjUkV2NUt4a0dxeGpu?=
 =?utf-8?B?YkhFVU5SUmNLVGtEdVFlbTk0NzZUR0U2VGxtMzJoZEVGSi9oL3NKRzFTT2N5?=
 =?utf-8?B?WmF4ZzMzR3RidVRrTWhFWU1zeXluQVNMZzRwRk1tQkJyTXpCUmdad3pPTlJq?=
 =?utf-8?B?K2orMnlacDlwLy9lWU1nYlErR0Z0NFRRSFlDNXNra1pEUkk4ZGZMaWw1SGJq?=
 =?utf-8?B?UGE0WERpREtURHpQUUVWMkdSc2V0MGN1QU01cGNPS1RQUXM0bFptWEhkOW5u?=
 =?utf-8?B?UitKWUhwWnpVQlVsSVJIV0J5aTdCSWdyL01yS2xNcWxIQitxK2Y4Y0Q3akcr?=
 =?utf-8?B?UHRiOGdVaFZmZzd5VExDeGhFMmZoVjdRYTRLV3Q3M2hqUXN0V3RTVkhueVRx?=
 =?utf-8?B?UExQdGNXRHpuNTJpejQrdmx6cnN6Mk9Hd0YvcGFleFdvcHBGNTZHaExJYlBU?=
 =?utf-8?B?QnR4MGt6L2xFQXhnekttck1lZDZWekE2RFNKcHh4bloxMDJBb2krNXFSTlBH?=
 =?utf-8?B?a1kwVXFkQ2Z1azU4UG10UXM4RG5OeDBxTzh2aFF5K0lRbmlNaFpYd3ljTG5u?=
 =?utf-8?B?ZU1OL2tmWSthUWQyK1pQM216bmwwdTFjT1Q4R29YY2VFMGptQ1FwT3VrcjRZ?=
 =?utf-8?B?bkRwV2RLMWlZOHloRzVRMndHRUtrbDJqSmk4NlRpS0hSZXQ2NThScUpwcUQv?=
 =?utf-8?B?WVlvYXNWRnpRdzhtMk5PWWxWUjRTNUhKYUZvY2k5OTZLdWlUYXVrL2JwMmdQ?=
 =?utf-8?B?MmgyalE0UUF5VTF6bkFXSkJXS3hJRCs0NlhXRWJqZGh0WThGNU9NY1dqaWJP?=
 =?utf-8?B?QmFHY3FxN25YamVlSUQvcUNSS0RoSC9RWGdOMjZITU5lamJCZnJZS056eVVG?=
 =?utf-8?B?UkJBRW9DWVRhRk1sSzZHUUQ1ckkyMWE2bkRuc3pUNjk2bzZvV2xQWEFoOUxr?=
 =?utf-8?B?NE5wcVYrOEFlVFplODNYRUoyd1EzcktQMWJWODREMHJJd2xmTXZRdlVYZ1Rn?=
 =?utf-8?B?TEt4T2daVGFSazhuc1I1cDljYmVheUFzTUpmMnhEWE82Wnp6QXhsb1M3N3pX?=
 =?utf-8?B?Wk1KUE9lRHVES0MzTDZtckFnYXRUc2l2VXJrVEtKbkdSNzlNeDgrQnE0ZWky?=
 =?utf-8?B?R0kvK05Bc0sxcmtYR3VGbXBOSEl5VHRMTUEyYTF1SUxMa0JkQWVya01hZlUx?=
 =?utf-8?B?V0VFYm1wYTVpYlFNZ3VpK2lWQUZWNTlBbDdTSStERWUySDc5d1drek52U0li?=
 =?utf-8?B?NmJzdmpMc2VvN0lRNUpJZ1BxdE80WEgveFROYm5vdjZ2Vkwza2FMRGtNMlVI?=
 =?utf-8?B?Z3duSmpoSUptYUE3U3VpRE5MOFFoTGdGeG4zQjQvUnNPWmhaeW1LY2w1b1lK?=
 =?utf-8?B?L3JPZXZLbnRMWHlqUktEcWt0UERRMWl1aVg4d2dtbVNnVjQycERKUTlDY0ZX?=
 =?utf-8?B?YnZiRU1Qd3ZDei9NbGFacWI3T3gzTlFGNVkzeFJ2Mk04bEx0R0NKRjl1MmZO?=
 =?utf-8?B?WVhJN0QvYTIwdHNFTUg3K0pPTHYvWDkxdW5oWHR4SnNGSDlxaFZQamN2RzZV?=
 =?utf-8?B?NDV1UHE0Z0I5VEcyV1pkRy9aYUxpZ2RjUDFsNkczYXBydVB1aGtaV0dXbFUr?=
 =?utf-8?B?OVhVSjZDZ2xlYXZsRWw2K0Q5QjNzb0xYb2hZWlBoMjRmRFBaaDBjOTVCTTlt?=
 =?utf-8?B?b2NYM1hQQTFSK21Rai9HUlBhUkNkR2hNT1Z6OXJMc3lFUWM4RXUyOVVqRW5s?=
 =?utf-8?B?V0U5S0xXY3BUUm1mMXpRc2dJVUQ4cnU0VzFEMkNKN202bXZvR0tNcGVjUzlj?=
 =?utf-8?B?a2toUVdzbFp6Yk1ITlRhN3VCa2ZHd1ptM0UyekJIYmdCSXhZaXdQU2lGZ3di?=
 =?utf-8?B?ODNVNS9BeWtRd0RqTDVHZXRuNzA2NUszSDBDQTBESU1taUNiS0tDbDRtRGJq?=
 =?utf-8?B?Nk5tdk9DU0VrU2JQZ0F2RURsQiszWVA1bW5hR2tXVUpMY3BWTkQ5WGhVbkdM?=
 =?utf-8?B?eS8xSUdDSUNFcWtmTUxZQm9GY2N2d3Vka3hVVG5nYlFWSkJpakJVYlgvNXBG?=
 =?utf-8?B?VlhBNCtkemwwaW0xT2R3VGpsQkNjbTlBRmFSTXJ6YU5nRFRRemtxQmw1dWx3?=
 =?utf-8?B?d2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F352CBC469C96C4B9C91A07FDA3F3081@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdae8123-9f3c-417a-4d28-08dd182d9995
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 08:43:48.5422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wOva/ykPpBCuAS+bTIXsnNCTa+gqxT7EfBzSXISEIoQD0JUwc3RA4zTvpJzYvkwRAu54CMvCgNlAZdtbCufPCZ2E+BbonJBIA5iJEHI1eSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
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

R2VuZXJpYyBjb21tZW50cyBvbiB0aGVzZSBwYXRjaGVzLg0KDQpUaGVzZSBhcmUgZW5hYmxpbmcg
TE9CRiBpZiBpdCdzIHBvc3NpYmxlLiBQb3NzaWJsZSBlcnJvcnMgYXJlIG5vdCB0YWtlbg0KaW50
byBhY2NvdW50LiBJIHRoaW5rIERQX0FMUE1fTE9DS19USU1FT1VUX0VSUk9SIHNob3VsZCBiZSB0
YWtlbiBpbnRvDQphY2NvdW50IGluIExPQkYgYXMgd2VsbDogU2VlDQpkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jOnBzcl9hbHBtX2NoZWNrLg0KDQpZb3UgbWlnaHQgYWxz
byB3YW50IHRvIGFkZCBzb21lIGRlYnVnIGludGVyZmFjZSB0byBkaXNhYmxlIGxvYmYuIEkgY2Fu
DQppbWFnaW5lIHRoaXMgYmVpbmcgZmVhdHVyZSBub3Qgd29ya2luZyBvbiBhbGwgc2V0dXBzIHdo
ZXJlIHBvc3NpYmxlIG9uDQpmaXJzdCB0cnkuIERlYnVnZ2luZy9iaXNlY3Rpbmcgd291bGQgYmUg
bXVjaCBlYXNpZXIgaWYgeW91IGhhdmUgc3VjaA0KaW50ZXJmYWNlLg0KDQpCUiwNCg0KSm91bmkg
SMO2Z2FuZGVyDQogDQpPbiBXZWQsIDIwMjQtMTItMDQgYXQgMTU6MzMgKzA1MzAsIEFuaW1lc2gg
TWFubmEgd3JvdGU6DQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KPiANCj4gQW5pbWVzaCBNYW5uYSAoMik6DQo+IMKgIGRybS9pOTE1L2xv
YmY6IEFkZCBsb2JmIGVuYWJsZW1lbnQgaW4gcG9zdCBwbGFuZSB1cGRhdGUNCj4gwqAgZHJtL2k5
MTUvbG9iZjogQWRkIGRlYnVnIHByaW50IGZvciBMT0JGDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jwqDCoMKgIHwgMjkNCj4gKysrKysrKysrKysrKysr
KysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaMKgwqDC
oCB8wqAgNCArKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8wqAgMyArKw0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCg0K
