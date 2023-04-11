Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5864D6DE56C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 22:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D095710E64C;
	Tue, 11 Apr 2023 20:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0834910E64C;
 Tue, 11 Apr 2023 20:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681243640; x=1712779640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=q4QFVZ+O+tlioF9LffoDUHwcRIj0WvDJy/GH+FGLLjY=;
 b=cazmng0v1Y9cxY5w7h2H9CMdxoaKJLe8BYqpAkOvFSxDH66sjUttBWhF
 MS6kqBT25HeWRAyvWPOcrCDGPp0Y1g8JxpBUJ/ntKiSM0U2tnHJST/F6H
 BDekJXwJxck/rcbfEm53ab5EKMbjchRQ+IF66h9wYL6ZGt5ggcFdCQH8h
 JTRULf598lUX7u92wCDzEw7q0h0Zx6jhjVcr475wvWWDZ59L+wLrJy7tZ
 mQFygfektVD2EXdp0HYnq4h0TLYd2Im4OGX0eGAlPVuCTyUfRXuhCdlm0
 QvCbSx1K0ibd8mKJAa0pWWnmUL8dBwy32Y/N78hOdiM4kE50BGtPqL1Xq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="408864487"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="408864487"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 13:07:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="666082908"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="666082908"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 11 Apr 2023 13:07:15 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 13:07:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 13:07:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 11 Apr 2023 13:07:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 11 Apr 2023 13:07:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PPsQIRO8BPBTkQPA1Kimd5LGJQ6y68zrg5cYKZCJ+89eno2tTVch26zbmEUyvIosvmeO53nlf6we8QJIDld85PCSyxo3xLmMC7brc4Rz2PQO6Xq/Xt9yPntXKmtSZUK/XoYf0JE3Qs/lB+x34uaCZeZ7l2K5YsMu3L59xGfyzaMoQgtr3nlD6nv8inQKeg5+RikqqMPTBNHGEYSwKkxKBlranIgZBWP/J9UXPZVTn/szllXyTwEikCiVLf6+oBgxs+1Am+qliyObR1/2qBGdWhXYjbFWRd+tNqtI53F0CQovhtxu7PSUqgawF6oYzd9AfrLGJ1xaoObGQ0Zs545ZBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4QFVZ+O+tlioF9LffoDUHwcRIj0WvDJy/GH+FGLLjY=;
 b=j0ecqu8qmVn28JmVLYVTXXGKzV5j0YDMC2NWzGvN5IsxdsCTEE9cmm7rVGxXTkagpLWYsLeDBbgDnunET2wQLrELrp0SGjA498xjSsuuoqjEpAcqhqMeEs9mFDFRaydz5cuQ5P31/aSz2dM45D9mp7vRiHo6CJw8RMxSnr8okwPiXo139orz5E4ljPqpisAaoN5FzztFtleY27hAfaNdmvA6ptREf6kgXUurv5nZ1QtNFywUkALrJjGQikFOnqgTUj57slv7rOy0hQzGrFcatvAnbQXE4y5nLGUzYN6BDrfzPa25rcDuMAuu20YdBkk9KJ7BL8XKVRFLA/DNJzxD2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by MW5PR11MB5858.namprd11.prod.outlook.com (2603:10b6:303:193::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Tue, 11 Apr
 2023 20:07:12 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651%3]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 20:07:12 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
Thread-Index: AQHZbIUjFpsvj8372UW9mz+ncz0DFq8mhygAgAACMYA=
Date: Tue, 11 Apr 2023 20:07:12 +0000
Message-ID: <0acba7b8416f79d8a392f15b0780768611967f20.camel@intel.com>
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com> <875ya2eq6b.fsf@intel.com>
 <ZDVz2Ppm1DgVbZ0p@intel.com>
 <20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan>
