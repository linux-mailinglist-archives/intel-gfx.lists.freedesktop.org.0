Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 932AC79AB63
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 22:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BB310E1CF;
	Mon, 11 Sep 2023 20:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A36610E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 20:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694465578; x=1726001578;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hTRn9J9J8Nx6WOIWqSFUO6hkVNsbmEO8nYpZbnP1/SU=;
 b=ie1VAOmGezT5cZzik0xyDLjWtggEEp03u9DA351DONrd0d7IEuHZZpvM
 53urk8TuNiO9sEdtUPf2tdtaH+5deZ6CG6F/vlyQMyNVxOFTrWl3QUOTx
 gR0mMrVFnbvO1iE+DutxlwSMEV1yJHDhsFgpCWEs0fhH8o0JUhxdqN22M
 g7gGneG/e41XauBf3WcgrafCpTspSA1hKyLguB4kGOrFrNUrQQrRGPuvM
 vqeiVY3PKmd1bazQDzK/ZfUTgfRLbm/mZByjbzgUrDEV6/mQB53uh0sO/
 kvKVCnx/vrHwo4EIsIvrsDHoSJJJ7e126tMrI+GpErMtJz6r5uYbUg543 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="363234265"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="363234265"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 13:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="736898084"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="736898084"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 13:52:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:52:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 13:52:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 13:52:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1EQDdeO+qNaYjbmyYYf3gj7Fro0xXQJ2kMpx2vmKt3sOwOiTsWgnx525GiuAWRyq4CEZyU7e90XSgq45HJy9YXpcX3+0Azr5AGa98RoZlIA0VK1C6f2YZCaLT4CUksC4QW5FyFUEARi+0iEGxJX0voPFTxkvIRSfXlZbURKklLr4/gJB0k/qLvl/F+x8rCqTcHOTcbFR4Wjwdv7qwST8RqvB3jlNCx2BZH5pkGJGmjnL6R6OcIDFbQEbIUBci0Z5iwx5csk8aUlEwadkhUTa1PaUOO7uVwseGxd3BwLK2YdEJpBeNg1cJR3JgwXolM8HyU5Vl7C+HMFQE3X4Wn4vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hTRn9J9J8Nx6WOIWqSFUO6hkVNsbmEO8nYpZbnP1/SU=;
 b=kQ8I+H9GtN4EYOFast2vgl43UKL3fkVqjWAnl+8fwG/y96FcA7azCFqFVJBRStY65/8kAclgy9RshbsrCpwTGMjwzTbYnlS+oA4ONBhHO1dsFs2b5ADT2IXeG/ImOkUcGXi5PvzBFTFqVlT1loWjk+jWiOD3iymsPkAcSFtyONSZaHI4mJcSz5AAGr3Zs3PDzvQN8PeEMR53Uc4XypAWyY14y4G/RFzfv38ZW1lLYdeYPlgBdUOCqV49GV9I+fbugAcmms9/bTZM90UTewoxyxbDTMoPlUOK19VKsgIYb7xHOdb8s4pCW6Jg8X/FeZ+SBZ+P3sPDlFfT9vjIkmoYoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7622.namprd11.prod.outlook.com (2603:10b6:8:144::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Mon, 11 Sep 2023 20:52:18 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 20:52:18 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 08/19] drm/i915/dsb: Introduce
 intel_dsb_noop()
