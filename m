Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A96D636E5E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 00:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 307E010E653;
	Wed, 23 Nov 2022 23:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6749710E653
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 23:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669246110; x=1700782110;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=qVOIhIj8tTb6DUi1NVuHpBuix9UVR8JT98uMgJjCtGU=;
 b=S4fX3PcfGLFlY6/B9ofy7wtX/HdslUKgVlfCKkozfS7GKOS0l2nGzy/x
 GQBzvnUE8Sx4f0rJvmo1pkPZ3qoe2/L/lMFCr5aUXz0NhYgiSWiMtxbAm
 abqEPv6D2RQNKVFLN5ct9YYVZquDw4pd2cR9kfcz6z6iFBfPmyA8jDmqW
 XXbR4BGU9kfbZ8Nwxbc0ZD/LLaD8UxL/h8xi5Ff8uMAIPEMs2r+QiY9/b
 IwzgkkrB5H/bOzrV8qliou4LngOGTCmtAa4Ta5nYhDuxEHZ9pj3/6ROC9
 6VEJtWlKSybJHdPh0ZfBwF8Sn63lIfx6JFQ46BsNmN/cUpXC6PFLSYmvP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="341064627"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="341064627"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 15:28:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="816650669"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="816650669"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 23 Nov 2022 15:28:29 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 15:28:29 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 15:28:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 15:28:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 15:28:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T25cmeorKCB0aZeM+YuItp4Xjv71n5Nt+fUWTLTq4ZB4Yk3vGIER5LvdxAyaiBrQpDVHGdsFxx4dXIo+S2PE+d5yeZ7OEoPr7bXqq6PpzB4sU7uKzIfyGZVhPUkUBLQ0gSLcn2A4baPSvxEpeyNqCtVDfCW3BMd/S1VJUmxHBKv9mMsgtPW9VTvrKXWSxgczrv52IUpn+KlQHUTm4izq8x6JdLTEQ/Mrsv4JX30pvXQyyrw6e2Ee2b/1Fny27t3DUwuUPuNEs9UTA05kcnc739k/omTPN66QyYWgehCBGmlj88gnPVS4gnDhPIpHzZ7Sy0C0Mv0JYKPOqBu790LNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qVOIhIj8tTb6DUi1NVuHpBuix9UVR8JT98uMgJjCtGU=;
 b=CjdDPvaY4hPrjMfcW0INF/2X5eGKn6mZXoP5HnAgdN9Ozhep0s98I5blkehZ0Bk/3rg3zTh6Ol9prgB8vEV9meAXp4Mxu6DpgeeHK8SAxSBSDXC9KQyT3ny+t2z7zA8NgoUXl2JgyfumpRxDDvA1nkgWyLQkGlJ23y/eRB3qm8NZL9i6z9T4iP9/Hr2mesFcJb/tjKBWzS3q5Y4pu9pN4/6h8/yIfcq4L+J7RS6U6YKb4kHGHyTd9MJ0hTgzdn4lz+fbmsqB2ZIYTZOParTKhMoQSuxg/k+lAzKT6Fwgmn2d5opCIu0EqlQOMPZiS0bueD9bUjFung8y3PC9ZbeU0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CH0PR11MB5347.namprd11.prod.outlook.com (2603:10b6:610:ba::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.15; Wed, 23 Nov 2022 23:28:27 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%3]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 23:28:26 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "justonli@chromium.org" <justonli@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/pxp: Invalidate all PXP fw
 sessions during teardown
Thread-Index: AQHY+uWGcVbYHjbJPUObFEHops25/K5KGQ6AgAMYaoA=
Date: Wed, 23 Nov 2022 23:28:26 +0000
Message-ID: <a9d5f4f1d0bc0d975860595a066cb3d4b1d6b781.camel@intel.com>
References: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
 <20221118003631.1523764-2-alan.previn.teres.alexis@intel.com>
 <8927195aa625eb41665d3bfdf49644fa6cde46bf.camel@chromium.org>
