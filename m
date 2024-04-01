Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B93B8937C5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 05:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F5B910E0DB;
	Mon,  1 Apr 2024 03:33:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZKLIEkpQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5B610E0DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 03:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711942407; x=1743478407;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XVk23bb7cO4CFvF+QUYP9FpZWMEfOObtXEtFUmdBjIc=;
 b=ZKLIEkpQxWEn9/FNhFiF6lQLkLM+BEAeqgkUZWubSJ5sHZUuwEw6OUEr
 4FFotbcVCtsp3dan3aKIXKJiIZidcmc1ngxHBEmCrL8+7gGQmmGXYznbw
 vzil8NTKGQxnPVwkwULKPwzpRkL9XwV35oYGg3LdNYitrQ4AR2XGIGko0
 ScO/fnWTPgARbmthviVPMA2328Pc/ZHi+WE9pK9cg7a0k2muJIpSi4qqB
 EXJq8se7E7XQ5y6hZlCQ/Zd5/W1YDhCpzeq4q9vcaODS2H+GB4FAhNN/E
 mbBQ20Q8EUX422qzQwg+2P+m7FD//X/EjiNxfrp1tYU5BYR57Io3QNAsw Q==;
X-CSE-ConnectionGUID: naEcORlRTlmWjp3ZO5+wvg==
X-CSE-MsgGUID: lEAICuU9SWyYen6nwwxuQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="10016393"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="10016393"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 20:33:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="48778262"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 20:33:27 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 20:33:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 20:33:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 20:33:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dh47CvzQfoYIg9M58eW05+cXZXgYadocf1NnzC9uQGELG/bqJbySps8a3FUBnKMulNDkTcZ6VQ3/2fyc5RcG4m5UiSHMYWHG/u0VulIlz0I1VMSSOYV39UW/CqIKmubkn5X9gy9ou/DiE0saDbriE71hc7iMV2Vf8zSwRisSkyn+SUijsjE+UDRphiYIsJ8lP+ddo9mDHLwn00Old5nWXKLCDlu6aku39DP8eEsTypmvZFWj4xtVUKZnx49b6OkHCt+zlckyXbm8E7XbAUiOTprdkwBem0zKKoQp4OKin7zTEaEo0O7H/yt3HfVsEXJPHliSYuOQcqWlRpoaYE6gQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XVk23bb7cO4CFvF+QUYP9FpZWMEfOObtXEtFUmdBjIc=;
 b=mVd46fxVPArexcdGnu9eAmAqnjdcZanZgN7+YM13g8nQkqkqNpLtqx0wItr4BAq3iGadSaoH23JEQOxS0UJU9+L0eIdmRD7b1MQfs7NrLjmHGdTchVZODXqysddllU0/bHuL7gwtm/VtZd0mET9LX5WSuVJNr+2sr5EDyIVKGtpwC6wABdg42DceM8GfmmUPSoBgc6v2Id7WgfpqejzYos5H1bpnS63AvCiLCP9v+Tblv00gXgL3ndK/fOi6Z/eB2qymtbChdLoe9MP6JHXJAgJTGTqfXASU+HQDLjV/PUzB17IFq6B2MX+l5anCOg3XffUrF9WecG9CUkm2/NHOQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4654.namprd11.prod.outlook.com (2603:10b6:806:98::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Mon, 1 Apr
 2024 03:33:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Mon, 1 Apr 2024
 03:33:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: Fix i915_display_info output when connectors
 are not active
Thread-Topic: [PATCH] drm/i915: Fix i915_display_info output when connectors
 are not active
Thread-Index: AQHagXfA28xh3cprH02M06qdq+4kNbFSxzMQ
Date: Mon, 1 Apr 2024 03:33:14 +0000
Message-ID: <SN7PR11MB6750D9FBDD487BC4F3B40956E33F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240329012331.29281-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329012331.29281-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4654:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DWLNe2taB6IXRQym80yKniTCwzWfutLe3r8M3aqrbnTS58xBpi7QV3F+DTo3YuW9DYgzrxuvDYYA9dJMLaQ0rauujRNd9uddR3dRH8GNZ5Oyb2GMsBjR8D3plYZuEkYL8Mc6IhJuQJ6Lp6lzCL+4MvIe5xupIt47aX5r4SlFPlRsW2CyW4tFOt6AgHOi9BCIzWJhonFBOI91VrjUzWHh/Ue+Xh8X8BfyyAj4Ikm8XbPqs0mlORk55RaARK8Owh/tmoJpDmlxCX0l/+r846z+ZJ2i5U2OcP8d4PUpTK5FA9wakXJ9F6V5YY15f6hqBv7HUJYsWKFcl6zHH8dKIdrrXLwYK6KyKEq/KMj3VErah9WvmzPR/EUJwQ37sKcGWKuMn0NMJxG6zW/+5XtUgw1uLBruakjolOQFeFT+oxiFv9PMT3kckIrMyMXhb/WeHPlQDEoMSQI4t0NW6Kfkf1Rki9bQmF4qV2L0G3tfDW8FoP4sswSFExkVaT15VZ6jIDaULc2mE5SdE+At1VhfZODzqYMYVs+WpRaOOwqb7o0+dgEXdLhmCuctgGkDTwADxw56swJed0ZXTsiGOAbmCZCgR95aahALL7nEU/fTRuZxGZzA/oCMSddDpigT/HzBbScyYuh9ZpVby+GAezDJq7mXLyOAufgco8nGoFrT+z+2RW8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUhvbHV6c0JWa2Rad0NHMEE5am43WEFsYU9Jd21CY3luaDdwam9RUWNlVFQr?=
 =?utf-8?B?MTY4cW1NamlQbFVGWFJmMm1zZU8xYmxqWklqSUlGandRdm9NOTVMSHY1YWY5?=
 =?utf-8?B?VCs3MjFPL0NOU2x0U2ozaEdxK3MzSjZVazNnanpZSmFEZE1Pa1lLdEgxTmYr?=
 =?utf-8?B?eXBKU1JiVmNkaWxlV0tVQzdTa3hyenVnZVdrNkNNbjVIVkM0SklKcWRYbWhq?=
 =?utf-8?B?ejJtR1pnUmo4V0lXV2huTGM4cjlFQjFMMWJKM3Mxalp1SCtQTUJldUVpblVx?=
 =?utf-8?B?Q2pQYXlpdUN4Q2pVSVM2b0pFOVJmNmhWUzd1ektFSlJSOFFyYkh4UVNReTE5?=
 =?utf-8?B?cUhNUUZzY3pFUWw3TzJBbnZNbWRYelhudE5JR0hlNWs1Vm9raEZLNUZlTlNT?=
 =?utf-8?B?VDd1TVJMYXlhb2hsbTFMam1zSGRNZTlRN3FIVjNOeGRweWFwdFBpcldXQkJq?=
 =?utf-8?B?aWJCOHJKbnNxWXJPY3VuZzdCS3o0bHpvSFpRVm1wMGVQdXh0Z1hSMDMxeWY5?=
 =?utf-8?B?L3J5T2d1d211bmR1ZHpwUlM5OHVLSnlsUjZhaE1mTGE5R0t0QmNHUXpFRjRz?=
 =?utf-8?B?OTFNenFWVDE4UjFObnBvRDFaMkxkMm1IM0xkeElueitUUFlhU0hjbHhGSytX?=
 =?utf-8?B?ckIwemcxMmJxUHNuTGJ6UHlvVTdoVzVMS2JIeE5KUzNWbkxtN2pxM1BLYWx4?=
 =?utf-8?B?Zm12dFlGcHVqVDUyRzlORTNWSjV3dlNDbXBxWDMzUWpJUUlteFFWMzlLZ2Yy?=
 =?utf-8?B?TC9PNElldGRhUkEyNkgyK3FYaWNETWQ4ZllvVVlPcGFLQXJGMmF0cGwyMmhu?=
 =?utf-8?B?ZjdSVUJaek90UHZpT0IvdGl6VGZPSlZFblF2YkVQY2ExNHBCYXRkZm5Ga2xK?=
 =?utf-8?B?Sm9YOG11UEdBYlNZbTMyckVKL2x4Sm5BRjhZY29objBtS0p0V2pOYnNkcWhV?=
 =?utf-8?B?R0dlUjBkdTFlV0wrMnVrdFNsekN0TzFCVFh6azducHdEaXhaRWFaZU5iZzJ6?=
 =?utf-8?B?ZWlVUDkzc0tRc3owWWJpMWw1ZlhzZjdJenZLTUlJZUlacVNaYUxGSjJ5RFNv?=
 =?utf-8?B?ZFRMOU05aVI2UXluL2ZaODBOS2VHQnJQelpXL3RXMHR4M3VieDJaa09paVBm?=
 =?utf-8?B?VXd1R2NNcjRvYnJHWG1HbEtUaEFCbE44SWNkUjZhODYrbUZxN2JFTVBGL1dW?=
 =?utf-8?B?ek5KdXVOeExFUGpONzEwT2Ryc0M0eEZ6V2lxbFVHZEtFa28raXJCWm5jcnNv?=
 =?utf-8?B?cElaTW53cXhGVjMyR0Z2TzFYR2NiL0xzb0dRMnk0bXdDdmhlR2dGQU5wcmZD?=
 =?utf-8?B?VzdFZTBialB5R2JNQ1hZSEUrL3JTNEJaQk5jdCtuYUlycStWT0FnbFpNNVE3?=
 =?utf-8?B?SlpsZyt0ZE90RXRobTV6a25MdnZiT2tTSG1KYUxJbWRRVmI1anhhbFo5dFdk?=
 =?utf-8?B?M081NThsbmxqay9KVEpzRHBzRC9rR3lybzA4V1NVMHR0aUJtenQ3R2NHSXRJ?=
 =?utf-8?B?dEMybm9lU2svdEpaeENOeEhOM0t4Nis5d2gwMTR6TmtLa1JtVzJyVEVHR1hU?=
 =?utf-8?B?WVo4NXRTUGRqM3dnc0VZWkwrVVptd3lFK3QzVnMzN2lvbkVxaDA2K1RBQno0?=
 =?utf-8?B?UUlqZ08wMzZpcTdmTm1VWmJhc2hBZUczNmR6RTVxVklUNnV5VWhQWGVXTEYv?=
 =?utf-8?B?QWFPTUtONGxpLzBFQVFBb1duRGRuNkxhVzN3SlhrMUswcmE1emhiOS9veVlC?=
 =?utf-8?B?Mnhhb0pkekJ1L1lRMDRpYnBPVUdWS0dVRXFBcGRobVJYak44alRXUTR5a1hI?=
 =?utf-8?B?ZmNrRGlMYzR2RnRYS082ZDIrUXRIK0M3Qi8rZ09NYU90bC9oQ3BRT01YRlF2?=
 =?utf-8?B?NEFCOXJ1VjM4eTJJVFdITkJRN2dSMDVOQUlBTU1ORUFKbFV5SXhUOE94a0ls?=
 =?utf-8?B?WndiTEF3VlVYWWZLcVhQa3ZLaHlOV2xsTEROYkRiWk5lb2I0bWcya2syWGtP?=
 =?utf-8?B?dGdkMzFjK29lMXJ3K25FeHhlYjI5dktyRHJDYUtBVmVBOG9Mb2xEaGEzRDgv?=
 =?utf-8?B?ZVNuMEhGRVZ3WUxFNmM4MWcyNTJRbE1BRHQ3bS9XbGpVTGF5ZEdiRUI1a2xz?=
 =?utf-8?Q?SpS5iX/I+TwRZn+C5oHQ4BIW0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 020e7396-8111-4127-a650-08dc51fc76e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 03:33:14.8085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ex2YlZs6jUUIvj5TYo9aQaLBQOXeF1qenWGTGIbtphGMN6H6aUH7Bwh/ZI8pbjKzdIdU9mSb8pLLHeK8Uf6ykA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4654
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

PiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1OiBGaXggaTkxNV9kaXNwbGF5X2luZm8gb3V0cHV0
IHdoZW4gY29ubmVjdG9ycyBhcmUNCj4gbm90IGFjdGl2ZQ0KPiANCj4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEN1cnJlbnRseSBp
bnRlbF9jb25uZWN0b3JfaW5mbygpLCB3aGljaCBwcmludHMgdGhlIHBlci1jb25uZWN0b3Igb3V0
cHV0IGZvcg0KPiBpOTE1X2Rpc3BsYXlfaW5mbywganVzdCBiYWlscyBvdXQgZWFybHkgaWYgdGhl
IGNvbm5lY3RvciBkb2Vzbid0IGhhdmUgYSBjdXJyZW50DQo+IGVuY29kZXIuIFRoYXQgbGVhZHMg
dG8gdmVyeSBjb25mdXNpbmcgb3V0cHV0IHdoZXJlIHNvbWUgb2YgeW91ciBjb25uZWN0ZWQNCj4g
KGFuZCBwcm9wZXJseSBkZXRlY3RlZCkgb3V0cHV0cyBhcHBlYXIgdG8gaGF2ZSBubyBlbnVtZXJh
dGVkIG1vZGVzLg0KPiANCj4gR2V0IHJpZCBvZiB0aGUgZW5jb2RlciBzdHVmZiBhbmQganVzdCBy
ZWx5IG9uIHRoZSBjb25uZWN0b3IgaXRzZWxmIHNvIHRoYXQgdGhlDQo+IG91dHB1dCBpcyBhbHdh
eXMgY29uc2lzdGVudC4NCj4gDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1
cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jICAgfCAxNCArKystLS0tLS0tLS0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RlYnVnZnMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZWJ1Z2ZzLmMNCj4gaW5kZXggYjk5YzAyNGIwOTM0Li43MmVmZDkyZTU3MzcgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1
Z2ZzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2RlYnVnZnMuYw0KPiBAQCAtMjUyLDkgKzI1Miw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2Nvbm5l
Y3Rvcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwNCj4gIAkJCQkgc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcikNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9j
b25uZWN0b3IgPQ0KPiB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsNCj4gLQljb25zdCBz
dHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSA9IGNvbm5lY3Rvci0+c3RhdGU7
DQo+IC0Jc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPQ0KPiAtCQl0b19pbnRlbF9lbmNv
ZGVyKGNvbm5fc3RhdGUtPmJlc3RfZW5jb2Rlcik7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm1vZGU7DQo+IA0KPiAgCXNlcV9wcmludGYobSwgIltDT05ORUNUT1I6JWQ6JXNd
OiBzdGF0dXM6ICVzXG4iLCBAQCAtMjcxLDI4DQo+ICsyNjgsMjMgQEAgc3RhdGljIHZvaWQgaW50
ZWxfY29ubmVjdG9yX2luZm8oc3RydWN0IHNlcV9maWxlICptLA0KPiAgCQkgICBkcm1fZ2V0X3N1
YnBpeGVsX29yZGVyX25hbWUoY29ubmVjdG9yLQ0KPiA+ZGlzcGxheV9pbmZvLnN1YnBpeGVsX29y
ZGVyKSk7DQo+ICAJc2VxX3ByaW50ZihtLCAiXHRDRUEgcmV2OiAlZFxuIiwgY29ubmVjdG9yLT5k
aXNwbGF5X2luZm8uY2VhX3Jldik7DQo+IA0KPiAtCWlmICghZW5jb2RlcikNCj4gLQkJcmV0dXJu
Ow0KPiAtDQo+ICAJc3dpdGNoIChjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlKSB7DQo+ICAJY2Fz
ZSBEUk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBvcnQ6DQo+ICAJY2FzZSBEUk1fTU9ERV9DT05O
RUNUT1JfZURQOg0KPiAtCQlpZiAoZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRfRFBfTVNU
KQ0KPiArCQlpZiAoaW50ZWxfY29ubmVjdG9yLT5tc3RfcG9ydCkNCj4gIAkJCWludGVsX2RwX21z
dF9pbmZvKG0sIGludGVsX2Nvbm5lY3Rvcik7DQo+ICAJCWVsc2UNCj4gIAkJCWludGVsX2RwX2lu
Zm8obSwgaW50ZWxfY29ubmVjdG9yKTsNCj4gIAkJYnJlYWs7DQo+ICAJY2FzZSBEUk1fTU9ERV9D
T05ORUNUT1JfSERNSUE6DQo+IC0JCWlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9I
RE1JIHx8DQo+IC0JCSAgICBlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9EREkpDQo+IC0J
CQlpbnRlbF9oZG1pX2luZm8obSwgaW50ZWxfY29ubmVjdG9yKTsNCj4gKwkJaW50ZWxfaGRtaV9p
bmZvKG0sIGludGVsX2Nvbm5lY3Rvcik7DQo+ICAJCWJyZWFrOw0KPiAgCWRlZmF1bHQ6DQo+ICAJ
CWJyZWFrOw0KPiAgCX0NCj4gDQo+ICAJc2VxX3B1dHMobSwgIlx0SERDUCB2ZXJzaW9uOiAiKTsN
Cj4gLQlpZiAoaW50ZWxfZW5jb2Rlcl9pc19tc3QoZW5jb2RlcikpIHsNCj4gKwlpZiAoaW50ZWxf
Y29ubmVjdG9yLT5tc3RfcG9ydCkgew0KPiAgCQlpbnRlbF9oZGNwX2luZm8obSwgaW50ZWxfY29u
bmVjdG9yLCB0cnVlKTsNCj4gIAkJc2VxX3B1dHMobSwgIlx0TVNUIEh1YiBIRENQIHZlcnNpb246
ICIpOw0KPiAgCX0NCj4gLS0NCj4gMi40My4yDQoNCg==
