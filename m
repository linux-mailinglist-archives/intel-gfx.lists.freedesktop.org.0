Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB92793544
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 08:28:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F399710E0C8;
	Wed,  6 Sep 2023 06:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064C810E0C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 06:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693981710; x=1725517710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+9HvdDA2bEBmIR6AO9j5vzr38GivkICpWH2eR3IJtbM=;
 b=XnjOljNEd5LR+okzXz4aqkQQGqGMSkRUUlgb6DbLILbYmdNrzEr4RfVJ
 ZpuLyU8wEC5bAgAHHJOfDfsAN3OEPQ0OlQsPfPS8ohtwsk4xV7K9FRC79
 T5DRc1HZmWlcSWMavnsfEFKeCIXs+eyB9uey6fzL1hujTOJ6KpOHng1g1
 nJBpgVpqjXgnB7BGsWrCzfM7O7vAl63URcQqIiwGZxVus3C95rjmrBpyo
 KVm7191Flhp7oDpPVt1kpBrJRdtOfw5Jtw13yzC89wtsSYEfqlrDQs/Jx
 SpWIN321oR79zpefuCBWhiz2OnRdlBqMTmCjLAl2I64mWLxWNm0BpbduW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="379701587"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="379701587"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 23:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744556002"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="744556002"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2023 23:28:28 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 5 Sep 2023 23:28:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 5 Sep 2023 23:28:28 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 5 Sep 2023 23:28:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L30WsblSu2NQwBrIVZHjmGjpxf2gr5lkHQY/7wRLwfHmTRei7R8HUzYOYgdjerq6GXti4LAm7WMG5O/NYOKPhCVvPqZy/yxO6cnVtOAH0FyOAfzb/AHIZtFrFCU1SqVGUFzLg3YHi2foSAManp/rf3TcJUl6J6NX9QtBG8ZpYXdTtNAh/Ymh3uMOkkl0rkjloS/fiMgh18uFFzZw+SO5YxfP7mxoBFZyPOV5vLLIRJx547nFkFeo826wXj1/eGsIBjpi/HKBEsvKcOgPY+GUP6FQm+kLsXIwSEMwDQNQnTTEpvfEkPEqAwXyVpsDMWlCNyVf3uO1dTeyymxFXJQLuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+9HvdDA2bEBmIR6AO9j5vzr38GivkICpWH2eR3IJtbM=;
 b=CmRmbDjbRUQ86P9zrLSRQ6j3Nlln0Yo00ORc2tZO1HlNbBurhRuC4AyQ8sDj7SBODRdKAA4WM5LeJ1iPuCacWo4YO6Fw02iBJ1NIsI5I0rltmpIRpJClLqQGQ1e5cZ6J9EStptbTaSY9SWNfYLDTdOLoG+hDrSEewFkJ8jkypJptwbTNAtLdGbdXVs3XzIKRJOz7zLJ0Bo7LT0ZALvOFK6hKl4zEJp49tV8iWlDSPDmyTthQwhYOW43+36/pqALr29K5J+iP432j5sHVDCgkaFB+u6MqLwvYrDPX6lkyhQd+zb3/MJc9LbmlCbBOSADwR8bGfLqdZCz5KeNrnL+Auw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Wed, 6 Sep
 2023 06:28:26 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6745.034; Wed, 6 Sep 2023
 06:28:26 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
Thread-Index: AQHZ4GzOZsAZYNWKEkGkTsVBBr8ZoLANVdKA
Date: Wed, 6 Sep 2023 06:28:25 +0000
Message-ID: <6e81f0336fc24e7399920a20161ce3b1fa3a75b3.camel@intel.com>
References: <20230825081638.275795-1-luciano.coelho@intel.com>
 <bybk5m7d2u3str4ozmr6ezurt7jrdiswcrx3hncjt5yslcympo@yudjfjkgsr3s>
