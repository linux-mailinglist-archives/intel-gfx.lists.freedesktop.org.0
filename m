Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 376BB65CF08
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 10:05:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE1F10E4FB;
	Wed,  4 Jan 2023 09:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164EE10E4FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 09:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672823114; x=1704359114;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6ATjs/3PBMozsMWqh2F18BezRlt0TTYt8m8DLesPWYg=;
 b=N+f+m9I1lkAwnhHRVyEfG7ruP8Or6PFk4MiQfvnxQ+9lefRRWb9wUMum
 26BfXmby9pRDLDCruJrjZks/1kYwtyIXW0J/tFHgIVQfYNnSow9rIwGlE
 Dv+E5wVpH1kerbn5xujuFPYn0D45+Aw//HO7Q6UK3cyrozxRTjIFma1xD
 LOqWowsHGZjDTheesLEOLfe+sn/QT4vaNsmeUmRSjO/quCAOaW4w4YB0I
 WryMFcqE4eHzsCifbadAmcp09Fki4wB9o6MM78Ac+doOoic8lpK19/yW3
 Rx2B2opHUrzogSZ1IiE8rUFXG3a+5gX//VfR9mW0/XHGGV1hvegirnMSe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323124660"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323124660"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:05:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="605129947"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="605129947"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2023 01:05:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 01:05:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 01:05:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 01:05:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eie+ex0mUZ/QMPY/MiTeU5BELM7JrtAScKvmpaYixgQo3UER6ndWK1fGsVBzDJjqX4hcO6Cb7O6CK0ECLDb4k/VDBmj/V5ts3Mv4tafCa3Qc/Y8AhsG8C9Pv8t/yzhok9ydDXG4yrdlDwKwbpnAwQ8vl9fiDcUGynxeQM/49LdCrjEixAFZyNn3dFX+QW+5kXOyl6TCHzBT/coimoB+zLr7cXZ9bjuiqSV4cI9V6pAB1yrbXWgYf2EPO7VUXk0IELzXK3BVJuWJMgKXSVd9vGIQV77zQgY7W3LentCkyALbrBcUG0mXqcGNtictti6zMJFY57zhIQ4XM3cvr+5DO1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ATjs/3PBMozsMWqh2F18BezRlt0TTYt8m8DLesPWYg=;
 b=M3/JbkPraTySFMpa+kiUkFkbF+toj0budYuq3cOHBVarKQUK/QtvUVnAw7zwDXwyPb40W+Ddq7enVDBXgzZyI94vg9sV88R0aXy4Az5JayAwzK+U4c06TxsZYydXvRpIPMkh4P+Zlz/3BcVxX59gFBW5r9k42rPNMiGPdlD7BMveKPBwvij2c8Ikv69jGR0n2y9QYBgptFO1sq8ektejhY6cLYYGOPjaXZeD0HAk1ESSB/ScdfFlT9g903XD1DQPVXI1e1Rwpj+ZxZJp45y5Tj58x1V6Nl2oX4N3kg/rlsa44kfHYCLN6TLI/dOToJwc6ip/JOT5RiUBgwAOfOlcDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5594.namprd11.prod.outlook.com (2603:10b6:510:e4::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Wed, 4 Jan 2023 09:05:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%7]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 09:05:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Implement Wa_14015648006
Thread-Index: AQHZFT8sfk7f5fUiI0aW36IA32EeAa6Nf9uAgACM6gA=
Date: Wed, 4 Jan 2023 09:05:05 +0000
Message-ID: <29f808b72652815575aa9f69c786df8d40ab086e.camel@intel.com>
References: <20221221132118.1822697-1-jouni.hogander@intel.com>
 <Y7TLCwIFhQJ/cJ6s@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y7TLCwIFhQJ/cJ6s@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5594:EE_
