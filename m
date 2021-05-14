Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C8F380A7D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 15:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046266EE7C;
	Fri, 14 May 2021 13:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0321F6EE7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 13:41:46 +0000 (UTC)
IronPort-SDR: SkIVbr6pc27ZuVVmscBP+WC5/I1ptTD7lfSkAXdBPW837Trh1piTW6oKUeE/UL3m8MzqWnMrvK
 yVDBXX5DziEg==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="179775872"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="179775872"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 06:41:43 -0700
IronPort-SDR: 2XxygICOVKVy3spok3V76nfc2QS27h08JL6K+KL5VMq6mZBoadOtmijYzbrjiOGsDgMSDGaV77
 oR0RhnpD+kRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="470544157"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2021 06:41:43 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 06:41:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 14 May 2021 06:41:43 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 14 May 2021 06:41:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOQZFP/5nGgHaxBwDBvzuCke2d/Pn62nyrsuNpOXH1zwK0dcGFB1jk+kk5Klrse2K61sTt8a+PLJ0jK2YHFZwed+GtWbDDjFhiczJexbOLCcpPg3FE8pVHBYnEGN/lTGubAQNmT0U68Mogg9Wmp48aScpo/nvf+wcWHyUQm630Io6xx/Ovi17rJAnusgBKs94b77jQFj1wW88gezPs23vMforAR/MxLnEUEgMrvFMDh5lywy6mblxuiyWPghOPOeFggLijejYIZ7DzctXXIizIR5IhOjdJ2bMJLsCQC7sSnijvx2NjDMCm8RRTInbLrcaCUzL9Cbj21ql6undfEeoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NFlWxlEbPFVI7eIk5taQUmHYeDUt1zZLpCC74Y432SI=;
 b=JU9Gzzc92RFRAk1GK18qRGOp+WoOawmTlaTDMzGfMIJNew4s8ZA0vXpCpucfR0djrjwsIdS3TMpwSI38OOAUc5APc2stk7OcSW6ZJiLT6sb/mwBry9IfhjyrGDro/zcDBAwaTg5khfvT6YyMeo+qS/HG6NwonbZz4GAbsTgSDmxXxUOTc3Oo+wG+HIe/95MOn0+1RaXArbVb72HIgJHz0jNbZhXHk3DGud+PuTFV7nx7SoEWFuYtsqj7sLsBuzanFx23viOaEC+xctTvx+T4sftc4u/+Sng+DppwUdcf5xe7qtkoy+qzzSGbgcQyY+RoMPnx6RSiCB+b1htMbsfe9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NFlWxlEbPFVI7eIk5taQUmHYeDUt1zZLpCC74Y432SI=;
 b=fSW00fAaQqXyx9+G0H6qO0VXRFAIQMnmogQhvGLmKeYUPmWksAXsTI0Tva8DIjccXZorTuoPQmgQdxcZ9Y/3mcy3gnYj9AxOAy9iBcNaEgBNbtvIAqB6+DSPhPRfVAuS/15pz3eVVxn5HG5b8rb+9HbfwlSPKH7EsZE4mk5DP5k=
Received: from DM6PR11MB3786.namprd11.prod.outlook.com (2603:10b6:5:142::33)
 by DM4PR11MB5518.namprd11.prod.outlook.com (2603:10b6:5:39f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Fri, 14 May
 2021 13:41:41 +0000
Received: from DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::242d:c270:1c01:6f74]) by DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::242d:c270:1c01:6f74%4]) with mapi id 15.20.4129.025; Fri, 14 May 2021
 13:41:41 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp
 disabled
Thread-Index: AQHXPZBKpiQDAyL4+E26crSzrwGEe6rNBQ8AgAthRICACqxHgA==
Date: Fri, 14 May 2021 13:41:41 +0000
Message-ID: <a9e7316bb1f331492a52af80a5d7dd3c9a80c108.camel@intel.com>
References: <20210328225709.18541-16-daniele.ceraolospurio@intel.com>
 <20210427104504.2720-1-anshuman.gupta@intel.com>
 <YIhePcRcpKEoBmAE@intel.com> <96d9782a7e864448a4d311f4eeaa6923@intel.com>
 <YIv+QNTlV9ef0QzH@intel.com> <YJWKE/bz4KyopJU2@intel.com>
