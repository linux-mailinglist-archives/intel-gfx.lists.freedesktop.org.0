Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF85A7B2DBF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 10:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FEA10E6CC;
	Fri, 29 Sep 2023 08:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8955510E6CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695975848; x=1727511848;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AxQARgtj+S9uzP3ht/Bh35IvZs6lP5yxcpGFPUHVtAY=;
 b=LD+aCDMNcin4x8p921XwrB0jPCuqfx3/edMGKWcvO8+8/C+T4KZh2J5B
 cMIml4fVuvtYeoNkhIA/dYicWWl9PFOTr0cMrICb74CWzvg5qbR3PD8DD
 SrXF6ZP1x0g2AUAlyCID1PIFAp5C4if1GII8oWQ9E+SdAived6lSUfzuY
 ak4feduO3M+TL5d8lEfLeTidONrZoTyMSWZihr2xIoYHW+/nTfWX6l022
 NAf7cVzq6gh7kTq0ffaIgXlehq+85xMoPGItAWd3hrf4Yl7yGzWEBVX2r
 Rnai3jpY5s1gIbQErzv9E76HXw9HEFGuQGLynFiu4g/MDpUwlZrzvsSV1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="3823771"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; 
   d="scan'208";a="3823771"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 00:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="753289081"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="753289081"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Sep 2023 00:37:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 00:37:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 00:37:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 29 Sep 2023 00:37:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 29 Sep 2023 00:37:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JUacaEF5Di65CpoBe4eRnEwi/s6l1MCI5NqKO911GssOuuwOnvpIgSFAEO/+rCk+MTa640HeQH9Syc1zPYsI8jLoVdpn1w4UYkLo+LufQTIKCEmwunvp+y7K1YtloHOUyqWcpOEtg/wAtF6Bv9RQOV5f2F2gZ3BGSM9Sh/vEZaRmbeXL4Qx6CK145ZT8t3KwQ00CzcuJ64IxWVCsYpuJZ+Af2yJ6QTA62YHRnyt9SKYlD8naIm7QfvQ2BDchGB2UZNAeCJm2uybHjyZaRdWINXCGguuSuyrQNjpIahkwhG1W6DniY19ZhBwc9pJQ3JR2iLCA5GhkZLju0VeCtRwFLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxQARgtj+S9uzP3ht/Bh35IvZs6lP5yxcpGFPUHVtAY=;
 b=lIGi+uuUBJwYNeE7NiJ63iJJtrDL35+juQr7wcInwDrkosK1BTrTDikJQ/FWtGOVjqDsYu+kYyyBn1+Y4SRo1qrOPUxtuUsGIJGUQNDfq4HCtghp10pxI69bfQn7tmEAc/92ZFkLTG6hIJ0R49G5457q4j8asz2kQ9z5ov/2azHGQ+jcHeJuxzMNY+KrttkBJsqrOXDsKDZB3nlrMnbLEb9QzZANA93YUiaSCyDTQcZzsC/sSmgXRr8PjNMS9YDYSJd3+Gbj7SiKyHkBNVWns523YsUq3n2j+9+E1Qp7cDVIX7jkmA3D1EEs8UNKqAhj/nrZ7/kLUCP+FCMBH5wCQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB8475.namprd11.prod.outlook.com (2603:10b6:806:3a3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Fri, 29 Sep
 2023 07:37:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6838.024; Fri, 29 Sep 2023
 07:37:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915: Warn on if set frontbuffer return value is
 not NULL on release
Thread-Index: AQHZ8eXxHK49r4kTQkaoi+iod6XVYrAv76sAgAF8OwA=
Date: Fri, 29 Sep 2023 07:37:50 +0000
Message-ID: <75d1f476b1b0ee3d57078ec44dc489b8722dbf26.camel@intel.com>
References: <20230928082924.164720-1-jouni.hogander@intel.com>
 <871qeik753.fsf@intel.com>
In-Reply-To: <871qeik753.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB8475:EE_
x-ms-office365-filtering-correlation-id: 9affc216-27c8-4a57-6a1f-08dbc0befc32
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DKJKjizkUl9gXfbNmaKorbnjluCrDBxsnFfTZbaIKZdf8WrGzlBm8n/6cdcRy5j/DpNVT/P7qdgfOfsdRzwEuOT8iaV1w+8MuslhXAAupggFCbNCQIMEshtI4zxXWqSTfw84dxEy9mpxBxgxKQMERtaJR2g/5oFNWdmPusfyFr1HTYQkwxG0i7RaA3bEbk/Uh5Mw5ecGladypwHTaIE4Dww0X9Xk9EPmntl6Jmtt5dKQRUeE3sYj9ZhyU7TM/6KPQwDDD1Dc6EGkIXDZeCrruyfwq2kuAAzlSWAt+1n24UXW1Fx2eRVOrBCDS4S8UhMkettJoLGIBXwV2eJFfTqJ+FwRx+w9ezBKiS5LklcAzqwea170XmpibxGXkvryXuxcR82FqvQeNuYDL5M9Q5rFo39tJW8hWYaNBYVnBPZ/Z6ZgKMGQmRIYPJIQPxSwmrhTBG28l/9gvF2nuCFlCEwmLtCCMY+BKwSoQjALg4l24F8ZziYwxbuB3psNuuBUEW3cgsfQ9wwNdwPXJTa7pmLpCtsp7N9Vm+5lTRz3izhrNXmu1erR5sTtVpknJ9CUG3Sx0r4GVBKlPDtbeCmfuRXSrpocl26ME0q5VAMPoQWwmm+oqJDM3vysy3YESHX6sQHm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(366004)(39860400002)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2906002)(86362001)(38070700005)(71200400001)(6506007)(83380400001)(5660300002)(6512007)(38100700002)(6486002)(36756003)(82960400001)(478600001)(66574015)(122000001)(8676002)(8936002)(4326008)(66446008)(107886003)(2616005)(41300700001)(91956017)(110136005)(76116006)(26005)(66556008)(66946007)(66476007)(316002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3Myd1dEMmtOS3lNcms4VXBUc1VyeVh3cUhURW5pWEU3SEcwVTJWUUYwUXQ2?=
 =?utf-8?B?SG9OMFRSdE9GQkRncUk2ZDFZME5VdHlKclVabEZiU2wvM0JXL25uVWxwVWZ5?=
 =?utf-8?B?M0lPQ1gyRlBBNXpPUzVSWVJtaE0zMEdQVHNrRHNCcEsrVmVDMm9DOU1BMDNy?=
 =?utf-8?B?VXJ6ODJsTE9CUXBiVTNJa0hlQlFIMGZKU0kvUFlGU0dVRU9ra0oyMzZEWkp5?=
 =?utf-8?B?Q2RiU3N2QW9kV0dLYUZDdVg0VnJCSVJEZm9rT0tmSnk4RjNMNFRGeWlHTFZh?=
 =?utf-8?B?c1krYjF0U0pTTUFiUE5xWEU0b2ViMUtyMWs3L1BJZk0yTGQ3cnVuOFJKdGRh?=
 =?utf-8?B?RFJlUHBQNDVEZG9KdThTWGpYRGRZYndVL09wTDJ5Nk5QS2QyejAxNm8rcU9M?=
 =?utf-8?B?RWZMcWw5Z2VIUHpHODl1TFZwZEVvbDlDV0luUEJEcVU0QkU4QWRXTVZKZXhE?=
 =?utf-8?B?ZVF2blJMVTM3ZGo2SGdGRHdjZytTdHlnMDRkYWJkdndvN1FZR0ZLME5Qa1o3?=
 =?utf-8?B?azlJenBLMytMRURoVkRHWG9PbnYvZ2FaUDNHSWFvNlR0Vmh6blJvM1gzZVoy?=
 =?utf-8?B?MXJaWmRJR3R0L0F5Z3pXd1U0OW5EMHVwY0k4Y2ZHamptT0ZCSjF4MkhqV092?=
 =?utf-8?B?clkyaHk2c0krSS9vdTNEOXlDd21PT3lETDFlQXI2QnJvOVkvQjBIeFdiWXg4?=
 =?utf-8?B?Q3IvR25tc1UwTk1nM1k3ZVhHVzl4bWN1NVBjNTFhQ2dUM2R3MUZuR09iZWFr?=
 =?utf-8?B?UEdpZ0hGTFc4SGIyLy9XTFhXWE1WSTlzZllvdU5CMnlJemlDRzJoQVBqMGl2?=
 =?utf-8?B?Ylp3RmdaOCs3ZXhvTE52Rkh4NVJBb29maW8vNnBJTytEOTVMVzN2bnp2S2sv?=
 =?utf-8?B?WGtsSVhhYS9zbVg0am9EeVhqSUJtNjJ6WkpDVTU4aFBUbWtibzVEU3NkZFVP?=
 =?utf-8?B?RjdweWVZOGlScXlubitMTExzYUd3Z1FlblQzOW9WYWtIeW5rUWw0TDEyVklW?=
 =?utf-8?B?TGtmNTIvR1kzM0x1RlpnVkJaVHgyeWJaSnNRMWl0K25vZWFuZnhicE5wVmJT?=
 =?utf-8?B?YVAxTm5iMTdyV0dpYkIvVW12OWhnZElJeEc4T1cwTHdkVU0rRDZuSHZIcUh0?=
 =?utf-8?B?TVF0Vmg3MGMrbU40UXYvVG9iTHdJMmZKR0hDQ09FV0hOZG9uVHF2WUtoRWlo?=
 =?utf-8?B?bWJUOW9WTFpGT2hXclBCSXVURkJUb3VQRnRZMmVBb3J2c0c2bGJFYmVvelBk?=
 =?utf-8?B?NDNIa2s4SU9yeldoNjlXOWxyUFFiK1YzZlRmbCtpTWtYNUxCWm9pcWFzUzUr?=
 =?utf-8?B?OERrR0xaZ2FKWnl2RHluaEJvVkVMOWZ6RGEwS0dtaHl6MUIwRStPanhtUXpt?=
 =?utf-8?B?VnViejJ4SnNQRVRmNk5sRWU5MUxwQm0yYlVsRGVpV2tOOGlBRkExRmFtblVq?=
 =?utf-8?B?cmw4dmRmRW1wOTkrc3h4TGsxQkc3bUJGNXVmQStEYVNvVHpENXY1eU8zQ0xx?=
 =?utf-8?B?SkEyWENDZmNpcXRaY2tGVkE2QmZ3REFkNld5Z1MrSU9kbWQ3d0J3T3JTRnB6?=
 =?utf-8?B?NXkrMHhxYlk2OGNsTFVXL214OS9RbGNIQzBMdGFLbDJGVFVCcWxHTnNVSEJp?=
 =?utf-8?B?VmlyUGpkdnd2MjhKU1B4T0lVVmJObkN6WkwyZXVMajBXSkFXUy96emdIdlQx?=
 =?utf-8?B?bUxmVFFqMFBuU1dJWFE5enZ6d0dNWDhhTWp4Vk9sWm1HbHlxTjBqVXRFZVYw?=
 =?utf-8?B?aGg1NGlHQ2IwemxEWTNlM2tObVpNMmNLcHJHMHFKYUZCSWRiN2dCWGJWQ25R?=
 =?utf-8?B?MUxseDY0NXF4ZlJDYmVrZVROQ2E3SkovQ3UvRlF1RkgxQnNqTkZYTTI5cDBG?=
 =?utf-8?B?Q055RlNSdzBnVHVVT09sb1VGNEtHWGN2bm9OclpzOUJEQjZUYS9rbjIzaFND?=
 =?utf-8?B?SFNlb1RxUDhKS0pGLzBZMmdKYmZ3Si9qRHNJc09QellvaG9mMG9vckVueTVT?=
 =?utf-8?B?OW55cW13cE1pcmFTTU56alJIdFVCRUs1b05rVDNPejVjREYyZUd6VmVvMmZ3?=
 =?utf-8?B?KzVoVFRBOHlxaFkwNnk4a0FaREFEZGcrWVZ1U2JjYUFFaG9hL0dsZEVsK0gx?=
 =?utf-8?B?QzUzMlpYckdVanZwd21RSWdYYkVoaDhGbDV4NUtZVXNZM01OaFpnSTRBaWFM?=
 =?utf-8?B?eGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF146E31635C794397F0DDB997D6A732@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9affc216-27c8-4a57-6a1f-08dbc0befc32
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2023 07:37:51.0082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wPKA/TNLjs/h1K0GV39+Euj0sKmAALCOAk+qSXZzny+jE7UxztCiUo8kwyNYYraBdbxpQdTFQA6WiDQLyvLMFp/8BObl3ua2HBtbQN05ODw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8475
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Warn on if set frontbuffer
 return value is not NULL on release
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA5LTI4IGF0IDExOjU2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAyOCBTZXAgMjAyMywgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IGk5MTVfZ2VtX29iamVjdF9zZXRfZnJvbnRidWZmZXIgcmV0dXJu
cyBzZXQgZnJvbnRidWZmZXIgcG9pbnRlci7CoA0KPiA+IFdoZW4gd2UNCj4gPiBhcmUgcmVsZWFz
aW5nIGZyb250YnVmZmVyIHdlIGFyZSBjbGVhcmluZyB0aGUgcG9pbnRlciBmcm9tIHRoZQ0KPiA+
IG9iamVjdC4gV2Fybg0KPiA+IG9uIGlmIHJldHVybiB2YWx1ZSBpcyBub3QgbnVsbC4NCj4gPiAN
Cj4gPiB2MzogQ2hlY2sgaTkxNV9nZW1fb2JqZWN0X3NldF9mcm9udGJ1ZmZlciByZXR1cm4gdmFs
dWUgc2VwYXJhdGVseQ0KPiA+IHYyOiBJbnN0ZWFkIG9mIGlnbm9yaW5nIGRvIGRybV9XQVJOX09O
DQo+ID4gDQo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiANCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
DQo+IFJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpU
aGFuayB5b3UgZm9yIHRoZSByZXZpZXcuIHRoaXMgaXMgbm93IG1lcmdlZC4NCg0KQlIsDQoNCkpv
dW5pIEjDtmdhbmRlcg0KDQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Zyb250YnVmZmVyLmMgfCA1ICsrKy0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+IGluZGV4
IGQ1NTQwYzczOTQwNC4uNDEyYTE5YTg4OGEyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+IEBAIC0yNTEsNyAr
MjUxLDcgQEAgc3RhdGljIHZvaWQgZnJvbnRidWZmZXJfcmV0aXJlKHN0cnVjdA0KPiA+IGk5MTVf
YWN0aXZlICpyZWYpDQo+ID4gwqBzdGF0aWMgdm9pZCBmcm9udGJ1ZmZlcl9yZWxlYXNlKHN0cnVj
dCBrcmVmICpyZWYpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoF9fcmVsZWFzZXMoJmludGVsX2JvX3Rv
X2k5MTUoZnJvbnQtPm9iaiktDQo+ID4gPmRpc3BsYXkuZmJfdHJhY2tpbmcubG9jaykNCj4gPiDC
oHsNCj4gPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZnJvbnRidWZmZXIgKmZyb250ID0N
Cj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZnJvbnRidWZmZXIgKnJldCwgKmZyb250
ID0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnRhaW5lcl9vZihyZWYs
IHR5cGVvZigqZnJvbnQpLCByZWYpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqID0gZnJvbnQtPm9iajsNCj4gPiDCoA0KPiA+IEBAIC0yNTksNyAr
MjU5LDggQEAgc3RhdGljIHZvaWQgZnJvbnRidWZmZXJfcmVsZWFzZShzdHJ1Y3Qga3JlZg0KPiA+
ICpyZWYpDQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaTkxNV9nZ3R0X2NsZWFyX3NjYW5v
dXQob2JqKTsNCj4gPiDCoA0KPiA+IC3CoMKgwqDCoMKgwqDCoGk5MTVfZ2VtX29iamVjdF9zZXRf
ZnJvbnRidWZmZXIob2JqLCBOVUxMKTsNCj4gPiArwqDCoMKgwqDCoMKgwqByZXQgPSBpOTE1X2dl
bV9vYmplY3Rfc2V0X2Zyb250YnVmZmVyKG9iaiwgTlVMTCk7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
ZHJtX1dBUk5fT04oJmludGVsX2JvX3RvX2k5MTUob2JqKS0+ZHJtLCByZXQpOw0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBzcGluX3VubG9jaygmaW50ZWxfYm9fdG9faTkxNShvYmopLQ0KPiA+ID5kaXNw
bGF5LmZiX3RyYWNraW5nLmxvY2spOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGk5MTVf
YWN0aXZlX2ZpbmkoJmZyb250LT53cml0ZSk7DQo+IA0KDQo=
