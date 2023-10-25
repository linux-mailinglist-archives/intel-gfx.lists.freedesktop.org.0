Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DBF7D6D90
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 15:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E05C10E65C;
	Wed, 25 Oct 2023 13:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DB710E65C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698241501; x=1729777501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fZ2bTWJuUdQ96FFCSPhQx75jX/rWSFJ7hZ2UuFROD4I=;
 b=i2+OiAJWZuXZ+ex9YgDB/UNdQuWOqyLmCP4KXR5eztGmw8UCKtUxcBeH
 WqEMM7HdX4whza7zTd1cJx0z5StE8m166uTzhq7Wof8mekDhvaeAtzth+
 WEEnEtwfcTgkhwxEZUyVv5bFgmDV56BvJ37e9Xa3BWOnth0eImJg+fIwV
 fldPir/d7/mZx9TU7A4HOUDwVHu3zzEFd2sh51oUX3aDB2Ub1+XEpPp6P
 OIEeQ0H/07MS1SvXsL3So+xiI8JL/ChCLdaS4V2yehDn0S6oIpsJrcQw/
 1naEtZ/fFgjF4XuigvZJOUfWMnVYRRmG+Jw8o2YwzrPhszlPe4aRHv/AV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="453777326"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="453777326"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 06:45:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="6842769"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 06:44:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 06:45:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 06:44:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 06:44:59 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 06:44:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DbHHuItP3z07dEhMdUpkQ/3OHDjf1RceMYJN9biPTsecioIHVmywGTmacdz64u7uhxNxrUee2E76m4u9hz3G38AnWF8kId4etnJab2NjHiSsqCwRCsDRDtIQd4PmgeKnCDFl5dXwZHRPIbM4lHnez0Eou1bx2EuGLsyb34Vvhi87jxiw9ZhL9av+MMQkRHnfdm59ahrb++4t+uoqcXme9m+UA2WqfGlbryF0gLl1Wq3/KHn/tLopNElmr74eGW16ZLEpP6MLx1SpfHsnP0TajvxlSJrtAMYMEGDEW7QT8OdT2jvfgXKXUAmLETjkM7dgT8xxzf9SyqLylh8PDTUDdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fZ2bTWJuUdQ96FFCSPhQx75jX/rWSFJ7hZ2UuFROD4I=;
 b=SDt23HsFlPyuHr98rqvSVEjtPSXd8t8bcHy+f/TYz6D223X5FHWr1XWVFcFqlsfa30tUzVf9U4q+hkxjUyAthXQUbG8S9msgrj0udVton7HF5yMEKVSgY+ViH9tbsrSGhoUQBF1G25RmrHbKC7tec0tx076StL04s7dpgPWDSal5ZxB5N3Mh+cQHmOjIkiyuDVVvhHg53OJE5TLLWpJnNi6ziYh9VRdurCXxfjU8xoSp1g0wO943tzxt7f5lqXYdPRDl59/h9Qj6wgw9LLpJuofo/ZrXdnqPlXYrJgKCdSrAte+UDjM0NizeUy+HgBBHVKBqmhG56rQEvD8iY3380Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by LV2PR11MB5973.namprd11.prod.outlook.com (2603:10b6:408:14e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 13:44:57 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92%6]) with mapi id 15.20.6907.028; Wed, 25 Oct 2023
 13:44:56 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Christian Brauner <brauner@kernel.org>
