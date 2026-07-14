Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z2I4ILQIVmpJyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:00:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4847532AB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:00:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kWp8PV3H;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2376110ECB6;
	Tue, 14 Jul 2026 10:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529FA10ECB1;
 Tue, 14 Jul 2026 10:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784023216; x=1815559216;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lcwk8Azqa/E9MC6lmaJ98RyImQeMVn4HVu//Ww45Ht4=;
 b=kWp8PV3HJvbDl7bvwyY092J35GQu7aRU4l1hWyRXi/rkUVEOUqv+LPtT
 drBDtaQQrNVG7U81tEhC17CAg7TB76EqKO/ukO+pLPskCVMhWKNfv/gHj
 N8riFTX9gK5d4xitp06rZroRcppSqmnhUCX2WCJiU/Aaw91pVI6X6abB4
 l/YUOr9ZK7jyO1hEveqD2ii3V3GzSZOhuvrxUUEC3v3HVIjmb+gjQB5Ug
 U5vk89g5iqSn9OFCh/1b7lIS51vrVa1cewfGfCn0/vQARrFdseI10BISF
 NfVPkgmNiaaJRvammyoGRK2ubMyLXgn9VBwbi1lI8dtnKbLHQHjQTSf2u w==;
X-CSE-ConnectionGUID: WR9F0ZYOROqw0aDo5dkArg==
X-CSE-MsgGUID: L5NWmJr2T5ey1Vm0SuST+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84521570"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="84521570"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 03:00:16 -0700
X-CSE-ConnectionGUID: s4H72ShNQdSSQjZld4sn/A==
X-CSE-MsgGUID: 9IoZWKoCSQOAYBFjozw1bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="252428450"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 03:00:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 03:00:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 03:00:15 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 03:00:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WD26Cj+BOeR80YlCBZmIgoWuRD+vMqtj2YZrmdXLcaGkDdgO9WYQKcuJ+YIx142mLhCgzs8dNnDqbN69hA27DGJSixt2us0WeOOJU8EQpZ8NZvHLrWdJU4Kq0OvdGE5clgjpDdkNa1IUBLeAgjtp41IubLeNXluWbx55gZN2iGYrm00W6frdXIQHfGMc3j4UVP8TvV519zEocfj06lq+MMqQTK1IAVr7/jUtJJLt1myjaOW96sz5dXc8zzUJnsmFqpW6fPNwR/WDXqcF62Td2gS6e71DNJno4BDjKScnMzWq1mK8YBKWZ4VLDDxiCweNHIU0w7F7DKDBI8aMA+l+aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lcwk8Azqa/E9MC6lmaJ98RyImQeMVn4HVu//Ww45Ht4=;
 b=lZvSTk1me0qsPsagu2wn6JHmM78CVNa0OJdDEe11/DiXMISg4H9PJR2H1Fd+9MVx2JRIdkEddbk7c+M7sRLrUxDvLBXU4wzClK4+Uj0MiM+zKdhkrfEHtSXNVAzQOAOVpWJ8SX4hSzjJLpPLWpqHUxuypVFUzdGmTL+TuWDijFYr4Tv+g4AF8dZzVb6xM6YE3daTdM/eUF8w8VMj2BS3ooyI/QzANhuzjxmyGg4vbJ5H1917X48KdmGIwMB7m5O4Gf7lVjH7vF4nAaag0F2xNWFeAqsk0Rj+41ST/40hhnFlXKrPbcbIgN4tUAma/bAtVHOlRdGxvCXJsOpdAI3Bzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW5PR11MB5882.namprd11.prod.outlook.com
 (2603:10b6:303:19e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.20; Tue, 14 Jul
 2026 10:00:12 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 10:00:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth threshold
Thread-Topic: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth
 threshold
Thread-Index: AQHc/QZrwr4f4LtmdkWlgf4/ll8PEbZs7boAgAACqoCAAASJ8A==
Date: Tue, 14 Jul 2026 10:00:12 +0000
Message-ID: <DS4PPFE901A304F6C46EA3449A8A0B089B9E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-8-vinod.govindapillai@intel.com>
 <DS4PPFE901A304F24C228DE849CFFF801E4E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <fc71679c36379e2dcbe72cc1e6d6af2a2d6175ab.camel@intel.com>
In-Reply-To: <fc71679c36379e2dcbe72cc1e6d6af2a2d6175ab.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW5PR11MB5882:EE_
x-ms-office365-filtering-correlation-id: d03973e1-6110-4a63-9f9e-08dee18eb218
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|4143699003|56012099006|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: uYEdLz7dLKuVg9DOIkchIEjML1jAx1ytP88eeTZpGMgOo+o/m9mj7dWLUUGUNxcIo2jWCjKImShKOEVOmP07HwpgabjOFW/mnI7WTcAC/AazkTXqZHvvjcsdiWYhgs+2qEHdDzDw/iFqFZbKUyy2x/MkRq0k+mA0odOLhT0DgKXjhsfJ8m4SxRz+FYoYETz4T+/0v3GC5IqZsB192ICvj07ztnYQ9v5Sm6Rg/Zym2OS0vjwPSbRS4kii8vWH0UbPz5EmtK0Nq0Fr88q8GxFn/FQDT0e07et/mhK/8hImOGM/zFoDkX8zSovPtqCdeaiTApMKbG9To8B+lBGj9uyWeHcggH22fxwTZfrMIvH7RqYGQwmTp/6hyYpUBHdMmAJeRz69QouIjKGdg4Cj6oKOJ/iOD8KUkCivG6AgHoSuEywr9XpzXN/CpioSPdQBbEVKBVg/PvHAlX9TvMvBYJhcWLJELWkosqlgRpM1n8bUPwx41YNTioihEaTvNwCYryaDhDOVhg/A9gLvthcyvbkSLcLAhljbARLctWiCasCAkKkWlVaHJUeG76iBTCIccraUiZ66IUBZI4sNZE7OTgskwEH3JtnFmGr/HgTw+wjTT+1rp0octPRgLhsyX/8HQenGfwKmu5DLCWI/n2/ehEG/7MEFykJh7iSophjhDB3bbPaySQtaHKOK+uTkQQJSAvnotYtwRTbkbBXe3b0i8qAsaA94JCGLz8UZZA5qO1IRboU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXNFcFFNdTI5bXA2eFF2ek5xdXJqRUcyNWhYcktkRFI2VlZFN0owbktZMFkr?=
 =?utf-8?B?QjRZcCtpUVhqOU5pTHNwMnJqVmJoaTd4UEdtb0syV2hBa2tCR0ZpMS91eENS?=
 =?utf-8?B?ajFlVHFuSEVaaGUxQ2JQMG01YkhJWVhDRGtmeGk2djUrQk5zK09wWlJsbDl4?=
 =?utf-8?B?Q2xXUUVqcVN2TE51eEpHQWVrQjM0eC9FZ2NvaUJsV3BpV1hNYmpKQWFScWF4?=
 =?utf-8?B?clNzV2lZNm9iR0diVzh4YmpKYXRqSlJZUVdNRnlQV3ZiM0U1aHJTUEs0c2lt?=
 =?utf-8?B?ajJNNlA0VzFrejk0N0d0aXlSanhzUUc0ZVNFMnZJbWdYVGdpRGZ2UmZYYi96?=
 =?utf-8?B?Y2RSaHVBL01FMzJQV2VaQ2RyemVhU3NjV3ErVzRRaGVodk55cjQ3elNVSVps?=
 =?utf-8?B?TnVoYTBFemxwaFlLcUJQdVpUbFphWTU2WnNyd2VmTzBrU3RFcnFRRmZVSDd2?=
 =?utf-8?B?Vjh3bm52eG42QlQ3SzNFZ2pRc0Z0OHovM25ZMVdNOUo4QldaQUhhdmZHaXNo?=
 =?utf-8?B?QmNRQWpVVzZwYk5CQjFUYWtYb3RCakVRbnRIQy9ERnVYTU56TmVEVGJ6S3hR?=
 =?utf-8?B?SEJQdlpUUDZRM1RlYTk2U3pscXAvbzZNZnVleTBzYnAvdWRpQUJ4RVhpUytD?=
 =?utf-8?B?Z1dMKy92MHgwTWNnN1FkczluWW1lY3ZWWFY2UzNSc0Nwa2cvMTRoaFByL2Ez?=
 =?utf-8?B?ajZvYnFoY0luT0c2Qy9PQWV0bHgwTEJNRkhOMVZwL1BjRGs5V050SXhiTW5O?=
 =?utf-8?B?Ylg0WTlMenVFRXRpaHcvQ0h1YmxmMWZIckZjdkREWU13Sjc4WFgzaEN0Q29O?=
 =?utf-8?B?OWtvU3hHMzREZU5wQllmUnppZDd0b2FzUGhrNzNMUmtteFp0MkNEMENmTFNC?=
 =?utf-8?B?YWJXdUFkNkNMUHkyK2xiRDZWYWx3VW0rNWZCaHpzYktFd2tRZk5yajFQdW95?=
 =?utf-8?B?MDRsUU9pMytEYkIzVzRucExiMzhBdTJkZ09XUGpCVmhoQjBQblhOeFhETVgw?=
 =?utf-8?B?OWpYNkc4M2tyVkJNZXdxZkdrL05kNkZWM1BXV082K2xDN0RHT0kzWm1ES1Bs?=
 =?utf-8?B?eFNtMitNWmFmWFlRVDRXUWdNM0FmMDFBNWtOZmk1dWg1TXlNYmRLQUNiOUlw?=
 =?utf-8?B?bjZCQWNoaEVBbDVuT3MwN2NtbFpJdGZzbzZneEphQTBHWDFyUlp6eGlSKy9H?=
 =?utf-8?B?eUtUTkxXTEFEOG8wdnVyTGpRRHE0SVNCYkVrbzRQVHUzOGpvZkZLM0pzL1RZ?=
 =?utf-8?B?RCtzYXFVRjZjcUNjeVFOT0k4MXNlWjRFSW85UnNZellTMHVsZGoyelhNVHMv?=
 =?utf-8?B?MjV4aUtKcnVGMGpnWWd0S05pMnVRaE9BWXpjZnhjR2k2VFg3b2NRRitoZnJq?=
 =?utf-8?B?OTN4WmRjSWsrMDU2dmVrMVY1aVltTjk0SDRMaXBySEdPaHVrN1RrMk9zNk9V?=
 =?utf-8?B?c1hqYy9QaFVQK05ua3ZUNlVCYndJb2F4RWxNNnArYlVlVmp1U0ZYNlRNbXI5?=
 =?utf-8?B?aFlsNUY0T0QxQXdDVzJibHZFQnMxNkN2UGtiQUdwNkliVVE3QVNjanZoQkxC?=
 =?utf-8?B?SFlaN1FMSTRNYjFzODA3d2Roa0l3cEd3YXdrc2pzU3ZWL3laMER0SzhSWTBn?=
 =?utf-8?B?TmlYZ3pKb3FWeWlqNWJ0MWxpVGhYV2pIcEliSWRHUEtoYlJsQ2hmSXBORmpm?=
 =?utf-8?B?ZU0xU3g5V0orSFNNSDZ4d043ZjQ5Q0QybUdyT0xyRDJnaGJLVmZtVHdWb3JB?=
 =?utf-8?B?Tm5KRFJrdUhYMnlOR1lRNXNNSnN1YzdLWmU3SnNST3BoOGpTZmFvWVlDb3Zm?=
 =?utf-8?B?M0pMSDB3R3JFTXFhNWVNV2xSSXl0bCtVTEVGVkZVeUIwblJmNk5jUm5NeENt?=
 =?utf-8?B?akRFNWI5bFkrWVJQL1JqOEk1b3RhSFRYd2VyeE5tYjkyRTNlcytPOStXYmhB?=
 =?utf-8?B?MHQ0L2RrVWlkTVI4ZlE3ejJ4dVNyYVNRUUhaelROTi9ZOENGOTBRbVdpOElU?=
 =?utf-8?B?TWFCU0VoMGQyYUVnbjhidDIxNzNGQzVBeFg0amJHbStvS0VFYzlYV01GazE4?=
 =?utf-8?B?S016ajFDMTY1NGVFaTA0UllUbVFHdldNOUtCNThlSzZ0NTdXOTdTMmgzL0pu?=
 =?utf-8?B?Y0gvRFY0WVV2Wnh4cm5UL0tSQVJ5STE1QzdBVjJxNnBkeVFTUExxUmNIaUZV?=
 =?utf-8?B?UFRPZndWVFFWVUpsdmw3amZXaDBlbFVMZVFCMGxpSHdCK3lidXNYd3d5Zk5V?=
 =?utf-8?B?SWVIdG9hRzQxTTNET2drT1NXTFEzdFNLWk9OR2FyOFc5b2Y3NnZBQzEyKzFq?=
 =?utf-8?B?SlZ3Mk1KMzJUSk9GQlBDYUhRWXErS3IreWtNMStSODhVeFZFUFpqZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: acELRwG9lK5cOcZslJyzMH37QXBS7IQvaJi9SK3TUlgZA43QCzeoCCa5Uc+4SQ9wjCYbQetMk/kA5JC/yu5HnsqKT5JcR77TjKvli+msYSwYaPLt7RvRXq19VMv/cFpzlVSh5Uw3MJu+Tz4XKCpWeSLvuUsxbD8t0ytdwLgluIHaBsiQscIrqwQPJge5d40CBz1E6nzeGW5ZPkMBx0NrYCN3ni6UDDvUU4DCo/R4mmIeTajanRWzkWGGE6s+vxRdP4KZq+3Ic49EHKnwzZSSKTRZga56BXLEZ2mdqWPX0pF74EIJD2mwpIDPpgBd5F5Lpagzgk6r1rwULfW2pMQ7gg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d03973e1-6110-4a63-9f9e-08dee18eb218
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 10:00:12.2723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ASwpAsL2r62Voum+ShFlgEhR+BsxbXVxPxb3Mb2Uo4AGHmySv2X+AXCrZ6tr/Q2+NHS/oSQ3FAgVKgPqCQhK8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E4847532AB

PiA+ID4gQWRkIGFuIGV4dHJhIFFHViBlbnRyeSwgd2l0aCBib3RoIHBlYWsgYncgYW5kIGRlcmF0
ZWQgYncgc2V0IHRvDQo+ID4gPiAyMCBHQi9zLCB0byB0aGUgYmFuZHdpZHRoIGluZm8gd2hlbiBh
bGwgb2YgdGhlIGZvbGxvd2luZyBob2xkOg0KPiA+ID4gMS4gVGhlIHBsYXRmb3JtIGlzIFhlMysu
DQo+ID4gPiAyLiBUaGVyZSBpcyBhdCBsZWFzdCBvbmUgZXhpc3RpbmcgUUdWIHBvaW50Lg0KPiA+
ID4gMy4gVGhlIG51bWJlciBvZiBRR1YgcG9pbnRzIGlzIGJlbG93IDggKHRoZSBtYXhpbXVtKS4N
Cj4gPiA+DQo+ID4gPiBPbmNlIGEgcGxhbmUgZ3JvdXAgaXMgZm91bmQsIHRoZSBkcml2ZXIgaXRl
cmF0ZXMgb3ZlciBhbGwgUUdWIHBvaW50cw0KPiA+ID4gaW4gdGhhdCBncm91cCB0byBmaW5kIHRo
ZSBiZXN0IG1hdGNoIGZvciB0aGUgcmVxdWlyZWQgZGF0YSByYXRlLiBJZg0KPiA+ID4gdGhlIHJl
cXVpcmVkIGRhdGEgcmF0ZSBpcyBiZWxvdyAyMCBHQi9zLCBpdCBzZWxlY3RzIHRoZSBwZWFrIGJ3
IGZyb20NCj4gPiA+IHRoaXMgbmV3IFFHViBwb2ludCAoMjAgR0IvcykuDQo+ID4gPg0KPiA+ID4g
djI6IGFkZCB0aGUgcGVhayBiYW5kd2lkdGggdGhyZXNob2xkIGFzIGFuIGFkZGl0aW9uYWwgUUdW
IGVudHJ5DQo+ID4gPg0KPiA+ID4gQnNwZWM6IDY4ODgwDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiA+
IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmPCoMKg
wqDCoMKgwqAgfCAzMw0KPiA+ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gwqAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5owqDCoCB8wqAgMSArDQo+ID4gPiDC
oDIgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gPiBpbmRleCBkYjJlZTlk
ZTVlZWMuLjcxYWE5YTY5MjhkYiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gPiBAQCAtNTIsNiArNTIsOCBAQCBzdHJ1Y3QgaW50ZWxf
cWd2X3BvaW50IHsNCj4gPiA+DQo+ID4gPiDCoCNkZWZpbmUgREVQUk9HQldQQ0xJTUlUCQk2MA0K
PiA+ID4NCj4gPiA+ICsjZGVmaW5lIFBFQUtfQldfVEhSRVNIT0xECTIwMDAwDQo+ID4gPiArDQo+
ID4gPiDCoHN0cnVjdCBpbnRlbF9wc2ZfZ3ZfcG9pbnQgew0KPiA+ID4gwqAJdTggY2xrOyAvKiBj
bG9jayBpbiBtdWx0aXBsZXMgb2YgMTYuNjY2NiBNSHogKi/CoCB9OyBAQCAtDQo+ID4gPiA2MDEs
NiArNjAzLDM0DQo+ID4gPiBAQCBzdGF0aWMgaW50IHRnbF9wZWFrYncoaW50IG51bV9jaGFubmVs
cywgaW50IGNoYW5uZWxfd2lkdGgsIGludA0KPiA+ID4gZGNsaykNCj4gPiA+IMKgCXJldHVybiBu
dW1fY2hhbm5lbHMgKiAoY2hhbm5lbF93aWR0aCAvIDgpICogZGNsazvCoCB9DQo+ID4gPg0KPiA+
ID4gK3N0YXRpYyB2b2lkIHhlM19hZGRfcGVha2J3X3RocmVzaG9sZChzdHJ1Y3QgaW50ZWxfZGlz
cGxheQ0KPiA+ID4gKmRpc3BsYXkpIHsNCj4gPiA+ICsJdTggcWd2X3BvaW50cyA9IGRpc3BsYXkt
PmJ3Lm51bV9xZ3ZfcG9pbnRzOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoIUhBU19QRUFLX0JXX1RI
UkVTSE9MRChkaXNwbGF5KSkNCj4gPiA+ICsJCXJldHVybjsNCj4gPiA+ICsNCj4gPiA+ICsJaWYg
KHFndl9wb2ludHMgPj0gSTkxNV9OVU1fUUdWX1BPSU5UUykgew0KPiA+ID4gKwkJZHJtX3dhcm4o
ZGlzcGxheS0+ZHJtLCAiTWF4aW11bSBRR1YgcG9pbnRzDQo+ID4gPiByZWFjaGVkLg0KPiA+ID4g
SWdub3JlIHRoZSBwZWFrIGJ3IHRocmVzaG9sZFxuIik7DQo+ID4NCj4gPiBEbyB3ZSByZWFsbHkg
bmVlZCB0byBiZSB0aHJvd2luZyBhIHdhcm5pbmcgc3BsYXQgaGVyZSBzaW5jZSB0aGVzZSBhcmUN
Cj4gPiBqdXN0IHRoZSBjb25kaXRpb25zIHdlIG5lZWQgdG8gbWVldCBpZiB3ZSB3YW50IHBlYWsg
QlcgdGhyZXNob2xkLg0KPiA+IEZyb20geW91IGNvbW1pdCBtZXNzYWdlIGl0cyBub3QgYWx3YXlz
IG5lY2Vzc2FyeS4gQ29ycmVjdCBtZSBpZiBJIGFtDQo+ID4gd3JvbmcgTWF5YmUgZHJtX2RiZ19r
bXMuDQo+ID4NCj4gDQo+IEFjay4gWWVzIGRlYnVnIGlzIGVub3VnaC4gVGhhbmtzLg0KPiANCj4g
T3RoZXJ3aXNlIG9rIC0gY2FuIGJlIFJCLWVkPw0KDQpZZXMgd2l0aCBhYm92ZSBmaXhlZA0KDQpM
R1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29t
Pg0KDQo+IA0KPiBCUg0KPiBWaW5vZA0KPiANCj4gPg0KPiA+ID4gKwkJcmV0dXJuOw0KPiA+ID4g
Kwl9DQo+ID4gPiArDQo+ID4gPiArCWlmIChxZ3ZfcG9pbnRzIDw9IDEpIHsNCj4gPiA+ICsJCWRy
bV93YXJuKGRpc3BsYXktPmRybSwgIlNBR1Ygbm90IHN1cHBvcnRlZC4gSWdub3JlDQo+ID4gPiB0
aGUNCj4gPiA+IHBlYWsgYncgdGhyZXNob2xkXG4iKTsNCj4gPg0KPiA+IFNhbWUgaGVyZQ0KPiA+
DQo+ID4gUmVnYXJkcywNCj4gPiBTdXJhaiBLYW5kcGFsDQo+ID4NCj4gPiA+ICsJCXJldHVybjsN
Cj4gPiA+ICsJfQ0KPiA+ID4gKw0KPiA+ID4gKwlkaXNwbGF5LT5idy5udW1fcWd2X3BvaW50cysr
Ow0KPiA+ID4gKw0KPiA+ID4gKwlkaXNwbGF5LT5idy5wZWFrYndbcWd2X3BvaW50c10gPSBQRUFL
X0JXX1RIUkVTSE9MRDsNCj4gPiA+ICsNCj4gPiA+ICsJZm9yIChpbnQgaSA9IDA7IGkgPCBBUlJB
WV9TSVpFKGRpc3BsYXktPmJ3Lm1heCk7IGkrKykNCj4gPiA+ICsJCWRpc3BsYXktPmJ3Lm1heFtp
XS5kZXJhdGVkYndbcWd2X3BvaW50c10gPQ0KPiA+ID4gUEVBS19CV19USFJFU0hPTEQ7DQo+ID4g
PiArDQo+ID4gPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIkFuIGV4dHJhIFFHViBwb2lu
dCAlZCBhZGRlZCBmb3INCj4gPiA+IFBlYWsNCj4gPiA+IGJ3IHRocmVzaG9kIG9mICVkXG4iLA0K
PiA+ID4gKwkJwqDCoMKgIHFndl9wb2ludHMsIFBFQUtfQldfVEhSRVNIT0xEKTsgfQ0KPiA+ID4g
Kw0KPiA+ID4gwqBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSwNCj4gPiA+IMKgCQkJwqDCoCBjb25zdCBzdHJ1Y3QgZHJhbV9pbmZvICpkcmFt
X2luZm8sDQo+ID4gPiDCoAkJCcKgwqAgY29uc3Qgc3RydWN0IGludGVsX3NvY19id19wYXJhbXMg
KnNvY19id19wYXJhbXMsDQo+IEBAIC02OTUsNg0KPiA+ID4gKzcyNSw5IEBAIHN0YXRpYyBpbnQg
dGdsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ID4gwqAJ
CWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlFHViAlZDogcGVha2J3PSV1XG4iLCBpLA0KPiA+
ID4gZGlzcGxheS0+YncucGVha2J3W2ldKTsNCj4gPiA+IMKgCX0NCj4gPiA+DQo+ID4gPiArCS8q
IEZvciB4ZTMgY2FzZXMgYWRkIGFuIGV4dHJhIHFndiBwb2ludCBmb3IgUGVhayBidw0KPiA+ID4g
dGhyZXNob2xkICovDQo+ID4gPiArCXhlM19hZGRfcGVha2J3X3RocmVzaG9sZChkaXNwbGF5KTsN
Cj4gPiA+ICsNCj4gPiA+IMKgCWZvciAoaSA9IDA7IGkgPCBxaS5udW1fcHNmX3BvaW50czsgaSsr
KSB7DQo+ID4gPiDCoAkJY29uc3Qgc3RydWN0IGludGVsX3BzZl9ndl9wb2ludCAqc3AgPSAmcWku
cHNmX3BvaW50c1tpXTsNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiA+ID4gaW5kZXggMTNl
OTNhNGI0ZjVmLi4xMzYwYTE2ZWRiYzEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiA+ID4gQEAg
LTE5MSw2ICsxOTEsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9wbGF0Zm9ybXMgew0KPiA+ID4g
wqAjZGVmaW5lIEhBU19NQlVTX0pPSU5JTkcoX19kaXNwbGF5KQkoKF9fZGlzcGxheSktDQo+ID4g
PiA+IHBsYXRmb3JtLmFsZGVybGFrZV9wIHx8IERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0gMTQp
DQo+ID4gPiDCoCNkZWZpbmUgSEFTX01TTyhfX2Rpc3BsYXkpCQkoRElTUExBWV9WRVIoX19kaXNw
bGF5KSA+PQ0KPiA+ID4gMTIpDQo+ID4gPiDCoCNkZWZpbmUgSEFTX09WRVJMQVkoX19kaXNwbGF5
KQkJKERJU1BMQVlfSU5GTyhfX2Rpc3BsYXkpLQ0KPiA+ID4gPiBoYXNfb3ZlcmxheSkNCj4gPiA+
ICsjZGVmaW5lIEhBU19QRUFLX0JXX1RIUkVTSE9MRChfX2Rpc3BsYXkpDQo+ID4gPiAJKERJU1BM
QVlfVkVSKF9fZGlzcGxheSkgPj0gMzApDQo+ID4gPiDCoCNkZWZpbmUgSEFTX1BJUEVETUMoX19k
aXNwbGF5KQkJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0NCj4gPiA+IDEyKQ0KPiA+ID4gwqAj
ZGVmaW5lDQo+ID4gPiBIQVNfUElYRUxfTk9STUFMSVpFUihfX2Rpc3BsYXkpCShESVNQTEFZX1ZF
UihfX2Rpc3BsYXkpID49DQo+ID4gPiAzNSkNCj4gPiA+IMKgI2RlZmluZQ0KPiA+ID4gSEFTX1BN
REVNQU5EKF9fZGlzcGxheSkJCShESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49DQo+ID4gPiAxNCkN
Cj4gPiA+IC0tDQo+ID4gPiAyLjQzLjANCj4gPg0KDQo=
