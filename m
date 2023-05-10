Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 688C76FE816
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 01:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20E6210E56F;
	Wed, 10 May 2023 23:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7325210E56F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 23:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683761072; x=1715297072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=z7zjW57LTuYTLO3KeEzbRc+zxqgwkCLvWXSvmLl6RE8=;
 b=drKtJqmjX/oLrpZr9MSr9wlDdwpsM8gqADa2fMe8OzZepeCZNCyC3QR3
 7YCbKihXl7zGOck8BWXTxvuCt+Atmxb9xBpE/PhRawRaP4OTOyMyrLnsT
 8xz4KjCk2OZrRrQZGlOpFsNAoHUoW4VcT89yqVj6Trm1PMk6/TsfCkQ2B
 2mjyXa4mjL5Yk3nnggeRiJIKyul4pD8YC9cG7FMcKkrOO/4uwCVn41Qle
 LmfJ8lCSkMA58uObVGe+7VqGJKySjGuJp0OJwEwfHu//vMlQyqM0Hd5kH
 8Hkxj1x73nhZYoxezPCZ/Qd7+3IIncWpw2tqaK/3Zql0Z6SsRP94ON4U2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="378459670"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="378459670"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 16:24:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="823721401"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="823721401"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 10 May 2023 16:24:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 16:24:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 16:24:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 10 May 2023 16:24:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FSDeEHKY/6oVtXHA5CznyZhQPr9K6BKwdHf+W+py+RQJKlHmapYO14tBQZ4yMh4UDYJ/4ZEGS8DdEKi2IqxSSleUZU/r8vb8i4fv4GKJ19XKITtwo5pKiSYu/lCrvqbNlSSAvdOM/nRlo2ODV5BbiD3jN74j3+3clZEU+ypJtM5g2oRNz7/9QikQeJstrXlz3bmIqM8q011qvZURIgb0XhCKlOCYvGKJFSflvWp4jCCGq5PhSy2LfbNmH/C3ole7Rv60BJwFfGZdsINxHtt220L8heFZLEszPpVL9zQnH8tICjdwP/4YYv4VK/SZDQ34sFxAB2jqQ6HQjyo+BjVjVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z7zjW57LTuYTLO3KeEzbRc+zxqgwkCLvWXSvmLl6RE8=;
 b=By5eIxra+laOlUbFzCuBvrcikcBiSPcB5eUnwaYgIIW0OEfXjtRMmoilPGR+VkSgafyy+QzpLa04wzgTmwodIE2/ReSQ0CfVQPNK1AWRUDVaBS0Spgpr8STZmeg0o4vAiC4NrAlWjmaH7cZ3UNtMNl9KVNYPpcDN0FH4057+5QjKUwX/w6LOexEupSjjHQNteSIswvXw1lIxsxZYF3VP5qYue0S/IPP2oytFl+gCw+ZS2hhTHGM2jt5WA8WOGDAtpCJvfw3jJA+hzsHEW25/JV3uj0dojldvHh2Trf5KzQuwBKcPrx6K5ByYxRm5VORt3NbJPyrIeFg63M66vUyQ/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.20; Wed, 10 May
 2023 23:24:28 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%6]) with mapi id 15.20.6387.020; Wed, 10 May 2023
 23:24:28 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Justen, Jordan L" <jordan.l.justen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Souza,
 Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
Thread-Index: AQHZeWLWx68i9/8KnU+Unxd6GaMLfq9LMoYAgAAkQACABWFXAIADQ4+AgAAhMwCAAANTAIAAApGAgAAG+oCAABCcAA==
Date: Wed, 10 May 2023 23:24:28 +0000
Message-ID: <93df2179a5b599ce37a4165049a8db12eb0eae76.camel@intel.com>
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
 <20230427234843.2886921-7-alan.previn.teres.alexis@intel.com>
 <8888e3dff8c1c4fd1702ded911850da30330fbfa.camel@intel.com>
 <168327239043.1096084.14316886882692698230@jljusten-skl>
 <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
 <0a23ff5be69e3d6b6e3b457c2599bc2f018fc71a.camel@intel.com>
 <168375473641.1096084.7149697040639389794@jljusten-skl>
 <168375545081.1096084.10046830335154502443@jljusten-skl>
 <642c1a52bbcc4369c69ec2dbbfd7723c60c1dcb2.camel@intel.com>
 <168375749965.1096084.11999881030820310846@jljusten-skl>
