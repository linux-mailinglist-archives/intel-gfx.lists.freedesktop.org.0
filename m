Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE0768BFA
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 08:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FFF10E1A7;
	Mon, 31 Jul 2023 06:26:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F2310E1A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690784812; x=1722320812;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kxiRHEmo0CiQVaDt1UbwUoi0jpMqXQktkvtUC0VSjxc=;
 b=cXB78aihE1ELmjySiTVChJLAalH4SgD2DlYN3uuVi28W0c0+cJ0W63t8
 AT2Z+AyM5iL1/qxzDTCtlpNpnilyuoYSxlHZCru9wM6Xn2fCa42B46C2/
 9PwFvAvgobeCAYE4XGm5vxZZSxHmDHT3gEHBftU8jhpcHmlMHKechOCUU
 kgJ+AXbWRxIQtxTmgQ0UJMv6FG6bs5L4R6OZJXLwER00TubK4b9S7USMP
 92nXybskqtTfhau2PjtcSLT09B2R+sEAfSLwZxAU5DF15kQLrsOF4cSEu
 wWn9Q2MHPMB8DFCHt6KLtrT/F/T5jCQXQmtplQR63A3Dh7ca5LZjrjGdq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="349232998"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="349232998"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 23:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="818223266"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="818223266"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jul 2023 23:26:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 23:26:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 23:26:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 30 Jul 2023 23:26:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 30 Jul 2023 23:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uj9T1xymJk6AYPsjtsVuXkLOgGJPGnOXV+uv3gGj1bgwaAapg/WW2afEocxYSriT0+yjBitzSTzwfHijx/tUxVy3nKC1DlSTIwttS+aod/wQL1E3AgyM8G1hm5upDiwki2m9UCzBzXXFPk7eRRUzz7QH/m9B01uUBiqM3aeRosn28mxmH7VIiTIGJ/rYVBhf3owdObMJ/xbYtOFASsWB8lZKnbNhwOD8VX0wdUOZEaEw7M7B6UcgHbsac+G22ggahwnpKLZLK+Jm0FjJ/c7Z/kG7+oao8AVJmCqkCKVmsRcVZhJKQpRQUzgCLrPB4ej56qv9Pq71WaTfCZhZp+CI8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kxiRHEmo0CiQVaDt1UbwUoi0jpMqXQktkvtUC0VSjxc=;
 b=ODA3PLy3QXa3BNxY+kEm/PvH1tCXy7Uy8aKasYcvuxzlgiAe785FmgC9FfpRKY4sqp3/g6Jtioc+z7LnfxQM6vt+XluCEu1QLM3kr0f5EKCVyLteIEgIjvq5npf5EpfrHhUkFJpBHMes6L4y7QtugwCny5ve77Xru1JvbSkYxiW3IQAd14eTxSjNBZPawoXXpCIGS6PT3FLK+ULjUJ2GiB/sBgiK6HNqRr2+iD13wjmvvnBfonbyihOngM6w/71SpjBbuc02AwIz/+JQE5YnD2P5rIXaPJZhK3thDCSx+AMwk1UVU+bKtSc3xi6qGp79YMceTPCVchHug/v54ac20g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB7255.namprd11.prod.outlook.com (2603:10b6:8:10d::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.43; Mon, 31 Jul 2023 06:26:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6631.043; Mon, 31 Jul 2023
 06:26:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 2/6] drm/i915/panelreplay: Added HAS_PANEL_REPLAY()
 macro
Thread-Index: AQHZwVLtB+OX0tulGkGIBoU1YmoIH6/TbVCA
Date: Mon, 31 Jul 2023 06:26:49 +0000
Message-ID: <c38192ed2e0420d124f842480c1d90360b914e39.camel@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
 <20230728124609.2911830-3-animesh.manna@intel.com>
