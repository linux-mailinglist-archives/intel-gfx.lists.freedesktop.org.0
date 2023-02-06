Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E53468BE54
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 14:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6FF10E3C8;
	Mon,  6 Feb 2023 13:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BCA10E3CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 13:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675690517; x=1707226517;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=HWZnh4PqoMTafj4K8twIPUBu893yskJaRskuFijCVRU=;
 b=aJ/nS9/U0aGEedAXU1hYfpXyCvjSPBiiq1kygAba0Wz2WeCsIrD7SwL5
 QvndwBoKsPssd7VYmVL8tSjsm/hig0zpCSCB3A9miOVNJ79ZjqEPUbLph
 gk91Xo71Z7+ykQBO8xtOgjKxDvgGMkmzcpT1YeFXZkixhlOHwh2Yaxp+E
 /8VgQwgwoBzN4W3vMS508141MZ8QP0wrPFca/ZCFaiN5f2ytxBCQtxdQh
 wMrNS++vNTmiZjraS1jQ5woLOSqjTrYZEgEfszTSy8fxv+L4sMFTFMHYr
 SReFUux34my48O+5jbflCjgW4ivy9qm6m9UjBOzMB3NhrSmUi5jA1DVcj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="308847433"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="308847433"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 05:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="666487690"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="666487690"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 06 Feb 2023 05:35:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 05:35:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 6 Feb 2023 05:35:15 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 6 Feb 2023 05:35:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q5kUAuMLnlWkBGFgUM/r6kvIHG3+11+KTufrWS8Qf/mUUZs8gdEuJJGjNM6ldWLLyeEIXIOOE5oNNfJvBr8G2NBGjZREUCWf32cqIlHednMP397acx+iP6EUJySm5laV6jtM3epBLkVg7PyFRCLlBT8zsJBAzayA+d3M7J6e9K1FRDxwL8vM4SBlDPPryVSrt8oJyiyMi6jKeeXLh2HdzKfVSrBhGdrNZ8YxJUPJeTyi0Sey/VXgEpv87aus3bPsW0waloD9R142qJom0E8q8BtuJ8fPtFaSpc6NN8r7uFhoN9A3ZiYRtzVT+N4YOQmgKywL0t0mt665L/atxNI9gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HWZnh4PqoMTafj4K8twIPUBu893yskJaRskuFijCVRU=;
 b=lO5QEL/NazAhjw6dad7CkPHaOwQ0t1IL5VQSfcG6jpuSZ6Nfw2hco/k1HiozROZuq7MyRyQ3Hu5vfKNsCo/S7JMEfCtv21pxt3aemN7jLp61RHAMEaF3SS0cRNPHU3pSgmwmP3TQDKzaIzjOR/j2XoibqeNDJyO0Z01W7k83g4DijA+Hedhtd9JWkRN+pKM8FnBG+XOwW/TqQ/KK1U3J6XgiYTwECJjsSNs0xMSP0sAq2QXh5LL2XzujdRSXjUbper0UpoXr7zh/VfI1+Gc/szoCqIcfTzh0PsWozxYhcY+5fYM2fwdZy/7w4gUCi87P6Q789CvNhMP/XqpnzgKoRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by SJ0PR11MB6719.namprd11.prod.outlook.com (2603:10b6:a03:478::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Mon, 6 Feb
 2023 13:35:08 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::cda4:1259:d243:b6fe]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::cda4:1259:d243:b6fe%9]) with mapi id 15.20.6064.034; Mon, 6 Feb 2023
 13:35:08 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "jsg@jsg.id.au" <jsg@jsg.id.au>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Add another EHL pci id
