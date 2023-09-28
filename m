Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07E67B1379
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 09:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F1110E5D8;
	Thu, 28 Sep 2023 07:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDF710E5D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 07:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695884453; x=1727420453;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JFuQXW6ED4ApT6djtjI8W5N2WCxYO4xchrm+kCwr0sc=;
 b=KRqEkYONoWqfzTMSBF/NfoQtb9c3/V0+5Z7TQGSNOBcXseFtBxy86g5u
 tXFw0kqzZKqkvCubzVbqKCl43X8HLpT44L8QE8U2D7ojutkIVVdifEaNf
 IT82BgV2ZgXaBIDcc/kLaBRIKkB4DJnCCODHIIkjBFKF8FxEkoYeEFslh
 ppXASQlLxZBwuBhhhM3389WZdU0aJUz1EOm8nH2E4g7s+MnIPYohLS4jF
 YXrrZdEKl3soIk6lN0PyEet5HVcgj6wgOphdYZqy5Tbn/aqJSZazrLSSl
 1ly2Nm7EXhD8yZQlzvGpHr+w0XFoaNvnzQZN9Mv94ejbhhv2lXl+oCM3l Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="604627"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; 
   d="scan'208";a="604627"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 23:53:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="892918955"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="892918955"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 23:52:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 23:53:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 23:53:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 23:53:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 23:53:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kwA8qFkdghDH7NVZRxq8WDH7ZdclrDnGLIb8bK13/pL2dcRD7j5ECuhpWYChcxMT4GyLXPwcpK/vZklqmWUPUSNdki4qj1FTmhji088dtjY31FRnhgBopCxB/I5130DIs24Y/3y3BeTp8YgnNHlSnpB3KalerRqQ+3+i8pJFzpNxCcoGoYfHbK9F4okdAkr5E2nlqiCX9kZV5HlupJ64mKDcuR8P4ua4j4jrOw3HsZu/CKXNyMzWvs29pahERyiUYkxtiqBwNIw4GvmVZ1LekxJK/S74xi2czDTnfmZhaXkddybzSHkmGTcoQdD3dtGWppeabr55ULIW5diZ6xpEPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JFuQXW6ED4ApT6djtjI8W5N2WCxYO4xchrm+kCwr0sc=;
 b=ZJg40ap0spwURWLi5NNwmbW9x7xxJoRRU+Z0/fnIGdpvbh+AE1UrXPqE7LQHrFJZhtHajeDCjjUkUGO7YImrr25jh3pHZekhNTFfYP0y/zuDJVhKkdKSMDdxhFBjyEu53stK5u5Xwlqe+oIgK4a/Xx0l4idff1OzBPZrZc/fyvKHJLtet4WATGL8IjcgaVK2X6LxPmsibHnQO2bQm3A2U53QrXH7r7LRtr1p4cAkyU+81JPJbr3pDTku+4Tt5u0nQzdZxcGWGT2gQUm61cb6JNjRsgW8LR1SwYkIyClfXbguyg2ts1A675Lm3pqn2IRC+p2lQqrTMwl8YYQHfydSzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4990.namprd11.prod.outlook.com (2603:10b6:a03:2d8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Thu, 28 Sep
 2023 06:53:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6792.026; Thu, 28 Sep 2023
 06:53:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Ignore set frontbuffer return
 value on release
Thread-Index: AQHZ8S03o6Lw+rL2nkeKHUYpL1EfKbAutiUAgAEYioA=
Date: Thu, 28 Sep 2023 06:53:45 +0000
Message-ID: <51e8aeb43bffa1725679d4627119c3beadfcc674.camel@intel.com>
References: <20230927102707.3935596-1-jouni.hogander@intel.com>
 <ZRQ3ovAwdQA8j9ab@intel.com>
In-Reply-To: <ZRQ3ovAwdQA8j9ab@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4990:EE_
x-ms-office365-filtering-correlation-id: 32e4b205-cd85-4b97-81e9-08dbbfefa8e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kbHcFMA4I/M7eTXsj365Ry5ocdSVFEKFovysuUsNX+7R8Nv+4IXp0JQOSsoT0qIMUsI0dC+CqT3ViqqP1VoWxEzvmL7koyaYQqvw8j134XIgRGZMSTHqbBphQmasGhVRREDghxgOWd1h6dhMJJW3Xk9pLpk15DpdfIG2kWvs0sbY1JUVPKoq7j/qvFH2rE5d4Fp6myDdRL6cSLo7OXYiwgtYwBvz6Xxo2dG7gkLMUOA0TqtpENKlKpgA9D8Ak0NZc7ysYW4byjITbPPsbVsaXcK0HV3GycZcNsZ/H74SKm8Ub5bG05KvXxQWdNKFelZ4vjuJa8ygQsVqfpRtQX+fZu1YCURHbQzRwfndndhPu4oZAC95ycktz0Ts/KWAn8jG4PqAL8QjGumheQ0qJ0/d5JIi03dTOw7HC8Ptt6wZYrTo7dRJecQqAAAJUOPbh7LUIMIxWUae8TaRTogfpLPqeIYtkd4cV81Zxi9GbrA/0vy3S7Z4W8rb7wkcT9/ERwdY4I7/ozOu18t6yLgBMRirw1QWceYM4xO64kuoBA/uWKG54ZG2KOCEpris8Lqm5QhX++dTjTuqSJYMbHtMtbvQR47FHr0oeRpbenFHsM6DgNqQjxBGdiXHLuImt7HURi57
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(136003)(346002)(366004)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(38100700002)(38070700005)(26005)(122000001)(82960400001)(66574015)(91956017)(2906002)(66946007)(83380400001)(66556008)(6636002)(2616005)(316002)(37006003)(64756008)(66446008)(66476007)(76116006)(86362001)(6512007)(6486002)(6506007)(41300700001)(36756003)(8936002)(5660300002)(6862004)(8676002)(4326008)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cVI2SmxEZ1h6eFhPc2tWWjNzUzhSZENtdWdjR2puRWlpM1FLRnMrais4aVVi?=
 =?utf-8?B?L1U1ZzVSWU9TZnQ2a0FJdzUwWnNadXhYN2NDOGxnMFFlTklReVdjVjJIUjBO?=
 =?utf-8?B?c1RIeCs3VUdXREtRdEVPY0tXTW9nU0R5dFBuNGJTWC80SzFmdVdMR3JjV0VD?=
 =?utf-8?B?aUdySzB0eUxNcG9uUDlLbDVLaDBaOU1rUTFENGdQem9FZWJ2TmpKVHRLbzRv?=
 =?utf-8?B?bWdzSzNrUlJvWnNpV0k4SEZtb3dxeGVGMkptZi9ocUwxaExQRzQvV2lQZElU?=
 =?utf-8?B?QXd1cnlabmdtOTNQRnFYbktpY1NEVmRITTZUV1V1TDkySEtVWldaOTBMZDFG?=
 =?utf-8?B?eUJ6aXlucFdIaTQvZDNEaWZVbnJGaEdrOHdWazRGUjBRSmdYWm0rNE0rQmJC?=
 =?utf-8?B?WHkxZ1NyaXpUVktFem81QlZnYzhrQ0RVQzcvWitoaE0wZ0VqQlZ4VVBHSFl0?=
 =?utf-8?B?eUNocE9Ydm01bEt2dHhJU0V0M1I4Y3hBcy9nZmVXNnhjQTQvZUlZN0NvMWNu?=
 =?utf-8?B?TXh5U2EzVXAyME12bjU4elErMUs3VVArVlJtM0NGWGxVbGdicW9jeWlkcEhD?=
 =?utf-8?B?OFZmK2xKNGljd1AzSVluR0M5QTcrOVBpS0ZsWjJ4ZUJRY2FGRmgxM0NROU1m?=
 =?utf-8?B?VDY5aTNuQ1JqT1BtOVlvclhTYVpOU29iQUErZjFYaDJBY09ZaDhXQ1Q0ZGd1?=
 =?utf-8?B?YVhGcmFST1cwcTJTVnA3Z01IRkZRKy9mWG1aQUhELzBPVlRFdHV3N0R3Tkp6?=
 =?utf-8?B?OHhkMHYrczVPU3BZdU9JSXJYcldlZVM3YzJoWWxyUnQ3VUIvQ3pJNTl0enVn?=
 =?utf-8?B?ZnZTOHZaZVJ0dVdJdU10Z3hYa2ZUSHlqUHNYOXluMFpQSTdpZnVTMnZ6VGxm?=
 =?utf-8?B?NkxqWENOK0JybFprV1hUUzJhaE5qcnI2dWE0eHRva2Y1Y2NUS2NRc3FTdHlY?=
 =?utf-8?B?OW9Vd0cydzNjeUFhSWwzSTViOFRnRWhBL3FUV1k2UmNqOElSTWllOXQ4bjc4?=
 =?utf-8?B?czVqSzlHUzlXTkxaWEx0OXhIc3JzT2hVcHVVdTV2aG52YmdGS0c5M3VDZnE1?=
 =?utf-8?B?T2srTzdiR2daTVU0Q0YxZld6T2llYVB3L3lsZTM3dkJQZzl4YWZtUk1xelMz?=
 =?utf-8?B?Z0o4dkJYMjZ5SjlYNnlLeExEbDRZaG9hTlhDeUhvZDI4SFhXRmZJbG9BT3p1?=
 =?utf-8?B?ejE0UzUxOFViK3lrb3k2Vm9haHVTMkxLTFdyS3NCZldPVXZhOUxFVmRGaWZZ?=
 =?utf-8?B?c20wOUFXaWl3UnpjV1BZZDNKNmFaQ2w2ek8yVmE2QWJBSUQ4eGVuME5YRlh4?=
 =?utf-8?B?Q29EcmRkRU1TSmJ5RGhxYUtvVW9wbFRTVGRPWDRKbzBGWVlDUG1pNEV6WVlH?=
 =?utf-8?B?RW5wYXZnb2tRcTcwN3JneWRLNmJtNTBUYjVSTHpjWThNeHB1Zi80cjcyVlRz?=
 =?utf-8?B?RmtGRE0vN3JXTTg3SGZlNHNFU0pBeEdHVHI3ZjZtcVBPWk50dTM4S3A1Kzda?=
 =?utf-8?B?WnVWbS9lVTk4d0YycGUyVG1tNzhQcjYvR0lzQ285NzI3WFNwaHhaNlVObjB0?=
 =?utf-8?B?K0RXdytTM2NjWHp3STNPRHlaMmFyNlB5U1FlcEhxQXNQS3hMOXB5d0hUOEw2?=
 =?utf-8?B?VWVOZm9EcGFUbTRGK0ZZbjRkRzhEdGpWdW9hUTgzandhTHBnR3N1Uk9idW45?=
 =?utf-8?B?S0UxMEg1YnhTTUUxQ3h0TzVWRnQxM0JPYWtBZDJDcndwOFlqYnU4d3NyMEha?=
 =?utf-8?B?ZkgweDNXY3RJbFcvYStQcGs2Ui9WTlVKUVg3ajdhSmxzeUFyREtXQmRZWjZS?=
 =?utf-8?B?NGlnV21CbHdoVzhyTVEzU0huaS9pL0duT09qMFFXd3FCeVRJdk55ekhLeE5s?=
 =?utf-8?B?NmtsZE03d0xoclpxSWdRbXEwWlNNVG52bkxDbit1Q0N5YkREeE1Rc29DSHZv?=
 =?utf-8?B?Nmh1aGNWVUcrVy9CQ2FBNHlIUnJTeDNXY3dJNVRubFNHTllQV3ZKT0gwdnZ1?=
 =?utf-8?B?Nm9aWWJPbXpaZzY4blRZc1l6K3k5TDdrZkZhZXY3K1ZyaG4xRllKQjRlT1BY?=
 =?utf-8?B?K294VklTK1B2eGdMekNWT1EzZVo4QWRCanBqbTJrbXh2M3ZMTE1qL2drT3RQ?=
 =?utf-8?B?a2U1dEJ5bkRjR28zRUJOZEx3WlhiaEFhZmhQcVZpMGczNU92TjN0amtpajhr?=
 =?utf-8?B?eVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B64D9AAC4C1B8B46AD08FF5B47729509@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32e4b205-cd85-4b97-81e9-08dbbfefa8e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2023 06:53:45.4335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eP4HeFDX9v1Sah93oQs2MbN/6VEBFzmyq6wplEwSgl4qRjp64uG5rKMoAXMTt1KK1/qo9afGCMKDH7uRm6cBfu78d7s2SXSzxbGia8txvJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4990
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ignore set frontbuffer return
 value on release
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA5LTI3IGF0IDEwOjA5IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFdlZCwgU2VwIDI3LCAyMDIzIGF0IDAxOjI3OjA3UE0gKzAzMDAsIEpvdW5pIEjDtmdhbmRl
ciB3cm90ZToNCj4gPiBpOTE1X2dlbV9vYmplY3Rfc2V0X2Zyb250YnVmZmVyIHJldHVybnMgc2V0
IGZyb250YnVmZmVyIHBvaW50ZXIuDQo+ID4gV2hlbiB3ZSBhcmUgcmVsZWFzaW5nIGZyb250YnVm
ZmVyIHdlIGFyZSBjbGVhcmluZyB0aGUgcG9pbnRlciBmcm9tDQo+ID4gdGhlIG9iamVjdCBhbmQg
dGhlIHZhbHVlIGNhbiBiZSBpZ25vcmVkLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jIHwgMiArLQ0KPiA+
IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRi
dWZmZXIuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1
ZmZlci5jDQo+ID4gaW5kZXggZDU1NDBjNzM5NDA0Li44ZWYwNTM4ODEzZGEgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5j
DQo+ID4gQEAgLTI1OSw3ICsyNTksNyBAQCBzdGF0aWMgdm9pZCBmcm9udGJ1ZmZlcl9yZWxlYXNl
KHN0cnVjdCBrcmVmDQo+ID4gKnJlZikNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpOTE1
X2dndHRfY2xlYXJfc2Nhbm91dChvYmopOw0KPiA+IMKgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaTkx
NV9nZW1fb2JqZWN0X3NldF9mcm9udGJ1ZmZlcihvYmosIE5VTEwpOw0KPiA+ICvCoMKgwqDCoMKg
wqDCoCh2b2lkKWk5MTVfZ2VtX29iamVjdF9zZXRfZnJvbnRidWZmZXIob2JqLCBOVUxMKTsNCj4g
DQo+IHNob3VsZCB3ZSBjcmVhdGUgYSBkZWRpY2F0ZWQgZnVuY3Rpb24gZm9yIGNsZWFuaW5nIHVw
IHRhc2sgb25seT8NCj4gb3IgbWF5YmUgc2hvdWxkIHdlIGF0IGxlYXN0IHByaW50IHNvbWUgZHJt
X2VyciBvciBkcm1fd2FybiBpZiByZXR1cm4NCj4gaXMgbm90IHdoYXQgd2UgZXhwZWN0Pw0KDQpU
aGFuayB5b3UgUm9kcmlnbyBmb3IgY2hlY2tpbmcgbXkgcGF0Y2guIEp1c3Qgc2VudCBhIG5ldyB2
ZXJzaW9uDQphZGRyZXNzaW5nIHlvdXIgY29tbWVudC4gUGxlYXNlIGNoZWNrLg0KDQpCUiwNCg0K
Sm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fdW5sb2NrKCZp
bnRlbF9ib190b19pOTE1KG9iaiktDQo+ID4gPmRpc3BsYXkuZmJfdHJhY2tpbmcubG9jayk7DQo+
ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaTkxNV9hY3RpdmVfZmluaSgmZnJvbnQtPndyaXRl
KTsNCj4gPiAtLSANCj4gPiAyLjM0LjENCj4gPiANCg0K
