Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD6677AB4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 13:22:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AB710E34F;
	Mon, 23 Jan 2023 12:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1136E10E34F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 12:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674476546; x=1706012546;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SgYp0d27TbEfOvddouE5PBbx7UR9+LNFpWTBhfsNULI=;
 b=A137iwn8YrPIGu6CyRU/CaMRBjwz6SwWqUIx8dsfeK4zQPkAKneP/7bp
 r0tC5ds/zseCeHGhqe+H/E58HZLzYv5NL5xUyibF3I0ZyWdoZ3dRz2x9/
 FC+ZCoaooXdJ8XpauW2rkDb4/OtnbWd7SlERC70rXsIARA7nQ+nzdfKZk
 GVjqEd6W9IKXFV1o5yxZKGOvJ4M1jvaeq1uO03NJFDg7KdABCsAkA5DFk
 gkllH/IHTpQnjr/n6QHYAFkYLBZ2qfc2zKX1aGz8WOArvOnVo8y0OFIVU
 3l5qOJCgga0QNP1IIeISI1hDorkbSGlFE2scb5mDe7/if4V5/uDDXKmmq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="353288884"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="353288884"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 04:22:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="730164393"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="730164393"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jan 2023 04:22:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 04:22:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 04:22:24 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 04:22:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRBNNEjmbgEzK1yaRQ/zb5ThlaEnrP1mTLig06SxzHqnnVywrLWifPccXbUcygIJ3epsn2pcUFfaIKLwfFg1LtT2P27uczeCLBET5sRuRG3HA17nqpGxJTF6Eoc9gPHhXMidSCwZ3UjZYOTQRFZjWuTVMGEJXbsCMk7eDnvdKm2QQL7ZFbYVUKYOmrkX1ZdIJw7q0/emwUBTIwuzv9SZjqzVno/sDcc8nypnifB+HQZSvHn97rT0GPVCuIDbPXADGC8YAZM0fR9QSSVwT/nTZzrVLTPgodLhLiwCcpxb+jf/s7JTSFqaWW411sG6I+7nWAQHuWYO3QVAGfCvaa/RTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SgYp0d27TbEfOvddouE5PBbx7UR9+LNFpWTBhfsNULI=;
 b=XZlS92nTccWPS0p7U2j1eZnCdhqBpuiLSyarh4wu+I7mXHRg4UiEfKEI6Xp3IBq+X87c+e7V07uIFjP3JFzwMHHQR3qmofF8QVM1V1HyaxmrJvBArvshfLJoj0+POiFkCboqjdY9hYNcJU/svXN+7jDBINiIJqHfHdbTNOUrhTNS+R/fzSbBix/dg87HNzvUktprGwtmq5wbkFgukoOPPmN99l1NASsPBSJUd4BaI4B3VVPY/HqeuWtpTg4UIx3oIE8Z3+c2SrvVoRt87uIPQ8gc0KZ3fKdvOiwnKud5YpyQr8f1xJudCLDhSnHPJPTGqmVYjI7/fiN4Du25UMlgAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Mon, 23 Jan 2023 12:22:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%8]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 12:22:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Thread-Topic: [PATCH v4] drm/i915/fbdev: Implement fb_dirty for intel custom
 fb helper
Thread-Index: AQHZLv6a5f/GCleKCUS15L0YPf7iqa6r4IyAgAALuwCAAABkAA==
Date: Mon, 23 Jan 2023 12:22:17 +0000
Message-ID: <f90b5b218905f97961c8a3271423b127b8e96088.camel@intel.com>
References: <20230123074437.475103-1-jouni.hogander@intel.com>
 <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
 <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>
