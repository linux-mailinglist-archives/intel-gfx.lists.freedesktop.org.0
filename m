Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51877606E8B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 05:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BB610E338;
	Fri, 21 Oct 2022 03:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6564510E338
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 03:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666324479; x=1697860479;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=RI0v+zo1TlSBeyR7kj+HZgBrfPLJhY8omEemiS8sAj0=;
 b=OKHGsPpn2IGO7OIvTQfbu8tvWKolOkGmTBByK8MA9Rf9Lb/nwtz7ewwq
 8YFo0YvR2g4nfG7S4EzwnzWKuyF+I77BMZ0ME0PhGWMtrBRzfiPIMkWt0
 HAob4rlRKl8kIb6qeS3PTf4D6W1x4LUZxV5PkpjHNJJ7Jd13zez9v5Lmo
 2qKnx9KDiKxaETbASEwF7IEGKeh70nP9geGdsFN3d0a74G7v1pK9FsZRu
 vvcNerVkop7oIZGkIHKw8C7lpE6Oji7FzHDb9Xr/hD83xb6uu8ZbC91/v
 Ei8KxucAk9TH6Zn9fYO9t9wu6kv2ZzWvRlW4RiQidU/rB+MrdBHnfbSjn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="368951008"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="368951008"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 20:54:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="772792921"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="772792921"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 20 Oct 2022 20:54:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 20:54:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 20:54:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 20:54:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZDjl2BfXVZ5dVoF0PHzVW8px14MaGNorozR3rzVlygTQqRwHZqDYm6zD4f6lwiECPuTWxB9/px/vifDd5VWKCpoJFOBRnyykS+5AviXMJ7f1twk0MtPcbVnUqtzvgNJp7wtfEJht2wLabfCebMz6be+32iWkx0l4LaTINT2nnODxoUnA2TuNFZ0oIKX/oyjhjvK026bnhj5/nFF01JFECVyjEwPNWXAUClBl5yDWu9HdWBWelQc923sUwpO/y0egmX7ngb8Yi5ZJLq/MfQiS/yTStfvxCGILp0LRyj1MXUTZoWrIdhjGvFBZjSaSYOB3gT7gG9AIr0DzGzxDtpojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RI0v+zo1TlSBeyR7kj+HZgBrfPLJhY8omEemiS8sAj0=;
 b=jii6gYtWXJ+i9WmX7Qb3/S2m7B6b/P7Mjj5cHWhJFqlD2VQurZ07h834JsTlgalyQaJoKVlnuQPGiCYnMJS3btNl9GFXzybfiTQGP18az6UzONNfzSHIu+QhmlD6ryjGQ472wFneLHF7Jo0B5rxbEonbhdfClPbc0h8pAavfjFaKESd04/Z89RUu7Fe6bXZ/k1+r8JtCUt5FwgAk+qLUqaZder7612TljxKagVXDKC/abBLOAFJ41O+/GrOW7Nu6RRmgWooy+Y7oEMdQJcsVy+5a2+G6+gECloYWD2Fw6Y/smUVT/INWum2acxtkveWmqLqBO8xB36A0levUHsZp2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA1PR11MB6710.namprd11.prod.outlook.com (2603:10b6:806:25a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Fri, 21 Oct
 2022 03:54:35 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%5]) with mapi id 15.20.5723.034; Fri, 21 Oct 2022
 03:54:35 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/7] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY2T1PjHtLPCorvU2nC/2szV/3/a4M17uAgAYKiYCABW2LgA==
Date: Fri, 21 Oct 2022 03:54:35 +0000
Message-ID: <8620e1186dc60a1c33f55f7335fa4c12f2866b8b.camel@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <20221006043834.606220-2-alan.previn.teres.alexis@intel.com>
 <a43a158e-8772-729d-2e2f-bcc8dba1a8d0@intel.com>
 <ca3929d15d31d18f5aa95b8612a7dc5e62932e08.camel@intel.com>
