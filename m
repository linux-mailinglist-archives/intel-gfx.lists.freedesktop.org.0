Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D70D087987E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E541126D3;
	Tue, 12 Mar 2024 16:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="COp/eFQm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF436112EFD
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 16:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710259320; x=1741795320;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sHCqpRDY5nNGPmL/y3dAAsGRszmKXxxAVRLmz5KGqG0=;
 b=COp/eFQmc9D2RYir+adCxVmLKLA8B5c0PwGym3mooamGO7twafVlcfse
 m4YsdrGVpcUN5QuwzWohhmE0a1TuMhp8+LVp43YV1eIBhs5YWafTCQ3iC
 awTA01/x4rAz8buGnWC9stn+S+8P+Qmm3odZBTTC+cJdF1C3dSUK+kMun
 h0Mp6kQvo1FnHU5gqsbpnELA6a+X6jHcran8I40OrOZFxW5PDYHghN5oj
 549qiXo1XafGBXP6fP93RIhVqkutYGOnAMSeBo4wSrTltrR1GkkHqq3+f
 wEyN4k/Oj7rXnmAHou302sbWGIyTacPn2RVP3jDfiRRIYqoyZYtfJuXVR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="16378072"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16378072"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:01:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="42524817"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 09:01:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 09:01:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 09:01:35 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 09:01:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JoJEZrJevKIjtYPXDLvCz1sF9W8Mf+llO3G6bW7fD/Iu/797d+ljlGaqXBul4rvbsvrlNCxIC3BE9Nlr17pLFCs1bVWywUelxkBrXkWUKAqTOQ9NPjTPG7qGMWiygPVBK48NT4/EgC4Uh/ydpn72Xtjb2pKuxW3jy95Ct0Pm0k7kHKqDAdS30dQq9jsDfyNZXuemYEjqE3hQmnOmpgpHPCp+w89/x12muL2fLGGVgJ47acbBMUpK8X5zGiVBBNOqPi8FyCVx4A8Z9UEGY7T4fUqGVu7fqGyeHnARoLHsU0sxn4olpGip2GuxBYvnql0zG/JjF5xnLV+odTfaZ9HVGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sHCqpRDY5nNGPmL/y3dAAsGRszmKXxxAVRLmz5KGqG0=;
 b=BZs2ZMxWRtE7cVSqqpoJAN4trgycNK8BSH2Xi/TUS6/8PTGd0H2wgdPvXeyySjbDLwuRi2iqLCAQqRG4kmXp/IUgFV+mDL7BbdxXJXLJl1yezZyll2RDn/T5eo04x5xVV7XX6/988gDHqZuzobDPAijG765xSrHC70TSLUgwBnCJC80fnW8BeZBQmb8W2+A9yCExI+kSWDBEBOqpKgxT4NXrC4KpCDMX+GXwcNquaPbSmc5aOBzsRBxX2CyTYOHTSFyRA7cdvi4/VrftFUyHAcpznZQlVMxOS4EkBh4x18z7o6chgP4st8IIlcD6APAhjnN/pfb2HQ1xLev3/y9NjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS0PR11MB7263.namprd11.prod.outlook.com (2603:10b6:8:13f::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.17; Tue, 12 Mar 2024 16:01:30 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9%4]) with mapi id 15.20.7386.016; Tue, 12 Mar 2024
 16:01:30 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VGhvbWFzIFdlacOfc2NodWg=?= <thomas.weissschuh@linutronix.de>
Subject: RE: [PATCH] drm/i915/opregion: add intel_opregion_vbt_present() stub
 for ACPI=n
Thread-Topic: [PATCH] drm/i915/opregion: add intel_opregion_vbt_present() stub
 for ACPI=n