In-Reply-To: <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5144:EE_
x-ms-office365-filtering-correlation-id: 1aba122d-301b-4ff5-e823-08dafd3c77ac
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xzM6lWWWMkbm4eKl+mupyCtiqbM2hKhVR7VM7zUe65l7VtaOngxFcmpbky5Saia0QiPznzXq6LleZM76v+gzPFETLwBl8MidQ/XQFEyWwfU9hn9HINdwJVyv0zaQxeuwfa9xC7gSZlHyBpMfmnACijpvC8c7sAtcZ4djAUe4aEsLKY7pk1mkPX79IthcI4pSC1W0pBmL5lc+nuTNaD2ZjsOohhqsqZwyx0/aMavsbVhG78olcrN3GPM5kPCorLrbuS8fkPcNvaIWchMPHucuTBnTTudFuFgD7KBoU8BAKLCFSNnuDbfzu8Ob7PR/FPB0xlyKm1KKZFHPI86U4/0wcqRCSrkx0yLl6RpO4dDuc87qbzW1nTskfI78zDXGeYtpwJgnXVo0eBWxiLkgz8xHXCoSIsuPyOzQyzSDyDG5EUbnZCeh5RzWJCOZyMyY9/wAhp+8WRC2b3QWBNg6t4SwTSmQNJfIBKpCBh2kiqKpmwOw/I72G38Wf7GZsOH7DFeLJGw0Oe9BL2A/z+iczHmSvPPajgnzTm3r5pIvMKo6XEGwTLHnZSQsRvHmU3hN7s3KVZA4Pj6b7ZjyWktiyHZkrhGIITTLuRx8/C4RPJfUgAYJxIYwbTRQVeaNVX4P/a8HYFNkrUld9VWgggHcxoWI9o25JefLWWugtW2pDRsARzhFxj40xq5iLEvvjZrKL/v+FMJc+PteIiwM929BHhiLYI25pNfagsTp4TbEYikySpQAfblQJvOgi7nqiCiKp+ZKv2TKSERnwrxWF+d6kRlQng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(136003)(346002)(366004)(451199015)(71200400001)(2906002)(76116006)(66946007)(66556008)(66476007)(4326008)(64756008)(8676002)(66446008)(6486002)(66574015)(2616005)(91956017)(6512007)(26005)(5660300002)(8936002)(41300700001)(186003)(6506007)(83380400001)(82960400001)(122000001)(38100700002)(478600001)(54906003)(110136005)(38070700005)(316002)(86362001)(36756003)(14143004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFE4M3RjYzc5UDcwNy9rbEFnWnZsdzlWdnVPTmNrcklxMXUyWVNzMGlhNjNu?=
 =?utf-8?B?Ym4rU25ZbE1mcnZHMWxFSDBkTlh2OVN3L29DNzBhZTd4VkRpSjB0SnlxRytT?=
 =?utf-8?B?RFFqYW5nU3BJdmJqYnFyRldUK0Z2dldoS2o5VGpRSEwwbnBBdVZUOUlMNEdC?=
 =?utf-8?B?RkhtRVNUTDl4VjZQODAwRzMwZkpMZ016aVYxL1U4KzNmZjd6UlR3S1BSWlpM?=
 =?utf-8?B?T09oc0lQSnd4YzdtQ01JWThxVTNYUjE2OUV4NGc3YlNZbzlwVkJtM3FSdGJM?=
 =?utf-8?B?cXYvS0JYOVdJbmxLSVozOTdVc1pFRjEyZDdGQ2kvSHFPdmFUaTlGdHpVTWQv?=
 =?utf-8?B?QnZrd2plWUs4NWVQcDQrMnM1UUtwaUJFeTBpVE1EOEFvbUJqajJCYk4rclVt?=
 =?utf-8?B?a2NZTVZXSHhORW53MmlHOGhVbnoxUkVEd0hVWmMyWVZKMjZZWTdlYkt3UnBx?=
 =?utf-8?B?aXMyVkM2azZ4NEUyNGZkSzVWRGVsUHhNeThXSzYyc0VSYWdsVEtENXozYzZC?=
 =?utf-8?B?K2NtN2xCWDZXYWt5blFMbVp6Q1VhY1hsTktmVENVaHpzcFVNUUpBeUFqajV0?=
 =?utf-8?B?czhzZ21CbjBJYWJJTjJraVJ3NmtFdFJoMENhcDJNOGRTQ29nUGdYT2h4MS9w?=
 =?utf-8?B?Uk9NU29PTStZR3VlSWt3S1hYdStRTjh5MVEvMTlYTDVITDJSNGtqczVNNkkz?=
 =?utf-8?B?REVpNmVTVXNGdjVucHVnTTd4VHp2NWRCaCthdStZMGt0bmp2RnlNdHFLOWZq?=
 =?utf-8?B?R0d5QzVIcVFiZ09WTFpGTDRZeGRZNm1DTGVGOU04MzFRdzRzRWZSMWcvOWhs?=
 =?utf-8?B?NTB0d1N2bHBBc1I0RjZIcnpuc0dPMWlZa1VwVWZiTHZHWmVDSGZPNlVZRHBX?=
 =?utf-8?B?Z3l0VitjTCs1Y1VvRERZUGpwUlI1akE4VDVIaENSSWNQM3d0eDRxeitCZDEy?=
 =?utf-8?B?UUNsVlVIYUlmdFFuZGNWUzdMWStzdW8ySW9Gdk0yVVU0UjgrTTl1ODNMVk81?=
 =?utf-8?B?RUo5YTR6UmFmb3BkYjlDYm05WnVMa3JGOVJzVE5nOEpDbDlZY2Y5VnBCcUlJ?=
 =?utf-8?B?YkRUYi9oVGNBR3FQRWlVQ1V1ZFRzUU0zN1g3U294SU9icUlQaUpWV3lhOW5Y?=
 =?utf-8?B?VGdvRFBpNW45cHhEVGtkRGhnVStsOVFvVktIVmEzZFF5T1Z3cm8wSU5QbmVP?=
 =?utf-8?B?WVVGVzRRSndPSGQ3YWlqa1F4TVplUEhDejJFanl4bjZxRS9VMU5NMXBISjNX?=
 =?utf-8?B?WENTbHhLSEpYM0dhR0R3YmhxUE4yakViS0ZST28xM01OR25vTmpidVArcWVx?=
 =?utf-8?B?ZFhuWXpPNnluU2l1Z0NZaDR6byt2WC9JdG5mNkZraFlOc0JsYXNpRGhZN0k0?=
 =?utf-8?B?UzBCRER5eEFJendVZ0NueG81MVhsaUNQRGdPamRsQk96eHhRNDZjeElCSmVU?=
 =?utf-8?B?Q2xoUjhXb2pJVWwvcngwVlI2eEZjUDJwY3JwU1hqUDlyOGxDNjhoK1E3a0pZ?=
 =?utf-8?B?M0lENUhpOVVna0hCazV5ZExpZU9pSy8zM3ZrYW9Sa0JPU0VvTFRWK3Uwb1Iz?=
 =?utf-8?B?dU9rbERtWStWS0lBZHNENGJnbXliMGYweDNRYklFWk1DOGc2YkFwS3RCUDlN?=
 =?utf-8?B?bGZuNXVnYnBUM25BbGh0RTVoSkoybEhoTDdBMmt1dS9QN0ljUnc5bG45bWtQ?=
 =?utf-8?B?NENIcm9SUU5zS0xySnlDc3lyWlJhUldJd3ZqaTcyR2hJWHpaYmYyYVQwVThH?=
 =?utf-8?B?UXZING1ZaWorZ0VQZktROTFESjJMSWZTbzNuT3lVUzNiL1huZThWbFZydExj?=
 =?utf-8?B?cklNa0RGaWJDMTQxdzJWMDcrZHlXOWIxbWgwc0puQndPY0l4K2xPWW1NN3hB?=
 =?utf-8?B?Um4zNkNFRTIyZVh4S3Bxd3M3a3NnRUVUcU50enprMEhjVXE4ajV3dnBYeE1L?=
 =?utf-8?B?MU9KZnFOc1Btcy8wa3F4cVpXcVhRNnpHZ2NTc3hSQnovUlRndGVuN3oxMzY3?=
 =?utf-8?B?NzRUeTNrQXhZcDh2clp6YVZTMS9WWmREQmN1VEpFaTlPMmpyeUpmWVpmMmY1?=
 =?utf-8?B?RU15ZDFTSUxSRDQwcHh2SlpBMy9GZzJROEdVOU12Q29ZTUNkTnY4WHNJY2xH?=
 =?utf-8?B?dkhYc1pvaWZtVUhoK0hSSi9ZNFI0R0dhSmNSSy9DdjVCdGloRVBYbm9qbGlz?=
 =?utf-8?B?VGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5DB93DA50991994A97E78666E5C7D099@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aba122d-301b-4ff5-e823-08dafd3c77ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 12:22:17.3407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HjHZuQJMsk8yExD+HFupX/CU1m4RyOuzJ68c18w5nVf1zjiAR+GIApXqGTOg4caz9Hf6dEMPZ1Y/WwHKl7IRzEDr2cqORQ3mao+joLtXYA4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5144
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTAxLTIzIGF0IDE0OjIwICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IE9uIE1vbiwgMjAyMy0wMS0yMyBhdCAxMjozOCArMDEwMCwgVGhvbWFzIFppbW1lcm1hbm4g
d3JvdGU6DQo+ID4gSGkNCj4gPiANCj4gPiBBbSAyMy4wMS4yMyB1bSAwODo0NCBzY2hyaWViIEpv
dW5pIEjDtmdhbmRlcjoNCj4gPiA+IEFmdGVyIGRpc2Nvbm5lY3RpbmcgZGFtYWdlIHdvcmtlciBm
cm9tIHVwZGF0ZSBsb2dpYyBpdCdzIGxlZnQgdG8NCj4gPiA+IGZiZGV2DQo+ID4gPiBlbXVsYXRp
b24gaW1wbGVtZW50YXRpb24gdG8gaGF2ZSBmYl9kaXJ0eSBmdW5jdGlvbi4gQ3VycmVudGx5DQo+
ID4gPiBpbnRlbA0KPiA+ID4gZmJkZXYgZG9lc24ndCBoYXZlIGl0LiBUaGlzIGlzIGNhdXNpbmcg
cHJvYmxlbXMgdG8gZmVhdHVyZXMgKFBTUiwNCj4gPiA+IEZCQywNCj4gPiA+IERSUlMpIHJlbHlp
bmcgb24gZGlydHkgY2FsbGJhY2suDQo+ID4gPiANCj4gPiA+IEltcGxlbWVudCBzaW1wbGUgZmJf
ZGlydHkgY2FsbGJhY2sgdG8gZGVsaXZlciBub3RpZmljYXRpb25zIGFib3V0DQo+ID4gPiB1cGRh
dGVzDQo+ID4gPiBpbiBmYiBjb25zb2xlLg0KPiA+ID4gDQo+ID4gPiB2NDogQWRkIHByb3BlciBG
aXhlcyB0YWcgYW5kIG1vZGlmeSBjb21taXQgbWVzc2FnZQ0KPiA+ID4gdjM6IENoZWNrIGRhbWFn
ZSBjbGlwDQo+ID4gPiB2MjogSW1wcm92ZWQgY29tbWl0IG1lc3NhZ2UgYW5kIGFkZGVkIEZpeGVz
IHRhZw0KPiA+ID4gDQo+ID4gPiBGaXhlczogZjIzMWFmNDk4YzI5ICgiZHJtL2ZiLWhlbHBlcjog
RGlzY29ubmVjdCBkYW1hZ2Ugd29ya2VyDQo+ID4gPiBmcm9tDQo+ID4gPiB1cGRhdGUgbG9naWMi
KQ0KPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+ID4gPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+
ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+
ID4gLS0tDQo+ID4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2
LmMgfCAxMiArKysrKysrKysrKysNCj4gPiA+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmRldi5jDQo+ID4gPiBpbmRleCAxOWYzYjVkOTJhNTUuLmQzOWRiODA1MGM2OSAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJk
ZXYuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRl
di5jDQo+ID4gPiBAQCAtMzIxLDggKzMyMSwyMCBAQCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRl
KHN0cnVjdA0KPiA+ID4gZHJtX2ZiX2hlbHBlcg0KPiA+ID4gKmhlbHBlciwNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ID4gwqAgfQ0KPiA+ID4gwqAgDQo+ID4gPiArc3Rh
dGljIGludCBpbnRlbGZiX2RpcnR5KHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsIHN0cnVj
dA0KPiA+ID4gZHJtX2NsaXBfcmVjdCAqY2xpcCkNCj4gPiA+ICt7DQo+ID4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoIShjbGlwLT54MSA8IGNsaXAtPngyICYmIGNsaXAtPnkxIDwgY2xpcC0+eTIpKQ0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOw0KPiA+ID4gKw0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGhlbHBlci0+ZmItPmZ1bmNzLT5kaXJ0eSkNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3Mt
PmRpcnR5KGhlbHBlci0+ZmIsIE5VTEwsDQo+ID4gPiAwLCAwLCBjbGlwLCAxKTsNCj4gPiANCj4g
PiBEaWRuJ3QgSSBuYWNrIHRoaXMgYXBwcm9hY2ggYWxyZWFkeT8gWW91IHNob3VsZG4ndCBzZXQg
ZmJfZGlydHkuDQo+ID4gVGhlIA0KPiA+IGJldHRlciBzb2x1dGlvbiB3YXMgdG8gaW1wbGVtZW50
IGk5MTUtc3BlY2lmaWMgaGVscGVycyBmb3Igd3JpdGUsIA0KPiA+IGZpbGxhcmVhLCBjb3B5YXJl
YSBhbmQgYmxpdC4gVGhvc2Ugc2hvdWxkIGNhbGwgaW50ZWxmYl9kaXJ0eSgpDQo+ID4gZGlyZWN0
bHkgDQo+ID4gYWZ0ZXIgcGVyZm9ybWluZyB0aGUgb3V0cHV0LsKgIEFuZCBJSVJDIHlvdSBhbHJl
YWR5IGltcGxlbWVudGVkDQo+ID4gdGhpcy4NCj4gDQo+IEkgaGF2ZSBpbXBsZW1lbnRlZCBzdWNo
IHRoaW5nLiBJIGRpZG4ndCB0b29rIGl0IGFzIGEgbmFjayBiYWNrIHRoZW4uDQoNCk1lYW50IHRv
IHNheSAiSSBoYXZlbid0IGltcGxlbWVudGVkIHN1Y2ggdGhpbmciLiBTb3JyeSBmb3IgdGhlIHR5
cG8uDQoNCj4gTGFzdCBjb21tZW50IGZyb20geW91IHdhczoNCj4gDQo+ICJpZiB5b3UgZ28gd2l0
aCBmYl9kaXJ0eSwgcGxlYXNlIGltcGxlbWVudCB0aGUgY2xpcHBpbmcgDQo+IHRlc3QgaW4geW91
ciBjYWxsYmFjay4iDQo+IA0KPiBhbmQgdjMgd2FzIHByZXBhcmVkIHRvIGFkZHJlc3MgdGhhdCBj
b21tZW50LsKgTXkgdGhpbmtpbmcgd2FzIHRoYXQNCj4gdGhpcw0KPiBpcyBvbmx5IGZvciBmYiBj
b25zb2xlLCBidXQgVmlsbGUgU3lyasOkbMOkIGNvbW1lbnRlZCB0aGF0IHRoZXJlIGlzDQo+IG1v
cmUNCj4gdGhhbiBjb25zb2xlIHNvIEkgc3RpY2tlZCBpbiB0aGlzIGFwcHJvYWNoLg0KPiANCj4g
U28geW91IHRoaW5rIEkgc2hvdWxkIGp1c3QgZHJvcCBpZGVhIG9mIHNldHRpbmcgZGlydHkgY2Fs
bGJhY2sgYW5kDQo+IGltcGxlbWVudCB0aG9zZSBpOTE1LXNwZWNpZmljIGhlbHBlcnM/DQo+IA0K
PiA+IA0KPiA+IEJlc3QgcmVnYXJkcw0KPiA+IFRob21hcw0KPiA+IA0KPiA+ID4gKw0KPiA+ID4g
K8KgwqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gwqAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkcm1fZmJfaGVscGVyX2Z1bmNzIGludGVsX2ZiX2hlbHBlcl9mdW5j
cyA9DQo+ID4gPiB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3Byb2JlID0gaW50ZWxmYl9j
cmVhdGUsDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAuZmJfZGlydHkgPSBpbnRlbGZiX2RpcnR5LA0K
PiA+ID4gwqAgfTsNCj4gPiA+IMKgIA0KPiA+ID4gwqAgc3RhdGljIHZvaWQgaW50ZWxfZmJkZXZf
ZGVzdHJveShzdHJ1Y3QgaW50ZWxfZmJkZXYgKmlmYmRldikNCj4gPiANCj4gPiAtLSANCj4gPiBU
aG9tYXMgWmltbWVybWFubg0KPiA+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINCj4gPiBTVVNF
IFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgNCj4gPiBNYXhmZWxkc3RyLiA1LCA5MDQw
OSBOw7xybmJlcmcsIEdlcm1hbnkNCj4gPiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpDQo+ID4g
R2VzY2jDpGZ0c2bDvGhyZXI6IEl2byBUb3Rldg0KPiANCg0K