In-Reply-To: <ca3929d15d31d18f5aa95b8612a7dc5e62932e08.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA1PR11MB6710:EE_
x-ms-office365-filtering-correlation-id: a72646eb-47e1-4233-b6c4-08dab317f82b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ixeVrpxsxmdfa/LtlWqSkMVYF+babqWbqFFIk6O4Emrtj8Gdx6om1IWoBtnHUXQJSTZUgKuq7RS871sLlfFeDjfDCCjsGiBSlS0luU5rl1xpIPITCHYx00lE1vX4Wojn3SRbpGdldWklcW5/4qG5sCor3EbwhrmQluNLQwtwRLQnB49S//Sig6JcNwfLk8jJRQMwalxLXVE1pLRJG4Vg5yOegxTdv3M6YgYeTmV/krX0/0g7gf2RlbYIeVQXDn0Y30kAd78MyXZ/FMimHEMyVYlFbIIRXXsSPeo6i5AdTFn/6Jig73VcgkH9Wyr3CRQ1hpKQ94lLMsGXbuHaxGYJ3RnFfVYrFG4cgJXFttz4Wbqnb0+s5Jyku0CuSK9eirTtUKcTppMR5Niurvc1JXk630zWRGwSwVdzTTZq4rBWSzTyKv1IB45J5B6+R27X1azTPuHknWnWh9J3r88KJsU42hGctoUdhnK0f1ARsRLexFdGgaM/ODqcDkX3cfOmB08IG3h3mqYlDYfnHG9g9NarhqwAdfAV4ha9neHeF7fhEP/a9iL54NIn7aMlpGjd5diKyfwQFze30JkBwdswO3v/O7wqG3gSb9Cmkgivxgz5KepgAuEvwUMj6l2ly/ld9IDhOUlKrWgdy5tduc1xWyuPLebFAo+HXoyHU0Fosw0PFVXyntA3SxeMOfJmCtF3kb/0VFPfIWkLr+9FmBgSUgZKRXGDvGHxd25Fk+B5Dni+cJWI6lGWffbrz8Bo/bk6pFwsFkzZ2odCgmB24NdlU74/4g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199015)(66446008)(36756003)(110136005)(316002)(91956017)(6506007)(66476007)(66556008)(53546011)(8936002)(41300700001)(64756008)(5660300002)(38100700002)(122000001)(66946007)(82960400001)(38070700005)(2616005)(8676002)(2906002)(4001150100001)(186003)(86362001)(76116006)(478600001)(26005)(71200400001)(6512007)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RE9CZU8wWEhUTWxzRGU3WVF5NDVJbUFZbWROR3Z3TjcwVHdkV3RkNUtLZnha?=
 =?utf-8?B?YjE3WDR3dldnQ0E0YzM1dHVhMldYWWY1QS9XSzdqMGhCb0dQVXRWUHZFZCsv?=
 =?utf-8?B?ZStKMENtQ3lpOXFHTkdVMU90N0dId0VCTXJXQytSOHk3bTJSUWp3U1FNOHEx?=
 =?utf-8?B?ZVV5OVZVQkYrMmI5NTlETlZZYlVYMTZqbjU5OWg3OTlQeEFEekxlbWREblRx?=
 =?utf-8?B?MkY1MHFxSWN0SVJncElqREQ3ZHh1MWNUdGtFVHh1cXY5MDNJai91NUpjM2lC?=
 =?utf-8?B?UHg0ZWlaZmJVakJGUFY4ZnJBSm5TendvRm5LRlhnVE1Pd2MvZ0RBNjZaNXcv?=
 =?utf-8?B?VHp4RklidzVTenFQQVdEOEM1bGE1bTg0YkpmTGpPc1ZIMXZFU20zUlArMkp3?=
 =?utf-8?B?Y3hpOFh5UkVnVnhkVmYyTXg2WnV4U0c5SDVqbXVPVThEM2RxcXFJZHBwSzZj?=
 =?utf-8?B?STVBV1NwZTdMWUlZcVNTcmVWVXhMWVFIUncvNThzL1VwWmdMcFhodUgvV2Rn?=
 =?utf-8?B?amJHU0xWTm1nbU0zMG9GYThLV2h5ZE4zNmdsUUVaWnc1aEgyLytNUzVTaDNC?=
 =?utf-8?B?cGdsMVcwWmVPY0o2eUdxeTdQSklyeUszRE9RL3Q2ak4xZUVQL3U5a2JXVzhK?=
 =?utf-8?B?RDFIZ0pmYnRMd0t4VXFOVFlIWGd2N2p1NVFDcDE0ZnNtcXVTc2M0dlRGdVVw?=
 =?utf-8?B?QW12WkJaSkxkbWY5WmZSTHEyNDRVQVBCN0kyampqclZORWNPKzIzd21CTDBL?=
 =?utf-8?B?R0tFYzlydW5BWjRKK3RYWXpRbEZ5KzNMSXRZV0RjUzdLQ3VGMDdxRkUzeFV0?=
 =?utf-8?B?aDZYTElHdkxHdUZmMEpZVm5FS3FYdVg3N2tDZTBYZ0hOSFpIb3hmVCs3OEhz?=
 =?utf-8?B?TFlkanYxcTNzUUxvVFRjRVBieGtRMXZCamY0RkQ2ejBqbWhWVGtsZTYwMW9j?=
 =?utf-8?B?L01zeWMyT21PWDJKWXV3dEJvNWZFTFRmVjI4NUx3V2VJelpTSXpGV1NtYUxt?=
 =?utf-8?B?ajM3RGhxdUhjTmVYODkrY3hGdGw5QXJHemxzTFUrY2lGN3BpRUtneEd2cXdX?=
 =?utf-8?B?QmRrYk04eXhzM3haR3lqWFZZcmN0aXk4OFZLdmR0dGZKRmpHMXVPUmNNWU12?=
 =?utf-8?B?b3BNRmorNWIwYm0xMVVTcDFqZ3N4NHpTVXJRUktUNVdjWk5hZFFGa0pkc3VX?=
 =?utf-8?B?YWtXUGo5Q0VVZ1lYUDVEaS9BM3FtaCtzN0RNakJsd0wvQVNxRWsxdEx2dE5S?=
 =?utf-8?B?WXdDcjFpaEFtRFNaZGJLMGtjZlNmRGR3T1ArZ3JIUktiaVhQdFo0UnlvUE5n?=
 =?utf-8?B?SXErTkExYkJoQzZPMHc3TjNUTzdqLzFtYVdpQ1pzaGt3ZWRVVTFjc2ZuT0Rn?=
 =?utf-8?B?Y1Q0bThKaUF0di9RS3ZQQkl3V1VYZ3UvY1lQMitwM0NEeVc0L3Bsem9naWl5?=
 =?utf-8?B?T0lhTlZRYy9NSmdCM1kvT2NRRTJPR0UvUWptTnhLVFVSS2VqVWJhb0YwaXZW?=
 =?utf-8?B?OWVCdWx4a3RJRzB1UjJhcWtwbVgzaFVJSUtqTHcxSHJCMmE2akR5RUNVeWJK?=
 =?utf-8?B?akpZenVrSFB2SDZNOTJDbGNpdFBCS01FbTRKOFVuVUoyUmh5bVpOWU5ZTDB0?=
 =?utf-8?B?Z2VsUi9zeWxhb1NLTEdVdUhzTS9lbURRejZiOFVwbm5YQUgrTE03UHhUSDU5?=
 =?utf-8?B?V2dSRFlObXhFUnl0alF6OUp4amUwN3Z3YzJ3K0ZOcGZodVJoL0JUTkFlZXFD?=
 =?utf-8?B?R3RLb01JMW5tQnFzYlErT0huWDB2T2VkaU9ud2V0ZzVmOFNGM1VDVHVpN1hK?=
 =?utf-8?B?Um5XeFlMckVVTFk4ZnBJdzV2TWlGQTFNMWJUdE9mL0dEcEpORGJVRHFKMzZz?=
 =?utf-8?B?ZEJLUE5naVpBbWdzNTYvTkVWWCtqbEFSeWdtTUg3NkVzZVN2cDUyMC9tR2d3?=
 =?utf-8?B?bEhvL3R5R0RXa2VLOUdQZlZjODAyVUpRcE5UMmNiaDIrQWoyejBzS2VaRHhZ?=
 =?utf-8?B?V0dVL2dlZVZIZjVPbVZib3NpMjlMWW9zbm1aSWhKUm9DSTJmOUtqV2dCRE5T?=
 =?utf-8?B?NlNXbjNqaVZwL2R3UzNHQ09RNTFQdW9CdUovOGVWZXd5ZlVjMlN5eEMzaW1Z?=
 =?utf-8?B?WDduNjdzU0sxN0ZWdElmaGttYjFkZkxmUDBjQXRjckNIWDhHUmVkVmZkWXZZ?=
 =?utf-8?Q?RfisBq2NC01vm1xWlUgGjEQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1A6E2E9A1D98CC4EA79A00FA241EBE27@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a72646eb-47e1-4233-b6c4-08dab317f82b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 03:54:35.5268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0/A3x1O5tQEMtJr/p5BsUfwUMB+lr/uvgmuI9fr5UxuMnyOO7o0Ccnt5uXI3j059l2zzPKXMUDOvuOUldkKvPr0r2Nfp+tBQG9ZTPBCHJIlMWgjpHLu6cXFvvu4eCtIx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

