Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FE5654D7D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 09:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5EE10E1B3;
	Fri, 23 Dec 2022 08:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C427910E1B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 08:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671784302; x=1703320302;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vuiZaRciKOAuRQzOs/3UlgZHcVb9pZX1QTcknkvYL7U=;
 b=IB4WRcZ2NtmxrYY5z5GO1/uT5mrUaFxnvDg4z8zc7rqrTNSKN0LPVPTQ
 ZjM3WKWCNPCX3e0svvwW74Uwz86kdKPRv+X6DpMjL6ejnswuRJMBQd5kv
 Uy8n0Dy7rbc1h1Mrvzak3TwEAMOHnKi7XY6nG03fxP0VWmAAuHKgwKfX1
 d5J2rOwde1zOnWSEfDJApMpHV6eH4Gvx8GBfaVUPleXd9Oz2r2zVq4dRW
 dyWegxAAF/Y+zTZykhhAYYd8tACfTCGrKPtROx3frSRyOQleSU0WqYG7z
 PLszZF9HHI8oOC9gOo8pxjPguz0MA2rC6+n9T7pAFphyUwHOECKgfwZtC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="299972081"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="299972081"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 00:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="720578947"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="720578947"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 23 Dec 2022 00:31:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 00:31:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 00:31:36 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 00:31:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkA7WIgx47C+m8+c77qEaEJ1OOLzcf5dAN65esRebQ22+H0OfgUBDGa7ZHeVVa1NzwNBnoZlXKilCcyOSoHARR1RlqP2R9QZa01G8Cy8JMt90PgaRHmf3O2bW5DE0OzadcI6876g7kFnVJqwsIzzz92qEnwvJJR699//+Sp3XdFEqkmjt7g1+7MDdcsVOCro2qF0jhZpWypZDV3ih3ZBraTk00iU4qzv+Fix2NSpXRaiYp+yqF9C55TQWZ75uUyuRlxNqwqN8ru5AIfBq16bGUHf9loq0CNNlrpVl+GC2srPJSstOUau61uiWOYvQbGHJcIE0Xx1eTFoghCPliojFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vuiZaRciKOAuRQzOs/3UlgZHcVb9pZX1QTcknkvYL7U=;
 b=V0ZVVBFUahLZgIMbhobk3q2ZJNfcM6t/9ruaVXGnXEk8kN0WJJLbUPWX7+aFad41OAYvKm5nWDCBPWrBE4oQTOlIF/2Wz8fPDEyrlvl+QsGfb0A1jONBKJO8d6DegOLChRB3s/BqFrb4SrbBqXTV84PtlOIe4+l61EnZ3lrL4yG7atd/WeHcOxoLttwDA5VL3AJnrqmU/zIJcHqhTkHAKw89/9MvC9w+q07exymoLDAo4+CYyYbiU94CSivHfG087JdwB//KPAXb4T0SpwotdyOhh0DGRzYWJW4uLywwXFs7HZFUFx1rc6krpIfbyoIYp5AZG/Ht2DkLmmkXdydCLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB4872.namprd11.prod.outlook.com (2603:10b6:510:32::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Fri, 23 Dec 2022 08:31:28 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 08:31:28 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
Thread-Index: AQHZFdEFbjX/CqsgXESEcFcuHsWw0657Jw6A
Date: Fri, 23 Dec 2022 08:31:27 +0000
Message-ID: <fa4976cf50583d02f458ae124dc6ee2c793b6293.camel@intel.com>
References: <20221222064355.3642557-1-suraj.kandpal@intel.com>
 <20221222064355.3642557-7-suraj.kandpal@intel.com>
