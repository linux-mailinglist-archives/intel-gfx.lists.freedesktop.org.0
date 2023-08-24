Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFD4786D7E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB27610E523;
	Thu, 24 Aug 2023 11:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34CAD10E523
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692875649; x=1724411649;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Qe1M/MWLv/BjUtS5zOCWCzPyNIpPSkgY8QsFhZ39JZc=;
 b=PyhcGn3Xq/7dnnZmiTeBMS2dFhIJ30ObyAcmJkxhjGCI+lmiLsX8hfHU
 T2ImhiFGqCY4IN++ESwY8QFdIg8J+Qru+TO+NdVkh+JNdKGpQJEaH18Vm
 Bnf1+Vvyw3LCprvx43rBgq+SxKZvjfuhxm4Gn+fR6A5FPwRQrGe2LBpsQ
 wLFty3tMPHF32fIH6Sc6NUZynIlp3ruNxRJvbhVLt8YPfgYxHRdoXE36l
 /EkmGsIF/hNuXOVqOMvnvLFtahq/OPAanZ5iIkxzMhrcZn0ZICp20J2Oe
 8P1s4dtbjQMYM9o8LVLFLtTd4RjzzfeFQ4eBe+LMd/jRJPuHfvYwWRUjU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364585931"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364585931"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="740142875"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="740142875"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 24 Aug 2023 04:14:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:14:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:14:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:14:07 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:14:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDCdFFVLsw5LnI+SvfsG9KbMjc7pBxRYEScKYOwSe94jvlHl+JGyM+ZsCobPHK6EM/Puj05lPYwvDQhSXUdJm4RNtGQ6BSkbozbBGryEEWXw/hFRI4jWm6SVZ3DgYAK49zAFtPSdBdEsYMaTJvaSYaoUTQzB7C+afjTzoW2pcSQn0V9lW2BTbZoKmQGnd8oNY91B5y9o1Y1YjThKbIzxz7yG/S6tcPHMqVtQKklPARzBN9br1QAnpNQnCEpGD8a9McLDL0CyEMIYw8ISfyUv2LG44FgEunHOjbLnCr91d46c2qa9kpbp9H/uZ8Vt9CeC5cnjmhhjJBFrlmJsuu2ScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qe1M/MWLv/BjUtS5zOCWCzPyNIpPSkgY8QsFhZ39JZc=;
 b=OGM9lWg1odPw1G3R9fu0i+t2ldMYtHi/53IipnCYgL0xWjWdpZC9ZMOSX8lKav+3SFxO3y7HWzJYLCs/COo9iUNrSzViNWOCVj4Zt3fIx9yJdUd/3Ce7Mcs5BDPU9AyWJwlBWS2X2e7wfpXVS4baGo7K/snSCkxkk++EJ3NftUWIjYIb86kZhVGrm6MhbqW1DC4Gp2zipIeTq0k+Kp+B8ONLWuKYWleLvS5ILhvEGdW5TAbK1/+IWySTWopiR4H+Ua2ZGsGka+E3nnV7J95sRbqIPBC6m0wlknuJGTgre24mQH2LM9QEVmniRUvU5SHlj2DYYb5i78IaIce4hAcGfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SJ2PR11MB8471.namprd11.prod.outlook.com (2603:10b6:a03:578::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 11:14:05 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:14:05 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
Thread-Index: AQHZu8Qri1RTNphTMkaHwnMUz2bkNa/sxIxQgAy53gCAAAGZMIAAAKKA
Date: Thu, 24 Aug 2023 11:14:04 +0000
Message-ID: <e4c310183394956b6521a95de6ccb22d2cb4137c.camel@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-4-luciano.coelho@intel.com>
 <SN7PR11MB67506A441EBC25AC9A772180E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <916fa2bbb6b3a8571a0dcf3c681b7a142c7a3141.camel@intel.com>
 <SN7PR11MB6750E7D1CC8CA88473AE7D27E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750E7D1CC8CA88473AE7D27E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SJ2PR11MB8471:EE_
x-ms-office365-filtering-correlation-id: 2ea74bce-a4b4-41bb-f8f6-08dba4933a64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yh2bMFAOlegV8cGlfLZwYyyk5KTsUL3zMm808YnM/g0qq0Mw1doNmpyox/Q7wyHnpExJuEKzFaXjtV2MIiFiv2cPwLdXIAWT5D0E0YVXt/y6az175hCxgMXPRkCtkK6YhpnwrtqBeZWqX+AWPwU1sT+fDEbZRZwOmlWT5Zqul32xSmfkXUcA3u7hKaXk47Yr366qn8qCYamWjjHfesQZUd8K7U8HsQXkdi4KYOAC2Nr+QDkKTP6W3ZvF/3r3Dy4AH1aiCRdohvI6EUPmuHDv+utYuTBPav5iuICo4e6wjlRom71TJ9pbuQ6I9gxIyah8mw5m3lmfpX2PuE8wRwCDkmw2zARmskDLk9izsBT/wNTP4DUzipEOmxPxwGZAIKTMLjmhx0HzBfIHgykI16n5p+IbTQBNXgoJszEqAN9Fcm1ESKio6OgLfHxfOOblpGyncVvrkGNwBAGxxpft7IZR1Nz4CBtOzNBSxDmldr8xlo76M4j1atUbb2PHxbSn5p71VH/BQjdlilBpi2LR37rRuzq6N1f9S9SE0YPFH12mzRuveZswpPjrCq4LKXZTQt/Ce6rAs29FgTEl6CJ2gqdbUjjssU6SEtECwHQRffW+JRsiMvQ3Q7rM0RilojBcG7JV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(376002)(396003)(136003)(1800799009)(186009)(451199024)(66446008)(66476007)(64756008)(66946007)(66556008)(76116006)(316002)(82960400001)(122000001)(478600001)(110136005)(91956017)(26005)(38100700002)(38070700005)(71200400001)(41300700001)(6506007)(6486002)(86362001)(2906002)(6512007)(4326008)(8676002)(8936002)(83380400001)(2616005)(107886003)(5660300002)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUYwZTR0MFkrenFKbytZUlp1NGRObERPb1JjTHZuWEFpK1N1VnpVRW1hQWE3?=
 =?utf-8?B?bHhVNkhmbXBVdDhUMjB4ZXFrQWxua2lxV1hYVlRtRG9nSlZzeUZ4d0FrN1lI?=
 =?utf-8?B?bmdWaUgzQUtJekx2c1piWjA0eGlHYU5mcy9TTFdpR2VKem5mbFg2a3JmT2xp?=
 =?utf-8?B?L3NqTVhVMDRzNnpnYWNKeWp1THB0NG1WNlVQcUxiSThiOU5PVGExQnFva2xL?=
 =?utf-8?B?eHBzaXlMNHhVMkN0bFZ2TW9iemUrbDhZbFhCZFEvYjdHZ1NLSEQrSGFSQ2xG?=
 =?utf-8?B?dHJhSUlYN1ZKVk92MDVsRzBjWHJhQVFyTFM3dksxNFFJcWhPL3pvMzh5Q1VK?=
 =?utf-8?B?d21VUWtqaHBjMVAwb2dld2d4dXdhUk1CQ3hUdVpqVmlsSWVMTXEwV3RUVS9U?=
 =?utf-8?B?ekZNaU54WWpQYjg5Z05LNXd0OHFlRVBONWVzZEJpaTRCbEdoMG5lRWhaTUtU?=
 =?utf-8?B?MUFUTTJCNTJ4TG5UVnIwL2k0bS9oQ0wyRUNXR1hTdEFRVHpBMDBwWDdFaHRn?=
 =?utf-8?B?eEd6bWxXN1ZtRXpMS0VhVmlkYVZiTE5iUCtaWVkvNC9udXBiaDJvb05tTGFp?=
 =?utf-8?B?ZzRJZXI3dEF2cGQ1VWFjekZWUkJXc1hhMFExRE96eEhrc3l6QUJ1N05EWXFo?=
 =?utf-8?B?a2thVFFkdnpndTl6Y25DaHNKblBTa0x0L1NQR0UrMDlsWXVkb0RRYkdYaEY2?=
 =?utf-8?B?UVJDZXozbkhNN3JMdWZacUxJZjhFaWZkcUNHeG5kekVqRTdmMmNncmhNVm16?=
 =?utf-8?B?a0ZVSFB5WERFeExXQXllRUN6WS8rYW11Ry9TemdRQWNJbTVvZzAwQXZ5TGto?=
 =?utf-8?B?VmFUOHloRExDdkgxSG1RSUl5SkNod09NTk1DVDRDeG5kQUhWN2NGV1hYSE03?=
 =?utf-8?B?K2VxTGMxSFQ5UVU4WXcyUktJOVEwNUU0WHBORjZReUhXVWMvK2ZMb0ptejVu?=
 =?utf-8?B?T2RNd3R6Mm40UllYZm5VbVlPNHBZdVNPVlZueEhQQWRrczQrVHE4MlEvNHNS?=
 =?utf-8?B?SUpVZUxEVG5JbUpobTNPZDRQMGczQURVVjZGZmU1T0szOFNGZ1ZkZnVvRUJq?=
 =?utf-8?B?SmRVMm1PSUtLeW1aMlFWRnBBZEtVZHIrKzUrUXRUS05yMDVGRmt6anBZc1dG?=
 =?utf-8?B?YmNIbEhqM0UzdDRwdUd6TG5wTDZqMHErQ0JBMUFTenBKcWVRc3NaOURqa2dk?=
 =?utf-8?B?M1VtM04vOTJ1Vm5OdGJOU3h6dzRKVHY4UEU4SXRUNmJRK2RzYWR2UmVnRERl?=
 =?utf-8?B?ZXdRQjNFYnk1MEZlZGZ1TXJmZDlFWWhWUzgxZlU5a0pyZ1lFYTdBcHVtS2RC?=
 =?utf-8?B?KzZ1Qk50Q2ZHSHBQaGxLOHFyNCtYd3huRDY5dEtteGpJV2NwSVFuVm9YaHdO?=
 =?utf-8?B?VGNiVldnOE04TUxyamZrcHRGR2gzOGlGeThTOTYxL3RGMDh5ZGVlMk0yUlZ5?=
 =?utf-8?B?bnZ2a2wrZDBXb2RDTWJ6Vk0wL3d6RHExbUdKcW16clR6VTRLS215dUlTaENt?=
 =?utf-8?B?Wkxrek9pbld6b3hyV0E2UGVkSExUa0d4QmV1L3lNeElCa3dxWndZcjV2OExE?=
 =?utf-8?B?WWswVVBTWEh5alZQcmhTWHBydzN3WjVjYTNTa3A1NjhoUmtzREFieFg3WjFR?=
 =?utf-8?B?bEJFa1Q2aitWcUp2Z1UrUUUrLzdKOG5RUVpQaXk2b0dNUGZhdEhHdXlhYno4?=
 =?utf-8?B?cjA1OVVCZVZ3Z3Y1OTUzTHdQZDJYNmJSZlZDY1hWbWliTHp1ZTluTFNjZ0Zy?=
 =?utf-8?B?UUFveCt0ZjYxd0h5bEl1ZEc3dkNIVEdlWG5jcW4vNXdjc0xHT2hhVllvZTdo?=
 =?utf-8?B?OVEzRVhDMnVkamZ0aTVKSE1wWm5BcnRMRG1mbFZyVGlkaVBtZldhZS9Ib1JC?=
 =?utf-8?B?a1pHaDBUbXFidU5lTHZiZU1qNEFMdkNWdkhlcm1oTW44eUJWTTZicVkrSzFz?=
 =?utf-8?B?NEpUMlJ5L3d6R2NHT01DN2VBR1BLdExvMjZvc2RoaGU0T3RLb0Irbmg1d0V1?=
 =?utf-8?B?dDd5TmVpSGFpK3ZLVERPeDF2R3lGQUJHNlFDenQ1VzhEeENiU1Jmc2dYN1B5?=
 =?utf-8?B?d1VOZUZYM1RMMFo4dnh4UVNaR1Q0elNmdnVkT1VBR0g4dy9qZTBDN1UweHYx?=
 =?utf-8?B?MzBxZVRqeHh0dW1pWVo3M1ozMWkyTUE5cFdXalg0NjhoekNERG5zdEVzUVB4?=
 =?utf-8?B?Y3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DDCCDE66A5F374478C5DA2A111853E53@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ea74bce-a4b4-41bb-f8f6-08dba4933a64
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:14:04.9792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AGY8e0mUIgE5Bq6GZSYC/POzF+EedGXAG/Uw/Zz78AupSQvsvqi5/zTLg3/e+a7fEbpcFNaDPnUpG1pce2tsgGVqQWXCHuQuKtY9oLtLAfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8471
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA4LTI0IGF0IDExOjEyICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBPbiBXZWQsIDIwMjMtMDgtMTYgYXQgMDg6NTQgKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdy
b3RlOg0KPiA+ID4gPiBUaGlzIG1ha2VzIHRoZSBjb2RlIGEgYml0IG1vcmUgc3ltbWV0cmljIGFu
ZCByZWFkYWJsZSwNCj4gPiA+ID4gZXNwZWNpYWxseQ0KPiA+ID4gPiB3aGVuIHdlIHN0YXJ0IGFk
ZGluZyBtb3JlIGRpc3BsYXkgdmVyc2lvbi1zcGVjaWZpYw0KPiA+ID4gPiBhbHRlcm5hdGl2ZXMu
DQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5j
b2VsaG9AaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAzMiArKysrKysrKysrKysrKystLQ0KPiA+ID4gPiAt
LS0tDQo+ID4gPiA+IC0tLS0NCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9u
cygrKSwgMTMgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gPiA+IGluZGV4IGRlODQ4YjMyOWY0
Yi4uNDNiOGVlYmEyNmY4IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gPiA+IEBAIC0zMTEsMjMgKzMxMSwxMiBAQCBzdGF0aWMg
aW50DQo+ID4gPiA+IG10bF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4gPiA+
ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gPiA+ID4gwqAJfQ0KPiA+ID4gPiDC
oH0NCj4gPiA+ID4gDQo+ID4gPiA+IC1pbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291
bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ID4gPiAqZGlnX3BvcnQpDQo+ID4gPiA+
ICtzdGF0aWMgaW50IGludGVsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdA0KPiA+
ID4gPiBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gPiA+ID4gKypkaWdfcG9ydCkNCj4gPiA+ID4gwqB7
DQo+ID4gPiA+IMKgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdf
cG9ydC0NCj4gPiA+ID4gPiBiYXNlLmJhc2UuZGV2KTsNCj4gPiA+ID4gLQlzdHJ1Y3QgaW50ZWxf
dGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4gPiA+ID4gLQllbnVtIHBoeSBw
aHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBkaWdfcG9ydC0NCj4gPiA+ID4gPiBiYXNlLnBv
cnQpOw0KPiA+ID4gPiDCoAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gPiA+ID4gLQl1MzIg
bGFuZV9tYXNrOw0KPiA+ID4gPiAtDQo+ID4gPiA+IC0JaWYgKCFpbnRlbF9waHlfaXNfdGMoaTkx
NSwgcGh5KSB8fCB0Yy0+bW9kZSAhPQ0KPiA+ID4gPiBUQ19QT1JUX0RQX0FMVCkNCj4gPiA+ID4g
LQkJcmV0dXJuIDQ7DQo+ID4gPiA+ICsJdTMyIGxhbmVfbWFzayA9IDA7DQo+ID4gPiA+IA0KPiA+
ID4gPiAtCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiA+ID4gPiAtDQo+ID4gPiA+IC0J
aWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0KQ0KPiA+ID4gPiAtCQlyZXR1cm4NCj4gPiA+ID4g
bXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KGRpZ19wb3J0KTsNCj4gPiA+ID4gLQ0KPiA+
ID4gPiAtCWxhbmVfbWFzayA9IDA7DQo+ID4gPiA+IMKgCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dl
cihpOTE1LA0KPiA+ID4gPiBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLA0KPiA+ID4gPiB3YWtl
cmVmKQ0KPiA+ID4gPiDCoAkJbGFuZV9tYXNrID0NCj4gPiA+ID4gaW50ZWxfdGNfcG9ydF9nZXRf
bGFuZV9tYXNrKGRpZ19wb3J0KTsNCj4gPiA+ID4gDQo+ID4gPiA+IEBAIC0zNDgsNiArMzM3LDIz
IEBAIGludA0KPiA+ID4gPiBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QN
Cj4gPiA+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gPiA+ID4gwqAJfQ0KPiA+
ID4gPiDCoH0NCj4gPiA+ID4gDQo+ID4gPiA+ICtpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xh
bmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ID4gPiArKmRpZ19wb3J0KSB7
DQo+ID4gPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19w
b3J0LQ0KPiA+ID4gPiA+IGJhc2UuYmFzZS5kZXYpOw0KPiA+ID4gPiArCXN0cnVjdCBpbnRlbF90
Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQpOw0KPiA+ID4gPiArCWVudW0gcGh5IHBo
eSA9IGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIGRpZ19wb3J0LQ0KPiA+ID4gPiA+IGJhc2UucG9y
dCk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwlpZiAoIWludGVsX3BoeV9pc190YyhpOTE1LCBwaHkp
IHx8IHRjLT5tb2RlICE9DQo+ID4gPiA+IFRDX1BPUlRfRFBfQUxUKQ0KPiA+ID4gPiArCQlyZXR1
cm4gNDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0K
PiA+ID4gPiArDQo+ID4gPiA+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0KQ0KPiA+ID4g
PiArCQlyZXR1cm4NCj4gPiA+ID4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KGRpZ19w
b3J0KTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCXJldHVybiBpbnRlbF90Y19wb3J0X2dldF9tYXhf
bGFuZV9jb3VudChkaWdfcG9ydCk7DQo+ID4gPiA+ICt9DQo+ID4gPiANCj4gPiA+IExvb2tpbmcg
YXQgdGhpcyBJIHRoaW5rIHdlIGhhdmUgbW9yZSBzY29wZSBvZiBvcHRpbWl6YXRpb24gaGVyZSBJ
DQo+ID4gPiB0aGluayB3ZSBjYW4gZ28gYWJvdXQgaXQgaW4gdGhlIGZvbGxvd2luZyB3YXkNCj4g
PiA+IA0KPiA+ID4gaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQNCj4gPiA+IGFscmVh
ZHkgY2FsbHMNCj4gPiA+IHdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihpOTE1LCBQT1dFUl9ET01B
SU5fRElTUExBWV9DT1JFLA0KPiA+ID4gd2FrZXJlZikNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbGFuZV9tYXNrID0NCj4gPiA+IGludGVsX3RjX3BvcnRfZ2V0X2xhbmVf
bWFzayhkaWdfcG9ydCk7DQo+ID4gPiANCj4gPiA+IHdoaWNoIHdlIGFsc28gZHVwbGljYXRlIGlu
ICBtdGxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnRfbWFzaw0KPiA+ID4gKG5vdyBtdGxfdGNf
cG9ydF9nZXRfbWF4X2xhbmVfY291bnQpIGFuZCB0aGUgb25seSBkaWZmZXJlbmNlDQo+ID4gPiBi
ZXR3ZWVuDQo+ID4gPiB0aGVtIElzIHRoZSBzd2l0Y2ggY2FzZSB3aGF0IGlmIHdlIGhhdmUgYSBm
dW5jdGlvbiBvciByZXB1cnBvc2UNCj4gPiA+IG10bF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3Vu
dCB0byBvbmx5IGhhdmUgdGhlIHN3aXRjaCBjYXNlIGJsb2NrDQo+ID4gPiB3aXRoDQo+ID4gPiBh
c3NpZ25tZW50IHZhcmllZCBieSBkaXNwbGF5IHZlcnNpb24gYW5kIGNhbGwgaXQgYWZ0ZXINCj4g
PiA+IGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzaw0KPiA+ID4gDQo+ID4gPiBtYXliZSBhbHNv
IG1vdmUgdGhlIGxlZ2FjeSBzd2l0Y2ggY2FzZSBpbiBpdHMgb3duIGZ1bmN0aW9uPw0KPiA+IA0K
PiA+IFRoaXMgd291bGQgYmUgYW5vdGhlciBvcHRpb24sIGJ1dCBJIHRoaW5rIGl0J3MgbmljZXIg
dG8ga2VlcCB0aGluZ3MNCj4gPiB2ZXJ5IGlzb2xhdGVkDQo+ID4gZnJvbSBlYWNoIG90aGVyIGFu
ZCB0aGlzIHRpbnkgY29kZSBkdXBsaWNhdGlvbiBpcyBub3QgdG9vIGJhZC4NCj4gPiANCj4gPiBF
c3BlY2lhbGx5IGJlY2F1c2UgbGF0ZXIsIGFzIHlvdSBjYW4gc2VlIGluIG15IExOTCBwYXRjaCB0
aGF0IEx1Y2FzDQo+ID4gc2VudCBvdXRbMV0NCj4gPiB3ZSBoYXZlIGFub3RoZXIgY29tYmluYXRp
b24gaW4gYSBuZXcgZnVuY3Rpb24uICBTbyB3ZSBoYXZlOg0KPiA+IA0KPiA+IGludGVsX3RjX3Bv
cnRfZ2V0X21heF9sYW5lX2NvdW50KCk7DQo+ID4gCWludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFz
aygpOw0KPiA+IAlzd2l0Y2ggd2l0aCBsYW5lX21hc2s7DQo+ID4gDQo+ID4gbWx0X3RjX3BvcnRf
Z2V0X2xhbmVfbWFzayhkaWdfcG9ydCk7DQo+ID4gCWludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3Np
Z25tZW50X21hc2soKTsNCj4gPiAJc3dpdGNoIHdpdGggcGluX21hc2s7DQo+ID4gDQo+ID4gbG5s
X3RjX3BvcnRfZ2V0X2xhbmVfbWFzaygpOg0KPiA+IAlpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUs
IFRDU1NfRERJX1NUQVRVUyh0Y19wb3J0KSk7DQo+ID4gCXN3aXRjaCB3aXRoIHBpbl9hc3NpZ25t
ZW50Ow0KPiA+IA0KPiA+IA0KPiA+IFNvIG5vdyB3ZSBoYXZlIDMgZGlmZmVyZW50IHdheXMgdG8g
cmVhZCBhbmQgdHdvIGRpZmZlcmVudCB3YXlzIHRvDQo+ID4gcGFyc2UgKHdpdGgNCj4gPiB0aGUg
c3dpdGNoLWNhc2UpLiAgSSB0aGluayBpdCdzIGEgbG90IGNsZWFuZXIgdG8ga2VlcCB0aGlzIGFs
bA0KPiA+IHNlcGFyYXRlIHRoYW4gdG8gdHJ5DQo+ID4gdG8gcmV1c2UgdGhlc2Ugc21hbGwgcGll
Y2VzIG9mIGNvZGUsIHdoaWNoIHdvdWxkIG1ha2UgaXQgYSBiaXQNCj4gPiBoYXJkZXIgdG8gcmVh
ZC4NCj4gPiANCj4gPiBNYWtlcyBzZW5zZT8NCj4gDQo+IEdvb2Qgd2l0aCBpdA0KPiANCj4gUmV2
aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQpUaGFu
a3MsIFN1cmFqIQ0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