Thread-Topic: Regression on linux-next (next-20231013)
Thread-Index: AQHaBwz2ENP+HgSxG0iAJezJ7y7GBbBaHKAAgABeNOA=
Date: Wed, 25 Oct 2023 13:44:56 +0000
Message-ID: <SJ1PR11MB6129D4C000D5AC82E4C69710B9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20231025-zubetoniert-estrich-398e12164835@brauner>
In-Reply-To: <20231025-zubetoniert-estrich-398e12164835@brauner>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|LV2PR11MB5973:EE_
x-ms-office365-filtering-correlation-id: 93a1c154-85f7-4cc4-8725-08dbd5609353
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: obedRplYwhzzzzaOgRN0n/Oy/wFheT8hzULJIfRBPg6mKtzAf8dRjyIPTSCS+/bgp2J0Zr6KShHXYNgdHVKC5tVAFEKRol/jD3ruJLVKTaVxGaH8yCP2P3nMdsVaj2FD4KfEJ8NLzhBacpyKBI6cN5eS6U1fGwEYxnVGaK2amA0LyGd84khieEqYOzr1hme60L0VjAJWMzAT9ap4uRJfcyg1qwL20KscXGGs79AFhJkPmsZWB7Fm0z5De/M0I5wKjxFdvQCCaMowazQtxbNJb5Hggcsnzp7SXNvyN1ygIor60G5b23SBV0tttIuOQ545XzjedaS2wMWFTYKzgvxUiZUnp6qL+sqEKUjmLHdavoxpqzIcl/1+M1HDVQKV6MSU1ouMeaTlCMRYwwiWPUazFjhRRBK7bMcRvO0MqScOZzeTm3fVBGkdWhgLAxJOYqHvdnpUYXFLvaBM+MzjzemCgthQsjEqEQHUXQV89PUJU9LNDB9r4JfloR2HJmkDhIEyH00hPpUQisnvm9fdjr713o+XRWXbO9W7jwae790ijLMKQeKfOiAxofBcSIvlrJELzii+ruGiU50GoA3ZtnW/Nn5kNc5a2yAVCRX3MyI6hfe1a9eisXFL1qq8uZ70SWk/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(38070700009)(26005)(38100700002)(2906002)(55016003)(41300700001)(5660300002)(86362001)(52536014)(316002)(8936002)(8676002)(33656002)(4326008)(64756008)(107886003)(478600001)(71200400001)(6506007)(76116006)(7696005)(122000001)(66476007)(82960400001)(66946007)(6916009)(66556008)(66446008)(54906003)(83380400001)(53546011)(966005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2NHYzVDcVhuTTVXdzdlWnp0em82azhYUndQb0U3a01ScjZKVStkNnlVVitF?=
 =?utf-8?B?bjVsZklzYXMwZWx2V29yS2ZVaUxxVVR2b1A2cXBqUUVOZU5zVXNMRUtuSERG?=
 =?utf-8?B?b3YwOTZzV3BPTC9tWjRTZnl3Y3RNdUx4UUlFcExua2hyYzViNDY5ejVPWkVP?=
 =?utf-8?B?MDdmZGlKVjU4RUVKTU1yRSs5TkNPYzlYY3BKbktKZUIwcS9hRGZ3bFI3TXp1?=
 =?utf-8?B?eVRZb3M1K0xwbDVMYUZYNDlaN1pYT3B5UmFtVVhkbDJ0aUswSFBhcXVwQVc2?=
 =?utf-8?B?SFYxYmJRcWFLdDBVZjRQeG5LQlhsWFFTUXM0OGRaMElxdlBzeVdIeks0OXhn?=
 =?utf-8?B?REI4Z2R6K0pjbFNkLzZzRUNBYURNZkQxUy9PVUNobXZPWEk1RjhKem9iRFhn?=
 =?utf-8?B?VkFOTEZESVo5M1ZwZ1FKQmlRbkpOL25qcVpwNU0zc0hvbHhMNHJXNk04Z012?=
 =?utf-8?B?TmJ5bEdMdTRBOUZWUVVOMEtxaUViZlE2TEd6b29VU2xzKytGZzJuam1nNzdZ?=
 =?utf-8?B?QXNUdzRBSUEzcm1PdU5ScHlFSjE3OVhwS1NINWNHeTBhRWl2Uyt1cFp0bXNt?=
 =?utf-8?B?U3U2Qm5kT2U2N1plZGpmYXp6bVpKMXR2TU9DTkM3dkhOb0ZkZUxhdm5GRTdk?=
 =?utf-8?B?eHkvdDNGMTR3MDdWMGN5d1ZVc3IrOFFRYk9WMzRFeW9qOEtxYi9QeEU0UCs2?=
 =?utf-8?B?U2hhZVJYQ2wwY1dtUGRzdGdUdXpEU2EzK3F0bmJDWXNlSGVHekhLc1pGc1g5?=
 =?utf-8?B?dmZOUUl6VERRNSt5NDdlNzhZQ01lMjY3R3I4SDdLUEdZUHdZZFFCNVNuSXd5?=
 =?utf-8?B?UnNCWEJoRGsrUGhUQVBrUTdjRXdCY25DU09HZU4xVlYvYzVsM2t4TXdQcGdq?=
 =?utf-8?B?OFpQYk5wNms2bkpXY2JoVmpOWk9sajcvejNsUC9qdUhQRjZCeFg4aHI2ZDdQ?=
 =?utf-8?B?UnErOG9wU3prVUltR3RJQkNnZnlSL3piQURJVmViREFKUjViaHdNMWlWT3R3?=
 =?utf-8?B?OFJuTHQwTUpsWnpBMXpBaFgybFl1Q2pxTlFtR044RnR6NExYeWVxc2lhSnd6?=
 =?utf-8?B?Rk14eU9iVHg5UHJUbzd6S0wvZkV6eEg1bFlwZ3V4Uk4xRGpZSGFwMXQ3TWox?=
 =?utf-8?B?Mk1QdVpsTUp4bkNIOUtGY2E1bmtUM1dURHFMRk9idXQvSmdKQVB6L1h0ME5I?=
 =?utf-8?B?cFJuRTRsQWxqMllrQUVRbnJhNWhvc0lNSmgxOVRQMGZYYnpzUzk2SUxwcWRB?=
 =?utf-8?B?S0IxK2c0aFQwTTBsZzRic1EwT0FqSFhxdXFKN2xPY0dPVEV1bEhoaitvd2k4?=
 =?utf-8?B?WkNVSXJKYW83OEJCNktGZ3BwQmxNOFhKdWFZMFcvZWk3Ty85cGZFZ25WV05i?=
 =?utf-8?B?Q3JGZEloekFOblpTTDBnVncxVTZKZXZwVUJ2ckhpelhZYVlQR3RWK0ZEQVBk?=
 =?utf-8?B?NHkvR0ZFMDRDcTZ1RktaM290REw1cnFWTkRaYVA3ekUyN3prZ2VwZTZ0SkF6?=
 =?utf-8?B?cnpqQjErMW1paWR6M2NEOVg0MmlYeHpaTnNzTXVYaFh3eng0bjlDQ2pTYXNm?=
 =?utf-8?B?VmNGczJoZmVBUzh3czVhWFlydmpDSXZ4cCtTVkZoaVc4Wlh2TkNqS1NzbWpY?=
 =?utf-8?B?WW9uOW1EbGhwSDFydmpjWEVyQWJOWTlUVThEaWxhSVlGOS9xY01KWjJzcFBi?=
 =?utf-8?B?R2lROUpLa3FZcWU3TGV3NWg0MnhGWjc2SFVYOFdhNFFmRWk1ZzVCUFdlT2h1?=
 =?utf-8?B?Z0xWTXdVR2dpSjU5b1B5ZWxxdmNueDRSSFpaeHNOeXl6ZWp5SUdkMjZjNWxP?=
 =?utf-8?B?RTBoZDU0SFVjZ28xSFpYK284OUlwUmlrbWdMYktuUVdCNnUyYmo3N1JHRlgr?=
 =?utf-8?B?a1Bva00wVHQxRWx0SmlETnBVdGlQYlJEYnR2bVEvTTF3Y002MGNBdHNPUzhn?=
 =?utf-8?B?TENGa1U0c3dVaXNtbWozV1FVYk9FcUVPYjFTYmN2cU1tZUttYmFINXF0cjFF?=
 =?utf-8?B?SlVjUm4yby93VWVhV2VicUszUU5UMVFYZXdMZ0hxMW9rZ2pHZnpsbFhPUFJD?=
 =?utf-8?B?NXYrT2VlNjIvektnQlQ0cU42MktJOUpQOW5TdjRDQ0ZDUjVKL1MvOHpQU3F3?=
 =?utf-8?B?eUZvcTJYRExnaG5XZkNpTW1GWU9KWFBsTDBBL3p3RFoxeFJaTVVPZnVncVFH?=
 =?utf-8?B?bEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93a1c154-85f7-4cc4-8725-08dbd5609353
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 13:44:56.8036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v42+mwYeWM/bckvNcM6NXIXnYrQHVOcvk93QWmwQjRuMQFwRGqtRz0Mc6Ea6MoZtzLtZSf4HGyvEQ1rln1dWijnerrpoIrYUGbSNq/8Ncgo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5973
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231013)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gQ2hyaXN0aWFuLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IENocmlzdGlhbiBCcmF1bmVyIDxicmF1bmVyQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFdlZG5lc2Rh
eSwgT2N0b2JlciAyNSwgMjAyMyAxOjAyIFBNDQo+IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFy
IDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgS3VybWksIFN1cmVzaCBLdW1hcg0KPiA8c3VyZXNoLmt1bWFyLmt1
cm1pQGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFJlZ3Jlc3Npb24gb24gbGludXgtbmV4dCAobmV4dC0yMDIzMTAxMykN
Cj4gDQo+IE9uIFdlZCwgT2N0IDI1LCAyMDIzIGF0IDA2OjMyOjAxQU0gKzAwMDAsIEJvcmFoLCBD
aGFpdGFueWEgS3VtYXIgd3JvdGU6DQo+ID4gIEhlbGxvIENocmlzdGlhbiwNCj4gPg0KPiA+ICBI
b3BlIHlvdSBhcmUgZG9pbmcgd2VsbC4gSSBhbSBDaGFpdGFueWEgZnJvbSB0aGUgbGludXggZ3Jh
cGhpY3MgdGVhbSBpbg0KPiBJbnRlbC4NCj4gPg0KPiA+ICBUaGlzIG1haWwgaXMgcmVnYXJkaW5n
IGEgcmVncmVzc2lvbiB3ZSBhcmUgc2VlaW5nIGluIG91ciBDSSBydW5zWzFdDQo+ID4gb24gbGlu
dXgtbmV4dCAgcmVwb3NpdG9yeS4NCj4gDQo+IEFueSBjaGFuY2UgSSBjYW4gcmVwcm9kdWNlIHRo
aXMgbG9jYWxseT8NCg0KVGhhbmsgeW91IGZvciB5b3VyIHJlc3BvbnNlLg0KDQpJIHNlZSB0aGF0
IHlvdSBoYXZlIGFscmVhZHkgZmxvYXRlZCBhIHBhdGNoIFsxXSB0byBmaXggdGhlIGlzc3VlLiBX
ZSB3aWxsIHRlc3QgaXQgYW5kIGdldCBiYWNrIHRvIHlvdSBBU0FQLg0KDQpJbiBjYXNlLCB5b3Ug
c3RpbGwgbmVlZCBpdC4NCg0KSWYgeW91IGhhcHBlbiB0byBoYXZlIGEgZGV2aWNlIHdpdGggaW50
ZWwgQ1BVIG9uIGl0ICh3ZSBhcmUgc2VlaW5nIGl0IGluIG1hY2hpbmVzIGFzIG9sZCBhcyBHZW4z
WzJdKSwgeW91IGNhbiBmb2xsb3cgdGhlIGJlbG93IHN0ZXBzLg0KDQoxLiBHZXQgdGhlIGxhdGVz
dCBkcm0tdGlwIGZyb20gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0tdGlwLyBhbmQg
aW5zdGFsbCBpdCBvbiB0aGUgbWFjaGluZQ0KDQoyLiBHZXQgSUdUIHN1aXRlIGZyb20gaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzDQoNCjMuIEJ1aWxkIHRo
ZSB0ZXN0IHN1aXRlDQogICAgWW91IGNhbiB1c2UgdGhlIGluc3RydWN0aW9ucyBpbiB0aGUgUkVB
RE1FLm1kIGZpbGUgZm9yIGJ1aWxkaW5nIHRoZSBzdWl0ZS4NCg0KICAgIFdlIHVzZSB1YnVudHUg
YW5kIEkgZ2VuZXJhbGx5IGRvIHRoZSBmb2xsb3dpbmcNCg0KCWEpIE1ha2Ugc3VyZSB0aGUgcGFj
a2FnZXMgbGlzdGVkIGluIERvY2tlcmZpbGUuYnVpbGQtZGViaWFuLW1pbmltYWwgYW5kIERvY2tl
cmZpbGUuYnVpbGQtZGViaWFuIGFyZSBpbnN0YWxsZWQuDQoJYikgbWVzb24gYnVpbGQgJiYgbmlu
amEgLUMgYnVpbGQNCg0KNC4gSWYgZXZlcnl0aGluZyBnb2VzIGZpbmUsIHRoZXJlIHNob3VsZCBi
ZSBhICJidWlsZCIgZm9sZGVyIGNyZWF0ZWQgd2l0aGluIHRoZSBiYXNlIGZvbGRlciBvZiB5b3Vy
IHJlcG9zaXRvcnkNCiAgICBUaGVuIHJ1biB0aGUgdGVzdCB1c2luZyB0aGUgZm9sbG93aW5nIGNv
bW1hbmQuDQoJDQoJc3VkbyBidWlsZC90ZXN0cy9pOTE1X3NlbGZ0ZXN0IC0tcnVuLXN1YnRlc3Qg
bGl2ZQ0KDQpSZWdhcmRzDQoNCkNoYWl0YW55YQ0KDQoNClsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9pbnRlbC1nZngvMjAyMzEwMjUtZm9ybWZyYWdlLXdhdHNjaGVsbi04NDUyNmNkM2JkN2RA
YnJhdW5lci8NClsyXSBodHRwOi8vZ2Z4LWNpLmlnay5pbnRlbC5jb20vdHJlZS9saW51eC1uZXh0
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbW1hbi5odG1sDQoNCg==
