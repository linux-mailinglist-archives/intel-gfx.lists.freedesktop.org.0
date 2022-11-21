Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B46F86327A1
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:16:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940D710E2E9;
	Mon, 21 Nov 2022 15:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21D7710E2E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 15:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669043759; x=1700579759;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=41HyRxhrKtgYlpIf3KTZmPXf4G9eZ7CYvu8XmEQHplE=;
 b=Wz8jn5kn4QT3yOsNKBDmfYLrjsM84TexU2EjC/S8O5jj4GqTRlIM1QRw
 tIF9tj106LmdQZzlSAMI/1RmwNQNsotE7p14Wbn2nPpCPGFHXqc3HNK/a
 YOFc3Pw3P7Wrh7uRCWE36l3FeLMjFFo3HI2625q4dmdhvpZLnaKyYBNq3
 yltc7Bx4ojoyI8SQjJJ4se+1Za+BsgMFtHUFj1oMeHxzYbi9MUahm31Jt
 POfd2M7utWCIP9judwnT5l9OLpf9mB+2vvuAX9z9pkqiyd3mommabnPA+
 kHk9cqG7hGR2Hg1kgcAbki7pGKFi9+dZxlzzBXCKWptjCgbztTZJivKRU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="296938463"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="296938463"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 07:14:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783482044"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="783482044"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2022 07:14:06 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 07:14:06 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 07:14:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 07:14:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jaNWpfeOPKg/D+P7u1hF0dK+skizS6BUy8ADf9FkFO4eP7VyG2t1ipP+4WxNMP9LpGFbgBdnavDl+jqj1QCRZKUhfwf0vVwJLFjGwLg1bWIe5ARJuCSlITXdi+0yb/Ji+QpR5xXK1Bt6PySaX4pxQNQzKFe+0nkyxZm56MssXcOz3Nr1Dt3Xm4t6AigMXBCzkg6QpnmldV40A6ynjJ2iJbqTAr+apMlNX6ZgGiNOGZrr09xjBCyDsQDwRHNMeNjRfhA7A3ByqK8xZFFPdJmdsubrC2yR1VE8+fQgSZPSsEC7Dktz0ZJd/tpJamPeLShd11ds1TnPAUBmf2/FlNJbrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41HyRxhrKtgYlpIf3KTZmPXf4G9eZ7CYvu8XmEQHplE=;
 b=nT4ymRjLS+q+4keIZJ+7SqJqHO7B5UaD21RV3F9YrGpdqjzdpaLKMU9zhFPOjPlLz+Mny/t7Qnd5XLCpDypmDYw331CKn+4688/MGoHHtPOPOdkxKUHhbE3ahtXMr6biJIQR9M46DEADzP+kZobleVNwonEluHHbVYJuwwUydZoAHTzkOL+I9CAT2t+vdAPZm04nDSuIF1wJJ9zAwvUEp99vh50qBOKtG5l5W1HRuK0gsDQndiMUnRhjqgSBmMbYx0kBxH3NpR4Yk9+BH3qvzgfiADNIE5Gb+cMiVGeEObvncT3xgz+LYQG2X2lObGbAXzc931GzFy47eXIDzXW00w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by DM4PR11MB6504.namprd11.prod.outlook.com (2603:10b6:8:8d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.9; Mon, 21 Nov 2022 15:14:04 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ce2a:ef6b:bc63:1467]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ce2a:ef6b:bc63:1467%3]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 15:14:04 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Enable SDP split for DP2.0
Thread-Index: AQHY/atoi3UPRGjT50S/ThaSLaGVGK5JfG8A
Date: Mon, 21 Nov 2022 15:14:03 +0000
Message-ID: <2f55f965d5e1a70341b713ae34ab867f22cffccf.camel@intel.com>
References: <20221101112120.1138595-1-vinod.govindapillai@intel.com>
 <87pmdgzbwb.fsf@intel.com>
