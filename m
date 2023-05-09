Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEB66FC7D2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 15:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7109110E12D;
	Tue,  9 May 2023 13:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2260A10E1E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 13:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683638859; x=1715174859;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vG556Lec8Jaol3hNvyqN/3sNpZ1y9ngOJ8aZW3lC+wA=;
 b=SYN8hXFrmsqrvmcZZED9vcnEMiDeemrV6Aw/o468+9dQWH24frWeySX5
 nvXWKD1AxkNrxAJa4+gVN7IoAiO+R22bTwKOZ0t3NrRNeoHBIzKadU4L6
 WfjNgU6+XM/jzKCEE2JMrkVz5G7HxoLPO6KDFY1IhWuNCfcz/C3UCD00e
 Z+dOZu5QBVrdpHsJyH/qFuwIotY5hXJvV3/mqy0ktYgBDPuTNTVHFJ1gc
 23LJDeWu1ktXiqu6eVkODWA/UGm6ImUPS+in1NcLkT88wKXvbv7ecY3WE
 qbCkorB8gp8shrwLmNMgWdZ2Dwja+LvlLtH/eApagiWESP8UwXlwh+MCI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="436240927"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="436240927"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 06:27:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="810682338"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="810682338"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 09 May 2023 06:27:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 06:27:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 06:27:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 06:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hxMivjuyIX5dMKLP4Szrep45eIt8f7QTsl+7/FmZmBtEfINhHdVxCilenmnBLWi4v1zui/NbiVeU7rqBGFBYqn03cd6vlctdJRqaK6jYlSSmV3jbAoG9vcpUQNKRaef2Mir1ACSbbvgnQB6hV+JdhBHEvEvsY30CrbL3ch5WoSC+/zvDgt/lUY3D3j8Ojt2i9CJp6ifJSRuehdVGJTqDw3cMiSN8mnA0S7y1dGDoZ86uNocGvnkGiZ6S6QkOzkCz3kCdtp/j2mhVNTZbQpjPuIRjJkGN+HaZam/gPsSiiUp8Y7eUYr+fzzqfIrOkXPWEcmO3fDOyweza2ZDmA4YtPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vG556Lec8Jaol3hNvyqN/3sNpZ1y9ngOJ8aZW3lC+wA=;
 b=MOmbcSXbfaqCCML6ql1rT+KnTBrx7tYNnAu/fDlCwKeHewr3yKDtTUMNEC8GYPQ9eI3q/Ur4Ityu3S9pAuTL6Ib3Sulomf2+JVza1LVJt9yge8h0spqVQfLuHbsJBCMNHtBC1j2JEy/0srRhlKbAzsiOEX4H0upcQDDGlBWWPDglzo73lzfoc/QvEerYuQdfZEtbw5VZR/nMet9cjyTPp2jpA/ygIRxEJrFSgBPP+jq/iMQNR2241uFJ+xxdRWsNm/ZaeIuWEBIpNKKYIpXnONRj8OgpTS5xqphQoNOa/XO08rPJJU8NV7suC/ox9Vz+GRqQriYGJaYyJWbpMXb/qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA2PR11MB5033.namprd11.prod.outlook.com (2603:10b6:806:115::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Tue, 9 May
 2023 13:27:35 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%5]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 13:27:35 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Justen, Jordan L" <jordan.l.justen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM for PXP
Thread-Index: AQHZeWLWx68i9/8KnU+Unxd6GaMLfq9LMoYAgAAkQACABWFXAIABSSOA
Date: Tue, 9 May 2023 13:27:34 +0000
Message-ID: <9226d87084ed5702f4c700e93bcf41e1e24f16bb.camel@intel.com>
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
 <20230427234843.2886921-7-alan.previn.teres.alexis@intel.com>
 <8888e3dff8c1c4fd1702ded911850da30330fbfa.camel@intel.com>
 <168327239043.1096084.14316886882692698230@jljusten-skl>
 <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