x-ms-office365-filtering-correlation-id: cd1ed69f-6458-499f-97ea-08daee32c5c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pK2WUuz3GiqSqJXSWDUbNuRtldQH27fIS/4mJMNlKncmTHgK0uZTndjmVZeF8Vl3lMuveDdE0vC0MCpnAkrQ+6LREIFlDJGAcImi2vf6gv8AdKxtf7V4dZAiRSkEaxauaqjQNCJjZ9MVP5f4M4ncG9LhbIDkhUxqaDX+jnfnZweN713W3Wh7okNyHjqlPTHJ2IDDTrqtTdtJYrmQWdkh6c5sZURT20g0PFVPl3DE/a2xuekbJXAprbHVnYBDjioKDvbFjC/wOJp48Gcy+M4u+9IBOl+sUbgn2SrwjkKJxPvqCB+0lTTyCgWDunZpmVhBefxuTH5y8HDJoV9dafhDww1ObbjewHosYrxqn/fUdj3qYw0Qk+dy/AcLDj66YXsxYpFdWtp8leLkO9ybQiZ7cyFxKKtUZrqB83PqnedzjtqmiOUKnhQakZ1sHNdkco1R2u61myZwK91/lmyOasd/53hunneiFuVEfBke2JeObcOE6SRp9qjPDnxODGLj7NU5KBZ28uX+/0mfjPg2zsTPbto0CfRHDG0B9lE7lPpcaeTg28hKuxoKIykeIiXhCrbBZ6zitu3PN6oikFl/E6rL83NOtw62Aw2w/XHI2G5aU7nzHBGJRpIITc4CE2RDWvEnKk6lxoPl1kqo/ll5PirSttGjd5fEycRWifpqtzr04erDcGsljRvNS+WxQYsdhMdouuN7phhKkNBOZ1OibTj76w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(366004)(376002)(346002)(396003)(451199015)(66574015)(186003)(6512007)(2616005)(26005)(38070700005)(38100700002)(82960400001)(86362001)(83380400001)(122000001)(36756003)(41300700001)(91956017)(8936002)(4326008)(6862004)(8676002)(5660300002)(66556008)(66446008)(64756008)(66946007)(316002)(76116006)(66476007)(6486002)(478600001)(54906003)(6506007)(37006003)(2906002)(71200400001)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azRuVktSUWZ2eXNZMXlkbWUyT0M1OXRsc3BWS0JnNGE0WHJUQjR3bHJOR2tq?=
 =?utf-8?B?NUNOSUJ0MmhZK0ZVenhIUm9YRmNuWWloQ0VtMzdMczFyN1ZObTQrcHpWVy82?=
 =?utf-8?B?RGVnbjVFc0RkYWZwYmRncWRPOEtMb28xTmpZdGJxbGcrbGQrNFRVTGRFTTY3?=
 =?utf-8?B?SFlUNUZxMTlsUXliQkJIUmowODFXTzU5M1lieFJJeXE3UVFURWZ2TFR0dlhi?=
 =?utf-8?B?Z081SDNaUlIySlhLaVFHckZwc3l0SlJVcFErR3dRUWw4RWFrRDc2U2VEZjFN?=
 =?utf-8?B?S0tEMENOQjgrRGZoNlZSR1lHRzMrTWhRNmxHNTV1S3V0a0JZN1ViYzExRE00?=
 =?utf-8?B?L25FK1FObEcvMFdTb2E1M2NDd3VBMXR6N3MxazNuaVg0UEhNMVZ3ZFcyNVdo?=
 =?utf-8?B?WjZQQXRWd0UxczA2S1dnUHA0OHdPakZ0dmE4SmhVQ0plc0JWeVpaSE9Pd0JX?=
 =?utf-8?B?VDhNT0dveHpkOWxCdThuUkFuWnVYZk00MzZ2bDhjcEFRNmlVaHFZT0tFSXY2?=
 =?utf-8?B?ZzFXd0pXcGZqNTlHV3ZVNXJQaisvYnFyYmRPMTh4R1RuS2xoYXZwTzFaVEE4?=
 =?utf-8?B?L05qWURWYStrcjQxbDAzaUQrc0Frblo5MjNGZktBV1hkejh3QUtxKzlZL25U?=
 =?utf-8?B?ejNQM084MGZvaUJsSkkvc0hhK0gvMkVRRGFGOHVmcHpETzdwZmFVbzREeG9X?=
 =?utf-8?B?UEhKWW05N0J4akpucitVTkhiZm1BcmxuMnBFVFpWbFgwNzVzTTZ6YnN1ckUy?=
 =?utf-8?B?ak5uSjRxcHkxVm1vbERGdHp4MWFnRFRuVW1ZaThObTJ6WUhFTm0rKzRiZVpS?=
 =?utf-8?B?c3k2SWVUUjk4QWVEdjdlVzR3eDdqaWtvVi8vc0JLWWVhVlB1ZUt1YjRYcjBT?=
 =?utf-8?B?Qk5IM2hMcGlDRzl3UHoyajgwK1NZaWlZQlRqTUEwQXRTUWtxUXpXRzVTcDR5?=
 =?utf-8?B?ZkJIWGxucEFlb2NqamtsVTVTOWg5bG1zcFhoVmpydUdpK2l0YVYxdG1KOHor?=
 =?utf-8?B?Vm1iOU5iTlRNMHJjc1Y3SWZtMXVHa1VlaVdwandFWDVXTEIrTVZQalNlY2RF?=
 =?utf-8?B?YUJpRXZKUlNiQXIzMVVMOEsrd0VzVVoyZituV2hOa2JNQ1ZYam55U3VyaGxR?=
 =?utf-8?B?TVc5RFlRS3lnOXYrR2cxL1VNMERwSW52OVplOFErWUh0ZUtneDh6dFljdW5j?=
 =?utf-8?B?NklsNktSS2psK3lGQlhodHp6dXJWSjFRRzJUancvZEFjSHRKd3ZJTm1SUWVY?=
 =?utf-8?B?bitjMCtrenhJbUQwMktkZTBjbUVDZktTMHg2bVRZcTM3YkpVYzU4RDlmY0NH?=
 =?utf-8?B?bHdyaWxoV21RRXIzMWkrcG9SbDFQZzRRRVV6djVQYkI1eVVzbHpHMUFuTEw2?=
 =?utf-8?B?SUVERzNTdUZhNVgxSWZXZmdEYi93TlVmaFZ4eW5Rdy9CTFNjM2J3QWovVm11?=
 =?utf-8?B?amM1cFVYeCtqRE00K21BOWNmRU5YT2h4Yk8rTU0zd2QrekxaY1JEWnp5QjFm?=
 =?utf-8?B?cUVxK3prbDNMWm5waHRDQTIxSmtoZEFEc2NlRGd0RHJaUDBRQllwaG5zbTBh?=
 =?utf-8?B?d1JURkZxV0p0M3ZpemVWV0k4Ri9vLy93b1BnYllMdVNKSWVTY0lkSzhkdEEr?=
 =?utf-8?B?MWhzQ0laVWtQTlVOeFgxN3BnRFo0YVVDK1BXRkxVZXpjU0FDVmF2SkFMTkM2?=
 =?utf-8?B?SmlwQzd0QndjZ2grMzZZeG8wMzR3QUhmWHgyVlR4eWgrL3htTFhpdmxFdGM2?=
 =?utf-8?B?VFNHdDBGZzhmL0RORWpHUTVqZjhxSzhQVnY5ck1tYzZKQndRTksxREpYdTlZ?=
 =?utf-8?B?UXNkdVdxRFhwWHB5WE8zRVV2Q1hBVWRyMGtRaWZ0bTI2VE1VQ2pGY05LVmti?=
 =?utf-8?B?djhjSS9qQ3RNTlRmSjNXOEFUakRMR3k0bU1oQ0VXQktPUW1NdFNGeW16YUZo?=
 =?utf-8?B?OExqQktoS3ZKRElwRTV0aUxxWjhUYkxkTWEvcFhuS1N4aHVFd3VpUnhrK0hN?=
 =?utf-8?B?L2owUFI4TW05dXZUdnEzUnZEUEVvRDV6QzBsejcrSVF6bDgxRW1EbC9nbG82?=
 =?utf-8?B?aHZHcTZYNmdLTjF5ZVZYY2J0cmgwcS9FeWlwNGFRRThCZDRJSmZXVUpkWGtM?=
 =?utf-8?B?T21EejFlaURXSTUwT05LWFJDTy91ODRKOEQxR3R0MWtGUmsrMngxSVdTOE1q?=
 =?utf-8?B?T1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6EE77EF3988D64C911226BF0D16196F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd1ed69f-6458-499f-97ea-08daee32c5c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 09:05:05.9845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BDK8pCsOGWApXq9Ag32TkT/rlxRsNL1ywH2lclsRN1tL2iu9JQsHhJiFcrfc+AUvH5cjZ/jPJeLtG1tOKAzD9/SVNzAJ74E8Xou0cyMuXBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Implement Wa_14015648006
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTAxLTAzIGF0IDE2OjQwIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOgo+IE9u
IFdlZCwgRGVjIDIxLCAyMDIyIGF0IDAzOjIxOjE4UE0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3
cm90ZToKPiA+IEFkZCA0dGggcGlwZSBhbmQgZXh0ZW5kIFRHTCBXYV8xNjAxMzgzNTQ2OCB0byBz
dXBwb3J0IEFETFAsIE1UTCBhbmQKPiA+IERHMiBhbmQgYWxsIFRHTCBzdGVwcGluZ3MuCj4gPiAK
PiA+IEJTcGVjOiA1NDM2OSwgNTUzNzgsIDY2NjI0Cj4gPiAKPiA+IENjOiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5p
c2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIwICsrKysrKysrKysrKysrLS0tLS0t
Cj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmjCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgIDEgKwo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKPiA+IGluZGV4IDk4MjBlNWZkZDA4Ny4uMGQwMWI4YTdhNzVkIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTExMTIsNiArMTExMiw4
IEBAIHN0YXRpYyB1MzIgd2FfMTYwMTM4MzU0NjhfYml0X2dldChzdHJ1Y3QKPiA+IGludGVsX2Rw
ICppbnRlbF9kcCkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIExB
VEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURfUElQRV9COwo+ID4gwqDCoMKgwqDCoMKgwqDCoGNhc2Ug
UElQRV9DOgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gTEFURU5D
WV9SRVBPUlRJTkdfUkVNT1ZFRF9QSVBFX0M7Cj4gPiArwqDCoMKgwqDCoMKgwqBjYXNlIFBJUEVf
RDoKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gTEFURU5DWV9SRVBP
UlRJTkdfUkVNT1ZFRF9QSVBFX0Q7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZGVmYXVsdDoKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgTUlTU0lOR19DQVNFKGludGVsX2RwLT5wc3Iu
cGlwZSk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOwo+ID4g
QEAgLTExOTcsOSArMTE5OSwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJj
ZShzdHJ1Y3QKPiA+IGludGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0xLR0FU
RV9ESVNfTUlTQywgMCwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gQ0xLR0FURV9ESVNfTUlTQ19E
TUFTQ19HQVRJTkdfRElTKTsKPiA+IMKgCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgLyogV2FfMTYwMTM4MzU0Njg6dGdsW2IwK10sIGRnMSAqLwo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChJU19UR0xfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0Iw
LAo+ID4gU1RFUF9GT1JFVkVSKSB8fAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBJU19ERzEoZGV2X3ByaXYpKSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgLyoKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBXYV8xNjAxMzgz
NTQ2ODp0Z2xbYjArXSwgZGcxLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAq
IFdhXzE0MDE1NjQ4MDA2OmFkbHBbYTArXSwgbXRsW2EwXSwgZGcyLCB0Z2xbYTArXQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGlmIChJU19NVExfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQ
X0IwKQo+ID4gfHwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNf
RElTUExBWV9WRVIoZGV2X3ByaXYsIDEyLCAxMykpIHsKPiAKPiBUaGVyZSdzIGFub3RoZXIgdGhy
ZWFkIHdoZXJlIHdlJ3JlIGRpc2N1c3NpbmcgcG9zc2libHkgZHJvcHBpbmcgYWxsCj4gb2YKPiB0
aGUgcGxhdGZvcm0vc3RlcHBpbmcgaW5mb3JtYXRpb24gZnJvbSB3b3JrYXJvdW5kIGNvbW1lbnRz
LCBidXQgdGhpcwo+IGlzCj4gYSBncmVhdCBzdXBwb3J0aW5nIGV4YW1wbGUgZm9yIHdoeSB0aGUg
ZGV0YWlsZWQgY29tbWVudHMgYXJlIGNhdXNpbmcKPiBtb3JlIGNvbmZ1c2lvbiB0aGFuIHRoZXkn
cmUgd29ydGguwqAgVGhlIGNvZGUgY29uZGl0aW9uIGluY2x1ZGVzIFJLTAo+IGFuZAo+IEFETC1T
LCB3aGVyZWFzIHRoZSBjb21tZW50IGRvZXMgbm90IG1lbnRpb24gdGhlbS7CoCBJbiB0aGlzIGNh
c2UgdGhlCj4gY29kZQo+IGlzIGNvcnJlY3QgYW5kIHRoZSBjb21tZW50IGlzIGluY29tcGxldGUu
Cj4gCj4gSWYgd2UgbW92ZSBmb3J3YXJkIHdpdGggTHVjYXMnIHBhdGNoLCB0aGlzIHNob3VsZCBq
dXN0IHR1cm4gaW50bwo+IAo+IMKgwqDCoMKgwqDCoMKgIC8qCj4gwqDCoMKgwqDCoMKgwqDCoCAq
IFdhXzE2MDEzODM1NDY4Cj4gwqDCoMKgwqDCoMKgwqDCoCAqIFdhXzE0MDE1NjQ4MDA2Cj4gwqDC
oMKgwqDCoMKgwqDCoCAqLwo+IAo+IGFuZCBsZXQgdGhlIGNvZGUgc3BlYWsgZm9yIGl0c2VsZiBh
Ym91dCB3aGljaCBwbGF0Zm9ybShzKSBpdCBjb3ZlcnMuCj4gCj4gCj4gQXMgZm9yIHRoZSB3b3Jr
YXJvdW5kIGl0c2VsZiBoZXJlLCB0aGUgZXhpc3RpbmcgaW1wbGVtZW50YXRpb24gb2YKPiBXYV8x
NjAxMzgzNTQ2OCBpcyBpbiBhICdpZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpJyBidXQg
aXQgbG9va3MKPiBsaWtlIHRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgbmV3IFdhXzE0MDE1NjQ4MDA2
IGlzIGFsc28gc3VwcG9zZWQgdG8KPiBhcHBseQo+IHRvIFBTUjEgYXMgd2VsbC7CoCBEbyB3ZSBu
ZWVkIHRvIGxpZnQgdGhlc2Ugb3V0IG9mIHRoYXQgY29uZGl0aW9uYWwKPiBibG9jaz8KCllvdSBh
cmUgcmlnaHQuIEl0IHNob3VsZCBiZSBhcHBsaWVkIGZvciBQU1IxIGFzIHdlbGwuCgpUaGFuayB5
b3UgZm9yIGFsbCB5b3VyIGNvbW1lbnRzLiBBZGRyZXNzZWQgYWxsIG9mIHRoZW0gaW4gbmV3IHZl
cnNpb24uClBsZWFzZSBjaGVjay4KCj4gCj4gCj4gTWF0dAo+IAo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTE2IHZ0b3RhbCwgdmJsYW5rOwo+ID4g
wqAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZ0
b3RhbCA9IGNydGNfc3RhdGUtCj4gPiA+dWFwaS5hZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFsIC0K
PiA+IEBAIC0xMzc4LDkgKzEzODMsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVf
bG9ja2VkKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwKQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfcm13KGRldl9wcml2LCBD
TEtHQVRFX0RJU19NSVNDLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiBDTEtHQVRFX0RJU19NSVND
X0RNQVNDX0dBVElOR19ESVMsIDApOwo+ID4gwqAKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAvKiBXYV8xNjAxMzgzNTQ2ODp0Z2xbYjArXSwgZGcxICovCj4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKElTX1RHTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNU
RVBfQjAsCj4gPiBTVEVQX0ZPUkVWRVIpIHx8Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIElTX0RHMShkZXZfcHJpdikpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLyoKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBXYV8xNjAx
MzgzNTQ2ODp0Z2xbYjArXSwgZGcxLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAqIFdhXzE0MDE1NjQ4MDA2OmFkbHBbYTArXSwgbXRsW2EwXSwgZGcyLCB0Z2xbYTArXQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGlmIChJU19NVExfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBT
VEVQX0IwKQo+ID4gfHwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
SVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDEyLCAxMykpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdFTjhf
Q0hJQ0tFTl9EQ1BSXzEsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+IHdhXzE2MDEzODM1NDY4X2Jp
dF9nZXQoaW50ZWxfZHApLCAwKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gPiBpbmRleCBjZWY5NDE4YmVlYzAuLmE3MGExYjZlNmExNSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IEBAIC01NzM3LDYgKzU3MzcsNyBAQAo+
ID4gwqAjZGVmaW5lwqAgUkVTRVRfUENIX0hBTkRTSEFLRV9FTkFCTEXCoMKgwqDCoFJFR19CSVQo
NCkKPiA+IMKgCj4gPiDCoCNkZWZpbmUgR0VOOF9DSElDS0VOX0RDUFJfMcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfTU1JTygweDQ2NDMwKQo+ID4gKyNkZWZpbmXCoMKg
IExBVEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURfUElQRV9EwqDCoMKgwqDCoFJFR19CSVQoMzEpCj4g
PiDCoCNkZWZpbmXCoMKgIFNLTF9TRUxFQ1RfQUxURVJOQVRFX0RDX0VYSVTCoMKgwqDCoMKgwqDC
oMKgwqBSRUdfQklUKDMwKQo+ID4gwqAjZGVmaW5lwqDCoCBMQVRFTkNZX1JFUE9SVElOR19SRU1P
VkVEX1BJUEVfQ8KgwqDCoMKgwqBSRUdfQklUKDI1KQo+ID4gwqAjZGVmaW5lwqDCoCBMQVRFTkNZ
X1JFUE9SVElOR19SRU1PVkVEX1BJUEVfQsKgwqDCoMKgwqBSRUdfQklUKDI0KQo+ID4gLS0gCj4g
PiAyLjM0LjEKPiA+IAo+IAoK