Thread-Index: AQHadHSP5bY5F1v6d0+7I0H7XBNHurE0QdYQ
Date: Tue, 12 Mar 2024 16:01:30 +0000
Message-ID: <DM4PR11MB5971A7C401C99CBE37DAE8BD872B2@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240312115757.683584-1-jani.nikula@intel.com>
In-Reply-To: <20240312115757.683584-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS0PR11MB7263:EE_
x-ms-office365-filtering-correlation-id: 98a3a484-810d-4064-79a5-08dc42adaeb2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3VB8NU7CKIH8vVzceOCnvozrl6GntFH/2I38yIGStYPFWWrvFVZr8Kckk25P65Om7l4pz/PbcmGO9Kg6IrEX5pQ2NuOOOujw/yQkyZOl0ookgCvJMR8n5zbcjyqwXYWwP+4mxiXGK3tSi6MxDHQq+zKLurgoQAkGl3UBvK/CV11oGcCrJJl5RX70qTD6GQ/miEs3Ep51puqRmNtM+ySCm1eKEnsokoAkT9T0jh8/dIRf9MYWhvD5FGW0LVAfYKt983svyqp/u3yvhqe5/ZRKhOReeIjXfP8DznaaJWsiQzmnYzAaVRN5Qvomj7GJ7UVuP2+5woxdUOU4oG7zG7c8ekthKfqf7Lyaj9rCsogRRmW8+6ryA088oRG4XKuVTYc6ie1vL+2yF8GNLuWpaxGjtCrU3QTgWuFLkTjrEhd4Z+uNNgT181Zg6IXu/GzV+lvHmBwyiexUbUhGC3gGH2ygJNJcPLS3E3sTDyS6b6gxPwGvQlnStBRP/6Dr9STmEoLgz+MN51dDQoY1V80wgHw3CeNJ5wdBnDYbSaJba6nRcrt9RU/ythsXGxx3QhHw+J2RD+j2wcu84Q5R7bTfdQluEQVS2YgwmfJL4Uz4mNbZRBkWYrrdZ8ez7vSl11RvWxMOw0ffMmh+0SVb8x2B5rw9pUTtUz/uWVYCYM8dSe/hai8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cW9QUWJLT2tRRnhPRjNuaTQ4UlR4RjlFeHlBUWIvUzdEVURlM3hoVkt4K3d1?=
 =?utf-8?B?TU5OWE5keVZzQWpDU2lSMXR2RWk4OVJxM3BTSlppdmsvZ3VpY2RUZzlEVUw3?=
 =?utf-8?B?RzdqTlkwVUxBZ2Jvek1DV2tmU2dGejFwWWNQT3BDNUdmRGdVajk3U2xGa2dR?=
 =?utf-8?B?VGtMR3ZrS1dycDBHNFQzY01KSUplaXBlSkJXVGtNdFhXeG1idG1jeWVzbi9j?=
 =?utf-8?B?OXFkME1mQTdleTliRXJsV201b1BOMGZ4YmhPSTVOKy9DU0s5ajhmNXFNTDFE?=
 =?utf-8?B?YjFOSlBBd1JjeWdkTC9nbmw5bDR5eisxZEY3c0hkR2RueXIxWm8rZytpbGht?=
 =?utf-8?B?MjJKWEZoWHRvdHdmaWlUVCtJUUM4bHpIVmlyUkN5UkZ4ZkVNU0ZNL2xDTUVX?=
 =?utf-8?B?dXJXUjJTKzhYdG5JUG1qb1FCTU5yK3hLanMvYnczTVNxa2FRWDAvUTR4cVp5?=
 =?utf-8?B?RWpJR3N0aE55TmdYQlZjdTJSWmphY0tET05nZmQwN1Uxa1hDN1N2WW5uMlI2?=
 =?utf-8?B?TW9IYjh2VTBxY0ljM3V4aXFPUVl4Mjd1czlDOGNsVitkL2tjdGEvYjZ0UDRZ?=
 =?utf-8?B?dTlHaFBZK3VzVm5JNDdzZjltM2p0OGtDQ2tlMFVEVFVVZC9Ma3hETGpSbUQ4?=
 =?utf-8?B?VlZ1aFdreFJrakREUkppa3lGVklpeUhrYWZnVHdxWmg3U3ovemJxZ2k1UnpO?=
 =?utf-8?B?aXlGZmYya0owMnJyS1Z4L1p6QTh5bmtiVml1UWhxc3p2ZVBpb1VJV2F5Vnor?=
 =?utf-8?B?Y1dBdDUrUjREdVYxSlY5aGFXUUo1bm1pQmhwcUFTb2dGNXRDeU1Pc2RIS25X?=
 =?utf-8?B?VG4zMXduR1FYQUJUYVV4OVJDOThuY1JBcCsyT2crYXVKUmREaHRxVXNjeXBh?=
 =?utf-8?B?L2JvYW9iVWR0aXIrQ0RibWhWRCtmL2F3bWRSSGk0WlZLOGlvcXo5c0pKdXVp?=
 =?utf-8?B?ZElEZytjbHVjZGF0TytrbFVSRjJac2Iyd2p3RFRuaG1YdkZhWXkvUjRJdjNO?=
 =?utf-8?B?WDI4VHZCL3pQUDhYQ0hZVmZVT3JmQ1BrcjJXcW16a0FwYXVUQjVqL3hZTTZu?=
 =?utf-8?B?MExYNEk2QUpIMWhmN3lYNHNTNkJySWJIdHVyM1RNWVhVSFBzV1BYcFVEeGIv?=
 =?utf-8?B?cVhPeTZNbVJaZk9iakZ5L24rajVrSFh6MHhzcXhvb29tRjJMZElnbndVVm1p?=
 =?utf-8?B?YW93cDBvM3RVTWdHTFRwQi9pSkpuRkRrQ0Q3RVdSWUlPY1B2TjJlczZrTWpi?=
 =?utf-8?B?SEtoTTc5bHpxTlI1QnVmdk5nOXFKK3cvNkN1SjYzSU9xb3ptdnpMRW9EdkN2?=
 =?utf-8?B?Sllzc2dZbTlaV2h1YmJTci9zTkloTzV3Y1lyZ2d5TWNIRTFjRkZuWiszKzBz?=
 =?utf-8?B?N0QxaWxXamIwekZlcW5wb2NoVjFMZkg4ZXhSYnhrZTF2VkhnRFBDcDAwMkVV?=
 =?utf-8?B?STZhQVQvT3pBbzJlcmJtY01oTXN3bXFPS2k2ZUFqc1FMay85c3JkWmZ3WVNX?=
 =?utf-8?B?OWxVczdvTVB1enlRNlBvYVNPZTdGUW5GRVNGSFFkN3A3UTNDTjRNeGtnSDJH?=
 =?utf-8?B?N09wZDZrY0V0dWo0TFlmb3N4OGRLTjlSY0QreEVQSlp4S1RhYndYQkNmajkz?=
 =?utf-8?B?TExZeFZ0RHFMU3lPQnZ1RjFPamdaQy8zWGc3UGg3K0FCZWg1MGIzVmZ3dFFa?=
 =?utf-8?B?L2Vocnp5WDFydkZqVHE2d0FUYVU1bnZseVYyOUJBcmp0MmhBSEJvVndXc0ox?=
 =?utf-8?B?YldTTTY1OHJuSW5vQ0ZHeTBOYW5XY1Z3V1Y5b1VJOVBGTEE2ZGxteUhaTzRR?=
 =?utf-8?B?a3BrNFBBMEdZSXUxTzVadk9ITTM0R0h3cHA4SmlSVkpVVk1OOEZkcCt0OVNQ?=
 =?utf-8?B?ZUkveXV1Ukt2WXEwamYxNmRjSTR0VTMzUG02WnpFWjJRdVpHbDQzREtKYnM2?=
 =?utf-8?B?bHl5cTdrMUhlTU5HMDRRZExzVXAyUkhXTU5QUDMvc29OenRvdFV0Z3UyUE84?=
 =?utf-8?B?YW1DN3ZKQithTjZMOWFjbHlpQUt0THlvZ2NjSWMxSWpueFdXR3RSWG9tVnJN?=
 =?utf-8?B?WDlwY0Z4TEZaTFVPVXVSTno4Qld0V1UvWmt6QlRpWmZ4aXJoN2R0ZDl5Z2xT?=
 =?utf-8?B?dlhaelE4K1NkcFczeE9qM0dqVmpreEVsb1drM0xhMGpyemdXU0xnOFlZdmNx?=
 =?utf-8?B?U3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98a3a484-810d-4064-79a5-08dc42adaeb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2024 16:01:30.7046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vlNVxwQth2D2f4WgBr5l23d6Wi//RRNE8ocWOGOUYpWsFs414KLXeRzgQX/oznGJjNTXTvDbTo+h/5xkL+qg1Bg2OFuqHgEYytpqhTV/h0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7263
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TEdUTSwNClJldmlld2VkLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNy
aXBhZGFAaW50ZWwuY29tPg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBN
YXJjaCAxMiwgMjAyNCA0OjU4IEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IFRob21hcyBX
ZWnDn3NjaHVoDQo+IDx0aG9tYXMud2Vpc3NzY2h1aEBsaW51dHJvbml4LmRlPjsgU3JpcGFkYSwg
UmFkaGFrcmlzaG5hDQo+IDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSF0gZHJtL2k5MTUvb3ByZWdpb246IGFkZCBpbnRlbF9vcHJlZ2lvbl92YnRfcHJl
c2VudCgpIHN0dWIgZm9yDQo+IEFDUEk9bg0KPiANCj4gVGhlIG9wcmVnaW9uIGNvZGUgbmVlZHMg
c3R1YnMgZm9yIEFDUEk9bi4gQWRkIHRoZSBtaXNzaW5nIHN0dWIgZm9yDQo+IGludGVsX29wcmVn
aW9uX3ZidF9wcmVzZW50KCkuDQo+IA0KPiBSZXBvcnRlZC1ieTogVGhvbWFzIFdlacOfc2NodWgg
PHRob21hcy53ZWlzc3NjaHVoQGxpbnV0cm9uaXguZGU+DQo+IENsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI0MDMxMjEyMDI0MC1hZmRiMWI4My04NTE3LTQzNGItYmU3OS0NCj4g
MDZmNDFiYWZkNzFmQGxpbnV0cm9uaXguZGUNCj4gRml4ZXM6IDlkOWJiNzFmM2UxMSAoImRybS9p
OTE1OiBFeHRyYWN0IG9wcmVnaW9uIHZidCBwcmVzZW5jZSBjaGVjayIpDQo+IENjOiBSYWRoYWty
aXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uaCB8IDUgKysrKysNCj4g
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgNCj4gaW5kZXggNjM1NzNjMzhkNzM1
Li40YjJiOGU3NTI2MzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfb3ByZWdpb24uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX29wcmVnaW9uLmgNCj4gQEAgLTEyMCw2ICsxMjAsMTEgQEAgaW50ZWxfb3ByZWdpb25f
Z2V0X2VkaWQoc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yKQ0KPiAgCXJldHVy
biBOVUxMOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9vcHJlZ2lvbl92
YnRfcHJlc2VudChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gK3sNCj4gKwlyZXR1
cm4gZmFsc2U7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbmxpbmUgY29uc3Qgdm9pZCAqDQo+ICBp
bnRlbF9vcHJlZ2lvbl9nZXRfdmJ0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzaXpl
X3QgKnNpemUpDQo+ICB7DQo+IC0tDQo+IDIuMzkuMg0KDQo=
