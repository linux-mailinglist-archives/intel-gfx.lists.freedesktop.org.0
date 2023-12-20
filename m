Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4523381AA0E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 23:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D2410E61C;
	Wed, 20 Dec 2023 22:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1679210E61C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 22:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703112972; x=1734648972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JxPcOIv7wYsitFXpKjVOOR1SS5zMMh39SA//Uj2JnVk=;
 b=iHrDIMryqlAXK1IJeM2ccd8PFniEZkQv+d6Y7s3H2MtmjTXSzx+2+OQG
 ZnNSdOeBw3qV50stlMRSrmmKQUGyO6B+A9ayNO6FcVQc4XjdGLwxLNcOu
 u8c/3gvZ9zF/dGOvRAdcINVwYh6upPSKrtAzSRuqtFHv1OL9ibdZI5v05
 L8eBlh7jrP/lsxF32U85RKkP4UvPCnBGtFya1/k4YQDSUu7hgu+20OqJD
 gv0zB9ijhBtTIglMoYPxWx0DRqHoOK2IxX6huTfGT1LVcDKnode9Q4qdd
 SNqsDsios460N2uFfwd3rM8buam5tKMgAIMel9nwbaHFZ81VQWg6N8fLt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="460224685"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="460224685"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:56:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="810774659"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="810774659"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 14:56:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 14:56:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 14:56:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 14:56:10 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 14:56:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhvTECuPBGdwJueenk3fznF4gzDyDA6MHDft8qHAdAmKti09j+dgs70PNOzVoUQu0Hx8bF5oBTOlLysdF6zotMhkRKCnYunq71K6HQbvRtetO7SnctX+CIXygAE/gaVnYnKxXFzB9FVA5K27+dnIx14QeM6LtRi9T7xoBuhSKI/kMuscCEMMXBrRl2/c2ozjXQJsK77Bqf7fS7POoaSk3/7xhriJ2Pat3un3Z/ysS4o7vghEx3wVGXoAOHSHzO867DQHdawIS5olcRZ3CUdtGy/euXqVuE4sqK1220tbcmUQJQZcKreyKIriG276zqGRjE2jRzrsazyySpmDc3gHQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JxPcOIv7wYsitFXpKjVOOR1SS5zMMh39SA//Uj2JnVk=;
 b=oCQQ7uqSRiHxs7fhlp19M4xmCG2/57Ndl3gqr2qdFAEAH0npG+PHd7FLgxe1A2RRrGVg9/tv7iqc/3sHvTrhOBXFJAh26fXMl+0roo5i3skQbyMazaheQsciRvjrEUVzAO07452xaaR9SLSqtxftqPqrJQ+xFpg2zI+dVyCHbVshNiAsyNnWSgbs84q3nDuKJZD6po78vxvqjuI6KB3P2h4qQzoMYHNfzJUyYq0XrL5yPzKIPGvfTqVvML+uMg8xi5Ca4YplrYhiH1QI/U/nwQPiouzd6XPLr0p+pZemWOxvgyBu1UpyvR/qVg5ZdrmoU/X+9cEU5PRb1Y2wAGkF5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.39; Wed, 20 Dec 2023 22:56:07 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 22:56:07 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/i915: Piggyback opregion vbt to store vbt read from
 flash/oprom
Thread-Topic: [PATCH] drm/i915: Piggyback opregion vbt to store vbt read from
 flash/oprom
Thread-Index: AQHaMucQuRHSSLCS+UabyXXahg6DU7Cxbo2AgAB8M4CAAN5G8A==
Date: Wed, 20 Dec 2023 22:56:07 +0000
Message-ID: <DM4PR11MB59719B37BABAC7557632165E8796A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231220014952.708652-1-radhakrishna.sripada@intel.com>
 <ZYJN4V1OWyEYDdTG@intel.com> <875y0ttdri.fsf@intel.com>
