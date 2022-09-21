Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07705E5644
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 00:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A087C10E52F;
	Wed, 21 Sep 2022 22:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D5A10E52F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 22:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663799440; x=1695335440;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RNBud9SRIUe7gtugtIF3iX7lgRwVY9y3/HBwcKjb7lM=;
 b=cDzirAEqmb2st46wnUCGE6NRjQR2hsx7gMd1qs0y/WrkCUR7Rs3h6W4h
 GCdpgR0tKiMPQEYpt+k0f3zF4OlWOQ3btMfwwNgJePdOL4snQ/w0NBfwX
 wWZrHE96gN6ZdHwqzKsO77UMCmZf5yFNzCdW470dxZnVujkx7jF1892nz
 z4WbTYWdrU3TiofdRr4xKCm567PRY7Cp36Eu5IDI5zWizy7qKrNWdpB3p
 WBUPgBK8JP6O0BI9v8E57sB9CEC1kpxJ7cb04e43Mip4ca1SCM4SpqpER
 0Shmx4IZse+Zi965/rrEP6sH3zOmHrqPCDUvjMD9VUDBkihObytJJSdqO g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="386429284"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="386429284"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 15:30:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="621861437"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 21 Sep 2022 15:30:32 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 15:30:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 15:30:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 15:30:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c84FKZHBLOIcz3eSEUcPyihnzky5PKcyAlJCtWhCI9eXO45DGBrU1NvXvhZZqn3K12s9pPSmY40vKSNqKW7vnqeRD/jOQlygBs9ubfy1S1QUz4TKliNyn3Pwatrg/Qs/53W+mKzPgKWaEg4Rn3o60qiMiCgzZDgyKGQYCVldPIqeOcx1FMqKqr4FV+KW+vIcqtyOtUCPVkDC6jnOmg40wAiVwWXSBinJYI+SAsLkBd7uHTJjIM2RUKRMWXkxd/pzuJ/T0dk5g8yF0dW/jRPAt71wDI+qOUJiVvXiQUFwyX0g9L71p8uAXnOZCkD41t3vg+I1/pOemEdWVNPmyvSGsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RNBud9SRIUe7gtugtIF3iX7lgRwVY9y3/HBwcKjb7lM=;
 b=QPKVnF5x3ebRWjxRYbQvP3TWbUFKIIm+C83L8tFOm0/CMwwCkCTeZYLkQOVRWOrSXpBzL5ZLYdsXAErVzLLU2bVtK78yg+hO/fKrY5FKEFjyYtrybkf7w3yc9IPJeDUzX77OkV0ysZaQVNOj6krVCXqu/eemhRbe/ldZCT67/0svDemgZpcGf3FE6gLEeaxkO0Z0kVs8fuwcotLleYTg+Q3WdYM18RasIs1OZrFQaxxGCuggrbDqwlJmj2/Uw2/D13NctW+1DKtinOGI038E/BeiZrJa7o1LGKaAtImsfcJb61ieYvRECcoc/r17T5QdUu5o+VWtWV8neL6CA0iNyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5612.namprd11.prod.outlook.com (2603:10b6:510:e7::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.17; Wed, 21 Sep 2022 22:30:29 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%5]) with mapi id 15.20.5654.017; Wed, 21 Sep 2022
 22:30:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
Thread-Index: AQHYyKhoBCHXprrm7U24rox/6Qj+2K3gLo8AgAGDhgCAABGfAIAHy8AA
Date: Wed, 21 Sep 2022 22:30:29 +0000
Message-ID: <35b85f4d4156e3afe558a9b231605769249de449.camel@intel.com>
References: <20220915021218.1412111-1-alan.previn.teres.alexis@intel.com>
 <20220915021218.1412111-2-alan.previn.teres.alexis@intel.com>
 <5aec4a0d-e99b-011d-68a9-84ad1f1120bf@linux.intel.com>
 <2808b0f67797543e453e74b4e156df4a5cdd8656.camel@intel.com>
 <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
