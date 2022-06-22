Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB2D556F42
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 01:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA0A10E669;
	Wed, 22 Jun 2022 23:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCEC10E669
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 23:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655942344; x=1687478344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RGApdHrA2FgW/ApFoFFRAfNpdp6eVQYV+5gzdIhK+HU=;
 b=C/eCFTFaF3fyLNp6TXsPSIkIo2+HTVAtFE/dbMck4NtoMHh0fqtI3WXP
 h9MB6maMEa/rT6+OLi5s+HRX26Kty8iw4KS3Zsd6Z5azfGJamMuRdtKUk
 2SKP+6c28vItD1G+efxx60aVbZGuTqe/6haYacuUrV3T8orB/X6to2Sa0
 RYXigU5T3DEendB3YISCTOEeZlg9rmPhayAxYc5KVJj2ZApFIPSxXqSYm
 Qf/XO6+58znYZyqBpGyUC2wz6A6meqODOCmV9CX6y92sVYTy/vIFa9wWe
 86VE+Jm66S5QAB83YCFlfIinXRICgFDnfgTb4/7ULANjNDijfdFk1oaFm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="306036435"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="306036435"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 16:55:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="585942152"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Jun 2022 16:55:35 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 16:55:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 16:55:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 16:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKzd0pdBjj+mNC53n68ftm8PRdpF/iI13IJ8Z+k0mr4EQs/SBAmcrzq3WOLY7fSpaIDwUKhw20n/WQmmVEGBrs3lEDlcqQkhmr36aAlUwpR8G0sDorHjygWV55xTo5kVjo+QP47uwl5BbbyZ1htMAD3z/zTx2NWcZrAhMYIRe5bK1/92Xyp/eLmGKZGA+zxvQnnau/NwX9vabS60OAJJBYpAGLHvnS8OjcKAX4+/tQU3lKHBXxoMV1cbk6p/an3h7EchBGGJD3sUdID4/hXnTCUuWFa/n+u+hin8zHVOWTqHKQMxYXCd7NEw4o7OfRGOwXpWj6z3/ybNEFBsgctEDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RGApdHrA2FgW/ApFoFFRAfNpdp6eVQYV+5gzdIhK+HU=;
 b=mj2doCxQf9g3PFxBzKzwUMdhjtj5L/vPKzNpaEAufi89pgvpmQjCjGzoBQ2YnTVtd/9ru0SQqTXujkbTuJP8ImpnUv7KW2F0PV+M0H4QFuvu0j8aDfSypOotLBco1h1r/fr4nddOn05bGD+0Ox+cg98eVIkLninBHp8dx9lQaym4Jd+lki2XMLMy1Z+LOGTK1WtshHAbjdkHrTCRWbKWR5krf9m/I++9BccDrO0tTi0voS3x7xF7DvaXm+1SJZxacb+zD1RgDo3NSK/w6EoXs8Fe2mHmx7KB3KGklSY7ZDYeEkq5eSurEhtXaBW9z/7mzHmgdS8ctX9vzly5jsgayA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN8PR11MB3811.namprd11.prod.outlook.com (2603:10b6:408:8a::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.15; Wed, 22 Jun 2022 23:55:32 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%6]) with mapi id 15.20.5373.016; Wed, 22 Jun 2022
 23:55:32 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx v2 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
Thread-Index: AQHYgtZWP+nB+1ptmkaHxLwH2XF9/K1cEjOAgAAPboA=
Date: Wed, 22 Jun 2022 23:55:31 +0000
Message-ID: <5c0fff30a30578f6bbeff602548eb28e59f5ac78.camel@intel.com>
References: <20220618054345.2086300-1-alan.previn.teres.alexis@intel.com>
 <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
 <20220622230059.GC50816@orsosgc001.jf.intel.com>
