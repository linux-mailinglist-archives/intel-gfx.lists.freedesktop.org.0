Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ACE6B511B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 20:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861C810E069;
	Fri, 10 Mar 2023 19:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B9810E069
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 19:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678477383; x=1710013383;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d3afPM0+9F21xYsUQagOjDwtF5PhGkXruRSkrK8wEwU=;
 b=bCEfF2Smu0gl1qQiCbMCTdaTOalw2AtDmePvAJjVsJjfeaNgfY3K8pH9
 iVb7z8Ilal0pdLg+lM6w03vBN5ee7FAR1pXBwRo2mgtaj6Bdj1bubF79I
 5nQTTZFGe1We/wF7jSEIM/DV9sAI2G72BwY7Hn799qOnK8j9Slt6/8AbF
 Mz+nzJSF5u064Qsy/z8R3fcpXyPuCLgBea4VIaLdZ7QhOLRpWEhE6FYKk
 v8NXB2tOy8Skwq5hgVwUXP5Cze3EB71TqJv3jkwoZHvs51yYrXYg4/6hf
 De9YbUxScjWCLTsyCTOfkp35eXT9HKHtr1BLA71EWA3r5ORphVwZSe3tB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="338369569"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="338369569"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 11:43:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="766939966"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="766939966"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2023 11:43:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 11:43:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 11:43:01 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 11:43:01 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 11:43:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L/X7QriErJzh3wcXT+mLWwT0zVAB1AkOdRWmj3tA/4mOqZyDTswKKeBtmzDKRtTQs/RTYDFLyiOdWCkdjz1IWRLHg7kMU1s4FcdB9S7aOpTyAZHzNaeu7AcQZv9+4rOCZJolAPcxD2o307IuaX9qrhEPcSuLl10RqUjxcbDj28AvAnGd4yDyNu5GQx270KPh+eEEOxSqbmtGD3fUvaSN8qWuNmZwe+klYnMMBN+HJCehduMBojAtIE0bu5cTkbsY/ijlshNEfxnbLW4IOAMYRNcZT8pyzSzyHKHrS++HPADKlzII4DIsSLuDEWZ/CTkafUEwOewX8Th30Po3veq/hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d3afPM0+9F21xYsUQagOjDwtF5PhGkXruRSkrK8wEwU=;
 b=OlpFm5k+nLdkTYrZ11LhkzexKHxKKn1oK+LdCG0VjhjDUfYno65NR9FYFLTIVc3KyjWm4CLQT1IAp3t9psNoELxxoIKvyQdiSrHwm9kAC4RbTfVHsxO9xQKC4DGL4Ogyi5447MB5FVddOVj2powTV2/3Fxzy2RZ/IvevImPqXwSouwpZJQ66q2QGRG6YziMHxREmtj1LVnFWw2QNCLtLOBTd8t+nynf+PXjq3znqF7sjXzq3GFxUAMrb7IytLfRzuEVl8voQgv2H4GqHUIUHjCNtq9LlJIh0MYKl/DOnOKeNPaWihIl6t35qog/gViSQXb7+MYHbE1bVBxLPFOemHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by DM6PR11MB4642.namprd11.prod.outlook.com (2603:10b6:5:2a2::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.20; Fri, 10 Mar
 2023 19:42:59 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::9e51:4069:b7da:c7b8]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::9e51:4069:b7da:c7b8%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 19:42:59 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915: Extract
 intel_crtc_scanline_offset()