In-Reply-To: <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5612:EE_
x-ms-office365-filtering-correlation-id: 3823aa81-8bc1-48a1-7ccf-08da9c20e358
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FfieJgK2bf2YBA6YZA+pNNUxJi58VpXhImlpRP2lYmrRylu14pReaj7s/wur1ACEsga3XyX9iJz2PsK8UiPLhmn2djftWGPWHWL8qHf3fEPaEqKPVNizlDVU8cT3jjG7O0yzJRjiEiOa9fI3VlrIS850rf+vFKg9vGbp/9Ny+g/h/ZanL6qFeI51Zuc2H3C1U2CdyQPYb3JOo7TZ4wxf1Xa+Gksh1RwDVK+x0ytJMasC66GLUsVs5CJqk0gEsI9z+Kxe71yY1Hh8uyICSOdepn563mkZMVkyDW4YcdWlpSgdg1a/6bbjIU13mXxE9bIsx3HBVRmezzCBPGUh7hyT3tYeiAuvbAmCgLkfzDBFBg+30TAmF3XSrJk8T1fGkskIMBAeLCPXXNNFGm6EF/GWlAlw01dZrwAb2n8jqTOMoeCBUf4yZ0xDZU9knhm755PC7NYQ36ZghnFOBUDLynIdlhcWwxGNzEnUX26vKiGYI4Z9vfREqH6rMLBZWIh6yUhn+n8EnT54svRvXEyHIlCt2p20/vEZAyYwdhjqzYhyPnD2jaXtT//HJJXVXKBASJ6OJW/DnjlmIrxl4S3kS31OJYgagEbQ4yHP8WoBSG5IpvKOXOLPDwZ2uDmDNe4RZK16kGSgMI7oQOg33oPXfLLHdBVc7pnZSobiz38OxWzxoYUUhTFR/PciKAEclQOU9wB8gq/LcpOXjx5x2BGlQ/eiWLP024uXC8NlLJds/IX4RDk2SgMNWUgj563sQ6ycn74CJ62bkqAOWzaHEELSe8R2hA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199015)(110136005)(6486002)(316002)(2906002)(76116006)(8936002)(53546011)(38100700002)(6506007)(66946007)(66446008)(64756008)(91956017)(41300700001)(38070700005)(66476007)(6512007)(4326008)(66556008)(82960400001)(26005)(8676002)(5660300002)(36756003)(86362001)(122000001)(478600001)(186003)(2616005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2pycUlmNS83VHF4cjdvLytDTXZIdFVNc09tTUYydm5WSjhrU3ptZm9MY3Fr?=
 =?utf-8?B?S2JWcGtaVDRBWEpJQWd1aUY1TVkvbCtKWXdKbmFoQW9ZbHIzaFN6cXZiUkdY?=
 =?utf-8?B?NTNIVVp6c2J0TWprcFhxMlZpRnpEYWQ1dklpdVNlK0QrdlBoQlFCck1OdTRi?=
 =?utf-8?B?bndsaDdlc1JoZUo3V3ZqN0MvOTlMbVAxSG1KUXIrQWdDL0RNMVNyQlZKQUZW?=
 =?utf-8?B?L2ZRK3dLc1FYdGFQU01jbVlrcHJEZWRZaDl3Q1NDY0lhOWhuVGZ6MklSdUQ2?=
 =?utf-8?B?elpoWEZpdDBtMW5QdW1xUy9BMjBjNitGRkh0aFJtY2dlMVJzaXcxeFBqRTB1?=
 =?utf-8?B?S2tOQWhaZys4QUloQkxEdnNVRzB3S0lqQkJwcVh3RHAxdVVXTDRVTmR5TW9u?=
 =?utf-8?B?NjZYb2M1dWVkeWM1SFZSVnlRaXFhYjFqS3czZ2F6UTVRa3l1TEdUYXExb3du?=
 =?utf-8?B?MU42NXhkcWV6ZnZLTU01V3FaYXhabnl4T2NacEYxTG9EbXJCWmQyaVJjbzNG?=
 =?utf-8?B?cjE3MHk2SkRYYUFNVUVVcVJqWlhHa3d5K1RGVm1MWDNVa05kbmlFeWRrM1Zv?=
 =?utf-8?B?ZFVZTTlnc3c4YzV2aWtyUEFGUVpRSmI0MmM0d051c1R1TE1pZ3hhcFJYVy9W?=
 =?utf-8?B?RDByOXlRS2tPZXZqSXQ2V2ZjTU95TWtPMGVXdWZ5Z1ZjNng5NklCbHp5STA2?=
 =?utf-8?B?blEyYmNyYmlXYzRwbWlGd2pIaXUxSGkzK0kzMXFJSGZDQ0c1L2Y5RUZ6d1Z5?=
 =?utf-8?B?Tkhrb2JGbmJsN0p3TFhPMENBMGd4YVRUcmJIZ0xJTGVYVVJQSEUvM1psTWZ5?=
 =?utf-8?B?dDVrdEdiVldLWTNyUThlY09DaTg2dytjaDQxblNUUStjelZ3RUtDbW4vbGxy?=
 =?utf-8?B?Sm1EMExMSitUeXZqTVY4R0xjNno5WEtZUnZpak5iK3NRdHNvSk43UDN5eUVZ?=
 =?utf-8?B?dmxNaFZjOFp1aTFneDZUUEJyYjlFUmpGSmY3cGhCKytWei8xU0tIMjVBMUds?=
 =?utf-8?B?TlBxOWVQcHpZOGE4Y3RhdjJWcUNjbFlvcnFzem5SYTY1Z1ZOcVlMeFlDc3hj?=
 =?utf-8?B?Mjcrc2VPOEZsbjJMZmhRaUx0MjZ0UW9uQnpJWUxjQTBIMzI0TlVuWHM3cWs3?=
 =?utf-8?B?YkVFeEFET0VUTDNvVnkrNVg3dmFBeFhzU2tVcjNUSXRvRkx4emJwQ3ZwTFVM?=
 =?utf-8?B?cEJoV3BRazRTQzJYVTllckhVZFhRMmM0Sy9IMFN5bHJzU2drbVFubnUzRUZx?=
 =?utf-8?B?U2crOTNZZTNpeFJSTnNoVzZaRFVOOEhBc09zSFdhVWZ6eS9oYzBiQ3JwWXJQ?=
 =?utf-8?B?U3R5czBtYjg3SGFudHpFUWJFM2RoOEZoK1U1K29HcmZmRVRCQjlUUmdGc2pt?=
 =?utf-8?B?SHJUU2phOUtjekNIb2dMREdQRDEveVM1aWQvVTZiVkdpMGovbVB4S0lMeHJ1?=
 =?utf-8?B?YW8ycy95Wlhrems0Z3M0ZzhtMmFWbDhNNzEwbTFCa095U05Cb2V3N2s5S2Jl?=
 =?utf-8?B?K1l2WTZjTjEvWDdrY1pQZkd1NHpYamxQVmJSU0lnUTdSOXUybUZHTEI4SVBD?=
 =?utf-8?B?WUtkUHF3dVp3KzRIczFQcFc5N0hWQzcyWVY5NGRFV0xDMjJuK3lReUpmakRj?=
 =?utf-8?B?NElvbXprbms5R29sdDFVNzgraFJrVUxBaks0V3pmd0E0ampSTStVN3ZvSHEy?=
 =?utf-8?B?SHZ0K09SSzZPeXU3amluM0luL2pmRnhJeTZlc3dSa3dhMzk5WXI0dUZ3YjY5?=
 =?utf-8?B?MVQwWkRYVXdXMG5TblVHdlZ2SjN4dllDWmFZeFJtTUNid3Z1ci9ZS2dqT0lN?=
 =?utf-8?B?U0MvTW9kQ08yTlM5SGRsZWd3UHhaN2lSU2EwMEZZZjQ4bXVFWVBsajFnS1FY?=
 =?utf-8?B?SklXNWFjRlp4ZkVJc1JicldyQldWSzhmb3c0ZzFWaUMvRksvOHRyYzlxYTMy?=
 =?utf-8?B?cVU4ZFBVUVRjdHRaemRxUzJDM3ZBOUc1bitZSkUyWUZaNWJzVjUxYXVucm9N?=
 =?utf-8?B?TlJXN2NVOHFrR3Zka0FwYmxQNis3N3lia1gydVRYSnRncXIrZm1GWGptZGRD?=
 =?utf-8?B?WWEwWDNsWDQvK1FRcDI1RnJtWnRlSk45amhWNC9wb0ZscldjRGVkVGl3ZUVk?=
 =?utf-8?B?azEzNTR3aFVNekt2V3NsZFJNaEZ5aU5tTHZkUWNzSUlPSjNMcUhyMlMxdVdD?=
 =?utf-8?Q?kq12Bk5AhSYTfJteLdlOCPN4xbStzyRBRIbuf7s8emjK?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <77920B65ECFB9F4FBD229083D32A76FE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3823aa81-8bc1-48a1-7ccf-08da9c20e358
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 22:30:29.3151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P0VtkaGS/NnEc68ThXgskTAoZ8lRVRBM8y/p5Zo18yytinLUTZlYHfkGA99qTKMjoDw+HfKSW6HaA7a5ILvGwDWBQ5d0t0lAFPxh01F+fPARSLYcdMMplRh9YQwIz7is
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5612
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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

