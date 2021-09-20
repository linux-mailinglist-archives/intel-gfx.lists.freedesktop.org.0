Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA64B41199E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 18:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4046E56A;
	Mon, 20 Sep 2021 16:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13ED26E56A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 16:18:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="202667221"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="202667221"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 09:18:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="652622931"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 20 Sep 2021 09:18:16 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 09:18:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 09:18:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 20 Sep 2021 09:18:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 20 Sep 2021 09:18:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EzYOkwffw8CgMwGmm0dajoZvn0acQB51IU4/QOSyQeFAOPRA6+fNDwsgIfVtYqvoCCpF7klmB0RHriD+v+TCrc80NtR5lNT8AQyMe7cZbXGa9jC4wjZnnAa583rRRfYBLQx3Uc9T17MDIivY7V12nZ/a56Bi3jeqG+0GcweKOCKEphCayz+WEqNkx0KCmZR9vygsuakLWCbHqsBZk1QgLSjisNQ/Vhv5BWHnqCd6euJHaAhvtMgtqS7E0GoFNYxHgbCpY4IbasU5xYp93r4jfyBMWo+7XAdofR5KZo1S9ZlVF7Pb/nCHCedcNF4TExw+AbAaMOGh3Mc1Fnwn7jM3IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=8ov5mshPGK1vEzqOcvcEJ0C/vHUrOs6QjirPA14wUd8=;
 b=i74lSt0GWAkjUJ13+hldJmSOEJF9IMiEycFNuc7xujWDeFW/Pyw+ljhcPZlzwpOg588pFIu/7oH8SVZqIbym9V+dOE/dBYuYbO10z4wBkdFKY30GQPZ4sA9vNC3SKx/iErdrHq84TrwWh4XWHH7/Q6KyPC2NprHp7Bh9qEetPK9B4RgKEShfgBtGRHzFsH+cStX07yfEKEH+9e9rHaP6b6uPeAz9ItOfR3OOtoU2IDoXQD1gFThGMaBNhrWq8J7UqEI52Hl1L5imH2zR+NNkJx27lgk0ZeKMK5H0tgUPeaMG3Zkj0+UXMNgiN4BJ0+XF2AFC9buB11TQhzP09fEj4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ov5mshPGK1vEzqOcvcEJ0C/vHUrOs6QjirPA14wUd8=;
 b=gT9EEZQziQInlcgK50bu+EHUCclIKIcRx2GCFGPOWRfQ8CEBiZ7tF+1OAnEjiKxonqZxeaUMVAfSbwlBT0/il+egECvvYwF8H/wAyGdv6930d13f0qZ747gjtndH6r6+NTuI7aypiJfJxhZj0014II4izFWbvDFzu0zrwKmuiCs=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BY5PR11MB4196.namprd11.prod.outlook.com (2603:10b6:a03:1ce::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Mon, 20 Sep
 2021 16:18:10 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7d17:fce5:7d65:61e1]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7d17:fce5:7d65:61e1%5]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 16:18:10 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "sean.z.huang@intel.com" <sean.z.huang@intel.com>, "Huang@freedesktop.org"
 <Huang@freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH v10 09/17] drm/i915/pxp: Implement PXP irq
 handler
Thread-Index: AQHXrERwDNWUndgMT0yT4YGWopMtdautGfkAgAAD1gA=
Date: Mon, 20 Sep 2021 16:18:10 +0000
Message-ID: <f998c74c65c3a30ae2e6e0b9f68d551b0d92b063.camel@intel.com>
References: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
 <20210918042008.29468-10-alan.previn.teres.alexis@intel.com>
 <YUixKKXkHyUY0bF3@intel.com>
