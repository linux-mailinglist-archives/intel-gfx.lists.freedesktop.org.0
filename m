Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9E07EED16
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 09:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A4210E729;
	Fri, 17 Nov 2023 08:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C8610E727;
 Fri, 17 Nov 2023 08:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700208327; x=1731744327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+ZF8RSDsjfgbJAQkWnHi9Gt++hFM0rOBC71x23d/SCs=;
 b=f4cuoj+6G/CM0cUa/JZ2sJQGEnVtPk8Lis39J002O7Jw+DRCsBCePaJf
 WpI2PVzzIayDehvObgG7v8G9TDC2vitwRQZLIny6xwlLUTNA1J5gQI/gy
 IEh5mdWCEAwkqlkb4Oo604KKWqWE1yB61GRMn7i3htPQA+/OkYsyImgTz
 T23PUC2lrwtMDlbHh15+v8Uhgk+I7mvmNlbHum1yrwfaPaK2guHzINj69
 dRTjl6ieJ1A02UmgKYAq/j6N65COlw3ucvbErLRy/hZrt6tS/NMjCPSku
 rRQ3e5FFoMd0CAfOVEABh7WZudHMhdiLmvx7yKehX3cojbM07STbM/wKH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="395184458"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="395184458"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 00:05:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="831541515"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="831541515"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 00:05:26 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 00:05:25 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 00:05:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 00:05:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 00:05:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CpcJeUiw78hBImppbvMddoFCDHFaeZffTfeG6TnfyHalAWx0Go1GtrR5VwatD4ISEda14jg/1j6FEPny0LwKO9n5eetc1VfIvTORW5GrIJ4IziUDp+mn44fqiYiJh+QbSbxOrdBvsfSfRBNrAgfJANP6UCKKNclyzlbERj4oGQUEOP4MklvNBSq3eQOax1mQf8wAQITi1HtdGfwzMJqVALMj1tPDYDK0wutA0fqeQOQzENbBCWW7AXHKSAka1ENvTruQgZ3Pgl5fhNEwv95t8K1W0fZ3i7glQbAjXpEyXomOqc6IMb3r1qHjzqvwwT0+KeRwgYgDKp7rt71+U2Qiqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ZF8RSDsjfgbJAQkWnHi9Gt++hFM0rOBC71x23d/SCs=;
 b=hSBcRLZopzBg8AcJZ6N988bN1lA/n9sw46M3DlH/w7iapl82INW0HX8Zs2kUB5hj2XdJ8kK68o0/zZUUukDWkNIetsHKLsMzaSfVgw//GZcTuRzJof5VYqMiR6H6zwtqVLSc0NKG3pzD9ANV35uVqp4wPiXiEKctDKnOcnqBUsL14YHr4LWTjCJiKNbqtxK+yDtTLdRuSVv+s3SdMT9a49rs23bfhK77G3sB9mURPCXeoOeY6rxm4MBzS2KjR2LdWU5oubkmNcqsg1DNkEP27QfvplJOfrDhgpLzyNpmWL3xTQC5Z+FjGEwGMzxld3+ahXe+iWJJtfnU4Y/uLCSoWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by MN2PR11MB4743.namprd11.prod.outlook.com (2603:10b6:208:260::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 08:05:22 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7002.021; Fri, 17 Nov 2023
 08:05:22 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
