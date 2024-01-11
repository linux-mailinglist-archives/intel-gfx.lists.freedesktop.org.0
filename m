Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 458DE82A775
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 07:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B9110E6AF;
	Thu, 11 Jan 2024 06:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D04D10E6AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 06:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704953697; x=1736489697;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rHuYoSQFsbrD4gq6cQoQWxgQ7ZVK4MTrcY5w5PTIrG0=;
 b=RfraYZaNdcUDNP8ftzD0wRmjH2eJ8clEGE5jJ1QpR13QYYoAPD3EQOVG
 uDm6QP4Og1E1iXsU1gjtxega7nHO9FfPGagEOBhvSXuv31wfdmr+fHbG+
 LG2nLHwecMod9zq4/0yNkF90Wo/G/Bjlrm55J0vWW1tXfTmKArL1l7UcD
 C4UVMYsR1R7ebfIoUj6MwT05kjknqr1NUAEWxPBPMXVbT+Zxiy+4p3Nkf
 jk8drbNHEUMoM020gI4kZq1um2RlNKDApCaS7WHaNLSjvjsKSKN8drMI+
 /61MWTZx8NTQCoQNtQXIul9nBYm72aVVM/tKtvTVBn0SkCvOL2hrZbWSX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="465140498"
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; d="scan'208";a="465140498"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 22:14:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; d="scan'208";a="24222867"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 22:14:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 22:14:56 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 22:14:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 22:14:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 22:14:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VFn3BmCA92RTuPwuD5+n0Rpx2K3oYUeRSd4VvKEBHVvpuPS8PAqpSO2ULoPvvJ84+xdXlzwQwkVDRNcAubtnGPRhkh1wgcL+TXdioUHpdQ817c5MyzfOWGXllwyrYl/GM6tQS/ZNhhLXYt4E1YtmXnGgo4mU5sjnPdXk0pFIn3SZSdIhAOZDVn35OHeJYwbaqMeuNnc/7xR7zp7q2MktHlTz4gv7elxlbKBDSqKfisyEqk0VTteBKLn/o2HTts9uKqd67tkDZXG2ZHaUf2d3svaIIHr1TUpoeM78qnBYKpZvm+64GNUYDYjIaNHitdAmX2Wv70VY8oWXA9o8KfZXrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rHuYoSQFsbrD4gq6cQoQWxgQ7ZVK4MTrcY5w5PTIrG0=;
 b=inzfFC61gSYiJRekoG3SzZMSoatCNk2MBaXuYzLzoEbRA0/hm5HTmQ6GZYyldGOUPL6+Ye0VDzSqkVK/LXDAc+h/xafwCxFWnIrHY0Cn/nbR78N+pviaTxMuxZXR0IwpWPGhDlOF6YPQ6/pHqKAZdflvQpifZo3euag/dMkseOatSL7lLnqQNl4MyHCp/Ddsi5p1EByP8/kug1Z3sKOXu7M4/iS7WGdrOm1yF0w0truLWpkLq6vJ+fHN5ssw4b8IMCelOirfnTDLUlAfTX2jHCYDejYBSQfq4y9VrnVrw8jgE6WtEaeK5tlSGtGD5YQQUA6R5gaYKixiBJbJwXYOuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7395.namprd11.prod.outlook.com (2603:10b6:930:86::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Thu, 11 Jan
 2024 06:14:54 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74%4]) with mapi id 15.20.7181.019; Thu, 11 Jan 2024
 06:14:54 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 03/13] drm/i915/psr: Do not check alpm on DP or
 capability change for panel replay
Thread-Topic: [PATCH v2 03/13] drm/i915/psr: Do not check alpm on DP or
 capability change for panel replay
