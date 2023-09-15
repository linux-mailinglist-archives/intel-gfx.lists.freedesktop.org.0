Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3144A7A1586
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 07:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505EE10E129;
	Fri, 15 Sep 2023 05:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D08610E129
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 05:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694756383; x=1726292383;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZPc8qaGIGjU+q5MmF7btdUY8/ZUgWzwUcFgu5DRZEjk=;
 b=Qj3X/saRhVEQA0XhI8LjkqrV+JlW5BAKBlcJ2WG33kkfqudspRfBUHMB
 JkcQMoZDUo+uLj4Zy7sZUYGICiT68wS3XXkkqRtWWY90HUWpMDdi4c0Gp
 SB91XVt1L3lvzDUDATwOd3zS4H/v8EmqGQKtxNiy+E0sRIj2bQMfAqhrf
 KIR9W8gNmxM/kZ7sgCD3u+2fML8q49uLf4DAywXw2WZF5YWuBZ/1xx/EK
 3RUlTKaP3nCyALUzzkK9R4WpRJ3kXCeN9bZ7hr6GwxIZ2yF8nIHqiU42I
 iLZtL9AFuy5wHK7JvHsOYQSQ5oB/l9q8yR5Ov8rfF/5dR/a9M3Eku0CQA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="364214417"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="364214417"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 22:39:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="748087596"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="748087596"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 22:39:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 22:39:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 22:39:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 22:39:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 22:39:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+8pkjot1xm6SahNh2VHiYmuW63ahP1RLC6qO8QcXzEN2t/6xM0miEhc43Vw0/zoQjDDMZndJ4z60x0JuEOSsIdxof4XjwbN9uQXNEQ922ftWiUaJ1GEarhR6HPF7DDoSTLZpOX3Q71vVL4yvY23DRF7XgLu1wCQjci4RRD5lCzGSsqG4mzg9gzDNCNnFAExnujy6rYjDvK5UQ1nxrg8/du/x3jZBCQgEVLcgA2LFGb6LwkAt4PkVo3Z/e/9aDEUhElAXumK/d7FUEY3/J/tumZ1MjQO8OjF8WKCWZdF7BKixFTk5woJ0hE1D2+9n3XfcB5BlAuW43DSFty7AHmPhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPc8qaGIGjU+q5MmF7btdUY8/ZUgWzwUcFgu5DRZEjk=;
 b=Ijkz2HL2ldkuPzMSOvSU210wc/IXtkERsaPL7M9kDVTPtbcAy+3GTXGgCA9MBp6aMSfywh2NF+Uksw+uI1GCKuv/dstYyUFXqiPh2pAEmBq8SGxA8xBqgZWZ3eV0CFn2a8FPSQSys28a91yBNdhyx3BiGY23Uiwq73ODLyXRscaeaDEB9/UOuULUBM3g477kOez44hSYL7H8GdCwkvW7aOBgGiM0Aqs62obR+a9X+GtFniNsx5dAYz9K9XPJ1EW7j7SfAYhnmUvpGhBqbTKLxEqiCTVREwalD7cjgMjFQJ5cWIiCLzJz/tQNX5swYygpCg0EP+RZ30LRXfhG4WEgrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SA1PR11MB6685.namprd11.prod.outlook.com (2603:10b6:806:258::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 15 Sep
 2023 05:39:40 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 05:39:40 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/12] drm/i915: Validate that the timings
 are within the VRR range
