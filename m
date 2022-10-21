Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 475AF606EA3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 06:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275B410E338;
	Fri, 21 Oct 2022 04:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063A510E584
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 04:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666325006; x=1697861006;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Vri+sqx0rgqh0BXyTzJcvHvxoUtgnfcAgUlRmQIW34I=;
 b=fSWEB2X7gaVVgyampGZ1Brp6KQD6js1YuQk8bD7jDLaJhmxnNx8Tabyd
 ANRp+J1WC3Qc8kZTgxjGByZ/tUa919Z/1aNa0VB6OlADkknVrRO6DD31a
 8iCL+aMoet8VPUHx9DCrjnK3OJDx3LfPMMVTjq9549TCOYImaNTdkG7P2
 2YvEjFmKoCfefwnsBOK7pQDLBSL6MnzE9TIypvy2p7Mxx1Zprpar/yy/F
 bgWyGmYfwe0STZiPJRgwgIc5lkuvRn70Rus5vHbj7+STkQJwYRCqx/uSX
 4EF8wWsuzKHJN9n0Mil0SAmsClQt1an9uZDJDzCjv9AUVGbvyaVGeGuGc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="368952103"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="368952103"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 21:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="693445149"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="693445149"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 20 Oct 2022 21:03:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 21:03:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 21:03:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 21:03:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 21:03:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/RQ1BIhSKRdwYybUt3xBhC/sO4j2C1HfZjKRGVqOKdvtZCUOrYFqbaUu5PGVVva2Wkef2udtMYJXRbRi2XLIqEv3JzQ+Epyz3/+LZYmH5X3bQsrg3b5YJvSb1s+wBr1/SXquAPSTDwysGErGiLBK8McZoq/c+HGrhYuVu8euTFwARhvDwlaFFzj2J6PNZ8XKbEtcqIjgYcZj3bHujk1dDJe7YjhRWY3+BrA60SLMZ6mxzNmmyffSxs61U75LE+glWNER1y7VfYyQdH1vm32cMTrJomGHAFyJyI1xntXuin25xLWs8u2q5cxP/7RdMziBpDZYBLwecWkjcRgQ/aUZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vri+sqx0rgqh0BXyTzJcvHvxoUtgnfcAgUlRmQIW34I=;
 b=fxaivyolOMqFKttTvmZpm5g3C13KCmjev0LM1fKGNuGGMe7wDtreR4BNeQnpOqwuAq33kCgBM5GTi/yI3yznsCyl2Ox5lrN8bHsRESHaeQFUc2vMyFXWkKPxl06WiU7CyzvSkrocSHM/QBynMrWLJj0z0UCjUxHXvdYqO4veOdk7D5ttSKmKrvXUMNJd0x8RR28yvZYqQAWdcJVSFFT4uyOFxeg2SZG/yf0XyMcTiKUCVGnUlOg6nwlMlY1GUSejQt542QSABXqrfl/yWSoGqhgtck18EqUxblLCeyyNoK/wFQaFkgSbLlUd0zzSrDAunG04cVC1MmzTJYw01uV67g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) by
 IA1PR11MB6074.namprd11.prod.outlook.com (2603:10b6:208:3d6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Fri, 21 Oct
 2022 04:03:20 +0000
Received: from DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::9e0f:8983:f02b:937c]) by DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::9e0f:8983:f02b:937c%7]) with mapi id 15.20.5723.034; Fri, 21 Oct 2022
 04:03:20 +0000
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/xelp: Add Wa_1806527549
Thread-Index: AQHY48YW7OcJmoKaVEuNBiiBYp9jcq4YPI+A
Date: Fri, 21 Oct 2022 04:03:20 +0000
Message-ID: <980ba10f8230463b85f08887864dacb57a09ca2b.camel@intel.com>
References: <20221019142145.111024-1-gustavo.sousa@intel.com>
In-Reply-To: <20221019142145.111024-1-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5573:EE_|IA1PR11MB6074:EE_
x-ms-office365-filtering-correlation-id: e28f3ee9-7396-4397-0ca1-08dab319313a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HcduDkJcDvYcWaLAV4qXcOXwGO+5rY2Kk7MAboHMPbkburLPhi1VUmQ5WybhqZC7o6G700Cy5wpId7WQEnJ+c1ZO0UUcX4xDJ8ZruQPC5L0dvl76qmd3rpibXgIFqz3r1qIAcMS3pSVeRQc7ptbOY9oABuLzSdmaeZYmgIBNwXhgH/Z4/HEzBiW7xYFlEZIF+gPPXehvxa+GJAv/ngNcxoYlBJK8amMBnzxfrFE64ffOe5uZ3bOh3aN4nBjPmrPcCbAuav2/MsJQ41ZMP2MsHijMrlrmk3e0Tn3FnGdQpO6V6GRTHUHziFBDsQXQ3VxqSnE+3r1aGuN6Ep0JWDJwBHoI1dj3Gsz1s8C5inBfHVpuXKnuJ1aHSZAjZ1tWUZrYJOmIxLvDEM7N3je7ro6wPlYbI8F8BBFTtS7i4EfN2wMy/fL72uaqPVft7wxNYtnFjg0C2FSshQ8PPwTJPEVhoVyt5lK3whh4Nk1kLL3XR7NhSM8eCFGAZKXZTzz38ZXee33zb9YPhumqw0ydLCTDD/Ib9+hyngLr2gNBY2jd+Eesit8WaLA3/NdNX72GWzntlKfdhapKPIbRL1pRRR02Pb443ZPyx/iDrqBDZhLZW57NfHSTinZflISN+im8nH3L32CIk+9LYrFrKKYMLizsIDOxDtdYUMhTsqXg11s823/49ya166e/MdsTT5lYTlmBs4iOhi6P0+i9slfgclGSr5/1QmjZ85Sq67jpBeFgSTrfvh3v2nnibhKPDSGD09EAt5sYaY0GLB2u0/vEF/OnJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5573.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199015)(41300700001)(4001150100001)(6506007)(36756003)(8936002)(5660300002)(316002)(83380400001)(186003)(26005)(2616005)(64756008)(2906002)(86362001)(76116006)(6512007)(110136005)(66946007)(66556008)(91956017)(8676002)(66446008)(66476007)(122000001)(82960400001)(38100700002)(478600001)(6486002)(38070700005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WWp5bVJQKzc4ZVdVenZ2Si9BNkxmUHVCc1duaTMyYU1Lc2k2dFJXS1ludmNW?=
 =?utf-8?B?dURhZGovcmZwdzl3VkJRNmcxVTVnYUpqaXg1SXozOFNPdGxNNFRXMlAvVmtV?=
 =?utf-8?B?YXRMVVp0WXFZM3daRjJJRlZXeFNTZzduSzlmSVpnOFN5L1dmdmJCODdNMDln?=
 =?utf-8?B?NDhsTElLalplWitKZFZGTkxacDVGNDNJZlhrOHZaS3BiOWV5K2dCeGwrZEVR?=
 =?utf-8?B?R0dhMEFXcFVHaU10eXVBQU40eXcwRkIwdElJNWRvT0h6eFlYVGFaanF3b2Q2?=
 =?utf-8?B?ZWFNbFRNalByQnlVRVhSTW9Ed1dSc0JNSHdHanRiWE85ZHZEWEdINXM2cTI4?=
 =?utf-8?B?NEdqV21mQTNjYWtYQlFEbkJpSW5yZEhiR2czOWVKU3VWeCs0U1UyZ1oxMmVZ?=
 =?utf-8?B?anIyZE9TYitpTDUwcENObjY4ODRoN2czNnFtNllMejE2TlFNVVU2SEhPOUdv?=
 =?utf-8?B?cy8yMU5WSFd6UDFaS0RRRmtmWDFLKzJDVGpaMFBrSi9BRzlYc2s0bzFxVE1j?=
 =?utf-8?B?aHN6YTV1RG45UlpCVWh6T3gvNkRnUUROK3o5TDNKQkc1emhaaHE5RFh0N0dt?=
 =?utf-8?B?WEJJb3Ztb1RXdVY1THNQa3llU2tpZEdOSUoraUNOc0VXVlk4bmVRQURqLzhW?=
 =?utf-8?B?dERld0dxVTZTQjZwNkhiQzRFZnU2TThpMXZGSkxybTcwL0V3V093TzJIclJx?=
 =?utf-8?B?ZWUzVUZhTDh3RkdCbEgxMksySm51VWtjVDk5NHFFY1NXUXJNM0w5MDJlYXUw?=
 =?utf-8?B?MFdwN09YNjQ2Q0RQdEkzVGdVOTFNeDNyR0huMTBHSnZ2RTBPdXNpV3VSU1F0?=
 =?utf-8?B?eVZiRUdLMWJKT0YzZE9KZUl2UEFtTlJvTk84aE90UUo2ODFBWjllZ2dMNVhJ?=
 =?utf-8?B?b3FqejJ6VXUwZ2FhWGxmNDk3c3NlMzJsYlphZFd0VGNud0N0czZDTVhBbWtw?=
 =?utf-8?B?RHk3UzJUSW9RMFMxVHEvTVZ5QzZ0bDBjREJFanFRZC9HWDJDcHhBaWloQkJm?=
 =?utf-8?B?N29RRnpQSC94UUNKdEpVVFBuT3luaTFEN2puV0ZkMjBGYk9JaEpPWWd3V0la?=
 =?utf-8?B?Sk5tQVB2MzdFZGp2QTBSNCsrdnlmZnNhU21TNWdLUHpuZWN4NXZqQjhwYk5X?=
 =?utf-8?B?SmxzQnErMlBQNllEamp6dkpoQTFsL2UxTExZZEdKTjAxNWtzQzRXektvRkVv?=
 =?utf-8?B?VTZwbFN3L29wQlpVM2U3d3lhUitQMndVVTZkQVRBR1c1c09saFRxbG85cDF4?=
 =?utf-8?B?NEcxMklPMkxlcm9VMHozOEdWM2t0aTk1amZKNDB5YTJSVWtWTUtBU2ZYTzRL?=
 =?utf-8?B?cHFDS3BGUVNsVCt1M2IwYnRieFdoQkRjL3Z6TFNHbUw1M0h4UkQxSUFrSHBJ?=
 =?utf-8?B?T2hFZlhlczlEK3BGUDQrd0pVdTZCcHovb3JiOERhSVEwSVVsWG5WdVhFdWdh?=
 =?utf-8?B?WmRVTU1KSmxhNG9zNThoT0YveDFxSzlsUy9qbkt0d252NStLdkdCUUNXbGlP?=
 =?utf-8?B?dWRIdDZXOUZLYnN3dTZpMEJETjFTOGFhZ0t5T0JmcEZsdE51eG1ISjZZSFhW?=
 =?utf-8?B?b0FFZUlYaTlxMlJtMUxyTEZkU2RCZktMSndGYk5USzJrWDFObWVhWWRjSW1r?=
 =?utf-8?B?a2xYWFRkR2lkZEt3M2JsQmtUMlZ3Qm1CN0tSaFN3UjE2cTZLbCtHd1lpalNw?=
 =?utf-8?B?RFU3ZWliSnF4VHNZck9laC9IejU5NEJaelNwL1k3aXYyRndZRjhwbVF1TTNz?=
 =?utf-8?B?UUVwMEdhOUpxbzFzeWc4M0o2d3E1RVRwZjdKQmlxRE9ueDdTQ1NSbnFTbVJ6?=
 =?utf-8?B?d204S3NlZGVrSDc1V01GRDBlYiszWjdaTDJIVVcwMi9vZDdUSkJCVU1DRDZZ?=
 =?utf-8?B?OUdjRnZmak1NRHdsRitZMTZJL3drSDluaHFxeEZJMFJYMU1PaFpFbjJodWN6?=
 =?utf-8?B?dmtnS3lsYldUY3JFUFlOY2ovUkxZYUxVNU0rb2tqQzFFWTBXVUNrQ3NIa2lj?=
 =?utf-8?B?WG00TkpXVXFxYytETW1iT0JmU1lTU3dIZ1pKSEU3WDZsV2sycDlZMVVoYWx6?=
 =?utf-8?B?bjYwb1FJL0NsekhVb1R2YkdMWldmdEZyV1VtZGxncW54N1ZBcXJvYjRHeEM1?=
 =?utf-8?B?VTRDZDJ6R25ydTZ6dk9XM3M3eDQ2c250N3RzV1BJdGIwdXp3YTBQcG54NWo3?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D10713F7F72B3F41B2EA44B0A585B1E9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5573.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e28f3ee9-7396-4397-0ca1-08dab319313a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 04:03:20.6694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H+RDdGd7gUZtUWIvv/FQkaASx4Bmln8wFZiYWuIBGF78gEvlUn7FUQs9lgpNjNBG5s46ImjSIu02sXWXbNofja4LrdHKErpM2zNGN0ch52k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6074
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelp: Add Wa_1806527549
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

T24gV2VkLCAyMDIyLTEwLTE5IGF0IDExOjIxIC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBXb3JrYXJvdW5kIHRvIGJlIGFwcGxpZWQgdG8gcGxhdGZvcm1zIHVzaW5nIFhFX0xQIGdyYXBo
aWNzLg0KPiANCj4gQlNwZWM6IDUyODkwDQo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gU291c2Eg
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3JlZ3MuaCAgICAgfCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCA3ICsrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfcmVncy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVn
cy5oDQo+IGluZGV4IDM2ZDk1Yjc5MDIyYy4uMjM4NDRiYTdlODI0IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZWdzLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVncy5oDQo+IEBAIC00NDMsNiArNDQzLDcgQEANCj4g
ICNkZWZpbmUgSElaX0NISUNLRU4JCQkJX01NSU8oMHg3MDE4KQ0KPiAgI2RlZmluZSAgIENIVl9I
Wl84WDhfTU9ERV9JTl8xWAkJCVJFR19CSVQoMTUpDQo+ICAjZGVmaW5lICAgREcxX0haX1JFQURf
U1VQUFJFU1NJT05fT1BUSU1JWkFUSU9OX0RJU0FCTEUJUkVHX0JJVA0KPiAoMTQpDQo+ICsjZGVm
aW5lICAgSFpfREVQVEhfVEVTVF9MRV9HRV9PUFRfRElTQUJMRQlSRUdfQklUKDEzKQ0KPiAgI2Rl
ZmluZSAgIEJEV19ISVpfUE9XRVJfQ09NUElMRVJfQ0xPQ0tfR0FUSU5HX0RJU0FCTEUJUkVHX0JJ
VA0KPiAoMykNCj4gIA0KPiAgI2RlZmluZSBHRU44X0wzQ05UTFJFRwkJCQlfTU1JTygweDcwMzQp
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBp
bmRleCA2M2UxZTZiZWNmMzQuLjVjZGVjNjk5YWUwNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IEBAIC02NjAsNiArNjYwLDggQEAgc3Rh
dGljIHZvaWQgZ2VuMTJfY3R4X2d0X3R1bmluZ19pbml0KHN0cnVjdA0KPiBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwNCj4gIHN0YXRpYyB2b2lkIGdlbjEyX2N0eF93b3JrYXJvdW5kc19pbml0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MNCj4gKmVuZ2luZSwNCj4gIAkJCQkgICAgICAgc3RydWN0IGk5
MTVfd2FfbGlzdCAqd2FsKQ0KPiAgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gZW5naW5lLT5pOTE1Ow0KPiArDQo+ICAJZ2VuMTJfY3R4X2d0X3R1bmluZ19pbml0KGVuZ2lu
ZSwgd2FsKTsNCj4gIA0KPiAgCS8qDQo+IEBAIC02OTMsNiArNjk1LDExIEBAIHN0YXRpYyB2b2lk
IGdlbjEyX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdA0KPiBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwNCj4gIAkgICAgICAgRkZfTU9ERTJfR1NfVElNRVJfTUFTSywNCj4gIAkgICAgICAgRkZf
TU9ERTJfR1NfVElNRVJfMjI0LA0KPiAgCSAgICAgICAwLCBmYWxzZSk7DQo+ICsNCj4gKwlpZiAo
IUlTX0RHMShpOTE1KSkNCg0KTXkgcmVhZGluZyBvZiB0aGUgc3BlYyBoZXJlIGlzIHRoYXQgd2Ug
c2hvdWxkIGJlIGFwcGx5aW5nIHRoaXMgdG8gREcxDQphcyB3ZWxsLiBXaHkgYXJlIHlvdSByZW1v
dmluZyBpdCB0aGVyZT8NCg0KQWxzbywgaXQgbG9va3MgbGlrZSB0aGlzIGlzIGNvbmRpdGlvbmFs
IG9uIGEgc3BlY2lmaWMgZGVwdGggYnVmZmVyLCBkbw0Kd2UgbmVlZCB0byB0YWtlIHRoYXQgaW50
byBhY2NvdW50IGhlcmU/DQoNClRoYW5rcywNClN0dWFydA0KDQo+ICsJCS8qIFdhXzE4MDY1Mjc1
NDkgKi8NCj4gKwkJd2FfbWFza2VkX2VuKHdhbCwgSElaX0NISUNLRU4sDQo+IEhaX0RFUFRIX1RF
U1RfTEVfR0VfT1BUX0RJU0FCTEUpOw0KPiArDQo+ICB9DQo+ICANCj4gIHN0YXRpYyB2b2lkIGRn
MV9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsDQo=