In-Reply-To: <20230728124609.2911830-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB7255:EE_
x-ms-office365-filtering-correlation-id: 96baa3ed-ea91-43bc-6f61-08db918f1f14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o8a7L9mtRVdzOYflxGUjsgi+YThkgd+7YzUcMDjuJlu69N0nav8MINkQX1yXOxelQ9/yvBuqNQ6vS1ZOoCYz2S+hrGd0dJVNQSmR0SoQG4QrY6lFdpLRPVTbVBfN9+aY7kO9GhB1yCUM5uys4TnewwvOU8IbySE4BjwM/05dm5ehOPErTmYYSVsF0u+6M5LuYYBOfES7640CWCz54FEarcyf0CV2XFnWo9SfPwVi9OP5Hh0Qbh2LIQ/Jrv9RUCwAJ0omH4p/RTEOxBrEhgOcwX8BxkzQhiNjB4Cl/10NU+YzgFt6Y1pkzWrsH2XqWElsdUJZWd8LDLwqgGbxyr9tQB5sqt+QUNxhJpTnorPA8DI5GCH+JhU+VsOBsDzF0UgaMOUPaXzARi354CY6LhLL7JqQmbL2NXWiEnTE1qo6boSJeyZyTAtfSRwvci/WclqbYG7oXHeQzWU5zoC4OBg6GtjFm7gr6GyI8NJdQOlx8oPL1rlbSPATCUZnTCA19aaPjcSkxK5iaZwf7m1P84Csc5ankbVNEhTLwEochGwklg8Gdu/6uLEulJ0jGPq2k1+/3H6Tzz0ar2FIbjVzu4q3I3DPjsKfjIv8P+G21OiEVpDKFtSYtJaIboDYBz4wSMm1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(39860400002)(346002)(376002)(451199021)(2616005)(5660300002)(6506007)(8936002)(8676002)(186003)(26005)(478600001)(316002)(76116006)(66946007)(110136005)(4326008)(66446008)(66476007)(66556008)(91956017)(64756008)(107886003)(6486002)(71200400001)(41300700001)(6512007)(86362001)(38070700005)(36756003)(2906002)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzBMY3haOVJScHEwTTFKSmIvVkNzY0RCNys0TjBSbmlyRUdURFc5dEw3c2Fw?=
 =?utf-8?B?NzJVTFhMT3FHNmNpOWFlOU1GMGxiK0l5ajdHQVhaTnhHRXRTYTZpWlI0RFpH?=
 =?utf-8?B?UFlEc1ZEUFVkOW93ODUrdGptZlZMcUVQT2JtdHplOVpqcVRVQ1hVelhDc2Vs?=
 =?utf-8?B?UFVickI3ekVwaU1EZVBpdDlYakdsZVk1RUZPSjhGREMzc1FiNFV0NU5XODBW?=
 =?utf-8?B?N1NSZkJWZWVkNktRQVRtVUprb1U5QUNNQWVXWEdHaGRqaGJHVHZaNktEWWhi?=
 =?utf-8?B?NWhIL1FkOFNLWTBDckQvejQ0VWVBWkM1ZExsMzBWTHNqa2VoNzVVV0ZGNnZT?=
 =?utf-8?B?OU1XYWdBTzdIUlluU1Qvc2FtYml0YXh4QnBVenJEWnREb043VjkzekM0d2ZM?=
 =?utf-8?B?RHBhNDN3bURyTXJrTXdQYnJKL1Jua2FaZ0FzMDdodVJtR1JXVHRBSnd4NG0r?=
 =?utf-8?B?VzVvU3MxNlJOeTQvdXgrVVVxWkRoeXRyUjF6WVowS0Zaa2tLVnQ3OFZvQkt4?=
 =?utf-8?B?M1dMTSttNjVhWklySDltZ2pkem9aL2p0dmxkK3h2Qi9VQWp1My9JdTlsYW83?=
 =?utf-8?B?OHUxMVJNWk9PODNNQmZtT1hlNVVaa29HbGVHNktReDE2c2FhZ0hMekNwNmtF?=
 =?utf-8?B?U0JwVFdSb1JVeHBkSEJlU0JKa1FjcXVpbnJRYWcxTXJKeWgzSDdickFDWFZm?=
 =?utf-8?B?WDBpSUhaMTZSS0h4SzMyZmVEMzI2eEpEa2YxZ2l2aXlyK2x5VU1uRTlyMXpF?=
 =?utf-8?B?SGRPVzA3dllDZ0FhZTFOZEpaV2Q2ZGlCckFuUUtxdVBjckFsNGo2dEV4WCsx?=
 =?utf-8?B?Smt0cktVR0Iyd3dMTVVjYnptaGtXTjkxL3VURDNFeThjMzRJVVV2R200cUlU?=
 =?utf-8?B?NGR2WlhoYm9rdDN1b1pFMlZ6aHVCUnBIdTNHVDgxa3N3c240R1RlSXFQZGFQ?=
 =?utf-8?B?bG9LTmxZSlhXOHdTSW5XQjNjOWFYL0RSMTBCeE5GUmRpQ3AwbVhleTBPU25r?=
 =?utf-8?B?SktRaWhaTy9xa05NUmlFdDRKc1NrNGJtUkJNUGZSbGJZM2hvc0pjMzV0NTVD?=
 =?utf-8?B?Q1hiUEJ6b1c2VGlFMlR2TVVQZTJ4RjFJLzUzRlMxOFFNSjdXVkZycXcrU1gv?=
 =?utf-8?B?MTluWUJIdlFsSCt3U29TUmJ0M3M0N2hDR0RhZFNDSGlIbVdUbkN5RWhyNWlW?=
 =?utf-8?B?dStGaS81dFptTGZSVDA0aHpneDU1bGlYWXpNZEZkUUZsVWkzdDRyaGg1ZG9u?=
 =?utf-8?B?a3VmM0tNRzBJbEhGTzAzUDBPTEJFaW1FeDAzUXJIaVlCL01udGhOcllhYS94?=
 =?utf-8?B?ZHp0V2ZaK1pLOS9UeWdaa2lmMTIzM25XOWR2eWVHZk1qOWw1K1RCMVZGUCtz?=
 =?utf-8?B?b3hsZjdQenp5R00yVUJYSytBaStCSzNEUzBoRFRjdkZkeGFEL0d6SDN5NnJX?=
 =?utf-8?B?UEJ6VlRkT2Y0UGdBNnJaaEthS2ZFRllZQmxQejFMQU1VOXlTNjNZWE4xU3g4?=
 =?utf-8?B?RW8rOVMxZExVb1lwb3pUZ1hNblFHUHVXRG1iSGk5bTdCM3NpdXJWbUp1Z0Ix?=
 =?utf-8?B?MU9TU2JVSzAzRFc3SnB1T2JsU0t2NGs1RHFDYjFMRi9EZkh0QVVMRVE1REZH?=
 =?utf-8?B?Vi9MSk14aFdiY3VFM1JHMHlwWlBJaHRvazdaaC9HMElGd0tET1g3dGNuUGxi?=
 =?utf-8?B?ZkVmdVpCZldTTkIyRG1nTEQ0SENoRmhWcisvSlBUYXRZNXJOYlVEYURFbU50?=
 =?utf-8?B?SEg0Tnp2Z25Za2I5eDVBcjhId2Fuc3RXTzUwS0dSemdZNHYwcnVGUXRXOWpa?=
 =?utf-8?B?TEJFb1F3bENUY04xTXFXQzZ0NExzQzc0V1hMd1gxQ2RYenJ4c3dSSjhIY0RT?=
 =?utf-8?B?NjRPU0tZN29yMmQyQlBiSC9RUzVaVTYzdUM2TklxM2JqQWdyZXB2RnNBVGc0?=
 =?utf-8?B?QVlaVGs5N0RjOUhOVk1vbWhoeFFaQVV0RnFGdlVGS1RnOWRiUEgwQVRwLyty?=
 =?utf-8?B?ZmowcHZwT0JSSndlbVVLc0VBOWlMdWV1N3hkVWRoRFFUWU8vaGc4empKU21F?=
 =?utf-8?B?Q1RGREJKcElMbmhxbzZtSEYrTjd0MjUxc0x5WGxWNjZxYTNrUm9lVU9nSEdx?=
 =?utf-8?B?TjRzaUh6YnhQVW1BbXNZUDZ4WnZVSm9zUFdXTWVmaEV3czJBVWlFUHZudENP?=
 =?utf-8?B?bHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <40960E07472933468A3FEF6FC545C392@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96baa3ed-ea91-43bc-6f61-08db918f1f14
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 06:26:49.0453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AeAPVGn8M5EsqX2u7XYkKaEXM+y4bcGRTzsLAAfInlyAuGRXN6/yqkcMDOhvRqgvGdGExFXrhy+9SSSC5G8LIuzOh4O5E8efUEmaVbFEPtc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/6] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