DQoNCk9uIE1vbiwgMjAyMi0xMC0xNyBhdCAxMDowMyAtMDcwMCwgQWxhbiBQcmV2aW4gVGVyZXMg
QWxleGlzIHdyb3RlOg0KPiANCj4gT24gVGh1LCAyMDIyLTEwLTEzIGF0IDEzOjQ4IC0wNzAwLCBD
ZXJhb2xvIFNwdXJpbywgRGFuaWVsZSB3cm90ZToNCj4gPiANCj4gPiBPbiAxMC81LzIwMjIgOToz
OCBQTSwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiBJbiBwcmVwYXJhdGlvbiBmb3IgZnV0dXJl
IE1UTC1QWFAgZmVhdHVyZSBzdXBwb3J0LCBQWFAgY29udHJvbA0KPiA+ID4gY29udGV4dCBzaG91
bGQgb25seSB2YWxpZCBvbiB0aGUgY29ycmVjdCBndCB0aWxlLiBEZXBlbmRpbmcgb24gdGhlDQo+
ID4gPiBkZXZpY2UtaW5mbyB0aGlzIG1hdCBub3QgbmVjZXNzYXJpbHkgYmUgdGhlIHJvb3QgR1Qg
dGlsZSBhbmQNCj4gPiA+IGRlcGVuZHMgb24gd2hpY2ggdGlsZSBvd25zIHRoZSBWRUJPWCBhbmQg
S0NSLg0KPiA+ID4gDQo+IEFsYW46W3NuaXBdDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmMNCj4gPiA+IGluZGV4IGIzNjdjZmZmNDhkNS4uZTYxZjZjNWVkNDQwIDEwMDY0NA0KPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYw0KPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYw0KPiA+ID4gQEAgLTg1MCw2ICs4NTAs
MTAgQEAgaW50IGludGVsX2d0X3Byb2JlX2FsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPiA+ICAgCWd0LT5uYW1lID0gIlByaW1hcnkgR1QiOw0KPiA+ID4gICAJZ3QtPmluZm8u
ZW5naW5lX21hc2sgPSBSVU5USU1FX0lORk8oaTkxNSktPnBsYXRmb3JtX2VuZ2luZV9tYXNrOw0K
PiA+ID4gICANCj4gPiA+ICsJLyogZGV2aWNlIGNvbmZpZyBkZXRlcm1pbmVzIHdoaWNoIEdUIG93
bnMgdGhlIGdsb2JhbCBweHAtdGVlIGNvbnRleHQgKi8NCj4gPiA+ICsJaWYgKFZEQk9YX01BU0so
Z3QpICYmICFJTlRFTF9JTkZPKGk5MTUpLT5oYXNfbm9ucm9vdF9weHBndCkNCj4gPiA+ICsJCWd0
LT5weHB0ZWVfaWZhY2Vfb3duZXIgPSB0cnVlOw0KPiA+ID4gKw0KPiA+IA0KPiA+IEknbSBub3Qg
Y29udmluY2VkIHRoYXQgd2UgbmVlZCBkZWRpY2F0ZWQgaGFzX25vbnJvb3RfcHhwZ3QgYW5kIA0K
PiA+IHB4cHRlZV9pZmFjZV9vd25lciBmbGFncy4gTVRMIG1vdmVzIHRoZSBHU0MgaW5zaWRlIGEg
R1QgYW5kIHRoZSBvd25lciBvZiANCj4gPiBQWFAgaXMgdGhlIEdUIHdoZXJlIHRoZSBHU0MgZW5n
aW5lIHJlc2lkZXMuIFNvIHdlIGNvdWxkIGhhdmUgYSBjaGVja2VyIGxpa2U6DQo+ID4gDQo+ID4g
Ym9vbCBpbnRlbF9weHBfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+ID4gew0KPiA+
ICDCoMKgwqAgwqDCoMKgIC8qIHdlIG9ubHkgc3VwcG9ydCBIRUNJIFBYUCBmcm9tIHRoZSByb290
IEdUICovDQo+ID4gIMKgwqDCoCDCoMKgwqAgaWYgKEhBU19IRUNJX1BYUChndC0+aTkxNSkpDQo+
ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCByZXR1cm4gZ3RfaXNfcm9vdChndCk7DQo+
ID4gDQo+ID4gIMKgwqDCoCDCoMKgwqAgcmV0dXJuIEhBU19FTkdJTkUoZ3QsIEdTQyk7DQo+ID4g
fQ0KPiA+IA0KPiA+IEknbSBhd2FyZSB0aGF0IHRoZSBHU0MgZW5naW5lIGNvZGUgaXMgc3RpbGwg
bm90IGF2YWlsYWJsZSwgYnV0IHdlIGNhbiANCj4gPiBzcGVjaWFsIGNhc2UgZm9yIE1UTCBmb3Ig
bm93IGFuZCB0aGVuIHJlcGxhY2UgaXQgd2hlbiB0aGUgR1NDIGNvZGUgbGFuZHM6DQo+ID4gDQo+
ID4gYm9vbCBpbnRlbF9weHBfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+ID4gew0K
PiA+ICDCoMKgwqAgwqDCoMKgIC8qIHdlIG9ubHkgc3VwcG9ydCBIRUNJIFBYUCBmcm9tIHRoZSBy
b290IEdUICovDQo+ID4gIMKgwqDCoCDCoMKgwqAgaWYgKEhBU19IRUNJX1BYUChndC0+aTkxNSkp
DQo+ID4gIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCByZXR1cm4gZ3RfaXNfcm9vdChndCk7
DQo+ID4gDQo+ID4gIMKgwqDCoCDCoMKgwqAgLyogVE9ETzogcmVwbGFjZSB3aXRoIEdTQyBjaGVj
ayAqLw0KPiA+ICDCoMKgwqAgwqDCoMKgIHJldHVybiBJU19NRVRFT1JMQUtFKGd0LT5pOTE1KSAm
JiAhZ3RfaXNfcm9vdChndCk7DQo+ID4gfQ0KPiA+IA0KPiA+IFRoZW4gd2UgY2FuIHVzZSBpbnRl
bF9weHBfc3VwcG9ydGVkKGd0KSBpbnN0ZWFkIG9mIA0KPiA+IGd0LT5weHB0ZWVfaWZhY2Vfb3du
ZXIgYW5kIHdlIGNhbiBkcm9wIGhhc19ub25yb290X3B4cGd0LiBNaWdodCBhbHNvIGJlIA0KPiA+
IHdvcnRoIG1lcmdpbmcgdGhpcyB3aXRoIEhBU19QWFAgZm9yIGEgdW5pZmllZCBjaGVjaywgYnV0
IHRoYXQgY2FuIGNvbWUgDQo+ID4gbGF0ZXIuDQo+ID4gDQo+ID4gRGFuaWVsZQ0KPiANCj4gQXMg
cGVyIG9mZmxpbmUgY29udmVyc2F0aW9ucywgd2Uga25vdyBhYm92ZSBjb21iaW5hdGlvbiBtYXkg
bm90IHdvcmsgZm9yIHRoZSBERzIgY2FzZSwgYnV0IGknbGwgZ28gYWhlYWQgYW5kIHJlLXJldiB0
aGlzDQo+IGFmdGVyIGkgbG9vayBmb3IgYW5vdGhlciB3YXkgdG8gYXZvaWQgY3JlYXRpbmcgYW5v
dGhlciBkZXZpY2UgaW5mbyB2YXJpYWJsZS0gaSdsbCB0cnkgdG8gZ2V0IGEga2FybmF1Z2ggbWFw
IGdvaW5nIHRvDQo+IGVuc3VyZSB3ZSBoYXZlIGEgZ29vZCBjb21iaW5hdGlvbiBvZiBleGlzdGlu
ZyBkZXZpY2UtY29uZmlnIGluZm8gdGhhdCBhcmUgcmVsaWFibGUgZm9yIGFsbCBjdXJyZW50IGFu
ZCBNVEwgdXNhZ2VzIGVsc2UNCj4gd2UgbWF5IG5lZWQgYSBuZXcgZGV2aWNlLWNvbmZpZyBhZnRl
ciBhbGwgKG1heWJlIGEgYmV0dGVyIG5hbWVkIG9uZSBpZiBuZWVkZWQpLg0KDQpBbGFuOiBMb29r
cyBsaWtlIHRoZSBvcmlnaW5hbCBpbnRlbF9weHBfaW5pdCAod2l0aCBvbmx5IHRoZSBjaGFuZ2Ug
dG8gSEFTX1BYUCB0byB0YWtlIGluIGd0IGFzIGlucHV0KSBtaWdodCBiZQ0Kc3VmZmljaWVudCBm
b3IgYWxsIGNhc2VzIHdlIGhhdmUgd2l0aCB0b2RheSdzIGh3IC0gd2l0aG91dCB0aGUgbmVlZCBm
b3IgdGhlIHB4cHRlZV9pZmFjZV9vd25lciBvciBoYXNfbm9ucm9vdF9weHBndDoNCg0KCSogZm9y
IEhXIHdpdGhvdXQgUFhQL0dTQy1IdUMtQXV0aGVudDogd2lsbCBmYWlsIG9uIGVpdGhlciBIQVNf
UFhQIGFuZCBfZ3RfbmVlZHNfdGVlbGluaw0KCSogZm9yIGFkbC90Z2w6IEhBU19QWFAgd2lsbCBQ
QVNTDQoJKiBmb3IgZGcyOiBIQVNfUFhQIHdpbGwgZmFpbCwgYnV0IF9ndF9uZWVkc190ZWVsaW5r
IHdpbGwgcGFzcw0KCSogZm9yIG10bDogSEFTX1BYUCB3aWxsIHBhc3MgZm9yIDJuZCB0aWxlIG9u
bHkgZHVlIHRvIFZEQk9YIG1hc2sNCg0KLi4uYWxhbg0K