In-Reply-To: <YUixKKXkHyUY0bF3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce042170-d200-4015-59ad-08d97c523d4c
x-ms-traffictypediagnostic: BY5PR11MB4196:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB41964C8A80EF2003A591C2248AA09@BY5PR11MB4196.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7mKUpL7EKfGp0ozIkMW7wSqA90Ota4KCvzRKIoCk3zhc41JRRPKiwhaDXgA5LibuqTpEhEXvvJllL6h0MHuaWLay4WlfVz9B9Tz50uVbwX8G8Nn3KNcZzeH1UokxAmIe39tEhAVskLDJhLahiuEu+Wada5b12gyOfs7W16mdfIEG+YCbwkRYPSDrtaEvco2QtAvZNvdMCSIXHw4dIJ3StjyfRNb8WwRvZnD25AFY42Eiu9BBd6BxSUYJYWQEkstUeMSV+BrtNqQ8nUFPj5x6SnPbDn5oqSHdB3lob+4xpm5xi5xftYE3NtDIarC14ZVxCynzQzzfQVbgVHZ2k27ze8L0lhofRUu8cClwaHhRbHuDaylIhUn7f/3UJDuzhyU4BaYj6GF7XtHOPscdpjPJfWRs0jcDljTu9aWNNB0bBWWUhBlgzgPR4ueTipN7AqPdd/eoi8Da8aL1vDrOqqjObUSZ7Ao1lJ1l4R+RrP33GfsyNryKK+Dil5OhNv/mL/qh60n6NBrXN7dy4njB9BhhAmvfS0kf5E5x7yDjEalpysguVALQw29Q+am7kL8st4/ZhjTNFnWMQqc85ZpsANV16BPsgsW/l3N9C9YNwKRdW0Q+a1TPWLSji03cBU5lOwJ74UW8IaA4Iai+AYZnbknoozoL2QInPbJJV5Jugl3DAmllqQxYeEJLVZVA1QgX3Cti7/xeta4ldjeZ6ILHZYr2ag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6636002)(6506007)(36756003)(66446008)(5660300002)(2906002)(8676002)(86362001)(71200400001)(66556008)(2616005)(122000001)(6512007)(508600001)(64756008)(8936002)(186003)(316002)(6862004)(37006003)(76116006)(66946007)(54906003)(38070700005)(6486002)(38100700002)(26005)(4326008)(66476007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1YzZGQwR090SDFsdkF6bUR3YXJzMlE4UW1WM0RyUWZSSU94MG5reWJvbS9W?=
 =?utf-8?B?aHVuNWwyV0duUXhFUlY3Y0w4elVsQzdlbnRNS0FQWjdCb3pRampncHdxRTZQ?=
 =?utf-8?B?eFoxTU1WUjJDeFZqRVVFQ3hpb2ZNMVZ2bFh6bGxBdkNCQThZWVhLYXFSK0Fa?=
 =?utf-8?B?NTlYR3o0UmY1ZDB6QWh3SVRBdnB6WjVsTzBCUFdVWDFZU2E1TmtaWlFZalhS?=
 =?utf-8?B?ZVV5alBGV3UrZ0dvMHdEWXVCV2hvZHBCT3pPajBEaEFCSUlvTVdibmNyT0J5?=
 =?utf-8?B?ZkxMdm83Nk1sRFAyZ1pIUWJYcGsvWk1pdSs4NWhtVjQrNTFSSlFVVHBIcWp1?=
 =?utf-8?B?MGJ3WEVCaHduRkdNS096ZkdzN3NSTzJSclVEMzZvczBXVTVuTlBkYlFEQkw4?=
 =?utf-8?B?Q1Z3VmE4aGt4bDlXdW9EYkpqNng4R2VCK0RuYklyRXRVRHpiUVJpN3pFd1BU?=
 =?utf-8?B?YWwzcWRFcGNMeXNnYVNza2hJZDdBY0tqVE11NjhBU3pQNmNsMjZDazA4QllJ?=
 =?utf-8?B?Mm1YaURPVHZuV3poZGFzNU5ackwvYTlldnR1Q09leWs3bTZFUjFaanJjUTF6?=
 =?utf-8?B?ZDBrUE9vaHRxYk0rWkRVRUJyTVBHRDBuTzY4MStNbVo5VFRNUTl1VS9JTzlJ?=
 =?utf-8?B?c04veXJpejltQzdtTDhSQUVtTmdyd3Y1SW5kS2NYK2dGL3NvVzhacGxKTnhJ?=
 =?utf-8?B?cDVOT1FWemwyUGJkMy9pR1RGRzhFbHA3YVEyZmh0ZkFtRzg0MjMrdjlhU00y?=
 =?utf-8?B?QlRaRmlkbmFiS0h5enRKM2dGZHNrakFVUGJaY0U5VmdoQVZxMnhkU3FEcnEz?=
 =?utf-8?B?L1p1aWFvamovZ1Niem5heHR2YlBhVDJwV29najBsN1ZHam0zaVhDYWN1SVk5?=
 =?utf-8?B?ZStROFk3enpEVlMzdDFRT3RxRWpldEFCYUFDRXBBdHJUSGhXUy9CR1pJbVh6?=
 =?utf-8?B?YWwrNEF4SWU4V2VUa2pIdmRUdUpCazUrc2txZVNWNnpKTUkySU92YTRBdU5H?=
 =?utf-8?B?VXN1bnh0TDUyK3kyY3BEbHpGL3pBZmZLV2ZCdUVsaG5KQld4TGpzYTh4Nmoy?=
 =?utf-8?B?WGZBYk9XWkRkeDJBZ05WRnhaOFNuS3ViWUZhbkYyUTVDK3VGTzhUUytQK2l3?=
 =?utf-8?B?TzVmQ09keEs0dlI2bjBsbStqTkFxSFRQYm1EN1JCWVd1SVNMRFJRMVFGNjdk?=
 =?utf-8?B?bHA0Z1VGRXV6VHVMMnNRaUlFM0h3N1RuU1RmcDVJczIwM0xaZEJKN0YvYkVW?=
 =?utf-8?B?K1FqK1FmRGpLUjJ4RUt0Q2lGbm80bHU3bVFxanNidGhuOTRoeVdqSFBnR2VG?=
 =?utf-8?B?ZEsvdzF3a21GcVMyRmlsK0dFdWdYM1AvWGcrbTQxVGRWa1lLNGM0czU2ZE1M?=
 =?utf-8?B?a2l5ZWZJYnVXWDFNcGZXYlh5K1lxN1ROQXUySzh0QUxhNFdvVno4M1JOeGRk?=
 =?utf-8?B?QU9rb1k0b2t0LzZ3akV2bGpEOW9EdThaN21LejBQUVUzQUt4NlJFTWxTYVk0?=
 =?utf-8?B?M29rampWcEVrRjI1bWpKVmRFQVJHNjNlTTBsOFZUcGUvNit3ZTdKcld1TkFN?=
 =?utf-8?B?ZG03WTVvOXRMZy9aRngrbjFHM241QllhaSs5dnBnM242dHllR2xUNjlMamxv?=
 =?utf-8?B?bVl3T0kvd1B6V1IrcUpERHJQV2t0QWVMa1BlaGhWdTlldmw1MkthUU1Qbkx5?=
 =?utf-8?B?T0Z5QlFjajcvZXZjZThoSGUrREN3SjluV1hLaENGalhRdjc5cVBBaUQ5Z290?=
 =?utf-8?Q?WDEw8qbgKN+nY5lVzAZSd7PCVJMScgYXz4DoSlN?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BD5797CB0DAC6C4292A9A3F53485B7D9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce042170-d200-4015-59ad-08d97c523d4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2021 16:18:10.6322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mBEfOniWlZ1DmrW5EtXrPeyzu8wrcFmmrKadLT4ogjzd53ep/dcPgCcu7ds37sbvLJAS5HI+ejlbg6HClIqkBbNScUqoA7WsfVhfkJDoCzc7E594MDKca+lEvQ2hOBpK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 09/17] drm/i915/pxp: Implement PXP irq
 handler
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