Thread-Index: AQHZUEBwOUP+9CieGUuvOQC1Yuiu8K70cESw
Date: Fri, 10 Mar 2023 19:42:59 +0000
Message-ID: <MWHPR11MB193521353BCA59B4467C4E2CB2BA9@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <20230306152841.6563-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230306152841.6563-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|DM6PR11MB4642:EE_
x-ms-office365-filtering-correlation-id: 8ff613ff-316f-430b-9e40-08db219fa759
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q3WpABsIUnII4j5Ab3KvCwGORBIfMQIwGXj7W/9oEBvkk9/jPIX8G3YZQ5InxGGQvAIbii/kNBBLIT0Iryur0/eT1kUIZ2Of4EW7cFH5PsCifFjh8cAGovJA7UTqGj+grqICPok++ZvTyBfdl2gQWIbXmRqpe/Eibq5ubMdYFEoUXZr+S5a0mTaS7rg/YhQXmMQD5x0eCHYj5I/SRftVkOu8+ruRZfYP0bbX533fchBXQTlTyD3BcY7J3ibZOIXeDYuoeccQ4WHz4tok7v1ay90nyWN5IsGQHC0cKWOZaJl23u5UdiMZDXZ/Fmimv8VC37L1tDojz10VUjo04WS13+KXfyYPzuTMLG03qCIbcRHHuWnfvRexf+eo2kuDaWnjHz/5J9J2Aq7BpeRlUEAPfrE6GvjB9FbQ/xWdlCIKgonWQSFLvAl1Pvvmjz/ksgHZtvrlbZ28tc5ro1klwb24Xqf739hyPyOrb+cbLBR4GJ8bs8ikIkLQ+mJ4N13cysd/J1DIBDgJbs6+jG14UKF+7Uzxk4q9TSdJXKyHnbaB6MDefJ6nGfOmJQnmz5ZjHpoW4OrRKbOIH7sn8EW8RWmPBMiRBJo0vjXdSbUNmrM9Bs1b9/z5fET/nBhc6gEmU+JdlY9hgCtO/DMlGyiQq0sgR+1uom09UEaRiHRZI3BZz4njdbXPcuz0tAwmtuvpO1yogjzpUHX86n/VY3A2hUFisA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(376002)(136003)(346002)(396003)(451199018)(5660300002)(8936002)(52536014)(66446008)(66556008)(66476007)(76116006)(55016003)(66946007)(83380400001)(110136005)(478600001)(7696005)(71200400001)(316002)(66574015)(33656002)(41300700001)(8676002)(86362001)(64756008)(82960400001)(2906002)(38070700005)(9686003)(186003)(38100700002)(122000001)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R014MG1Jd0pHYWIyWDBOdWpXNGdzbEdpWks0ZWh6ZHRWalE2T2R2NXJKeklV?=
 =?utf-8?B?cU9SeUVRbnVKMW5FUmJaZEE0NVg5M1k5M09SdDZ2aXNQeVNNeXA2WWtvYTM3?=
 =?utf-8?B?a3l1YkwyTVlYN0xoeEdLSEtPekZPRVFuNHo0NE15OE9MTUZSMXFvbmVrVFVS?=
 =?utf-8?B?WmpUbGVycGRtUmdSR3B0YTlwNHc4cjIyU05zUmFVZ1pJNGhQT2dtWHVWaHBk?=
 =?utf-8?B?ZVBkWUNSZCtwdjBkMlQyVEsrZGUxU1o1K3RvaW5KR05ueWF0RlI0R0R1SmM3?=
 =?utf-8?B?Sy8rL2FDdmRvSkJwQTRiWEtkTGZBNHhEK0xhWWl1cEFBV0VtODVrVXp0dEQ0?=
 =?utf-8?B?bVBpR1RmNnVKSWtEenZoWUZ4Ukdnc1BpUFp2dk82NGhCcWtQeTlBUDFBRERo?=
 =?utf-8?B?ZThEYmFwZ1p4d3g0a1ZTSE4rNlZwd0hrWHRaQXVjZzVjcnpUU20yYno1QS9w?=
 =?utf-8?B?SzNZaDVrV1VTMlozRTNUaThXTU5qZkZJbEx3Wko5dmViczJzMjNHK3NZK01w?=
 =?utf-8?B?M3gremhONzZ4TVBkZTlZYkJZZFZ2dllIdldnOGQvMXhBSzZoejlxc0dqTVZJ?=
 =?utf-8?B?MXlaOVpSSFNib1YvY1VsUEY2S3hHNHRRTW1BcVJWclpxOGZTNFBpTDJVVGc2?=
 =?utf-8?B?bWFPS3VhaDV3YlRNOEtRVkUwU0VZWkhnNHdJaEY2YkZZUEp5SmRocVBoU1R3?=
 =?utf-8?B?eENjNVkrZlFDWFo2dnRiSGY0WUZCdGhpQUIxOEM4NVBYcUc0ZnRzeTBVNlQ1?=
 =?utf-8?B?MEwxT1AxNStUZ25ZU3UzZnUvU2JYV3Z5LzVpMVNzOHduVis1Rm9pR0cvcjFr?=
 =?utf-8?B?NWE0OXh4RDF3RVM5TDNwY2dNSVRQK0lsNGQybUNNc1k0ZFRoVmI5OFV5dnZt?=
 =?utf-8?B?VVZSMWEvakRnakNPR0NwNHdxWVFxYlR0WlVlbW12dzZ3NjNJcm5ueVhvMlVu?=
 =?utf-8?B?alRpaFEyeHVMeXRxZVFhNTlLVWJJSWQ3Vkt4SkFTYUNiazdoc1o2QkNFWi84?=
 =?utf-8?B?M1p3YjNveW00SHpmTHpkSDMzTmVQQUZCYkdubk4rT1JvQzAyRzFJZ21ZUGxX?=
 =?utf-8?B?SFZkbEJDaGZTZzU0em41MFdoQkVnc292WjcxQnZCRjRNQUYxaGNMRXQwVEk0?=
 =?utf-8?B?NXhRSWZ0dk1CM3EvT2s4eFpYNXlJazhPNTBQUVR4ZkEyc1lRTUZYdkF0SVE5?=
 =?utf-8?B?QWtKTGFZUTYrSHkrUDJRRFJrWjAvQTBWUXJUNWo0bmJUaEQxLyt5MUE3Nml1?=
 =?utf-8?B?eGs0QnVocG9nVnZTaEttQk05VzZLTldUMTUwd2hxM3k1VmQ0UVhRczRMMlFy?=
 =?utf-8?B?L2paUjVIeU5WbVdqd2JBVWpOVFhhV1dySE5pMUpYekZIYXBVQS9iSEkyVC9Y?=
 =?utf-8?B?TnVQZVVVOXV5QzFkVWliVnhJTmxqMk9rZWhkQjN6dDBuL0JZSXhJZUJnbURs?=
 =?utf-8?B?a0NidUd0M2hxYXhoVzRyTnI2cW4wTjhoZUg5ZnByU1UzNE4yY3ZqdWIrVWc4?=
 =?utf-8?B?VnVCQjc5M1BFZUVyWVJ0VldxdlNNRjBNdDl6aFFjOGxXUFJ3S25NcHF1Q3lT?=
 =?utf-8?B?OHl4MjZoMHJTYVg3TVg1L2NrcUxuWHNNTGVVb2VrTkxNcGpzSmtQVWI3MHpN?=
 =?utf-8?B?dnd0cW16TEtjMWpjOG5HYzcrQURMbmpQckdzUUp6ZlZwYTBVYUZ4Z0p5VWJw?=
 =?utf-8?B?RlptcGw5T0NXNHJEOHg3ZjgzOWRCZVB4UnpzZ3VyTDdkMkF4Q3VHbmNzN3Nv?=
 =?utf-8?B?Y3ZBVVFRSVh1dzl6dHN1K0liTCtaaFYwUmduRWx2b29DaWkwQXZqL01zMzFG?=
 =?utf-8?B?RHBseGJvSzlCaFFJcDZsMUFDOXAxcFl2U3Z0WGpLU09UUysza1QzUTdRWXdF?=
 =?utf-8?B?Zmk1ZmdzQitrWDVEU253RFc2TjJPdGEzWEluZEpERm93UTdTTHlpcWh0YnB0?=
 =?utf-8?B?K01VK3M4R2MxZWhsN2diazlGQjZad0pZM29TT20rd1pkelJobGhFMHA1M1hY?=
 =?utf-8?B?UWlUSXpKK1ZBSHNmTlFpSXcraWI2Z0hHRFpmcCs5NkIxaEFka0trS2pkQndP?=
 =?utf-8?B?NHdCZGZ2eXYybzJHYW5jSGxnY01WMTA1ejJvbEdWL3MxcUVNVGc3dVpTby9M?=
 =?utf-8?B?b3pUUnRubGZEci9MTE91cmtNMkVEU2E1THdraElmZTd1bnMrdnlJeXBJUHRL?=
 =?utf-8?B?bW1lTXVuSml3cnFab2RVV1R2L2ptT2lhWWo5aFR3c3I2bDdtbGlOZUhyWXdq?=
 =?utf-8?Q?nDvOHpW20+p9Q4+mw747WR4TqH8Vs7eXyi8o77Xsx8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff613ff-316f-430b-9e40-08db219fa759
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 19:42:59.4085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BpFbeDUpl8puD1/H15Nu2ktZUwd/8wVyffsmv1y6xjk06kKe3WvYNHfh3qhTLLpeYok3ckEA1DJZaPI6axLFp56r4MgICHt/KukyU249F67J54g9yiXQ1lcG9RdtmcEA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Extract
 intel_crtc_scanline_offset()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IDA2IE1hcmNoIDIwMjMgMjA6NTkNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDQvNF0g