T24gRnJpLCAyMDIzLTA3LTI4IGF0IDE4OjE2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBQbGF0Zm9ybXMgaGF2aW5nIERpc3BsYXkgMTMgYW5kIGFib3ZlIHdpbGwgc3VwcG9ydCBwYW5l
bA0KPiByZXBsYXkgZmVhdHVyZSBvZiBEUCAyLjAgbW9uaXRvci4gQWRkZWQgYSBIQVNfUEFORUxf
UkVQTEFZKCkNCj4gbWFjcm8gdG8gY2hlY2sgZm9yIHBhbmVsIHJlcGxheSBjYXBhYmlsaXR5Lg0K
PiANCj4gdjE6IEluaXRpYWwgdmVyc2lvbi4NCj4gdjI6IERJU1BMQVlfVkVSKCkgcmVtb3ZlZCBh
cyBIQVNfRFAyMCgpIGlzIGhhdmluZyBwbGF0Zm9ybSBjaGVjay4NCj4gW0pvdW5pXQ0KPiANCj4g
Q2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oIHwg
MSArDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+
IGluZGV4IDMzMjRiZDQ1M2NhNy4uNTNiYzhmOTcyYTI2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+IEBAIC02
MCw2ICs2MCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsNCj4gwqAjZGVmaW5lIEhBU19NU08oaTkx
NSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoaTkxNSkg
Pj0gMTIpDQo+IMKgI2RlZmluZSBIQVNfT1ZFUkxBWShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLQ0KPiA+aGFzX292ZXJsYXkpDQo+IMKgI2RlZmlu
ZSBIQVNfUFNSKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BM
QVlfSU5GTyhpOTE1KS0+aGFzX3BzcikNCj4gKyNkZWZpbmUgSEFTX1BBTkVMX1JFUExBWShkZXZf
cHJpdinCoMKgwqDCoMKgKEhBU19EUDIwKGRldl9wcml2KSkNCg0KSSdtIGJlZ2lubmluZyB0byB0
aGluayB0aGlzIG1hY3JvIGlzIG5vdCBuZWVkZWQgYXQgYWxsLiBEUCBQUiBpcyBwYXJ0DQpvZiBE
UDIwIHNwZWNpZmljYXRpb24gLT4geW91IGNhbiB1c2UgSEFTX0RQMjAgZGlyZWN0bHk/DQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiDCoCNkZWZpbmUgSEFTX1BTUl9IV19UUkFDS0lORyhp
OTE1KcKgwqDCoMKgwqDCoChESVNQTEFZX0lORk8oaTkxNSktDQo+ID5oYXNfcHNyX2h3X3RyYWNr
aW5nKQ0KPiDCoCNkZWZpbmUgSEFTX1BTUjJfU0VMX0ZFVENIKGk5MTUpwqDCoMKgwqDCoMKgwqAo
RElTUExBWV9WRVIoaTkxNSkgPj0gMTIpDQo+IMKgI2RlZmluZSBIQVNfU0FHVihpOTE1KcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoaTkxNSkgPj0gOSAmJg0K
PiAhSVNfTFAoaTkxNSkpDQoNCg==
