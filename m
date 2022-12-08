Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9146472F8
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DFC110E0D2;
	Thu,  8 Dec 2022 15:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB3A10E0D2
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670513392; x=1702049392;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XyG7d+1hmrzS/mDV3xsFB1bpDBhYq0cSCa8JNGuCvgc=;
 b=JOltuGru9Oa1MqzZsDu8LL83haBAMpITepS9HkmsRWUr4aJ3HxhT5ogT
 m4CjuJYMlq5jXf0AXB/Zp7+wRdO9lnOcceR/qMVHfkSXFH8n/6qKWk+UC
 KchdlXRIpSQ9jahR1Px57fCOwqDJ5Em3kh0DkVJb7wSFhZ85JJFN5Zrb+
 N3t2vwpHKvRackCIdf3glHv3iZqW8I8LFAutF1HIfNWpm4rZ5idXNyWZX
 ekJducqEOcyYRYeoNGYIYJNYTkWMGZhuNwE55wK2MyWQFhW+beG5NXV6/
 Pv++WuALDEPay/exAdJmdUCwaxo+4R9RS1MisaqwdIZrkkXhwnc3o4hHT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="319068050"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="319068050"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:29:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="715645887"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="715645887"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 08 Dec 2022 07:29:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 07:29:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 07:29:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 07:29:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=edju50G09WJ7GPmKsXqx4iZDxAEEhTEXWDv2sZLKsgDvSWsTnsR9SsOWBTvC6ufyr6j/7ysI/U8//VY2J+r+cjB5EvKe4sUYVkzJGfsOYI5kztPJPrQXD134Jc0BeCVWD+2N3xpqoRgXaGH34bRo6DfAusk6NvS7+6hlQ2y3AZVRpUY5N4M2btuRe5r/qUuHonCQdV+X9UqrVUp7zA9icj/7aG7KbuDxHb/+alVh1jpuEjhzgl/vpyxJqNTUdL6kF7JVmX1/HGgt9aY/5norUg1TlpozLtVlgL4PsVs6i/7x6QbCiAAyctTjRjEuua+O+P/p6LVBlyQayJCf1INnHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XyG7d+1hmrzS/mDV3xsFB1bpDBhYq0cSCa8JNGuCvgc=;
 b=VPXer7PbcEA9RNK4U9AX2ow756ZICiB7+WxwvspJRdauvMEHaPYzFiab7TRYKsxiskbxS8QiDESVYlQGCqymRlbGCQyZ65TAA6s4ZadnTuovL5bCJiMt9IG85Y9Tx8FS2hxV2pQl5PN8WjMNBsEf/zjcy5AlzBv2k0JcXQdQdi8wC4SzbZXl2ir8hQkuYMUGlaIEPB587csUeJ9S8wXnCSw2ECvdnxn61ESTOsn3hr/5fY6W/gdL3XCU/rdpJzwGeFpNhKTl8/MtHnFQMJnNzhe6XJ5oFutDFtOrovycJnSb4zPegcdI7EW5iTiT0VlpLmrOBKoRn24UmjHkgp+3Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY5PR11MB6510.namprd11.prod.outlook.com (2603:10b6:930:42::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.16; Thu, 8 Dec
 2022 15:29:33 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:29:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 5/9] drm/i915: Extend dual PPS handlind for ICP+
Thread-Index: AQHZAPPl0nwZg8JAIESMhMpn2ZdXcK5kMaIA
Date: Thu, 8 Dec 2022 15:29:33 +0000
Message-ID: <PH7PR11MB5981D0CF63A72A33A69CECADF91D9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
 <20221125173156.31689-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20221125173156.31689-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY5PR11MB6510:EE_