In-Reply-To: <bybk5m7d2u3str4ozmr6ezurt7jrdiswcrx3hncjt5yslcympo@yudjfjkgsr3s>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|DM4PR11MB7183:EE_
x-ms-office365-filtering-correlation-id: ae552ff0-d8d0-4d5f-c489-08dbaea279f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hx+CArkY38tL3HI/uWrYUylOII6nazPFdCrlbIMAi1kc7MP6SU+VdpvzPNfZ4GOlJyQiz9HyYjHjNqi4V3uO4kFqHxhX8aBOiyVfL7l51dVEHOFcVIaYFDDzrAjf6ONdFb0iE/QfQJ+pR00eN1DrbdIBmriu1v2iQwRdagqOvgwdSSWlzXaA0esTYe1SsClktclCEkokBw/rfOh/Wj1TlnKm3lXwyo0KxSt5G6xdIKFvVEd8cPI99WnD6kwBuoi9gGtThJw6hGCzzfwqEN6+740xulEY11Wpbg+UgaOkwDPQDTX5YiSEuZ6B1/eEfIe1XA5bjHiOm2H1Gk8MZvAxysSBzir0HHLyJl7h7M1Je43jZzS93Yb8NHR0HvUrIJzRnUakA+GkW5KZtWmXjA5EiPQY1nCX1nSRaBC1bkw65KaFu2mglY48GV8rjVKO4kpqFTyTwtoGeu0AjvIbUYHuP6BKFM4NWxIMfyLrzxrA3Lm8gQlGHl75EFpDmNz/mXlhgelYWYKfPeMWJM0qfJNzkrJc3X+fQ10NazjJdWzF+kEeNKyXUx/oMnMwW3VYvtudog8fGHG16IYoCd8LxBKnGaZEJR2T1UTXy5MkCllX+21TjBemst3bNlo8jfoJO25h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(136003)(376002)(186009)(1800799009)(451199024)(41300700001)(38100700002)(82960400001)(26005)(122000001)(71200400001)(86362001)(38070700005)(478600001)(2616005)(6506007)(6486002)(6512007)(66946007)(66476007)(76116006)(54906003)(316002)(91956017)(2906002)(37006003)(6636002)(66556008)(66446008)(36756003)(64756008)(4744005)(8676002)(8936002)(5660300002)(6862004)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDlZc0twTVdYVE1QWnNWQzgxVEppVHFPRXlDUVFrZm5kejhQdWhNdkUxWldE?=
 =?utf-8?B?aDJYZXI1eEVKbmRjOUU1K2dUeUhjS2hwdllTNFkvc1lzN2NsNDZLUDhlZ2Nl?=
 =?utf-8?B?V2pxZERkei9PbWhGM3V6SFUvVmd2NnRlakhXS05RSEZLajRuVkhWdnVTK2hr?=
 =?utf-8?B?VzhkYkc0YU5yTkppRGEyeWsyODhVM3NSYUE3eDQ0a0R4WjdyeUJHTDlOSVEv?=
 =?utf-8?B?eXVaWHBDVEdyK09CRkhHeUFiTHlpMDFubnRSbmhMcUZtZW1RUStTSk5XdGRJ?=
 =?utf-8?B?OU1IbVpwRFJXcDBvQXlHdjBseVBmcUo2K3cwdGpGZTEzRVVFMmdJS1VVN0Fw?=
 =?utf-8?B?SDJLTWhCd2FUa1hnd0dCQW5IVEtUaVRWaE5hK1U4U1I3YlV6NGFqdEV2aGZR?=
 =?utf-8?B?SllqbGxqcFdvcTVleWJmTTlCOEYrKzNSblpDWkwwMXlxWGZkejBhcHhrSUpP?=
 =?utf-8?B?Yk5mUE1vOHdOc2RoMWErRFFCV0lMMFBBdVdIbWhDcnZIYzlWcVhzUllxZmdj?=
 =?utf-8?B?emdqWGVoNVdyS2pZelV6eEpxejZoK0JUaHFQd095YndNdzVudEZoQ1NCZisw?=
 =?utf-8?B?UTMvK01sRDc5TTVNcm5sZjRGSWZ3RG80VDdVekVMWGtLdm02RE5LdU5DUmFO?=
 =?utf-8?B?bDBqZGV5SzhRL3FhTlhPUGMzdS9qWFV5Mlp6Tnc5QXRFUjNBeDlTNEMrbUlX?=
 =?utf-8?B?WDhqUWhuZjR4YTYvalpoSWczRDdWOTc3QVZkY2Z4czhLYmlSeU9wUU5nNHpa?=
 =?utf-8?B?WkhhNXZZOVhZSStZcHE3TTg3UkFYNGRrU2hrTEYvWVhLNjQrSXREZGtNMjlQ?=
 =?utf-8?B?b0I3b083V0ZZaysxVlhiZDBrVjVhN1EwUXhuNWIyc0xMZ1NwaGZKQ0pCa2xs?=
 =?utf-8?B?NUJxZWlpV3NWWmFPMnR2OFdSaXh3VXFMMHYybmpCTWtsU2RQU21VV1c2TE5o?=
 =?utf-8?B?a1I5blFjUDV2TkRRaktnc29TKzZSby9zQ3JOSGpVQTMrdmZ1azFFOWFiNWJa?=
 =?utf-8?B?MTE2NEtJY1hBVXRYb2M0UU1KODROUGlnTms4UUVKblUrUFpwei8raVZBdHE5?=
 =?utf-8?B?cXJiTWVkTlRLMUpWN0VxVlpNMmRFU25nUzFIQzV0d1pBdGxadnBYNk1xSVh3?=
 =?utf-8?B?aEZPcENydm53cVV0MVZPeThTVGdXUkhQSG5sYmhhSVVnOC96RTJXU05qa0V3?=
 =?utf-8?B?T3cyL1lGY3l3ZlFnajc0ajEydGJKdU84RUZIWHR3K24yUVhVc1FzNnJuZll5?=
 =?utf-8?B?ZWFYMThZMTdTRDlXNTJHS3FqYTlDL1ZuMWJjSlhZUE8vL2lDZEJ3ejF1MGVY?=
 =?utf-8?B?ZjBPUWZMdFE3VzhOSzdlNE9qMjBQeHhHWU53NXBJUDZteFowWGJpOUs5OThJ?=
 =?utf-8?B?Um04cnF6Y2Uwb1A3ZXhUUHBWZ2xHZ05vWUk1Q1lBcjBDUVFsUnFSRnoxUWNC?=
 =?utf-8?B?USs2QlE4dDlPV0hMWkJvbmt2THU1OGlIai9xYWd0TFRPc0tZQTd2ZWF4UnMz?=
 =?utf-8?B?SFlRYXBYa1AxME9hL0p1ZE9iRDRTWkVJM1JkODZ2eFNteGJDVGpxcG4xdmZL?=
 =?utf-8?B?Y1k5MTZQb2txUFJ4UCtCTjVuQ1JsZG1pMVdoeVAvZlVqV1NZbHdOTmJHdFZ5?=
 =?utf-8?B?N1lvRWRqRGI1MSt4b1JQbFRWWTh6QTFpU2dsMWRCeGM3Tnh2VytHTFBMSVpK?=
 =?utf-8?B?S0hEVG4xdGZrVmVwSGcrK2ZubDhXVXljOUNrenZNZEVLUURPbVIydlMrZTA4?=
 =?utf-8?B?N2NIV0t0aDFaMjRYUDFkNXp2MUdtUHYrczFiSEZCbDJhTVRoa0wxUlYxSkxC?=
 =?utf-8?B?SjlMT3VRUkN2bExVb3k1Rkpqb3FuYVgxOUc4dHVyYXBFY2RVYU41VEF1V3k4?=
 =?utf-8?B?SEhQRkRHZUg2eWg4YXR3VUxxUjNJRDN4b21WV0M1Z1F4Ukx1K0hydjFkYXVl?=
 =?utf-8?B?ZDQrK3NETFR0VUxkTjZoSlZ0eXhZR0hneU5Pa3ZvQjFrdStCbTFDMTlOQVR5?=
 =?utf-8?B?UTVPZElnQ0JxSjEyWk5wd0ZvbWdGNU9aNlFUei9SV0QwYm9BVk1IYzJmZEFX?=
 =?utf-8?B?RkQ1Y01qelhWRDlHa1JEZVhZVkd2T0NGNVlpblFYOE0yMVFMWFpwRVg0VXhp?=
 =?utf-8?B?UDlGSjIxdXU3Y0FIMnRnanNTQ0Q5YVRldUpTS3VSemZvS3RkMFBTbE40Y0Ry?=
 =?utf-8?B?OHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B4530EFE079A3143BD8C2C2BC72FD0EF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae552ff0-d8d0-4d5f-c489-08dbaea279f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2023 06:28:25.6406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LemaZEN435gt0aTR/qX1fj4/MESvOstODfY2KN+rvZilk0TzJFOZ35gBAp2bRoFBRp225J3+o2CgeYI2MT24FX5hTVNyVlloOrGVZDT63M8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7183
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
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
Cc: "suraj.kandpal@linux.intel.com" <suraj.kandpal@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA5LTA1IGF0IDE5OjQ5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIEZyaSwgQXVnIDI1LCAyMDIzIGF0IDExOjE2OjM0QU0gKzAzMDAsIEx1Y2EgQ29lbGhv
IHdyb3RlOg0KPiA+IEhpLA0KPiA+IA0KPiA+IEhlcmUgYXJlIGZvdXIgcGF0Y2hlcyB3aXRoIHNv
bWUgY2xlYW4tdXBzIGluIHRoZSBjb2RlIHRoYXQgaGFuZGxlcyB0aGUNCj4gPiBtYXggbGFuZSBj
b3VudCBvZiBUeXBlLUMgY29ubmVjdGlvbnMuDQo+ID4gDQo+ID4gVGhpcyBpcyBkb25lIG1vc3Rs
eSBpbiBwcmVwYXJhdGlvbiBmb3IgYSBuZXcgd2F5IHRvIHJlYWQgdGhlIHBpbg0KPiA+IGFzc2ln
bm1lbnRzIGFuZCBsYW5lIGNvdW50IGluIGZ1dHVyZSBkZXZpY2VzLg0KPiA+IA0KPiA+IEluIHYy
Og0KPiA+ICAgKiBGaXggc29tZSByZWJhc2luZyBkYW1hZ2UuDQo+ID4gDQo+ID4gSW4gdjM6DQo+
ID4gICAqIEZpeGVkICJhc3NpZ21lbnQiIHR5cG8sIGFzIHJlcG9ydGVkIGJ5IGNoZWNrcGF0Y2gu
DQo+ID4gDQo+ID4gSW4gdjQ6DQo+ID4gICAqIFJlYmFzZWQ7DQo+ID4gICAqIFJlbmFtZWQgcG9y
dF9tYXggdG8gbGFuZV9tYXggKEx1Y2FzJyBjb21tZW50KS4NCj4gPiANCj4gPiBQbGVhc2UgcmV2
aWV3Lg0KPiANCj4gQWxsIHBhdGNoZXMgYXJlIHJldmlld2VkLiBJIGxvb2tlZCB0byB0aGUgQ0kg
cmVzdWx0cyBhbmQgbm9uZSBvZiB0aGUNCj4gcmVncmVzc2lvbnMgc2VlbSByZWxhdGVkLg0KPiAN
Cj4gUHVzaGVkLiBUaGFua3MNCg0KR3JlYXQsIHRoYW5rcyBmb3IgY2hlY2tpbmcgYW5kIHB1c2hp
bmcsIEx1Y2FzIQ0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