DQpPbiBNb24sIDIwMjEtMDktMjAgYXQgMTI6MDQgLTA0MDAsIFJvZHJpZ28gVml2aSB3cm90ZToN
Cj4gT24gRnJpLCBTZXAgMTcsIDIwMjEgYXQgMDk6MjA6MDBQTSAtMDcwMCwgQWxhbiBQcmV2aW4g
d3JvdGU6DQo+ID4gRnJvbTogIkh1YW5nLCBTZWFuIFoiIDxzZWFuLnouaHVhbmdAaW50ZWwuY29t
Pg0KPiA+IA0KPiA+IFRoZSBIVyB3aWxsIGdlbmVyYXRlIGEgdGVhcmRvd24gaW50ZXJydXB0IHdo
ZW4gc2Vzc2lvbiB0ZXJtaW5hdGlvbiBpcw0KPiA+IHJlcXVpcmVkLCB3aGljaCByZXF1aXJlcyBp
OTE1IHRvIHN1Ym1pdCBhIHRlcm1pbmF0aW5nIGJhdGNoLiBPbmNlIHRoZSBIVw0KPiA+IGlzIGRv
bmUgd2l0aCB0aGUgdGVybWluYXRpb24gaXQgd2lsbCBnZW5lcmF0ZSBhbm90aGVyIGludGVycnVw
dCwgYXQNCj4gPiB3aGljaCBwb2ludCBpdCBpcyBzYWZlIHRvIHJlLWNyZWF0ZSB0aGUgc2Vzc2lv
bi4NCj4gPiANCj4gPiBTaW5jZSB0aGUgdGVybWluYXRpb24gYW5kIHJlLWNyZWF0aW9uIGZsb3cg
aXMgc29tZXRoaW5nIHdlIHdhbnQgdG8NCj4gPiB0cmlnZ2VyIGZyb20gdGhlIGRyaXZlciBhcyB3
ZWxsLCB1c2UgYSBjb21tb24gd29yayBmdW5jdGlvbiB0aGF0IGNhbiBiZQ0KPiA+IGNhbGxlZCBi
b3RoIGZyb20gdGhlIGlycSBoYW5kbGVyIGFuZCBmcm9tIHRoZSBkcml2ZXIgc2V0LXVwIGZsb3dz
LCB3aGljaA0KPiA+IGhhcyB0aGUgYWRkZGVkIGJlbmVmaXQgb2YgYWxsb3dpbmcgdXMgdG8gc2tp
cCBhbnkgZXh0cmEgbG9ja3MgYmVjYXVzZQ0KPiA+IHRoZSB3b3JrIGl0c2VsZiBzZXJpYWxpemVz
IHRoZSBvcGVyYXRpb25zLg0KPiA+IA0KPiA+IHYyOiB1c2Ugc3RydWN0IGNvbXBsZXRpb24gaW5z
dGVhZCBvZiBib29sIChDaHJpcykNCj4gPiB2MzogZHJvcCBsb2NrcywgY2xlYW4gdXAgZnVuY3Rp
b25zIGFuZCBpbXByb3ZlIGNvbW1lbnRzIChDaHJpcyksDQo+ID4gICAgIG1vdmUgdG8gY29tbW9u
IHdvcmsgZnVuY3Rpb24uDQo+ID4gdjQ6IGltcHJvdmUgY29tbWVudHMsIHNpbXBsaWZ5IHdhaXQg
bG9naWMgKFJvZHJpZ28pDQo+ID4gdjU6IHVuY29uZGl0aW9uYWxseSBzZXQgaW50ZXJydXB0cywg
cmVuYW1lIHN0YXRlX2F0dGFja2VkIHZhciAoUm9kcmlnbykNCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBIdWFuZywgU2VhbiBaIDxzZWFuLnouaHVhbmdAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+DQo+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPg0KPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
DQo+ID4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPg0KPiA+ICsjaW5jbHVk
ZSAiaW50ZWxfcHhwLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9weHBfaXJxLmgiDQo+ID4gKyNp
bmNsdWRlICJpbnRlbF9weHBfc2Vzc2lvbi5oIg0KPiA+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3Rf
aXJxLmgiDQo+ID4gKyNpbmNsdWRlICJndC9pbnRlbF9ndF90eXBlcy5oIg0KPiA+ICsjaW5jbHVk
ZSAiaTkxNV9pcnEuaCINCj4gPiArI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+ID4gKw0KPiA+ICsv
KioNCj4gPiArICogaW50ZWxfcHhwX2lycV9oYW5kbGVyIC0gSGFuZGxlcyBQWFAgaW50ZXJydXB0
cy4NCj4gPiArICogQHB4cDogcG9pbnRlciB0byBweHAgc3RydWN0DQo+ID4gKyAqIEBpaXI6IGlu
dGVycnVwdCB2ZWN0b3INCj4gPiArICovDQo+ID4gK3ZvaWQgaW50ZWxfcHhwX2lycV9oYW5kbGVy
KHN0cnVjdCBpbnRlbF9weHAgKnB4cCwgdTE2IGlpcikNCj4gPiArew0KPiA+ICsJc3RydWN0IGlu
dGVsX2d0ICpndCA9IHB4cF90b19ndChweHApOw0KPiANCj4gdGhpcyBjb21waWxlcywgYnV0IEkg
ZG9uJ3Qgc2VlIGhvdyB0aGlzIGNhbiB3b3JrLg0KPiANCj4gc2hvdWxkbid0IHdlIHVzZSB0aGUg
Y29udGFpbmVyX29mIGhlcmUgZGlyZWN0bHkgaW5zdGVhZCBvZiB0cnlpbmcNCj4gdG8gdXNlIHNv
bWV0aGluZyB0aGF0IGlzIG5vdCBwcm9wZXJseSBkZWZpbmVkPw0KPiANCkl0cyBub3cgYSBmdW5j
dGlvbiB0aGF0J3MgYWJzdHJhY3RlZCBpbiAuYyBmaWxlIGFuZCBwcm90b3R5cGUgZGVmaW5lZCBp
biB0aGUgaW50ZWxfcHhwLmguIFVubGVzcyBpDQptaXN1bmRlcnN0b29kIHNvbWV0aGluZywgaSB0
aG91Z2h0IHRoaXMgd2FzIG9uZSBvZiB0aGUgb3B0aW9ucyBkaXNjdXNzZWQgaW4gbGFzdCByZXYg
LSBpIGNhbiBjaGFuZ2UgaXQNCmFnYWluIHRvIHVzZSB0aGUgY29udGFpbmVyX29mIGRpcmVjdGx5
IGluIGFsbCB0aGUgaW5zdGFuY2VzIGlmIHlvdSBsaWtlLiBzaWRlIG5vdGU6IGlubGluZSB3YXMg
c3RpbGwNCmRlZmluZWQgYnV0IG9ubHkgZm9yIHRoZSBDT05GSUdfUFhQPT1vZmYgY2FzZSB0aGF0
IGRvZXNuJ3QgcmVxdWlyZSB0aGUgYWRkaXRpb25hbCBoZWFkZXIgaW5jbHVzaW9ucy4NCg0KPiA+
ICsNCg==
