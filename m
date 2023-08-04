Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 020AA770037
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 14:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3F010E142;
	Fri,  4 Aug 2023 12:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C3B10E142
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 12:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691152091; x=1722688091;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=fNHD3ZatyNNsfIuV1LEVZK4qXpzcjCXfTv7xjckrpQ4=;
 b=J5FOTnpjZ9EIZtTeZb7qFzQ9I82zyd6dUnHxnklkIuYj+5uDZwMMQGwA
 W+lsK756E1ZlstJpsS+hzVMpsbg9YmRHJu1zk+yr5hoZN6qeC+Hb3ZsJR
 v0fobCmwEedEPbFRPqKch6hoVx+pylzmMeItuZgBzLDtnaBNPXTtO0SIH
 Sawxsy4baQ7uxfpyTQ0jvPb70URcerVepNXRQ8qLc79oj2mHgC93+q60e
 Y2EuaDwIlmWnmqWlt6vmQv8/PXM8KgFY/EqLk290cP+JcRMQtQyobL1Sk
 u3IilUC4XEFgngQVvioLuMidSZsR4+vkvSsYI9yx1r6x5NTxQFMG6LpO/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="433991979"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="433991979"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 05:28:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="976573099"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="976573099"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 04 Aug 2023 05:28:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 05:28:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 05:28:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 05:28:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MxZ531qt2SxixUBtMOW3QMPAx+LwbF0DXv817rw2q2p889pO5+gjR4PWfjOFy6bqX/MSmxaK1Napv0l2oEhLkBocHXSZaCuuiQJI91mpBxmlD8vAwpdDGCyHCGyCmVrfmeWznGULtz3lQl+IUgNOqUNTaYkTJiKKVHOVok2ZP+SMEBL+12GrqAlFpQDKR9ZOs1Q/N/EN02jYA+HGlFyNnfVBvzssD39qK7FKQe028vqCQ3ctHXe98bSjeUJ/TYu8rC8m8hEq1eEfNoKDAtJhmAZZyCQSV0wkfR4YdF5hVbVD0bD5Bk+TpwjlJULZq3MQuuxUhC6w7a/r5EXWSBDOzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fNHD3ZatyNNsfIuV1LEVZK4qXpzcjCXfTv7xjckrpQ4=;
 b=Hzk3yLKIA8uiHmBLh8gK7bQW8cuYnZMbLuVVLLc+/Eel7ROeYYdi0H4RRt50zlWEKgYxcs23MlCDGl4rqcPsJlIpwDhud8GXCrNMeS90ZGKVfJQg/Qp+9/t7VEHHhlvRKxwV5+G2+qrgRlYKt+GIHYBc71y4+9SrFq8+tzgUbVGqkd6lLixCs7JM8tkBPpjqKE/M29RKvXjkIUmSPFQZGm2uPfflqjvT/SIGSfhqmIyfiWpejZaQ2Qw74FwMZOk4uKXC/nCeTbcATGiobv5mgRGFOxA1Z0OuhoUvJ7vvWYig8qcIlagfsyUWkaWnU8gO9QZ9PaZC9B6lShLB/cOT8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7912.namprd11.prod.outlook.com (2603:10b6:208:3dd::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 4 Aug
 2023 12:28:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6652.021; Fri, 4 Aug 2023
 12:28:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 0/5] drm/i915: Fix connector HPD polling