In-Reply-To: <87pmdgzbwb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|DM4PR11MB6504:EE_
x-ms-office365-filtering-correlation-id: 81a6500a-8390-40a8-13fe-08dacbd306e2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v65zhYIZuMXqxIFJRVR5yfNN/rnJyZKwj6/xUPPlRJbckBUtH+/O8juAqxHo8ckh0jQMBHuG3KRinZfuEF5VUxL9fHJUzRYmgw4gBmq5m3okYbMzLgvE3ERg5Bf4TceVchFNDEA4p2TV1JvGZWMADapvsvrXNhUb501yUWlMUZzY96RSAuzGmvEFgQw8bUNUeVRx2PNTijki9wcE3cg5hX6olpfdCARd+r4jPMdZCKYRTYl1rYwKT113cQbzzbfcdHSqbitU8tE0JGldJSF3xB9JPraa6ee/hFmcgCj9ozaRrwVJNJtffyjyyYmASPssXOjFzW4AoukU9zg70h6ISRzfpwbhajEBQCOmjdeh8ENuoSCDMRb4Pil9VY6D1+OejkuLgTuT5T3Z7K95HoGVQr6cIm5xCbjbyn41Z44gUBQYPO2G9YBWIyToq9b1F2EkbKsAMPdFuftXu9U2SHpB0TckHq3WnLaMTOI/THDFaehA7oBhp4Q9e0TnDRpVhnjutSISL12aPir/+innnTQIwMa1a+z/01+6SuiZcbTWurpnZA7qw3MeT70NgG844u9SNhyYr3NleSlZC0Znh6+/kowy5JprVSoRdlc6To0qMOD90bi1iKFjOflYA7XFb/j5wk+HFlx7JV9cTrXGs3GcXmueDZay2LNrORWV7alD9Aara0Mzu7u/pbRFolXS7xzNWwyvKVj+MTeXT9cRV5aIqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(376002)(136003)(39860400002)(451199015)(107886003)(86362001)(71200400001)(6512007)(6506007)(41300700001)(26005)(38070700005)(478600001)(6486002)(82960400001)(4326008)(8676002)(83380400001)(66946007)(36756003)(91956017)(38100700002)(110136005)(76116006)(122000001)(66556008)(4001150100001)(66446008)(5660300002)(2906002)(64756008)(66476007)(8936002)(186003)(316002)(54906003)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHRjbTlTSGNGYWRoajdjMmw0aWlxczV0S0tzcGkyQzhHMUV5V2UxbldPMWEr?=
 =?utf-8?B?dXgvVVNXYlpUMlNKbjA5ZlhPNytmMXZyT3VnYU9YaFBMSE9xMjNJUnUwWml1?=
 =?utf-8?B?elhvZzAxNDZMc3RuVGFsWXBkU21RTVJLQ2lZaWQ1MkJGNU9DVmxHdHROVjRJ?=
 =?utf-8?B?OE00MEUxdHFSMjFmQWVNRmd5NEsvWkYybnd4R0Ntc2paY0QyNWNURTRnTkJr?=
 =?utf-8?B?Q1U0MUsvdFhLMHdzSlRPU0pJdEpNYUpNbFJxYSswWkt2VDVLbldIQThxVHpS?=
 =?utf-8?B?cXpWNEJxZlVqODRjSVlxb2NaUmJRN05BS2krakw3dlkyYWtjelpXVkl4Tlh4?=
 =?utf-8?B?MTU5Y1pUY1QwUm56cmtTMWJZQm53dlF1Ym1OaHVTV3F3eVJYNWNESEZaMVhr?=
 =?utf-8?B?WG5WeWVnMTViRDZpOEVOUHRBdVdodXhCWGo5NnVRZ2ErQm9IOTF6ODJOQUo5?=
 =?utf-8?B?Nkk5SktSd2tueit1UzRuYVBnZklGcW8vdEF2VG9zVDFyV3FQSm5wQjhudVlv?=
 =?utf-8?B?NWFOMmRtZ3J6RjRQZU5jRmZmVlJmUlg1dkNJNmx1MURjRmdRaEIyUGFQVitG?=
 =?utf-8?B?bW1OTTNOZzVvWUk4bDVVdlovNU84cVRIeXZaRG8wVVMrZHFWR29PaUlCenQ1?=
 =?utf-8?B?QWlqdVpGcXJTaTVkdDBOaDkwU0hENXVscWlyMHJNV3BoWVoycTNOR0p1Q0lu?=
 =?utf-8?B?L0sxcXE1cHhQbGIydjN2NlFyUEhIalRBWDVNbXcydWZ2S0hpWG5UUW85VGwr?=
 =?utf-8?B?RHVaVlMrRHEyK3BSY01MbG5MdkNLT3hlYnZUeitzbExURUNiZXNNdXhGYjI2?=
 =?utf-8?B?b0xhcldYNWpyekg2ZzNiWEkvK1ZvSlZINVJoVHVsZkdrN0xXNHE0cURKcHQy?=
 =?utf-8?B?UTFnUDc1SHRvd29palpWeEtVV2x1NnQreDF0b0x4UVNISmdiOEloSGdMRitS?=
 =?utf-8?B?MlB0SHlvWFVITHhxNC9DNGdaZVExRnYwbEQreDUyM0pBQm9veHJsZERYeWhH?=
 =?utf-8?B?dlJkNCthUEtwZ1psZUV4M0JySDFOU2diMjJNT3U1RUlVckI2ZEd3Tmx1N0Jx?=
 =?utf-8?B?cXdIbS9DSXpaWVlOWE9Nd3FvUWtocjVUUkg3bUJHVStydnlpdzkySUdFLy93?=
 =?utf-8?B?enR0UTBOcWI4S0ZKSzU2ODc2WTVFNlA2TmpZSEpRcFNaSDNoNDVKcXFLQVRq?=
 =?utf-8?B?V0lmdVozL2IyVjhLR0s3NGduZFhPcTZFU1dodHY4RE53a0hkTHBLeUdYcHZa?=
 =?utf-8?B?RFU3ZTVKbC9CNDhLazJxOEhHRURSTU02UXVjeGM5U01RRnlrelI3SnJtcm9V?=
 =?utf-8?B?UUxsOG1RNlZXZVIxU2dZYWc2dURFY1l2YTVMTlI3YXpVdXNzek9Kc3ZHVFF0?=
 =?utf-8?B?Wk9JZlZBZk5VdkhZYXN0V1M4U09Nb0dhYVU3QXRPN3NXODdXTFNHc2VBOSsw?=
 =?utf-8?B?VFowWlI4dWNROUFuYlhweVY2WlNsNkZiRGM4eTVkZ0pZbFhwWmJvTHc1VjdU?=
 =?utf-8?B?UlJYUkd3QjZUK3pmeC8zcmFCSSs4YzZaRGpGdFAxdloxb1VQeDh5SVNwVENL?=
 =?utf-8?B?NzdKc3JuN0ZtaWEvNUpNZFIwWHdLTDh0RFptbjlDb3BtQTdDUWZPSHBmUnV1?=
 =?utf-8?B?dHRhN29mL0wrV2RCUDl4Y2d2dXN1VWhsRDBxM08rV0s0cWZwTmI0WkxXMGhj?=
 =?utf-8?B?bm9tYU0wQUN1RXZvVEh3bkVSc0pYRW5WR0szY1czQ0EySEMraUZuWTlPaGhm?=
 =?utf-8?B?ejZxY0hlQnJDVSs0WWtTM0ZuZG55NTlnV0FKK2JoL2ZNcS9JeCt6dU5PODZT?=
 =?utf-8?B?REJra09XYytzTHV4dzhDZ2wyVGxkVkc4QVF3dUVvakJBaHEzTUZIVEJpd1Zr?=
 =?utf-8?B?eTFMU3B6Q0cyVDRpWWk2eW9xMy9qS2daTFAweXQxdnEwV1p0VHpZbjVkekJJ?=
 =?utf-8?B?Z0N2b0NHOCtZVEx0bWpRU010K1phNjFWSEgvVmVXa1dXRUJTUzdqcnJQQkRs?=
 =?utf-8?B?Zmg3UnRNR05lbU9YQWJzMEExVWVjMUc2M05ocmYvbjFkc0d5dCttdkZqMjlU?=
 =?utf-8?B?OXZJSjBxUTQxNk4vcXlkeDdOaHU2d2FTOHlLVlBjUTJzdExTTXd2UkFsVm9J?=
 =?utf-8?B?cHkxNGpaYmJXazFlVVM2TFRNVFV4cFU0UFdmdzBpaWloQmROb0tXeDFQSDVz?=
 =?utf-8?Q?kERpoGeLQI2llLnlYg3OtsA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <90BF7D0AC18A5946A863A7610E0E7E51@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81a6500a-8390-40a8-13fe-08dacbd306e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 15:14:03.9739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XcgSCfYDGc1TX6kdqJv8JhQ8jXj1pF+cwn9XS6un8NLW/VklrfOCFS6ZBJXqvAwiP0ZiYk8mHDcEza6AVEBCz+YFuB8D6ncPAV3Fc76GCkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6504
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Enable SDP split for DP2.0
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

