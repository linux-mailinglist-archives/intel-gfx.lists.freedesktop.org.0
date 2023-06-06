Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3639724193
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 14:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20FAE10E339;
	Tue,  6 Jun 2023 12:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA52F10E330
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 12:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686052821; x=1717588821;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3ugDytgTpw6b+H8kc64SRfdPJwyZbC/7vRaL+Fa9FTQ=;
 b=V5CCT1gKAveqktahJ1D1i0IKBSv9Zasa5A8nukqdvgfx1+vsD9wEX0Bp
 ulJZe5XmWKLTI0ggd9TxCv4YR03vN6IvZfp9qjP2j5IyHCyGmnXWZy1AU
 jyTl7WP59ZYeRgPOw7dQJPaPDcrDX76n0DolOJm3rfXEsWlDP2J0OQac2
 hOb+IZbQgeMWpmbuinZXxSi5XjFTuW35dtU6Da/TeR4K56khR8K8CfvXY
 Eyl7snYc97AmHm3/PVz4wkafoTh+o+8w9lRaqKsb7D5pjZW/25VuTIXdP
 zpCiNDPslzoSdRDfjzFqV/SeFLgopHAkN8vLuAaCS0ypvpER71JOT6f7z g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="354143444"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="354143444"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 05:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="709047875"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709047875"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 06 Jun 2023 05:00:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 05:00:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 05:00:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 05:00:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LllGAgLZGzhQZnvDbEI7Bh/wnHD3jvN5c26oAcWgPungb17nOT4SkDW0SbVMMREigVMynNZMdNeskI0QFAT0sDBqysGFjbrHtstezN0Bg9QHZ1/B8Fp8N08/rnLV2VGxgwHYgMt5X1gBWswQk0uhXR8x1+2dAaiZxyTJasNYusefrF8UL8g1ZnQN9zHa3H+efb0wvi9qdttc9ATk0Xqt4OQ7f7d/Ic2t23sgKEdi7eKCxA/pOwbECX7nG4VTYpewpa3Xd8t9NVli2DeDKY1if1gXNUREgW4rTxGYhmcPhFXWgw2r1LlrK5bTkkvwWhO8RprB5Ji9GxOgSg24WONzMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ugDytgTpw6b+H8kc64SRfdPJwyZbC/7vRaL+Fa9FTQ=;
 b=hjOe1AuvvA9LY7Oy5wZdW8DkJvfoKtUC51tuLnIeUMFAqFvA3IfDNR44+YVhH2bu7rkhPwJ0Kf11brkXT60DDwUpmHi2u1PCx39YqiHDu+QPjZ6u/gB97xBiDivG7NsstLdDdp0aZV27vsHLWJeHhUzPduFbROTFL/5z5zg7tRBvKp7zBqzESfnWwudfeSMoyt3T1tpKZfNWRT9HnIv5xDCNVovAhVsDK7zSCSNAQ+9Ca0N3J3Wb/3Z2YsBEz/x/p4WQ1aadNjFLroG851agxUahENpY4TaP3bMxajZk0LoyP3/Yhmb1J82qzso2TDgR0J8Za+C68xPhfp1/6Qk6hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by MW4PR11MB7079.namprd11.prod.outlook.com (2603:10b6:303:22b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.17; Tue, 6 Jun
 2023 12:00:13 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::fadb:2488:f86:2632]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::fadb:2488:f86:2632%3]) with mapi id 15.20.6433.022; Tue, 6 Jun 2023
 12:00:12 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: update DP 2.0 vswing table for C20 phy