In-Reply-To: <20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|MW5PR11MB5858:EE_
x-ms-office365-filtering-correlation-id: 1aebaa3c-2bb4-45cc-b7ce-08db3ac856bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ovfVT4z+xdpbCMHGICxvHVn0z6LlQMrMN1C79INKsL7KxGJd9YJ6yBeL+H/HxtHifkxt4BojE4jscMSmV8EG/Ol+xy+EBshJjg5meka9Bby+T9s1v980qc3tDjaIIddW0gxwe3jju3QZfAzGl6JgluX6R8B2hD4x/LvDolSv5ekzGUyhsbOlaYA1Fd12fvuM7FjwjRVAW/7lodODu0j/JC1dW8JzcrL6c+HDRMeYqC9zQemdL4fGVkPFD9uzX7qpglhzWRt9F1DEKC7ljbZ3v0VDI7j8t5/NZFJygdl08yGi8iP4Rhcx4+MiuubWIMPbS9IHXIGU78Ja2/F3VR3Tt+k56icICYsPk+6BZK3H1c9ORd+ndfERcPUBBsLLGlYzEy1kUclCUv5QhJFFmvGVmvl2wFXNvxGGns9f2Nu0DCvw46e6EiINLudO8Cqa33/FvWYG3SXSmpivHcqdRH+/HCADPkUynMeWdeHYlvIcJMeEnU21rc8Lqirw73tQHvo3d6UG+hVaQC4KcaFsOAFQukKzEUocuI5uDvyXe/CcV2/JTeSZoIiVUaf6bNeccc6h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(39860400002)(366004)(396003)(451199021)(110136005)(478600001)(54906003)(6636002)(82960400001)(5660300002)(76116006)(8676002)(8936002)(64756008)(66476007)(4326008)(66446008)(66556008)(66946007)(38070700005)(450100002)(91956017)(41300700001)(316002)(122000001)(2906002)(38100700002)(66574015)(36756003)(6486002)(6506007)(6512007)(26005)(966005)(83380400001)(2616005)(186003)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGNpNklaM1JrV2dPdWQrc0VVZ1Rhc1lEcHUyM1N3VnUyNWNkN2x6bnloQlZo?=
 =?utf-8?B?d2FlRnMzS21vd1RSZGk1K0hOTjlCdUszSnNCWk81MWg2TGZLNFJDKy9VMys1?=
 =?utf-8?B?ZDNNOEhQd3BNOWlPWVl1cDNMelcvOEtHODFZaG5ETk5RRzZGNXJUMkFTYjNj?=
 =?utf-8?B?MTNkRkpqNXRPdklEaldubkl2c1huTlIrc0M4NlEwV2NDTXFzL25lT0x6V0N1?=
 =?utf-8?B?cVEwd0ZwOGVmVm81UTlTckJsMTUrRDY5S0I1UXZyb3d5eVgzOHIrL3FaU3E5?=
 =?utf-8?B?N1ZXYXI2bzhhQi9SbFBMMUs4Z1VlSUVmcVhTVzduS0NMencxU0d1alRNSGJN?=
 =?utf-8?B?VnA4NWdwV0ZsTEt0YkpxaEI3K3BlMDFvN1pnMUphUzBjSTFKOWdpQi9kTEcv?=
 =?utf-8?B?L2wvL0hFUldtUlhnWEl3aC90WXN2c05KQm9hMVQ5TW41TURZUVBYVm5TWXB2?=
 =?utf-8?B?NEFKOGtMalQrK2t3Rk9HUVo2K2FFdmhrNXltQ0RiL1FkL3p3OGkrdW1yL3BJ?=
 =?utf-8?B?ZXRRU3JOeVhZQVUwQnVkdEUvbUJiME4xMHBvenNQVDZHZEhTa2JOcDhsVGhh?=
 =?utf-8?B?WmxNdnVsbjVzckNtN0RPRmZkZ1hZMVVHemxYd21Mc3FYVnJQWExBWFVxQ1ZQ?=
 =?utf-8?B?S01SVFRxaUhJRzIvS2IwZS9Tc0w1b2N3WWlJQ2FyTmtTNFh2T1hFOXJRQmdO?=
 =?utf-8?B?QUdqSUJQbzE4Q3FXMzlBNmRKbEdMYXRWZkZqeHJvNHRsNzdVOElmV290OG1k?=
 =?utf-8?B?bmx2cmhPV21TUUxDT282bUxEVm9tUU5lTno5azdTKy9wSUlUR1lJeG1tU3g1?=
 =?utf-8?B?MDdDY0FZMFd5Rml0d1JRNkRsOGU0YVpwMXZKNDJ5WGVGNFpLZ2lsbGJ4aWVH?=
 =?utf-8?B?TFZjVU9pd00xTUFoNXd4WVZtRUNWWGJmK0NIZVovZXNhV1M5eU5aTWVERjV6?=
 =?utf-8?B?RDJ3MTBZREdNNTRtbThNNHRRWWcvbzFIREkxZ2pQQmxOMms5T2ErTzQ3RTdI?=
 =?utf-8?B?SmZyM3RyaWZGZDhpdkFBUW85dzYxcnUrTE0rbUYweVJqVzJlUU15TjhRNHor?=
 =?utf-8?B?aTBZaCtKZW9nQnpnVHd3YmRvQ0RCT3FMY29Ta0ZlT1c2cENEY2YzVzdOcG1U?=
 =?utf-8?B?WDJEeTJnb3U0ZVlaMi9mcUZiZ3Jra0d1L081cmY3OW9JS2s5ZU8ySW8xdHor?=
 =?utf-8?B?QlZ2d24wUGp6OTVTdEpTMHNJWThyVDZVQkREc1NQQUJIMzBjN3RQYkNqeVJX?=
 =?utf-8?B?dEtaSWo4QmZmYWY1WndJMXNueFdkOEZaOXFoQXB0dUpGb0Z3cFNHN0JBWUdW?=
 =?utf-8?B?Qm4xeTYzaUhJYWU3eThuU3EzRVhDcGQ4VFRUWEI5RDdZRE9IVmdHcG05YWZp?=
 =?utf-8?B?SFZvV1V6NlMzTm5aL3BEOW1POW5FdVFOREROamw1cHJyUWdsMkQ5UUFBRmlE?=
 =?utf-8?B?OVV2aEhyRXJwTnQ3Q24rSDJqUW9ud0tHckU0U3lxaFNySXZDbVNsR29OWkl3?=
 =?utf-8?B?eGNEeUJERWxEeTFFOW56RlJsQzNOZHRsUktmbU9ST1J6SmFERlc5OGVIMDBM?=
 =?utf-8?B?QUJPYnB0ZVZkdnB1Y1REMzBHN2s2SVE4bzRpVmJ3L1hBdDhVUGh1c0ZKZG9Z?=
 =?utf-8?B?aElWdUxjNWI0NktMMnNxQmJNSUJINVNaUjFtWUxXNmhSQ1BMSUhPMEI5S3Js?=
 =?utf-8?B?SFphLzVid0l0UUk1T0lyc3NRRWpSclh3RlYwZTlyR0xqOUJLNTdadlF6dlYr?=
 =?utf-8?B?dEJaOFZLWkM2WDN2d1dlbmJOYWluUC9jbUU2MzVZZDJsRWViL1lXUmxKdEsz?=
 =?utf-8?B?a3IrblNZQThuQ2JWMXRqMjhWSFpqZ21NNlFONEhKRzM3K211bkt4V0tCd2Z5?=
 =?utf-8?B?OG9GY2E4M2hCbDFxM2RWekE2WmF3VzhseElXZU5mMnFVU0YwWlBpT2J0V1My?=
 =?utf-8?B?UGJpbk0xNnJjM3dQMnU1cFdPSUpWa0lDV0lMQkFJaVZqT0x4bGdsUDU1WmMx?=
 =?utf-8?B?Sm1uaXRBRkhOSDNRaUc0V2R1eWlwcFh6Q0tWL3RkVUlIb1VydmRjazlzNmNE?=
 =?utf-8?B?T2Y2dEFaY2k1YjcvM05BdUNvb1RlM1RtblpqMjZjaEg1T1VOSTFlVTdpM3Rn?=
 =?utf-8?Q?5Q4sIKbkTjMbjkAEZdpvG4r3T?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <945209B6476FB6448AC43F0DF258F038@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aebaa3c-2bb4-45cc-b7ce-08db3ac856bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2023 20:07:12.5627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3HMqmzr8szRq7JGwhJNx8tvAcEhA1PRwmANGVQHJ4ZgnEw0nks2jaA54jfvkTRRNY6aAhzaPENL1I3IV3cgDMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5858
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA0LTExIGF0IDEyOjU5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFR1ZSwgQXByIDExLCAyMDIzIGF0IDEwOjUxOjA0QU0gLTA0MDAsIFJvZHJpZ28gVml2
aSB3cm90ZToNCj4gPiBPbiBUdWUsIEFwciAxMSwgMjAyMyBhdCAxMjoxNDozNlBNICswMzAwLCBK
YW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgMTEgQXByIDIwMjMsIFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gPiBPbiBU
dWUsIEFwciAxMSwgMjAyMyBhdCAxMTo1MTozM0FNICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToN
Cj4gPiA+ID4gPiBPbiBUdWUsIDExIEFwciAyMDIzLCBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+ID4gPiA+IE9uIE1vbiwgQXByIDEw
LCAyMDIzIGF0IDExOjMyOjE0QU0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6
DQo+ID4gPiA+ID4gPiA+IFN0YXJ0IHRvIG1vdmUgdGhlIGluaXRpYWxpemF0aW9uIG9mIHNvbWUg
bG9jayBmcm9tDQo+ID4gPiA+ID4gPiA+IGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKCkuDQo+ID4g
PiA+ID4gPiA+IE5vIGRrbCBmdW5jdGlvbiBpcyBjYWxsZWQgcHJpb3IgdG8gaW50ZWxfc2V0dXBf
b3V0cHV0cygpLCBzbyB0aGlzIGlzDQo+ID4gPiA+ID4gPiA+IGEgZ29vZCBwbGFjZSB0byBpbml0
aWFsaXplIGl0Lg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBJIGRpc2FncmVlLiBXZSBkb24n
dCB3YW50IHRvIHNwcmlua2UgdGhlc2UgYWxsIG92ZXIgdGhlIHBsYWNlLg0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IEknbSB0aGlua2luZyBpZiBvbmx5IGZvby5jIHVzZXMgYSBsb2NrLCBmb28uYyBz
aG91bGQgaW5pdGlhbGl6ZSBpdCwgbm90DQo+ID4gPiA+ID4gc29tZW9uZSBlbHNlLg0KPiA+ID4g
PiANCj4gPiA+ID4gUGVyaGFwcy4gQnV0IEkgdGhpbmsgdGhlcmUgc2hvdWxkIGJlIHNvbWUgY29u
c2lzdGVudCBwbGFjZSBpbiB0aGUgaGlnaGVyDQo+ID4gPiA+IGxldmVsIGNvZGUgd2hlcmUgYWxs
IHN1Y2ggdGhpbmdzIGdldCBjYWxsZWQgaW5zdGVhZCBvZiBkcm9wcGluZyBlYWNoIG9uZQ0KPiA+
ID4gPiBpbmRpdmlkdWFsbHkgaW50byBzb21lIHJhbmRvbSBzcG90IGluIHRoZSBvdmVybGFsbCBk
aXNwbGF5IGluaXQgZmxvdy4NCj4gPiA+IA0KPiA+ID4gQWdyZWVkLg0KPiA+IA0KPiA+IE9wcywg
SSBqdXN0IHNhdyB0aGlzIG5vdywgcmlnaHQgYWZ0ZXIgSSBjYydlZCB5b3UgaW4gdGhlIG90aGVy
IHRocmVhZC4NCj4gPiANCj4gPiBTbywgcHJvYmFibHkgZ29vZCB0byBob2xkIHRoaXMgYW5kIGRv
IHRoZSBlbnRpcmUgcmVmYWN0b3IgdG9nZXRoZXIgb2YgYWxsDQo+ID4gdGhvc2UgbG9ja3MgaW5p
dGlhbGl6YXRpb24gc28gd2UgZmluZCB0aGlzIGNvbW1vbiBjb25zaXN0ZW50IHBsYWNlIGFwcGFy
ZW50bHkuLi4NCj4gDQo+ICJpbnRlcm5hbCIgc3cgaW5pdGlhbGl6YXRpb24gb2YgZGlzcGxheS1y
ZWxhdGVkIHN0dWZmLiBJdCBkb2Vzbid0IGJlbG9uZyBpbg0KPiBpOTE1X2RyaXZlcl9lYXJseV9w
cm9iZSgpLCBpdCBtYWtlcyBoYXJkZXIgdG8gZm9sbG93IHRoZSBzZXF1ZW5jZSBpZiB3ZSBzcHJp
bmtsZQ0KPiB0aGVtIGFyb3VuZCwgbGlrZSBoZXJlIGluIGludGVsX3NldHVwX291dHB1dHMuDQo+
IA0KPiBCdXQgSSBkb24ndCBzZWUgd2h5IHRoaXMgY291bGRuJ3QgYmUgZG9uZSBpbiBhIGhpZ2hl
ciBsZXZlbCAic3cNCj4gaW5pdGlhbGl6YXRpb24gb2YgZGlzcGxheS1yZWxhdGVkIHN0dWZmIi4g
IFNob3VsZCB3ZSBhZGQgYW4gZXF1aXZhbGVudA0KPiBvZiBpOTE1X2RyaXZlcl9lYXJseV9wcm9i
ZSgpLCBlLmcuICBpbnRlbF9kaXNwbGF5X2Vhcmx5X3Byb2JlKClbMV0sICBhbmQNCj4gbW92ZSB0
aGUgZGlzcGxheS1yZWxhdGVkIHRoaW5ncyBmcm9tIGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKCk/
DQo+IA0KPiBJbiB0aGF0IGNhc2UsIGZyb20geGUgd2Ugd291bGQgY2FsbCB0aGlzIGZ1bmN0aW9u
IHJhdGhlciB0aGFuDQo+IGluaXRpYWxpemluZyB0aGVzZSBmaWVsZHMgaW4geGVfZGlzcGxheV9j
cmVhdGUoKQ0KDQpTZW50IGFub3RoZXIgdmVyc2lvbiwgYWRkZWQgaW50ZWxfZGlzcGxheV9sb2Nr
c19pbml0KCkgdGhhdCBpcyBjYWxsZWQgaW4gdGhlIGJlZ2lubmluZyBvZiBpbnRlbF9tb2Rlc2V0
X2luaXRfbm9pcnEoKS4NCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTE2MzI2Lw0KDQpJZiB0aGlzIGlzIGFjY2VwdGVkIHdlIGNhbiB0aGVuIG1vdmUgdGhlIG90aGVy
IGRpc3BsYXkgbG9ja3MgZnJvbSBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZSgpLg0KDQo+IA0KPiBM
dWNhcyBEZSBNYXJjaGkNCj4gDQo+IFsxXSBJIGRvbid0IGxpa2UgdGhlIG5hbWUsIGJ1dCBpdCBm
b2xsb3dzIHdoYXQgaXMgYWxyZWFkeSB0aGVyZQ0KPiANCj4gPiANCj4gPiA+IA0KPiA+ID4gLS0N
Cj4gPiA+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCg0K