In-Reply-To: <8927195aa625eb41665d3bfdf49644fa6cde46bf.camel@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CH0PR11MB5347:EE_
x-ms-office365-filtering-correlation-id: d7f07b88-f661-4ebe-0fd7-08dacdaa6c31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xk3tp6h2QFzLNsuQZsTDItVIOcxZ5i4KByUAT2Ip1tNyTFeaSJoJhKVJy4/mdHV3i7vknFGqCVsamLJfXJakQdE5W2xxaxd0A7DTKjIrc67JQZRpjUc25u5HLtBe5YhzA99ZpzLiRw42865nqYOzV51ncmNCliPcgaWJW9XrKarOudYKnq9lS7gQVgl8+Ib8sClHG8qVxXWWo2qZb42p+pZij7RGlgPfO8yxmmT5zc5ktHYXZ6mFDWLHZBD7cXUsWDzJOoWoaOVHUPiyRKPDy/s2T4ceo9oiLr+3YdyCU7O2RKzrY5cUAu4g3FUvyQhGhTZk3Xly9GIqx483Im7CRNBuMtZHFRFCJmov1nDrduKoLTmoh90UZvc4MnYPNqkvGKnr5Eg1PCMN7IjXMYWtTil+nAHiRUz5+Ey1chprXHq4Zl1iSBsN9V+7CP9EzKJniVUyXkRO1o8oOQAtfuHgbjBMZqOOS5YMFl4OclNgW3LkpUyQXCOkMeAR3Gn+Dz9oxrmsHLFZ7bJG7b5pREJYEoG85Yv1uqXcQCBIuSXc2vyAJ0g+H0Ub3RN823PY4XJleW3M2B5uBlNck081fYga0KxNBtuYDmvM1OC6jAfvbUm1DcbMuMc3jiSCnR52eGMWOOp8kn+VD9cc2Te/ArWCT8ukuNIW5VtP52hSZG/HblGxpxpad/7khNoive3YJcBAlYAmKEag9T4xcJpKnCXZOQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(136003)(39860400002)(396003)(451199015)(86362001)(36756003)(4744005)(186003)(4001150100001)(2906002)(5660300002)(6512007)(2616005)(83380400001)(38070700005)(122000001)(38100700002)(82960400001)(26005)(91956017)(76116006)(8936002)(71200400001)(6486002)(41300700001)(66946007)(316002)(64756008)(110136005)(6506007)(478600001)(8676002)(66556008)(66476007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDZKWWhtenRKdzVZQ3psVGhCSXM0US80aWF0MHErR1E3bE1rZFdsZHlxV3Uy?=
 =?utf-8?B?TWJyM3oyZHFhWTNnRFdUN2RVRTdNcW41ekp1dG5SYmRIZXNxNlRuWkRnaWtr?=
 =?utf-8?B?MlJOa2Fuc0FZVU1VNU83Y3MwRkFOWisra3B0U2pGY2VSeVlNTDhBc2pCaVlB?=
 =?utf-8?B?UzhVQXkraklvTTZLMHFPU3g3Yit2V1UzV25qSVBTM21OMCtqUm5Pb21JRTha?=
 =?utf-8?B?bWlHcTNnQnY2dTZXQlJFUk80R1VQVVRMK3VJdzBmS1RjRGNoZGpNRi9DS2VL?=
 =?utf-8?B?NGN1TlVYZ0NaZ1lKTXpFZmhMNC9NN0FGWHRScFF5cUk4azBxNlhxYWlTYkJj?=
 =?utf-8?B?NHlVZVE2MFRPMzZqSmwwaktxVXFrb1pibXBNVXdFNVdxNUI3UE52TE9Eck91?=
 =?utf-8?B?eXYrVHRWOG5YMlZTUjR3MmpmTE5XeUU0WEVKME44MjFLZmxIRlFMS0ZLaWla?=
 =?utf-8?B?bHkreDlEdktCaEdBc25JWStsN1VpUXg1S3Z6TmVIc1poVW9OcHRKV29LV29l?=
 =?utf-8?B?RUE1N2xQVTdXd2twRUVFaG0rMzJSdEJacUo3OVg1cEt1cm96NjR0Ty9QYzBy?=
 =?utf-8?B?YXROT1lFSjFFcG4xRERCN2UvMUw0UUhzbCtrSHNMWFREb1YwaUJSTDhtTWpK?=
 =?utf-8?B?azVzOWhKUGpYSkVJa2dSRFRUK0RuamVhOThOVVl4aHVCS2hXUnVibTlzZUw1?=
 =?utf-8?B?akh0YkF3TEMxanluK3NqelQ0OVBkdjAxOHlCN2tOck9UemFXbDNwa01QK3I0?=
 =?utf-8?B?Tk5EaU1MK1VqN1dlNTQ0K0FqQ2VwVlNtT0t5SDVtTC9CQ0NFeGszZ0I0T0lP?=
 =?utf-8?B?bnBjcGw1N2QwWENCdTdMM0cva3Z1Z2ZseVpQSXBIL1ppQlFyb2g0VVBaMXpm?=
 =?utf-8?B?Tm1WSDIyZ0IxY3VacEIvNjY4T3lrdW1MdnlibnRmVzFpeDdKNXAzTWFtSVRm?=
 =?utf-8?B?VUxIaWZRYTBjTzVvSUZuc0NrRG9KM3lOTE5xNUt0ZS9yZkxkOUZqcVVEK0xX?=
 =?utf-8?B?WHJFRU9pOWF4RzZicktWcjRLQnJMYU1TdTdGYnRWcUdZVmlBdDNwMGhySkRs?=
 =?utf-8?B?L1FmRUgveXJ0V0hzT2lTK3ZYeWIxaXlncXhDTG5IN2JCbyt0QW91Z01RdXpi?=
 =?utf-8?B?cS96ZzVCOWdpK0lObS9FSWt4OU92SEJQQVF6UFBzWXY4QjNVcHpYb2dheWVM?=
 =?utf-8?B?UXBtMDVvWjVQY3pRZkFHZkd1UGttdXViR3kyZ01CcjBNTTVVRnhIeUlBS0FG?=
 =?utf-8?B?QmVmOUR1cGRtYmxBbUNkQWxsYmw4ZVFWYVdtRGRqSVRodnhwNjlOREk3YnJM?=
 =?utf-8?B?UWFxeExKc3lBUk05UVZYZXBNR0NiZkNQK3BLK1FpdWxLNXF1WWJRYiszem9r?=
 =?utf-8?B?TVIrbWtHVEFYL00rYWhkRnM5Z0prK0RkN0d3YzJFV3lNT0NjRUxuM0JPekxP?=
 =?utf-8?B?Q0FGc2MrOU55alVPb1B3cXdxdXhFNlY3ZElPVTVXMzBubld5V2lVcG05QzNX?=
 =?utf-8?B?Y3lWK21US2R3Y0xaZ3hsbTBHcFJyVDJ6YzRzY3NWZ3Q3Zjl1eDlqb3R5MFBM?=
 =?utf-8?B?bUxtcU04VlJ3OW54T3VXVnF1SEdUMFc5dWpXRHNEUittbUFrc1hYRjZGK1ZM?=
 =?utf-8?B?dUM2bDhyN3B3aGdaYjJ4MVBtYlZaRU5oMGoyZFMzTFNNdkJJWTNlQUZtMEF4?=
 =?utf-8?B?M0F0R1ZYWU5HVWVTT3I5QlRZL0JIem1mWFJwdTdKZUp4K0F4bTIyTTZQekdG?=
 =?utf-8?B?Qmdzbi9MaHJ0SUlUa0R0TG5ERm53TXVlRCszbGJrOUJNclBkWjdyL1dWNWxH?=
 =?utf-8?B?WWptaXk3VDZFL0hMS3RkdzNFWE1lcnM5R3A2a0RvSC9Na2VNek5yT04zZmx1?=
 =?utf-8?B?WUE0T0pXemJkb0dPOUNlSjdHcW9hOGhWYU1reVVucngrVVhKMDlTelRJL3Q5?=
 =?utf-8?B?a3R0NmhUTXFVejErQ3RWL1hNR0plUjg1c1N5Y21ISTJHdUtCTWEycDRhVzZN?=
 =?utf-8?B?NHQvR056KzVDSk5nbEw0OWhDNmhlM1dueHlEVWJGV1M4d3lZam83V2tma083?=
 =?utf-8?B?TjNyY09qME1oVVVsVEZibHNyeFc5QVlGNnpjSk5ra0dBS0FQSEQ2dUpYOEsx?=
 =?utf-8?B?Z2grUHdtcmR0QXNWOS9WZm5HdU90WHFyZ3hKTTNRWTFRR2Jld0t3bDNmc09D?=
 =?utf-8?Q?xMlgY7T4PNJzFM15XSSBGyM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A749EB9AF86EE442B9CB638D3CF283A5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f07b88-f661-4ebe-0fd7-08dacdaa6c31
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 23:28:26.9479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x+05beuUqXOOQFaJc33xfriJ+RX+QPaWf3Kai2TbUZ9hPt4BneTaEa4boHxU/lMRtfh4VWrbO4M2Hgws17pGC6FoG5AVbJPvY+XL0fXrIi6FBIorK/ddPobMFKsRPuRH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5347
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pxp: Invalidate all PXP fw
 sessions during teardown
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0yMSBhdCAxNjoxNCAtMDgwMCwgSnVzdG9uIExpIHdyb3RlOg0K
PiBPbiBUaHUsIDIwMjItMTEtMTcgYXQgMTY6MzYgLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0K
PiA+IA0KQWxhbjogW3NuaXBdDQo+ID4gK3ZvaWQgaW50ZWxfcHhwX3RlZV9lbmRfYWxsX2Z3X3Nl
c3Npb25zKHN0cnVjdCBpbnRlbF9weHAgKnB4cCwgdTMyDQo+ID4gc2Vzc2lvbnNfbWFzaykNCj4g
PiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCBuOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKg
wqBmb3IgKG4gPSAwOyBuIDwgSU5URUxfUFhQX01BWF9IV0RSTV9TRVNTSU9OUzsgKytuKSB7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3B4cF90ZWVfZW5kX29uZV9m
d19zZXNzaW9uKHB4cCwgbiwNCj4gPiAoc2Vzc2lvbnNfbWFzayAmIDB4MSkgPyB0cnVlIDogZmFs
c2UpOw0KPiANCj4gV2hhdCdzIHRoZSByZWFzb24gZm9yIHRoZSBpc19hbGl2ZSBib29sIGhlcmU/
IEluc3RlYWQgb2Ygb25seSBzZW5kaW5nDQo+IHRoZSBpbnZhbGlkYXRlIGNtZCBmb3IgdGhlIGFs
aXZlIHNlc3Npb25zPw0KPiANCj4gQWx0aG91Z2guLi4gZm9yIHVwc3RyZWFtIHdlIHJlYWxseSBv
bmx5IG5lZWQgdG8gaW52YWxpZGF0ZSB0aGUgQVJCDQo+IHNlc3Npb24gcmlnaHQ/DQo+IA0KPiBK
dXN0b24NCj4gDQoNClllcyAtIHdpbGwgZml4IHRoYXQgLSBvbmx5IHRoZSBkb3duc3RyZWFtIGNv
ZGUgd291bGQgbmVlZCB0aGF0IGJlaGF2aW9yLg0KDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHNlc3Npb25zX21hc2sgPSAoc2Vzc2lvbnNfbWFzayA+PiAxKTsNCj4gPiArwqDC
oMKgwqDCoMKgwqB9DQo+ID4gK30NCg0K