DQpPbiBGcmksIDIwMjItMDktMTYgYXQgMDk6NTggKzAxMDAsIFR2cnRrbyBVcnN1bGluIHdyb3Rl
Og0KPiBPbiAxNi8wOS8yMDIyIDA4OjUzLCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdyb3Rl
Og0KPiA+IE9uIFRodSwgMjAyMi0wOS0xNSBhdCAwOTo0OCArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6DQo+ID4gPiBPbiAxNS8wOS8yMDIyIDAzOjEyLCBBbGFuIFByZXZpbiB3cm90ZToNCj4g
PiA+ID4gRnJvbTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+DQo+ID4g
PiA+IA0KPiA+ID4gPiArc3RhdGljIHZvaWQgZ3VjX2ZsdXNoX2FsbF9kZWxheWVkX2Rpc2FibGVf
c2NoZWRfY29udGV4dHMoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiA+ID4gPiArew0KPiA+ID4g
PiArCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsNCj4gPiA+ID4gKwl1bnNpZ25lZCBsb25nIGlu
ZGV4Ow0KPiA+ID4gPiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+ID4gPiA+ICsJdW5zaWduZWQg
bG9uZyBjZWZsYWdzOw0KPiA+ID4gPiAgICANCj4gPiA+ID4gLQl3aXRoX2ludGVsX3J1bnRpbWVf
cG0ocnVudGltZV9wbSwgd2FrZXJlZikNCj4gPiA+ID4gLQkJX19ndWNfY29udGV4dF9zY2hlZF9k
aXNhYmxlKGd1YywgY2UsIGd1Y19pZCk7DQo+ID4gPiA+ICsJeGFfbG9ja19pcnFzYXZlKCZndWMt
PmNvbnRleHRfbG9va3VwLCBmbGFncyk7DQo+ID4gPiA+ICsJeGFfZm9yX2VhY2goJmd1Yy0+Y29u
dGV4dF9sb29rdXAsIGluZGV4LCBjZSkgew0KPiA+ID4gPiArCQlpZiAoIWtyZWZfZ2V0X3VubGVz
c196ZXJvKCZjZS0+cmVmKSkNCj4gPiA+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ID4gPiArCQl4YV91
bmxvY2soJmd1Yy0+Y29udGV4dF9sb29rdXApOw0KPiA+ID4gDQo+ID4gPiBTbyB0aGlzIHdob2xl
IGxvb3AgX25lZWRzXyB0byBydW4gd2l0aCBpbnRlcnJ1cHRzIGRpc2FibGVkPyBFeHBsYWluaW5n
DQo+ID4gPiB3aHkgaW4gYSBjb21tZW50IHdvdWxkIGJlIGdvb2QuDQo+ID4gPiANCj4gPiBCZWlu
ZyBtaWQtcmVzZXQsIHRoZSBsb2NraW5nIG1vZGUgaXMgY29uc2lzdGVudCB3aXRoIG90aGVyIGZ1
bmN0aW9ucyBhbHNvIHVzZWQNCj4gPiBhcyBwYXJ0IG9mIHRoZSByZXNldCBwcmVwYXJhdGlvbiB0
aGF0IHBhcnNlcyBhbmQgcG90ZW50aWFsbHkgbW9kaWZpZXMgY29udGV4dHMuDQo+ID4gSSBiZWxp
ZXZlIHRoZSBnb2FsIGlzIHRvIGhhbmRsZSBhbGwgb2YgdGhpcyBwYXJzaW5nIHdpdGhvdXQgZ2V0
dGluZyBjb25mbGljdGluZw0KPiA+IGxhdGVudCBHMkggcmVwbGllcyB0aGF0IGJyZWFrcyB0aGUg
cHJlcGFyYXRpb24gZmxvdyAodGhhdCBoZXJkcyBhY3RpdmUgY29udGV4dHMNCj4gPiBpbnRvIGEg
ZmV3ZXIgc2V0IG9mIHN0YXRlcyBhcyBwYXJ0IG9mIHJlc2V0KSAtIGJ1dCBpIHdpbGwgZG91Ymxl
IGNoZWNrDQo+ID4gd2l0aCBteSBjb2xsZWFndWVzLg0KPiA+IA0KQWxhbjogVXBkYXRlIGkgcmVh
bGl6ZSB0aGUgZ3VjLXJlc2V0LXByZXBhcmF0aW9uIGNvZGUgZGlzYWJsZSBpcnFzIGZvciB0aGUg
Z3VjIGJlaW5nIHJlc2V0DQpwcmlvciB0byB0aGlzIGZ1bmN0aW9uIHNvIGluIGZhY3QsIHdlIHJl
YWxseSBvdWdodCBub3QgdG8gc2VlIGFueSBjaGFuZ2UgdG8gdGhhdCB4YV9hcnJheQ0KYmVjYXVz
ZSBvZiBhIGNvbnRleHQtaWQgY2hhbmdlIHRoYXQgaXMgY29taW5nIHZpYSBhIGludGVycnVwdCB0
aGF0IGlzIG9ydGhvZ29uYWwgdG8gdGhpcw0KdGhyZWFkLiBJIHdpbGwgY2hhbmdlIHRvIHhhX2xv
Y2suDQoNCj4gPiA+ID4gKwkJaWYgKHRlc3RfYml0KENPTlRFWFRfR1VDX0lOSVQsICZjZS0+Zmxh
Z3MpICYmDQo+ID4gPiA+ICsJCSAgICBjYW5jZWxfZGVsYXllZF93b3JrKCZjZS0+Z3VjX3N0YXRl
LnNjaGVkX2Rpc2FibGVfZGVsYXkpKSB7DQo+ID4gPiA+ICsJCQlzcGluX2xvY2tfaXJxc2F2ZSgm
Y2UtPmd1Y19zdGF0ZS5sb2NrLCBjZWZsYWdzKTsNCj4gPiA+ID4gKwkJCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmNlLT5ndWNfc3RhdGUubG9jaywgY2VmbGFncyk7DQo+ID4gPiANCj4gPiA+IFRo
aXMgZGVzZXJ2ZXMgYSBjb21tZW50IGFib3V0IHdoYXQgbG9jayB0b2dnbGluZyB3YW50cyB0byBl
bnN1cmUuDQo+ID4gPiANCj4gPiBJIHJlYWxpemUgdGhpcyBtaWdodCBoYXZlIGJlZW4gbXkgbG9j
YWwgcmViYXNpbmcgbWlzdGFrZSwgdGhlIGludGVudGlvbiB3YXMgdG8NCj4gPiBoYW5kbGUgY2Fz
ZXMgd2hlcmUgc2NoZWRfZGlzYWJsZV9kZWxheSB3YXNuJ3QgcGVuZGluZyBidXQgcG90ZW50aWFs
bHkgc3RpbGwNCj4gPiBleGVjdXRpbmcgZG9fc2NoZWRfZGlzYWJsZS4gSSBiZWxpZXZlIEkgY291
bGQgdHJ5IGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYyAoYnV0DQo+ID4gbm90IHN1cmUgaWYgaSBj
YW4gY2FsbCB0aGF0IG1pZ2h0LXNsZWVwIGZ1bnRpb24gbWlkIHJlc2V0IHdoaWxlIG5vdC0NCj4g
PiBpbnRlcnJ1cHRpYmxlKS4gRWxzZSwgaSB3b3VsZCBtb3ZlIHRoYXQgbG9jay11bmxvY2sgdG8g
aWYgdGhlDQo+ID4gY2FuY2VsX2RlbGF5ZWRfd29yayBkaWQgbm90IHJldHVybiB0cnVlIChhcyBw
ZXIgb3JpZ2luYWwgaW50ZW50IGJlZm9yZSBteQ0KPiA+IHJlYmFzZSBlcnJvcikuDQo+IA0KPiBP
a2F5IGEgY29tbWVudCBsaWtlICJmbHVzaCBhbnkgY3VycmVudGx5IGV4ZWN1dGluZyBkb19zY2hl
ZF9kaXNhYmxlIiANCj4gYWJvdmUgdGhlIGxvY2sgdG9nZ2xpbmcgd291bGQgZG8gdGhlbi4gRXZl
biBiZXR0ZXIgaWYgeW91IGFkZCB3aGF0IA0KPiBoYXBwZW5zIGlmIHRoYXQgZmx1c2hpbmcgaXNu
J3QgZG9uZS4NCj4gDQo+ID4gPiBBbHNvLCBpZiB0aGUgbG9vcHMgcnVucyB3aXRoIGludGVycnVw
dHMgZGlzYWJsZWQgd2hhdCBpcyB0aGUgcG9pbnQgb2YNCj4gPiA+IGlycXNhdmUgdmFyaWFudCBp
biBoZXJlPz8NCj4gPiBZZXMgLSBpdHMgcmVkdW5kYW50LCBsZXQgbWUgZml4IHRoYXQsIGFwb2xv
Z2llcyBmb3IgdGhhdC4NCj4gPiANCnNhbWUgdGhpbmcgaGVyZSwgYSBjb250ZXh0J3MgZ3VjIHN0
YXRlIHNob3VsZCBub3QgY2hhbmdlIGluIHJlc3BvbnNlIHRvIGFuIElSUQ0KZnJvbSB0aGF0IGd1
YyBzaW5jZSB3ZSBkaXNhYmxlZCBpdCB3aGlsZSB3ZSBhcmUgaW4gcmVzZXQgcHJlcGFyYXRvaW4N
Ci0gc28gYWN0dWFsbHkgIm5vdCBuZWVkZWQiIGFzIG9wcG9zZWQgdG8gInJlZHVuZGFudCINCg0K
PiA+ID4gQWxzbzIsIHdoYXQgaXMgdGhlIHJlYXNvbiBmb3IgZHJvcHBpbmcgdGhlIGxvY2s/IGlu
dGVsX2NvbnRleHRfcHV0Pw0KPiA+IEJlaW5nIGNvbnNpc3RlbnQgd2l0aCBvdGhlciByZXNldCBw
cmVwYXJhdGlvbiBjb2RlIHRoYXQgY2xvc2VzIGNvbnRleHRzLA0KPiA+IHRoZSBsb2NrIGlzIGRy
b3BwZWQgYmVmb3JlIHRoZSBpbnRlbF9jb250ZXh0X3B1dC4NCj4gPiAoSSBob3BlIGkgYW0gbm90
IG1pc3VuZGVyc3RhbmRpbmcgeW91ciBxdWVzdGlvbikuDQo+IA0KPiBSaWdodCwgb2theS4uIHNv
IGZvciBsb2NraW5nIGludmVyc2lvbiBpc3N1ZXMgLSBpbnRlbF9jb250ZXh0X3B1dCBtdXN0IA0K
PiBub3QgYmUgY2FsbGVkIHdpdGggZ3VjX3N0YXRlLmxvY2sgaGVsZCwgeWVzPw0KPiANCj4gTm90
IGEgbWFuZGF0b3J5IHJlcXVlc3QsIGJ1dCBpZiB5b3Ugd2FudCB5b3UgY291bGQgbG9vayBpbnRv
IHRoZSBvcHRpb24gDQo+IG9mIGF2b2lkaW5nIGxvY2sgZHJvcHBpbmcgYW5kIGluc3RlYWQgZG9p
bmcgeGFfZXJhc2UgYW5kIHJlY29yZGluZyB0aGUgDQo+IGxpc3Qgb2YgY29udGV4dHMgZm9yIHNj
aGVkIGRpc2FibGUgb3IgcHV0IGluIGEgbG9jYWwgbGlzdCwgYW5kIGRvaW5nIA0KPiB0aGVtIGFs
bCBpbiBvbmUgYmxvY2sgb3V0c2lkZSB0aGUgbG9ja2VkL2lycSBkaXNhYmxlZCBzZWN0aW9uLiBB
bHRob3VnaCANCj4gdGJoIEkgYW0gbm90IHN1cmUgaWYgdGhhdCB3b3VsZCBpbXByb3ZlIGFueXRo
aW5nLiBQcm9iYWJseSBub3QgaW4gdGhpcyANCj4gY2FzZSBvZiBhIHJlc2V0IHBhdGgsIGJ1dCBp
ZiB0aGVyZSBhcmUgb3RoZXIgcGxhY2VzIGluIEd1QyBjb2RlIHdoaWNoIGRvIA0KPiB0aGlzIGl0
IG1heSBiZSBiZW5lZmljaWFsIGZvciBsZXNzIGhhbW1lcmluZyBvbiB0aGUgQ1BVIGFuZCBjb3Jl
IA0KPiBzeW5jaHJvbmlzYXRpb24gZm9yIGF0b21pY3MuDQo+IA0KYXBvbG9naWVzIG15IGlnbm9y
YW5jZSAtIHBlcmhhcHMgaSBtaXN1bmRlcnN0b29kIGhvdyB0aGVzZSBmdW5jdGlvbnMgd29yayBi
dXQNCkkgYXNzdW1lZCB0aGF0IGNhbGxpbmcga3JlZl9nZXRfdW5sZXNzX3plcm8gd2l0aCBhIG5v
bi16ZXJvIHJldHVybiB0aGF0IGxlYWQgdXMNCmhlcmUgbWVhbnQgdGhhdCB0aGVyZSBpcyBzdGls
bCBhIHJlZiBvbiB0aGUgY29udGV4dCB0aGF0IGRpZG50IGNvbWUgZnJvbSB0aGUNCnJlc2V0IHBh
dGggc28gaSBhbSBqdXN0IGZvbGxvd2luZyB0aGUgY29ycmVjdCBydWxlcyB0byByZWxlYXNlIHRo
YXQgcmVmIA0KYW5kIG5vdCBkZXN0cm95IHRoZSBjb250ZXh0cyB5ZXQgLSBidXQgbGVhdmluZyBp
dCBpbiB0aGUgcGVuZGluZy1kaXNhYmxlDQp0aGF0IHdpbGwgYmUgaGFuZGxlZCBpbiBzY3J1Yl9n
dWNfZGVzY19mb3Jfb3V0c3RhbmRpbmdfZzJoIHRoYXQgZ2V0cyBjYWxsZWQNCmxhdGVyIGluIHRo
ZSByZXNldCBwcmVwYXJhdGlvbi4NCg0KQWN0dWFsbHkgaSByZWFsaXplIHRoYXQgdGhlIGJldHRl
ciBvcHRpb24gbWlnaHQgYmUgdG8gbW92ZSBhYm92ZSBjb2RlDQppbnRvIHRoZSBsb29wIGFscmVh
ZHkgcHJlc2VudCBpbnNpZGUgb2Ygc2NydWJfZ3VjX2Rlc2NfZm9yX291dHN0YW5kaW5nX2cyaA0K
anVzdCBwcmlvciB0byBpdHMgY2hlY2tpbmcgb2Ygd2hldGhlciBhIGNvbnRleHQgaXMgcGVuZGlu
Zy1kaXNhYmxlLg0KVGhhdCB3b3VsZCBlbnN1cmUgd2UgdGFrZSBhbGwgdGhlc2UgY29udGV4dCBs
b2NrcyBvbmNlIGluIHRoZSBzYW1lIGZ1bmN0aW9uDQpmb3IgdGhlIGhlcmRpbmcgb2YgYWxsIHBv
c3NpYmxlIHN0YXRlcyB3aGVuIHNjcnViYmluZyB0aG9zZSBvdXRzdGFuZGluZyBnMmguDQoNCg0K
