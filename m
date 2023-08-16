Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D2E77DCF8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 11:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EA610E22D;
	Wed, 16 Aug 2023 09:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC11F10E22D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 09:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692176928; x=1723712928;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=W9Ulwb1NI8xv/zFh7LnkpxStod80OLt7PdfZ1S7RdgU=;
 b=CUsS6aDDm+IGLhA2fAqdwqQJfFI10pPvTnZgbh1DLyJmRwnGEk7QfkG9
 inQUhAYLFzima8ces7M4pt4WnQg35TTYQiuS+ylTl0SabUNM+xx/7GJJh
 k8QlANi3TMeJ2xB+xZpyQbhAqAblUQYAyIAophqHM6r52Y++vvYI4Beo9
 JUOXzFGL67hz9b9of8vJXaIW6b0TDlLG+fD8CH3/RkbzyFMxNAodYcAL5
 HiNf5pyR80Ua60CzXN6vuZB5NB7YduBvUNWKSU4A4y9y2CTntc1i/0nfm
 S1A94pYTk7pdtX66DnoHB+hXxco8bVQ2+EAC32dyTsitll/px9/ED3Sd5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="369955791"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="369955791"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:08:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763574661"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="763574661"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2023 02:08:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 02:08:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 02:08:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 02:08:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MLvt4Wiq4d20a5MwF/753ZF4WLqmdGLxiCvw96j9JbhIq06RrfjdN4nz8VsMEGdYTDoHamdP7lmJQy3xCfW25QGWsETx5171o3+6KFKdFsFpwpTyiZyvqLeEGnJS8VOzogmjPpZdGSF5jMzER/e6lSSEqKfBKa7hSqdzFcQVbXFGo6HMsiAqU9o+g/OGMTMp+DczjSU8rDHIeMV6S8smbKoN2OVID18nrGN1QO3XKK0ctt9Xo2fAZgrx9dWRCHHqYt53NoO4OyHW7qR1zghJY6ZDZTta6aiXTU9sTe66t+wr4dVIthepxmUt0N+CCj1jgjnyIBWMWMqy5mHJny804A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9Ulwb1NI8xv/zFh7LnkpxStod80OLt7PdfZ1S7RdgU=;
 b=fY+pV3DJIbxwHV4qahikUsxVBCCXMHNu67IjxLOt9RXg5eDLWZamwz/GqTxluuhh1iQHISIeFlfQz/XI1ltStrhg/JACuqHDVpXn6O4ccTlj2u8Hm3CcsF3yQWp8LTKFNPGClEOW3I3e3KgjmyEAK06x6L4j0530Uwss73ph9MEma/wllgaA3GfFhLh2VuRtgD/Mzn8sW90l3VsO06gMudOKMbiP/S4j6Hbq1w0gGcyTuAd4o+aJ3ml7G0dIF7Ayl2oEsoZWqbw7EZd9FNnc0KXECaVQUHVVRxO1ikhPTwBTOwrJ6TkYRAsSEC/aYCmt2Z1LwFdiU8bKxtV139hQgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by MN0PR11MB6035.namprd11.prod.outlook.com (2603:10b6:208:376::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 09:08:45 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7eb0:1a36:6a0a:c064]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7eb0:1a36:6a0a:c064%4]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 09:08:44 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/4] drm/i915/tc: rename
 mtl_tc_port_get_pin_assignment_mask()
Thread-Index: AQHZu8QrueNq7dWaT0iwHAxhHinD4q/sungAgAAQf4A=
Date: Wed, 16 Aug 2023 09:08:44 +0000
Message-ID: <dd9c0014d0a019a326da29705adf548da32f4e32.camel@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-2-luciano.coelho@intel.com>
 <SN7PR11MB67503D9744E5F01AFB48DB86E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67503D9744E5F01AFB48DB86E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|MN0PR11MB6035:EE_