Thread-Index: AQHZmGPQXn4jyyvrlUKw3FuUYrln0699q6Og
Date: Tue, 6 Jun 2023 12:00:12 +0000
Message-ID: <SN7PR11MB70416D7CFFA5C18CDE63FFA5EF52A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20230606104238.31953-1-shawn.c.lee@intel.com>
In-Reply-To: <20230606104238.31953-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|MW4PR11MB7079:EE_
x-ms-office365-filtering-correlation-id: ae219589-b0ff-47db-dd9d-08db66859581
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ot8S0RrcYU8/DLnj2MTq+DQODViMkZmgzyEKts5uLesokehh6Pg71DSW1kv78lPCu6+GcqeL0A3fp+OaZzDRHCYOnEjBwbY68IwZ5RC+x1VjJE9iyswHOuVXhV89s+IFuF+RyUOc7nn6aELBIyZ6W5giZe3y13MbmSxmiiPBa3vEK7owAxzZncolSocSyScfNzCz4tIpIbD4E96b5jcK+1TrD14JfxCZr8MTQaDVNln5cndwsy/wHw+xroOIEvaGi9w4rUGyxR43s0xHPJqfW3Ag3OYYYWHW6+SLwxoY5cShL9ZLBcnxao5NRnDJuMhMC+HR3IgTLw1rl/8St2QDn21bEYWXELTLDRDLKfOQChn+GTDKt14E22Y3NVpfUZ08j9PORvVqQdWPfeC6xFGMnfkPPHXox8fg7raYMXlySEuBcKXlb3J5eP/hlq1wjzDRJoZFa8Sj2kF0+OBEi34psnbzGoDAV7VKO4mggD8ta/U4j3mg/VrvX1sCMqa0UR+mJVxoDBqaBNRAUsJoixRcDBBJBU8MFCjskO44WZoDpyjVuHaikCQYJ/JFDahItlEPZIg3iD34EFrgFmptfOeECfDF4rNqnUJBrJtdjnM/E1iOkNyfV1qoL12mD2zwT9TU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199021)(71200400001)(26005)(110136005)(66446008)(66556008)(76116006)(66946007)(66476007)(38100700002)(82960400001)(4326008)(122000001)(64756008)(83380400001)(478600001)(7696005)(9686003)(2906002)(53546011)(6506007)(41300700001)(38070700005)(316002)(15650500001)(55016003)(8676002)(54906003)(8936002)(33656002)(186003)(5660300002)(86362001)(52536014)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVVvL3pJNHg5bXFsS2JIbmdLM0oxWldENWZWN252bFBiNVQ1QjRCaGp2VTIv?=
 =?utf-8?B?VmtuZTJFOElhTWhtMTc1b3VpbTU4bklEU3RFZTFFMHZEeG9zakROV3Y1djhW?=
 =?utf-8?B?aVBlU1VIRmZTYWxGdEttR3ZTSVU5U2xDcnpsS3dnUENReEg5VldzZC82WDZZ?=
 =?utf-8?B?ZnJ3cnVFUVBkZ05CRDdQeWw4a24xd2xZWXJsdGlkc05LNjFXTTBjNG8rVVBU?=
 =?utf-8?B?c1hGbnZpVDk4WG9FVHFnU1J4RXNYUG5hTG94UDd2YWJ5V3BDT01wRWRNOTFW?=
 =?utf-8?B?WFcwWkx3TmloMDh6c2RJVEh5aHVub0JvZ3I5bFlxN0JUUUxJUFNWZEhnSm5M?=
 =?utf-8?B?b3FwTW5qaTBBRlBKZ0NBUElmRXRXVkozRXNvY2U4MGlTdWU3WWVobTNta0x4?=
 =?utf-8?B?VzdvK3dYSWszczEyOENTRVN1WTA0eEU5eEJpRisrQ2RrN2tUTkV5SmNjODJF?=
 =?utf-8?B?UlpyRWw4Vmk3bnJITGhFWnNKbDlNdnhKNHhCNzRwN2tid1BJWjBPaHgxVmtD?=
 =?utf-8?B?WVk2dlZYTlZRbU44TEFzOUk4WWluSk02ZEptYzNuZHlhdjY0dDJLQ1FhbHdB?=
 =?utf-8?B?aHFiUG1UTzVaU0lnRUQ1N2ZmMHNWQ3NCU2FoTlozWkVFWXJxc2VOYklKZkZP?=
 =?utf-8?B?M3VrenpPYmVoL01qdFdISWNabFJJWHBCMlhnVVNnVUp4dzk2V2s1czJvWjFm?=
 =?utf-8?B?TVhRM3V1U2kyVkp2SVJsN2NXUEI0WVdxZkgxNW1PT0llall1bGN1ajNqZXAx?=
 =?utf-8?B?Q3NRNEtLb29EVGFySkNFekRCYUlFMjdrRzFwbnN4azRiVU53c0N1UllxaGp0?=
 =?utf-8?B?ejNGZ3FtOHdkNm93V0dwZnprSEV5Y2NkNldUNFdMNnZWR1dvVFAyeldwRmVM?=
 =?utf-8?B?NDdSVU9EU3NuVnZQSjY1MUY4NkhKa2ZBU0JFWldzb0hvckQ3VlhUYnQ3ZnJU?=
 =?utf-8?B?dlJGNzV0ZnJUWnd3dlduM1BmZzhRalNmSUg0Y2Z6a1ZaL1lNZGNNR2NFNU1u?=
 =?utf-8?B?amU3OHc0VlFacEdZeWNhUDBscnRFZjRSaEdRRkZ1djZ6WGJROVFUeWwvSzEx?=
 =?utf-8?B?cTRGZEhVZEhmajJUOXRDM1d5Y3Q3cTVXM1o2R0RPcTNWZkpzcmZUbFJyYStQ?=
 =?utf-8?B?UUMxTUJZMjlrUXdYZGRuODZTcWpRQm9ud3Evb1BjbTFXdTNSYlBUUU1tSngw?=
 =?utf-8?B?RXhqSFVScjZZUGlqYlg5RVZMR21ZUHdmL25tMzNkZ0ttRDNOTmtNdmVidko0?=
 =?utf-8?B?K21ad1RKTGM0QnNCY3pIdmwzbE1STE1ZSmFYSi96Uld5c3ROWUYxR3g0QWpR?=
 =?utf-8?B?MXFsTENVTU1yQllaV0NsVDNrUHJ6c1U3UFozRnZaaDFPbWcxcVlHZ0Frc0hO?=
 =?utf-8?B?SE9pWUVGT2NNT3U3Zm1ZaDVmRkxGUCtRdTlaM2RKVWNaR1NaTFRVMWpSUDZz?=
 =?utf-8?B?RHVvUmcrS1JEZERBRWQwZDZ2eUk3STROaDN1Z0xFNlNwdWFSOTlrb1pHNDhH?=
 =?utf-8?B?c3BZMDNOVXNrOElDRmplZGhxT21QVXRnRFg0bWszdFR1L0puZE9Ycnp2WXpU?=
 =?utf-8?B?VmJIc2NkYllYeWllZTZSM1lkdmlBZmc2N1pSZStDVkV2ck5lWmVKVTh3Ynkv?=
 =?utf-8?B?WXJsUlVzcVpEQm0vdEZZTjhHN3JqVFNxcnhyRllkWE1NYUduaWxtWGlDUzll?=
 =?utf-8?B?QmtzTms3eW9YSmF5d2IwVzJpeERZcnF1TTBTVklnNTJnQXE1MU4rakw4M0s4?=
 =?utf-8?B?ZWVSWEZUaHdxTXVvYTcyZ3dLY0dJSG5ZRVJtNytFUnAvZ0NMY1ZTS1VqUU9E?=
 =?utf-8?B?L1p4OGk1NmRPV2xGbXhDTkppeWE1V3RRYkhqT2pmNUI2czlxTzZQT3NxZnhp?=
 =?utf-8?B?RmxVUXkyU1UzNmYyK1Z5dFBPSXdrV3lQeC9ScUVaK1ZTT1dsVjJweUhXb290?=
 =?utf-8?B?THIwbjhoekl1S2p6QkxndUlnR2dLbmdMVldHaWwrUHpPN0hCMzl5RE90Qngy?=
 =?utf-8?B?SnZPSzk1ckZWS1FiOFMwRkV1UEpUNnE0VllCTStqdk9JbFRUZ0ptSGdQUkU5?=
 =?utf-8?B?TmQ5QzNxYWUyKzd5Z0JGNFlmemF4ZlYxcHpmUyttcVI0VWQrYjFSR0s1R3p2?=
 =?utf-8?Q?CZX6OMcwINpGkGAtd80J/oSv4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae219589-b0ff-47db-dd9d-08db66859581
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 12:00:12.7625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oAl73BasskYMN1pl79dg4Xj3WGmCfUo0i1glrFSDhBqjl18BNjoJXflWVOoQyhRGwdt1okx+/wpem2U4Tw6Tbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7079
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: update DP 2.0 vswing table
 for C20 phy
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMZWUsIFNoYXduIEMgPHNoYXdu
LmMubGVlQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVuZSA2LCAyMDIzIDE6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IExlZSwgU2hhd24g
QyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+OyBUYXlsb3IsIENsaW50b24gQQ0KPiA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+
OyBTcmlwYWRhLCBSYWRoYWtyaXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47
IFNoYW5rYXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFU
Q0hdIGRybS9pOTE1L210bDogdXBkYXRlIERQIDIuMCB2c3dpbmcgdGFibGUgZm9yIEMyMCBwaHkN
Cj4gDQo+IFVwZGF0ZSBwcmVzZXQgMTUgc2V0dGluZyB0byBhbGlnbiB0aGUgbGF0ZXN0IGJzcGVj
IHZhbHVlLg0KPiANCj4gQnNwZWM6IDc0MTA0DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IExlZSBTaGF3biBDIDxz
aGF3bi5jLmxlZUBpbnRlbC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KPiBDYzogQ2xpbnQgVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4N
Cj4gQ2M6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5j
b20+DQo+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jIHwgMiAr
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVm
X3RyYW5zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJh
bnMuYw0KPiBpbmRleCA2YTE1MDc1MTUxMTkuLjJhZjkxYTA2ZjVmZSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4g
QEAgLTEwODYsNyArMTA4Niw3IEBAIHN0YXRpYyBjb25zdCB1bmlvbiBpbnRlbF9kZGlfYnVmX3Ry
YW5zX2VudHJ5IF9tdGxfYzIwX3RyYW5zX3VoYnJbXSA9IHsNCj4gIAl7IC5zbnBzID0geyAzNywg
NCwgNyB9IH0sICAgICAgIC8qIHByZXNldCAxMiAqLw0KPiAgCXsgLnNucHMgPSB7IDMzLCA0LCAx
MSB9IH0sICAgICAgLyogcHJlc2V0IDEzICovDQo+ICAJeyAuc25wcyA9IHsgNDAsIDgsIDAgfSB9
LAkvKiBwcmVzZXQgMTQgKi8NCj4gLQl7IC5zbnBzID0geyAyOCwgMiwgMiB9IH0sCS8qIHByZXNl
dCAxNSAqLw0KPiArCXsgLnNucHMgPSB7IDMwLCAyLCAyIH0gfSwJLyogcHJlc2V0IDE1ICovDQo+
ICB9Ow0KPiANCj4gIC8qIEhETUkyLjAgKi8NCj4gLS0NCj4gMi4zMS4xDQoNCg==