x-ms-office365-filtering-correlation-id: d3b6a39f-a55b-48df-c1a8-08dad93101f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 528knV6T7aiZnytLIj3CvIYdJaM7xrelpeV/5Zc9TOIpJOUrc5//jWnYFxwi72swrkLHuGKV2zvghoQE4GniB+fX5SsvBPC3/6OjdBsqAoJp8TiiO5Ac9tURZgfDZQ7sgjlNmUaLbb/3NGOTbTiyhu4ZsCdu2zLNk22yb048GdB4tflB/BsKf4KK2dBLEhMulyFT+Dd5dNJHkhSEGIjkaBPtge3hltUCd/YG+s6naJ9lVpL+ELhQYepGttfPpLuDOyleGDKgDUc6XKxoEKMfEiAG4ASC+cnroVDFk+odZ3sMz+uovRy61IVuI9WdDlUgcEkTwJQSIMphUna6uw6bvZ+C/2eetzJN1K7ToDSKiKMZGboH/TOcQaUV2wlLmxaazrCUsOcbyaoBZLcmNNWqsN8eroDC7rQmrMErgfc1f8uRblt0oLlQVrEzWmDqRx1Nzb5EdvzWSmN5ICMwG79LbR2vnKNwF3rSMDWhki5uDtBcYrashM3J1S4Lr+/yd3TqW82xvDcV+8y8dl91G9crPkTs9VwDyqSrCXMw0MBNwhRXV+lpK/q6ETJLr0jwvFNelMPONzeNPPyW3UQYleSF6GjBZHYU81WSsCk7MRm/8nojQGMtcX/vyAQAzVqRegzN1a52o84+lbPr6XgsjgN9rq3nT6wYTHC1kogoO8mkkfNhyCaY5+hAFkUElsO+U4hM1VLpqYjl+c0OW81w11lmWQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(366004)(346002)(39860400002)(451199015)(2906002)(86362001)(33656002)(83380400001)(38070700005)(110136005)(478600001)(71200400001)(26005)(9686003)(186003)(55236004)(53546011)(7696005)(6506007)(82960400001)(41300700001)(38100700002)(122000001)(55016003)(5660300002)(8936002)(52536014)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZU5NQ25CaHlCdURDVnpYckE1UU9WRjd2YldtcEttbUxnVGZyM1hZL0p3N0Fx?=
 =?utf-8?B?QW1FZnlXYXJBbC9jK1pPU3B4Yi9sdGlEaFRWVjBVM1d0S2hHT2lZdEUrNCs2?=
 =?utf-8?B?eFpRakRLa0Z5TVEyOTAzZ3RHV01jang4TkxkMHZOMzk2VEJhVk5pb21wRHNF?=
 =?utf-8?B?SHVmZ0QyV0xxTkw1Z0ZEWWI1R1VMTmw1aXhMSWY4NFUwSVI3M0k5M0dYV1ZM?=
 =?utf-8?B?UTM4SEpwMDVSK1NKWWhmQktvZ3VQU3FsdG1HcVVENmNpb2ZSRlZuMnJ3c0Rl?=
 =?utf-8?B?b3BqRTBoL00wWFpYaGJqTjJBalgrc0haQk5mbmRYcks5QjlwNXBaRmxwaENL?=
 =?utf-8?B?SEdGQjRNTTZRR2duS3J3Z1ZDdm5YaTNmOW1iZnFmdUNSbS9QeDZ2Z1FKbXo5?=
 =?utf-8?B?QWIxRkp4RW5hS2grZWprdjJQNS93TE92aW9QYTZRUWZDMzZBWEh4YTVTTG53?=
 =?utf-8?B?VVkvUm4rRjFaZ2hZbjczR1pwUTNHaEh2eVNDeERFVTBNS2ZRNFVUdHBYMnV1?=
 =?utf-8?B?ZWJ2NTF0czhtaXNXdm9YQnFEdmR3Z2JDbDlKNzBINmJFOFI5UVZVSUhYWk5n?=
 =?utf-8?B?VGZraG9ma2VURzQ5U3FibU5NRFdHRStwMGd0YTQrOHgwVHNEejlsTWRKUnZ5?=
 =?utf-8?B?Qk9HUTluVkM4aUZHYWJDMHF4UWJ3bS8vRXFTTHpIek8zZkdZRC9XZ2M0TGZ5?=
 =?utf-8?B?cnBid2ZXSnFXc0NMa0ZXS3pLcWRqRnM1b0N2cDZOVVRQbmlOQVB1WkhQRjY1?=
 =?utf-8?B?Zkd1NUZBV2V0amNlNW15MDJnbkJVdnEzVllvRDRpcXVTUkp4NjdrTXgwdFgv?=
 =?utf-8?B?N3RHb09VZDk3T1E1eG5HODVoNXk4LzQ5c1ZNbVI3dU9icmQzbnEvSU5MbklX?=
 =?utf-8?B?QkJ5dEJPdTBLb2xrYjlGcGFyOHV0RmNOVVJ3WkNPVkZReWJtb3dJV1hNS3RI?=
 =?utf-8?B?dWFET3dpMVZXWHBRSTh5dWpxdmZxaDFRWkFQdWQzMXc4OS95NWIzQzBhbWx4?=
 =?utf-8?B?eDhOZEZEMTN3d25oaERiR21wQ0VHWUxwN1RyZ0pzK1FKSXNXK0JTZnNsZmJQ?=
 =?utf-8?B?YUoxNkYxUmt3UTR3d0VuZ21aRlRYMkZSOFFTdDJrVExSOHE5TTdMZVhWK1Vv?=
 =?utf-8?B?eWVFNEl0MmgzRGVMN2p6RGJITE42OXhZdUg5K0pFSmxGUEs3VGR0Rlhpc1lZ?=
 =?utf-8?B?TXhvemxZRmkwRkdkVXJ2WGxEcjF1WHQ2TWl4aDkvQjhWRlF2U3I3Zzg0dFRE?=
 =?utf-8?B?Smxhdm8xaDZLcnlSMzg0OXNEZHlpMDJFSEFYbDFka3cwS0RZYk9rMER2aUFI?=
 =?utf-8?B?eGNLY0ZNV25CSXNBZHF1MVlvWWc0dThIK3MzeXVWWjhqSUFBUWJkU25TUlJi?=
 =?utf-8?B?WThMN0Mvd3dOa2JsUFEyMjBzRUI1QTRoYWNlY3BaRzUydTc4NlM3Y3FHbUpz?=
 =?utf-8?B?eTAvOUlrbnBmT2d3NEVWWHhuSmwwZ2lGUTRZUnFTODMwSjlzNXFraTR5Y21Z?=
 =?utf-8?B?L2d2WFdrZjAwSGtGRHZkSGU1MmU2RnVFTUZYVnFrN0NWOHRMQVIvTVhyNlhk?=
 =?utf-8?B?ZDViMmJDZWFUNXdxclNJWW54cWY0YlMxZnptSFZWaVRIL3RiVjIyQmEvZk5M?=
 =?utf-8?B?L3hVT0wxUnR1QUcycUJNWUJiVDBSZW1uRG5zRjJvUGFKNTN6d1RTOHJNSCtR?=
 =?utf-8?B?TWRGR2laTzJzZFFQdXBxaDUzclJEbVJTamd3SDQ2TnhrYm5GUGY4emxjM0c2?=
 =?utf-8?B?dHFOaWU4YmY0OGhsY1NJWVRkV0JiNEFweFdMTWlXTlU2bjd5UWN5Y2lFMmtL?=
 =?utf-8?B?UjVuRXBqWEN1NjFxYnpCMEExREJVVnYyTGNXVEVQbjBCVTJ1Z2ZXankzeGd1?=
 =?utf-8?B?bUZiR1pBWUlUbmtoZCtsMzM3cXJ6bWNjM24rMCs4WlVSeXFtOEFMMkdRQW0r?=
 =?utf-8?B?OTAzV29sYVhEbTRQcG5LM3c5VFFpc01qcWNMZVlXMlNic2FURFhjNHJod1hw?=
 =?utf-8?B?YzByV2dqRmYvZW1kYW9SU1hZSDhsWHQrMTRGVHQ4ZEZyeWRIWEtmbEhxc3RW?=
 =?utf-8?B?YmFBSzVJb0xTSUpQVFRGWnl6anBZWEJjR0g2U1ZYVlp1SzBVc2tJdUl0SVRE?=
 =?utf-8?Q?U3OUvvWawpp3vJ+SCQ5qKqYyH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3b6a39f-a55b-48df-c1a8-08dad93101f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 15:29:33.5254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wJGROAnOIhQpz0aT8+afSugeCYyUQQ9I8O2iEY3ZzbJU5NLnuJ6ccEfHyyYUOjebWK62vpkeU48qPC58bk7gTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6510
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915: Extend dual PPS handlind
 for ICP+
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIg
MjUsIDIwMjIgMTE6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIHYyIDUvOV0gZHJtL2k5MTU6IEV4dGVuZCBkdWFsIFBQUyBoYW5kbGluZCBmb3Ig
SUNQKw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IE9uIHRoZSBQQ0ggc2lkZSB0aGUgc2Vjb25kIFBQUyB3YXMgaW50cm9k
dWNlZCBpbiBJQ1AuIExldCdzIG1ha2Ugc3VyZSB3ZQ0KPiBleGFtaW5lIGJvdGggcG93ZXIgc2Vx
dWVuY2VyIG9uIElDUCsgYXMgd2VsbC4NCj4gDQo+IE5vdGUgdGhhdCBERzEvMiBzb3V0aCBibG9j
ayBvbmx5IGhhcyB0aGUgc2luZ2xlIFBQUywgc28gbmVlZCB0byBleGNsdWRlIHRoZQ0KPiBmYWtl
IERHMS8yIFBDSHMuDQo+IA0KPiBDYzogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bwcy5jIHwgNDQgKysrKysrKysrKysrKysrKystLS0tLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4gaW5kZXggZDhkMmYyMmYz
ZTBjLi43N2IwYTRmMjdhYmMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wcHMuYw0KPiBAQCAtMzEwLDEwICszMTAsMjcgQEAgdmx2X2luaXRpYWxfcG93ZXJfc2Vx
dWVuY2VyX3NldHVwKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+ICAJCSAgICBwaXBl
X25hbWUoaW50ZWxfZHAtPnBwcy5wcHNfcGlwZSkpOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBpbnQg
aW50ZWxfbnVtX3BwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkgew0KPiArCWlmIChJ
U19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkpDQo+ICsJCXJldHVybiAy
Ow0KPiArDQo+ICsJaWYgKElTX0dFTUlOSUxBS0UoaTkxNSkgfHwgSVNfQlJPWFRPTihpOTE1KSkN
Cj4gKwkJcmV0dXJuIDI7DQo+ICsNCj4gKwlpZiAoSU5URUxfUENIX1RZUEUoaTkxNSkgPj0gUENI
X0RHMSkNCj4gKwkJcmV0dXJuIDE7DQo+ICsNCj4gKwlpZiAoSU5URUxfUENIX1RZUEUoaTkxNSkg
Pj0gUENIX0lDUCkNCj4gKwkJcmV0dXJuIDI7DQo+ICsNCj4gKwlyZXR1cm4gMTsNCj4gK30NCj4g
Kw0KPiAgc3RhdGljIGludA0KPiAgYnh0X2luaXRpYWxfcHBzX2lkeChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgcHBzX2NoZWNrIGNoZWNrKSAgew0KPiAtCWludCBwcHNfaWR4LCBwcHNf
bnVtID0gMjsNCj4gKwlpbnQgcHBzX2lkeCwgcHBzX251bSA9IGludGVsX251bV9wcHMoaTkxNSk7
DQo+IA0KPiAgCWZvciAocHBzX2lkeCA9IDA7IHBwc19pZHggPCBwcHNfbnVtOyBwcHNfaWR4Kysp
IHsNCj4gIAkJaWYgKGNoZWNrKGk5MTUsIHBwc19pZHgpKQ0KPiBAQCAtMzM3LDEyICszNTQsMTMg
QEAgcHBzX2luaXRpYWxfc2V0dXAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAkJcmV0
dXJuOw0KPiAgCX0NCj4gDQo+IC0JaWYgKCFJU19HRU1JTklMQUtFKGk5MTUpICYmICFJU19CUk9Y
VE9OKGk5MTUpKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gIAkvKiBmaXJzdCBhc2sgdGhlIFZCVCAq
Lw0KPiAtCWludGVsX2RwLT5wcHMucHBzX2lkeCA9IGNvbm5lY3Rvci0+cGFuZWwudmJ0LmJhY2ts
aWdodC5jb250cm9sbGVyOw0KPiAtCWlmIChkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBpbnRlbF9k
cC0+cHBzLnBwc19pZHggPj0gMikpDQo+ICsJaWYgKGludGVsX251bV9wcHMoaTkxNSkgPiAxKQ0K
PiArCQlpbnRlbF9kcC0+cHBzLnBwc19pZHggPSBjb25uZWN0b3ItDQo+ID5wYW5lbC52YnQuYmFj
a2xpZ2h0LmNvbnRyb2xsZXI7DQo+ICsJZWxzZQ0KPiArCQlpbnRlbF9kcC0+cHBzLnBwc19pZHgg
PSAwOw0KPiArDQo+ICsJaWYgKGRybV9XQVJOX09OKCZpOTE1LT5kcm0sIGludGVsX2RwLT5wcHMu
cHBzX2lkeCA+PQ0KPiAraW50ZWxfbnVtX3BwcyhpOTE1KSkpDQo+ICAJCWludGVsX2RwLT5wcHMu
cHBzX2lkeCA9IC0xOw0KPiANCj4gIAkvKiBWQlQgd2Fzbid0IHBhcnNlZCB5ZXQ/IHBpY2sgb25l
IHdoZXJlIHRoZSBwYW5lbCBpcyBvbiAqLyBAQCAtDQo+IDQxNiw3ICs0MzQsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wcHNfZ2V0X3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2Rw
LA0KPiAgCQkJCSAgICBzdHJ1Y3QgcHBzX3JlZ2lzdGVycyAqcmVncykNCj4gIHsNCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4g
LQlpbnQgcHBzX2lkeCA9IDA7DQo+ICsJaW50IHBwc19pZHg7DQo+IA0KPiAgCW1lbXNldChyZWdz
LCAwLCBzaXplb2YoKnJlZ3MpKTsNCj4gDQo+IEBAIC00MjQsNiArNDQyLDggQEAgc3RhdGljIHZv
aWQgaW50ZWxfcHBzX2dldF9yZWdpc3RlcnMoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwN
Cj4gIAkJcHBzX2lkeCA9IHZsdl9wb3dlcl9zZXF1ZW5jZXJfcGlwZShpbnRlbF9kcCk7DQo+ICAJ
ZWxzZSBpZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikgfHwgSVNfQlJPWFRPTihkZXZfcHJpdikp
DQo+ICAJCXBwc19pZHggPSBieHRfcG93ZXJfc2VxdWVuY2VyX2lkeChpbnRlbF9kcCk7DQo+ICsJ
ZWxzZQ0KPiArCQlwcHNfaWR4ID0gaW50ZWxfZHAtPnBwcy5wcHNfaWR4Ow0KPiANCj4gIAlyZWdz
LT5wcF9jdHJsID0gUFBfQ09OVFJPTChwcHNfaWR4KTsNCj4gIAlyZWdzLT5wcF9zdGF0ID0gUFBf
U1RBVFVTKHBwc19pZHgpOw0KPiBAQCAtMTUwOCw3ICsxNTI4LDEwIEBAIHN0YXRpYyB2b2lkIHBw
c19pbml0X2xhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciA9ICZkcF90b19kaWdfcG9ydChpbnRlbF9kcCktPmJhc2U7DQo+ICAJ
c3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nv
bm5lY3RvcjsNCj4gDQo+IC0JaWYgKCFJU19HRU1JTklMQUtFKGk5MTUpICYmICFJU19CUk9YVE9O
KGk5MTUpKQ0KPiArCWlmIChJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkx
NSkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWlmIChpbnRlbF9udW1fcHBzKGk5MTUpIDwgMikN
Cj4gIAkJcmV0dXJuOw0KPiANCj4gIAlkcm1fV0FSTigmaTkxNS0+ZHJtLCBjb25uZWN0b3ItPnBh
bmVsLnZidC5iYWNrbGlnaHQuY29udHJvbGxlcg0KPiA+PSAwICYmIEBAIC0xNTUxLDEwICsxNTc0
LDcgQEAgdm9pZCBpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2Eoc3RydWN0DQo+IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQ0KPiAgCSAqIFRoaXMgdy9hIGlzIG5lZWRlZCBhdCBsZWFzdCBvbiBD
UFQvUFBULCBidXQgdG8gYmUgc3VyZSBhcHBseSBpdA0KPiAgCSAqIGV2ZXJ5d2hlcmUgd2hlcmUg
cmVnaXN0ZXJzIGNhbiBiZSB3cml0ZSBwcm90ZWN0ZWQuDQo+ICAJICovDQo+IC0JaWYgKElTX1ZB
TExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQ0KPiAtCQlwcHNf
bnVtID0gMjsNCj4gLQllbHNlDQo+IC0JCXBwc19udW0gPSAxOw0KPiArCXBwc19udW0gPSBpbnRl
bF9udW1fcHBzKGRldl9wcml2KTsNCj4gDQo+ICAJZm9yIChwcHNfaWR4ID0gMDsgcHBzX2lkeCA8
IHBwc19udW07IHBwc19pZHgrKykgew0KPiAgCQl1MzIgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgUFBfQ09OVFJPTChwcHNfaWR4KSk7DQo+IC0tDQo+IDIuMzcuNA0KDQo=
