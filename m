Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B5D7868E7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 09:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2568C10E4A7;
	Thu, 24 Aug 2023 07:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3400310E4A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 07:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692863347; x=1724399347;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sAoxIBySUb2jN0DKUnL1L9aGw45YFNJf7IF5MP8VB5Q=;
 b=jBEJ3GnpMQ8WPN/IAKIIUKaLDh17XpE44amDzJqMfMtC3qa2kSuqH3wh
 eU43BwJkU0ZLX/PixGjqaFDso8iu4lLsEFpz38ULUN/EUfR6p4N80WFOj
 xGau4hno5w0wbTrMRNZ/FHpssW3nfktbKb0/uCYBHmfFIKzkCpv3AC64M
 hYUNoPAtqTGWH900Ygo3xKE2S/3OCW4yePaCqkYHZcfSFprLmArRdSHe6
 0k7rJnQ17BTSyocFdqzH1+TUpESCI+6NjvYxuz6o3SgzhNi8pc1lA4iHL
 qo67PJH5Jg9aOBjuU0Bf0SY9xwmTbqnbMesLikOQWQwQITFn0p706agRw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438306291"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438306291"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="807006664"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="807006664"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2023 00:49:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 00:49:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 00:49:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 00:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LHmTCNuGc3EaLW5FbJ3U+iQAAT2Bbo+ETmnl2Pti4CUZdfQmfSKVl4ZHXN8jRlQdm2EVOCjrXydcYFE4PiqiUhxrVt22xZYc92lrrfwhiOmABPXaVyzsl5N2KPh9ckm54Wa/CXXX8Zb3kqlYn6p2SK1pA4zReni4mevg8sAztsqxinB+A/HbQ9LGtxz/PLPZnG26i/uq7WZyf75123nlVRjZC3eIEZSLlEos8qEMX/X3R0+BlFX5bpsczCDUNuqsbKzE+KNIdQwVC5acuJKWq9OIvw+NSxSBvRQ9sAYrhsO8VlQCGRGu1ERL3AIiB+cRigjq9hMHbeoWI7fel19fAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sAoxIBySUb2jN0DKUnL1L9aGw45YFNJf7IF5MP8VB5Q=;
 b=leW4339sPsqJu785bpZTVxs4UmSZx2TneWLir2lJnTc4rYUMMUOceC/xQ9Sz4bUw9qadj0wXxJiJcCP6sCaF+jVSnAz8pv4lzE45YG+TEa+A2KNk9eZvmfImxNGR7UKnhYvqmjpSgOFgT/B6bQr8CiMIfJC7ehqUvqkmpY3rhpjHIRW5RHEUZuNV8peoyjBTLqnCN8TeYxkW/4XJBxoJ+ylmm698UnHhbigkqSqkjWspG8CTzpvh4VL8Sb5bI0hn5aVHgo4Y6Pk5S+/+zNVIZBWaPlWze6Q7SW3l4KnGtDX3iJuEUL2Qyt/JX2zNanlxNn65C9E9OJwReuhfL27xog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by CH3PR11MB7297.namprd11.prod.outlook.com (2603:10b6:610:140::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 07:49:00 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 07:48:59 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 1/4] drm/i915/tc: rename
 mtl_tc_port_get_pin_assignment_mask()
Thread-Index: AQHZu8QrueNq7dWaT0iwHAxhHinD4q/sungAgAAQf4CABF4tgIAIHjOA
Date: Thu, 24 Aug 2023 07:48:59 +0000
Message-ID: <e99136f732defccb42427a9bc9b8bad688650e46.camel@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-2-luciano.coelho@intel.com>
 <SN7PR11MB67503D9744E5F01AFB48DB86E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <dd9c0014d0a019a326da29705adf548da32f4e32.camel@intel.com>
 <u3gp2h6tgwyho6b2u5kammmpw7tgi7lv77dwpquqrnbxanhgvg@ldslri55x356>