x-ms-office365-filtering-correlation-id: 0efcf7a5-a796-436b-3111-08db9e386493
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E/CdNFfQq7HLWmKlpcz4BtZOcOlgcQjCrts9Wgys4Ri6Nuiqd/pOzQGCodJg3AJ6tfw39aFIfDPqUJ0fglDBog6kozv2srehOYZ+qJjCdwBnsCgCwApKBDXwl0/s0f35MgOsCinV9UdCJiHuf8w5eC+B98wDHUjMNA0eXDuKl50U6wxQrlvrfS8ym+UqbvfIKT3E8VrJPddNpXLkFTI9TAEtHs8vQDz8B7w0JyFnBtlIsgRkcl14T7fvS1i9OGPsLGJveTlJs72kFQ5X5Ibt0A9vElII68h20XgD2QuVa/4GWaURd92jho4aFaRef1E1/bwZaKYH6o0MJgtyJ2+X96D9GsAik3uSXN09OJij5qhYRG2jZ8iytOPjLkIAp/XyLw5rIxtGyjT7XO1+piN6b2JdzkiPWGuPlrVNFgM1CSeJbzSlu5JxPUN29fZVcvWU3ZQxX9BQBO61i77duw+1+vHYXc8Nn5LHP9T8NJx3vm7WsrutOIEHIQKMRPg4J8RCaCettQBthbe5YYpH5pqiKj5QmLNn3XKCYMlSU4kdWRqBrbSdCV4/49/UlSKwcERkwDrh8HpBgSvIO+bXI0UgICSZ/4dfcleD/HMQlvNGIKGc9MlmbjXb8OD+ESneqUZt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(376002)(39860400002)(1800799009)(451199024)(186009)(2906002)(83380400001)(4744005)(86362001)(478600001)(36756003)(2616005)(6486002)(6506007)(71200400001)(6512007)(26005)(5660300002)(41300700001)(122000001)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(91956017)(76116006)(8676002)(8936002)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0NjS3crTGd2U2xmTnBvYWhtbE04TW1KcFkwa1FkNHZOV1hHaTZtaHp5VlVJ?=
 =?utf-8?B?VlM5NWM2QmxpODNhZ0ZpTWdaZG9rTlZ6RkJjUmtGSi8vQks1Z0xZWEE5anpI?=
 =?utf-8?B?NUt2MENmc0JIL0pKU3dUcEkxZis0YXQ1RFV2blRmSTV1bVBrU3NtUDRRbVFH?=
 =?utf-8?B?aDd0cHdpbllSSjdZckFQWUZCemVlbmxlUkIxRkxiNHoyMFlndFFTc2U0K2Vs?=
 =?utf-8?B?eDFkbEErb1VoZytEdzhSVGNtSjNGSkJSNmZ5UStkd1Vid2xQRTROSkcwaG5P?=
 =?utf-8?B?bitSSzJvZmNVNEptY1F6OVhTMjNzZkRvVzMzeEo5clQ5OFlBNEFtQWtjWWV5?=
 =?utf-8?B?RUZOK0xxZlN1WTNTMndZdzk0eWlMcDREU3c1M1p1YTdLV084SU8veXkvNkhF?=
 =?utf-8?B?MkVtTitYOWRQckpTSFB4VndTa1FUV0J5VE41Qm9JL2Z2dDlmdWNlbS9FMmZX?=
 =?utf-8?B?VDVPaVdSeTFNYm5FWjVDV04xbDVqN3ZIZmFPWjlVQlN6TTdYWWVvcCtZNzRy?=
 =?utf-8?B?bXVYMjJHUmVibkY1Ymh5NnlhNUd1M01oY0JQSWliY3NaRkM0L2RnTE1DeTdR?=
 =?utf-8?B?VEI1S3MzYXdPNk1iOU9qTWRSdTEyQmRNdEFVeEQ2ZEtQZGpmUEQxZDljZzBF?=
 =?utf-8?B?UmZFUnBVcDh2MDZ3YkRYRVVGNERhWHFtZ1VYOEpXRHdMSzYzOVdoWnl3UVNR?=
 =?utf-8?B?RktRcHBZR2ZEMDQ1V2tuL1hnRWNTMmNIWVc3OTJGb0llUXc3S1BqTFpzelll?=
 =?utf-8?B?R2ZhUW51dFhCZnJFV0RDYlFOTEN1Tmc0SGJDNFBZcmozaXdGdUZYQzR0Um1S?=
 =?utf-8?B?Z3VYckRTQVE1cUdHQWxWK3U2L3dNYkFlYmM4M1B6YkdNKzNycWpJNVcwazJW?=
 =?utf-8?B?K0RGODFmTFFkeGNMd3JKMENLQjk1SDJtNFE0SjY5cFlnckJxZ3hON2xXYzU4?=
 =?utf-8?B?YTBqT0lPUW14SCsrVUxvZVdpN3BESi93dEtuaEVrcGpTSnNoUDA5VW9pcGdW?=
 =?utf-8?B?aUxpQUhQZmFOQ1ZtWjhMcjJmemdHUHVmZG00SUJ2VHJTTHNZWFhibDFIZ2FZ?=
 =?utf-8?B?SGdoMzIxVFZ6OVpac3BOWjJISXlXalg2UXpocStLMGNrdmt5R2oveFczUU9L?=
 =?utf-8?B?VDhyM0ZabVp2aTllL0FQcGtpQ1ZIaVUrd2VQMFl0R25ZTll6YkVLSm1GS0xD?=
 =?utf-8?B?RkhuNitlN1RZSHZocjdCVG42MTFKbVZRbUQ1QmNNRWwwRnhvajhoZFk5TGp5?=
 =?utf-8?B?WDhBckRIbFhvSGhZU1BkbTdzMW1iZnFCd1pQd1FoWUUvcHdpWEJnT2RlSEQ1?=
 =?utf-8?B?Z1lpT3g0SWFIeU5qb2FMc0FwNWdtcExkSzlCcmxQTkZCaUpiSFJ3QXdXTytE?=
 =?utf-8?B?RVhjZ1dRMmorTm9veHB1Y2Q2dkkyY2QrRllqc2hTUnlIVi9weHVPVWpjYkpr?=
 =?utf-8?B?dDVKV0dCQ0ZtRzdEYVl6Q25VaE5rU3hCUjZ4UWo5K1IwYm1nOXl0N0VOVVVS?=
 =?utf-8?B?eXBsMk84bjExZmlLM09xOG56emFkdnZ5cVY2L0lGcTU3OWo0TVIrV1lKeGpB?=
 =?utf-8?B?bmlneGJ0RXlOM01CQjNJY3VhQm9YVFBBakM2MUtMNlpTeXpQT08reGpKVEFD?=
 =?utf-8?B?RE1uWnVXVVBLT21HRXFoRmpqbVpqL1l5MTdGSEF4UUVOWFhNcWYrdzRHOExm?=
 =?utf-8?B?Y1V1VjRhcmdsbUhOdlhjRlhTek5qeGVuTld1eE4xOUlYNEdnMktVUW94ODNt?=
 =?utf-8?B?K0NFVDUvRHlGWmlMMlRHd2JhbUNJVVk1K2JZUnpyc3dWKy80ODZOeFVFMWVp?=
 =?utf-8?B?Um00Rk41VXlTalNaaE8vVU0wYlF2dWpqZFM5cnpMTFVsb0hEWVRrL2FTS1NR?=
 =?utf-8?B?U3E2UnhReDNEK2FYV0l3QURKakkrZnBnZGc1ZSs4QWNQU1NKV0xuMlFBRk9q?=
 =?utf-8?B?bjYxbmNnMTdHTnFWSllib2FtWDlOeTZuVC8xaTVaYi9oZW1TeGJ5Q2lPSkYy?=
 =?utf-8?B?U1VvdnhnTVg5R2NDay9sZmtMbGVwS2JyeTdFSXBzVHZPQ0JjZEM1WExBS21P?=
 =?utf-8?B?enhmNWw1empqcUxsbHcyWUNPajdqMXh1MTVDV2duYXdyWE02NlpKekhBbkF5?=
 =?utf-8?B?cDh5R1FnRnBrcE82S3dmZUhUVmF2SXdrSFBNMEZCZm5IYkl6M0E5cGR0djFv?=
 =?utf-8?B?MUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <16537A0A298C544D995ACDAC1AE00273@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0efcf7a5-a796-436b-3111-08db9e386493
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 09:08:44.5437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J2hMFXSgfGU9UAKrdNk/W5f4DDoETk7RdTWTTdJOqhTy+aYgvLqXrpHqPHkv814bQEXwvPvITFbVEfbIdoie5pXjJxIyacawn1dA14i4CmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6035
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA4LTE2IGF0IDA4OjEzICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBUaGlzIGZ1bmN0aW9uIGRvZXNuJ3QgcmVhbGx5IHJldHVybiB0aGUgcGluIGFzc2lnbm1l
bnQgbWFzaywgYnV0DQo+ID4gdGhlIG1heCBsYW5lDQo+ID4gY291bnQgZGVyaXZlZCBmcm9tIHRo
YXQuICBTbyByZW5hbWUgdGhlIGZ1bmN0aW9uIHRvDQo+ID4gbXRsX3RjX3BvcnRfZ2V0X21heF9s
YW5lX2NvdW50KCkgdG8gYmV0dGVyIHJlZmxlY3Qgd2hhdCBpdCByZWFsbHkNCj4gPiBkb2VzLg0K
PiA+IA0KPiBNYXliZSBhbHNvIGFkZCB0aGUgdmVyc2lvbiBjaGFuZ2VzIG9uIGNvbW1pdCBtZXNz
YWdlcyBoZXJlIGFzIGNvdmVyDQo+IGxldHRlciBlbmRzIHVwIGdldHRpbmcgZGlzY2FyZGVkDQoN
CkFoLCByaWdodC4gIEkgZGlzY3Vzc2VkIHRoaXMgd2l0aCBzb21lb25lIGVsc2UgYmVmb3JlIGFu
ZCB3ZSBhZ3JlZWQgdG8NCmRpc2FncmVlLiDwn5mCIEkgZG9uJ3QgcmVhbGx5IHNlZSB0aGUgcG9p
bnQgaW4gaGF2aW5nIHRoZSBjaGFuZ2UgaGlzdG9yeQ0KaW4gdGhlIGNvbW1pdCBpdHNlbGYgZm9y
IHRoZSBtYWlubGluZS4gIFRoZSBkaXNjdXNzaW9ucyBzaG91bGQgYmUNCm9wZW5seSBhdmFpbGFi
bGUgaW4gdGhlIG1haWxpbmcgbGlzdCBhcmNoaXZlcywgc28gZHVwbGljYXRpbmcgaXQgaW4gdGhl
DQpjb21taXQgbG9ncywgSU1ITywgaXMgbW9vdC4NCg0KQSBsaW5rIGluIHRoZSBjb21taXQgbG9n
IHRvIGxvcmUsIGZvciBpbnN0YW5jZSwgd291bGQgYWRkIG11Y2ggbW9yZQ0KdmFsdWUgSU1ITy4N
Cg0KQnV0IGFueXdheSwgc2luY2UgdGhpcyBndWlkZWxpbmUgd2FzIGFscmVhZHkgaW4gcGxhY2Ug
d2hlbiBJIGNhbWUsIEkNCndpbGwgKGFsbW9zdCBncnVkZ2luZ2x5KSBjb21wbHkuIPCfmIkNCg0K
PiANCj4gV2l0aCB0aGF0IGZpeGVkDQo+IA0KPiBSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8
c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNClRoYW5rcyENCg0KLS0NCkNoZWVycywNCkx1Y2Eu
DQo=