Thread-Index: AQHaQ8bhAw29KIS5sUi93gwTLvxTtrDUIdrw
Date: Thu, 11 Jan 2024 06:14:54 +0000
Message-ID: <PH7PR11MB5981A68EA2A257D060FE13BAF9682@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-4-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7395:EE_
x-ms-office365-filtering-correlation-id: f162203b-5a39-4042-ac2d-08dc126ca0b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hwDfOiHwxp4g/SSVt5vvXsVzyLAuj5hbmuzAvNwS1mXYN/GCCkSe7QGOCZ8sJsFomSUPHTV2BrodIqBfrlII9bdtBw9EfDtBMVaUvpPzJV6yKhGIv3gslfz+0Gis8ikWIl7Tlm3I9qcQLuK78WZSAtKV5Rd/+lOZIU1kIuMR4Viad6+SwUlnqbb+dVzBj3q9UygdqYZuiQ0/CKb7cXOKqk57wg2hcevKwTAUfbJYnCaYT4PckOmFoWuwnSbCC6gzMlEBuAdUbzstWvvOvfX+Mzdrcwf+gyGZDI4HfZspqIfFyjwJfvfBXGcjy0pvMt95KT64DbEd89UqrPt8n0w5JvW4Pgb/8ITi1sWpjUV4Orxbdbiy3I+Aomp95oaaoi9wGEXv5vvIASK3qpgEVF2+Zq5yndbJMNZROb6SPclPlT/YMnvKhSuCoxZd6r9cShuITzXOHycABvG62lx0uvn7fgg2hqyWihCVIWt6o6hjAdo/q5BQCxq3GUvEWaNm+J0Ap2Rv74SDfTDL99SMAISHbNFG1flgq26tAKJwMQIL0t5PHVaoy6eS+7P71JpkjbgYMRqjoiPOR8thsbGfGi8LFZcgJPmuZnqRhYi5KqrJcLNcBP/08y+XBHd9SNxagSxj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(346002)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(83380400001)(86362001)(82960400001)(38070700009)(41300700001)(33656002)(122000001)(38100700002)(6506007)(64756008)(66446008)(66476007)(7696005)(5660300002)(53546011)(55236004)(9686003)(316002)(110136005)(478600001)(52536014)(8676002)(8936002)(26005)(76116006)(66574015)(55016003)(66946007)(2906002)(66556008)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWFpc1N3UjN2OEU1Zlh4YWtaSGRDZ1liVzdlTCtacVg0UERydzBNa2NsMXlr?=
 =?utf-8?B?RWNGdFFQUmMxRW1EeStXWTgyRzRvY3ErUGpMWWp2elVPTGhJR3V5STJuYzRR?=
 =?utf-8?B?blBidGR2WTlVNHlYSDQ3MHB4akpKcFRsV2pTNlZKWFdpbk0yeU93YnNvOVlX?=
 =?utf-8?B?eVpkWUp6aEhKTFhFWjdmWXlEbUdQa015Q2E4elJUK3ZKUjRXNXg3UDdTMFNv?=
 =?utf-8?B?VE5tOHZlUHZPeFlTVTNnaStGYjVxdzRULzZkeWlIbjVqS2hXUERXdHRFWFZW?=
 =?utf-8?B?dXAwZ2ljNnZuTVdWN2VMZmFOY1dlbFJ6SHhVRnBGd1RPYVZvQUVnbFlseHl0?=
 =?utf-8?B?VThUNXNuREtxRlE4K1RPMkJuTVZ0RG5RbjcwSXhaVE9yR3B4cXJTOTY5VVQ5?=
 =?utf-8?B?MlhOVWc0cjVSYW94Y2tiWWpZNlIrUjRoNFk0RTdKcXo1WitKeTB5S09MbnBr?=
 =?utf-8?B?aEhSYmtaM0ZXMGJjR0ljYVo4bDRFSXVYcUtpRzFZWXlHY2kvWmk0WkxBSms2?=
 =?utf-8?B?cW0yYUhiNHdVa2F3emg2YXNFN1libjliZW9aNUZFOFZNeHVrSTgwS0NGckNM?=
 =?utf-8?B?eFRYYk1mUUtqU0VEVmt0Q3hYeDI4a1VVSVVIRHZyRVZUaE5lckNJd2c1dU5s?=
 =?utf-8?B?SmFWVTlaT0hDd2w1Wm9yOWNsK3hLYUZzaTJsOHBQVFJFWEdXOGcwUTNDbUR0?=
 =?utf-8?B?c3ZQeDcwd0lTZk1mTEs5aEQxdng1b291TEQ4STdJeGxHS1dVc0lsOTc1ZGYw?=
 =?utf-8?B?VHRtdHdaNGdJOFdJMU5wb052QUd5Uy9FVCtTclRYZ2svbXl6SGFnbmkvUmZ1?=
 =?utf-8?B?NlIzejFmelIzRTJFdG14SENMWnJydXNyNnd6Y3FiNTA5aVFGQmRpYStjaUJZ?=
 =?utf-8?B?TUtERzIva2s1bW81M2Z3TDVmVzNTd05ad1JUS1MzNW1IVm5LQmt6a0VIU08v?=
 =?utf-8?B?Um5JZVEyRUxHaEt5alliZmM4SGxaNjF2VWd2aHhpNGRFdnJoRm1iclRvaldD?=
 =?utf-8?B?WDkzRDNpbFVqS0pvYmd5VTZqL05ROUg2b2ZsRHBGVGNBaGZ5TmFIRTNwYzNv?=
 =?utf-8?B?YW16aS9nK1lZUG80ODB1QkZ4OVpmVnlSdkVBY3F0NUNTNG5HbVhDT2s1bVFs?=
 =?utf-8?B?S3AwK2QveHRMcis5dS9oNllURWJVN1BXWGN1dUZmL1ByL05xU2JwNks1Wnk5?=
 =?utf-8?B?NS93OWw1ckhrK1Flb3FPeE5wYno1Yk9GQjhudW1ZY1U0SmJzV2o4SEkzQTdC?=
 =?utf-8?B?VDhEY1ZPVVZUYVJLSkVJY0VqR3hwR1JuRVpuUWJnVVNvaG9RbzFZUlV4SDJU?=
 =?utf-8?B?OUdIZDV3MUQyRkptaTZKTWpzd3RvampmYnVhNXgzUmd6N3VUeG43VExpQXZs?=
 =?utf-8?B?emtob3p6SnJQbmZtQWF5QWxiWGhQampiWnR4UzhuYk1DaHlZWkphaUtFcnA5?=
 =?utf-8?B?NnBsb2NyejQyTTdVTU1WbmViL1NWYi9mZll0UWtBQ0RaN0I1ZU5wQ0JsR1Uy?=
 =?utf-8?B?SnRXWjk3YWtIT3JvWnhCYUxaRHpqcVpFV2xhc1N4YUdSTnVEaDQxQUp3OGpH?=
 =?utf-8?B?a1ZpL1JJamdNU0FiSkZNeFFRSG5Id1NRYWsvK2Q5L2ptVFI3ajVmMGdmM1dQ?=
 =?utf-8?B?NVp1UkRLQ3A0OHE1VHh2OXJxN0dHak1sZUxLY1U4bHRKNHpVZXhhakVLdkF2?=
 =?utf-8?B?K2hhTXVvbXVtTWFXdHhTb1hrdFlGZVlNV1RDWG8xL3pIWGhzMnRuRU5tbVk2?=
 =?utf-8?B?cmVXUndWVUxvOGZKQTVZaGpJTy9DQWkxN0l1UnlFNGt2VzNXY3FDY3RlakFu?=
 =?utf-8?B?dWVWRXUvLzM3VE92Vk5jUXM0ZnRERFZvOGNOR3FpZmlkK0hHREc0TGVzeThM?=
 =?utf-8?B?dGwwd2ZDVjZ5Q0xRdkVwSFkwNURLdEtPQ3dDQnNFSHRaUFBONGtFZ1hWZ1pz?=
 =?utf-8?B?WnFaWExDMHFLOThqSEE4OVpvVHE1MTc4aFowTUlhQlFzeTdDNjhoZ0ZnWC9W?=
 =?utf-8?B?a2lJVkcwUGV1YVFXWCtIbjQwNXV1RlRXTTgzK1diczIzNTlHNEpVNzVXK0Mv?=
 =?utf-8?B?VGVFN3lJRXJYL3VPaHJsWXpuLzlvM0dLMTFUUE9qUExNRlBWdjZ5MFNLWVIv?=
 =?utf-8?Q?vcF28TI+kUQJtziDrWFqLn7iO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f162203b-5a39-4042-ac2d-08dc126ca0b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2024 06:14:54.1326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Ep8S4Ks0+PuymsXoUohODc34Cv8yp9J1cg432AhwTafZT0A86Df88XYzH8tRfgC7iO9i/XgG9YqLx/kzZom1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7395
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDEwLCAyMDI0IDY6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENI
IHYyIDAzLzEzXSBkcm0vaTkxNS9wc3I6IERvIG5vdCBjaGVjayBhbHBtIG9uIERQIG9yDQo+IGNh
cGFiaWxpdHkgY2hhbmdlIGZvciBwYW5lbCByZXBsYXkNCj4gDQo+IEFscG0gaXMgZURQIHNwZWNp
ZmljLiBEbyBub3QgY2hlY2sgaWYgbm90IGVEUC4gQWxzbyBwYW5lbCByZXBsYXkgZG9lc24ndCBr
bm93DQo+IGFib3V0IGNhcGFiaWxpdHkgY2hhbmdlcyAtPiBubyBuZWVkIHRvIGNoZWNrIHRoYXQu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgNyArKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGluZGV4IDNlMjg3YTlmMGUwOS4uYTk0MjFkZDA5MmM1IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTI5ODksOCArMjk4OSwxMSBA
QCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2Rw
KQ0KPiAgCS8qIGNsZWFyIHN0YXR1cyByZWdpc3RlciAqLw0KPiAgCWRybV9kcF9kcGNkX3dyaXRl
YigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VSUk9SX1NUQVRVUywNCj4gZXJyb3Jfc3RhdHVzKTsN
Cj4gDQo+IC0JcHNyX2FscG1fY2hlY2soaW50ZWxfZHApOw0KPiAtCXBzcl9jYXBhYmlsaXR5X2No
YW5nZWRfY2hlY2soaW50ZWxfZHApOw0KPiArCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHAp
KQ0KPiArCQlwc3JfYWxwbV9jaGVjayhpbnRlbF9kcCk7DQo+ICsNCj4gKwlpZiAoIXBzci0+cGFu
ZWxfcmVwbGF5X2VuYWJsZWQpDQo+ICsJCXBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soaW50
ZWxfZHApOw0KDQpUaGVyZSBpcyBhIENBTl9QU1IoKSBjaGVjayBzdGFydGluZyBvZiB0aGUgZnVu
Y3Rpb24gaW50ZWxfcHNyX3Nob3J0X3B1bHNlKCkgd2hpY2ggd2lsbCB0YWtlIGNhcmUgbm9uLWVk
cCBhbmQgcGFuZWwgcmVwbGF5IGNhc2UsIHNvIGRvIHlvdSBzZWUgYW55IGdhcCB0aGVyZT8NCg0K
UmVnYXJkcywNCkFuaW1lc2ggDQo+IA0KPiAgZXhpdDoNCj4gIAltdXRleF91bmxvY2soJnBzci0+
bG9jayk7DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