Thread-Index: AQHZuwlXQ88SRFC+X0+fmcPZOcDw3K/aKCUA
Date: Fri, 4 Aug 2023 12:28:05 +0000
Message-ID: <252f1232b84f91d402a6f39ee64bab3ac117d76c.camel@intel.com>
References: <20230720125418.236140-1-imre.deak@intel.com>
In-Reply-To: <20230720125418.236140-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7912:EE_
x-ms-office365-filtering-correlation-id: 5aed31c1-7bcf-4a76-1234-08db94e640de
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uZl3K2oy56Qk/FJ/HsMMDf7eNEcPrjhNre0Kw84PSsKGIL0IVdPxLI0jzk/kXqvW3xnmJXSe1wgr/MzFj/TFGUbsthbMWbVZB4u7xHSKg+3lJ02I66fIhukwE7DSjHoXfTBKx+/YoakdAbvdyQrgNx7cXZ67hbTlC6T+RMPGF0GZuvfpd+TMt3pCMJVxtkaQISF6phyWzMRrBu8JpXeygPOeYrlgGh41GWdSZd0FV4pEUVjaiEMRR2W9mGVp+BenRLTtzXP5YlzQDoOTjQ+PdkpxFqIYHMB4v0wD3cwNmU32uEfyBjzxHR+fOTauPJYxoT1vJD0nf5I7QjTIcPRs8LBpDneChte9pNYjtJEWwmPNMHw5mIZC3tD8m3f7D22xHTxc0DTL+FvA5iQ7ojeNcjHKxLWLiciviuFwF1bqwdfMm0ArWB9pLOdA+quuFmIyWn27f55SW1oSmZwj49ZPY4ad8688YYjx1v/F4d2ifFo6XPdb/cKMuC6g/neqw1rFdiQdLgmKWsbN6rB89VckFEF0BmeYycZFwo8d6uel3WtlO9kOhKRhz8AgwLL+JouDGRsn4zE26Z1TfOWj+xqjEAtCiQh4Y7HF9uaR5D86NwE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(396003)(376002)(366004)(39860400002)(451199021)(1800799003)(186006)(64756008)(66476007)(26005)(41300700001)(316002)(6636002)(6506007)(8936002)(8676002)(82960400001)(122000001)(110136005)(478600001)(66446008)(66946007)(6512007)(966005)(76116006)(91956017)(66556008)(38070700005)(38100700002)(36756003)(6486002)(2616005)(2906002)(71200400001)(66574015)(83380400001)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U3hKK3djWDNheWFTa2NCUDd2YUJDNGZPeGJPemtYWUhEYmlJd251NUFKWlhU?=
 =?utf-8?B?Z0lNc3FUV01YN2xMMjFUUWhIRmxqbFYvNU1nUTBPNkRVQnk0T2FjNHRha0RP?=
 =?utf-8?B?d3JlNFlabFZucWFEVWtNNlJWM2VmbzZnOXN3M1pYREYzVDVEOTU2dTQzakxE?=
 =?utf-8?B?T0xuNWVISEFockhkdndQaVBYTG44QkM0b2J0ZkpJbURJMi9palZaY2pMejBQ?=
 =?utf-8?B?bDl6Vnl0ZUhXeThUUklkcS9rV2Z3OENyY01ZYWJSTmp4QmhvdXlJNTk1NmVS?=
 =?utf-8?B?WEUvK09rQzJ3ZHhoZGw3cFlTRURUaVhlUS9YbitQTU4vU1dIWjEzVzhpZ1lt?=
 =?utf-8?B?TFB4bTRWWkdaTE9sTW1FY0dvN256eS9DZkwzcnVET2p4enloMUQxaWtGT2ZL?=
 =?utf-8?B?NWc4c2F3eGFjU3hmWTMrdFFYRzBoSy94ejUyRy9KSnpoNWczRTlvMmRuZTFH?=
 =?utf-8?B?VlVzeXhkMkI0YjFTRUFqdlJ1b0FwOGNuQ1RoRk85REFINDZTN2tpU1dKeHNz?=
 =?utf-8?B?TVJxZTFaTUt0UC94TTM1eTRPZ09sN0hSS2ZmaEFSOVVTcFlWMzJ4NXo2REVM?=
 =?utf-8?B?S1pjL1lPMjJydVZ0VHZCbUR1STdaL2pSTi8yVUo3QklpU1B1RGMxb2k3TlZo?=
 =?utf-8?B?MjZRL3RxR2s5T0ZMSEQzOFB6NFk4WHdYR1c3TXVIb1JZUE8vV3dqL1hxVmx0?=
 =?utf-8?B?c3o5a0N6QXoySHhDUDkzWWo1Z1MvcmR2UFUxY1RBQkR4UXBUd2pic3VpaFdr?=
 =?utf-8?B?UG44cWcxbnJGdmdZT3JWQytXcUt4SFpxMCtHcFVDMDZiRHVORE0wNE1TM1lS?=
 =?utf-8?B?c1FBbzAxbnNJL2RPc1cvYVVyTGd6bHl2aDRTVm5kbkJaTU92eXRmY3U4amhG?=
 =?utf-8?B?RWFyUDJHTFc4TFZZcWQrbGQyU3lKdm9QZWtLTSt4UDdEcVNESnFBeHhWdEg1?=
 =?utf-8?B?WkFYaXpTNzhNL3drL1RtS1B3ODM5OVJCNDFkMDNaMEVITkt6a2tGd0NIdmdz?=
 =?utf-8?B?ZnBCZWJnbnZkZDE3UFozd2RRd2hVYjI1V1VuSFJRZTdsNlNQSy8vVG1rVzV0?=
 =?utf-8?B?bE5oci9KTHh0ZXJDMGFDdFl5c1BmR1NRUDMyWHE4VTZGUDJaTmx0bHdnbUNS?=
 =?utf-8?B?U0NhTkpLUWV3L3hQYWpUOW9EZGhONitvWk9LWkREbXIxd2dXQ0ZuOVJNVFJ2?=
 =?utf-8?B?QlZhYjQ2dE53OU1SN2Z6VjR2bFRzQmgvaGZDZ204UGxwNTlJLzJWUG9qcW0w?=
 =?utf-8?B?MnQyWUhZYkhrNXlBU3dLeGdEemhSVVVMWlcveEtEQUVFQ3RBREdpa0YwdG15?=
 =?utf-8?B?WXNoQVQweWdrZDRCYWlJbHliNXJkYkwvOG9ybHpIbC93RjU3MGVZOGdQSkls?=
 =?utf-8?B?L29EeFRxL0wvZkZNazFCZkRBalM4Y2JZamNUTTVuYWZGTHB0d1NZcmI4aVRu?=
 =?utf-8?B?cXZ4VjhEY3U2bWJNVks4OGF3eDZsMGdCTzQ2Y0hlc1dmOVpzWWNHS0NsMkJB?=
 =?utf-8?B?YVNKUm5GWFB5RWlRMCsxbEVLVUFmTWFsOEhzS0dsSnNUVFhWRGRFVzVwVkpD?=
 =?utf-8?B?RWdhOTVyMUdVcUZKRWhQdEIrTU9YZktncWpCTHBJclMyem5rSXdqR29CaHpp?=
 =?utf-8?B?dUV6OC9QQ3VRbTFkTkxRV1VGS1lwMkVaanM3Z2JZNXlVZEl5ZVRWZGRQY1k5?=
 =?utf-8?B?SEoyODR0U0xGZDJoM3NQVWVPYlhlU05USnNwZk00SjR5aGxsbFJuSG83YnJQ?=
 =?utf-8?B?S1VzSlpvcEVSWGhud0pxS0luaEhYdHZ0Qkk3QVFCZHUxODZRZS9iUW00aXUz?=
 =?utf-8?B?dWFwSEJiU1hjQ2dYc1dkeHJHRXg1d1dQOTVTUDFiWDNTMUlnYVJYMkQ5d09C?=
 =?utf-8?B?V2UxeVIzNW5CK3FaVGcrcStnL3VZaFFBQXIzZFY5bEczYmFDeVQ5UjRaUUls?=
 =?utf-8?B?WEg1alZtcTZNa3NLMHUycUhXNEhlY3dpdTBJSnQ5NzluSWc0ajFIQUluMnZ0?=
 =?utf-8?B?c3hoa2Rib3h1cnRXWmdFNW8vdElwbmVvdms2VFhsbFV4NDA4VDBQdXpHVU9W?=
 =?utf-8?B?SHZYSWRnL0VvOWJuSEZlaUxRVS8zWkFadWVnTThzQUQzMGVyV2Z2OUtiV1FQ?=
 =?utf-8?B?My9zcUhVeUtrTzNDclR0NGtRQW1PUFVYbHA5dmRtMktFNXMyQXVrMjg3aEFy?=
 =?utf-8?B?R0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6F341BDC0029F14B94DFC41258921DFE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aed31c1-7bcf-4a76-1234-08db94e640de
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2023 12:28:05.4491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aUEv/g9GRO7WVXlR7VOY5dRHyLSjVs1Ownov/4S8QEBHi/Clb2yAT+r8QkL8tA2qakKBBJMBWkv+AS+hC7bRAtWMrx6QRqs7rnVQGjkSHlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7912
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 0/5] drm/i915: Fix connector HPD polling
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

