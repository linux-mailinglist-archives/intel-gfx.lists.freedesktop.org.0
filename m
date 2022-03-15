Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DED4D9C3D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC38610E31E;
	Tue, 15 Mar 2022 13:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D2810E31E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350996; x=1678886996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rw6Q487tTQHq09bJZF59l8ZZOlcdeapZFHV1CtpOAMo=;
 b=OwgQyf4zYhjW5e4Ke1dLDOuiEtoDwB5er1FbsSzuLHnkq4OD3OlNxXDi
 kZK85qDHYEMGFYaqmOPrQ9WsxCWCEciigwsxXEUddYXSSulApXbU9LeZP
 +b0hoURbq8swQvpKnhSwg7B5LqcogsOB7UjIyPO8PLi0BfCwz1FJeCoYb
 bIVZUn/18l3mOjGm0NePs9NBBHqHijLRY9aG7TBGxI7KxY9k2D32QhR9w
 0y2QLiI4/l4HIEp/SdNcdGSZCahGhEwsiulfWaJp+VgRFy7JqzNWJt3Fg
 plDAZsPZZCk4cZ8+RBWnzje4QecKTI1ffAbNf6V5+xXgT57CkQnuhhQsJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="238465714"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="238465714"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:29:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="556927662"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 15 Mar 2022 06:29:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 06:29:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 06:29:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 06:29:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QWL3NPHBwrmtCa7oiJt2SoCUNTDQYLIJNlCKgK3m/Or1ezFoZCaBC1o+MBiiDVfyOeijUJioqiH6gYsOSnhzjxhAkTW7Q+5lV9bYwPUtC4gL0crUDDBrDfV9UCTIQvCOznX3JGSFq/MybrsuV8c9hhxUGruOl0q7A+AqjiorFNM3ffhjSzZH6oF2p95AZnq+T/VfYt2G83Uj2vfJwuF9UEehbVYu9LQ78AWrDcL//klSphDLwR6lhORgOehEMyEcYBHfKLemq5ckMSt5H+P67GPup0p5mhzLObzcUKmRyLQMwvuET9Qb9baY1qbGlkcXRfBzamLwmPI7aCaGqcuaIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rw6Q487tTQHq09bJZF59l8ZZOlcdeapZFHV1CtpOAMo=;
 b=L1C5VNUJV9TRyDyPGQHO4LFuy1v5IuImNA5QRyQei7SVe5ZwZ8pKlZo5qVAcyCV0mUItiC9IScw60Ne99ajhtho5LxZDj01Yk5YHUPQXE7GmtRaNa3BrM8tY1OCz/8h1U1oOMkQlIto6I0RvfmDSNL4zfm8eXDraHyzhGgMSDcFAlfl/mZHj1P1No2K4VfEefTR2LD6fIPKatfaJA52pMc/hrMWSvzb9FgKW5bibIIOcuURMScoSMlZRX5QxMbmIiBSHzCrbCVDQ3nR8bz8VbirPgSZYajNI9RYDVQtnH7F1uhWdxW1fS0PrgdM/nLpFpqffs/aXqF5PKoFtt/c/fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN0PR11MB5757.namprd11.prod.outlook.com (2603:10b6:408:165::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.25; Tue, 15 Mar
 2022 13:29:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36%6]) with mapi id 15.20.5061.028; Tue, 15 Mar 2022
 13:29:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2 2/2] drm/i915/display: Do not re-enable PSR after it
 was marked as not reliable
Thread-Index: AQHYNXj4fa1r/GQV0ESjFGINZMjzAqzAdoqA
Date: Tue, 15 Mar 2022 13:29:51 +0000
Message-ID: <3fbbaaecb4683a234e3a4d611b2906c74ef4dd09.camel@intel.com>
References: <20220311185149.110527-1-jose.souza@intel.com>
 <20220311185149.110527-2-jose.souza@intel.com>