In-Reply-To: <YJWKE/bz4KyopJU2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.4-0ubuntu1 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5240f57-172e-42b0-3219-08d916de019c
x-ms-traffictypediagnostic: DM4PR11MB5518:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM4PR11MB5518A3EECF76F2EC79CBB8BC8A509@DM4PR11MB5518.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2lvvFsqu42kzhn8lfTk8Wr4F0EioCk8t5LsNRRUC1/QtUULMkTUmUNSoxhgBMQyfj2fkH4zEYDGF6h3fR12dvuXDL0VLlwmj16pzUy5cVSBUluKWhfbq9A8cxMwWJm5HiZzB2z8bz4HhjaeY5PvUwsbRWYCFzmh75ysj1ycHjhoNmuYus7o9iAHQHHupFcHPSucK0N98yJYoljh0vP2teeH4RiKsrVBSlZfPMuJhGZKGzmRk+IUeX5EmVCO5IXzWaGb21DvksRoUlh2c1t/4jOIne6I0gsTsuqe5v3suuZq2SphwEKT160f6Rz784AllVeP3AsV3CMAy2WEOhySS0uPh9L/knPc2dxZjwCSzQ3fiOT+pl1tCO+JtpSUtvBeKbMkbbBH2+mi+9YTKSPEI1OodeB+cK0LyiI8UOPu9kEHpfQJEWf332eKBmoT2+k0a4GjPD78QgSgJapxqbpNKAImEUz8bZsNA1JyOYux3mjFMdiKpVw6VD1c6oeyTfr1qEFmg4T7J4Qo1u4E+ceLAlhltwvvNi4CHh8n0gSFLTYJZVTTI69tp4i+62J4diXJGFgikaPXZev/NpV7ebGTK1sIumsE5lSTqoT3TSaY36so=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3786.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(366004)(39860400002)(346002)(396003)(110136005)(54906003)(316002)(4326008)(8676002)(6636002)(26005)(53546011)(6512007)(38100700002)(2616005)(6506007)(122000001)(478600001)(186003)(8936002)(2906002)(5660300002)(36756003)(83380400001)(71200400001)(6486002)(66446008)(66574015)(66946007)(66476007)(64756008)(66556008)(86362001)(76116006)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?YUQ3bURVZE5VWUx0Q1RkemNYOEpvVWlTYXhjUi9tNCtEVFFsNk9YTThhVytB?=
 =?utf-8?B?bHJjcndOdjdaVmIvbktDQUFiR2dwZU5QdXBTT3BhRllCYXdxK216a3NxSTZI?=
 =?utf-8?B?cFpILzRFZmJIbHl3eXpkZG9kNC9SejNxMENGWXFKbWFFNzlXMml2Q3R3VHRu?=
 =?utf-8?B?OFgzUzk2NWIwZEtKeTAvSVIyRVQ1UVdQd2w2cy9qOTIycVo5WGtaR1o4OHg0?=
 =?utf-8?B?RHBIdVlFM0cxUkhKNjgrM0V1dW5vT3Z1MFdRckxVQVJxUW1tYkJDTks1QnRw?=
 =?utf-8?B?dVA2RFVkbEhtQmlTSndKcEhnRVNNNGtwRG5VQzNENkN3SHJoT2NCOGxPb1VR?=
 =?utf-8?B?REg2di9SenI2bUhGNE1WeDFmNWRnckpteUNTUDZpcVFUWmJjUndxa3lRMjA5?=
 =?utf-8?B?eCtpSDJlTWtkVUZpVDRPa0d3U3QvYWZrQ0JoUVhMbWxmUFY4QjZ4S1YvVFIy?=
 =?utf-8?B?RHZ2WjY4N0wzcmM0NlVzSzUvdktpbjVpSlFyNkJNdmtYdkppUVpROThpZUVJ?=
 =?utf-8?B?WFI0TEdrazlDR21JZ3F6ZlJ2M3pSMDNuTmFjQ1gyYmUyK241S1BZU3VzN21q?=
 =?utf-8?B?YXZWMFhtZVo2YlRyRFZ4SlU2aUorUzJKMFZ0RE4zL3RzdEY5aEZLNlBhT3hk?=
 =?utf-8?B?bmZkcXRkMC85ZUlGT1pKRTZnNzA4dnZRSytLQlVKUVpRYUdhY3VqRUtkQzlJ?=
 =?utf-8?B?Ti9yUWpaeGtzOW1QRHc1S0VNNEU0QmxHRGJhai9wbGFDSDBGOEZWSXZsYkRN?=
 =?utf-8?B?ejlMRjlyRW9EY3BabnBLbm1DZHlybHpHMkxxUERTZUFiZ3BDSmVscjZoYTZR?=
 =?utf-8?B?NWEwMHVZSGUySWdtcWJ3VFVtRmJuRFhRanlZWncxclRlbzdJK2JRcGVta2Ex?=
 =?utf-8?B?Q002cjVqKzVSSHhhcHNUZGR3aWJDODRZTzd1ZUpvUzFUODJWTUhsblZkeUtJ?=
 =?utf-8?B?OHFTVVBQbWp3YVJBdFk3bklQTEEySWp5cXY1MXgwNGMyZlRJRnIwamgxdFU4?=
 =?utf-8?B?bkpzVS9uM2FwcXRVWThBSjUwRkVRczFtNm1tenpibkZIL0F5djIrZGRYWCtk?=
 =?utf-8?B?ZWNpSzljTWdSMTVGYk5vY28vcTRpOW1uZVNOZWtwZ05EdEYyTy8xVmkydnJz?=
 =?utf-8?B?R3B3SEJVcUdvc2NvSnd2ZTRSblkxRG8rSzVPaEpON0tHZTU1ZjhRZFpNZ1pI?=
 =?utf-8?B?T1BLdjI0eHRRSXNEbWVpT1NnWGpqRHV6N2xZdURJWlNMK2NoeDZrOFAzOU1P?=
 =?utf-8?B?SWNLdmx5ODdSRW9TdnZmRC9tTEpzcnZaT2c2b2tYSFMwYXJ3VXJPRVRUcFVD?=
 =?utf-8?B?d0cvajJkc0I0T1lnY1d1bUJGTVM5a2pCOXBvNzJPSlkvYUd0YVo3a01aWmxX?=
 =?utf-8?B?RHZIaDRoSVBJakQ1Q3Q1aVZrLzFWRHF4cy9zcjVSb2NKc3g3SmJ0eHhWNFI2?=
 =?utf-8?B?OXBibUw0NHl3QVdSOGQ3eU9Ebk0vZEJueVh3WWxLbU8vNVFQZi9CN0ZTQjdH?=
 =?utf-8?B?T01DallzMGlLMHU4NlNndUdCZEZpaU4wSEJzQmRCMjNKME9nTUlZQW5GR1d2?=
 =?utf-8?B?KzJ3cGZVUXJEd1RmYzdyUDNaVS9QbWtoVUJCRFJMNTJZZ2tvWnE3d0hmWHBp?=
 =?utf-8?B?cWVDdk1RL0VUMVNWUWdkQ3BpdEp3MzZFS3NSUnZGNithOExuS05KdEJpbmFO?=
 =?utf-8?B?MHo5U3kxZkNWVmwxRi9FTnJEMjh2YXlOWE5obGhPeFN4aCtvYnJaK0NqbWtl?=
 =?utf-8?B?eGxrVzdld3gxazhPRmhod1Eyd1h5RzF3M3NuVzBxc1oyMkg3dkxpN2pZMDha?=
 =?utf-8?B?ZXRNOWxtQndtb3h4alVnZz09?=