T24gVGh1LCAyMDIzLTA3LTIwIGF0IDE1OjU0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
aXMgcGF0Y2hzZXQgcmVwbGFjZXMgWzFdLCBhZGRpbmcgdHdvIHBhdGNoZXMgdG8gZml4IGEgY29u
bmVjdG9yDQo+IGRldGVjdGlvbiBpc3N1ZSBvdmVycmlkaW5nIHRoZSBzdGF0ZSBvZiBmb3JjZWQg
Y29ubmVjdG9ycy4NCj4gDQo+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzEyMDkzMS8NCg0KRm9yIHRoZSB3aG9sZSBzZXQ6DQoNClJldmlld2VkLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gSW1yZSBEZWFr
ICg1KToNCj4gwqAgZHJtL2k5MTU6IEF2b2lkIGVuZGxlc3MgSFBEIHBvbGwgZGV0ZWN0IGxvb3Ag
dmlhIHJ1bnRpbWUNCj4gwqDCoMKgIHN1c3BlbmQvcmVzdW1lDQo+IMKgIGRybTogQWRkIGFuIEhQ
RCBwb2xsIGhlbHBlciB0byByZXNjaGVkdWxlIHRoZSBwb2xsIHdvcmsNCj4gwqAgZHJtL2k5MTU6
IEZpeCBIUEQgcG9sbGluZywgcmVlbmFibGluZyB0aGUgb3V0cHV0IHBvbGwgd29yayBhcw0KPiBu
ZWVkZWQNCj4gwqAgZHJtL2k5MTU6IERvbid0IGNoYW5nZSB0aGUgc3RhdHVzIG9mIGZvcmNlZCBj
b25uZWN0b3JzIGR1cmluZw0KPiBob3RwbHVnDQo+IMKgwqDCoCBkZXRlY3QNCj4gwqAgZHJtL2k5
MTU6IERvbid0IGNoYW5nZSB0aGUgc3RhdHVzIG9mIGZvcmNlZCBjb25uZWN0b3JzIGR1cmluZyBI
UEQNCj4gcG9sbA0KPiDCoMKgwqAgZGV0ZWN0DQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1f
cHJvYmVfaGVscGVyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDY4ICsrKysrKysrKystLS0tLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmPCoMKgwqDCoCB8wqAg
NiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKg
wqAgfMKgIDYgLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWku
Y8KgwqDCoCB8wqAgNiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aG90cGx1Zy5jIHwgODkNCj4gKysrKysrKysrKysrKysrKysrLS0NCj4gwqBpbmNsdWRlL2RybS9k
cm1fcHJvYmVfaGVscGVyLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsNCj4g
wqA2IGZpbGVzIGNoYW5nZWQsIDEyNyBpbnNlcnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkNCj4g
DQoNCg==