In-Reply-To: <875y0ttdri.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ0PR11MB5770:EE_
x-ms-office365-filtering-correlation-id: ab299494-c72e-4fd8-067b-08dc01aeda58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ti9cw22ugtjEHuvKWWFVSAo44Xu3rl3V4jTf0WFv9/tva1wirrMOefJQADSwKm/lGL9CPBmHlKcO02UXTdKqyWNPGpH8XQRjBeANoU0zSZTRMTrpEs9g9rUdMoiD/pmWXg/bLvCKB+cU3g2rCrmj+5Lv3a2kmJL4tByr5vweO5SnXIyKXvwqqRZSpLD1iqMe+xNDzVh4tPo0YiYFuXZKjB8ROBqyLN7HOidvZos4BmXHny9scQJ3lbBa0zcbcRtzyFBDzD7kXrsc5FBW8ySiUR9UScW2xLy/PUICBUXSmG0PWXswLB1aC1fFHI057dzS7jgkeCGqna8WK37GILsP6le0p3k4fOUk8jJB2pIiCnSrd4886EoaX7TNmNncqT0K/ybEmrXpOWKI1rIEMGBzS4u2I1BNqggL/g1Q1B5rutDYa/CFqqYemjpNgw26fahoCpOz8yUP2l+LrNEarTkRfrcMEgyCcCBtYZ8BP79A9Ht42ttaVYCmuZfKLfguPv0kqJ12P2bc0Q2fSmRD+g9GBi2+13rDf6yS9lk8I5HAbNBazoiPD2L1roG8mYTamdGgyYFlZQNFcOoia8kIUkgbGam8kxjsB4mih2zeMr9rb8sn5V0flIVO9dY42ZBW7Qab
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(136003)(376002)(396003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(33656002)(55016003)(86362001)(82960400001)(478600001)(7696005)(76116006)(6506007)(66476007)(66446008)(66556008)(64756008)(53546011)(38070700009)(66946007)(71200400001)(26005)(9686003)(122000001)(38100700002)(83380400001)(66574015)(110136005)(41300700001)(2906002)(52536014)(8676002)(8936002)(4326008)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K000QzRhcGZkek8xY0NqK2tCRkpoZER5Vkh6YlJCSWE0LzJFbStZMVdPcVBH?=
 =?utf-8?B?T1F6SHc0NWUyRi8yU3FJc0RNek0vZ2hDNHVFWnZzR09wMTErcG42ZmFGNzVj?=
 =?utf-8?B?VzN5V3YzTmxQWTVPa0ZuVGxILzd4OGhFMC9WcmhoRWdYV2JFNVJMbHI1Rkxt?=
 =?utf-8?B?ZUxRQ3RqK2NYcW5Qb0ZkS0xnNlRCNjNEUE1udDVCYktzdHhXb05LOEt6bzJH?=
 =?utf-8?B?S0ZTNXBKdnMwVUFiT1UzWHFjSUlWb3ZtcjRUOTdVbkEvUDFpMlFtcm94TXBT?=
 =?utf-8?B?TlU5dnRFSnluYktGSG9iSkR5TUw5QTBIMzlROGRUTU9STzZGVERkay9NQ09O?=
 =?utf-8?B?d2h0NGJpUkZvcnZIc1pTUUtPY2lwVHVISTVoR1NMQWd4TVFFUlV4MDN2ZGYx?=
 =?utf-8?B?Wk05b2JKSkJrOHJNSDFyODZKMmZKQlFEM2xSTkhYQnZXWE9GdXd5T2RldTB4?=
 =?utf-8?B?SXcvUVRIeU5BektrdjR4UWFLZVZDbW5CTFltQnQybU1nZGVhbmF3TjRHamlN?=
 =?utf-8?B?MGRnWUl4bDhKUVdBQ1U2cTFna1VaMUxtN3cyQXVmekZHeVBSWk05NlpjdG9k?=
 =?utf-8?B?TnpyZFVJeW90aHh2YVpwV0J0Skk0NHhOUUlSRnpta0pOVkxaNVlqQzJaQTA4?=
 =?utf-8?B?RTZYcUZxaXE0ZTVYUkZXZGNna21YczJ6VmVUem9JQXI5WkpsRVdvbzBuUUh1?=
 =?utf-8?B?bUJlNlEwWFowanJtSW55NEMvV1JYUFhIY09vTWR1TmwwelpaU0IwVjZ0SUY2?=
 =?utf-8?B?M1VtT0ZWWVJvbTJ5TTl2NGFkOCtqckRlb2k0UlRLSU9UR2dIbXNYbTdQcGh2?=
 =?utf-8?B?VmtFZUJVbHhYSDR0N2p2dVRES3k1U1hXbDVEbk1DZmsxcGtDbHZrZFV2eEFI?=
 =?utf-8?B?b2NJYUxZMU9FeXhxY1dNMy9UTEtvWHQxN1NvQkNuY3FhTDZWbW85ZmlqWURM?=
 =?utf-8?B?WEllVHhLWVhlY3pSL2dsUzU1L1czREUrd0JEZTlISjF5NzlnRkhsWWFubVZ4?=
 =?utf-8?B?LzFFQkRhOVgvcDlSZWZVdm1MOEZrcXNxckhROTNnMkNncWdGV1RCYmlvQlVt?=
 =?utf-8?B?bmp4clZyWWxrSnMreXRDMWJVV0tFV0lGZ0RPZDZyQlhlb2NNZ0thS0wrTFdE?=
 =?utf-8?B?RUhLdmRoaDkrOE1ZdkRXZ0JRRUs1VzBMbUFqMWt4YW1TSU1DMStodFM4NzdN?=
 =?utf-8?B?T1I2RVYwc1hlK2twYlJQbGdPU3d6MmZrejl4NFRKU3BJbUtTSmJMWDJMQXZs?=
 =?utf-8?B?MDlDRmxtbGd0cUg4Tk5wcllIUkN5WVYzelpyN3RCSFJNcG1kTzk5bnR2OEtn?=
 =?utf-8?B?dTBmbnJ4WWp0bGNERXlzV3RKQ2s0WU03OGhOb0hYRHE1VWNqcm0ydGhqeCtN?=
 =?utf-8?B?UGVvbEJwM2tRQ1BSZUYwUFg4QmVFVzdRM1NSNWFtaXlhWEl2WlJzb0ovTFFX?=
 =?utf-8?B?ZnRaa3Nsc3BVVFBHRVp1YVBqSlNKTUZ5b1Erak9FZ1VubC95NitYM3hmcXY2?=
 =?utf-8?B?RnVqS2pWT0VaUE1TMVpYZ2FaN1hsMVZkVHRBMk1Gdmljd1VFWWJqei9jNVNW?=
 =?utf-8?B?WHJycTB5cEwrVlFGdXo2cXZDRFE3Y3lHUUMxVDg2Z3lRV0l2d0ZtVk5UZVRC?=
 =?utf-8?B?RHBhdjc2ekt4SjhJNHFRVE9Ocjd5L1NmOWsySnZ4TzQxWFV0bXFsRDVyblZn?=
 =?utf-8?B?S2NzcE0wQ0g0RjBwOSs0VDJadzJrYkZhS04wV3NhaXF3SkNUN2hQNjQrbzUy?=
 =?utf-8?B?Q2dZa1JOS1lJeGs0dG9Ca0xqVHNTSkdhYlpPVEtQSnh3UDQzMXZrbnFVc1pN?=
 =?utf-8?B?SmhvQSs2Q1NRdUpWSDlwaFZWUlNkYTBWUmxWc0ZURGRrSnZCMFVvVkFlLzJR?=
 =?utf-8?B?ek9SNnE5Y3FxL1NyT1BCNitxQWg3a1R5cnJxZDRubDZYTkRmclJ2aC9YWEc3?=
 =?utf-8?B?MDJBR2tBTGdsSEIyb0hPNnZaL2I2cVNaaXoyOTllOFRtOUtqRm42MVdKTHY5?=
 =?utf-8?B?OXd5Wm1NUi9QTnU1M3d4YldLWGY5aUUzMFFqT3BFNHVja2VSM1p6aWpkU3hz?=
 =?utf-8?B?Z1hDVVNpNTgzOFVMUW5yVThSM04vWTdabml5MWlqZWM3ZEJVSFhWczN5MmlC?=
 =?utf-8?B?dkxHbjJFcFdOOUJ5MGR3dk84SDhjbXl2OHY4U3FxeWxhenJCSjNMSndlN2VY?=
 =?utf-8?B?R3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab299494-c72e-4fd8-067b-08dc01aeda58
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 22:56:07.8839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wvAcRxQg6fLnRidbJYsbASenh8sxl9LtKRI1SXlBVqBDwYtw+E6gBImQ2lt9VhG8/0kndudrqWB2A9ki565DsxyFyP86W+j154Lccw4e70c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIERl
Y2VtYmVyIDIwLCAyMDIzIDE6MzggQU0NCj4gVG86IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+OyBTcmlwYWRhLCBSYWRoYWtyaXNobmENCj4gPHJhZGhha3Jp
c2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTU6IFBpZ2d5YmFjayBvcHJlZ2lv
biB2YnQgdG8gc3RvcmUgdmJ0IHJlYWQgZnJvbQ0KPiBmbGFzaC9vcHJvbQ0KPiANCj4gT24gV2Vk
LCAyMCBEZWMgMjAyMywgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6DQo+ID4gT24gVHVlLCBEZWMgMTksIDIwMjMgYXQgMDU6NDk6NTJQTSAtMDgw
MCwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6DQo+ID4+IERpc2NyZXRlIGNhcmRzIGRvIG5v
dCBoYXZlIEFDUEkgb3ByZWdpb24uIFRoZSB2YnQgaXMgc3RvcmVkIGluIGEgc3BlY2lhbA0KPiA+
PiBmbGFzaCBhY2Nlc3NpYmxlIGJ5IHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIuIEluIG9yZGVyIHRv
IGFjY2VzcyB0aGUgdmJ0DQo+ID4+IGluIHN1Y2ggY2FzZXMsIHJlLXVzZSB0aGUgdmJ0LCB2YnRf
c2l6ZSBmaWVsZHMgaW4gdGhlIG9wcmVnaW9uIHN0cnVjdHVyZS4NCj4gPg0KPiA+IFdoeT8NCj4g
DQo+IFRoZSBpOTE1X3ZidCBkZWJ1Z2ZzIGZpbGUgcHJvYmFibHkgZG9lcyBub3Qgd29yayBmb3Ig
VkJUIGZyb20gU1BJDQo+IGZsYXNoLiBXZSBzaG91bGQgZml4IHRoYXQuDQo+IA0KPiBCdXQgdGhp
cyBwYXRjaCBpcyBub3QgdGhlIHdheSB0byBnby4gSWYgdGhlIFZCVCBkb2VzIG5vdCBjb21lIGZy
b20NCj4gb3ByZWdpb24sIGl0IHNob3VsZG4ndCBiZSBzdG9yZWQgaW4gdGhlIG9wcmVnaW9uIHN0
cnVjdHVyZXMuIE1heWJlIHRoaXMNCj4gbmVlZHMgYW5vdGhlciBhYnN0cmFjdGlvbiBsYXllci4g
KmdyaW4qLg0KPiANCj4gU3BlY2lmaWNhbGx5LCBvbmUgb2YgdGhlIHByb2JsZW1zIGhlcmUgaXMg
dGhhdCB0aGUgYWxsb2NhdGlvbiBhbmQgZnJlZQ0KPiBvZiB0aGUgVkJUIG9yaWdpbmF0aW5nIGZy
b20gU1BJIGZsYXNoIGhhcHBlbnMgYXQgY29tcGxldGVseSBkaWZmZXJlbnQNCj4gbW9kdWxlcyBh
bmQgYWJzdHJhY3Rpb24gbGF5ZXJzLiBUaGF0J3MgdXN1YWxseSBhIHJlY2lwZSBmb3IgZGlzYXN0
ZXINCj4gbGF0ZXIuDQoNCkkgZnVsbHkgYWdyZWUgd2l0aCB5b3UuIEkgaGF2ZSB0aHVzIG1hZGUg
dGhlIHN0YXRlbWVudCBpbiB0aGUgb3JpZ2luYWwgY29tbWl0DQp0aGF0IHdlIHdvdWxkIG5lZWQg
dG8gbW92ZSBhd2F5IGZyb20gc3RvcmluZyB2YnQgaW4gb3ByZWdpb24uIEkgd2lsbCB0cnkgdG8N
CmNvbWUgdXAgd2l0aCBhIG5ldyBwYXRjaHNldCB0aGUgc3RvcmVzIHZidCBpbiB0aGUgdmJ0IHN0
cnVjdHVyZSBpdHNlbGYgYW5kIG5vdCBpbg0KdGhlIG9wcmVnaW9uLg0KDQpUaGFua3MsDQpSYWRo
YWtyaXNoYW4oUkspIFNyaXBhZGENCj4gDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+
DQo+ID4+DQo+ID4+IFdlIHNob3VsZCBtb3ZlIGF3YXkgZnJvbSBzdG9yaW5nIHRoZSB2YnQgaW4g
dGhlIG9wcmVnaW9uIGFuZCBzdG9yZSBpdCwNCj4gPj4gaWYgcmVxdWlyZWQgaW4gdGhlIHZidCBz
dHJ1Y3R1cmUuDQo+ID4+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRh
IDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgNDQgKysrKysrKysrKy0t
LS0tLS0tLQ0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lv
bi5jIHwgIDcgKystDQo+ID4+ICAyIGZpbGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDIy
IGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYw0KPiA+PiBpbmRleCA3MzY0OTlhNmUyYzcuLmNiZmJjNTZmZjViMiAxMDA2
NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMN
Cj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4g
Pj4gQEAgLTI5MzAsMTIgKzI5MzAsMTEgQEAgc3RhdGljIHUzMiBpbnRlbF9zcGlfcmVhZChzdHJ1
Y3QgaW50ZWxfdW5jb3JlDQo+ICp1bmNvcmUsIHUzMiBvZmZzZXQpDQo+ID4+ICAJcmV0dXJuIGlu
dGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUFJJTUFSWV9TUElfVFJJR0dFUik7DQo+ID4+ICB9DQo+
ID4+DQo+ID4+IC1zdGF0aWMgc3RydWN0IHZidF9oZWFkZXIgKnNwaV9vcHJvbV9nZXRfdmJ0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+PiArc3RhdGljIHN0cnVjdCB2YnRfaGVh
ZGVyICpzcGlfb3Byb21fZ2V0X3ZidChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4g
dTE2ICp2YnRfc2l6ZSkNCj4gPj4gIHsNCj4gPj4gIAl1MzIgY291bnQsIGRhdGEsIGZvdW5kLCBz
dG9yZSA9IDA7DQo+ID4+ICAJdTMyIHN0YXRpY19yZWdpb24sIG9wcm9tX29mZnNldDsNCj4gPj4g
IAl1MzIgb3Byb21fc2l6ZSA9IDB4MjAwMDAwOw0KPiA+PiAtCXUxNiB2YnRfc2l6ZTsNCj4gPj4g
IAl1MzIgKnZidDsNCj4gPj4NCj4gPj4gIAlzdGF0aWNfcmVnaW9uID0gaW50ZWxfdW5jb3JlX3Jl
YWQoJmk5MTUtPnVuY29yZSwgU1BJX1NUQVRJQ19SRUdJT05TKTsNCj4gPj4gQEAgLTI5NTcsMTgg
KzI5NTYsMTggQEAgc3RhdGljIHN0cnVjdCB2YnRfaGVhZGVyDQo+ICpzcGlfb3Byb21fZ2V0X3Zi
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPj4gIAkJZ290byBlcnJfbm90X2Zv
dW5kOw0KPiA+Pg0KPiA+PiAgCS8qIEdldCBWQlQgc2l6ZSBhbmQgYWxsb2NhdGUgc3BhY2UgZm9y
IHRoZSBWQlQgKi8NCj4gPj4gLQl2YnRfc2l6ZSA9IGludGVsX3NwaV9yZWFkKCZpOTE1LT51bmNv
cmUsDQo+ID4+ICsJKnZidF9zaXplID0gaW50ZWxfc3BpX3JlYWQoJmk5MTUtPnVuY29yZSwNCj4g
Pj4gIAkJCQkgIGZvdW5kICsgb2Zmc2V0b2Yoc3RydWN0IHZidF9oZWFkZXIsIHZidF9zaXplKSk7
DQo+ID4+IC0JdmJ0X3NpemUgJj0gMHhmZmZmOw0KPiA+PiArCSp2YnRfc2l6ZSAmPSAweGZmZmY7
DQo+ID4+DQo+ID4+IC0JdmJ0ID0ga3phbGxvYyhyb3VuZF91cCh2YnRfc2l6ZSwgNCksIEdGUF9L
RVJORUwpOw0KPiA+PiArCXZidCA9IGt6YWxsb2Mocm91bmRfdXAoKnZidF9zaXplLCA0KSwgR0ZQ
X0tFUk5FTCk7DQo+ID4+ICAJaWYgKCF2YnQpDQo+ID4+ICAJCWdvdG8gZXJyX25vdF9mb3VuZDsN
Cj4gPj4NCj4gPj4gLQlmb3IgKGNvdW50ID0gMDsgY291bnQgPCB2YnRfc2l6ZTsgY291bnQgKz0g
NCkNCj4gPj4gKwlmb3IgKGNvdW50ID0gMDsgY291bnQgPCAqdmJ0X3NpemU7IGNvdW50ICs9IDQp
DQo+ID4+ICAJCSoodmJ0ICsgc3RvcmUrKykgPSBpbnRlbF9zcGlfcmVhZCgmaTkxNS0+dW5jb3Jl
LCBmb3VuZCArIGNvdW50KTsNCj4gPj4NCj4gPj4gLQlpZiAoIWludGVsX2Jpb3NfaXNfdmFsaWRf
dmJ0KHZidCwgdmJ0X3NpemUpKQ0KPiA+PiArCWlmICghaW50ZWxfYmlvc19pc192YWxpZF92YnQo
dmJ0LCAqdmJ0X3NpemUpKQ0KPiA+PiAgCQlnb3RvIGVycl9mcmVlX3ZidDsNCj4gPj4NCj4gPj4g
IAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiRm91bmQgdmFsaWQgVkJUIGluIFNQSSBmbGFzaFxu
Iik7DQo+ID4+IEBAIC0yOTc3LDE2ICsyOTc2LDE2IEBAIHN0YXRpYyBzdHJ1Y3QgdmJ0X2hlYWRl
cg0KPiAqc3BpX29wcm9tX2dldF92YnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+
ID4+DQo+ID4+ICBlcnJfZnJlZV92YnQ6DQo+ID4+ICAJa2ZyZWUodmJ0KTsNCj4gPj4gKwkqdmJ0
X3NpemUgPSAwOw0KPiA+PiAgZXJyX25vdF9mb3VuZDoNCj4gPj4gIAlyZXR1cm4gTlVMTDsNCj4g
Pj4gIH0NCj4gPj4NCj4gPj4gLXN0YXRpYyBzdHJ1Y3QgdmJ0X2hlYWRlciAqb3Byb21fZ2V0X3Zi
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPj4gK3N0YXRpYyBzdHJ1Y3QgdmJ0
X2hlYWRlciAqb3Byb21fZ2V0X3ZidChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTE2
DQo+ICp2YnRfc2l6ZSkNCj4gPj4gIHsNCj4gPj4gIAlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRv
X3BjaV9kZXYoaTkxNS0+ZHJtLmRldik7DQo+ID4+ICAJdm9pZCBfX2lvbWVtICpwID0gTlVMTCwg
Km9wcm9tOw0KPiA+PiAgCXN0cnVjdCB2YnRfaGVhZGVyICp2YnQ7DQo+ID4+IC0JdTE2IHZidF9z
aXplOw0KPiA+PiAgCXNpemVfdCBpLCBzaXplOw0KPiA+Pg0KPiA+PiAgCW9wcm9tID0gcGNpX21h
cF9yb20ocGRldiwgJnNpemUpOw0KPiA+PiBAQCAtMzAxMSwyMSArMzAxMCwyMSBAQCBzdGF0aWMg
c3RydWN0IHZidF9oZWFkZXIgKm9wcm9tX2dldF92YnQoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpDQo+ID4+ICAJCWdvdG8gZXJyX3VubWFwX29wcm9tOw0KPiA+PiAgCX0NCj4gPj4N
Cj4gPj4gLQl2YnRfc2l6ZSA9IGlvcmVhZDE2KHAgKyBvZmZzZXRvZihzdHJ1Y3QgdmJ0X2hlYWRl
ciwgdmJ0X3NpemUpKTsNCj4gPj4gLQlpZiAodmJ0X3NpemUgPiBzaXplKSB7DQo+ID4+ICsJKnZi
dF9zaXplID0gaW9yZWFkMTYocCArIG9mZnNldG9mKHN0cnVjdCB2YnRfaGVhZGVyLCB2YnRfc2l6
ZSkpOw0KPiA+PiArCWlmICgqdmJ0X3NpemUgPiBzaXplKSB7DQo+ID4+ICAJCWRybV9kYmcoJmk5
MTUtPmRybSwNCj4gPj4gLQkJCSJWQlQgaW5jb21wbGV0ZSAodmJ0X3NpemUgb3ZlcmZsb3dzKVxu
Iik7DQo+ID4+ICsJCQkiVkJUIGluY29tcGxldGUgKCp2YnRfc2l6ZSBvdmVyZmxvd3MpXG4iKTsN
Cj4gPj4gIAkJZ290byBlcnJfdW5tYXBfb3Byb207DQo+ID4+ICAJfQ0KPiA+Pg0KPiA+PiAgCS8q
IFRoZSByZXN0IHdpbGwgYmUgdmFsaWRhdGVkIGJ5IGludGVsX2Jpb3NfaXNfdmFsaWRfdmJ0KCkg
Ki8NCj4gPj4gLQl2YnQgPSBrbWFsbG9jKHZidF9zaXplLCBHRlBfS0VSTkVMKTsNCj4gPj4gKwl2
YnQgPSBrbWFsbG9jKCp2YnRfc2l6ZSwgR0ZQX0tFUk5FTCk7DQo+ID4+ICAJaWYgKCF2YnQpDQo+
ID4+ICAJCWdvdG8gZXJyX3VubWFwX29wcm9tOw0KPiA+Pg0KPiA+PiAtCW1lbWNweV9mcm9taW8o
dmJ0LCBwLCB2YnRfc2l6ZSk7DQo+ID4+ICsJbWVtY3B5X2Zyb21pbyh2YnQsIHAsICp2YnRfc2l6
ZSk7DQo+ID4+DQo+ID4+IC0JaWYgKCFpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCh2YnQsIHZidF9z
aXplKSkNCj4gPj4gKwlpZiAoIWludGVsX2Jpb3NfaXNfdmFsaWRfdmJ0KHZidCwgKnZidF9zaXpl
KSkNCj4gPj4gIAkJZ290byBlcnJfZnJlZV92YnQ7DQo+ID4+DQo+ID4+ICAJcGNpX3VubWFwX3Jv
bShwZGV2LCBvcHJvbSk7DQo+ID4+IEBAIC0zMDM2LDYgKzMwMzUsNyBAQCBzdGF0aWMgc3RydWN0
IHZidF9oZWFkZXIgKm9wcm9tX2dldF92YnQoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpDQo+ID4+DQo+ID4+ICBlcnJfZnJlZV92YnQ6DQo+ID4+ICAJa2ZyZWUodmJ0KTsNCj4gPj4g
KwkqdmJ0X3NpemUgPSAwOw0KPiA+PiAgZXJyX3VubWFwX29wcm9tOg0KPiA+PiAgCXBjaV91bm1h
cF9yb20ocGRldiwgb3Byb20pOw0KPiA+Pg0KPiA+PiBAQCAtMzA1Miw4ICszMDUyLDEwIEBAIHN0
YXRpYyBzdHJ1Y3QgdmJ0X2hlYWRlciAqb3Byb21fZ2V0X3ZidChzdHJ1Y3QNCj4gZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkNCj4gPj4gICAqLw0KPiA+PiAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4+ICB7DQo+ID4+ICsJc3RydWN0IGludGVs
X29wcmVnaW9uICpvcHJlZ2lvbiA9ICZpOTE1LT5kaXNwbGF5Lm9wcmVnaW9uOw0KPiA+PiAgCWNv
bnN0IHN0cnVjdCB2YnRfaGVhZGVyICp2YnQgPSBpOTE1LT5kaXNwbGF5Lm9wcmVnaW9uLnZidDsN
Cj4gPj4gIAlzdHJ1Y3QgdmJ0X2hlYWRlciAqb3Byb21fdmJ0ID0gTlVMTDsNCj4gPj4gKwl1MTYg
dmJ0X3NpemU7DQo+ID4+ICAJY29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYjsNCj4gPj4NCj4g
Pj4gIAlJTklUX0xJU1RfSEVBRCgmaTkxNS0+ZGlzcGxheS52YnQuZGlzcGxheV9kZXZpY2VzKTsN
Cj4gPj4gQEAgLTMwNzIsMTMgKzMwNzQsMTUgQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUpDQo+ID4+ICAJICogUENJIG1hcHBpbmcNCj4gPj4g
IAkgKi8NCj4gPj4gIAlpZiAoIXZidCAmJiBJU19ER0ZYKGk5MTUpKSB7DQo+ID4+IC0JCW9wcm9t
X3ZidCA9IHNwaV9vcHJvbV9nZXRfdmJ0KGk5MTUpOw0KPiA+PiAtCQl2YnQgPSBvcHJvbV92YnQ7
DQo+ID4+ICsJCW9wcm9tX3ZidCA9IHNwaV9vcHJvbV9nZXRfdmJ0KGk5MTUsICZ2YnRfc2l6ZSk7
DQo+ID4+ICsJCW9wcmVnaW9uLT52YnQgPSB2YnQgPSBvcHJvbV92YnQ7DQo+ID4+ICsJCW9wcmVn
aW9uLT52YnRfc2l6ZSA9ICh1MzIpdmJ0X3NpemU7DQo+ID4+ICAJfQ0KPiA+Pg0KPiA+PiAgCWlm
ICghdmJ0KSB7DQo+ID4+IC0JCW9wcm9tX3ZidCA9IG9wcm9tX2dldF92YnQoaTkxNSk7DQo+ID4+
IC0JCXZidCA9IG9wcm9tX3ZidDsNCj4gPj4gKwkJb3Byb21fdmJ0ID0gb3Byb21fZ2V0X3ZidChp
OTE1LCAmdmJ0X3NpemUpOw0KPiA+PiArCQlvcHJlZ2lvbi0+dmJ0ID0gdmJ0ID0gb3Byb21fdmJ0
Ow0KPiA+PiArCQlvcHJlZ2lvbi0+dmJ0X3NpemUgPSAodTMyKXZidF9zaXplOw0KPiA+PiAgCX0N
Cj4gPj4NCj4gPj4gIAlpZiAoIXZidCkNCj4gPj4gQEAgLTMxMTEsOCArMzExNSw2IEBAIHZvaWQg
aW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+PiAgCS8q
IEZ1cnRoZXIgcHJvY2Vzc2luZyBvbiBwcmUtcGFyc2VkIG9yIGdlbmVyYXRlZCBjaGlsZCBkZXZp
Y2UgZGF0YSAqLw0KPiA+PiAgCXBhcnNlX3Nkdm9fZGV2aWNlX21hcHBpbmcoaTkxNSk7DQo+ID4+
ICAJcGFyc2VfZGRpX3BvcnRzKGk5MTUpOw0KPiA+PiAtDQo+ID4+IC0Ja2ZyZWUob3Byb21fdmJ0
KTsNCj4gPj4gIH0NCj4gPj4NCj4gPj4gIHN0YXRpYyB2b2lkIGludGVsX2Jpb3NfaW5pdF9wYW5l
bChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYw0KPiA+PiBpbmRleCAxY2U3ODVkYjZh
NWUuLjIwYjIxNjBlOWQwZSAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYw0KPiA+PiBAQCAtMTI0NCw4ICsxMjQ0LDEzIEBAIHZv
aWQgaW50ZWxfb3ByZWdpb25fY2xlYW51cChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPj4gIHsNCj4gPj4gIAlzdHJ1Y3QgaW50ZWxfb3ByZWdpb24gKm9wcmVnaW9uID0gJmk5
MTUtPmRpc3BsYXkub3ByZWdpb247DQo+ID4+DQo+ID4+IC0JaWYgKCFvcHJlZ2lvbi0+aGVhZGVy
KQ0KPiA+PiArCWlmICghb3ByZWdpb24tPmhlYWRlcikgew0KPiA+PiArCQlpZiAob3ByZWdpb24t
PnZidCkgew0KPiA+PiArCQkJa2ZyZWUob3ByZWdpb24tPnZidCk7DQo+ID4+ICsJCQlvcHJlZ2lv
bi0+dmJ0X3NpemUgPSAwOw0KPiA+PiArCQl9DQo+ID4+ICAJCXJldHVybjsNCj4gPj4gKwl9DQo+
ID4+DQo+ID4+ICAJLyoganVzdCBjbGVhciBhbGwgb3ByZWdpb24gbWVtb3J5IHBvaW50ZXJzIG5v
dyAqLw0KPiA+PiAgCW1lbXVubWFwKG9wcmVnaW9uLT5oZWFkZXIpOw0KPiA+PiAtLQ0KPiA+PiAy
LjM0LjENCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