In-Reply-To: <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA2PR11MB5033:EE_
x-ms-office365-filtering-correlation-id: d5514c6e-a9a8-42a4-6357-08db5091268d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WfVwUdNvLFfS4iEQSST43Vt8iGPFicsQXsFraCHuOdSt8+aDj+1vjpKMjxi9+3GMho44NUt6/jWG4sdE4C0I79AiBSpsg1+Zix8mGNyKxlLn0xF3Idvn32AD0R9B/NQKBHV5H+xYFQPHkX6/f8kTfmn5bvoMGLpSDNLWTKbL2RBef8iLsDUOk4WWZ/agMfE+iVbiiaySm7Yy4xLHREk7bDIZ600IZQWNVGumKWOtus2Fjkl8fcPCDm9exZb0RCRvVfMb2UxBmSkdsomFivoTe7X6gcLLJulRsgSZeXcCPLKBO8/hxolc/fb7z0ctw32GPaZZRe6RE8+dAqW/a5wqVvLBuZHuJObSUv0ZhcWL4KK6xvaCHrd4PAkbneKQutkBJrCs7UZ7CKVjfplry9OpJ4l/yBryp6CoA5z3aCZN4J3Kgm1typqunr6dyJYjHl8xtLKLyO9I+W94vxcjLSvsuJU7Ox12lKUkRrV7oEDhM1AQ/Dpr+DJLIAJq+H5Li3v+PZxC426jmIDXWWOMGAnvVNuuM08wT+y13vuXTI2L4GiRLkGwk27V6OZSggP54fLvC/kGSF28cGUOSuxPx1FT5J3pLqpa2ODvQCO9C96iKbwDeTiLWFbh3NCL4TPQyXka
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(396003)(346002)(39860400002)(451199021)(66446008)(64756008)(4326008)(316002)(478600001)(76116006)(66946007)(6486002)(66556008)(91956017)(54906003)(110136005)(86362001)(66476007)(36756003)(83380400001)(26005)(2616005)(6506007)(6512007)(2906002)(71200400001)(5660300002)(41300700001)(8936002)(4744005)(8676002)(82960400001)(122000001)(38100700002)(186003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NHVuaytKRXEvYndvQlQxNE9TQUp3anlJTXFpSmRmbXhZSFl6RjBGMGVITW8y?=
 =?utf-8?B?WTJqTjh3U0MvRWExR3ZydkJablpONUJUQklTd28vc3RRRjVwVFF1UmZXUFdF?=
 =?utf-8?B?QVVvRUN1VWJHQllsUHBVeGFDeG9QaFhKWkRpYkVFRloxOGszVGVVdFRRTzBN?=
 =?utf-8?B?NGp3dm9mbCtGYmZndjNEVmxNS1JPdStLNGxRaExkanBKSjc2R3Vjb0Rma1hZ?=
 =?utf-8?B?ajdNekZCRXNDUFV4NWhHTFZoSkttTHpDYUkzWHlDbXF5ZnhCcWRnV096UmJM?=
 =?utf-8?B?TWdFcCtENjI3ZTRLdlEzTDcvRHdtRk1Wd2ZmeEtxL2pMdFBxYVRLZnVrMnV1?=
 =?utf-8?B?cDNuaGFncUJYeXFaWXhTSXN3WVdKRVlXZUZnMEVGUS9UZE9Gb3dxendObGc3?=
 =?utf-8?B?RGJhdlc3WFFhUk9lZUFNcERSTU9CNHE3RW1VNzZxSk1XTUlZVFVXQ3F6UUNr?=
 =?utf-8?B?a0d1bEdIUng2UWdveEdzRlZIR3JQZWg0KzVRekdPQlByTzZpb1lWMk1VVkJQ?=
 =?utf-8?B?VmJqb25ZUExnai9NUkY2OU83cFBUUG9jcUh2ZVJ6QldIUkFGVVFYS2dJNHcr?=
 =?utf-8?B?ZUxEZysrUUlkMm5RN1dtRzhFMVFZWkUrM2FMN0hBTlFhTDlISHQ4YytwLzlr?=
 =?utf-8?B?RGthVVh0QVdBVlBMdzZ2ajZhanhFbVlpR2RZYjk5cmJZa1c4QzJuM0l6VVpC?=
 =?utf-8?B?UFJXVDUwaklwNFhSNFVVT2JhOCtBVTl1RWxkMXdRYmxQYlZSUFVYZzFmbFlE?=
 =?utf-8?B?RWd0dllLNjdtUUYycGdBQjgyL2VKRTJJL0VaWEFZVWpIaVdLVms4Y3lEMXFh?=
 =?utf-8?B?OEl5aXdsM0ExVmVNc0tidnFhWlYvNld3RDJSbkFkdTJRT2FHRlZrU2srMkc0?=
 =?utf-8?B?aGhnVEh0R2VNMUVyRm1lcXhnWUEzSDZCREpNb2c1eWxLQXcvNFVybzlTME05?=
 =?utf-8?B?WWNZZFBVbUVwUnNkakV6RWlHRWNMakVsS2k2VWl3d29lbXUrMVg3alA1dEtw?=
 =?utf-8?B?amh6MlllV0lFOXZ4b2p0eURyTURlTUMrcjZnVUFMWGJYL3Y2M0svR0cyOUh6?=
 =?utf-8?B?bHpTV2hjbzNIanMwL2t1YUg3SWFSTXFTR1BpYVIxdXJiWTVhdFo2NEhvZzUr?=
 =?utf-8?B?NEVTQUFpRk4wMjZ2NGhtNkhhM2ZhaWk3d01BL0xPdWVhYzFJMmtIZTkzaUZB?=
 =?utf-8?B?L0ZLdFFHTENnaFdsU2JWSkc4NjBzWklWM09VNkNBdXNGNzltVlN1MkQwYThF?=
 =?utf-8?B?UlJPcldxS3dEaHdhUUtJZUxKbVdqQVhZOWR1dWVDSkw5R0hzVlQwb1VZZEZx?=
 =?utf-8?B?WS9URDhSUHdtdGh2ZnBsbFJBNS9udFlUeDhhcHR2bXFOYlUwRXVoUGl3eFg4?=
 =?utf-8?B?YzcvMGF1VVFYaDZaQ2FwSWtlaHEwalZWZVNjQ3RTMGgxM3gvUnpZTlhSZE0v?=
 =?utf-8?B?bFFZYy81SUFHKzFkaFVOS1lFMGxkaE9uUzQ2OGREejg4djBZL3RyM3BVY3Nv?=
 =?utf-8?B?OFp0Zm1BYUZNYmxDR2E4WFZoektJcHI5Sko4RW5LaUVmeHRwQlpxR09nVjNl?=
 =?utf-8?B?b2Z2dVVqTDRGSER1c1hIZWhxbGNtbTdFQ1RlcXZRNFdKODF4dmMvNkpFSjUv?=
 =?utf-8?B?OXh2Rm11TFJxaG5RMWZKWm5uQlNya3h1RXROZXhKNHR1MTdyWElvN2Q4VEl3?=
 =?utf-8?B?MEpaRmFIYVE5SExTVzdlcHFUSVNyNEtSckp4MC9VQkVqcGE3eGdaZGY1ek9E?=
 =?utf-8?B?dnYvc3dnYk1sNHU0SnIwNGJFemVVZk80V0tDUG90UmFRMXRnUllqVG95YXVR?=
 =?utf-8?B?T0R2aERFQ2RqU2F3VERmUU1mZ1k2RldhMGpHM1VhSHozdTBkelRCY3ZxQ09M?=
 =?utf-8?B?bUsxajBHazVOL3RxR3lTaXZVUmhyZDlPTWgvbWMzRkhPN2UwbDVUK3M1NDZT?=
 =?utf-8?B?ejhKQzNsYzBFNlBPQVgxVnRXNnlCUTl0dzVIWlRkeEF2MW9KbTZBak9qNFMw?=
 =?utf-8?B?T2E5ZVRnQXVnY21hSWFCSVVyVnBmQXpLcVJZU1ZmaWh6ZmdLbDNFTGxlZU83?=
 =?utf-8?B?OXpEenZ5M29KdU9DRVJNMUUrZ0ZETkhtRGZMR09xK0MzR01mTVdHeVBQdml0?=
 =?utf-8?B?KzJGa1JuYXFtRlBNbno2WU9idVE0bTVUbVhhRUkvRWJYcm1lS0x1V2JER1h0?=
 =?utf-8?Q?qhZk8WaPJ17yhKb1IdKaFVQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <94C1DF37057CCC4E851822047E10228F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5514c6e-a9a8-42a4-6357-08db5091268d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2023 13:27:35.0237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9NjTYdDHNlYXEySwoSWaHGrbgDBqynToIF6e47iKoAobRZeElOmMoRTeze417jnGXOzWV7my8JWMFrFHqtLDtb9HvTntLQARElWqDgHJatub6Na0AKsSScaOzCm09EZ6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
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
Cc: "ustonli@chromium.org" <ustonli@chromium.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "ri-devel@lists.freedesktop.org" <ri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCmFsYW46c25pcA0KDQo+ID4gW0pvcmRhbjpdwqANCj4gPiBBbm90aGVyIG9wdGlvbiBiZXNp
ZGVzIGZyb20gdGhlIHRpbWVvdXQgbG9vcCBpbg0KPiA+IGlyaXNfY3JlYXRlX2h3X2NvbnRleHQo
KSBtaWdodCBiZSB0byBjaGVjayBJOTE1X1BBUkFNX1BYUF9TVEFUVVMgYWZ0ZXINCj4gPiB0aGUg
Y29udGV4dCBjcmVhdGUgZmFpbHMgdG8gdHdlYWsgdGhlIGRlYnVnIG1lc3NhZ2UuDQo+IGFsYW46
IFllYWgsIHRoYXQgaXMgYW4gb3B0aW9uIC0gSSdtIHRoaW5raW5nIHdlIGNhbiBhZGQgYSBEQkcg
dGhhdCByZWFkcw0KPiBlaXRoZXIgIlBYUCBjb250ZXh0IGZhaWx1cmUgZXhwZWN0ZWQgZHVlIG5v
dCByZWFkeSIgdnMNCj4gIlVuZXhwZWN0ZWQgUFhQIGNvbnRleHQgZmFpbHVyZSIgDQoNCkhpIEpv
cmRhbiwgc2hvdWxkIGkgcHJvY2VlZCB0aGlzIHdheT8gKEkgY2FuIHJlcG9zdCB0aGUgVU1EIHBh
dGNoIGFjY29yZGluZ2x5KQ0K