In-Reply-To: <u3gp2h6tgwyho6b2u5kammmpw7tgi7lv77dwpquqrnbxanhgvg@ldslri55x356>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|CH3PR11MB7297:EE_
x-ms-office365-filtering-correlation-id: bb17348f-6bdc-4191-d7c8-08dba47693c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 15K1siDZ2Q4klP2uIgJQBtEOyOWcudu2vfvyxJ8SkDOn9KSna5AhJHqvfOPzymlXPPQ29FDHUi55Gc3CksOXct+M68d7NGmJ6vavh/Gb7ty8k4mgxEocpaJABHs9Or0sYpRDen/pbmmoAFzTgPp8g56ZSNd2V11ow8z1aRH5p0NlvYscBcx2zD7BhR0Xi+lkajXIqLqG4BFcYIFiqxph2YIyCykjKke7na6JxW2tMfWT/tiDyBpPCzvQX3FXF4e0RWzQ4h61fGOUp4/Flq89zWMyVCIyoETfUfUkR9Tkr7P061comnNVOK379bl3fDCFbYyK3EeGh9IkuOxI/+D3u6hMHSbIyF9QZ8yKvYgAFL909o0ublbeKz2m6beCVGiWPPJO+E0+NJetQw24n35JUWL9pqP3h51rtC0WljtoEV3Tq6mgi9/46DqSSrpnVo+zf0NoeOtu+AvMLlv8UIkFGbHgMZ79h0+IRX06pe86Iv2wTx7YsaBbRUcBxNaZOifI+9qdAEOnyP0xGk6uWL4bnHnsTHqpu4cy7Mau8LVcNETLA73HngS6ztQY+JRZF4Ewd+9EAr/nfsma9rG/II91US42hD6OVE/O9FvjfJEf7fLplLVogdEkfWyAB+bG6GFy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(376002)(366004)(39860400002)(451199024)(186009)(1800799009)(66446008)(64756008)(6636002)(66946007)(76116006)(66476007)(66556008)(37006003)(316002)(82960400001)(122000001)(478600001)(91956017)(26005)(38070700005)(38100700002)(71200400001)(41300700001)(86362001)(6486002)(6506007)(2906002)(6512007)(4326008)(6862004)(8676002)(8936002)(2616005)(5660300002)(83380400001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Um1GalJpL1F2N256cTJqcDlMN21meUp6dlkzWS9WZU5xWitEZ0xxZ2JpeVB4?=
 =?utf-8?B?eFNVc1J0ajZCNDFKQ2EvYUNUM0hLd3gxNnoxekp2ZmFaS1VIZEpNU1AwUTZH?=
 =?utf-8?B?eXNaQlJCVzNERmQ2clluY0lxY0JZMS9CR1FDYzFwdTJGVE4zU0JSOGpLRlE3?=
 =?utf-8?B?dHV0eE5oaUV4N050K29RaVUvUUFCcmUweDllVFBBV3oySlJKbllaM2dwS3hx?=
 =?utf-8?B?ZysyaWoraE9CU0owTUpmQS9nQVBTSkt0NFlCQ3BhckhWSHR0UVlKVHJwRG5s?=
 =?utf-8?B?bWsycFBVOEx1WGJhQVprakJxdVJEQklMNTBqdzl0bXljWU5FYjdyS3M5OW5h?=
 =?utf-8?B?dVg2K0dabnB2NkI2eXdMY2NUTHVBK1h0K2VKSzFxQnBudlRjbXoxeVEzeThk?=
 =?utf-8?B?NjBJUkgySjdDZkYzKzJsdWVRVmJaQjF2cys1a283NWkrampUVXhveGtNU0dl?=
 =?utf-8?B?NFlTZ2RKeFZsQUN5ajNqMHhlKzBXSnhZMzNHVnY4Rk9TRHRwQWd2bkZvUUY2?=
 =?utf-8?B?T0M2cGtDWThmYytDWTdwbG5yanRDQkFkY0l1eThuZHVJWEM3ZEJ3TXFRSHBS?=
 =?utf-8?B?LzhoRGxmc0xEQ2szT0pVVTlBNUFOd0pEQVRVSkRURDZ3MHd4RWpLeWJIbmw3?=
 =?utf-8?B?WXZ1MkZPalNkU0Y4MFJ5TC85TkZrMmV6TFl3WjA4U1FmNGVrQ1NiQzZDbDZa?=
 =?utf-8?B?N2N4TnY4cENYRytXbHpYV0pPdm5uM2htQ0oxQ0ZqQ1FXKzBvcC9IWVBsNFdk?=
 =?utf-8?B?bjBQWXhuK0RZVDNVYnpPdHNtd2tYSVoxR0toV01VVjMvRFRSSjNWZmI5SnJI?=
 =?utf-8?B?NXpnYkJqZFVkOWlqUy9WdEdQTmt0OFZNVmplcEpjTmlad1ZKWjFaNk4xUXgz?=
 =?utf-8?B?ZTZLcEg3a3lYdE1QcjB6Qk1aRHF5UEdBRUZPZ2N6RXRDczh2ODhyUGRXQ0x6?=
 =?utf-8?B?dVZQRUFRSlRUZkQ5b2IvSEhTODFZUDRqbHkzd1N3RmNoOExqWjMycGdjV1Jr?=
 =?utf-8?B?NGFiSk9ZN2ZNYWk4a3BPbitDdUFjUGt6aEh6REV6MytyNWt1T3hPcC84QnBZ?=
 =?utf-8?B?TGVKdDRFTVVuWVpyV3Q4blh1NDlOUURUaE1FT3hWc0dGMHJvWnZZOFZxVmtG?=
 =?utf-8?B?dzNUS1RSUmZ3TmhKVkE0TE1UQS93WVlMVzRmb2NGTkxQTG9tdkdoQXZPQWNk?=
 =?utf-8?B?QXR2eEhwL0xFdVlXcDFqWW9Gdnk4Rm1aTUQveTY2ZnI5UVFCZXVUYlBySW4y?=
 =?utf-8?B?SVdpQmRyQnVsbkJqUWQ3ZGVXNjdaUGNLakI0ZlBhRFBXYTBsT2FkV1NEb0ZO?=
 =?utf-8?B?ZnMvMHdkeXJLWVZySWVaNHNOcFpNMGxVMDdoNkFvcmMyYXM5V2c3M2RUMERW?=
 =?utf-8?B?RDNzeER6VG51eG1kWjI1RmFvVHB3MTJ6YnNtZEV5cmdKY1R5MXhzZHZKQnNK?=
 =?utf-8?B?SkRJdnIwMysxNTJCNTh2NzRQNjJQaUwyRHhsQi9VZXRVdnJqb2V5ZW5mZjNU?=
 =?utf-8?B?dVhDNWhsRTZ3a2U1dXJpR1FxSjVGUlBOZjZydTVnVUdOaE9FdjRvQmhmZGpP?=
 =?utf-8?B?b2U5NjE2aFQ5R0taRmE0ZlNjcm9QSmd6V2NZUjJVVkVTb2ZaczJnU0taNkVs?=
 =?utf-8?B?aWRjMjNhYmVhdG9PRExCUG00WnZoUXVjSk8yL2dpMlNuenI0MW9rSUt6OFpu?=
 =?utf-8?B?M1JaeWhlYmJZZHFDM2M4LzdOT01QTzBEdFZ3bDFmUkRnWHRYUFhoYUZnOXhU?=
 =?utf-8?B?ZC8ydGQwQUVkRTZuaE0xK01BdEhqeVNZTGRJY1hZNnpmWUlueGxTVnFadlll?=
 =?utf-8?B?dWtpcGRhZFJZbFhBUFhvRWU3Vy9qUkZLWmhpYWtySmFmUWd5Y1MyZ2lzM21a?=
 =?utf-8?B?bTB5KzBVWE5NSkpYM1B3eXdGYlpZdllBSjFNVFdMTDVMdXRmOEtsb0dUOS9x?=
 =?utf-8?B?d3hTRHhHNko2a1FDckhVMXZ3ZnBBQW9Ody9PMlpEZG8vRnNSTngzb3JsWklZ?=
 =?utf-8?B?VFc5S2xTcEh3TENFaW5BeTA0dFN1cDRvM0pFMUtaNk5ZMlUvMGppOUxxRkR6?=
 =?utf-8?B?c0VrbDhzdlJFaDdtQWo3YWVoZmViMzBrUFRBT2Y0Z1pUQmhZaEJUNTlpSWZ1?=
 =?utf-8?B?Qll2Y3ZPNWltdGFXenZ5bW95ZUxiOEtUcHhRRDV1V0pTWnF2WXhzVWpxR2I4?=
 =?utf-8?B?Q3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BC80AB1DBAA9874CB82F95B343A5F2BE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb17348f-6bdc-4191-d7c8-08dba47693c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 07:48:59.5087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZJSnxXATA56w+TP3ZSYQ4LM2bRDWJHdqR+KWOqoNnAFBSY1SiAc6ydMR/j50vo65PRWDsq9d/dpA9eVlOvj/FfjnyL+knVKKP6rdmtE+XBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915/tc: rename
 mtl_tc_port_get_pin_assignment_mask()
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

T24gRnJpLCAyMDIzLTA4LTE4IGF0IDIwOjUwIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgQXVnIDE2LCAyMDIzIGF0IDA5OjA4OjQ0QU0gKzAwMDAsIENvZWxobywgTHVj
aWFubyB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjMtMDgtMTYgYXQgMDg6MTMgKzAwMDAsIEthbmRw
YWwsIFN1cmFqIHdyb3RlOg0KPiA+ID4gPiBUaGlzIGZ1bmN0aW9uIGRvZXNuJ3QgcmVhbGx5IHJl
dHVybiB0aGUgcGluIGFzc2lnbm1lbnQgbWFzaywgYnV0DQo+ID4gPiA+IHRoZSBtYXggbGFuZQ0K
PiA+ID4gPiBjb3VudCBkZXJpdmVkIGZyb20gdGhhdC4gIFNvIHJlbmFtZSB0aGUgZnVuY3Rpb24g
dG8NCj4gPiA+ID4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KCkgdG8gYmV0dGVyIHJl
ZmxlY3Qgd2hhdCBpdCByZWFsbHkNCj4gPiA+ID4gZG9lcy4NCj4gPiA+ID4gDQo+ID4gPiBNYXli
ZSBhbHNvIGFkZCB0aGUgdmVyc2lvbiBjaGFuZ2VzIG9uIGNvbW1pdCBtZXNzYWdlcyBoZXJlIGFz
IGNvdmVyDQo+ID4gPiBsZXR0ZXIgZW5kcyB1cCBnZXR0aW5nIGRpc2NhcmRlZA0KPiA+IA0KPiA+
IEFoLCByaWdodC4gIEkgZGlzY3Vzc2VkIHRoaXMgd2l0aCBzb21lb25lIGVsc2UgYmVmb3JlIGFu
ZCB3ZSBhZ3JlZWQgdG8NCj4gPiBkaXNhZ3JlZS4g8J+ZgiBJIGRvbid0IHJlYWxseSBzZWUgdGhl
IHBvaW50IGluIGhhdmluZyB0aGUgY2hhbmdlIGhpc3RvcnkNCj4gPiBpbiB0aGUgY29tbWl0IGl0
c2VsZiBmb3IgdGhlIG1haW5saW5lLiAgVGhlIGRpc2N1c3Npb25zIHNob3VsZCBiZQ0KPiA+IG9w
ZW5seSBhdmFpbGFibGUgaW4gdGhlIG1haWxpbmcgbGlzdCBhcmNoaXZlcywgc28gZHVwbGljYXRp
bmcgaXQgaW4gdGhlDQo+ID4gY29tbWl0IGxvZ3MsIElNSE8sIGlzIG1vb3QuDQo+ID4gDQo+ID4g
QSBsaW5rIGluIHRoZSBjb21taXQgbG9nIHRvIGxvcmUsIGZvciBpbnN0YW5jZSwgd291bGQgYWRk
IG11Y2ggbW9yZQ0KPiA+IHZhbHVlIElNSE8uDQo+ID4gDQo+ID4gQnV0IGFueXdheSwgc2luY2Ug
dGhpcyBndWlkZWxpbmUgd2FzIGFscmVhZHkgaW4gcGxhY2Ugd2hlbiBJIGNhbWUsIEkNCj4gPiB3
aWxsIChhbG1vc3QgZ3J1ZGdpbmdseSkgY29tcGx5LiDwn5iJDQo+IA0KPiBzb21lIHBlb3BsZSB3
YW50IHRoZW0sIHNvbWUgcGVvcGxlIHdhbnQgdGhlbSByZW1vdmVkLiBBIGxvdCBvZiBwZW9wbGUg
aW4NCj4gZHJtIGxpa2UgaXQgd2hpbGUgcGVvcGxlIG91dHNpZGUgd2lsbCBzaG91dCBsb3VkbHkg
aWYgeW91IGFkZCB0aGF0Lg0KPiBEb24ndCBsZXQgdGhpcyBob2xkIG9mZiBnZXR0aW5nIHRoZSBw
YXRjaCBpbnRvIGEgbWVyZ2VhYmxlIHN0YXRlLiANCj4gDQo+IA0KPiBSZXZpZXdlZC1ieTogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IA0KPiBJdCBtYXkgbmVl
ZCBhIHJlYmFzZSB0aG91Z2guDQoNClRoYW5rcywgTHVjYXMuICBJJ2xsIGtlZXAgdGhlIHZlcnNp
b24gaGlzdG9yeSBvdXQgdGhlbiwgaWYgdGhhdCdzIGENCnBvc3NpYmlsaXR5LCBJIHByZWZlciBp
dC4g8J+Zgg0KDQpbLi4uXQ0KDQo+ID4gPiANCj4gPiA+IFdpdGggdGhhdCBmaXhlZA0KPiA+ID4g
DQo+ID4gPiBSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5j
b20+DQoNClN1cmFqLCBsZXQgbWUga25vdyBpZiB5b3Ugd2FudCBtZSB0byBhZGQgeW91ciByLWIg
dGFnIGV2ZW4gdGhvdWdoIEknbQ0Kbm90IGdvaW5nIHRvIGFkZCB0aGUgaGlzdG9yeS4NCg0KLS0N
CkNoZWVycywNCkx1Y2EuDQo=