In-Reply-To: <168375749965.1096084.11999881030820310846@jljusten-skl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA1PR11MB8279:EE_
x-ms-office365-filtering-correlation-id: d05497f6-a533-4b51-2662-08db51adb33a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: avRSB7uJdItk8gD5thKOX8Mj9Atq43CSBBrN6wPdW8b7DbQzfCNdDLR0hbMK+PBXjckmWhRE3HF3C+lMFV1wi/ZcUTgYRAeFQdhWClapouGfPCdWcfyGf+ugTeLtTlMDrD3LsCfgAqxq3bFAlNN21sXuaku2SCn/hjPGlL6c3F3gZ6Z0Ub6/gF7aFNxiJKKDcSI++7Ys1VD0k3djWviIxRAzvBe685LGpYjFxdtdlofRhNp90AcEKhgH0Bxz31ZM+CKgTi7cjKxZetNbHqESsy9dPctpZ2xvXjV4CPBWS9GLPxYraI4GMdvfmQ2KdAMr71ZeihGeFEM2XzySCNSgrWxmCYs9EkBEbz/5a2T0UUl9EVQUcDZTRLo0pZs/fJojv2QKxL+PnSWrKCNvtQKLekCn0Bn8OdCoCfGukrl6iKll+joex203He/mdKI/y6QDLVv7r2c/HuOf2EFPEufo0NsmAyguokFSAuyh1sVVtDmsG+yLlmhnJfnvSHFDYSFSFJrHrHq8XCyk5ipIwf84ZnQ5tYzon2Srl8oDnOG5sHJImefcSgXa9AmNaag7L4Ogxw8ms28kZQfDZvqI31Mxt6wgrrsZe+zWIuxMNblze92L9x8XHpI3xMVVbAhp/PZJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(346002)(376002)(396003)(451199021)(186003)(6512007)(6506007)(478600001)(26005)(2616005)(71200400001)(6486002)(8676002)(8936002)(5660300002)(122000001)(91956017)(316002)(82960400001)(38100700002)(38070700005)(41300700001)(86362001)(4326008)(66556008)(54906003)(66446008)(36756003)(110136005)(76116006)(64756008)(66946007)(4744005)(2906002)(6636002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXh1ODMreEd2N2VsSDh2ME0zbnhLU2piS1k2UWhPWG1xUVlzTjhnL3Ztc293?=
 =?utf-8?B?NCtWUXZMclBnRk9aMVZvUVVWazZPTFhkYzNOU3V5OTJXelBOZmJRdHpDQTlN?=
 =?utf-8?B?OFgySUoyaUp5UHZlUFlJc0Z4T2dOQy9xZTBsOUhIZUpjMHJqQnMzMG9WUVhD?=
 =?utf-8?B?RTl6NlIya1B5anR4d0drSVF6TVhqbkpLZUVsWXNhOHRxZUt5VkppQTA0eVBY?=
 =?utf-8?B?OG5vZ1doc1E4Y0ttRHZTRWZ0V3JYN0tKR2lHdGo4VldOZEpIQ28zOVVsN3dE?=
 =?utf-8?B?SHEydVBDZ0NTeUZlTDdwd0JTejAvR2NEMHdCWTJNdUhBeXpQNVF0VUdYaWlB?=
 =?utf-8?B?c20reC9mQ3BJZDhzdEZYa2h6VkNHTVhLOTkweWFpN2RkRjZXeGpxYUo1cU1D?=
 =?utf-8?B?RlVFMmJuaTUrYzdrUGZ2b2RiUTBGWUxpQTlFL1BRMm5TZTNhREgxWVVGSkVw?=
 =?utf-8?B?UmM1Y292K2hFdDhOOVdZY2VyQWlYMURNY2t1WDFqNDI4UFZjOWpOeGNqRXBV?=
 =?utf-8?B?UzZkckFYNjVBaWR4MEdEUVR6czJYbWNRbUd2Zms1QUk5U2VhME10c0ZrTzFz?=
 =?utf-8?B?NmFLZnJsTm52VXlJVGpXcEN6NGtmc0ZneWtKenNmTXBrREpxM2lZbE90WTNQ?=
 =?utf-8?B?TWNrOU9zN1FZaXgzaFpzQ2tkbzl2THRNRG1BOFIzTzNaYis1amY2M1c0ZFJ6?=
 =?utf-8?B?aXZ6NU1DY2RYYy9scWQ4Y1VFVmYzR1orQVhwbXZWLzlIbWc1YjB3UG5NRkgy?=
 =?utf-8?B?dXVubmZkbThiQUp1SVp5U0FYYThUOW1zOGw1azdFMkZkMHJ1NTNFRk5hdyto?=
 =?utf-8?B?RTBsaEhSNldoNlZXRzRrTHRtWVFUYTJvamp4UTR0S0JkNFBmM1ltYi9QWTJJ?=
 =?utf-8?B?S1FVSUZ4Qk9TTGhyRzNKZStkVEI5SFV0dGxuR2tKVUlEcEFmT3Joelo0d2oz?=
 =?utf-8?B?MUQ2V29ZdEVBK2Z0OVJmWW96SUh6MDlzaXBoNlFNblJkREpjZG93UkpaUGM2?=
 =?utf-8?B?U3RmUUdIbFl2UW0ycFRBMEttTEpTYjdXdXg3TU1VaGJaUytqNmVmeW1OcnhB?=
 =?utf-8?B?T2lCOTlqN0U2dzNsbjNTei9BZ093Z29nVFZIdlAwUmM1TjhnNGRuZDBwVTZI?=
 =?utf-8?B?bmtCZi9JS3JEL3V4LzBsUWFqdk1kai92cWFoN3U0WEptRHc0Q05lVWNpLzRM?=
 =?utf-8?B?WHhPekF1UmMrMlIyelpEeStBTWNPL09HTndOVGRYNm8yNFkyS3BoakxzWVFF?=
 =?utf-8?B?MHdPanM5V0dHZ05FRHVuT2RMckpOWTBNNmpPcGd3bk9xR3ZadThMdEtwRXNB?=
 =?utf-8?B?WUZNRjhuNVhBaGZGMThuelRnQ05JQlRNR2JyNUIyamxFSkNhMHV1R2Q4aU44?=
 =?utf-8?B?UXIwQnhsVXMvOGhQVk03TkZwZ0RpNXEySmNvYnBGdFE1L3ZsMnlxVEU5eCs1?=
 =?utf-8?B?QURzSVY5UmYxbytRZFlIcmpLbi9TWFZUQm94V0pTNElQUTh6endFdTdPVGYy?=
 =?utf-8?B?ak0rQ3U3dGg2aUdBUk12K0F3aFY4cTdlYy9iZlRaT0xGYTl0dDZNV09nWENx?=
 =?utf-8?B?VXFLcU9nMCtJNEpuTmhkMGpCb3dCL1NRdVB5RTdqL044WWpHTktOcVBxUFJ5?=
 =?utf-8?B?NU01M3ViNTVrcUs4anJBZEQvS2lyYy85NG1zOVR3MU1nOUo1RkxvUlU4dUl1?=
 =?utf-8?B?M0R0RDdWOFBpcTFHd0tWRG5vUmF3UzVXVEpHd1hVS1BzMEE0Yzh6NG5sUFY5?=
 =?utf-8?B?QlE4V3RmaGVPNDdFTDJ5WlhPbmxmOU82N241ajRNQW9EeUNZbU1ZMVN0NlU0?=
 =?utf-8?B?OVJCQ0wzekhLVmZsUUZKZ2xnWHJFOS9TbGx3MERxMGptTWxkL29RVjNhR1hn?=
 =?utf-8?B?Uy9pbE5VR1lHb2hGL08zYUVmV1lGT3Q3d0dNVjNQNEdmc0RnZmlvTjZhVXUv?=
 =?utf-8?B?TWpFNkpPUnh2cWFxZFBBcjhVL01ZeDRyOURwL0tDNHY5Y1VXcytSZitneXc2?=
 =?utf-8?B?WjA4Zlh1RGR2bGUzVTJwNGI0eFdFS3BGUTB3Y3ZsNVA0Zm9rc0ZDT0d4dVFH?=
 =?utf-8?B?R3owekNkRllZd2tXWnYyMWlyYnZiUmJBQi9IdzRoTGdiYlgwS2RyWU1oS2hS?=
 =?utf-8?B?eG5GWFFQQkVrNHdWNVNsK08xR0c3L0d4MWdNMC9hTXFxODYxdVhLTmVrNDAv?=
 =?utf-8?Q?7GJam8w5lgezyuU24TWxnp4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2527EB2944275049BEFCCAD4E3F04B00@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d05497f6-a533-4b51-2662-08db51adb33a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2023 23:24:28.0718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MsKddpH0bvW15HhbfPUA3dM8WFk9t22vDpldJGJKt9NqD3iG7ITyWaktLQB/sd6+hybLAsKpSTVDZwhrOZKXTOE1rAy1oYwVgGuwnqafpmgKeEqpdYi7g7mGwbzsk/A4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
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

PiANCmFsYW46c25pcA0KDQo+IA0KPiBBc3N1bWluZyB0aGF0Og0KPiANCj4gICAyID0gUFhQIGZl
YXR1cmUgaXMgc3VwcG9ydGVkIGJ1dCBzaG91bGQgYmUgcmVhZHkgc29vbiAocGVuZGluZw0KPiAg
ICAgICBpbml0aWFsaXphdGlvbiBvZiBub24taTkxNSBzeXN0ZW0gZGVwZW5kZW5jaWVzKS4NCj4g
DQo+IHJlYWxseSBtZWFucywgIml0J2xsIGJlIHJlYWR5IHNvb24gb3IgdGhlcmUgaXMgYSBidWcg
c29tZXdoZXJlIiwNCj4gDQo+IEFja2VkLWJ5OiBKb3JkYW4gSnVzdGVuIDxqb3JkYW4ubC5qdXN0
ZW5AaW50ZWwuY29tPg0KPiANCj4gSWYgTWVzYSBmaW5kcyB0aGF0IGl0IGNhbid0IHJlYWxseSBy
ZWx5IG9uIHRoYXQsIHdlIG1heSBoYXZlIHRvIGRlY2lkZQ0KPiBvbiBhIGRpZmZlcmVudCBhcHBy
b2FjaCBpbiBob3cgdG8gdXNlIHRoYXQgcmV0dXJuIHZhbHVlLg0KPiANCj4gSXMgaXQgcG9zc2li
bGUgdG8gaG9sZCBvbiBmb3IgYW5vdGhlciB+MTIgaG91cnMgdG8gc2VlIGlmIExpb25lbCB3YW50
cw0KPiB0byBBY2sgYXMgd2VsbD8NCj4gDQo+IC1Kb3JkYW4NCg0KYWxhbjogYWdyZWVkIGFuZCB0
aGFua3MuIEFuZCBzdXJlLCBsZXRzIGdpdmUgb3Vyc2VsdmVzIHRpbGwgdG9tb3Jyb3cgYWZ0ZXJu
b29uIFBTVC4NCg0K
