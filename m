Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B9B786D69
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCEA10E51F;
	Thu, 24 Aug 2023 11:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3C210E51F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692875414; x=1724411414;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KQkr06Eouawqc99htpK6XV62zTaWp3KtIkmgPYto7jE=;
 b=Ucxxzsfzr9ZQq9xtcbFLQ0ZEacsY6DnN6/4gQhbj68DdKmm2li4rDlE1
 4eXNOFJGOEZmFoLZ9rsOdU9fPjAysphCgAxmh3RAKxPwA6U+nVds6VCZb
 znxJXUzxVaeTX3G5N/76UeoWqSVhhR8oCtax+yQ6IgDTO4qVL5WJC0ppg
 9O4DvBauPx7hsVJb3/e/JHspICSWNWh73eAmTf9ogRxMAcA5OHzGi8v/J
 7KUuFT/j3KqfE5CbroQ129Dz6Gth1jBNtcs265UFqtz2L0rubBBdKDZMY
 kcH7jI0jNU+ygKAG2RxHhHju/LN2UyEfZwx7rF59hGg/JFQDELUZq261R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="460765956"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="460765956"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:10:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880766804"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2023 04:10:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:10:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:10:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:10:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:10:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kq1a8k6qbt7ewMW81iHB/xMsnVdv432C9bL4ZATIrAGDzh3meSvvjzp208TB9BxhXCQwneqTCtzpCN013naaxPv3lKXc9eJ7zsJa6Xh3XPMa2V9PXeAEdTYmvQuIM3pyjfC6BCRiUPJPFAQeuCmEjr9SuTiFa8w60wzIa2IiJXSbJ0UpEexId2yqSfNCcdugR3Z0bR9C6wl7j3TIS+IEqT6Vhcb1PhD+ICjAcKzHJ77upsH7Ag8P2NnlHZOIsOASDvu9r+Bz2k7egw0/eR1QItkoXYN17tB2Ra8Tvi2dfQNjWbzIpgfVzZ/SzOhq+SSUCLT/zp12hBB3EAEhm5qRAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQkr06Eouawqc99htpK6XV62zTaWp3KtIkmgPYto7jE=;
 b=cg+WK+DzVOp+2hNtdsxE/v8fQLVHxCxKFyeYP8fQMIEPJaCIyIf4NQls1KgErAr2z5Gbd2lxUDoS+7nZjcvn1zmW183KV3JQWMjlXFJVpl0m5pxCDwPKQYg7LJYH5r0NACiDPgEPkUHhR7ScbqEAF/3qob23Q/iVJ3NOrTGLK/O8Hkwld1Xzqg6iIR9pyS0q7Mj+ghow3u/RAoVCvnRQ4Fm8sB0UNTDk/t9tiFfXsjMEYRLu8yGUmLZNavNKJmrDy+5TDIKrBcRRwwToxUrvLvZ2Mee3nAVjjrydQZo9GbNKB305GZ2UY4xn6NcsA9C51iz+bYDb26O94CV7i/mVCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5628.namprd11.prod.outlook.com (2603:10b6:510:d4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Thu, 24 Aug
 2023 11:10:10 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:10:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
Thread-Index: AQHZu8Qri1RTNphTMkaHwnMUz2bkNa/sxIxQgAy53gCAAABXcA==
Date: Thu, 24 Aug 2023 11:10:10 +0000
Message-ID: <SN7PR11MB67500D7CCDB2A6CD99E4823CE31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-4-luciano.coelho@intel.com>
 <SN7PR11MB67506A441EBC25AC9A772180E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <916fa2bbb6b3a8571a0dcf3c681b7a142c7a3141.camel@intel.com>
In-Reply-To: <916fa2bbb6b3a8571a0dcf3c681b7a142c7a3141.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5628:EE_
x-ms-office365-filtering-correlation-id: c97b5ee5-21da-4616-cbb5-08dba492ae62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 16oskbEMqtxZUMz9Jh6YIfm2U6lAu8TCfyMWmvthhW+zBl/QXoc6M3hm5HDljMUH/97dd66HMz9rOLsRW4J+fIiFOJ0A4pKKYZYAOk6W765SFFFkw9NotNVu+8DszwO604uzpS7zh4SMBRMfu0BrsCYvrRVF2c6gBVdO6yow5SIilsULTShu6QSBFsxx9W2NUb9dQB6WkKcls8BRfcLjOKuCT6GQi8eMNpo1eaZj4OeMkzGsIPRF8p94EjQb69OXjGxGewV2b52lpTQGU2illx87QPeEPVZwdzFuKOC7V6LunQGICaLDKP/KoR8xYLYRJ21AmRQ6DoBBwOs8TwIDJGbf0UK7GeKjvDwZ/npyu5JN1xz57ZfzKrw6jGDtq8Aam28YFxqIOtsiKx1DvaqG+WH0TWuZ/Mizlh6rOlZAeh3j/rwXY06z9bSU/Rt1gotNI9ssAnSqF9TYpseg2YCYZoiBaNjsczU6208QdvxCVvKssWBInZnkNwvQ5oSPvMr3Nq3xsbJ7FzYUPOmik9zTE4vt3rYqqgVy70CBFltG6AP2Ib/LuolWaqtJ/y2iNKzL2cQDdtoTFVG+vYKYZ7Qa64TZiQcaAEgAQdMHSZCruFI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(346002)(376002)(366004)(186009)(451199024)(1800799009)(6506007)(7696005)(316002)(52536014)(8676002)(4326008)(8936002)(110136005)(66556008)(66476007)(66946007)(76116006)(64756008)(9686003)(55016003)(41300700001)(66446008)(107886003)(5660300002)(71200400001)(966005)(478600001)(83380400001)(33656002)(86362001)(38100700002)(82960400001)(2906002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QUpTa0pabUtDeklJMDJDdnFBNFpMWktRNTBEVVlhanR0YjRZMzFpa0RTNGFG?=
 =?utf-8?B?QTJldkJLYjllQkZQaW5RZ0VKR2tQMXFMYW1VdmJySUtYaDBjajM1aFZIM1NG?=
 =?utf-8?B?a1UxdVJYRlhSZVFwc1JSd0l1QXZUV3hQZWkxREJ3V0pkM09iL0UwNHhUL1gr?=
 =?utf-8?B?TGlNdUNrek9ad3Z2NEhMSkxRNnBtMVB3ZG1VRnEzRmx4bjJhaVFCMzg4MTZw?=
 =?utf-8?B?RTV6amo4SkhkdkZwdm0yclArZWExVktWanlLSmRRV29xMVBJMXdWQVZiQXRN?=
 =?utf-8?B?YS84a0N2QmNzZmY3Um8zQ2tCNUE1K2pZbWJZNEQvaWZoYStwdW9XemZURDgr?=
 =?utf-8?B?bjlGc3d4MWNrN2ozKzBLSWJZWjFHOEpMcUVaaEQ3NlhzMng3VTdXUE1xRU1Z?=
 =?utf-8?B?Wm1pbk9VTmM3UE1OTkdVY3pqQnNEQ0ZrM3RaTXhuandyaDdic0lrL1R2LzVV?=
 =?utf-8?B?bEk1OXYxWEZhV1h3V0xLOGQyaDRTZUFFdDlxYXJwcG5Vb2xJQkxlK25XaEE1?=
 =?utf-8?B?QzQvQmlPbm9sVVk2Qkx4QkFteGhrQjhBQjkvUGttVkhpZ0hCaitJNURWNTJG?=
 =?utf-8?B?dlBWL3d4ZENXZUcvYTlDMkg3OGhtbm4vWE9IM3IvSEorSU1Dc1FYbjRsR2lP?=
 =?utf-8?B?dm1vSzY0VHZIdGhNTERya0FZUko3c0ovNmpZRDFXeXk0M2lGUTlNdmU2MzBv?=
 =?utf-8?B?SDhTZUU1NXdPYUJzbnd5V2tNSU9kNHYxOEMxbVlKdGs1OHNDRytGV1p0OXJa?=
 =?utf-8?B?ZXROK05WbkZnZC9vclFJanVMbmRHSzE3WWxxYkpqdE1HMnRQelJ4SGNlaGlM?=
 =?utf-8?B?NW10cFYxNU5BNGs5MkROZi9rODN5OTVGZU9jMFlZR3FtVHlqVVczakhvblNj?=
 =?utf-8?B?ZmlLRjFoTi8vTUdadzloSkNnQTRweVJvZDZaY2ZETktMaXpoUFVIMGVpMGdh?=
 =?utf-8?B?czBsemEvTk5UdmN0aDJBeFdRMGpNV1BlYkZMaWNSYjJHRXNjUmQyY0R0WHVm?=
 =?utf-8?B?emZTT3kxRjc0NDFHUVhGMTJ6bS9WQkFXZURMei9uWjZsTFlVMjVFdy8rMnNy?=
 =?utf-8?B?NktLU1FDTDUwVVUxNTZNaENpV1VEKzZDdHlFRldIUVpEbThsaDJYamM5cW1H?=
 =?utf-8?B?TTNzK04wWitLdDhLSFRmRDlucnJ1TDJySHJDUmlZbnk0UG1oN3JkdTdZenJK?=
 =?utf-8?B?Tngyci85d0lwQ2ZOai9Tb05yd3RtSnhmU05hMytBNzBoQXJWN0FzSXBWODJ2?=
 =?utf-8?B?bCtPeURNR3kvU2QxbEJTanZlUzhjOXZEUFlYclRzZHVNV3FzaFZrdHZPdStD?=
 =?utf-8?B?STA5c2dtNDdKNFl1eFZBdWMvbWFWbDFxazJBcFpxckl3WTR3WDhkOTNKVnpF?=
 =?utf-8?B?S2pWdENGZXNXNVVzSi9IdkZqR2tZQUphdlk0VjhLZlVrL1VldzQwVEd5N0Vq?=
 =?utf-8?B?MGtzaTB4SU9wSHlCcS81cEswZzNhVVJUK3R3b0FHcjN6ZVMxNStnWjZIUHdN?=
 =?utf-8?B?QjNSSmkrWHNHbXdTMG9KRXZyMlU4TU1sM2VLOTFZR3FUUDBRS29IMWZjYTJE?=
 =?utf-8?B?ZUF5TjlqeWFGWnVHZW5EL2ZoN0hKZjRsbmJuRFMxSjR0UXhMME5XcFE4Z2VO?=
 =?utf-8?B?R2o4ekI1S2FJKy9kY2hUMnEyY2Q3YktYMmFnVUV1RkVDMzJOUTRCekFrK1Rs?=
 =?utf-8?B?MklBemVBbzFUMXYrMWNydTVKYThpb1h3Sk93dWl6and0QTk4K2pnWEEwcU1H?=
 =?utf-8?B?RjcxaHBqVnhHSGRTcTZ0czlLN2RQcG1kb0RiVGVsSEFzUVFsc0dkL0h3Tjdj?=
 =?utf-8?B?Mm55d3dONHkxVnlTcTVpR0ZKOWRxcHhGamFzbTJIVkZRYktXZ2hhb1hYZVli?=
 =?utf-8?B?ckFTMzBGR3ZMcVNuV0djdWJocklNaEk0WDFrNkNyV1F5RkZuc1RvSVMraVNZ?=
 =?utf-8?B?M09uWXYrOUt5MHBGOGswNzdyRng4ZHZzNXJHekIyTkQzait5N0llKzNtdXZV?=
 =?utf-8?B?cHl3VmlvalczK2xFenpqQnZvUFBpQnRaZ2JFaUpjVys2OUliVlAzb3ltQ0pF?=
 =?utf-8?B?SDBqSkJmMlR4YVNLbVBzSWxwQWtLWEo3bzBqRHA3VENyeEtKS040aUdYSmNw?=
 =?utf-8?Q?P2gw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c97b5ee5-21da-4616-cbb5-08dba492ae62
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:10:10.0694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OZISjxOlk75VIKoW5vD82TC1ErSgGBV4qMuNR3u6EMeem9TqMW5zy3ADK30jgvn2NIHPNkPSwxfUhjT9jCB44Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5628
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+IE9uIFdlZCwgMjAyMy0wOC0xNiBhdCAwODo1NCArMDAwMCwgS2FuZHBhbCwgU3VyYWogd3Jv
dGU6DQo+ID4gPiBUaGlzIG1ha2VzIHRoZSBjb2RlIGEgYml0IG1vcmUgc3ltbWV0cmljIGFuZCBy
ZWFkYWJsZSwgZXNwZWNpYWxseQ0KPiA+ID4gd2hlbiB3ZSBzdGFydCBhZGRpbmcgbW9yZSBkaXNw
bGF5IHZlcnNpb24tc3BlY2lmaWMgYWx0ZXJuYXRpdmVzLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+ID4gPiAtLS0N
Cj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMzIgKysr
KysrKysrKysrKysrLS0tLS0tDQo+ID4gPiAtLS0tDQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gaW5kZXggZGU4NDhiMzI5
ZjRiLi40M2I4ZWViYTI2ZjggMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gQEAgLTMxMSwyMyArMzExLDEyIEBAIHN0YXRpYyBpbnQN
Cj4gPiA+IG10bF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4gPiA+IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gPiDCoAl9DQo+ID4gPiDCoH0NCj4gPiA+DQo+
ID4gPiAtaW50IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQNCj4gPiA+ICpkaWdfcG9ydCkNCj4gPiA+ICtzdGF0aWMgaW50IGludGVsX3Rj
X3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdA0KPiA+ID4gaW50ZWxfZGlnaXRhbF9wb3J0
DQo+ID4gPiArKmRpZ19wb3J0KQ0KPiA+ID4gwqB7DQo+ID4gPiDCoAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtDQo+ID4gPiA+YmFzZS5iYXNlLmRldik7
DQo+ID4gPiAtCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQp
Ow0KPiA+ID4gLQllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBkaWdfcG9y
dC0NCj4gPiA+ID5iYXNlLnBvcnQpOw0KPiA+ID4gwqAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
DQo+ID4gPiAtCXUzMiBsYW5lX21hc2s7DQo+ID4gPiAtDQo+ID4gPiAtCWlmICghaW50ZWxfcGh5
X2lzX3RjKGk5MTUsIHBoeSkgfHwgdGMtPm1vZGUgIT0NCj4gPiA+IFRDX1BPUlRfRFBfQUxUKQ0K
PiA+ID4gLQkJcmV0dXJuIDQ7DQo+ID4gPiArCXUzMiBsYW5lX21hc2sgPSAwOw0KPiA+ID4NCj4g
PiA+IC0JYXNzZXJ0X3RjX2NvbGRfYmxvY2tlZCh0Yyk7DQo+ID4gPiAtDQo+ID4gPiAtCWlmIChE
SVNQTEFZX1ZFUihpOTE1KSA+PSAxNCkNCj4gPiA+IC0JCXJldHVybiBtdGxfdGNfcG9ydF9nZXRf
bWF4X2xhbmVfY291bnQoZGlnX3BvcnQpOw0KPiA+ID4gLQ0KPiA+ID4gLQlsYW5lX21hc2sgPSAw
Ow0KPiA+ID4gwqAJd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGk5MTUsIFBPV0VSX0RPTUFJTl9E
SVNQTEFZX0NPUkUsDQo+ID4gPiB3YWtlcmVmKQ0KPiA+ID4gwqAJCWxhbmVfbWFzayA9IGludGVs
X3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhkaWdfcG9ydCk7DQo+ID4gPg0KPiA+ID4gQEAgLTM0OCw2
ICszMzcsMjMgQEAgaW50IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdA0K
PiA+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gPiA+IMKgCX0NCj4gPiA+IMKg
fQ0KPiA+ID4NCj4gPiA+ICtpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ID4gKypkaWdfcG9ydCkgew0KPiA+ID4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtDQo+ID4gPiA+YmFz
ZS5iYXNlLmRldik7DQo+ID4gPiArCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3Bv
cnQoZGlnX3BvcnQpOw0KPiA+ID4gKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShp
OTE1LCBkaWdfcG9ydC0NCj4gPiA+ID5iYXNlLnBvcnQpOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAo
IWludGVsX3BoeV9pc190YyhpOTE1LCBwaHkpIHx8IHRjLT5tb2RlICE9DQo+ID4gPiBUQ19QT1JU
X0RQX0FMVCkNCj4gPiA+ICsJCXJldHVybiA0Ow0KPiA+ID4gKw0KPiA+ID4gKwlhc3NlcnRfdGNf
Y29sZF9ibG9ja2VkKHRjKTsNCj4gPiA+ICsNCj4gPiA+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUp
ID49IDE0KQ0KPiA+ID4gKwkJcmV0dXJuIG10bF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3VudChk
aWdfcG9ydCk7DQo+ID4gPiArDQo+ID4gPiArCXJldHVybiBpbnRlbF90Y19wb3J0X2dldF9tYXhf
bGFuZV9jb3VudChkaWdfcG9ydCk7DQo+ID4gPiArfQ0KPiA+DQo+ID4gTG9va2luZyBhdCB0aGlz
IEkgdGhpbmsgd2UgaGF2ZSBtb3JlIHNjb3BlIG9mIG9wdGltaXphdGlvbiBoZXJlIEkNCj4gPiB0
aGluayB3ZSBjYW4gZ28gYWJvdXQgaXQgaW4gdGhlIGZvbGxvd2luZyB3YXkNCj4gPg0KPiA+IGlu
dGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50DQo+ID4gYWxyZWFkeSBjYWxscw0KPiA+IHdp
dGhfaW50ZWxfZGlzcGxheV9wb3dlcihpOTE1LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLCB3
YWtlcmVmKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFuZV9tYXNrID0g
aW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKGRpZ19wb3J0KTsNCj4gPg0KPiA+IHdoaWNoIHdl
IGFsc28gZHVwbGljYXRlIGluICBtdGxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnRfbWFzaw0K
PiA+IChub3cgbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KSBhbmQgdGhlIG9ubHkgZGlm
ZmVyZW5jZSBiZXR3ZWVuDQo+ID4gdGhlbSBJcyB0aGUgc3dpdGNoIGNhc2Ugd2hhdCBpZiB3ZSBo
YXZlIGEgZnVuY3Rpb24gb3IgcmVwdXJwb3NlDQo+ID4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5l
X2NvdW50IHRvIG9ubHkgaGF2ZSB0aGUgc3dpdGNoIGNhc2UgYmxvY2sgd2l0aA0KPiA+IGFzc2ln
bm1lbnQgdmFyaWVkIGJ5IGRpc3BsYXkgdmVyc2lvbiBhbmQgY2FsbCBpdCBhZnRlcg0KPiA+IGlu
dGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzaw0KPiA+DQo+ID4gbWF5YmUgYWxzbyBtb3ZlIHRoZSBs
ZWdhY3kgc3dpdGNoIGNhc2UgaW4gaXRzIG93biBmdW5jdGlvbj8NCj4gDQo+IFRoaXMgd291bGQg
YmUgYW5vdGhlciBvcHRpb24sIGJ1dCBJIHRoaW5rIGl0J3MgbmljZXIgdG8ga2VlcCB0aGluZ3Mg
dmVyeSBpc29sYXRlZA0KPiBmcm9tIGVhY2ggb3RoZXIgYW5kIHRoaXMgdGlueSBjb2RlIGR1cGxp
Y2F0aW9uIGlzIG5vdCB0b28gYmFkLg0KPiANCj4gRXNwZWNpYWxseSBiZWNhdXNlIGxhdGVyLCBh
cyB5b3UgY2FuIHNlZSBpbiBteSBMTkwgcGF0Y2ggdGhhdCBMdWNhcyBzZW50IG91dFsxXQ0KPiB3
ZSBoYXZlIGFub3RoZXIgY29tYmluYXRpb24gaW4gYSBuZXcgZnVuY3Rpb24uICBTbyB3ZSBoYXZl
Og0KPiANCj4gaW50ZWxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoKTsNCj4gCWludGVsX3Rj
X3BvcnRfZ2V0X2xhbmVfbWFzaygpOw0KPiAJc3dpdGNoIHdpdGggbGFuZV9tYXNrOw0KPiANCj4g
bWx0X3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhkaWdfcG9ydCk7DQo+IAlpbnRlbF90Y19wb3J0X2dl
dF9waW5fYXNzaWdubWVudF9tYXNrKCk7DQo+IAlzd2l0Y2ggd2l0aCBwaW5fbWFzazsNCj4gDQo+
IGxubF90Y19wb3J0X2dldF9sYW5lX21hc2soKToNCj4gCWludGVsX3VuY29yZV9yZWFkKHVuY29y
ZSwgVENTU19ERElfU1RBVFVTKHRjX3BvcnQpKTsNCj4gCXN3aXRjaCB3aXRoIHBpbl9hc3NpZ25t
ZW50Ow0KPiANCj4gDQo+IFNvIG5vdyB3ZSBoYXZlIDMgZGlmZmVyZW50IHdheXMgdG8gcmVhZCBh
bmQgdHdvIGRpZmZlcmVudCB3YXlzIHRvIHBhcnNlICh3aXRoDQo+IHRoZSBzd2l0Y2gtY2FzZSku
ICBJIHRoaW5rIGl0J3MgYSBsb3QgY2xlYW5lciB0byBrZWVwIHRoaXMgYWxsIHNlcGFyYXRlIHRo
YW4gdG8gdHJ5DQo+IHRvIHJldXNlIHRoZXNlIHNtYWxsIHBpZWNlcyBvZiBjb2RlLCB3aGljaCB3
b3VsZCBtYWtlIGl0IGEgYml0IGhhcmRlciB0byByZWFkLg0KPiANCj4gTWFrZXMgc2Vuc2U/DQo+
IA0KDQpZZXMgdGhpcyBhY3R1YWxseSBtYWtlcyBzZW5zZSBJIGNvbW1lbnRlZCB0aGUgc2FtZSB0
aGluZyBvbiBMdWNhcydzIExOTA0KRGlzcGxheSBlbmFibGVtZW50IHBhdGNoDQoNClJlZ2FyZHMs
DQpTdXJhaiBLYW5kcGFsDQoNCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJv
amVjdC9pbnRlbC0NCj4gZ2Z4L3BhdGNoLzIwMjMwODIzMTcwNzQwLjExODAyMTItMjgtbHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tLw0KPiANCj4gLS0NCj4gQ2hlZXJzLA0KPiBMdWNhLg0K