ZHJtL2k5MTU6IEV4dHJhY3QgaW50ZWxfY3J0Y19zY2FubGluZV9vZmZzZXQoKQ0KPiANCj4gRnJv
bTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+
IFB1bGwgdGhlIHNjYW5saW5lX29mZnNldCBjYWxjdWxhdGlvbiBpbnRvIGl0cyBvd24gZnVuY3Rp
b24uIE1pZ2h0IGhhdmUgZnVydGhlcg0KPiB1c2UgZm9yIHRoaXMgbGF0ZXIgd2l0aCBEU0Igc2Nh
bmxpbmUgd2FpdHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMgfCA4OSArKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCA0MSBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiBpbmRleCA0
OGJmMzkyM2FmMTEuLmY4YmY5ODEwNTI3ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IEBAIC00NDEsNiArNDQxLDUzIEBAIHZvaWQgaW50
ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zpbmcoc3RydWN0DQo+IGludGVsX2NydGMgKmNy
dGMpDQo+ICAJd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3ZpbmcoY3J0YywgdHJ1ZSk7ICB9DQo+
IA0KPiArc3RhdGljIGludCBpbnRlbF9jcnRjX3NjYW5saW5lX29mZnNldChjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiAr
CWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gKyZjcnRj
X3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBUaGUgc2Nhbmxp
bmUgY291bnRlciBpbmNyZW1lbnRzIGF0IHRoZSBsZWFkaW5nIGVkZ2Ugb2YgaHN5bmMuDQo+ICsJ
ICoNCj4gKwkgKiBPbiBtb3N0IHBsYXRmb3JtcyBpdCBzdGFydHMgY291bnRpbmcgZnJvbSB2dG90
YWwtMSBvbiB0aGUNCj4gKwkgKiBmaXJzdCBhY3RpdmUgbGluZS4gVGhhdCBtZWFucyB0aGUgc2Nh
bmxpbmUgY291bnRlciB2YWx1ZSBpcw0KPiArCSAqIGFsd2F5cyBvbmUgbGVzcyB0aGFuIHdoYXQg
d2Ugd291bGQgZXhwZWN0LiBJZS4ganVzdCBhZnRlcg0KPiArCSAqIHN0YXJ0IG9mIHZibGFuaywg
d2hpY2ggYWxzbyBvY2N1cnMgYXQgc3RhcnQgb2YgaHN5bmMgKG9uIHRoZQ0KPiArCSAqIGxhc3Qg
YWN0aXZlIGxpbmUpLCB0aGUgc2NhbmxpbmUgY291bnRlciB3aWxsIHJlYWQgdmJsYW5rX3N0YXJ0
LTEuDQo+ICsJICoNCj4gKwkgKiBPbiBnZW4yIHRoZSBzY2FubGluZSBjb3VudGVyIHN0YXJ0cyBj
b3VudGluZyBmcm9tIDEgaW5zdGVhZA0KPiArCSAqIG9mIHZ0b3RhbC0xLCBzbyB3ZSBoYXZlIHRv
IHN1YnRyYWN0IG9uZSAob3IgcmF0aGVyIGFkZCB2dG90YWwtMQ0KPiArCSAqIHRvIGtlZXAgdGhl
IHZhbHVlIHBvc2l0aXZlKSwgaW5zdGVhZCBvZiBhZGRpbmcgb25lLg0KPiArCSAqDQo+ICsJICog
T24gSFNXKyB0aGUgYmVoYXZpb3VyIG9mIHRoZSBzY2FubGluZSBjb3VudGVyIGRlcGVuZHMgb24g
dGhlDQo+IG91dHB1dA0KPiArCSAqIHR5cGUuIEZvciBEUCBwb3J0cyBpdCBiZWhhdmVzIGxpa2Ug
bW9zdCBvdGhlciBwbGF0Zm9ybXMsIGJ1dCBvbg0KPiBIRE1JDQo+ICsJICogdGhlcmUncyBhbiBl
eHRyYSAxIGxpbmUgZGlmZmVyZW5jZS4gU28gd2UgbmVlZCB0byBhZGQgdHdvIGluc3RlYWQgb2YN
Cj4gKwkgKiBvbmUgdG8gdGhlIHZhbHVlLg0KPiArCSAqDQo+ICsJICogT24gVkxWL0NIViBEU0kg
dGhlIHNjYW5saW5lIGNvdW50ZXIgd291bGQgYXBwZWFyIHRvIGluY3JlbWVudA0KPiArCSAqIGFw
cHJveC4gMS8zIG9mIGEgc2NhbmxpbmUgYmVmb3JlIHN0YXJ0IG9mIHZibGFuay4gVW5mb3J0dW5h
dGVseQ0KPiArCSAqIHRoYXQgbWVhbnMgd2UgY2FuJ3QgdGVsbCB3aGV0aGVyIHdlJ3JlIGluIHZi
bGFuayBvciBub3Qgd2hpbGUNCj4gKwkgKiB3ZSdyZSBvbiB0aGF0IHBhcnRpY3VsYXIgbGluZS4g
V2UgbXVzdCBzdGlsbCBzZXQgc2NhbmxpbmVfb2Zmc2V0DQo+ICsJICogdG8gMSBzbyB0aGF0IHRo
ZSB2YmxhbmsgdGltZXN0YW1wcyBjb21lIG91dCBjb3JyZWN0IHdoZW4gd2UNCj4gcXVlcnkNCj4g
KwkgKiB0aGUgc2NhbmxpbmUgY291bnRlciBmcm9tIHdpdGhpbiB0aGUgdmJsYW5rIGludGVycnVw
dCBoYW5kbGVyLg0KPiArCSAqIEhvd2V2ZXIgaWYgcXVlcmllZCBqdXN0IGJlZm9yZSB0aGUgc3Rh
cnQgb2YgdmJsYW5rIHdlJ2xsIGdldCBhbg0KPiArCSAqIGFuc3dlciB0aGF0J3Mgc2xpZ2h0bHkg
aW4gdGhlIGZ1dHVyZS4NCj4gKwkgKi8NCj4gKwlpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMikg
ew0KPiArCQlpbnQgdnRvdGFsOw0KPiArDQo+ICsJCXZ0b3RhbCA9IGFkanVzdGVkX21vZGUtPmNy
dGNfdnRvdGFsOw0KPiArCQlpZiAoYWRqdXN0ZWRfbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFH
X0lOVEVSTEFDRSkNCj4gKwkJCXZ0b3RhbCAvPSAyOw0KPiArDQo+ICsJCXJldHVybiB2dG90YWwg
LSAxOw0KPiArCX0gZWxzZSBpZiAoSEFTX0RESShpOTE1KSAmJiBpbnRlbF9jcnRjX2hhc190eXBl
KGNydGNfc3RhdGUsDQo+IElOVEVMX09VVFBVVF9IRE1JKSkgew0KPiArCQlyZXR1cm4gMjsNCj4g
Kwl9IGVsc2Ugew0KPiArCQlyZXR1cm4gMTsNCj4gKwl9DQo+ICt9DQo+ICsNCg0KY2hhbmdlcyBM
R1RNLiANClRoYW5rcw0KDQpSZXZpZXdlZC1ieTogTWl0dWwgR29sYW5pIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KDQo+ICB2b2lkIGludGVsX2NydGNfdXBkYXRlX2Fj
dGl2ZV90aW1pbmdzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRl
KSAgew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLT51YXBpLmNydGMpOw0KPiBAQCAtNDc5LDQ3ICs1MjYsNyBAQCB2b2lkIGludGVsX2NydGNf
dXBkYXRlX2FjdGl2ZV90aW1pbmdzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQ0KPiANCj4gIAljcnRjLT5tb2RlX2ZsYWdzID0gY3J0Y19zdGF0ZS0+bW9kZV9m
bGFnczsNCj4gDQo+IC0JLyoNCj4gLQkgKiBUaGUgc2NhbmxpbmUgY291bnRlciBpbmNyZW1lbnRz
IGF0IHRoZSBsZWFkaW5nIGVkZ2Ugb2YgaHN5bmMuDQo+IC0JICoNCj4gLQkgKiBPbiBtb3N0IHBs
YXRmb3JtcyBpdCBzdGFydHMgY291bnRpbmcgZnJvbSB2dG90YWwtMSBvbiB0aGUNCj4gLQkgKiBm
aXJzdCBhY3RpdmUgbGluZS4gVGhhdCBtZWFucyB0aGUgc2NhbmxpbmUgY291bnRlciB2YWx1ZSBp
cw0KPiAtCSAqIGFsd2F5cyBvbmUgbGVzcyB0aGFuIHdoYXQgd2Ugd291bGQgZXhwZWN0LiBJZS4g
anVzdCBhZnRlcg0KPiAtCSAqIHN0YXJ0IG9mIHZibGFuaywgd2hpY2ggYWxzbyBvY2N1cnMgYXQg
c3RhcnQgb2YgaHN5bmMgKG9uIHRoZQ0KPiAtCSAqIGxhc3QgYWN0aXZlIGxpbmUpLCB0aGUgc2Nh
bmxpbmUgY291bnRlciB3aWxsIHJlYWQgdmJsYW5rX3N0YXJ0LTEuDQo+IC0JICoNCj4gLQkgKiBP
biBnZW4yIHRoZSBzY2FubGluZSBjb3VudGVyIHN0YXJ0cyBjb3VudGluZyBmcm9tIDEgaW5zdGVh
ZA0KPiAtCSAqIG9mIHZ0b3RhbC0xLCBzbyB3ZSBoYXZlIHRvIHN1YnRyYWN0IG9uZSAob3IgcmF0
aGVyIGFkZCB2dG90YWwtMQ0KPiAtCSAqIHRvIGtlZXAgdGhlIHZhbHVlIHBvc2l0aXZlKSwgaW5z
dGVhZCBvZiBhZGRpbmcgb25lLg0KPiAtCSAqDQo+IC0JICogT24gSFNXKyB0aGUgYmVoYXZpb3Vy
IG9mIHRoZSBzY2FubGluZSBjb3VudGVyIGRlcGVuZHMgb24gdGhlDQo+IG91dHB1dA0KPiAtCSAq
IHR5cGUuIEZvciBEUCBwb3J0cyBpdCBiZWhhdmVzIGxpa2UgbW9zdCBvdGhlciBwbGF0Zm9ybXMs
IGJ1dCBvbg0KPiBIRE1JDQo+IC0JICogdGhlcmUncyBhbiBleHRyYSAxIGxpbmUgZGlmZmVyZW5j
ZS4gU28gd2UgbmVlZCB0byBhZGQgdHdvIGluc3RlYWQgb2YNCj4gLQkgKiBvbmUgdG8gdGhlIHZh
bHVlLg0KPiAtCSAqDQo+IC0JICogT24gVkxWL0NIViBEU0kgdGhlIHNjYW5saW5lIGNvdW50ZXIg
d291bGQgYXBwZWFyIHRvIGluY3JlbWVudA0KPiAtCSAqIGFwcHJveC4gMS8zIG9mIGEgc2Nhbmxp
bmUgYmVmb3JlIHN0YXJ0IG9mIHZibGFuay4gVW5mb3J0dW5hdGVseQ0KPiAtCSAqIHRoYXQgbWVh
bnMgd2UgY2FuJ3QgdGVsbCB3aGV0aGVyIHdlJ3JlIGluIHZibGFuayBvciBub3Qgd2hpbGUNCj4g
LQkgKiB3ZSdyZSBvbiB0aGF0IHBhcnRpY3VsYXIgbGluZS4gV2UgbXVzdCBzdGlsbCBzZXQgc2Nh
bmxpbmVfb2Zmc2V0DQo+IC0JICogdG8gMSBzbyB0aGF0IHRoZSB2YmxhbmsgdGltZXN0YW1wcyBj
b21lIG91dCBjb3JyZWN0IHdoZW4gd2UNCj4gcXVlcnkNCj4gLQkgKiB0aGUgc2NhbmxpbmUgY291
bnRlciBmcm9tIHdpdGhpbiB0aGUgdmJsYW5rIGludGVycnVwdCBoYW5kbGVyLg0KPiAtCSAqIEhv
d2V2ZXIgaWYgcXVlcmllZCBqdXN0IGJlZm9yZSB0aGUgc3RhcnQgb2YgdmJsYW5rIHdlJ2xsIGdl
dCBhbg0KPiAtCSAqIGFuc3dlciB0aGF0J3Mgc2xpZ2h0bHkgaW4gdGhlIGZ1dHVyZS4NCj4gLQkg
Ki8NCj4gLQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMikgew0KPiAtCQlpbnQgdnRvdGFsOw0K
PiAtDQo+IC0JCXZ0b3RhbCA9IGFkanVzdGVkX21vZGUuY3J0Y192dG90YWw7DQo+IC0JCWlmIChh
ZGp1c3RlZF9tb2RlLmZsYWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxBQ0UpDQo+IC0JCQl2dG90
YWwgLz0gMjsNCj4gLQ0KPiAtCQljcnRjLT5zY2FubGluZV9vZmZzZXQgPSB2dG90YWwgLSAxOw0K
PiAtCX0gZWxzZSBpZiAoSEFTX0RESShpOTE1KSAmJg0KPiAtCQkgICBpbnRlbF9jcnRjX2hhc190
eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9IRE1JKSkgew0KPiAtCQljcnRjLT5zY2FubGlu
ZV9vZmZzZXQgPSAyOw0KPiAtCX0gZWxzZSB7DQo+IC0JCWNydGMtPnNjYW5saW5lX29mZnNldCA9
IDE7DQo+IC0JfQ0KPiArCWNydGMtPnNjYW5saW5lX29mZnNldCA9IGludGVsX2NydGNfc2Nhbmxp
bmVfb2Zmc2V0KGNydGNfc3RhdGUpOw0KPiANCj4gIAlzcGluX3VubG9jaygmaTkxNS0+dW5jb3Jl
LmxvY2spOw0KPiAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUtPmRybS52YmxhbmtfdGlt
ZV9sb2NrLCBpcnFmbGFncyk7DQo+IC0tDQo+IDIuMzkuMg0KDQo=