Thread-Index: AQHZOeS/5vDkVAocZkW1R9HSaCz/oq7B69kA
Date: Mon, 6 Feb 2023 13:35:08 +0000
Message-ID: <0a8662d812b91c6a5006090dae1023261a486fc0.camel@intel.com>
References: <20230206043727.46069-1-jsg@jsg.id.au>
In-Reply-To: <20230206043727.46069-1-jsg@jsg.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|SJ0PR11MB6719:EE_
x-ms-office365-filtering-correlation-id: f6782234-b5e5-4b28-cf77-08db0846f6a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tm+R7L7mNz0ektsNnra8KfWeGdWZobAO0tlmtk2nv5uQfDt8Os46x5zlUWksjHpOGp6Zv7wuq7x2ADxxsft/3aONkSkbirm97nw4tK2G8rRsdJGeiZ+0yfdLQ4yYpRWI3q+U0vHltavP8PVMSehe2Nkjzrq7jkKnPv0T6h7xIBlHv8ZfUT+iNPp6hg+ThQEakLWoS/JhMq/sC5u++lASDAh+izg5CQgE2hkjfgD3zfGsw01q2qmGCm8+6PxuVzPSgMqIpK5J7YUHd5qveZdKFu+lK+QJ6A0PLOpjPuMFvJU5rgeA7zx+C2IjKVEeidzWWqY3e+8UgTu46UecWXnMGKMvmi4KwAoQ3DUCrpYcfP1qMTB2Rk3cj3deHZ60TRjfX6EGgmlU/4r/IPPwFz/MufOJx6chhQsY+6nVgEg988XuVPO4w0aQ5dS8l+xjRVC67W6h6wvah9UWH1KXBYEm4Bif/Rq6R7L6rmlQijdMmeGeG5n89eaL90JFyxWnnTOfF2meXsRv7DIK4ztfnKGmW7RCRO+4/HL1WpKXnBuT56nzixNhyH+zJR55lcXUHs2jBiVRC2y4mNj/M8eN7c1L9487psRvT9dNKv1H60+R8tGVieY5Y9JPkahPiHP2fdsQ/pWDSTuGt3mkwXNCBCV5J6nlAkmLsDFQ8TE3F6+KkbzllAXNQOa1V6iAV51HZXguQN6fgKzB/zpCx0lmW2vDov3lGBdaa9WxfWkKXInC1Skkk5bd07ko+3r8PXQmIE5O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(346002)(136003)(376002)(366004)(451199018)(71200400001)(8676002)(66556008)(86362001)(36756003)(38070700005)(2906002)(66476007)(66446008)(110136005)(76116006)(64756008)(91956017)(66946007)(82960400001)(122000001)(316002)(186003)(26005)(6512007)(6506007)(2616005)(478600001)(41300700001)(4744005)(38100700002)(5660300002)(8936002)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elJCODVYcWRXZldKT3R3NDI2Z2dTZVJSaVJOandWbko5VTFOU1AwQkRzc3hP?=
 =?utf-8?B?V2liQ1M1OGNyOGhnV0hqVm42eFdBZ0pHQ29JS3M5cS9XcVdkNjdOQ0FzL1p3?=
 =?utf-8?B?TGVuRHl0QjdrOHVNK042dEExb0hKOTBIYVFXWWdIV1lYVkFOeHpBdmpBdE4x?=
 =?utf-8?B?bEorZGozYm1aQVloTE92aGg5c1VudzI4ejBhK25aS1dKWHlabEsrSzQxbjBj?=
 =?utf-8?B?K1ROMUdoTjNXWjFiWDA1aXBGMjdPbXp5UkFiMU0yWFlJN2NTNVBGL3F6WnNM?=
 =?utf-8?B?NXc1Mm1PL0dNK2lmSm5EaytDYXhWMTRvaTdmRHBIOUdvb3lkdk1veEhjTHdM?=
 =?utf-8?B?Y0d0WlBhdWdiaFhJSDVWRG5YZmJXWHNTODkxRDExcTVpRmlGTHI0SlNwYnlr?=
 =?utf-8?B?c0R2ZVgvMC9GazFiOVdVYThKMFEybFAzSW9aTzVVNXIvdHgxeUowUzFrclRj?=
 =?utf-8?B?ZUpHcWU2SkhJU0swWFhBeUtHVDdnWXFQajYxUFIxd2g1WitYLzY3MHl5MHpM?=
 =?utf-8?B?RmlQdW9vME04VGtIUURuTm91dHJjT282MkdGQ3RrLzJTK1VsOE4xMnRRRHkx?=
 =?utf-8?B?QmhXOVBXUnBmQndyZjcyd0dkMEl3Nm80aVhYRVM3c0x0cTJxUk92eEtKYWpu?=
 =?utf-8?B?Q0FBZnZ4Nm9uNU9xVHZtREc1ZWwwNTd4L3hucnZMQ2RUeHFwUisrUXZWMHYz?=
 =?utf-8?B?bXozUkwwcU5FWjc0L2VRdXdWVm9wcHE1R0NOS0hTZTZPbzRHZG5aSGN1VjBU?=
 =?utf-8?B?d2svZUhha0p2MmtrVFhYN1hpQXVoWENOc2NaSEZEUCtjRDBYZHV5WVJ2UlBi?=
 =?utf-8?B?aEhXNW0vOFlQalBUN3ZwMUkyRk05Z1k1N2tnYVVpOGtxS3BEUXBaaVNRb21O?=
 =?utf-8?B?RDkyYWNBZGN1ODE1ekx2SkJNV3BUdVkxRTRJa3hlTk0vcXNmTVNaL3FESzRQ?=
 =?utf-8?B?c2VwYzNMYXo2MyszZm5Xbi9rNXhsYTVtMjBsNHBXK05CNnZEeTFvMlNJcEJO?=
 =?utf-8?B?cWRTR1FOclNweit2K3RoQ2Q2Z3M1MHZvbXp3VUtHdFNjaGw1WDFxUjNDdG9p?=
 =?utf-8?B?enZPQXRTNzRnVG1sZlc1WmVuMTRvZCtxdEhKdmplaENyVUl4K3Y3NnB2ZHVU?=
 =?utf-8?B?VFhDcXpKaGRrd2ZBTzkrTFI2NDkycG10R0tJOTQ2WFQ1ZldBVEdKRy9OU28y?=
 =?utf-8?B?bWJ6azdCeldGVXpNR3kvUVZ2TWx2YjVwNkxQeDFhUEpwbGNqWUl3cGZkM3Yw?=
 =?utf-8?B?YlhBNFRxRVN4V2NPeSt5T3ljY2dyeGdHNjRpNFhUc2RuVzZ0UzIxYlVYblcw?=
 =?utf-8?B?VU9GREdMeG56Q0UvZ1V6UDV2cDR1MXBteHo4Uk9lNXN1TmFmem1wcWRDV0Uw?=
 =?utf-8?B?SEJkSWZyWGZNcS9QaFNkU3BrRVp3THlqTWFIU0NKSWZVdmswTzF1SWk5bjJN?=
 =?utf-8?B?UElZSWd1TnRhbWtCUlRZMFNXRzdJYWdEajNrUENuNTNrNFpRbTV6NGp3WmVy?=
 =?utf-8?B?ZTdjNXJoSHc1NFZseEdNeWpPaDVpVVdidWNGQkowVUwreTV3dGNiMjFPc3NV?=
 =?utf-8?B?cHhjR0pPcHBjZ3VLeXNCYUNwaGN5UWMvQnJGVFhjcWpvTUp4TUdXbVloZGR1?=
 =?utf-8?B?WCs3dDE1M25JMXNMQ3RPQnQzd1dMRDJLUzF5Z1BJa1RUS3ZuaVQzdGtJUkRZ?=
 =?utf-8?B?eG5UU1dYUnFXdFpwaVZnR0dXcVp4SEV5bG1NSDBwVGlxNGFaR2RCZ2MrVXNi?=
 =?utf-8?B?WlhKN0lvaFNweXF6MGxzMWRqVitpNzIrclArWitNSjdOdFNFMlNuVmVMWCtq?=
 =?utf-8?B?Q0xrV2ZVUjEwVzV5b1NHK3k2ZnJiYVVVYVVwdTRnR05HNmoreCs0dDhwRGxk?=
 =?utf-8?B?d0RidXdVZ0RQTFZqZE8xbklVZ3FRWWdSREtZY2EyWlYrNFg5WTlOcVRHNGdx?=
 =?utf-8?B?ZmVMVnJ6cTAweCtXOVZHRTF6dnlwemxhWnFqQVVCcFc1NUd3VWVKZS9XalFO?=
 =?utf-8?B?NVdlekVuby85cWFBOHZCT054Y1p2MUZ5M1dZeUE3UmZwOUo2NHNQajA2cU5S?=
 =?utf-8?B?bnB2aXpMUEhWL2JuSWxvRUhDSy80UExCdzI1N2pJYzZmUUI4NjRiUXhIRUps?=
 =?utf-8?B?ckVYaWc1Mm9aSHlqTWhBajN6QzVlWHdRRWFkM01Bd2RrcU1pTlB0VmJwMjBK?=
 =?utf-8?B?S3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3F303D63D5D3004D9E6BECCA51E0B7A3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6782234-b5e5-4b28-cf77-08db0846f6a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2023 13:35:08.1120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rLT45HEF1CZ390Yy4AZSOpAzMYrVFaHQo9Yr/CaoppIRcfsltCPRUCHzITxeG3tgfE9oa5kGJt8toLd9ldv8Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6719
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add another EHL pci id
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

