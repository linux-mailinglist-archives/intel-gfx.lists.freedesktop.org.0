Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 530458939E6
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 12:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA14210F053;
	Mon,  1 Apr 2024 10:01:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1h1zLum";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A660610F04E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 10:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711965681; x=1743501681;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=e4vWp4nkNaIkZcuIw5jlLw957IaEVkMN9NlWFB4c2Ms=;
 b=f1h1zLum7tVyFt1bpg0Jch9JCv1rP6YjEJvKY3tgTJg9kmcmZjPxgO6L
 yt+zxQsCAyzgXQCRE4zwHwc6WXll9oT+bYcPk00drKzZ2LV4gHjrqQHjy
 PDqMzd67cdI6uknRPbkNnQ57cOczkMSSUPJArQt0sn0B+S8uhlBkUzxnB
 vhhLV8UKdn5wvBH9LdEG4m9LBM2hOvZe6u6F4IFcuDyfzsBeEfWo+271e
 lZYhQUyEfVEedCFf4hN74DdGTdn81+66XpQ3n2AhfLn6F88JN6gcNLzZj
 CxSSwKDhP8f1FInZcxWGuZq93cDDgCzkRKlALAb46SiQ1UmizugMO1JW+ A==;
X-CSE-ConnectionGUID: RzBdlE2PQ2ulSe6ZMYOS9Q==
X-CSE-MsgGUID: Z9uU9Y5jSM+oQJHqSnG/Kg==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="18528619"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="18528619"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 03:01:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17543093"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 03:01:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:01:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:01:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 03:01:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 03:01:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUxDYyvsXik/XOlSAEbjoEEXGNL6dVSW5bNIvy4xNE2dTUkhQeYaKKhhpiXeEpOFIA52aksbtV65Dvdy1bnwogc2ItdlT4dfWDKg0oBl+7T5e0WP4Iw2blVatWnstr4djM0twvwoeNpoVX4JdhxRsuZToTi4UTXWs17y6xcU5Th6th28603h1/604SM6WNQQX7t/MdTX3B4EmB+wRCslxe+rQNXZp6ufvhJuelNu7ZdL2L7gvJpaVEBXIlqSOOqHzJSnm7V690A+HnDpjrveWQUmUqfNd1Lkdgynj5fZqabbY8LWZu78UNtT4ZfR+8EF0BBqE+d0Z9jlENMVbd+Wow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e4vWp4nkNaIkZcuIw5jlLw957IaEVkMN9NlWFB4c2Ms=;
 b=VpsQm3Hze/LlquKHL9611FrM56i/iirhRhlnkXBkdzeGtfqUKBa5Tt64UDqXriR3xtdkux1zdWSVk4yDKj+ISYLWaSdFC4uMddGzIAYTZzxL4KgKubrpoJuEn2lQgyI6rSw1mW0Tp2sqayZAGfOnEEv4gaHgqtWwqmc7qIrd0feoHEl/okBJXhiZi+miVNKD8e/YizjnZSYvY8jk2JwEVqz3v+t7QXDLugLPdp8Lu/X/UQq2XiXFS0A1yc8VMFXgBH4xiTMXpaE39B9/vD3TF5kSfpGD1KfbJUVRblm6tzWJkZtf6LJAJtPqjkOgOIpCX9+Hs3X8GT0Ui/Ud3Gruow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by MW3PR11MB4572.namprd11.prod.outlook.com (2603:10b6:303:5e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 10:01:12 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:01:12 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 09/22] drm/i915:
 s/intel_dp_can_bigjoiner()/intel_dp_can_bigjoiner()/
Thread-Topic: [PATCH 09/22] drm/i915:
 s/intel_dp_can_bigjoiner()/intel_dp_can_bigjoiner()/