In-Reply-To: <20220622230059.GC50816@orsosgc001.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fc090f3-d45e-42c1-87f1-08da54aab134
x-ms-traffictypediagnostic: BN8PR11MB3811:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN8PR11MB3811715510C99D3FE2FDA0808AB29@BN8PR11MB3811.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4+WdMKmMejSAB2c7hwT8JIaEnelpN4Y7GKpOzGH0YJ8+IQMlV9NeiM7/CsGWJVdMmsM7ZWXIBlWv1U3mM27rQlcDG6ZjR+EJuG84kWPqezktzbSD7P1etWq2J2xfC661ImCmrOVYla4oew2dI6vUE4OsMGQ9CdN7gpLL0ht/jbsUfgTXBO/ndP5LTQ0qvarqExvUcJv7lrtMhPWmtrvW+cLavQrsUIC2NuGxKLsM/c8k0lNm0wMeSoEAyKEw9eEBPm886/R/u7A4Fw8sUD1BE9egsFdPa69BI+kp040zOhFsWQECd1yOmMBWAPjQsoh0WZO+X4n72kJJPEy2sUh8Xkx1P7dbS2iTxsEKVMqwAtuUxRs40wSqr0Le7Sx+X76u8XIpTmxEBd6nsTzdHZUmydghof1r/oD8p/8mfxd88mepjvCcI6E44W8TbGbE1HidOET3risKlXNKOdlnrh4jo5hKcd8r3os+nW0uhxjBnN6WWE/NMIJWzzLV9TH3Mf2D0cBWJp0A+tcbn6bpHpRHDWYs6WTOPLDCBvLUzk38c5cvoWW2ecGIbSx836MW5zp5x1TjhZaLBQwkMDSFE95oSgTqkyh5ojqpICqHzmhfdHQv/EsoMDY67q5KygZ0cSYU0ztszejaxVMyoqinoSCdxWMWKIHec72iVTYW+qJdK2JtXnddjNH+lYp0i6teO4tGbbZTS0KQDzYAHlKuKIQru0g8ZMo4wOARhkAqxNBgjXO355n86U+Hx6ogUW7wQXNaXal8vBMN4XuFz0YaxMMIvw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(39860400002)(346002)(376002)(6486002)(38100700002)(6862004)(66946007)(76116006)(8936002)(4326008)(8676002)(64756008)(66476007)(5660300002)(478600001)(186003)(6506007)(83380400001)(2616005)(66556008)(6636002)(2906002)(66446008)(37006003)(316002)(36756003)(38070700005)(91956017)(71200400001)(86362001)(122000001)(82960400001)(6512007)(41300700001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekYyYUo1RDdobEI0TGNXQk92eEgwLzhzMEFDaTZKcmtpdGlGZ3ozbTk0N2FJ?=
 =?utf-8?B?L0tBSmRBYW1wUU9KNVVYQWpqcURORGFxL2JXT0Ixb3RYMjRaSWIvVWZ5Qloy?=
 =?utf-8?B?SDZnT3AzbFh0Nlp2R3NaTFZLMFhmR01ESjZBYWdzM3VZQndSZDcrRzQ1MENo?=
 =?utf-8?B?dlY3aFlCVXlHRGtlYmVqaFh0U1lwSVdMb0hhalhDZUJodms3ZVBIWkZReWl5?=
 =?utf-8?B?WVZNaVpWcEVza3ZGRDJjNFpEQkpJSXd2dmVnK2wrOGhzNnlrRVNPcVBSeGRM?=
 =?utf-8?B?NUdub2ZrV0MxQ0VSaU9VcDAxYUpVcUlNZ1IrUW9YWVBZNWJyeC9xSS93NEVu?=
 =?utf-8?B?NFNwbDdpRTdTSGpVYjg2SVhDeDhSTWx5SE9yeHpGMUkzL0lrL2t6a1J1Z1NN?=
 =?utf-8?B?UVFXbFdnQ0FSVVErR2E0OUgxQXlDZ1NZQVVuTzMvMkJaWnNUa1VyVldiZGtW?=
 =?utf-8?B?VGFoSkdDMWc0cWpnQUlleFJ5OTJVK0xjQkp6a1BucG5raUdRbHQ3bEpUZ0F0?=
 =?utf-8?B?ZnpmcDRQdHVvUDFUbit5MTBxYVI3dGdhbUJaa2QxUGE4eldXTzQ5RVpPY3hC?=
 =?utf-8?B?aXdIUitVcEpJWU92TnlMQlBvQ29Yb2M0Z0kvQXZUakM2bCtweEVsVEtkeFdl?=
 =?utf-8?B?dCtEVHBXNTBoT2d5T2pTYlJ0OHNETEh1Yy9LYjg5WlNnM2E4WVVjbHFDRUxl?=
 =?utf-8?B?U2V6akIyQWxmVTVQSnJQSC9oRjRQZG1IekorSVlBeXZpR1NwY0J2cUdJMDl6?=
 =?utf-8?B?c1N0SndzVXUvRDJsc1QwNWNabm5RWitKSDZ1Z2x0cTRndnJoUzdOZE5wbWs5?=
 =?utf-8?B?WDFVYk9HcmRMaWg5MExpN1pMb2RUbEE5WlBoYXUxdWdGZDY3clZ0cU10R2dZ?=
 =?utf-8?B?U3NxeGx3ZFV4dmF2MXVPTExaTDV1S2Z3UVRqbkdoZ2FMaWlIc0tGZkZtMmpl?=
 =?utf-8?B?azdlS1NoY3dreFF3SFdTOGIwT1Q1TGZuVU1oUFBHeEtYWXhFODZSVEVTbCt6?=
 =?utf-8?B?TU5Rb2h1K0dNa2doaEdnVzBDZkdkTGRudC83M2xRTVMzNisyakpNaC9ta0lh?=
 =?utf-8?B?YnRwNW43OElhVThuK1N5aWw5amFKUzlqeVhEK0E4UTFxcjR5MGF6SUhRcmNS?=
 =?utf-8?B?YmIvNituSFp1YytUeXVlRDBLZm15QU1TMkowQklEbXlRS0d3K1FxTXN2MUIy?=
 =?utf-8?B?aFUvSVVqUHhKN2ZMT3pldkhYTzRTdWdwV1phSHlRLytYM1NxOU9LTDVPc3dt?=
 =?utf-8?B?S3VSMFl0UXkwYmZLZW00eC9tZzVNdmdiQVJ3QU1wdGF1TnIvL01vSVNLd29G?=
 =?utf-8?B?VnlVRkNkZGJNZFlaTXI4MDk1OUROYmF1VmQxZVJkVFBoY1JFUDcwSVFvaUNG?=
 =?utf-8?B?RVZxL045eVV6Zk1FVG9jdWVZYzVSbzI5MGQySkZSd01XbWRyNCtnRktLSXdY?=
 =?utf-8?B?R3ZwVWUxL3NBQmpYckZCQk9abjBleHBNRmU3OVNDdXFIQ0ZPemhvZXJoVmZW?=
 =?utf-8?B?RUpuUlc2T3VUN1ZUMjkxeGF3YW1KTjVSbHZDTlFpNlh3OEVJbnZyWUNhbXE5?=
 =?utf-8?B?UDVtUVJ2d3ROUVBBRkZOY25ZbDNYcGxDbTA2cFNUcmN0WHZjaFFOV3M3WTJ2?=
 =?utf-8?B?VG9KblVlTERPSEk1L0lKQW5PYm4vcldYbVBwYXVDdUNVd3Q0SDNCd2xzNHdX?=
 =?utf-8?B?em9PTFVmZlY1Q1VodnFocmVLMHNFUzhxOUFtY041Zk9nVFZTVm1IWG40U0Nv?=
 =?utf-8?B?VlA5VFJKOEtnZE5IVVgrbXE1YXFiNnVMK0JuT05wUkt1Tk1ZcmxuTEYxaU9k?=
 =?utf-8?B?djhLNHUrdFNSYmgvVmhtYklza0tucTZGZlhnV1VLdkMzblJUVTBTOUtTZnBt?=
 =?utf-8?B?SzFKb1NTSGU5MEtMRE1QaHJQWjhHR1IwWVQ3Vk9uajVzcFpyZlpyRUJVOWFx?=
 =?utf-8?B?dTBGTWNkeTBEbTRHbEZZUkxJNGFXVGcvd0pFM3dqMnA4a1ZtRVN2eDFDMTYw?=
 =?utf-8?B?THFkVThBU1BvVmJQVDk0dXJET09BOUFJaTRBdDFubWJYZjlJUVRVY3B6NS9v?=
 =?utf-8?B?bTFtK3piTnB2RGt4LzAyWk5CSXgxTU9xUHBSeEJrTkp6dEZ1RTNKUUZ3Z28w?=
 =?utf-8?B?UldvM0FuN3huOFhvZVBvWWdMMm9EVDVHanFzVHJMYkxiNU5tcFczeE9wampK?=
 =?utf-8?B?eG95UVkycVZ3ZTJoRFZJRDVXZzUzbkhHK3JwZDFXSk9hRWVrT2tycXhrclZC?=
 =?utf-8?B?cjBQRGtkVzFYa2h4anNIbWtHY2ExVEJSeUU2aThJODBCT1N3d3JHbzhCZHl1?=
 =?utf-8?B?dlFZRy9zQnRDZkhZUzA5Vzk5NWtiQmVJYmIyUThrb2pSK1BRQWJYUkJkRGg0?=
 =?utf-8?Q?fhgNGoI9ljqrazrAJt1alv/P5mBHlmRY7qrC/SggKpZzw?=
x-ms-exchange-antispam-messagedata-1: 48KjqIw6r46HjQ==
Content-Type: text/plain; charset="utf-8"
Content-ID: <6137973AC9F84F48AB5FBE3A69774F5A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fc090f3-d45e-42c1-87f1-08da54aab134
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 23:55:31.9905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eSNswWFHnrd6aoSmC/ZB/RnFcHcN26lItG4OGBlZ0s6cnCkVIstR+UCgPfm7x37+qrN+zsW0LOE1dJAy98hrUEqK8pizJuMEue11UqxpVTEz8t9n4ze+k9jPbgmtHIVc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx v2 1/1] drm/i915/guc: Don't update
 engine busyness stats too frequently
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIFVtZXNoLiBBcyBwZXIgb2ZmbGluZSAtIGkgd2lsbCBhZGRyZXNzIFR2cnRrbydzIGNv
bW1lbnRzIHRvby4NCi4uLmFsYW4NCg0KT24gV2VkLCAyMDIyLTA2LTIyIGF0IDE2OjAwIC0wNzAw
LCBOZXJsaWdlIFJhbWFwcGEsIFVtZXNoIHdyb3RlOg0KPiBPbiBGcmksIEp1biAxNywgMjAyMiBh
dCAxMDo0Mzo0NVBNIC0wNzAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiBVc2luZyBpZ3QncyBn
ZW0tY3JlYXRlIGFuZCB3aXRoIGFkZGl0aW9uYWwgcGF0Y2hlcyB0byB0cmFjayBvYmplY3QNCj4g
PiBjcmVhdGlvbiB0aW1lLCBpdCB3YXMgbWVhc3VyZWQgdGhhdCBndWNfdXBkYXRlX2VuZ2luZV9n
dF9jbGtzIHdhcw0KPiA+IGdldHRpbmcgY2FsbGVkIG92ZXIgMTg4IHRob3VzYW5kIHRpbWVzIGlu
IHRoZSBzcGFuIG9mIDE1IHNlY29uZHMNCj4gPiAocnVubmluZyB0aGUgdGVzdCB0aHJlZSB0aW1l
cykuDQo+ID4gDQo+ID4gR2V0IGEgamlmZmllcyBzYW1wbGUgb24gZXZlcnkgdHJpZ2dlciBhbmQg
ZW5zdXJlIHdlIHNraXAgc2FtcGxpbmcNCj4gPiBpZiB3ZSBhcmUgYmVpbmcgY2FsbGVkIHRvbyBz
b29uLiBVc2UgaGFsZiBvZiB0aGUgcGluZ19kZWxheSBhcyBhDQo+ID4gc2FmZSB0aHJlc2hvbGQu
DQo+ID4gDQo+ID4gTk9URTogd2l0aCB0aGlzIGNoYW5nZSwgdGhlIG51bWJlciBvZiBjYWxscyB3
ZW50IGRvd24gdG8ganVzdCAxNA0KPiA+IG92ZXIgdGhlIHNhbWUgc3BhbiBvZiB0aW1lIChtYXRj
aGluZyB0aGUgb3JpZ2luYWwgaW50ZW50IG9mIHJ1bm5pbmcNCj4gPiBhYm91dCBvbmNlIGV2ZXJ5
IDI0IHNlY29uZHMsIGF0IDE5LjJNaHogR1QgZnJlcSwgcGVyIGVuZ2luZSkuDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
LmggICAgICAgICAgICB8ICA4ICsrKysrKysrDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDEyICsrKysrKysrKysrKw0KPiA+IDIgZmlsZXMg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5oDQo+ID4gaW5kZXggOTY2ZTY5YThiMWMxLi4yNmYzZTQ0MDNkZTcgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiA+IEBAIC0y
MzAsNiArMjMwLDE0IEBAIHN0cnVjdCBpbnRlbF9ndWMgew0KPiA+IAkJICogQHNoaWZ0OiBSaWdo
dCBzaGlmdCB2YWx1ZSBmb3IgdGhlIGdwbSB0aW1lc3RhbXANCj4gPiAJCSAqLw0KPiA+IAkJdTMy
IHNoaWZ0Ow0KPiA+ICsNCj4gPiArCQkvKioNCj4gPiArCQkgKiBAbGFzdF9qaWZmaWVzOiBqaWZm
aWVzIGF0IGxhc3QgYWN0dWFsIHN0YXRzIGNvbGxlY3Rpb24gdGltZQ0KPiA+ICsJCSAqIFdlIHVz
ZSB0aGlzIHRpbWVzdGFtcCB0byBlbnN1cmUgd2UgZG9uJ3Qgb3ZlcnNhbXBsZSB0aGUNCj4gPiAr
CQkgKiBzdGF0cyBiZWNhdXNlIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudCBldmVudHMgY2FuIHRy
aWdnZXINCj4gPiArCQkgKiBzdGF0cyBjb2xsZWN0aW9uIGF0IG11Y2ggaGlnaGVyIHJhdGVzIHRo
YW4gcmVxdWlyZWQuDQo+ID4gKwkJICovDQo+ID4gKwkJdTY0IGxhc3Rfc3RhdF9qaWZmczsNCj4g
PiAJfSB0aW1lc3RhbXA7DQo+ID4gDQo+ID4gI2lmZGVmIENPTkZJR19EUk1fSTkxNV9TRUxGVEVT
VA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
c3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1p
c3Npb24uYw0KPiA+IGluZGV4IGU2MmVhMzU1MTNlYS4uMDVjOTQ1ZjE0ZWY1IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lv
bi5jDQo+ID4gQEAgLTEzMTQsNiArMTMxNCw4IEBAIHN0YXRpYyB2b2lkIF9fdXBkYXRlX2d1Y19i
dXN5bmVzc19zdGF0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpDQo+ID4gCXVuc2lnbmVkIGxvbmcg
ZmxhZ3M7DQo+ID4gCWt0aW1lX3QgdW51c2VkOw0KPiA+IA0KPiA+ICsJZ3VjLT50aW1lc3RhbXAu
bGFzdF9zdGF0X2ppZmZzID0gZ2V0X2ppZmZpZXNfNjQoKTsNCj4gPiArDQo+ID4gCXNwaW5fbG9j
a19pcnFzYXZlKCZndWMtPnRpbWVzdGFtcC5sb2NrLCBmbGFncyk7DQo+ID4gDQo+ID4gCWd1Y191
cGRhdGVfcG1fdGltZXN0YW1wKGd1YywgJnVudXNlZCk7DQo+ID4gQEAgLTEzODYsNiArMTM4OCwx
NiBAQCB2b2lkIGludGVsX2d1Y19idXN5bmVzc19wYXJrKHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+
ID4gCQlyZXR1cm47DQo+ID4gDQo+ID4gCWNhbmNlbF9kZWxheWVkX3dvcmsoJmd1Yy0+dGltZXN0
YW1wLndvcmspOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBCZWZvcmUgcGFya2luZywgd2Ug
c2hvdWxkIHNhbXBsZSBlbmdpbmUgYnVzeW5lc3Mgc3RhdHMgaWYgd2UgbmVlZCB0by4NCj4gPiAr
CSAqIFdlIGNhbiBza2lwIGl0IGlmIHdlIGFyZSBsZXNzIHRoYW4gaGFsZiBhIHBpbmcgZnJvbSB0
aGUgbGFzdCB0aW1lIHdlDQo+ID4gKwkgKiBzYW1wbGVkIHRoZSBidXNpbmVzcyBzdGF0cy4NCj4g
PiArCSAqLw0KPiA+ICsJaWYgKGd1Yy0+dGltZXN0YW1wLmxhc3Rfc3RhdF9qaWZmcyAmJiAoZ2V0
X2ppZmZpZXNfNjQoKSAtIGd1Yy0+dGltZXN0YW1wLmxhc3Rfc3RhdF9qaWZmcyAgPA0KPiA+ICsJ
ICAgKGd1Yy0+dGltZXN0YW1wLnBpbmdfZGVsYXkgPj4gMSkpKQ0KPiA+ICsJCXJldHVybjsNCj4g
PiArDQo+IA0KPiBJIHdvdWxkIGp1c3Qgc2FtcGxlIHRoZSBqaWZmaWVzIGhlcmUgaW5zdGVhZCBv
ZiBpbnNpZGUgDQo+IF9fdXBkYXRlX2d1Y19idXN5bmVzc19zdGF0cygpLCBzbyBhbGwgdGhlIGxv
Z2ljIGlzIHdpdGhpbiB0aGlzIGZ1bmN0aW9uIA0KPiBhbmQgZWFzeSB0byByZWFkLg0KPiANCj4g
RWl0aGVyIHdheXMsIHRoaXMgc2hvdWxkIHdvcmsgdG9vLCBzbyB0aGlzIGlzDQo+IA0KPiBSZXZp
ZXdlZC1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50
ZWwuY29tPg0KPiANCj4gUmVnYXJkcywNCj4gVW1lc2gNCj4gDQo+ID4gCV9fdXBkYXRlX2d1Y19i
dXN5bmVzc19zdGF0cyhndWMpOw0KPiA+IH0NCj4gPiANCj4gPiAtLSANCj4gPiAyLjI1LjENCj4g
PiANCg0K