Content-ID: <81AAB456281F624798E7A6C6A4EC9019@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3786.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5240f57-172e-42b0-3219-08d916de019c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2021 13:41:41.4230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K6X0btfz6XDZxf1SWjFQXdX3VwGJ2iVqPobxOCI/sglDMFpx8tl3uaTv62RRkD149C2Rt3oXaTp+DZ2iRvEDtmx8MOFXS31KB4TW0d//GjxFBRrU4NJnE4OomkxWJsIl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5518
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp
 disabled
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
Cc: "Gaurav, Kumar" <kumar.gaurav@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTA1LTA3IGF0IDE0OjQyIC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
ID4gDQo+IE9uIEZyaSwgQXByIDMwLCAyMDIxIGF0IDAzOjU1OjI4UE0gKzAzMDAsIFZpbGxlIFN5
cmrDpGzDpCB3cm90ZToNCj4gPiBPbiBGcmksIEFwciAzMCwgMjAyMSBhdCAwNzoxMjo1M0FNICsw
MDAwLCBHdXB0YSwgQW5zaHVtYW4gd3JvdGU6DQo+ID4gPiANCj4gPiA+ID4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+ID4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCAyOCwg
MjAyMSAxMjoyNiBBTQ0KPiA+ID4gPiBUbzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0
YUBpbnRlbC5jb20+DQo+ID4gPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
OyBWaXZpLCBSb2RyaWdvIDwNCj4gPiA+ID4gcm9kcmlnby52aXZpQGludGVsLmNvbT47DQo+ID4g
PiA+IEdhdXJhdiwgS3VtYXIgPGt1bWFyLmdhdXJhdkBpbnRlbC5jb20+OyBTaGFua2FyLCBVbWEN
Cj4gPiA+ID4gPHVtYS5zaGFua2FyQGludGVsLmNvbT47IENlcmFvbG8gU3B1cmlvLCBEYW5pZWxl
DQo+ID4gPiA+IDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPg0KPiA+ID4gPiBTdWJq
ZWN0OiBSZTogW1BBVENIIHYzIDE1LzE2XSBkcm0vaTkxNS9weHA6IGJsYWNrIHBpeGVscyBvbiBw
eHANCj4gPiA+ID4gZGlzYWJsZWQNCj4gPiA+ID4gDQo+ID4gPiA+IE9uIFR1ZSwgQXByIDI3LCAy
MDIxIGF0IDA0OjE1OjA0UE0gKzA1MzAsIEFuc2h1bWFuIEd1cHRhIHdyb3RlOg0KPiA+ID4gPiA+
IFdoZW4gcHJvdGVjdGVkIHN1ZmFjZXMgaGFzIGZsaXBwZWQgYW5kIHB4cCBzZXNzaW9uIGlzDQo+
ID4gPiA+ID4gZGlzYWJsZWQsDQo+ID4gPiA+ID4gZGlzcGxheSBibGFjayBwaXhlbHMgYnkgdXNp
bmcgcGxhbmUgY29sb3IgQ1RNIGNvcnJlY3Rpb24uDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gdjI6
DQo+ID4gPiA+ID4gLSBEaXNwbGF5IGJsYWNrIHBpeGVscyBpbiBheXNuYyBmbGlwIHRvby4JDQo+
ID4gPiA+IA0KPiA+ID4gPiBXZSBjYW4ndCBjaGFuZ2UgYW55IG9mIHRoYXQgd2l0aCBhbiBhc3lu
YyBmbGlwLg0KPiA+ID4gSSB3YXMgdGhpbmtpbmcgb2YgYW4gc2NlbmFyaW8gLCB3aGVuIGFwcGxp
Y2F0aW9uIGZsaXAgdGhlDQo+ID4gPiBwcm90ZWN0ZWQgc3VyZmFjZXMgd2l0aCBzeW5jaHJvbm91
cyBmbGlwcw0KPiA+ID4gYW5kIGRyaXZlciBoYXMgZW5hYmxlIHRoZSBwbGFuZSBkZWNyeXB0aW9u
LCBjYW4gYXBwbGljYXRpb24gaXNzdWUNCj4gPiA+IGFuIGludGVybWVkaWF0ZSBhc3luYyBmbGlw
IHdpdGgNCj4gPiA+IHByb3RlY3RlZCBzdXJmYWNlcyBhZnRlcndhcmRzID8NCj4gPiA+IElmIGFi
b3ZlIGlzIHBvc3NpYmxlLCBpcyBpdCBwb3NzaWJsZSB0byBkaXNwbGF5IGJsYWNrIHBpeGVscyBp
bg0KPiA+ID4gY2FzZSBvZiBweHAgc2Vzc2lvbiBpbnZhbGlkYXRpb24gYXQgdGhlIHRpbWUgb2YN
Cj4gPiA+IFBsYW5lIGNvbW1pdD8gICANCj4gPiANCj4gPiBXZSdsbCBqdXN0IGhhdmUgdG8gcmVm
dXNlIHRoZSBhc3luYyBmbGlwIGlmIHRoZSBzZXNzaW9uIGhhcw0KPiA+IGJlZW4gaW52YWxpZGF0
ZWQuDQo+IA0KPiBUaGlzIHNlZW1zIHRoZSBzaW1wbGVzdCB3YXkuLi4gYnV0IHRoZSBlZmZlY3Qg
d291bGQgYmUgZGlmZmVyZW50DQo+IHJpZ2h0Pw0KPiBXZSB3b3VsZG4ndCBnZXQgdGhlIGRlc2ly
ZWQgYmxhbmsgc2NyZWVuLCBidXQgZnJvemVuIHNjcmVlbj8hDQo+IA0KPiBBbnkgcG9zc2liaWxp
dHkgb2YgYSBibGFuayBzY3JlZW4gb24gdGhpcyBzY2VuYXJpbz8NCj4gDQpOb3Qgc3VyZSBpZiB0
aGlzIG9waW5pb24gb2ZmZXJzIGFuIG9wdGlvbjogSSBhc3N1bWUgd2hlbiB3ZSBzYXkgInJlZnVz
ZQ0KdGhlIGFzeW5jIGZsaXAiLCB3ZSBtZWFuIHJldHVybiBhIGZhaWx1cmUgb24gYnV0IGRvbnQg
Y2hhbmdlIHRoZSBIVw0Kc3RhdGUuLi4gdGhpcyB3b3VsZCBtZWFuIHRoZSB1c2VyIG9ic2VydmVz
IGEgZnJvemVuLWFuZC1jb3JydXB0ZWQtDQpsb29raW5nIHNjcmVlbiBzaW5jZSBhbGwgYnVmZmVy
cyBpbiB0aGUgYXBwJ3Mgc3dhcGNoYWluIHdvdWxkIGJlDQplbmNyeXB0ZWQgYW5kIGludmFsaWQg
YXQgb25jZSAodGhlIHR5cGljYWwgY2FzZSkgLSBpbmNsdWRpbmcgdGhlDQpjdXJyZW50IGZyb250
YnVmZmVyLiBBbG9uZyB0aGUgc2FtZSBsaW5lcywgaWYgdGhlIGFwcCArIGNvbXBvc2l0b3Igd2Fz
DQpwYXVzZWQvaWRsZSB3aXRoIG5vIGFzeW5jIGZsaXBzIGNvbWluZyBpbiBtb21lbnRhcmlseSwg
YSBweHAgc2Vzc2lvbg0KaW52YWxpZGF0aW9uIGV2ZW50IHdvdWxkIHRoZW4gY2F1c2UgdGhlIHNh
bWUgc3ltcHRvbS4gUGVyaGFwcyB3ZSBuZWVkIGENCnVldmVudCBkcm0tbWFzdGVyIGNhbiBob29r
IG9udG8gc3BlY2lmaWNhbGx5IGZvciB0aGUgcHhwLXRlYXJkb3duIHNvDQp0aGF0IGRybS1tYXN0
ZXIgd291bGQgYmUgYWJsZSB0byByZXBsYWNlIHRoZSBjdXJyZW50IGZyb250IGJ1ZmZlciBzbw0K
bG9uZyBhcyB0aGUgc2Vzc2lvbiBoYXNudCBiZWVuIHJlLWVzdGFibGlzaGVkLiBBbHRob3VnaCB0
aGlzIG1pZ2h0IGJlDQpiaWcgZW5vdWdoIHRvIGJlIHNlcGVyYXRlIHBhdGNoIHNlcmllcyBhZnRl
ciB0aGlzPw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