Thread-Index: AQHagXZhPS5Eg/eK1kONwBdvfY1TarFTM4Og
Date: Mon, 1 Apr 2024 10:01:12 +0000
Message-ID: <SJ0PR11MB67897A1F03F4827B3D4898B28D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|MW3PR11MB4572:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c9secdaiu06FvfUJub0qs2KDny4x6UGkDAgdSSefOPajKpKkglJgqHqSg6qgmM71PLGhvrFLagDl8ZXEVnICgRQDihWXc9AwfbWE7kRNHgxO45v8npn9IKcY/EHRrDDhHJOTmdTPVFCRrAa+ZBK7N8A+32VUNYOSYdfmVo5w+q+jLrJ0/fvV380yNXR7JIV+xMgGJ7VxJYTPBqW1gorEwQNRdKo8BsqDnn6AmhwrK+WDtLKH7bEoWnSYhrSfSGlyS0k0U9ymqY2AuqpaItXP8ndhpyUVH+ybosVfRUoqL9xfxwUrikyz+R1HOUMsaqNV8DWcezltq3C1wVOa2ET6+lUwXqfM4Kk9Q6r+rN91xAHrZK6L8jm4FRfMoGUc34sjC3XUyLL+ocnbi6M+Lz8ue0OFXjzqAUvdFrw9kzfjjOLukKeqJo1qA7nmXkYqhC7EfH7pXLz6IN/MIFuGSUTt8K/m9SYJOWJysh8PIBNSjJZNRc+p8d1BjmaV7dfEvWn8wfXXCfcucVAqYbibW83Nw9RfhcP4pdCD/TLA0zsV1t2wlb/Xq8F4ibvdy9/6PnqSyL3B4zZIPSZfls7vzHTamBhpqXAJBk/VAqzAOnEUX6iJ/WimLpDCJ5d8Fb8YctamHJ6K4aY/kOjGiS9yKaEaofkPjrOC9pTsqSfhBNP9QxI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHRnQW5GR1g2OXV0QzN1a0pnb0ovRDVyUC9FL3hHdGF4M2V6YVRubW1lNktm?=
 =?utf-8?B?NTE4cS82WHFPdXZndTc0aU05Nlp5Tk1teHVrd3c1R3NFM3ZzTjUxcDA1OXlx?=
 =?utf-8?B?V1RrQkF0Yi9GL2hZQ3hmbUlBYU8yU1NBOE9tNE9tRVFoc2hEdWd0Uk8zMkR0?=
 =?utf-8?B?QU5YdWVtR2NoRTZ5clVyellFMUxTYTYwL1VZdnNIQVRFcldGaE9QY0hEL0pO?=
 =?utf-8?B?OXUzTjNkRTdNOVlocG1xWThKaVcxOWNOTUcwa0UrZWdaanNOcnJ3bHg3ZkJ0?=
 =?utf-8?B?YmgvRjAvenJCMEgyb0pWUG90U0NHdW9yUWtUNGxEU3l5bXpjM3dFbWRQbjVB?=
 =?utf-8?B?MHFJYUVsak1TekpLVU9VZ0RhNEhOYkJHMUt1THc4cEQzT2YyVndtTGxTcXVK?=
 =?utf-8?B?MjlsSW9wM1d4TE1uTWM4cmpGMU9NS3docEc0VzJURERWbFJQeWJZcUdEb1Q2?=
 =?utf-8?B?bWs0RytmYzkzTGdKNld5cldPc0xVelBiczlhNkhObzB1M3VXWkdVU0I1cFhn?=
 =?utf-8?B?Skw4NTVjbEs2dkdxaXR5ZU9WbFNMZlFtdkZIY1VBYkJHNTlGUGc5RTNBWUNJ?=
 =?utf-8?B?NDEyZFNFWFd0NzZEcHlHTndTTkVMMHc3Q1BFNDhubVczTWluMFNQUUJFSDVa?=
 =?utf-8?B?cGRzcTZEN0lTclZJU0tkMXRvUk9YbHZlV2VCOVl3RGZUc3VEOXhlcitDaUhT?=
 =?utf-8?B?eHdvLzlvTDdDL3h3blE0a3lpejlXZzg5RU1HcXFXcEUveDhsUlE2THROMVZj?=
 =?utf-8?B?bFRTMEJtaEhnQzZSOXlkYlhrMG9HV1JhdFFMYUdOYUNobC9IbHMxWG5oSHlY?=
 =?utf-8?B?bmlKNWd2THVMVDBHd0pkU1ZiM2IwRURLa1NNRXVKMWNIbStuY25HMldUV0xa?=
 =?utf-8?B?VlBZV0pHTC9adW5qR2hmVllhaWlGR0t1cytmclRDQTNRYjhjdUdNak5FVzc0?=
 =?utf-8?B?QndjSytPcThDSlNhRnNrblNiZ2pjc2Fxck5kandHRGRZdGc1dkliRWw3TU85?=
 =?utf-8?B?R0F0RHNabitHYVY0VGNyUnhBdFUrVkRVbWZyTEVaaHNNZ0xBZFlLbHVwWTUr?=
 =?utf-8?B?c3AxTk5DY3Y0ejg0amxoZHF4cm84aU5sVXYydVJKUmlNd292OVJmL3h5cXZ4?=
 =?utf-8?B?dVpzelFLTHhVY3U2U0RBS0ttWFRWendvTzBOVHp6MzNlZlU0cVpoM0FLVE5L?=
 =?utf-8?B?RlduanJ5OEZnVy8xUjhUcUsxMHlsRHU2S2dPN0tMZmE1cmplOVJxKzBLcHdx?=
 =?utf-8?B?ZVYveklyTnVicnhQZ0prWllaR0xERGZ3V1pzaGxRQjYya1NFWFRFdnpCWkVr?=
 =?utf-8?B?ZldSQnJXV2plNHBlRzk2bEVBbElPYUlENFJVTDJxM1k5WFBSaElvYXZQc2JJ?=
 =?utf-8?B?ZFE1QTZ6eGdiSHFpSVdRYXUxcXM1REh3NGIrV1RFd01VZUFpY2Zia2lHN1I2?=
 =?utf-8?B?MFZFSHhwWG90SHdUWXR1QlJad3BEVU1SWUxrN0F1SnZieGorQlhnSndPQWI5?=
 =?utf-8?B?cXlrVEJHV3pHYUFtNG9iL0NLSWFVYXFHRExiQW5VTVNEUW5taWNtNVN5T2Fw?=
 =?utf-8?B?ZjRhekFwYnRtcmtPUithd3doUUk4VS9rSWhabk5qTEd2RE5uRnN4K1hTWTly?=
 =?utf-8?B?ZFNXdDdoQUI2amtFMXZ4MDFxdDgyYVFUb05NRlBwZDVNT3cwM1NtSWw4bEpN?=
 =?utf-8?B?ZDUxZml4V1BQYnpqWjIrcEcwTnJ5Qk9yVGhHNnBKQTNxazI4R3VsRDhNUXJD?=
 =?utf-8?B?cXJlYzEzZ1BNZEs2OFREZE9Sa0R0SnhSYk1tL0R4QnFNczd6emhBRXRVa1Zw?=
 =?utf-8?B?cE4vV0RKUUczNGNoRXcyUHRnaWluMVNKMVk3VUpYaURYUE10dmpQMjVycTlF?=
 =?utf-8?B?MEVkbS9NWVdjR1dDOXVDZ3RJUHZKWHFER1VvSUNlMlNUS1F1M1NYNE1DR0tJ?=
 =?utf-8?B?ekEvTHlIQTV6Z3BkZ0dpS3dieGl0Z1VSUHg0MldKYy9QQ3NaeXlKNGdLK2pW?=
 =?utf-8?B?bXRBVWpIbzl2NHppYzk2K0x1LzhHQWg2bkQ4SzBRb0lVd2s0T01iVnRpMlp6?=
 =?utf-8?B?SXVlOWdSbjZpaVlBOGdCMEEwcm8vUzU4YTY0cGpaVXEzemhwVmVzQXptcmN3?=
 =?utf-8?B?WFNMUzl0OWtJVG1XQmtvNGxzS3BTQXdmYlkxSjR1cUVoemE0eTV3bVZldEFC?=
 =?utf-8?B?N2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 815ac2a9-4395-41ca-a525-08dc5232a99e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 10:01:12.6936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NWwe36dAY2ROnOly/S3hYGS2FiuQ8FlylG+gPy385adwI5Czx53z2WnkN2JM+J5JKEnsI8XdAzQwmVTLHnl1yErwozizSYcx62FMzyjOnJA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4572
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwOS8yMl0gZHJt
L2k5MTU6DQo+IHMvaW50ZWxfZHBfY2FuX2JpZ2pvaW5lcigpL2ludGVsX2RwX2Nhbl9iaWdqb2lu
ZXIoKS8NCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IA0KPiBSZW5hbWUgaW50ZWxfZHBfY2FuX2JpZ2pvaW5lcigpIHRvIGludGVs
X2RwX2hhc19iaWdqb2luZXIoKSB0byBiZXR0ZXIgcmVmbGVjdA0KPiBpdHMgZnVuY3Rpb24uDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCg0KVHlwbyBpbiB0aGUgY29tbWl0IGhlYWRlci4NCldpdGggdGhh
dCBmaXhlZA0KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlA
aW50ZWwuY29tPg0KDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
fCA0ICsrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIHwgMiAr
LQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDI0
OTBjZTMyZGE1MC4uNDAyYjNiOGY2MzgyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+IEBAIC00MjUsNyArNDI1LDcgQEAgaW50IGludGVsX2RwX21heF9s
aW5rX2RhdGFfcmF0ZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCXJldHVybiBt
YXhfcmF0ZTsNCj4gIH0NCj4gDQo+IC1ib29sIGludGVsX2RwX2Nhbl9iaWdqb2luZXIoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkNCj4gK2Jvb2wgaW50ZWxfZHBfaGFzX2JpZ2pvaW5lcihzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmludGVsX2RpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0KPiAgCXN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmludGVsX2RpZ19wb3J0LT5iYXNlOyBAQCAtMTE5
OSw3DQo+ICsxMTk5LDcgQEAgYm9vbCBpbnRlbF9kcF9uZWVkX2JpZ2pvaW5lcihzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLA0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBf
dG9faTkxNShpbnRlbF9kcCk7DQo+ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9y
ID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5lY3RvcjsNCj4gDQo+IC0JaWYgKCFpbnRlbF9kcF9j
YW5fYmlnam9pbmVyKGludGVsX2RwKSkNCj4gKwlpZiAoIWludGVsX2RwX2hhc19iaWdqb2luZXIo
aW50ZWxfZHApKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAgCXJldHVybiBjbG9jayA+IGk5
MTUtPm1heF9kb3RjbGtfZnJlcSB8fCBoZGlzcGxheSA+IDUxMjAgfHwgZGlmZiAtLWdpdA0KPiBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBpbmRleCBjNTQwZDNhNzNmZTcuLjRhNGIz
OWYyNzQ4YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0K
PiBAQCAtMTE5LDcgKzExOSw3IEBAIGludCBpbnRlbF9kcF9lZmZlY3RpdmVfZGF0YV9yYXRlKGlu
dCBwaXhlbF9jbG9jaywgaW50DQo+IGJwcF94MTYsDQo+ICAJCQkJIGludCBid19vdmVyaGVhZCk7
DQo+ICBpbnQgaW50ZWxfZHBfbWF4X2xpbmtfZGF0YV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ICAJCQkJaW50IG1heF9kcHJ4X3JhdGUsIGludCBtYXhfZHByeF9sYW5lcyk7IC0N
Cj4gYm9vbCBpbnRlbF9kcF9jYW5fYmlnam9pbmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Ow0KPiArYm9vbCBpbnRlbF9kcF9oYXNfYmlnam9pbmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApOw0KPiAgYm9vbCBpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkJICAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlICpjb25uX3N0YXRlKTsNCj4gdm9pZCBpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcyhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgYm9vbCBlbmFibGUsDQo+IC0tDQo+IDIuNDMu
Mg0KDQo=