In-Reply-To: <20220311185149.110527-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d718b698-08e1-40db-d14b-08da0687e2a7
x-ms-traffictypediagnostic: BN0PR11MB5757:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN0PR11MB5757AB85082E2CD5FD7082D38A109@BN0PR11MB5757.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FwiqX7zzeGunwgkBi1cecJxoA4di4Mv3ktwALVlA0fMXJWA7iYJBx99qodxtzqLIQLPzoCzBsAb/UEsyRQgNfSwyby2+PIwguNLXG0My35G6N96gdHw1rd+as/Lm3oyuoAnaqxGM4YGll7GMh42axX5QiiASCC1BOaWFjEHUSPi8QEQNjd3usTElt5MaeOgM28cvRwdpkNo7UDBHZoRbfFHlxWqux7ALVkzEQ4X/qb1AmOEd/79Qdh+ZGqEmXDa/ugxWknMoxh8nlV1IMc9b1DsGilzSYDBRS5E2dENgUoxF9KwBdOWXwt5ARCMTGAdSsesnMwPbyS6Tvovl7P4cwH2m40BBR7mFzGKfFHLkn/Q6P7FB4bUiBNp9/sf3teB7MAJoR2V79OHmQXBMu7dGl4OzBJAXXXMhmi5IuJHd401ZSTaemsfRO5t3sHjPjhyZIJRGWChn58Gw1O0SOJES0IWgRG4OW3+IV23Y8l+lwvvxGhlqOtIR41Gp/9+q962wottgWR9USh6+ddw8Cb4a8HAGiokuUdd+4oPhqO2L3HKNgd2mJBOcm7o1n249zhgb8Whq/3Ceop4+ldHuOYto5D4z0JziAYCy+OGunpNjSs1Zg8VETKDYxaF5Zy0xm55nD3BEVlP6xJSbriY4eVC+Yj92kHA5mgr/o2V0pYbnMaxBNCNxfwX1d8p1y9Mu/ldJrr4p1wrv36sj8EDTAY+Mkg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(54906003)(6506007)(6512007)(110136005)(508600001)(76116006)(91956017)(6636002)(66556008)(66446008)(66476007)(6486002)(64756008)(66946007)(36756003)(83380400001)(8676002)(4326008)(107886003)(186003)(71200400001)(86362001)(66574015)(122000001)(2906002)(2616005)(82960400001)(8936002)(38100700002)(26005)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVd3TWhpMFJSVzJOTTU1aHFiOUM4RzdEZTVMNEk0WHFpeUpqSDU5aXRLeFV3?=
 =?utf-8?B?TnhsaFl6N2Nqa2lWR3dVbXdPRnZVeVNNT0d2N1QwVHU2RDRJQkg0aFVuUElN?=
 =?utf-8?B?MUxlT0QwNVp3MktqOFRFMlozeUQxWVp5Vlh5VXh2RlBMeW8xd3g5YjExeG03?=
 =?utf-8?B?NnRXWXJuV3lTbFNOYUc1RjFtdG12dW9ZOHF2ZmkzZ1AxUS9jQ3lmMHdyYm1s?=
 =?utf-8?B?N01aWjFjTHFKZHF5ZTAwdTZKMmJtTTJ1SEJxUVlUVHlaVEM1MXlwQlN4Ri8y?=
 =?utf-8?B?WkFVaEVSR2YvZGthK01wTjhTdThaUnlpb0xvYTl5QVIrdTBYWWQ5SFNlc293?=
 =?utf-8?B?NEFWcURLUmtzQ2JJZEFSYlFRRmw5OEw4WXpjcld4b0lMcEVBNUIzU3NHNDZi?=
 =?utf-8?B?TmEwUFhxTUdiaEtHYWtKSWRVcisrVCtvdnBtVTZsdFMzcVpTamNFNVdLcHBK?=
 =?utf-8?B?K1VKcEh2S2ZxM093WFhxNTVVeitWdVJ3czRSWktqYkFPd3VDbUswZ2JpWTUy?=
 =?utf-8?B?MlVtUjVMRVVQaUppTlNMRk1sU0VMQ3A5UXcyNkE1TWtKMWNoZ1FxdWNzdHZW?=
 =?utf-8?B?SllieWZjT0d0azZGT2U3MXBQNnhGekRKQjg1cko5OTZyMDgvNUZoeEJrMDJQ?=
 =?utf-8?B?LzlqK2dFUWc1OVcwbG9nSVRlMEZVRk83WlNLUzhUZ1hFSS9pZ1daeTlNVmpX?=
 =?utf-8?B?N1FraGVmWnkvdW5GQkFCdnBFaElGMCtmNXBBNlVnZzdMUVVMVTRRakRIN3Iv?=
 =?utf-8?B?VWhIU1hNZVZyNklMV29tVW5kRHpvTzNsdFN4WEh4YUFBcS8zSkpZZU5XdTdB?=
 =?utf-8?B?N2ZNQVkweFRudFM5R09yZDlpZkh5bUdLaVFLajBHZHlZVWlTYkptUERZOStq?=
 =?utf-8?B?bnhyMDRqQ0U0T1ZyWFp0ckpsc1kwd1BqdTMvUlh6bDV3Sjl4VzZZd3pEcnpV?=
 =?utf-8?B?VFNWYTFDdExsS2Rrc2FpSTkzRkMyNVpsS3BzMWhsUW9hZUl5QXQ4MDBxZjdx?=
 =?utf-8?B?Zm55ZWhvNENyQVBIcnlWb0c0dHRlNEljb2xjUm5rL211SGZPYzVGVlJxV3lD?=
 =?utf-8?B?dXZHNVJUOFlmM2JTUnhQVklOUTYzUi9PbktTQU10eGMvaVMvVkdlc1FHdG1E?=
 =?utf-8?B?OE5WRGNhSUNkRldtbHRZbFlqQzNJeFZjOCtYYkc5OXQ0SWUyVjdER3VmY3ZC?=
 =?utf-8?B?UmZqR05tRE1EZU02RG0ramlKTTdOMFBaenZ1aTk0OWt3KzJjVFQzN0ZPL2Rz?=
 =?utf-8?B?YnBrUVJXOFhTOWZQSFVKa29VMXBNWGdCUllKNUdRS3o5Mmw3YS9PVkhYYXJS?=
 =?utf-8?B?cmlYUVZlRzkxSGNRSGZvSnUwc05TdkQ5bWsyd3orYjBPR0RqdlpkcUVpOVF3?=
 =?utf-8?B?d1c0K1dNNW1COVRBY3B6WVVpcXVyaWhIUkQwUUU2eTUxTEFVTHJxWGlRMXFE?=
 =?utf-8?B?Mk5OQ1doZjVPbm9SUmNhZUtZdnZBNzliSWFkZEtMNW56NEx2SFRINjExdmNU?=
 =?utf-8?B?b1pUUGE5Z3JmcWlRa0FxYWRsYVZQY3laWS9vNEorRndsMHA2RStNVEg5L3ZS?=
 =?utf-8?B?a3RXUU40cE1pdkFnell0OENqVnFtRzA0dlY4dEVIZS93VnlLdVc3OE9Ba2Vw?=
 =?utf-8?B?ZUZ3dDRCZUhhdXJ2UGlUQktEdC9FenhNZTloK1hQV21FTlZ4RVRvd1QrSFhI?=
 =?utf-8?B?OVNGd0EwdG5IVkNBMWhXMGRvaVNPQnFUdnl4UFVGVFpGUUFsVWpWN21hOElh?=
 =?utf-8?B?Sk1OdWtkRUtqZmVkQ3Rya1JHRjhidXY1Tlc0MUM2b3NwVFB1aTcwVHlPMUQw?=
 =?utf-8?B?OXJabVJoSnJHL3RQaFB6Q3pRbUtxUXJKUmczSC9BUU00ZmZLZXNVa3oxM29W?=
 =?utf-8?B?dlFETmQwQ0E3RVZHdmkyNm40Zmw2SldkSVhySW1tNXpXNHQvYUxMdTN5bzQr?=
 =?utf-8?B?Ryt4bHowcnlEVzJOSkZqU2xIMlJXNFV0OXNpbU1rZnBJTTg4bStTa3hWczNZ?=
 =?utf-8?Q?QH3fgNsbl9XaIdLffFngS5SXJggvKo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AB501173D789C942BBDA6EA83B0F64E9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d718b698-08e1-40db-d14b-08da0687e2a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2022 13:29:51.8157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6qS/VtrCWQiWJ8FXstrcuP6EcB6cpGIaohJdgRnnh2W+j3IeNBSbvILhEiTeqTrc6PS6XddNBkMrFdeuv+wuGStwfGGsOHmp2m5JtmU6wa4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5757
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/display: Do not re-enable
 PSR after it was marked as not reliable
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTAzLTExIGF0IDEwOjUxIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBJZiBhIGVycm9yIGhhcHBlbnMgYW5kIHNpbmtfbm90X3JlbGlhYmxlIGlzIHNl
dCwgUFNSIHNob3VsZCBiZQ0KPiBkaXNhYmxlZA0KPiBmb3IgZ29vZCBidXQgdGhhdCBpcyBub3Qg
aGFwcGVuaW5nLg0KPiBJdCB3b3VsZCBiZSBkaXNhYmxlZCBieSB0aGUgZnVuY3Rpb24gaGFuZGxp
bmcgdGhlIFBTUiBlcnJvciBidXQgdGhlbg0KPiBvbiB0aGUgbmV4dCBmYXN0c2V0IGl0IHdvdWxk
IGJlIGVuYWJsZWQgYWdhaW4gaW4NCj4gX2ludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZSgpLg0K
PiBJdCB3b3VsZCBvbmx5IGJlIGRpc2FibGVkIGZvciBnb29kIGluIHRoZSBuZXh0IG1vZGVzZXQg
d2hlcmUgaGFzX3Bzcg0KPiB3aWxsIGJlIHNldCBmYWxzZS4NCj4gDQo+IHYyOg0KPiAtIHJlbGVh
c2UgcHNyIGxvY2sgYmVmb3JlIGNvbnRpbnVlDQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gRml4ZXM6IDljZTU4ODRlNTEz
OSAoImRybS9pOTE1L2Rpc3BsYXk6IE9ubHkga2VlcCBQU1IgZW5hYmxlZCBpZg0KPiB0aGVyZSBp
cyBhY3RpdmUgcGxhbmVzIikNCj4gUmVwb3J0ZWQtYnk6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hh
bGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gUmVwb3J0ZWQtYnk6IENoYXJsdG9uIExpbiA8
Y2hhcmx0b24ubGluQGludGVsLmNvbT4NCj4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIHwgNCArKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gaW5kZXggYmJkNTgxZWQwODE1OS4uODAwMDJjYTZhNmViZSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xODUzLDYgKzE4NTMsOSBAQCBz
dGF0aWMgdm9pZCBfaW50ZWxfcHNyX3Bvc3RfcGxhbmVfdXBkYXRlKGNvbnN0DQo+IHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgDQo+ICAJCW11dGV4X2xvY2soJnBzci0+bG9j
ayk7DQo+ICANCj4gKwkJaWYgKHBzci0+c2lua19ub3RfcmVsaWFibGUpDQo+ICsJCQlnb3RvIGV4
aXQ7DQo+ICsNCj4gIAkJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHBzci0+ZW5hYmxlZCAm
Jg0KPiAhY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyk7DQo+ICANCj4gIAkJLyogT25seSBlbmFi
bGUgaWYgdGhlcmUgaXMgYWN0aXZlIHBsYW5lcyAqLw0KPiBAQCAtMTg2Myw2ICsxODY2LDcgQEAg
c3RhdGljIHZvaWQgX2ludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShjb25zdA0KPiBzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJaWYgKGNydGNfc3RhdGUtPmNyY19lbmFi
bGVkICYmIHBzci0+ZW5hYmxlZCkNCj4gIAkJCXBzcl9mb3JjZV9od190cmFja2luZ19leGl0KGlu
dGVsX2RwKTsNCj4gIA0KPiArZXhpdDoNCj4gIAkJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0K
PiAgCX0NCj4gIH0NCg0K
