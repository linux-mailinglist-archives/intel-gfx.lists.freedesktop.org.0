Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 021137EADD1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 11:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7CB10E1EF;
	Tue, 14 Nov 2023 10:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2D210E1EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 10:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699957066; x=1731493066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zICf194M6YYF07Rke5yZ04oBmZnGmQXUnVonVJDdj1M=;
 b=PrUQ1+yHjjr0ASQCwVUBX7fNxD+8AXy3RuQ2msMNylXUI3DyNv1ifacw
 sNa6gFbPmRAVNUiEzN3kCwart60vfQpUqfsiXJCEp9xRIVPf2Pp2UCaHG
 IIIuCk2DDuAizDC/A2jaWFicrvswTdIQSFZ2G/sSdN64LPzW8bn81K/OO
 EO6dZEqUg3fmeIhkhDX/4HNJW+EX1ujjBlWlj685H+xnOE+vDcNWY9zEI
 vohxGSMczhEZUzoxt8JzZMZ9hHJMy/grUsjscSKVZJ0JIVV0v6CoDfxjk
 hafpmloOWglzWWxbnnZgcVypqKA4ReIrxFBUDYjTeqQHPbWdWTH9yqM1W g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="370824276"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="370824276"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="793735230"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="793735230"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 02:17:45 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 02:17:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 02:17:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 02:17:45 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 02:17:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h7e+sr5W8nqg5eKYwqR3u7QBKCXQUfgwnn+zoe60ETX5Rj4PwOihbSplsmymWOTO8ZaJiV50+1pwKY76P41ZUQtp+3hWx5EwCvD7Ffm7ZIBIHHupYyYPlK8iWJIp7Mz3ziKkA+BxMdibHZVveKNgeC2YCGTmDUF4N0fLAcxrrlgt6HeTL8diPh33+iUII6BD+q5jBMT1ZY+cwAACHZ1w34Mu3LgtaCZsub/MmTURZ9vJ//1uEWSK4EQwIKLmfZo5Z4x43NSxTOWjPJny0tCzMzI5vAuY0kyCtYs2IHq9PqAanC9v4hvcf9cwrAXKLp3MxMelxDDM9Xee3ZJ0TOP2SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zICf194M6YYF07Rke5yZ04oBmZnGmQXUnVonVJDdj1M=;
 b=Jx1KSE9Lw+RyFjBgrWPb8gTXDSO+Rq9sDf7ePxPMOG6gWq4hXLk3Y8XaBsPEFcqh7kHsdlDSL1CLm8hD9eVJ1YA6kSiFIz+xnfPyeBkIXF7QTBTVai6WvvfonMLtCqy1k/Y5NBmugrjvzGx+Zhds3oheWRY8iyhHKapmKIL3rPzw6HolhG00AKbxt1u59LguFx/T0X/q6V9lMUjrC8KDmL/1xUr/9uaWHfLpr/9Sm5xI+/xYQa4OXopnjSwcTHrNaMZUcxb1NcgO83zSQA4lXZOBYQubzf7+hHFl836Jy7e9EW2esthuf8SNYy/cPIwha+uSABKpCF9fvT1BlAupdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6551.namprd11.prod.outlook.com (2603:10b6:8:b9::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.17; Tue, 14 Nov 2023 10:17:43 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 10:17:43 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Use int for entry setup frames
Thread-Index: AQHaFhXtwYMb8AJSX0SBfER+BBZP9bB5m2uA
Date: Tue, 14 Nov 2023 10:17:41 +0000
Message-ID: <253f551803a08e5bb60a48bb99091ebd1a95a396.camel@intel.com>
References: <20231113093737.358137-1-mika.kahola@intel.com>
In-Reply-To: <20231113093737.358137-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6551:EE_
x-ms-office365-filtering-correlation-id: 4d22bbc2-0325-43c7-1fb1-08dbe4faefd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eU3+V5TFLiBOKBMD8mA+ck6NkNzrnFieskc3dv6XJRAlZSqQt2bsU60IT+FpT4T223NrpPX3xvTaSN1EmxmJZO3xlNRtGraSNWlzVY/GXXDEWlnNT50MuoLoidf22cgiTBd8eZrd1ZC/8PSNZZxPOlp36altnNs7GZRockrrGHPKeIsuaiuBx60At8xfcBMvnnFqIUAArseLTCtsfdd7trW57Rf2rifPxhTssoEkRKJc985BPvubqzDKMlv3n4DDMLWcfzBBJ2p3w0HE8kke1VdjpCDej4PTjk8Js1DQb/lvVli5zUEhbGnQrD6I8Q/JLqYhTOcRGJBjWS5rtk6mjXU46GiNTyE7baQW/EeYvI2AKY2Jqawy/SGuI/x89FZorVq9iHh1wEl4T5K3IQV2qf1tLAplk5+8Ftoyjy5XqOFyVYgZchUxZSEy/5WJEWDQKlS4sEyxU3ncvaX0oxDrznSSYa9KD1N+O5HAOsELHQZ1df8SHP8D36rHgEB+qCkE7NLee5yFIaX1BVpuy5mtcFCafMEeaJak0qkhTzNKWYCpi7UZf0dpxZ6CeTb7qGrW4iR8bHpisIJOoeIdVpsaDU88sAvHdgcqNcbVwqfCgh0n/1Jc3GFH71xd4YbZDuab
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(39860400002)(376002)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(6506007)(6512007)(38070700009)(4001150100001)(36756003)(2906002)(26005)(38100700002)(122000001)(82960400001)(83380400001)(86362001)(41300700001)(2616005)(5660300002)(478600001)(316002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(6486002)(91956017)(110136005)(8676002)(4326008)(8936002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGxYRkhBZVRFODNmYXYzNEJpdkZka3MwMjNOalFxcHlBdlUxMm5Oc3J2YTVH?=
 =?utf-8?B?Ym9mYWJOMGVJVDhZUU1TQi9yUVVpdlpTOGdpalM5UUpOWEhtcktuc1lIRlFx?=
 =?utf-8?B?dnBkRXRabWk0ZHRycnJpZzJidjRUR1k1blVSL2xRUXJoOTlyM2lrSmNnQ1V5?=
 =?utf-8?B?WGJJUDlqWG1ia0pzUXZwZkdqRlptSEJPOXZzUDRKVlhGRzljNHhBcjdZQkNt?=
 =?utf-8?B?MHFaQjRqZGJQQWhUUXZwL0h2Y3J1SlV1dHJmenRXaHNkUG9VNFc1QUpoZ3Rs?=
 =?utf-8?B?SzlPRU5RVVROVFROWDRKOGcrTW1mS083ZENyK3Y3d3ZycFIvejBjSkc4U0ZW?=
 =?utf-8?B?djlGNS9tSElzR0tQUlJTQXlKUExXNGs4dXQ2a1VydTVGYWdaL1Z1a3JOWElv?=
 =?utf-8?B?Wk40Z2toSTdiREJ2anhaUUdWek13OHVIcXdHazlqMEVXTGNsTGVYLzQxZ0tK?=
 =?utf-8?B?M05tRENQdEdFVHVXWFg5ZE1MQ3duZTZMSFBJYkRVeENTZVRUcWVDZndyUXlL?=
 =?utf-8?B?UEdyK1FIY0w2WElwc2t5b2dYeTRUU2t2dTZEaEMxRHV1U3c0QmV0cTZEbFdv?=
 =?utf-8?B?bTF2MkFsaDFsN1NxMHRibm1jTzNHeXJFTDNaeThReWw3czRJRmYyYmZNbXVR?=
 =?utf-8?B?NmpxeWRNZ2tHNHg1NTJvNFlrUmRIS2h3Y3VrMXZPMGVXZFdndjloODNYaVh6?=
 =?utf-8?B?YjRLUWZ0cGhWZWlQN1BpZklkRzJGVjVWaWQ4Smx2bCs4WitseXBpeEVnY01L?=
 =?utf-8?B?M09FcmlzSjBQSjdtaFZ4bm42c1BJZmNuOHIzbkFhWkljbmt3VFBqVGVNUzZY?=
 =?utf-8?B?cEplU0o3ZjZVSTdROHRiTndkcHhCRktLTUFjRlNDbjNONUJQRno1ZXRYNVhj?=
 =?utf-8?B?VC82Y3NZMzNvQWJLRmF3UjN6bnE2Y05EbERBazhFWHdTdVFqT1pLN2NSd1o3?=
 =?utf-8?B?V3hhRVhucHVlQXpzY29udzU3MjF3OU5qV0xYM2hSSGJhdVhmVEtnR25LNU1Y?=
 =?utf-8?B?dmFZcE00TDlXUEpXdlhxSGRheDV6dzZ3cW5vZis2emh4bTNieXRrcXVsaFFl?=
 =?utf-8?B?TzBrcFA0bVRzWGQwNWdlQlRDSVcyQjA1bVZ2OUxNUElxVm5QTEQyRGdleHh0?=
 =?utf-8?B?Sng5cDZFUWRwbUZ4bVVnN2Z3cjZ2WFUrYVQzbVJZc0FvMmJJdHVZMWdJdHFH?=
 =?utf-8?B?YWdVeHp4R1ZrSjYvRktSTXlmajJpVnNCVWdNRk1jT2NlMkdzM3pvdDJLODRU?=
 =?utf-8?B?YkNyc3dsUkx5cTh0MnQ3ZlFKZno1SVVZTkJ2cklRR2p1aG4veE1jbUJ0VmNV?=
 =?utf-8?B?bmdzQ2d3QlFhc0pHN0R2d3A2SmRzaU8zOEZDbHZuQnBYMktHUnVCNEVkMmxP?=
 =?utf-8?B?SG42ZG9FcTgwWlAzQW9uRzNkTGFtTTl2U0JLdkpOcmtoTE1icXpIaktibTIr?=
 =?utf-8?B?NkRUbmNmREthQkRaWXpESFVGc2JybjZOTW9Pb3U5Z3JNK3JEMHRWeWFXQjdX?=
 =?utf-8?B?YXE4ZUM2dUFXbmk3OFppdXhVVURZbnlMaFZvVTBqZVorVDJsb2s3OStHQm5x?=
 =?utf-8?B?WWZnZTFJcXZMRkdsSVlubEpoeVJmV0MxUWpBL3VxTjlEY0FCYmxKYkFNN0Zy?=
 =?utf-8?B?ckxoT1lXdVd4d1lzVXRwTDhqVW5GeXh6OG9MTGZkUFIwdzhQSjRmYW5CS29r?=
 =?utf-8?B?STFLbmpaVDBqSVlQMFlidnJYTGtBSkdDNWxuN0hLRVBGYTFlN01JaW9kZUFm?=
 =?utf-8?B?TC9OVEZ3TXlweXhmR1R2M2xsTW13K1pFRWdhdmg5akR2Qyt3YW96aTEvdUtC?=
 =?utf-8?B?eTdkUTJxQ1hJbzc4K1oveGc0ak5GMHhya3o2M0oxNlVnbjBicWVXTHNBNUdp?=
 =?utf-8?B?VXdGa3Z0SHhEWE5LN3dvbSs3K295cWU0Qkd6UzFiMy9ZU08reUpLbEdSMVhy?=
 =?utf-8?B?bjF6Zi9jVGdKeUxESXRaYVp1NEFmMzBGT2RyUklIeTF3SlozV09nZURFLzI3?=
 =?utf-8?B?dXZJSXpzR25OKyt1VUFLdEtMYjl1ZlB6MFhOcGlScmJwb2hhR01BQnVEUVls?=
 =?utf-8?B?Z2xiRXBYMnkvRiszYmpTMVh1cUFaM09SOUUwcGxzd0R1ekRkNThVWUx6bFRj?=
 =?utf-8?B?bkFpSlJ5M3d6aXQ2VkozWEhFUjRmWHdxeUs5MmJSTEY4b1lQcmh5b2IvZ1BO?=
 =?utf-8?B?akE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0D17653F29A9F64A8124CF71AD3BD513@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d22bbc2-0325-43c7-1fb1-08dbe4faefd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 10:17:41.9039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QWn5sYwPTUnQab9f3uLGxpr4ACcmln2iCjZ9urN7Jv29GtrMDgFgo61g4g/XwrAdxisLXQbu5dUW9YjEnNAW/Oiiy8AmNPiYMG0UPZy/iGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6551
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Use int for entry setup frames
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

T24gTW9uLCAyMDIzLTExLTEzIGF0IDExOjM3ICswMjAwLCBNaWthIEthaG9sYSB3cm90ZToKPiBB
dCBsZWFzdCBvbmUgVEdMIGhhZCByZWdyZXNzaW9uIHdoZW4gdXNpbmcgdTggdHlwZXMKPiBmb3Ig
ZW50cnkgc2V0dXAgZnJhbWVzIGNhbGN1bGF0aW9uLiBTbywgbGV0J3Mgc3dpdGNoCj4gdG8gdXNl
IGludHMgaW5zdGVhZC4KCkkgdGhpbmsgeW91IG5lZWQgdG8gYWRkIEZpeGVzIHRhZyBoZXJlPyBX
aXRoIHRoaXMgY2hhbmdlOgoKUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDYgKysrLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gaW5kZXggMzY5MWY4ODJlMWMwLi5hNDQxN2U4NWY5MmEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtMTA5MywxMiArMTA5MywxMiBA
QCBzdGF0aWMgYm9vbCBfY29tcHV0ZV9wc3IyX3dha2VfdGltZXMoc3RydWN0Cj4gaW50ZWxfZHAg
KmludGVsX2RwLAo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiDCoH0KPiDCoAo+IC1z
dGF0aWMgdTggaW50ZWxfcHNyX2VudHJ5X3NldHVwX2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZQo+ICphZGp1c3RlZF9tb2RlKQo+ICtzdGF0aWMgaW50IGludGVsX3Bzcl9lbnRyeV9zZXR1cF9m
cmFtZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Y29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUKPiAqYWRqdXN0ZWRfbW9kZSkKPiDCoHsKPiDC
oMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1
KGludGVsX2RwKTsKPiDCoMKgwqDCoMKgwqDCoMKgaW50IHBzcl9zZXR1cF90aW1lID0gZHJtX2Rw
X3Bzcl9zZXR1cF90aW1lKGludGVsX2RwLQo+ID5wc3JfZHBjZCk7Cj4gLcKgwqDCoMKgwqDCoMKg
dTggZW50cnlfc2V0dXBfZnJhbWVzID0gMDsKPiArwqDCoMKgwqDCoMKgwqBpbnQgZW50cnlfc2V0
dXBfZnJhbWVzID0gMDsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBpZiAocHNyX3NldHVwX3RpbWUg
PCAwKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkx
NS0+ZHJtLAoK
