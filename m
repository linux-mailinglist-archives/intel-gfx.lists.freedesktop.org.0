Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3BD817A06
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45A810E2D8;
	Mon, 18 Dec 2023 18:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCF4210E2D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702925285; x=1734461285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=07c299ZM+IOjitv3apowRgDKLU1bv7wLJOleliJSQWA=;
 b=EwLUxQ+v1WsfEKdG1bEzZhnY0L0aYZk6sltVsU/uaq9YGVQ9llPbBMOl
 OF+2xDQwrFSePT8PU8pE/HLvJ5GnMTCpRj5kEz8ahsOtG59ki5COWZg91
 ry6lWe42/2RNT0RmUkZI0K5FeMSNs+CSnghsWuoRH9w/1stHv9qXx777J
 2FblbSdRUooPY8qb/cmYWS3cUfQRPgWw86mdiVV7zNZ7Qyb/7X8vcK+La
 nwWcPGmCzyEyWkCT3VZB8W1Zmabrc/jb88WjI0vZUqYZnpO0H3EGlPLUm
 6oVd2h+MQFr17oxo9QPunBx8xmKbXvX4WyK6CQrDNYmFOzG3vgTH3+7ky w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="399326155"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="399326155"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 03:50:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="841453615"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="841453615"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 03:50:01 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 03:50:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 03:50:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 03:50:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 03:49:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KclJUEnRn2gVFLjne6PPO0PPhB+meUYaGIvTc4xXuO9Wm6OWoJTtgRIHcXhxuqbtBags6gcdiRa5HfJD0Jf2XDHNCTx2RoxnwM5DlvER/Qu4HPthkzcvlmCcNBqfeX1IRUecnOXeib/wV0iydAJz3wcm57allnLKgeN3y+Ces35HBKNWEsCGKn7fuKoB18c1ae0feR6AZOCHCXXUAFo5NN6c00/QCapJ4my4zZJ8Tfngnwzkz6PrOTozqZnQi8/3SCznp3Z2VTgybiTYU5VOB/Wu+LlXKsxCT13JxBKs/lgDwg7S0YA78Z3cOyc4OFT1jQRO6N4vNHr2R9hNT/0m4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=07c299ZM+IOjitv3apowRgDKLU1bv7wLJOleliJSQWA=;
 b=QJNFf/K+xSyz+zro0wh8gUXT7H8byfdGwHu8dSA6Udp/F/QbWceEAfiaRUISut8GlPC3mx5m9l2T9Ng36hlVKasoxx4PK67j/SJfcw+ir2L6jC0MvjWL2Y4bXxvEp22jN/GnzHwSsjaFhj4mPwsDf6urPvWLSe7kNsTfQMibJeSvxI+CuzdzXhJqM29LFhbkRlLoktnKNkww4hHCydk5qvLZ9eJ8XBzs+tesrVcZmwpTbMRkiq75lDaH/1z9SRSvWHWcgo4LUyml57313hSynV1CMqtxWMo8Y0mBKsI8vp2H4CG9qKRbc+gNKpy0t0Sd9c2PNtU45AaamxlnzvwVSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7322.namprd11.prod.outlook.com (2603:10b6:610:14a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 11:49:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 11:49:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Remove dead code around
 intel_atomic_helper->free_list
Thread-Topic: [PATCH v2] drm/i915/display: Remove dead code around
 intel_atomic_helper->free_list
Thread-Index: AQHaFwBlcDEI4NUID0S3UQb34Z3t0rB75W2AgDM9NgA=
Date: Mon, 18 Dec 2023 11:49:57 +0000
Message-ID: <4f42e6e20751959d1f7fecee7edaaf464278742f.camel@intel.com>
References: <20231114134141.2527694-1-jouni.hogander@intel.com>
 <ZVU2YYaxw1li-neb@intel.com>
In-Reply-To: <ZVU2YYaxw1li-neb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7322:EE_
x-ms-office365-filtering-correlation-id: 04249138-50db-43cf-8ec2-08dbffbf757f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oC1NHHF78r8YtOzRbfgH/ieB2TMbDAQcGWt9VsAZg9Vt1v4RxDIX95GgjQU140H0csDQ4tSmvz4IRyPgqAqQ/NdoxpTi3Cl/t2arz7l/eJD8NJQsxAZwwjUu8q9+c9Inpjf8Uo2i2S70hsRzcGAptLcfa2vDj8+8kOxH6vbo9HMcV4UvT+g0UMam647IX9JFCapBYadrLzEynIYxwmKB7sxCo/YbYa+z6hQ2/6MiRD4abANJEuCv83ZbCKJz51Ak6j9+qHv22ZbVPR7KQ5NrRZlm/eqkRqGm24gsNrwAtw3ycST8rD0dEErWnrQKe9EdLTL96GL20gEZw5Q0dWyEglO+7OUx3yu5b0p73egk0vZuLPp0TBHZ28knQ4xaPZ8xSdlxDzae5VEDqKLuwAYzk91T1g+9c6wFwFCyzqO1/vUpkJOC3AmE6q1pN7vN/mznY06PeLeSTxsh7STcOLApNmQCn7PTXdxFKfD41X9QbVRjVfOFwF6ULUJ5mpITgA6uCV+M+GuTywUigh15avxWrpbXpZWVnbwpGGJ55aituqXsfx1u+YJPpM4pQL7DA+vqvQTDGsj3sfEQX/EW2lkehGrELdphhVBYiH0oFyLnP8NwQykX3Vlbp9OK1M5UQUzP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(39860400002)(346002)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(54906003)(316002)(66946007)(66446008)(66476007)(76116006)(64756008)(8936002)(8676002)(4326008)(66556008)(478600001)(6916009)(6486002)(91956017)(36756003)(41300700001)(86362001)(4001150100001)(5660300002)(2906002)(38100700002)(122000001)(6506007)(6512007)(71200400001)(82960400001)(83380400001)(2616005)(26005)(66574015)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aTdGZU1weTF6eXNTaXQ2U1A1bnAwdkUyV3kwcExKZDlpYzdsajIzRXRiYVNP?=
 =?utf-8?B?OWphclpiTWJmazU1bGtFRjNVcTVMOGg0REt2dXpRcWRwbFlGeDFSc0NaK1Mz?=
 =?utf-8?B?N1V6ZjBjRTNZWm1oVFR1ZGpXNlRxVVMxNEtTSUczSXM3MVpUa1lKM3hLWW5N?=
 =?utf-8?B?RnIwVXoxQVRzT1YyalVucjl4N0xkZmZNdzJwOTJ2d3JiVDRsZE8xM2hhaDlD?=
 =?utf-8?B?TVFvUTVrS1hCU1RQWXVUd2xvRktLZThvQVIzRXRJb1ZmTWhPaWoyQ3FqVW9P?=
 =?utf-8?B?SzZJMzBmTk9rdnpCSHNnaDNNY2w5cEJRWXJ3a2NIbGpPa05oSll5OGYxMU92?=
 =?utf-8?B?emZMdEZVU3VDZ1B0dGxMNXNreUlpbFVraXJuVlRDQVl0RjQvcFJSV256eTh3?=
 =?utf-8?B?TlpGNjROdElCTnlxeXhyMG5yVlJJbUJieFNNZlNEMzRNaytFUm83UlMrV3Uy?=
 =?utf-8?B?aE5OaGpVV0M1UFZZMHpEUVhUSFdMRjl1alRoWUZhU1h2RXd5Z2FBOVluV1RY?=
 =?utf-8?B?Z0lSYks4T1oxOS9iY3JGZFpDcGlZQW5laGtVMGJyZGR4ZGZYMCtDT01ObXdI?=
 =?utf-8?B?U2JMR0VaMkUrZG9UWkUrMmdwUjRVVnFqaFVGeDJuN2hmbmRlTTNmbEFGMUt2?=
 =?utf-8?B?WnpGNUU5K3RDUlVFTWpRMVdZdlRxeThHT2F4ck9Rc0hlVU5xS0Q1d0dHK3Iy?=
 =?utf-8?B?R0RMaXpidExkQXo2WTA0L29rS0xtVkhkOHNXRnZSdGVhVmZoNXhmUzNWSlM1?=
 =?utf-8?B?U2Jicm1IRTN4NFYwSTR1VXQvTTg2QVpUWTlPOFowL2FrekRJNUNXTXVRWkxY?=
 =?utf-8?B?VGFKeno1bnE2MXJsc0twcFQ3cUVVclJiRDRKSXZ4U245ZGMvUnZ0VGZCWXBS?=
 =?utf-8?B?eTcwNjBpVWUxcllOVkYvcmNJcmJPWmdYc1hrQzZxNlR5TFNPY2JSV3JTcFdm?=
 =?utf-8?B?TEkvUVlKK3FGK2gzcGtjaFRFVHk5UmsxQVFYcTYvajVORFlvRUpuMWdheExV?=
 =?utf-8?B?RzFoYlI4N2JCdkNGUEowR05qTXdjQ2dTUHZrTHVNeW11bmEwdEl2TC9UR2JC?=
 =?utf-8?B?K1pSM0dRMUQyelhkRlpvem9UaFA1MTBrNHBMZ3k2NlBjRTI1N3BlT1o1b0o3?=
 =?utf-8?B?Qm94WVA3MnROd25zdUpKMmVQaXQwTkczclBZdTZDNk10NzRnR25BOGpTK0k4?=
 =?utf-8?B?MWpITkt4OUlBSWVUWWxEVWZZRmh5bzZHQ0FzenJrQUpRQTNyemZ1b0NTeDNK?=
 =?utf-8?B?NHIzRFo0ZW1OR1E0UlJ3QkI1ekQ2cW1HWDVLdUowSytaL2liZDFqVDg3YVNy?=
 =?utf-8?B?bktVd1hkZ094RUEvSzJkalZIVndUT1BuRXhrUTZqM3pqRXY5U2laakhicllq?=
 =?utf-8?B?TWNST3hHKzl4NGRXaGhGdElYbUQvU3JvVHdUQTA3cXBKZS8xc3JoZGRTNTV2?=
 =?utf-8?B?L3cxNmJoQ3gxc2JGWkdJNmN2ajg2YVVNVUJZR3ozZkkxNSttcTFUa0VnNjdP?=
 =?utf-8?B?elp6YnV5UlFyai9BdytJZHJWVXVYSTNOVHdSMGpkcFJXQjlkbXc4U0Z0QUNP?=
 =?utf-8?B?cXhSOXozbzJjeDJXNlVDSkxkOUd4V1ovZFhBUlR5KzBML2lqMVhNK1VsY1h4?=
 =?utf-8?B?R0FjUjh0VE5WbzUzMEFRY2QzZlgrb2lWVkR5aFd0TWFWNHNXM3MzVEpJSU8z?=
 =?utf-8?B?NnZzQkIwVVl5bXJhalU0RHc5OHZHakVkNXoyZzNPR2hIdXE4TnB4RityaXlk?=
 =?utf-8?B?aG11cWRHWndEU1NhQnFGQS9WRmVmaW5mZFZQQUlUSnNFSXVXR2tQMjJCQWxV?=
 =?utf-8?B?SnNwRFp3NTNVYW5HbDlCQkxmQUlSaGVGMVIvVHF3VXdxWjRnV2JOdjNUM05n?=
 =?utf-8?B?RFZxOVk5K2ZTdnIyZmNIK1pmSVpkT01UaGt6ZVlMVytZNUFEbGRuY1FaN09J?=
 =?utf-8?B?TG9xSjl5dlhGOXk3NzhtRlNGcklrbmNxTWxKTVdUTkxMZE9Sa0lCeFlzN3JI?=
 =?utf-8?B?OE9kR3lpcHM4UkxBNzVDcWVIMDlQTTVqdWFrempobjc5SlpMOEFEeUpGenJL?=
 =?utf-8?B?VXlOVk5hYVh6ellOQVFGQ2llRStkUGVHY2podHhwK0IzNzY3U3dSL0ovZlBj?=
 =?utf-8?B?ZVRJN3VuWGk5bVdhZWV3K1BBUVplZGI0M2M4UEtBTVMzQVl3WHBVZk5mTVdz?=
 =?utf-8?B?cmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <125A9073BE68A8428E497172779AA8FC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04249138-50db-43cf-8ec2-08dbffbf757f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 11:49:57.8043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BANohLvVYLCzyhde7vCizWQInutHL7b3KsScdD35GgQcATWOKoUr1XBOb5rsIDWjmnWPgf2mQJAf5kvxRvyNtmN5SN4ThhZP1dJ5vvGiuv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7322
X-OriginatorOrg: intel.com
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTExLTE1IGF0IDIzOjIxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTm92IDE0LCAyMDIzIGF0IDAzOjQxOjQxUE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBBZnRlciBzd2l0Y2hpbmcgdG8gZGlyZWN0bHkgdXNpbmcgZG1hX2Zl
bmNlIGluc3RlYWQgb2YNCj4gPiBpOTE1X3N3X2ZlbmNlIHdlDQo+ID4gaGF2ZSBsZWZ0IHNvbWUg
ZGVhZCBjb2RlIGFyb3VuZCBpbnRlbF9hdG9taWNfaGVscGVyLT5mcmVlX2xpc3QuDQo+ID4gUmVt
b3ZlIHRoYXQNCj4gPiBkZWFkIGNvZGUuDQo+ID4gDQo+ID4gdjI6IFJlbW92ZSBpbnRlbF9hdG9t
aWNfc3RhdGUtPmZyZWVkIGFzIHdlbGwNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpUaGFuayB5
b3UgVmlsbGUgZm9yIHJldmlld2luZyBteSBwYXRjaC4gVGhpcyBpcyBub3cgcHVzaGVkIHRvIGRy
bS0NCmludGVsLW5leHQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiAtLS0N
Cj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jwqAgfCAy
MCAtLS0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tDQo+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9jb3JlLmggfMKgIDYgLS0tLS0tDQo+ID4gwqAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jwqDCoCB8wqAgNyAtLS0tLS0tDQo+ID4gwqAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDIgLS0N
Cj4gPiDCoDQgZmlsZXMgY2hhbmdlZCwgMzUgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4
IDNlZmZhZmNiYjQxMS4uMzg3YWNmMjFiNzk0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtNzA4NiwyNCArNzA4Niw2
IEBAIHN0YXRpYyB2b2lkDQo+ID4gc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9XQVJOX09O
KCZkZXZfcHJpdi0+ZHJtLCB1cGRhdGVfcGlwZXMpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gLXN0
YXRpYyB2b2lkIGludGVsX2F0b21pY19oZWxwZXJfZnJlZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdikNCj4gPiAtew0KPiA+IC3CoMKgwqDCoMKgwqDCoHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCAqbmV4dDsNCj4gPiAtwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgbGxpc3Rfbm9kZSAqZnJlZWQ7DQo+ID4gLQ0KPiA+IC3CoMKgwqDCoMKgwqDCoGZyZWVk
ID0gbGxpc3RfZGVsX2FsbCgmZGV2X3ByaXYtDQo+ID4gPmRpc3BsYXkuYXRvbWljX2hlbHBlci5m
cmVlX2xpc3QpOw0KPiA+IC3CoMKgwqDCoMKgwqDCoGxsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
c3RhdGUsIG5leHQsIGZyZWVkLCBmcmVlZCkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZHJtX2F0b21pY19zdGF0ZV9wdXQoJnN0YXRlLT5iYXNlKTsNCj4gPiAtfQ0KPiA+IC0N
Cj4gPiAtdm9pZCBpbnRlbF9hdG9taWNfaGVscGVyX2ZyZWVfc3RhdGVfd29ya2VyKHN0cnVjdCB3
b3JrX3N0cnVjdA0KPiA+ICp3b3JrKQ0KPiA+IC17DQo+ID4gLcKgwqDCoMKgwqDCoMKgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0NCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqZGV2X3ByaXYpLA0KPiA+IGRpc3Bs
YXkuYXRvbWljX2hlbHBlci5mcmVlX3dvcmspOw0KPiA+IC0NCj4gPiAtwqDCoMKgwqDCoMKgwqBp
bnRlbF9hdG9taWNfaGVscGVyX2ZyZWVfc3RhdGUoZGV2X3ByaXYpOw0KPiA+IC19DQo+ID4gLQ0K
PiA+IMKgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF9mZW5jZV93YWl0KHN0cnVjdA0K
PiA+IGludGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUpDQo+ID4gwqB7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShpbnRlbF9z
dGF0ZS0NCj4gPiA+YmFzZS5kZXYpOw0KPiA+IEBAIC03MTM5LDggKzcxMjEsNiBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9hdG9taWNfY2xlYW51cF93b3JrKHN0cnVjdA0KPiA+IHdvcmtfc3RydWN0ICp3
b3JrKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fYXRvbWljX2hlbHBlcl9jbGVhbnVwX3BsYW5l
cygmaTkxNS0+ZHJtLCAmc3RhdGUtPmJhc2UpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fYXRv
bWljX2hlbHBlcl9jb21taXRfY2xlYW51cF9kb25lKCZzdGF0ZS0+YmFzZSk7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoGRybV9hdG9taWNfc3RhdGVfcHV0KCZzdGF0ZS0+YmFzZSk7DQo+ID4gLQ0KPiA+
IC3CoMKgwqDCoMKgwqDCoGludGVsX2F0b21pY19oZWxwZXJfZnJlZV9zdGF0ZShpOTE1KTsNCj4g
PiDCoH0NCj4gPiDCoA0KPiA+IMKgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX3ByZXBhcmVfcGxh
bmVfY2xlYXJfY29sb3JzKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9jb3JlLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9jb3JlLmgNCj4gPiBpbmRleCBhYThiZTAyYzllNTQuLjM0OTQ1ZjczM2E5NyAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5o
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Nv
cmUuaA0KPiA+IEBAIC0yOTgsMTIgKzI5OCw2IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5IHsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBpbnRlbF9hdWRp
b19mdW5jcyAqYXVkaW87DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0gZnVuY3M7DQo+ID4gwqANCj4g
PiAtwqDCoMKgwqDCoMKgwqAvKiBHcm91cGluZyB1c2luZyBhbm9ueW1vdXMgc3RydWN0cy4gS2Vl
cCBzb3J0ZWQuICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2F0b21pY19oZWxw
ZXIgew0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgbGxpc3RfaGVh
ZCBmcmVlX2xpc3Q7DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCB3
b3JrX3N0cnVjdCBmcmVlX3dvcms7DQo+ID4gLcKgwqDCoMKgwqDCoMKgfSBhdG9taWNfaGVscGVy
Ow0KPiA+IC0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IHsNCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoC8qIGJhY2tsaWdodCByZWdpc3RlcnMgYW5kIGZpZWxkcyBpbiBz
dHJ1Y3QNCj4gPiBpbnRlbF9wYW5lbCAqLw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc3RydWN0IG11dGV4IGxvY2s7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kcml2ZXIuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jDQo+ID4gaW5kZXggNjJmN2Ix
MDQ4NGJlLi45ZGY5MDk3YTAyNTUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jDQo+ID4gQEAgLTI1OSwxMCAr
MjU5LDYgQEAgaW50IGludGVsX2Rpc3BsYXlfZHJpdmVyX3Byb2JlX25vaXJxKHN0cnVjdA0KPiA+
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGNsZWFudXBfdmdhX2NsaWVu
dF9wd19kb21haW5fZG1jOw0KPiA+IMKgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaW5pdF9sbGlzdF9o
ZWFkKCZpOTE1LT5kaXNwbGF5LmF0b21pY19oZWxwZXIuZnJlZV9saXN0KTsNCj4gPiAtwqDCoMKg
wqDCoMKgwqBJTklUX1dPUksoJmk5MTUtPmRpc3BsYXkuYXRvbWljX2hlbHBlci5mcmVlX3dvcmss
DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2F0b21pY19oZWxw
ZXJfZnJlZV9zdGF0ZV93b3JrZXIpOw0KPiA+IC0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxf
aW5pdF9xdWlya3MoaTkxNSk7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZmJj
X2luaXQoaTkxNSk7DQo+ID4gQEAgLTQzMCw5ICs0MjYsNiBAQCB2b2lkIGludGVsX2Rpc3BsYXlf
ZHJpdmVyX3JlbW92ZShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBmbHVzaF93b3JrcXVldWUoaTkxNS0+ZGlzcGxheS53cS5mbGlwKTsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgZmx1c2hfd29ya3F1ZXVlKGk5MTUtPmRpc3BsYXkud3EubW9kZXNl
dCk7DQo+ID4gwqANCj4gPiAtwqDCoMKgwqDCoMKgwqBmbHVzaF93b3JrKCZpOTE1LT5kaXNwbGF5
LmF0b21pY19oZWxwZXIuZnJlZV93b3JrKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBkcm1fV0FSTl9P
TigmaTkxNS0+ZHJtLCAhbGxpc3RfZW1wdHkoJmk5MTUtDQo+ID4gPmRpc3BsYXkuYXRvbWljX2hl
bHBlci5mcmVlX2xpc3QpKTsNCj4gPiAtDQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoCAqIE1TVCB0b3BvbG9neSBuZWVkcyB0byBiZSBzdXNwZW5kZWQgc28gd2Ug
ZG9uJ3QgaGF2ZSBhbnkNCj4gPiBjYWxscyB0bw0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBmYmRl
diBhZnRlciBpdCdzIGZpbmFsaXplZC4gTVNUIHdpbGwgYmUgZGVzdHJveWVkIGxhdGVyDQo+ID4g
YXMgcGFydCBvZg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCA5MjZiZjljMWEzZWQuLjhkZGZjNmVm
ZWY5NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTY3OCw4ICs2NzgsNiBAQCBzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBza2lwX2ludGVybWVk
aWF0ZV93bTsNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHJwc19pbnRlcmFjdGl2
ZTsNCj4gPiAtDQo+ID4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGxsaXN0X25vZGUgZnJlZWQ7DQo+
ID4gwqB9Ow0KPiA+IMKgDQo+ID4gwqBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgew0KPiA+IC0t
IA0KPiA+IDIuMzQuMQ0KPiANCg0K