Thread-Index: AQHaGSaArQJ8pF5ISkyZkn0q4woPlrB+J0+A
Date: Fri, 17 Nov 2023 08:05:21 +0000
Message-ID: <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
In-Reply-To: <ZVcUH7G40NQ4Q-R7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|MN2PR11MB4743:EE_
x-ms-office365-filtering-correlation-id: e8bf2cee-694a-4353-b224-08dbe743f247
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tm6+9dv6k4QyGjhSQeqlj7Yi0bCjm2iSmoS3ZnLVf+qm4TKpYM+HrM/Nxb33oKZikhTT3d5MkrAbNPJqJtWvA0sl6N7WS+v5wP/Kvj/uLLuz8xDAJOmzf6QKEzjlEqqKNlK8hLnqCn6aAUx3st5zP6P89XbfKPnBNMn4opgNQxWkarG83b45SeiIs57d1qyDmt82vX2M2gDxeh6bGiy5FlIlCnvCF7cFzGtQ4nbivv7vUhpUSprGWiiAGsMkns8FavvMNzz0nwbE/DDyJryjWGqVutsxKjtyIUdnEB97leoWRb+nG+CjSzbHnTm4RiFYl6BDbM5D9sPNKR74W6UwYRwPv4ps4BInFywRVGUNBlh/2fH/t6QYh65ac8yoJy2XpQMLVIkcvVP8Pagk+MxWhAivoR5g5gPNc1S2NMZDlD3pYrMdCjk3qG4s8gql+ilcXMeuJQaKTOtuITac3mL9peq+YiCa7LQZhGaSCca3GtgWa/7cOwdLyXAeoRveRfJ2Nws1RnVDnt8kmG8MSpqrMqXRFR6h6mR0J/CCBfF9H8dcTiaxNlhBop0N0kidLbmtBLYldbJ2VkEQYxZIsqrq6zAqmCNEzV8y1Z8TdFS6Xhst1K7N407j9J9nd94167KF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(39860400002)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(38070700009)(71200400001)(6506007)(478600001)(6512007)(6486002)(38100700002)(8936002)(5660300002)(4326008)(8676002)(4001150100001)(2906002)(83380400001)(76116006)(66574015)(2616005)(26005)(86362001)(66556008)(36756003)(41300700001)(66476007)(66946007)(91956017)(54906003)(66446008)(64756008)(6916009)(316002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmZsZDc2ajNldTBwb0Z3OW5MNU0rVXpTd3VTWFh6S2ladjVQV1kzQlE3Q2k5?=
 =?utf-8?B?b0ROcER2Q21rcGVxak9oUDV0bTZMUTJjeG1lWTQ2aDU1YWgvZVlGQkJWRm9Z?=
 =?utf-8?B?R2MzNXQ4NGVNNk9Mdk9sZUV1Y1dhc2N2OE55L1cxSjhjNk5LMXpXTnVZdkor?=
 =?utf-8?B?YjN5eXZWV3E2QmdlZmRDeXpiZ0tvUUVldkpYTEU1Kzg4eGVpTFcrbnpTSmFY?=
 =?utf-8?B?RW1vdCs4VjgvbWdJbEh6VGw1ejBXYjZCT3dmc2ZjVWJ5NHB2ZElHQU96dFN6?=
 =?utf-8?B?a3lzeWdVaU45cGJMd0hrak9JYzBVTnltdXZUVnBqcXVCNmIvK2xWT25IT242?=
 =?utf-8?B?OW1BYWR2Qzh3Rk84VTk2dkVPR21NVEFucHRkdmt0TVZielJCcmRibmtiQVRw?=
 =?utf-8?B?SUZUN2FZVTd1OFp3aEVjc2lwOEJxaGxYRHUzUzFKNzhYemdNb0psaVM5Q3RV?=
 =?utf-8?B?M3JEdS8yRVB6SXM5SmNYa3NDMU1qVTRyanNvSG85WUE5T0xUcG5VMnNHcm16?=
 =?utf-8?B?VnlrdjhyQVdTeldteDBhelB4R1pBNGRsdWx3cGExdE9CNXp2VEVnb3hKaGtW?=
 =?utf-8?B?bG1JNTNKTWZwb1RNcG5hNmtQSEc0MmF1OUN0UGZJbzFqWEFGQkc2RUE2OU5F?=
 =?utf-8?B?a3EzdTg0UEdnNW82QTlqZklOVFNPQzlacm5kMUVFVWNBa2lVb2xoNFZTNS9N?=
 =?utf-8?B?VjRRbWJlLzc4aUJnODdFa2ttNVpSTnZQdEp3ZEJsNkYzRE5WNjZ0dTdVNUVh?=
 =?utf-8?B?NUQ3MWtOQTByY2dhWUE3bWlIWDNsWWdsUS85UTkveU5rWkVaNzNzbUh3SHZH?=
 =?utf-8?B?WktReHBpdDYwYkJiSGYyMm5aVmZBUzF1Z2huVmxOSnZnclBaSkdVS01vbEhx?=
 =?utf-8?B?aGNqcUpSZXpiLy9FYXVJV1R1cjNpMlorc2UvWlgwWGpMSkV4TlZERk1HRFVI?=
 =?utf-8?B?L3FuNW00aThJUko3cUpOU1dMVnpGaVl6NHZRSXh4aFpmNDhETnFkcjUwU3pQ?=
 =?utf-8?B?QjlaeGZuSmY1N0M1RXJCODdZd3JRRE55dG00akVzTkQvT2E5RG5KZDFKWjFw?=
 =?utf-8?B?eU9HeEJKRmk3OE9NUGh5eDFEaEdRYmlsYjlNQ3kvQm1PTzFUYmpJR2xLc2x5?=
 =?utf-8?B?R054Z201QlduK2o1M3NuOEhNNnpBdkltRm03MkwybGRTUUVQbUZGdTJVUXpi?=
 =?utf-8?B?Q3BWUTVwaHB3bEJxeGRVWHltTjVJMzdaSkJiTEVXV01Cd3l5UGtYOTRteHpM?=
 =?utf-8?B?aEROZklaMS84MjBKd1VlSFRyNThmejg2TWhQLzliS212L2VCdmhxRW5tWDFy?=
 =?utf-8?B?bkEwdC9HSjkxb3hyeHdobC9IdFVkL24vWG9Bb1dudlRNRURCYVAzWGJ6NEJq?=
 =?utf-8?B?THArdG5aVnc3VGk5NThoTHdkWUduamdyU21IMFY5ZGR1ZUc2VXdmVGNoN2dC?=
 =?utf-8?B?SDFFdVIwdXVZcXlhVUpEMnpyQ2dkUi96WGJocVgxeU9iVmp6WFZpdEp2UXNq?=
 =?utf-8?B?SHJob1FIZFk0aWlHTDlRazdEQnhoUm4wcDZBM0lyREZPTU1UaFBjM3psL0Ri?=
 =?utf-8?B?am5GUUY3NVRyNGppTjRsTWxkR1prOWJSUjQzOU9LWEUrQVBhQ1BtNUJ1ajVX?=
 =?utf-8?B?bVFPTEhkL2FQeE95azdyVTNCZVlCalVkWTNqdUdtQkt2c0pkUDBiMVpHRXg2?=
 =?utf-8?B?dVllSkZXclpva25hR2k1V2JFb0tLTS9tRFV4UklyQnEzb2taQ2JmN1E5L3Fz?=
 =?utf-8?B?OEdpbDM4WXNMcGVlTS90R0Y4UkJ3aTkzUGhwaERYSk92TzZ0bXJiWGhRd3Zz?=
 =?utf-8?B?cTZDYmNsU3JwcFhuamduZ0pZSVRDME5Ba25MM1ZlVm83Qlg0QzczUDdIU3Fu?=
 =?utf-8?B?bWplcVFzUVZPRWUvbmlQVHRWeEpWbWVpZGE1cGE1YTVjeVQ3c0tnU1NvSWVz?=
 =?utf-8?B?MVFTeFJLT0tZS00wYTA2RHRWYzAwdUwrbWNGSHYrRFk4MXprUkU0N296cTBX?=
 =?utf-8?B?am9VSmZiVVVUU3M2dTk5WDhyQktldWFXb2pkWU1UbjZLZ29ZRkZXSEl0TlRD?=
 =?utf-8?B?Zzd6OFVYMEtLNU1YZytVSFNFdFFRbmZxUnhPMVg3SWdrQUNXdjhIYytvSDNp?=
 =?utf-8?B?WnRsRk1wMk5GcHN4MHRNaDRudVU2VWQwdDdkTzNlY1FSR2tHVyszMy9JTThw?=
 =?utf-8?B?NHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <764933607CD93649BCC3EB21B54C2AFC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8bf2cee-694a-4353-b224-08dbe743f247
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 08:05:21.6173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2DsfSXxWRnBiFVAixFOYTSRZKaeYeKglBz4BNug3ZqN0E3F5XIvD8k49pGESJ2M4QPBjIUhYgLg5ETNGwHI5wCNy8J1BODTglDajhvTlwh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4743
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLCBWaWxsZSENCg0KT24gRnJpLCAyMDIzLTExLTE3IGF0
IDA5OjE5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+IE9uIFRodSwgTm92IDE2LCAy
MDIzIGF0IDAxOjI3OjAwUE0gKzAyMDAsIEx1Y2EgQ29lbGhvIHdyb3RlOg0KPiA+IFNpbmNlIHdl
J3JlIGFic3RyYWN0aW5nIHRoZSBkaXNwbGF5IGNvZGUgZnJvbSB0aGUgdW5kZXJseWluZyBkcml2
ZXINCj4gPiAoaS5lLiBpOTE1IHZzIHhlKSwgd2UgY2FuJ3QgdXNlIHRoZSB1bmNvcmUncyBzcGlu
bG9jayB0byBwcm90ZWN0DQo+ID4gY3JpdGljYWwgc2VjdGlvbnMgb2Ygb3VyIGNvZGUuDQo+ID4g
DQo+ID4gQWZ0ZXIgZnVydGhlciBpbnNwZWN0aW9uLCBpdCBzZWVtcyB0aGF0IHRoZSBzcGlubG9j
ayBpcyBub3QgbmVlZGVkIGF0DQo+ID4gYWxsIGFuZCB0aGlzIGNhbiBiZSBoYW5kbGVkIGJ5IGRp
c2FibGluZyBwcmVlbXB0aW9uIGFuZCBpbnRlcnJ1cHRzDQo+ID4gaW5zdGVhZC4NCj4gDQo+IHVu
Y29yZS5sb2NrIGhhcyBtdWx0aXBsZSBwdXJwb3NlczoNCj4gMS4gc2VyaWFsaXplIGFsbCByZWdp
c3RlciBhY2Nlc3NlcyB0byB0aGUgc2FtZSBjYWNoZWxpbmUgYXMgb24NCj4gICAgY2VydGFpbiBw
bGF0Zm9ybXMgdGhhdCBjYW4gaGFuZyB0aGUgbWFjaGluZQ0KDQpPa2F5LCBkbyB5b3UgcmVtZW1i
ZXIgd2hpY2ggcGxhdGZvcm1zPyBJIGNvdWxkbid0IGZpbmQgYW55IHJlZmVyZW5jZSB0bw0KdGhp
cyByZWFzb24uICBBbHNvLCB0aGUgb25seSBwbGFjZSB3aGVyZSB3aGVyZSB3ZSB0YWtlIHRoZSB1
bmNvcmUubG9jaw0KaXMgaW4gdGhpcyB2YmxhbmsgY29kZSBJIGNoYW5nZWQsIHdoZXJlIHRoZSBv
bmx5IGV4cGxhbmF0aW9uIEkgZm91bmQNCndhcyBhYm91dCB0aW1pbmcsIHNwZWNpZmljYWxseSB3
aGVuIHVzaW5nIFJULWtlcm5lbHMgYW5kIGluIHZlcnkgb2xkDQphbmQgc2xvdyBwbGF0Zm9ybXMu
Li4gKHRoaXMgd2FzIGFkZGVkIDEwIHllYXJzIGFnbykuDQoNCg0KPiAyLiBwcm90ZWN0IHRoZSBm
b3JjZXdha2UvZXRjLiBzdGF0ZQ0KPiANCj4gMSBpcyByZWxldmFudCBoZXJlLCAyIGlzIG5vdC4N
Cg0KT2theSwgZ29vZCB0aGF0IHdlIGhhdmUgb25seSBvbmUga25vd24gcHJvYmxlbS4gOikNCg0K
LS0NCkNoZWVycywNCkx1Y2EuDQo=
