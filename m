Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B77696C7972
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 09:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C06910E515;
	Fri, 24 Mar 2023 08:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9236910E515
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 08:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679645802; x=1711181802;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KqARqZ6anU4ekXXPCVlP/uSFFTycDQR4P1zVksybCIw=;
 b=IyJiBElg/R/lPLjcrppM0UjPvdSWbhEZ4+MGS5Ih1FOzFsQ0kCIySqns
 I+izh66IGRW6p7c0o+oy8BdwCVFfa/gyFqvaDZqn2wyg0DiU7clEtYvkN
 XACeV0AkdIfIPQYlEEcrIzyEbU7m2YHY6eIHwFr+/3i30P6Xp/QjI94dj
 dxfA4C+7SxsN+DW6KVdpDDQuVKnhd79G8SUxw7UhiS+v59DKk99a7x+9U
 UhbLw+FR4D8tA+j4yq9O6nzQbG6G+SZA4fcbOK/A1a1WZl2037dspgP4I
 EKZUYMuAfTn2W/PpPHQfD2ZT0YYY32MDX0NMBmgehrrJnie6MLhFbF5Dd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="337230256"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="337230256"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 01:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="806563359"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="806563359"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 24 Mar 2023 01:16:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 01:16:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 01:16:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 01:16:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kkhEjNLKmYTA9e8+Mw8ijimTE877rWrKL/3CN81x26cbVcJm5IZOKXvnSbRGNq6fs0CofXxLhbARPJMQf9BBBbEfQXhhesON4EIu5mcuLLi/6byiTo1vLmmEjdcDaVFbA+hPFWqObpMxsx8vhPtwr5NadgdaiYhhIB6z9EFCzdjvWr6lWVCPwZyu63TFmBXFT/XsDRsiBBtJqJ96Be9HUMpOSBUsw/jv3sRp9h+7u8suPPJGEO5hOX7/pB+OBUVLGnHJrc07uP/XMptM6fghVlFN0oDNrKbNngYd8wFIR7n42FB3zoim9RqsZe+bckI6JBgmOxweqyOjBXejtAotcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqARqZ6anU4ekXXPCVlP/uSFFTycDQR4P1zVksybCIw=;
 b=eHdXDv0ZlBLucnB5q/jEh/k3oKdGZ89YJ76/VgtuWgSHX1w8VdHT8pN7a2kr5OC7EAQJMEnhnwCh318zIvwrwNMaYyLVWHol0lFUwLpjvkKBPxKHSXGdmgerBbUintFBFqx2wuMVX7uv6vplKXtcdH3ozMJIPVuZ6d0HdNp7OhENhK/DBdgnQVEGivN18vsb/Fe1zLGLII7ls12jwIAcJb1T4xo3FOCI0uTrIEwd1H/+vbgd97gjkKHilz74Ko9qXXAO8JSGvT60FKPB/9DDyAyy0W89ptts4vVVyMhHGZOYirbE1QBM2QFs3aNSoOJC2BTgry+3dW/PygTFcm003Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 08:16:38 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 08:16:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/14] drm/i915/tc: Factor out helpers
 converting HPD mask to TC mode