Thread-Index: AQHZmKtS8SJhTTC5b0WM0MxM67hVP7AWsiFw
Date: Mon, 11 Sep 2023 20:52:18 +0000
Message-ID: <DM4PR11MB6360A3EA06C1E96BA978CC8DF4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7622:EE_
x-ms-office365-filtering-correlation-id: fa9da203-19e5-4a9f-0f97-08dbb308fcb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EIGlCkciMvPWy8kU2lXmluQV3VP6YmnITh9Ksi0/CUjrlALq6ObmhEXuAHpbXMA25e0RwHxNgMGPfaJ3/1DUm0Kf0OlQPZRbD67BET3I70Su7n3aoXdt3yYrSlKobAHUcBCzJp8p+0xtkJZSnI/Vc+kDgVZE/10w9xPpIxrY2H0cS8+YZYNIPZg2lGv+P0zezCYfl/Rjd9fO7aLGnLBBt45XFcJO3f3u+2VagJOvrhN1C5h0QlXsENaXbZaeqNpsEcDex6d0VpABMPWUc5uptm1/kqyLU3qL1cNwz7qPM6A3nBMMp29F5tkU8KEurQQdBMoVheWoZ9qi//gzIZD7/dHdxEvJVTkuwsSo853Z4SkmnBzgwFdFgZ/sWghMvmG/9vD5qrV5J8dUpSJQaIwCV+K94dFzCWXkzqFXYeHveHtpXi5GzX3QgCkZcKcfISdAkZ+iYZRkCURAXuPcuVMyLvK+hLR16NNu12zLojm0xwYOVBqY9zgSWlLtBtjIfVVJzf7dWEl0u/Sr2Q5K49JyIt3MEBV3KA24pfXjvGuC9iVHs80pEks6YBpmLo7ly91ICWQtYFpvKB2KMSAD1PmfUROtDbqQw7AHv37a/y87k7VI3ThZkII9s4vr4phaCwM6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(39860400002)(366004)(1800799009)(186009)(451199024)(41300700001)(9686003)(6506007)(71200400001)(53546011)(7696005)(83380400001)(478600001)(110136005)(2906002)(26005)(64756008)(66476007)(66946007)(316002)(8676002)(8936002)(66446008)(76116006)(52536014)(66556008)(33656002)(86362001)(38100700002)(38070700005)(55016003)(122000001)(5660300002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWoydVR4NzQ1bTA4UGpCNXNPTktVKzlhWk40WFg5aThTVHlVK3IrdksyenZR?=
 =?utf-8?B?WUxRYzNQcEJTd3ZSYWVocnJJeE40RWxUV2JSVVU3dTJJanpJai9tTDQ5T08x?=
 =?utf-8?B?NTVqdmJQMzNKOHBBMWhEMW5rZUlLcFJ4T2VZa1ZLQmVpUEZFcU9naCswVUhm?=
 =?utf-8?B?NDRCeVhaZ1FTTjc2YlM4dDdxWk5tNnBRYzZNNkFQV0lIQ2QxTmpVdmxsSmU4?=
 =?utf-8?B?MWUrWnVKdmFsRUdPMDNzMDcyY1dFWmgyWHIrSFFwMEdVUm12OHJ5eHZiV2Nj?=
 =?utf-8?B?M3JuU0dydnZlN2VBc2h1dHFldTV6QmszMFJ6M2RKUVQ5b3dvK1FESTdKSFZZ?=
 =?utf-8?B?NklSNStMUzVUQlNlYkdld3FjYXVDVDIvLzhDMmEvdkZaK0R6amZqUFlHWENn?=
 =?utf-8?B?MXNQb0JtblJJa1V3bWFwdjJMd043QmZrR1h0U3VmdHFOTXlKdEFhMGdheGg1?=
 =?utf-8?B?UCtRTkNTbWozbVl6MkRIZE1nSDVHakFEMThLQUlwU09zWkVTYXZJRXJVN2Vk?=
 =?utf-8?B?dFJ1REFoTW9hb3VLbnpidkhuM0dSMVpSc0VBYnJmMlBIbUtiVnZVYmwxalIw?=
 =?utf-8?B?eFdjQkRpN0VCMUl2dnlaTHFsM1p3SlFJUHhBdXQySjJoeXpxM3VCZDNvQmU3?=
 =?utf-8?B?N1FZaThSam52dG1GNVVjOU5NWDU5MEEwNGtYZDNuYlNCc0U1d28vczZuTzgy?=
 =?utf-8?B?SEdmODVLNzgwL0cvTk1YaXVYVmdQOHU1bTBYcXVLQURLRjMxUmlYRk1uQUNN?=
 =?utf-8?B?aWQ4b3lBSVhZY2toczRzaDVBUGlkbHVpNHY4NGVqWFhTTVpQZXF3T1Mxcy95?=
 =?utf-8?B?dU9BNmRqL21WalZ3ZDVoWjlBelB3Y0xqY1ZwYlZybG1ZMDVyR3R6NVFISnZy?=
 =?utf-8?B?SlhLSDg1NjE2dVNzZzRpNjFPQ3diWjRXL2NBM2R3Zy92UkxjYnJ3MlZ0cGpK?=
 =?utf-8?B?Y1ZOTTd5WTZhSW9wY082SWprWHV2ZllWK3A2L3grYnQ2Vk1xRUNhYURWMEtX?=
 =?utf-8?B?U3QzWTlUOEthaTlQMVZDcEI3MThLcnhPd3hvSGp0UklFM3dKMms4Y2d1Qnc1?=
 =?utf-8?B?T3FwVlRuTTNYelBrV245U0hBRHFaK1RnUWliTmZ1aWxmNmdLY3FESnowOGFO?=
 =?utf-8?B?cCtTWml0LzNvdHhqMXZWdVdma0lyYlU0K1pyVHk3cWdJR1ZxREdhbWtINU5W?=
 =?utf-8?B?NFZFUlZtRXgvTTYxUm0yYTdCWjFEOXlMdlhUTGZwcVlsT0ZFYzJadGhQNHNx?=
 =?utf-8?B?YVBsY21Gcm1ueVJhQmZsaytDUElNUjVVRGd0K0kxU0tGbFhRcUNsVVhKZ2VB?=
 =?utf-8?B?dGNDc1V3dmlJNzE3ZVJJZGFTUVMvS3Q5ZkplcERxL2dieHg4cDduVFpBQ3Ey?=
 =?utf-8?B?RWZQQXh1QjlMeDZ0YnRQNklsRTFqSlFkUUZXenI5cm91UE5xNlZnSjZlSUI4?=
 =?utf-8?B?cUpLc2xya3diTzdRbDdkcmVsQ3lxZWZYdGdmd09zaFFJK3F1dnU5ZnErTHdq?=
 =?utf-8?B?MGVUUWhmS2I4aElNeEd5NFQ1bnZuUlFBN1hIZFc5a2k0TlA3T0RhRjViL3Zz?=
 =?utf-8?B?U0RDQzJtMzBrYmV2MFhlK0RSM2ZxYzJUQU9kTWQ5UkplQ0o4cmxEUGNvdFBN?=
 =?utf-8?B?QnFXSThFeWpRajdheTBLbEUvdlhOdnZTVmhpdzdlK1Roc1JKR1VyaW9MRXNp?=
 =?utf-8?B?R09ZOEJoRnhuVms5UE95YXdjVUNxWFRsMFkxNXFGa0JpaXlaMDdwd0JXSGxU?=
 =?utf-8?B?ajR3TzRjb2h0SGJOM1dLbDk5YlppSGZtQTBudGFrVWVOMGRESUJmRk9qaC8w?=
 =?utf-8?B?MVRTQjkxZ3ZaNzI5eVh4K3hFTkJuOE9SV1ZwT2M0SFYyMFpQd25DNG1uY3Vs?=
 =?utf-8?B?Umt6WER4QXFaR096WU1EM3ZTVVdHdHFGcnovZ29yR1lyK3NiOVBELzVPTld6?=
 =?utf-8?B?TWp3eVlZbFBxNU9sMUVUeGNOT1I3ZXlsMzlIa2JObE1jbzVJTitWbmF5Q3Y2?=
 =?utf-8?B?Q0JCN0NwWklES2ZyaVdiSnA0Ri9hL0ZGcFYzVlNqRzA2VEtVUGt3YXpWUE95?=
 =?utf-8?B?Ym42Vml2QndlNm15ejRPbkFJVHAwcy9RQ2lUVWZmQVpSQ2RFRStCMTJtWUQz?=
 =?utf-8?Q?DSEfTigN2lRouI32UK0JmP2l6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa9da203-19e5-4a9f-0f97-08dbb308fcb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 20:52:18.3770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yLvgTeVRkfFbxnX+xkhbhdleG+SR8/1xhf2zOL8H476FWMn8c7ZRMvag+sIOZhx2BwupOg+euXsuaFpoOPB2mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 08/19] drm/i915/dsb: Introduce
 intel_dsb_noop()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAwOC8xOV0gZHJtL2k5MTUvZHNiOiBJbnRyb2R1Y2UgaW50ZWxfZHNiX25vb3Ao
KQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gDQo+IEFkZCBhIGhlbHBlciBmb3IgZW1pdHRpbmcgYSBudW1iZXIgb2YgRFNCIE5P
T1BzIGNvbW1hbmRzLg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFu
a2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgOSArKysrKysrKysNCj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8IDEgKw0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggMjJjNzE2ZWU3NWUyLi40ZWY3OTljMDg3YjQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtMjM0LDYg
KzIzNCwxNSBAQCB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNi
LA0KPiAgCX0NCj4gIH0NCj4gDQo+ICt2b2lkIGludGVsX2RzYl9ub29wKHN0cnVjdCBpbnRlbF9k
c2IgKmRzYiwgaW50IGNvdW50KSB7DQo+ICsJaW50IGk7DQo+ICsNCj4gKwlmb3IgKGkgPSAwOyBp
IDwgY291bnQ7IGkrKykNCj4gKwkJaW50ZWxfZHNiX2VtaXQoZHNiLCAwLA0KPiArCQkJICAgICAg
IERTQl9PUENPREVfTk9PUCA8PCBEU0JfT1BDT0RFX1NISUZUKTsgfQ0KPiArDQo+ICBzdGF0aWMg
dm9pZCBpbnRlbF9kc2JfYWxpZ25fdGFpbChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpICB7DQo+ICAJ
dTMyIGFsaWduZWRfdGFpbCwgdGFpbDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5oDQo+IGluZGV4IGI4MTQ4YjQ3MDIyZC4uNWEwOGJjMjFiZWRhIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gQEAgLTE5LDYgKzE5
LDcgQEAgdm9pZCBpbnRlbF9kc2JfZmluaXNoKHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7ICB2b2lk
DQo+IGludGVsX2RzYl9jbGVhbnVwKHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7ICB2b2lkIGludGVs
X2RzYl9yZWdfd3JpdGUoc3RydWN0DQo+IGludGVsX2RzYiAqZHNiLA0KPiAgCQkJIGk5MTVfcmVn
X3QgcmVnLCB1MzIgdmFsKTsNCj4gK3ZvaWQgaW50ZWxfZHNiX25vb3Aoc3RydWN0IGludGVsX2Rz
YiAqZHNiLCBpbnQgY291bnQpOw0KPiAgdm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRl
bF9kc2IgKmRzYiwNCj4gIAkJICAgICAgYm9vbCB3YWl0X2Zvcl92YmxhbmspOw0KPiAgdm9pZCBp
bnRlbF9kc2Jfd2FpdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOw0KPiAtLQ0KPiAyLjM5LjMNCg0K