VGhhbmtzIEphbmkuIEkgdXBkYXRlZCB0aGUgcGF0Y2guIENvdWxkIHlvdSBwbGVhc2UgcHVzaCB0
byB0aGUgZHJtLXRpcC4NCg0KVGhhbmtzDQpWaW5vZA0KDQpPbiBNb24sIDIwMjItMTEtMjEgYXQg
MTU6MTUgKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiBPbiBUdWUsIDAxIE5vdiAyMDIyLCBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4gd3JvdGU6
DQo+ID4gRW5hYmxlIHRoZSBTRFAgc3BsaXQgY29uZmlndXJhdGlvbiBmb3IgRFAyLjAuDQo+ID4g
DQo+ID4gdjI6IE1vdmUgdGhlIHJlZ2lzdGVyIGhhbmRsaW5nIG91dCBvZiBjb21wdXRlIGNvbmZp
ZyBmdW5jdGlvbiAoSmFuaU4pDQo+ID4gDQo+ID4gdjM6IFBhdGNoIHN0eWxpbmcgYW5kIHJlZ2lz
dGVyIGFjY2VzcyBiYXNlZCBvbiBwbGF0Zm9ybSBzdXBwb3J0IChKYW5pTikNCj4gPiANCj4gPiB2
NDogUmViYXNlZA0KPiA+IA0KPiA+IEJzcGVjOiA2Nzc2OA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jwqDCoMKg
IHwgMTIgKysrKysrKysrKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F1ZGlvLmjCoMKgwqAgfMKgIDIgKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmPCoMKgwqDCoMKgIHzCoCAzICsrKw0KPiA+IMKgLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICsrDQo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgwqDCoMKgwqAgfCAxOSArKysr
KysrKysrKysrKysrKysrDQo+ID4gwqA1IGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKykN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdWRpby5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMNCj4gPiBpbmRleCBjMzE3NmM5Yzg5YTYuLjQxNWFjMzk2MDI3MiAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMNCj4gPiBAQCAtNzk4LDYg
Kzc5OCwxOCBAQCBzdGF0aWMgdm9pZCBpbGtfYXVkaW9fY29kZWNfZW5hYmxlKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBtdXRleF91bmxvY2soJmk5
MTUtPmRpc3BsYXkuYXVkaW8ubXV0ZXgpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gK3ZvaWQgaW50
ZWxfYXVkaW9fc2RwX3NwbGl0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gPiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+ID4gK8KgwqDCoMKgwqDCoMKgZW51bSB0
cmFuc2NvZGVyIHRyYW5zID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ID4gK8KgwqDC
oMKgwqDCoMKgdTMyIGNsZWFyID0gY3J0Y19zdGF0ZS0+c2RwX3NwbGl0X2VuYWJsZSA/IDAgOiBB
VURfRU5BQkxFX1NEUF9TUExJVDsNCj4gPiArwqDCoMKgwqDCoMKgwqB1MzIgc2V0ID0gY3J0Y19z
dGF0ZS0+c2RwX3NwbGl0X2VuYWJsZSA/IEFVRF9FTkFCTEVfU0RQX1NQTElUIDogMDsNCj4gPiAr
DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKEhBU19EUDIwKGk5MTUpKQ0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoaTkxNSwgQVVEX0RQXzJET1QwX0NUUkwo
dHJhbnMpLCBjbGVhciwgc2V0KTsNCj4gDQo+IEl0J3MgY3VzdG9tYXJ5IHRvIHVuY29uZGl0aW9u
YWxseSBzZXQgdGhlIGNsZWFyIG1hc2suDQo+IA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGludGVsX2RlX3JtdyhpOTE1LCBBVURfRFBfMkRPVDBfQ1RSTCh0cmFucyksIEFVRF9F
TkFCTEVfU0RQX1NQTElULA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5zZHBfc3BsaXRfZW5hYmxlID8gQVVEX0VO
QUJMRV9TRFBfU1BMSVQgOiAwKTsNCj4gDQo+IFdpdGggdGhhdCBmaXhlZCwNCj4gDQo+IFJldmll
d2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiANCj4gDQo+ID4g
K30NCj4gDQo+IEknbSBzdGlsbCBub3QgZW50aXJlbHkgaGFwcHkgYWJvdXQgYWRkaW5nIHRoaXMg
dmVyeSBzcGVjaWZpYyBmdW5jdGlvbiB0bw0KPiBpbnRlbF9hdWRpby5bY2hdIGludGVyZmFjZXMs
IGJ1dCBJIGd1ZXNzIGl0J3Mgc2ltcGxlIGVub3VnaCB0byBjaGFuZ2UgaWYNCj4gd2UgZmluZCBh
IG5pY2VyIHBsYWNlIGZvciBpdC4NCj4gDQo+ID4gKw0KPiA+IMKgLyoqDQo+ID4gwqAgKiBpbnRl
bF9hdWRpb19jb2RlY19lbmFibGUgLSBFbmFibGUgdGhlIGF1ZGlvIGNvZGVjIGZvciBIRCBhdWRp
bw0KPiA+IMKgICogQGVuY29kZXI6IGVuY29kZXIgb24gd2hpY2ggdG8gZW5hYmxlIGF1ZGlvDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8u
aA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5oDQo+ID4g
aW5kZXggNjNiMjIxMzFkYzQ1Li4xYjg3MjU3YzZhMTcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5oDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5oDQo+ID4gQEAgLTIyLDUgKzIyLDcgQEAg
dm9pZCBpbnRlbF9hdWRpb19jZGNsa19jaGFuZ2VfcHJlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdik7DQo+ID4gwqB2b2lkIGludGVsX2F1ZGlvX2NkY2xrX2NoYW5nZV9wb3N0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7DQo+ID4gwqB2b2lkIGludGVsX2F1ZGlv
X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsNCj4gPiDCoHZvaWQgaW50
ZWxfYXVkaW9fZGVpbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7DQo+ID4g
K3ZvaWQgaW50ZWxfYXVkaW9fc2RwX3NwbGl0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSk7DQo+ID4gwqANCj4gPiDCoCNlbmRpZiAvKiBfX0lOVEVMX0FVRElPX0hfXyAqLw0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4IGU5
NWJkZTVjZjA2MC4uYzg0YjdiMGU0YzE5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gQEAgLTI5MTcsNiArMjkxNyw5IEBAIHN0YXRpYyB2
b2lkIGludGVsX2VuYWJsZV9kZGkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfdnJyX2VuYWJsZShlbmNvZGVyLCBjcnRj
X3N0YXRlKTsNCj4gPiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoC8qIEVuYWJsZS9EaXNhYmxlIERQ
Mi4wIFNEUCBzcGxpdCBjb25maWcgYmVmb3JlIHRyYW5zY29kZXIgKi8NCj4gPiArwqDCoMKgwqDC
oMKgwqBpbnRlbF9hdWRpb19zZHBfc3BsaXRfdXBkYXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOw0K
PiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZW5hYmxlX3RyYW5zY29kZXIoY3J0Y19z
dGF0ZSk7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfY3J0Y192Ymxhbmtfb24o
Y3J0Y19zdGF0ZSk7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGluZGV4IDdmMThjMDUyZWMxNi4uMDdlYWI3
MWQzZmMyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBAQCAtMTI4Niw2ICsxMjg2LDggQEAgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBGb3J3YXJkIEVycm9y
IGNvcnJlY3Rpb24gU3RhdGUgKi8NCj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBmZWNfZW5hYmxl
Ow0KPiA+IMKgDQo+ID4gK8KgwqDCoMKgwqDCoMKgYm9vbCBzZHBfc3BsaXRfZW5hYmxlOw0KPiA+
ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyogUG9pbnRlciB0byBtYXN0ZXIgdHJhbnNjb2RlciBp
biBjYXNlIG9mIHRpbGVkIGRpc3BsYXlzICovDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGVudW0gdHJh
bnNjb2RlciBtYXN0ZXJfdHJhbnNjb2RlcjsNCj4gPiDCoA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBpbmRleCA3NDAwZDZiNGM1ODcuLjhhMWFmMTI5NGM2
YSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
PiBAQCAtMjAwOCw2ICsyMDA4LDIzIEBAIGludGVsX2RwX2NvbXB1dGVfb3V0cHV0X2Zvcm1hdChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IHJldDsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+ICtzdGF0aWMgdm9pZA0KPiA+ICtpbnRlbF9kcF9h
dWRpb19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLA0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Nv
bm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGNv
bm5fc3RhdGUtPmNvbm5lY3RvcjsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgcGlwZV9jb25m
aWctPnNkcF9zcGxpdF9lbmFibGUgPQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50ZWxfZHBfaGFzX2F1ZGlvKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0
YXRlKSAmJg0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxf
ZHBfaXNfdWhicihwaXBlX2NvbmZpZyk7DQo+IA0KPiBUaGUgaW5kZW50YXRpb24gaXMgcHJvYmFi
bHkgb2ZmIGhlcmUuDQo+IA0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygm
aTkxNS0+ZHJtLCAiW0NPTk5FQ1RPUjolZDolc10gU0RQIHNwbGl0IGVuYWJsZTogJXNcbiIsDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3ItPmJhc2Uu
aWQsIGNvbm5lY3Rvci0+bmFtZSwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cl95ZXNfbm8ocGlwZV9jb25maWctPnNkcF9zcGxpdF9lbmFibGUpKTsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiDCoGludA0KPiA+IMKgaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmln
LA0KPiA+IEBAIC0yMDkxLDYgKzIxMDgsOCBAQCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2sgLz0gbjsNCj4gPiDCoMKgwqDCoMKgwqDC
oMKgfQ0KPiA+IMKgDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHBfYXVkaW9fY29tcHV0ZV9j
b25maWcoZW5jb2RlciwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOw0KPiA+ICsNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgaW50ZWxfbGlua19jb21wdXRlX21fbihvdXRwdXRfYnBwLA0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBw
aXBlX2NvbmZpZy0+bGFuZV9jb3VudCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9j
aywNCj4gDQoNCg==