Thread-Index: AQHZWBAFaWNt3/gXmESz82L6QEPAy68Joayw
Date: Fri, 24 Mar 2023 08:16:38 +0000
Message-ID: <MW4PR11MB70548C6411F7A853C3CDD59DEF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-7-imre.deak@intel.com>
In-Reply-To: <20230316131724.359612-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB5279:EE_
x-ms-office365-filtering-correlation-id: ba81b856-fde5-462e-23b7-08db2c401766
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hnZvwHnngvAfeQFtJPG+bz4gcrK/OZrTMwDuUuaSpKcn3mAArrGLIcfzS/OCsG3yvgmxl4fMDiLEmDubmh/60qnongdMWsIsgdnRHSVRMxm9RHFXQL8myJhvGCm/9LuQyLAWNOpyPo1rdwcRImwBQFH7zw/tnno9jmi7fhwQhV9OxBZEg/qKq0WgDB3OkUTVEOfQm44pLK4D/AMonHgHGgDOqZHSvVrIrXWfHF3e+if0MsAbLBZ2XK/leE4Lb1JRypU2ehsx85o9EiH88kHoI1zFiAeEatd468o34smxGHqZ3ojN0Of5NKcP87o9HD/wz11oJnVHZad771Pe4Uq+OY5+MUt4jlO2kAxEZdbQPrsEmMaIevxm9Zdcjm/AhvnVdvpOcsHXaxCdGDXZrE36MUYNUUkjuClvNZnJw1b4dGvCZca7qbFk/Xy3NFKkXYRw2JJEvgs4dXzhb+upxXSiivvpcQsvewSbAR7iDoBevrJyxQsqFc1AQnbF/oQ+FnjNlpaEmIAipBHafRI/1nCQUYymV0Q1sMuVZObLMIsLxIAMiN1/XRZXPhK20AKzxuyF6BLcfJ8Ah9TMXGjLGjgMzzgFTk8cXhDnga7SLM5H6eZMpK0i7+gGeS3eN+/qtSHVf5EzvPwlLloRZsQ/91tJlWJlr0QaNuZ9raQ3QrYvR5mphkSHgNRfC1ktzY6nupsBnp1Ab/8NvQjF7hXtkGXQ+A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199018)(66556008)(8936002)(66946007)(52536014)(64756008)(66446008)(41300700001)(66476007)(76116006)(86362001)(8676002)(33656002)(38100700002)(53546011)(122000001)(9686003)(6506007)(38070700005)(55016003)(26005)(83380400001)(186003)(478600001)(7696005)(110136005)(71200400001)(316002)(82960400001)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUR4clVBWm11c09RRG9UcHM3S2hZczJTdTdBNlp3MTIxTkpLaUZIRXhBQVdt?=
 =?utf-8?B?c0UrL0l6VVNYbEZJbDFQNUo2VGp4SUpiOEU4RUpNbnEwaktTWUMwVUVISG9i?=
 =?utf-8?B?RDhIc1lLMEhEMk9ZT1hwVUFSU1dGL3QrY0h0bDV4dko0KzAwMHZHMCtLaHFN?=
 =?utf-8?B?N3ppZXRBZ0YvRHNFRzMzWXdRVURYcFNTQzExWkNHYk5yUmpxc2Nna1htNW1x?=
 =?utf-8?B?a0hxNS9lbTdLU0NOZUMwUTQ2ajM5YzlhWU5OSlNGVnkwb1dtcGtRcE1GWmJQ?=
 =?utf-8?B?eG5wSFRRcjUyN2ZQa0xnYy8xcnVhd0w0OG9aeWVKdnV5SUNTVEI0anFYbitq?=
 =?utf-8?B?a0dxV002ZDhYL2dobVdEZ3ozRXFSK08vQmZPVGZTc3ZmRGxldGlUVWhHRVda?=
 =?utf-8?B?c2NzTGVvOTRHU0xrSmQ5K3ZFb0gvd0E2NE1JTVNuZStIQ08zeHZwVDNXRmFm?=
 =?utf-8?B?ZkRGQnZrUnZHKzZjNlk0SjJWMUJHR0RkN0MxK3dlNzJ4djI4ZzV1YkIvY083?=
 =?utf-8?B?M01rRDlRY1oxSjg5RmZzT1NpeGZUQkRNenJHbFFvd0pNVUhYMFRLWEZCRG84?=
 =?utf-8?B?eGxoczM4amtsUmdPZlgzWlRFUExUQTBhdXRhNHBiQnErNDI0eFFBa29LcFR1?=
 =?utf-8?B?VXZqVHZRbXo1cXE3QUQ1T1Y0enZrVW81cUQxMnVhVVhsb3NkcEw1Y1FMSWd6?=
 =?utf-8?B?T2Nvb09xSjNwbUQ3U3JNMHhMb0ZZZ1dpd3RNS0JmdXN1cE1DREdhYmZVSWpH?=
 =?utf-8?B?bzkvOHRoME8rdzAvc09YcGtId3dDVVIzY1Z5MEIweGdSdVNPbzNGQThBWWRt?=
 =?utf-8?B?UDlwekdRdkhrMDNHUy9FeENhTDVkM2twVXdpd3VFWGhnYUFUT1JWV2JvSUVo?=
 =?utf-8?B?TlYrQU9Kak1TNnVQTzUybU81cndWdDV1WUMrbGdWNms2dWVxUTQxcmVUZEll?=
 =?utf-8?B?ckdPaXJkUk1KdW5HNGpJVnEvSUFTU09jR2JwQnZEZXBqdzExMDZRNWRFK2Jk?=
 =?utf-8?B?VHM4dklqaVZ4SlJGWFVsdldRQnRBZ2I2bzljREtadndudkMvODM5TjIvakFv?=
 =?utf-8?B?aHJLK3JqNkREb0RFRzR3OFVkeUFHT0xFdTFSR2NjOWVXYjBKcllVQnUwenZi?=
 =?utf-8?B?cnRITHpOYm5Ea3BVdmpZOHVzdnMxY09RWW1aUUl3WjcwV25vdVJ1UDVCeVdZ?=
 =?utf-8?B?bytTa3c5bktWU2l4RGg1S2U5cGN3dy9kd2VwZmFiellobTl0RUU5SzFRWUdO?=
 =?utf-8?B?aWt2RVlXRy9VQ3czV3R2VCtlcmdEcWhzcGxEankwZ1FRR1BWeFVoRlNyY2FW?=
 =?utf-8?B?cHBXdzBuOFFHS05wemVCTlR1bWJJbnhSSU5kbCs1YURjdUYrUGNwQ2JXR2hP?=
 =?utf-8?B?WUFBL2x6N1pZeHlNdXppSys0WjlJTkhLV0JtRy9XNHdzdk5TUDFxU2U5R2N1?=
 =?utf-8?B?RVlTbFVCQjRISjVlNFZ4ZDJHRGZpcGlOWTZpNTEyNkkwRkMyMXBuZWk0dkgx?=
 =?utf-8?B?SllRNkgzWHQ0cXgwV21lZ2YrdDRxV3RPaEpkYXZRVGhFL1E5UnlVZG50OXA2?=
 =?utf-8?B?K0FBR2hSNktpV0ZYMi8zQzNMenpFWnJCK2ZjSHVNRENzcTRVbW1DRzg1MTdS?=
 =?utf-8?B?S050ZzdUNHR0MlJsKzVvSlJkNC9hcmlOTHdVUis5a0RLUHhzb1V5ZHRRbHh6?=
 =?utf-8?B?OXRzM3F2UGpVT0hRZmt5TE9iRkdrOWcxY0pSMW50cFcvVVhjWlVob0JuSFcr?=
 =?utf-8?B?YVdHRE5hR3FkdjFmZHZSY3BMNXlEK1Y3RVE4aDEwd1FUbksyU0VtZ3NkS2RH?=
 =?utf-8?B?d0VQV2dUdUJ0QWlwWnpHYnNreTZrOHJJekVJT3k0UDVNQmk1VmRzRHV2UVI0?=
 =?utf-8?B?RVMrWWJia05uTzV3QTY5RDd6N3YwM2kvYlkxRmtGalJSZTliU2pNVEVwMDNu?=
 =?utf-8?B?T3oya0hSWG9kZlZIS09MTFBUc1RhQXlSTUFrWUNVN2hjaUhrVGRIaUJCS1Qw?=
 =?utf-8?B?SE5CeXdEdzFKUEl5Z0FzaXY1dWRMSUhnUG03VVUvdXVhbERhZGxVam5WMnRD?=
 =?utf-8?B?ekJJeUFRWVdGSWZSRnN6MFg5alVLSXlqd3pQSWJ6WjVoeDRlY0dRc3JCZDFG?=
 =?utf-8?Q?v8oh0xtphyhx8hNjnSIIBPiE6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba81b856-fde5-462e-23b7-08db2c401766
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 08:16:38.4999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AuIXaVgPMBf3jE91G3V3j1XZg8PPzRlOyOrr6pDb09sUeUtd+2yd0tph+Bj/zt7WMM8W95IrAatpD/ieIV+QCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/14] drm/i915/tc: Factor out helpers
 converting HPD mask to TC mode
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMTYsIDIwMjMgMzoxNyBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDYvMTRdIGRybS9pOTE1L3RjOiBGYWN0b3Igb3V0IGhlbHBlcnMgY29udmVydGluZw0KPiBIUEQg
bWFzayB0byBUQyBtb2RlDQo+IA0KPiBGYWN0b3Igb3V0IGhlbHBlcnMgdXNlZCBsYXRlciBpbiB0
aGUgcGF0Y2hzZXQgdG8gY29udmVydCBhbiBIUEQgc3RhdHVzIG1hc2sgdG8NCj4gVEMgbW9kZSBv
ciB0YXJnZXQgVEMgbW9kZS4NCj4gDQo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4NCj4gDQoNClJl
dmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA0NCArKysrKysrKysrKysrKysr
KystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+
IGluZGV4IDIxMTZjODI4MzFhNTMuLjAwMmUxNDJjYzc0NmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTU5MSwxMSArNTkxLDI4IEBAIHN0YXRp
YyB2b2lkIHRjX3BoeV93YWl0X2Zvcl9yZWFkeShzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0
ICpkaWdfcG9ydCkNCj4gIAkJCWRpZ19wb3J0LT50Y19wb3J0X25hbWUpOw0KPiAgfQ0KPiANCj4g
K3N0YXRpYyBlbnVtIHRjX3BvcnRfbW9kZQ0KPiAraHBkX21hc2tfdG9fdGNfbW9kZSh1MzIgbGl2
ZV9zdGF0dXNfbWFzaykgew0KPiArCWlmIChsaXZlX3N0YXR1c19tYXNrKQ0KPiArCQlyZXR1cm4g
ZmxzKGxpdmVfc3RhdHVzX21hc2spIC0gMTsNCj4gKw0KPiArCXJldHVybiBUQ19QT1JUX0RJU0NP
Tk5FQ1RFRDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGVudW0gdGNfcG9ydF9tb2RlDQo+ICt0Y19w
aHlfaHBkX2xpdmVfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkgew0K
PiArCXUzMiBsaXZlX3N0YXR1c19tYXNrID0gdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKGRpZ19w
b3J0KTsNCj4gKw0KPiArCXJldHVybiBocGRfbWFza190b190Y19tb2RlKGxpdmVfc3RhdHVzX21h
c2spOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgZW51bSB0Y19wb3J0X21vZGUNCj4gIGludGVsX3Rj
X3BvcnRfZ2V0X2N1cnJlbnRfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3Bv
cnQtPmJhc2UuYmFzZS5kZXYpOw0KPiAtCXUzMiBsaXZlX3N0YXR1c19tYXNrID0gdGNfcG9ydF9s
aXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KTsNCj4gKwllbnVtIHRjX3BvcnRfbW9kZSBsaXZlX21v
ZGUgPSB0Y19waHlfaHBkX2xpdmVfbW9kZShkaWdfcG9ydCk7DQo+ICAJZW51bSB0Y19wb3J0X21v
ZGUgbW9kZTsNCj4gDQo+ICAJLyoNCj4gQEAgLTYxMSwyNyArNjI4LDMyIEBAIGludGVsX3RjX3Bv
cnRfZ2V0X2N1cnJlbnRfbW9kZShzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCkNCj4gIAkJcmV0dXJuIFRDX1BPUlRfVEJUX0FMVDsNCj4gDQo+ICAJbW9kZSA9IGRpZ19wb3J0
LT50Y19sZWdhY3lfcG9ydCA/IFRDX1BPUlRfTEVHQUNZIDoNCj4gVENfUE9SVF9EUF9BTFQ7DQo+
IC0JaWYgKGxpdmVfc3RhdHVzX21hc2spIHsNCj4gLQkJZW51bSB0Y19wb3J0X21vZGUgbGl2ZV9t
b2RlID0gZmxzKGxpdmVfc3RhdHVzX21hc2spIC0gMTsNCj4gLQ0KPiAtCQlpZiAoIWRybV9XQVJO
X09OKCZpOTE1LT5kcm0sIGxpdmVfbW9kZSA9PQ0KPiBUQ19QT1JUX1RCVF9BTFQpKQ0KPiAtCQkJ
bW9kZSA9IGxpdmVfbW9kZTsNCj4gLQl9DQo+ICsJaWYgKGxpdmVfbW9kZSAhPSBUQ19QT1JUX0RJ
U0NPTk5FQ1RFRCAmJg0KPiArCSAgICAhZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgbGl2ZV9tb2Rl
ID09IFRDX1BPUlRfVEJUX0FMVCkpDQo+ICsJCW1vZGUgPSBsaXZlX21vZGU7DQo+IA0KPiAgCXJl
dHVybiBtb2RlOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBlbnVtIHRjX3BvcnRfbW9kZQ0KPiAtaW50
ZWxfdGNfcG9ydF9nZXRfdGFyZ2V0X21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQpDQo+ICtocGRfbWFza190b190YXJnZXRfbW9kZSh1MzIgbGl2ZV9zdGF0dXNfbWFzaykN
Cj4gIHsNCj4gLQl1MzIgbGl2ZV9zdGF0dXNfbWFzayA9IHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFz
ayhkaWdfcG9ydCk7DQo+ICsJZW51bSB0Y19wb3J0X21vZGUgbW9kZSA9IGhwZF9tYXNrX3RvX3Rj
X21vZGUobGl2ZV9zdGF0dXNfbWFzayk7DQo+IA0KPiAtCWlmIChsaXZlX3N0YXR1c19tYXNrKQ0K
PiAtCQlyZXR1cm4gZmxzKGxpdmVfc3RhdHVzX21hc2spIC0gMTsNCj4gKwlpZiAobW9kZSAhPSBU
Q19QT1JUX0RJU0NPTk5FQ1RFRCkNCj4gKwkJcmV0dXJuIG1vZGU7DQo+IA0KPiAgCXJldHVybiBU
Q19QT1JUX1RCVF9BTFQ7DQo+ICB9DQo+IA0KPiArc3RhdGljIGVudW0gdGNfcG9ydF9tb2RlDQo+
ICtpbnRlbF90Y19wb3J0X2dldF90YXJnZXRfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICpkaWdfcG9ydCkgew0KPiArCXUzMiBsaXZlX3N0YXR1c19tYXNrID0gdGNfcG9ydF9saXZlX3N0
YXR1c19tYXNrKGRpZ19wb3J0KTsNCj4gKw0KPiArCXJldHVybiBocGRfbWFza190b190YXJnZXRf
bW9kZShsaXZlX3N0YXR1c19tYXNrKTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50ZWxf
dGNfcG9ydF9yZXNldF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0K
PiAgCQkJCSAgICAgaW50IHJlcXVpcmVkX2xhbmVzLCBib29sIGZvcmNlX2Rpc2Nvbm5lY3QpICB7
DQo+IC0tDQo+IDIuMzcuMQ0KDQo=