Thread-Index: AQHZ3NUChJgrY0AeiUyFiFhFnk3BvLAbdEHQ
Date: Fri, 15 Sep 2023 05:39:40 +0000
Message-ID: <IA1PR11MB634867AB48531BFA0487893EB2F6A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SA1PR11MB6685:EE_
x-ms-office365-filtering-correlation-id: 8ca9e75f-18fc-46e8-4911-08dbb5ae27f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kVS26JOnP8L6jACZvrf/1OiqhHCVt3L53JjPN2drzTImeRtU0QXeswoVUToHf8S0bSBtZyTrZ8TKhnZRMtpa+LXI330xDNcpezHQfuzOqvtkR+kesdGMHGBYhGl3JzmdybJBQbz9dmh6MiRF/J3cnpUIhLzanskauN3H+OE0MO9SK1Aosh6prmnP2ck4dQ4U7hNvhogPCI0fXM4KMPDcBSOBt3GoUIpKsVFeiA+EMzQg4LDIWhlk7O4RjKFImnJ6Ngm+igCkaam/Pt6uJb7WJxBNnJb0TVHs6LE22/5DHrUbJIjlHwTNJb1QFbTeH+dY9xRhg8tLmavmut4RvV3ScCmtjka17flvJE0GslF8YzA+YhmsLZHC6ktXLJGmuGI2CABVzYs8fs8mSrbFFJXfZYwF0Lc75fE9EpNmUJqoV4bOo1VOkkHe0dYejWBWGPmpU3JdzYhdCCfyvyKd40vBLtR4w/r7VuRfoUVMWI3Xqm9mBpw4LjtbqsKeiqnVUwVD8zJTYOKYjj466+m5b+6w30TQ3pQCgg1+dDjzsV4bHb/rXzqdrbHDgbJraH45J7eRsBR9/XrY0LhJbEoCFDhbVPGUqS586JKCOy8GA07v1zQcMEjoPnu/W6krtHtHSEWB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(136003)(396003)(1800799009)(451199024)(186009)(5660300002)(7696005)(66446008)(66946007)(64756008)(316002)(66476007)(66556008)(9686003)(110136005)(53546011)(41300700001)(122000001)(55016003)(76116006)(8676002)(52536014)(8936002)(478600001)(83380400001)(71200400001)(6506007)(2906002)(15650500001)(66574015)(86362001)(38100700002)(33656002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXVlTzJmUXU1QlhISHFBbXViWk5lQXFMcFBaTjhNNWQ1bmlyT2Q4SjhqZjFl?=
 =?utf-8?B?aHJBMUFFNERiR2JNeVhzcXIwVzBrSWpKblN1bkxvU0RrYVFrNi9BQUJUelFx?=
 =?utf-8?B?MGNsZHVFVFlnNWJ2UE0zNlhyQ2dUNS9EcXE3amd0cTJwc05xL1JteGhISHF6?=
 =?utf-8?B?WHovY3dBS0FzR1h0YUhjd0R0OWYvcXlTSXI3ZGYrYkNWQ3pqV1MwZVNLdzdt?=
 =?utf-8?B?RjhjRkl0dTZNVzRXWit4OU1xQkRGanI5VmxabDRkckVKTUV0ZTJCZkhZUVZO?=
 =?utf-8?B?OWo5VEhXVzNNSjB1bG44RmgyZUFuQjQzMkhvRVVhMFE3UUVleEVxTlgzMmZu?=
 =?utf-8?B?bzBST3FUbDNLdS9zMFJJNXBhNWxZYXU5aUY0RWw3UHhzZDYwMm1sV3dSc016?=
 =?utf-8?B?aHlqNGpLVHdEMXBGSnZXdW9Gdk94VWtReFdsMEdjdnE1RnR2STdxTmVFWEdm?=
 =?utf-8?B?TWpjM2dEckt0eG5aMitBM2U5WFRpOHNLT0cxdktjblU1bEsvRFJwSnVmWDEx?=
 =?utf-8?B?VHg2S0JSY0Q3eDBOWk9vUUJkYzU3djBWZ2piUFBPZi9HMW9MVlNva2k5ckVQ?=
 =?utf-8?B?eWsvcDR4QnZRTGVLaFVnS0twellXVWZoNTNZMTdtenBoZ1BVeFZQSkh1MFZH?=
 =?utf-8?B?d2J4bzFEc3FHNjI4VTNSaDNwYzREMjI3dDFCYTJGMzJiN2dwMjhxTVBad3Zj?=
 =?utf-8?B?SXJWKzFtZklrRHZOdHdsejJnRUd6NHBla1B5T1pBdlYzVHpMNTJQUTZ6aEFo?=
 =?utf-8?B?Uk01SGNKZlAwYVVVMnJZZ3dxWGphdUcveWhTME83NXB1T0ZXU0RSZE1JVStX?=
 =?utf-8?B?OU1NNFN2NkpsWkhJNCtabTYydTA0cmFGckxxOHU0dkp0cFN4MXF2ZXNwTkVK?=
 =?utf-8?B?eDlKbFdneGtNM2FYdEloajRWaXNQV0N1OFRDUXpnU3hFL1E5VkVxQkVFVmNi?=
 =?utf-8?B?eGFGMnZMSXBpSjRZcDg1UjJzYUhEQ2hYRmhBUVo3b2dzN2l0QXdxUi9BNC8v?=
 =?utf-8?B?ejhMQ3JQb2QwM3FVNk1MMDJVWEdwaDh6aHRIb25VeUxJLy9UbG4xRDJscVFp?=
 =?utf-8?B?TEw1UEkxK1pUK29wY3JyV05vdlNPblFvUXVsczJNVXBMUGVTS2NPdVJKY3Vt?=
 =?utf-8?B?ekI3M3dhK0VjRGdTU0FiN1l2ZjA5ZTYyVTNGbGhKNkp6M01oVnJkSHhOdjNJ?=
 =?utf-8?B?VUgrQVRDaWF6UXJObFR4bm5PVjNJUkdkNkJEek14YXlkUk5CT2ZlU0dXVnd5?=
 =?utf-8?B?bXc4bXk0d3Q0Um01M1hUdHdTSlpNT3JHQlA1MThneW81VVpCd2ExdmZET05m?=
 =?utf-8?B?WXhCNnRhK0ZGRHRIYXNnRHhSdUFld1JQNS9UQ3V5OGhKRGtpZTVXYUNldFY2?=
 =?utf-8?B?TFNhelcvWEtSVUZRRHFCQ3YxYTZuWHRuclpXNHVaWTlONEIxMDArclhBSWhE?=
 =?utf-8?B?NjVoVytxUmxNZld0K0pYa2dYaEdVamV5L3FJYmtWMzY3UWpjZm90NVBJWjdD?=
 =?utf-8?B?K0dPejJsVFNDNzlidDRPUERsamVjeVZIQU9BMHd5RXVpRU5iaGlKVGV4N2dt?=
 =?utf-8?B?Vld3YnNIbUM3YWtLcDY5VE9nSTRLU2NlSERFK3A3YlNOVGM0bU9rU05WNnRv?=
 =?utf-8?B?WldLZjJqQVE0ZzcxRFRaMm1XZzZzRm4zMG5hZ0JveG04OEhNRCtadFo2alRo?=
 =?utf-8?B?UFBTR0dLTEU5ekVNL3NZc0VvQklwdFNLZHhaOGFGcGc1dFhiaCs5clF6UnVY?=
 =?utf-8?B?VGhoekVJcmU2Y3BTSXdVZjhRRmRSa1VNZklZdDdidVZGbXpRLzBQd1o4VTZi?=
 =?utf-8?B?WmprRWNDTmtrMlFLeCtaVVJWcHUwWXc4ZCtSR0d0ai9JQXZSbkhQdVJyT3l3?=
 =?utf-8?B?blA1WjAxam9mR1pJd2tYeHN1THIzbWMxSzRObnJiSlZEZURUS1VnUExRWXdC?=
 =?utf-8?B?NVYzOXBFeitwV0doMW1sMmt4TEY0Qk8vYW5TLytLTm5pTndINGRPUUdOZ1pN?=
 =?utf-8?B?T0crZzhQelFUV0orN25zU1c2cW1SRGJBQ2lCRVB0bXZxMVZaM1g4eklCS2Nm?=
 =?utf-8?B?UHN0d252VUxpUk1LbDhUakZVdFlWZFc3Z0c4cklid1NuYnZXUDZlR05iMW5X?=
 =?utf-8?B?SVMwQ0t3UXdQUWFxK0x6OWM5eDBnVmNzSFloRjFiWVEvbkduZXpoRm5Bc3lV?=
 =?utf-8?B?T0E2TER2SHZNMXA1b3ZmdVByUGtra0NSQkVYN2d0eE1PVXR1ZURYRjJaSTI2?=
 =?utf-8?Q?Pvr/tHQK59f6OHSkJLXOs74Sk+9GMCU8Rf2QkJlUig=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca9e75f-18fc-46e8-4911-08dbb5ae27f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 05:39:40.2149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eaVPxNseTUA0qBtq97xX044KxguioZSUEQdIHZExFYKlmgwrqYGHr+k44SitLQzsqPMKviush7crKiBNSSVHSPi+vGxHPuui86Rv2FnQOvCGf5FM7OYPXiajf9EnJ3Gx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6685
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915: Validate that the timings
 are within the VRR range
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDAxIFNlcHRlbWJlciAyMDIzIDE4OjM1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAw
OC8xMl0gZHJtL2k5MTU6IFZhbGlkYXRlIHRoYXQgdGhlIHRpbWluZ3MgYXJlDQo+IHdpdGhpbiB0
aGUgVlJSIHJhbmdlDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiANCj4gTGV0J3MgYXNzdW1lIHRoZXJlIGFyZSBzb21lIGNyYXp5
IGRpc3BsYXlzIHdoZXJlIHRoZSBoaWdoIGVuZCBvZiB0aGUgVlJSDQo+IHJhbmdlIGVuZHMgdXAg
YmVpbmcgbG93ZXIgdGhhbiB0aGUgcmVmcmVzaCByYXRlIGFzIGRldGVybWluZWQgYnkgdGhlIGFj
dHVhbA0KPiB0aW1pbmdzLiBJbiB0aGF0IGNhc2Ugd2hlbiB3ZSB0b2dnbGUgVlJSIG9uL29mZiB3
ZSB3b3VsZCBzdGVwIG91dHNpZGUgdGhlDQo+IFZSUiByYW5nZSB3aGVuIHRvZ2dsaW5nIFZSUiBv
bi9vZmYuIExldCdzIGp1c3QgbWFrZSBzdXJlIHRoYXQgbmV2ZXIgaGFwcGVucw0KPiBieSBub3Qg
dXNpbmcgVlJSIGluIHN1Y2ggY2FzZXMuIElmIHRoZSB1c2VyIHJlYWxseSB3YW50cyBWUlIgdGhl
eSBzaG91bGQgdGhlbg0KPiBzZWxlY3QgdGhlIHRpbWluZ3MgdG8gbGFuZCB3aXRoaW4gdGhlIFZS
UiByYW5nZS4NCj4gDQo+IENjOiBNYW5hc2kgTmF2YXJlIDxuYXZhcmVtYW5hc2lAY2hyb21pdW0u
b3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdnJyLmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dnJyLmMNCj4gaW5kZXggNmVmNzgyNTM4MzM3Li4xMjczMWFkNzI1YTggMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBAQCAtMTE3LDEwICsxMTcsMTAg
QEAgaW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpj
cnRjX3N0YXRlLA0KPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNv
bm5lY3Rvci0NCj4gPmJhc2UuZGlzcGxheV9pbmZvOw0KPiAgCWludCB2bWluLCB2bWF4Ow0KPiAN
Cj4gLQlpZiAoIWludGVsX3Zycl9pc19jYXBhYmxlKGNvbm5lY3RvcikpDQo+ICsJaWYgKGFkanVz
dGVkX21vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxBQ0UpDQo+ICAJCXJldHVybjsN
Cj4gDQo+IC0JaWYgKGFkanVzdGVkX21vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19JTlRFUkxB
Q0UpDQo+ICsJaWYgKCFpbnRlbF92cnJfaXNfaW5fcmFuZ2UoY29ubmVjdG9yLA0KPiArZHJtX21v
ZGVfdnJlZnJlc2goYWRqdXN0ZWRfbW9kZSkpKQ0KDQpDaGFuZ2VzIExHVE0NClJldmlld2VkLWJ5
OiBNaXR1bCBHb2xhbmkgPG1pdHVsa3VtYXIuYWppdGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+DQoN
ClJlZ2FyZHMsDQpNaXR1bA0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCXZtaW4gPSBESVZfUk9VTkRf
VVAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jayAqIDEwMDAsDQo+IC0tDQo+IDIuNDEuMA0KDQo=