T24gTW9uLCAyMDIzLTAyLTA2IGF0IDE1OjM3ICsxMTAwLCBKb25hdGhhbiBHcmF5IHdyb3RlOg0K
PiBkZXNjcmliZWQgYXMgIjMyIEV4ZWN1dGlvbiBVbml0IChFVSkgU3VwZXIgU0tVIiBpbjoNCj4g
SW50ZWwgQXRvbSB4NjAwMEUgU2VyaWVzLCBhbmQgSW50ZWwgUGVudGl1bSBhbmQgQ2VsZXJvbiBO
IGFuZA0KPiBKIFNlcmllcyBQcm9jZXNzb3JzIGZvciBJb1QgQXBwbGljYXRpb25zDQo+IERhdGFz
aGVldCwgVm9sdW1lIDENCj4gRG9jdW1lbnQgTnVtYmVyOiA2MzYxMTItMS42DQo+IA0KDQpSZXZp
ZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoN
Cj4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gR3JheSA8anNnQGpzZy5pZC5hdT4NCj4gLS0tDQo+
ICBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5o
IGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiBpbmRleCA0YTRjMTkwZjc2OTguLjkyMjA1
MDU0ZTU0MiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiArKysg
Yi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oDQo+IEBAIC01ODgsNiArNTg4LDcgQEANCj4gIAlJ
TlRFTF9WR0FfREVWSUNFKDB4NDU1MSwgaW5mbyksIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4
NDU1NSwgaW5mbyksIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4NDU1NywgaW5mbyksIFwNCj4g
KwlJTlRFTF9WR0FfREVWSUNFKDB4NDU3MCwgaW5mbyksIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNF
KDB4NDU3MSwgaW5mbykNCj4gIA0KPiAgLyogSlNMICovDQoNCg==