In-Reply-To: <20221222064355.3642557-7-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB4872:EE_
x-ms-office365-filtering-correlation-id: ad8c187d-886b-40c1-9dfa-08dae4c015f2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /CYbwhfVYcylIf9KsFGU1KiDKTMzt93DLY12e3sQMqozQanmNc27qDTf6PoqgEPzzy4b5fflkARyui/KcNCnzVOzdjMmeGTx1MoyFYgvnqpsH+NR/6uRNCbN63wUpaOx3bUbCSCM9kM5Gq5gC8fq2XVMxe1TrRTVSCdGJlBL6RLB6xwYOCf597UxYm5jA45/1msviDyrqZ/kRIasV5hRib0/k5DF6Dqst25+HoPCpWYi59VWm7oLjvMC+OdEesElCc4YoT5vqErbflEwjVG6dPHNNElVxdrc58UKj9PRZ3vW/9D92ZxQHrtVV2pB6sE96MY1N0RPO4N48eph3Z7er3SReYmAHGO0l1kglZYqwee5HJicK+YLRp6kE2pKhKoz6Pp/hXdx9M+EesEj1JuA6QTW7lslq2wXyzN5j5Ih7dkx31O6/Wxx6b1RhPlilNCz1BhBhqtPbKZxqrx3cY81ex8B7EZYpUcEK5qI6WL3T98XxoK9ce+VLjWDv9hSStlLiD8w91O/n4j75H4U8p+hrD2hDlRmakR7Q/7sAJAUMfRymASRrUH0DeanFftzefGjnyt3UC4ah85OVaHriBQN9xEy1+QorddnIY+UMG6LUtKC+R3NktQAijq5eRwqfXvespjJd19dIbzfm9YGvHze4AyJWi7owA+YDkzQNJv4rSm3wpQhUNl0ruThT862ZPCd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(136003)(346002)(376002)(451199015)(2906002)(110136005)(107886003)(4001150100001)(36756003)(122000001)(82960400001)(2616005)(38070700005)(6506007)(316002)(83380400001)(38100700002)(26005)(6512007)(186003)(71200400001)(8936002)(66556008)(5660300002)(4326008)(66476007)(66446008)(64756008)(66946007)(8676002)(86362001)(76116006)(91956017)(41300700001)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UlRTVzhSbkFNSlBrNlg5UGpOTDFpUXIzdWhlMnBYamVYbTVrUXRzMHBtcjZ5?=
 =?utf-8?B?M09xT0tWYVdNZ0ZPS2NzSWlNbS80bnAvZ2d1cEhSalhJVS9SYndBd2lmTzJk?=
 =?utf-8?B?WGhxa3pZMnBOcS90VE00dUZ3Nno4Rk16dWh1dVArRysvcjl2OTBuYU16aGpD?=
 =?utf-8?B?V241bzV1elM0MFZlNjEreWZMQ0VjVkpKaUNQcUdWV1VLOU0yNFBrcEdmOGlX?=
 =?utf-8?B?YWRGL3F5YWFBSTVleEdqWUIvb1NaNmhqSCtPcXVUb0lNOTdzZ3hwVG1nSW5W?=
 =?utf-8?B?SkV1am03UkpEMUMwWGNRZmxsRVBPbjBscGpZOEhSa3hZdStockR2UXJjYThZ?=
 =?utf-8?B?LzBCeUtDdFpPOWpCNENYVngwM2dETVgyWitEUytaV0VMRndwU3RGdlZvYnFo?=
 =?utf-8?B?WE5tbVFLWklOUDB0NjZLTVVYNlNuTEhWN3FBK084SFB4dklLT0hNWG82M0lC?=
 =?utf-8?B?WDBrR3VLVlhSWnpDa0NlQ1JqY2hGbWEvM3VwdHpTWSszZWhVdENQVzY3VXJG?=
 =?utf-8?B?SmxwSFlTSno3dGFZUFZKSjZhSXJsTXpoNDJKVXlTb09lWWhsenBybG5FVW9S?=
 =?utf-8?B?MVFCYWNjeXdIeHpjVjNvUCsvMFFmRFR4aTB3NHgwbk5MQm50WDJkVmFwODBW?=
 =?utf-8?B?eld2WFQ5Smt3SnVVaGtyTUg3a1NYaUswQTN4RWlxb3p3QTV0MnNEb3poa1lq?=
 =?utf-8?B?TDREcTV2Wk9CSmRnUzBZRWt5VXl1eE5OYW9abm5JTTFTZEUwSEhPUlcrTXlV?=
 =?utf-8?B?b0Y5eEl1WXptcnVESTRWUCtkaUxNTFViRkU2U1Y0M05TVW4wYjQ4d0ZVZHJz?=
 =?utf-8?B?TlhWdzB0V3hvNUM3dnptd3pxWHpyWnNIZjNPcDFhQTJralk5WlZyU0VBZXRt?=
 =?utf-8?B?OWpkUkYwYXNTSlVxazVnM3kvWnpIbys2ZWhLL3BvL3Z4ODRSNVBZeUZWa2gy?=
 =?utf-8?B?Y2ZOcWZWeU1ZeXZoYXZVbENSaEF6Z3VXY1FUeERMcXFKVGZIeVhUNkFHZnp4?=
 =?utf-8?B?SHRGZUIzbmt2N3BSY1lVMzk1NnUxcE9lUEpiTkJkRVJabU5zZ1VjZ0tMUnlZ?=
 =?utf-8?B?RW96MThtNmRvYVhZMUx0bXRsSzRxWFZQUFJvc2p4eERZb1VNNFIzUTJTT3Nl?=
 =?utf-8?B?ZnFtc3p0VW1SRThCazNTNzd0NVZwbmtyR1cyRUVDN1IzanRFUWNGMVlreXBz?=
 =?utf-8?B?WS96bitoUUlJNlRQWFk2YTZZMm1PbkNIbjdLalZiblpDaEJ0Yk5VMk10b3pV?=
 =?utf-8?B?V3BxcW9pUjFhdm1tVVZ5NEZOM0s0V05iTXJSckxZS1piY0xESXpSQzVwb2NE?=
 =?utf-8?B?N09qT3BuVGtyK0FNNjlHM0ZGSDhMMDFDN1BReVFZNStsQy8rejJ0Zm9wMlVW?=
 =?utf-8?B?cnlpYndwcitNbmtZUG5iU0JOVzBFR1dhU3dBY09TSkRvcWMyaWc0MFVrQlpS?=
 =?utf-8?B?OG5jRkZPY2pleWpicFBjeGFWYm9zR2tCUXlNME1CREwzeXRJZmxiakhQN1hk?=
 =?utf-8?B?WmV3cExyenRWYVlTMDVJMm84aHlXUklyNk9vS2FycVo4a2JqZUpYeFZuWDlk?=
 =?utf-8?B?MGVqb1lQME4veWJ2NGtHK042cTJzSHlzRkR3bGlhNFo1YUtZWGhucjlCM1Zv?=
 =?utf-8?B?U1VXTGNYWUo5eklOZVN3d0Q1dmJsMjFjM3o4ZTdCdkpZdE93djdHUGhlcTRC?=
 =?utf-8?B?WDdrbWo5UGFreC9VaExzdGMxYmtqWjlvTWQwMzF3NjdBa3RtVlZZME5BbDJx?=
 =?utf-8?B?MjduSnhtSmdpUzFhVXNDRmJ0d2ZVSVgzTmlMZlZwam5ac0dqeThVWUlaN2lH?=
 =?utf-8?B?cTRVWWZSZy9VM0dJcUhmRGpobXBpRitRejNJeGZTOE1QZkU1LzYwZ0lTUWxw?=
 =?utf-8?B?ZS9sN2FBQU9EcWxVeFFPZFZmTWVPd2doM1AyOXJzNkQ1Um5LUmdPSGpVMkQ1?=
 =?utf-8?B?RjBBSU9FcFViMWNwTW9LZGVwenowVXR2ZnIzdSs1RHlMRzlCWXdqcEJGbkN5?=
 =?utf-8?B?ZW5NbXZ4RHhhS3Q2NzFBSEtWMDNSMEJWbS9LWW1tRVFpUTE0eFRWNHFVTm5t?=
 =?utf-8?B?OTVTWVo3T0RHOWVhS2VwMHhobDlJVXpwdVFza0pZb1hUSml6TnhQem5hU0xr?=
 =?utf-8?B?ZmJmeS9aeklMd1lPcllZV1ZrOVg1UlFLemhwS3JjNXl6cEVvVkhLcXRCQXFK?=
 =?utf-8?Q?pgC/YNZ/bHkuDdKtxvETJy4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D2BBAC58885734E9152EC43774B0DC2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad8c187d-886b-40c1-9dfa-08dae4c015f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 08:31:27.8797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a3Hs8WyKxsefDcv8t6zYRgHyoMVW0IXNy+pcnuQk0s5QN82cjY7IoOHdGXI1jftfYIWP07GF7s55h61d7hcApYgoC8hK+IVZCJmujQOAX/HTsxg1ksgjJRanYLiumxRW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4872
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9zdCBvZiBpdCBsb29rcyBnb29kIC0gYnV0IEkgaGF2ZSB0d28gaXNzdWVzOg0KMS4gIEkgYmVs
aWV2ZSB0aGVyZSBhcmUgc29tZSByZXVzZSBlZmZpY2llbmN5IGdhcHMgZGVwZW5kaW5nIG9uIHRo
ZSBmcmVxdWVuY3kgb2YgdGhlc2UgaGRjcC1nc2MgbWVzc2FnZXMuLi4gYnV0IGl0IG1pZ2h0IG5v
dCBiZSBhbiBpc3N1ZSBkZXBlbmRpbmcgb24gdGhlIGFuc3dlcnMgdG8gdGhlDQpxdWVzdGlvbnMg
aSBoYXZlIGJlbG93Lg0KMi4gIE1pc3NpbmcgdGhlIHNlc3Npb24tY2xlYW51cCByZXF1ZXN0DQoN
Ci4uLmFsYW4NCg0KDQpPbiBUaHUsIDIwMjItMTItMjIgYXQgMTI6MTMgKzA1MzAsIFN1cmFqIEth
bmRwYWwgd3JvdGU6DQo+IA0KQWxhbjpbc25pcF0NCj4gKy8qVGhpcyBmdW5jdGlvbiBoZWxwcyBh
bGxvY2F0ZSBtZW1vcnkgZm9yIHRoZSBjb21tYW5kIHRoYXQgd2Ugd2lsbCBzZW5kIHRvIGdzYyBj
cyAqLw0KPiArc3RhdGljIGludCBpbnRlbF9pbml0aWFsaXplX2hkY3BfZ3NjX21lc3NhZ2Uoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICsJCQkJCSAgICAgc3RydWN0IGludGVsX2hk
Y3BfZ3NjX21lc3NhZ2UgKmhkY3BfbWVzc2FnZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0ID0gaTkxNS0+bWVkaWFfZ3Q7DQo+ICsJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiA9IE5VTEw7DQo+ICsJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBOVUxMOw0KPiArCXZvaWQgKmNt
ZDsNCj4gKwlpbnQgZXJyOw0KPiArDQo+ICsJaGRjcF9tZXNzYWdlLT5vYmogPSBOVUxMOw0KPiAr
CWhkY3BfbWVzc2FnZS0+aGRjcF9jbWQgPSBOVUxMOw0KPiArCWhkY3BfbWVzc2FnZS0+dm1hID0g
TlVMTDsNCkFsYW46IGlzIHRoaXMgdW5uZWNlc3Nhcnk/IGNhbGxlciBpcyB1c2luZyBremFsbG9j
IGZvciB0aGlzIHN0cnVjdHVyZS4NCg0KPiArCS8qIGFsbG9jYXRlIG9iamVjdCBvZiBvbmUgcGFn
ZSBmb3IgSERDUCBjb21tYW5kIG1lbW9yeSBhbmQgc3RvcmUgaXQgKi8NCj4gKwlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGd0LT5pOTE1LCBQQUdFX1NJWkUpOw0KPiArDQo+ICsJ
aWYgKElTX0VSUihvYmopKSB7DQo+ICsJCWRybV9lcnIoJmd0LT5pOTE1LT5kcm0sICJGYWlsZWQg
dG8gYWxsb2NhdGUgSERDUCBzdHJlYW1pbmcgY29tbWFuZCFcbiIpOw0KQWxhbjogbml0OiAnaTkx
NScgaW5zdGVhZCBvZiAnZ3QtPmk5MTUnIEFsc28gYXBwbGllcyBmb3Igb3RoZXIgY2FzZXMgaW4g
dGhpcyBmdW5jdGlvbi4NCg0KDQpBbGFuOltzbmlwXQ0KIA0KPiArCW1lbXNldChjbWQsIDAsIG9i
ai0+YmFzZS5zaXplKTsNCg0KQWxhbjogcXVlc3Rpb246IGhvdyBvZnRlbiBpcyB0aGlzIGhkY3Ag
bWVzc2FnZSBiZWluZyBjcmVhdGVkLCBwaW5uZWQsY2xlYXJlZCBhbmQgdXNlZCB0byBzZW5kIG1l
c3NhZ2U/DQpJcyB0aGlzIHZlcnkgaW5mcmVxdWVudCAtIHN1Y2ggYXMgb25seSBkdXJpbmcgaW5p
dGlhbCBwb3J0IGNvbm5lY3Rpb24gZXN0YWJsaXNobWVudCBvciBpZiBpbiB1bmxpa2VseSBjYXNl
cyBvZiBkcC9oZG1pIGxpbmstZGlzcnVwdGlvbi4uDQpPciBpcyBpbnRlbF9oZGNwX2NoZWNrX3dv
cmsgc29tZXRoaW5nIHRoYXQgaGFzIHRvIGV4ZXJjaXNlIHRoZXNlIGdzYyBtZXNzYWdlcyBmcmVx
dWVudGx5IChzdWNoIGFzIGV2ZXJ5IGZldyBzZWNvbmRzKT8NCkkgYW0ganVzdCB3b25kZXJpbmcg
aWYgaXRzIHRoZSBsYXR0ZXIsIHdoZXRoZXIgaXRzIG1vcmUgZWZmaWNpZW50IHRvIGluaXRpYWxp
emUgYW5kIHN0b3JlIHRoZSBoZGNwX21lc3NhZ2Ugc3RydWN0dXJlIGludG8gaW50ZWxfaGRjcA0K
aWYgaGRjcCBvbiBjb25uZWN0b3IgaXMgZW5hYmxlZCBhbmQgZnJlZWQgKGludGVsX2ZyZWVfaGRj
cF9nc2NfbWVzc2FnZSkgb25seSBhdCBwb3J0IGRpc2FibGluZyB0aW1lPw0KQWxzbywgaW4gYW55
IGNhc2UsIHdvdWxkIHRoZSBlbnRpcmUgb2JqZWN0IG5lZWQgdG8gYmUgbWVtc2V0PyAoSSdtIHdv
bmRlcmluZyBpZiB3ZSBvbmx5IG5lZWQgdG8gbWVtc2V0IHRoZSBtdGwtZ3NjLWhlYWRlciBhbmQg
bGVhdmUNCnRoZSByZXN0IHNpbmNlIGdzYyBoZGNwIHNlcnZpY2UgaXMgYWJsZSB0byBkZXRlcm1p
bmUgdGhlIHJhbmdlIG9mIHZhbGlkIGJ5dGVzIGJhc2VkIG9uIHRoZSBoZGNwIGNvbW1hbmQgYW5k
IHRodXMgd2UgZG9uJ3QgbmVlZCB0bw0KbWVtc2V0IHRoZSBlbnRpcmUgb2JqZWN0KQ0KDQpBbGFu
OltzbmlwXQ0KDQoNCg0KPiArc3RhdGljIGludCBpbnRlbF9nc2Nfc2VuZF9zeW5jKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPiArCQkJICAgICAgIHN0cnVjdCBpbnRlbF9nc2NfbXRs
X2hlYWRlciAqaGVhZGVyLCB1NjQgYWRkciwNCj4gKwkJCSAgICAgICBzaXplX3QgbXNnX291dF9s
ZW4pDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2d0ICpndCA9IGk5MTUtPm1lZGlhX2d0Ow0KPiAr
CWludCByZXQ7DQo+ICsNCj4gKwloZWFkZXItPmZsYWdzID0gMDsNCkFsYW46IHF1ZXN0aW9uOiBT
aG91bGQgdGhpcyBiZSBwcmVzZXJ2aW5nIHRoZSBzZXNzaW9uLWNsZWFudXAgYml0PyAoSW0gbm90
IGZhbWlsaWFyIHdpdGggdGhlIHNlc3Npb24tY2xlYW51cCBzdGVwcykuICAgDQoNCkFsYW46W3Nu
aXBdDQoNCj4gK3NzaXplX3QgaW50ZWxfaGRjcF9nc2NfbXNnX3NlbmQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsIHU4ICptc2dfaW4sDQo+ICsJCQkJc2l6ZV90IG1zZ19pbl9sZW4sIHU4
ICptc2dfb3V0LCBzaXplX3QgbXNnX291dF9sZW4pDQo+ICt7DQoNCkFsYW46W3NuaXBdDQoNCj4g
KwloZWFkZXIgPSBoZGNwX21lc3NhZ2UtPmhkY3BfY21kOw0KPiArCWFkZHIgPSBpOTE1X2dndHRf
b2Zmc2V0KGhkY3BfbWVzc2FnZS0+dm1hKTsNCj4gKw0KPiArCW1lbXNldChoZWFkZXIsIDAsIHNp
emVvZigqaGVhZGVyKSk7DQoNCkFsYW46IG5pdDogaW50ZWxfaW5pdGlhbGl6ZV9oZGNwX2dzY19t
ZXNzYWdlIGlzIGFscmVhZHkgbWVtLXNldHRpbmcgKGF0IGxlYXN0IHRoZSBoZWFkZXIpDQoNCkFs
YW46W3NuaXBdDQoNCj4gKwkvKiB3ZSB1c2UgdGhlIHNhbWUgbWVtIGZvciB0aGUgcmVwbHksIHNv
IGhlYWRlciBpcyBpbiB0aGUgc2FtZSBsb2MgKi8NCj4gKwlyZXBseV9zaXplID0gaGVhZGVyLT5t
ZXNzYWdlX3NpemUgLSBzaXplb2YoKmhlYWRlcik7DQo+ICsJaWYgKHJlcGx5X3NpemUgPiBtc2df
b3V0X2xlbikgew0KPiArCQlkcm1fd2FybigmaTkxNS0+ZHJtLCAiY2FsbGVyIHdpdGggaW5zdWZm
aWNpZW50IEhEQ1AgcmVwbHkgc2l6ZSAldSAoJWQpXG4iLA0KPiArCQkJIHJlcGx5X3NpemUsICh1
MzIpbXNnX291dF9sZW4pOw0KPiArCQlyZXBseV9zaXplID0gbXNnX291dF9sZW47DQo+ICsJfSBl
bHNlIGlmIChyZXBseV9zaXplICE9IG1zZ19vdXRfbGVuKSB7DQo+ICsJCWRybV9kYmdfa21zKCZp
OTE1LT5kcm0sICJjYWxsZXIgdW5leHBlY3RlZCBIQ0RQIHJlcGx5IHNpemUgJXUgKCVkKVxuIiwN
Cj4gKwkJCSAgICByZXBseV9zaXplLCAodTMyKW1zZ19vdXRfbGVuKTsNCj4gKwl9DQo+ICsNCj4g
KwltZW1jcHkobXNnX291dCwgaGRjcF9tZXNzYWdlLT5oZGNwX2NtZCArIHNpemVvZigqaGVhZGVy
KSwgbXNnX291dF9sZW4pOw0KPiArDQo+ICtlcnI6DQo+ICsJaW50ZWxfZnJlZV9oZGNwX2dzY19t
ZXNzYWdlKGhkY3BfbWVzc2FnZSk7DQpBbGFuOiBJIGJlbGlldmUgeW91IGhhZCBub3Qgc2VudCB0
aGUgc2Vzc2lvbi1jbGVhbnVwICh3aXRoIHplcm8gcGF5bG9hZCkgcmVxdWVzdCBiZWZvcmUgYmVm
b3JlIGZyZWVpbmcgdGhlIG9iamVjdHMgYW5kIGRpc2NhcmRpbmcgdGhlIGhvc3Qtc2Vzc2lvbi1p
ZCB0aGF0IHdhcyB1c2VkLiBJJ20gbm90DQpzdXJlIGlmIHRoZSBHU0MgZmlybXdhcmUgbmVlZHMg
dG8gY2xlYXIgcmVzb3VyY2VzIGZvciB0aGUgaGRjcCBzZXJ2aWNlcy4uLiBpZiBzbywgd2Ugc2hv
dWxkIGVpdGhlciBjYWxsIHRoZSBzZXNzaW9uLWNsZWFudXAgaW5zaWRlIGludGVsX2ZyZWVfaGRj
cF9nc2NfbWVzc2FnZS4NCg0KQWxhbjpbc25pcF0NCg==
