Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A2E89EC65
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 09:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752CD113221;
	Wed, 10 Apr 2024 07:42:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IUb3pkRj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E637410FDCC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 07:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712734924; x=1744270924;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dbqBCtu7zOfOOOj0pr7gg78bKRpAif0hRH8oGlqCa8E=;
 b=IUb3pkRjOsZjddwTXKHe5G/Jb+wJg/DFokFaZQVHx7LkkLE4iIFk99L2
 uqC5X4mLk6B5q9KeaM5revb9LwSA8DgwK0dQ9oX38BwLCJT+QIH7Qds29
 mf8685wCQmoyFg5JxR7OOhNKMFbfmda4H9sXyqvJ/RBg/B65Pgru1wRIJ
 ANBLvGXftMSSifTJ5K/Puvzi7Nh9kr6uW/C1qyfeR19r2NXJeNZa9k7G6
 NYMfx5ffxnfCFMjHZ9AZCSMBrCeCZuiI6wjF9Rllox210qt2x7JFcUTUf
 YAInu1/4sInbCoEWHBKRZdo/DZ8Pr04wNLmtdWoJOSulB4tHLk9z0XGRM Q==;
X-CSE-ConnectionGUID: YbwX4k7YRFOtmJPTTpWO2w==
X-CSE-MsgGUID: hQC0BbaETAyRQF0M3T3APw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7939322"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7939322"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 00:41:46 -0700
X-CSE-ConnectionGUID: 3CXw/rr0RJO/LgR6QIllUw==
X-CSE-MsgGUID: LKUS/EnwTRmeanwbWMJjrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20946393"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 00:41:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 00:41:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 00:41:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 00:41:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0p0wYu9PRdjap1vuP9kXsayZzhkaTXUIFI4TkZssHjrdGJ75S5gEg7EK80OB+lgTBL4ZyjWgP+N5yiTzv6+PqmNdIuDXT1ARDa8qqkTg/whKxcpR1KsCnqCl9kGnp2ljBPdg2iDIDoIvO8DwlWChP2eLhA2q0WS7CJmNMPaJU+wVk9b71FtBHJCouQNATBzlYDHxLHFsYebce0WXVbnA0s9yUgrLO9ij+Y8KSU0DgHYyZd5UyK4PuGWgjLrtkkDoWbifRIYZrGfRrTi4IlFs7stj+NS4PF2Fal7w8KwDRaNshxVct5ngfq7T5S6yL/6MVCVcW4KVYIOt4eWWjgAIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dbqBCtu7zOfOOOj0pr7gg78bKRpAif0hRH8oGlqCa8E=;
 b=YwhoQB9Rq6LbG7oYmVPdfUtpzx57CH2xjOOdosPOjLaxVeKgSe5z/E+l8xjkYfw+PSInJaKo0gCpOfunGlaneFnuvgyHdzFmyHAqkF16/TLT+FJw4fOVhcQgXb74mU0Fb2cAGVXu2xREburRpsPyU8Rf4WoYQ2MN/WB9nxLu3t+MEHja+6sxNYSis4e3Thn58KJ1K1Iaxwbqtrnf/PsAHVGdhAynLIXG+EotGY2+p5pnV4ICKCiTyCkKSJqZP31trFOb4PgartM8XiYo7u9mFtGCGmwZSEOaNJ+SxdrnkGUPoAQJdamvKI53lOOkZWweYG9eertWMoiPB87TO6hO5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5311.namprd11.prod.outlook.com (2603:10b6:5:392::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7472.10; Wed, 10 Apr 2024 07:41:43 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 07:41:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHagMyo7wCwT/Bmf0W7FJeLKxv4XbFhLomAgAADJICAAAHHgA==
Date: Wed, 10 Apr 2024 07:41:42 +0000
Message-ID: <bb540898d86de022062431db806e7049c49f346e.camel@intel.com>
References: <20240328044354.1871391-1-animesh.manna@intel.com>
 <b425ba4a833691fefdb70a7ac7d4bdb9bcf75f41.camel@intel.com>
 <PH7PR11MB59816B3BAF4FFE3FCE1FB6F0F9062@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59816B3BAF4FFE3FCE1FB6F0F9062@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5311:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sqFGmpI14SMloqGPKK4LoRktWYJbVxifx5O6KtbZ++TcPMwcHniBsy6suC1FYJYy2eOUN5Mcm9sMLvouGPQsT9khrJ2Ynmsf4bgUERVU1UyJGkJUmfIcFfwqhHvfbo4B7Q+ECvgLQRjFqJq/Rw5+95C7YreitNEObyFA/KX+D8EL7zAh98MO3SAK6037ZG9JpHZaf77QET2Utp9Db2DP5bwglPzYsCki408QvDgAV3WHdM1tCcJfKB8cLDeWmYAlv4/RyVDO/zBDY2wyN3n9aaOkhxK704xbylxtlWvK21YQNBreAFNUdPTRP6CfzpyFr/7ZhVJ7CaeySt3vK2yA9x/rzkgLKUyZvfixdAtnWCF9zkRUPE1bzca+yEkGR9BKSIcsqPjqsl3oZwsRfn5SMUbXlEh3TMbD8gPFB/otiWtaLGQ9N6cdEULEUcrcqdB3FYHsvUaPNjVSyuj0BtWjPj9p8TACzssyn50HqqyYddaZZocG9n+UN7bBc8vGBvR6a6jfZxY+wccljzA2KAHdcdchg/cLGNMLT64Zm8xWqXX4Y9RYfQPbkmbtllJ6dggWFlbbSUmD4QOqQIyhFU3hL7xz1lt1htLqYlpumQMa+AM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qm81Z2RXL3lpaDl5QTRlaHRkZEVpYWhlTDhreldUTDVXc09Dam55WmRuSm1U?=
 =?utf-8?B?TGZ5dzllLzhIYzVJcmt1QmthWU5ELzVuSVNaSkhGRDdGYTJCVzhBTDU1ZHFZ?=
 =?utf-8?B?aFlsYnhpSjVsQnk2bU5DZURlcjlBbEFPVEVOZ0l5M2lONGpNMlU1WTd5dGF0?=
 =?utf-8?B?ckk5c0gyN2NHRGxBQmdyemdGbUc2SGg0dGV5aWttNXJ4ajAyanhnRVNFelJ4?=
 =?utf-8?B?NWlDUnlCeXlDL1dmT3VQbHEzTzZtUmF4aGZXNU9TanpTbHVPRkRPUFA0Zitj?=
 =?utf-8?B?Y0ZDMHBWVG0zUDVCTnFQRHo5U0huZWFSWHBFNnBRZFJoRTM3N1B2S09CTS9v?=
 =?utf-8?B?QU05V1cvNEM4Z2c2bEFZVFlCMEN6UjNxV2lWT1BMQ1VvQkpJeFlQTHRSdVll?=
 =?utf-8?B?VUhNaUJBdy83dU41MEZQL3NLOEhZeGVZak1BZ1EreXVvTzhxVWNJMldLVVdO?=
 =?utf-8?B?Zk02WHhOL0hDYzRVUklGL09aalRoaGNwYU0wZnNaeHVSU0NCVFB4d09HUXgw?=
 =?utf-8?B?aC9QdzRFanZITnBiZURCcnZGMzRpU1JCYUIrRjRtWUU5KzJ6SVFnVHBDOGs4?=
 =?utf-8?B?TVdpMm9uWDVBWXgzMEtxdjNxblFwdllQblZldmh4ZUN5dStsNnFHZENjVENG?=
 =?utf-8?B?NzFDdDIzeGsyM2RQS2ovMk4wdzkwa2tLVVl0ell0dWNreC9Ua3ZLV3J1NElB?=
 =?utf-8?B?dUNVdGtZWFlnRCtZVk9hMStnTkF6OENMTkVGWDRic05KLzl5ajFmU2REa1hn?=
 =?utf-8?B?YXRQT1J1elNqREhvOVVodFlxWk16M3ByYXFpVTYrbHY5cDJRQzdSNlJMQUJH?=
 =?utf-8?B?TjBNYVBMdVZCd1N2QkMvUUJVZEN6a1Y4S3ZqY0xmWkpDaWx4L0Nwcld1azdh?=
 =?utf-8?B?L0E0eStCSW4xV0hQMkkwWHlXd3J0dk1nRXBMTHVYSzVPWHBwdmNCaWlZZEFP?=
 =?utf-8?B?ZEpBTVdhQlJ2RnV6MDVUaklBLzVCMEx5S0UzUlR6bW5EeTZHbUo3ckk0N2FG?=
 =?utf-8?B?T2NTZEZvVVkxeWJPa0VLNm4rNjRUamEzaU1aMm9UZnFaczV2eHZNb0Njczg2?=
 =?utf-8?B?a0NXUXd4LzN3Tm5LUmR4aFV4RjczeWhUMGFFdy82bWJUVmh0ZjZzamV2dDl2?=
 =?utf-8?B?c1RiUEtEWlg2OGVZRjFzYWM1aGVwZXY3bFpqRVpCVXBvKzBVdnJRMEwydXo3?=
 =?utf-8?B?SDB6SEQwYUZ2cFNDQkxrcitwc1lYUTZlUHBLaXROVEhCRVpVb1B5SlRvWkNz?=
 =?utf-8?B?NEY0U0MraWtlWCtkRWEwb2JST0h2a3VkN3owK1UyVFc4UXFHS2c3N05BcnRF?=
 =?utf-8?B?cTNsc1FvZFI5RUh3V1FDOEM3YnM2aFE3eXBiUmlWelgvZ3hNcTRjbTdtcUI1?=
 =?utf-8?B?VVdQRFdSVFhvTFZBci9GVU1PN0xPZllBSGpoSnE2MlFScEtKUVF5QzIrd3J1?=
 =?utf-8?B?a0JZdUFYVGgwYUtENnhKT09ZbFBtRHAyQlBGTC9kSmlidXFXcEZqNEZGVTNl?=
 =?utf-8?B?K3dzQk9sUEltS2w1bnZpM1NVQkVLTlY0Vy95aWVocE1Yd3AzMy9tb0RxUlFD?=
 =?utf-8?B?Y3o5eTJqU2UydmF5N0h0VC9lWTVLTHNzZ0NqTkd5QzhHZnY4RndBWDMxRVFI?=
 =?utf-8?B?WGVpcld5M2lRTjViNm5WbXk4dTVGa2txRU9GMVBuNzQzN1ZiV1ZLUVlpT2ZY?=
 =?utf-8?B?MDFiWGZaZFNGMGV2bDZIS0w4dmlyV1FDWDJsN09xVkhtdVJpVUJQUjRwaDlX?=
 =?utf-8?B?TVNlQU1wbXRBTFpKSEZCTUNKd2JSM0hkelVCUjVRblpjNEtZMTJ4T3dWQ3oz?=
 =?utf-8?B?SEl1ay9pNksyUWdKUDFsK1ZZeG5sSFkxMi9nMnUzNWpQVGRJMHY0SXZDUzQr?=
 =?utf-8?B?d1RETXNmc005RmJmbEVGUlc0OW52SXpmbC9RWHdEajNWVllvc0xKTDZOUnVw?=
 =?utf-8?B?U3krMGVHRG5xMzRiT290eHhEekw5K2ltZmhHNWFLbnlqYTJyVC9HV3VzeGFi?=
 =?utf-8?B?aFhiU0lIRTg5RXI4Q2U0cjZ1RERnQ1Jna09DSTArMWI1UWhrVHlRSzhKQVY5?=
 =?utf-8?B?RGt5Si90em4yMm54UzhHYzZHbEw4K2VvT2I3cGtCTzluT2dxV3ptbWd6VXg0?=
 =?utf-8?B?YmJJVFkvdVZ3TW9DRmpxNDU1TktQM1UvMDNWZHJqR2F2QjZQUVBVLzk5MFhn?=
 =?utf-8?B?Mmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <649D4E778216384BAB640ECEA0BF87B7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a67204de-ceea-4b2c-efc2-08dc5931aa44
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2024 07:41:42.4578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: avZ5TTQSNg4JD7ETt7NMPNfCPI6XGoMb/8e2yVV1vmvVWO+iCWMlUxrGbyw/6fDOoHNKD6pWC9Azh/U3McgtOq7tmcFH1V96K2tL6VHswjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5311
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDI0LTA0LTEwIGF0IDA3OjM1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBBcHJpbCAxMCwgMjAyNCAxMjo1NCBQTQ0KPiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gQ2M6IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBNdXJ0aHksIEFydW4gUg0K
PiA+IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0
XSBkcm0vaTkxNS9wYW5lbHJlcGxheTogUGFuZWwgcmVwbGF5DQo+ID4gd29ya2Fyb3VuZCB3aXRo
DQo+ID4gVlJSDQo+ID4gDQo+ID4gT24gVGh1LCAyMDI0LTAzLTI4IGF0IDEwOjEzICswNTMwLCBB
bmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+ID4gUGFuZWwgUmVwbGF5IFZTQyBTRFAgbm90IGdldHRp
bmcgc2VudCB3aGVuIFZSUiBpcyBlbmFibGVkIGFuZCBXMQ0KPiA+ID4gYW5kDQo+ID4gPiBXMiBh
cmUgMC4gU28gUHJvZ3JhbSBTZXQgQ29udGV4dCBMYXRlbmN5IGluDQo+ID4gVFJBTlNfU0VUX0NP
TlRFWFRfTEFURU5DWQ0KPiA+ID4gcmVnaXN0ZXIgdG8gYXQgbGVhc3QgYSB2YWx1ZSBvZiAxLg0K
PiA+ID4gDQo+ID4gPiBIU0Q6IDE0MDE1NDA2MTE5DQo+ID4gPiANCj4gPiA+IHYxOiBJbml0aWFs
IHZlcnNpb24uDQo+ID4gPiB2MjogVXBkYXRlIHRpbWluZ3Mgc3RvcmVkIGluIGFkanVzdGVkX21v
ZGUgc3RydWN0LiBbVmlsbGVdDQo+ID4gPiB2MzogQWRkIFdBIGluIGNvbXB1dGVfY29uZmlnKCku
IFtWaWxsZV0NCj4gPiA+IHY0Og0KPiA+ID4gLSBBZGQgRElTUExBWV9WRVIoKSBjaGVjayBhbmQg
aW1wcm92ZSBjb2RlIGNvbW1lbnQuIFtSb2RyaWdvXQ0KPiA+ID4gLSBJbnRyb2R1Y2UgY2VudHJh
bGl6ZWQgaW50ZWxfY3J0Y192YmxhbmtfZGVsYXkoKS4gW1ZpbGxlXQ0KPiA+ID4gDQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4g
PiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDE3DQo+ID4gPiArKysrKysrKysrKysrKysrKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8wqAgMSArDQo+ID4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoCB8wqAgNCArKysrDQo+ID4g
PiDCoDMgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+
IGluZGV4IDAwYWM2NWExNDAyOS4uN2Y1YzQyYTE0MTk2IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiBAQCAtMzg0
MCw2ICszODQwLDIzIEBAIGJvb2wgaW50ZWxfY3J0Y19nZXRfcGlwZV9jb25maWcoc3RydWN0DQo+
ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oHJldHVybiB0cnVlOw0KPiA+ID4gwqB9DQo+ID4gPiANCj4gPiA+ICt2b2lkIGludGVsX2NydGNf
dmJsYW5rX2RlbGF5KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiAqY3J0Y19zdGF0ZSkg
ew0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVk
X21vZGUgPSAmY3J0Y19zdGF0ZS0NCj4gPiA+ID4gaHcuYWRqdXN0ZWRfbW9kZTsNCj4gPiA+ICsN
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoC8qDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiB3YV8xNDAx
NTQwMTU5NiBmb3IgZGlzcGxheSB2ZXJzaW9ucyA+PSAxMy4NCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oCAqIFByb2dyYW0gU2V0IENvbnRleHQgTGF0ZW5jeSBpbg0KPiA+ID4gVFJBTlNfU0VUX0NPTlRF
WFRfTEFURU5DWQ0KPiA+ID4gcmVnaXN0ZXINCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHRvIGF0
IGxlYXN0IGEgdmFsdWUgb2YgMSB3aGVuIFBhbmVsIFJlcGxheSBpcyBlbmFibGVkDQo+ID4gPiB3
aXRoDQo+ID4gPiBWUlIuDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBWYWx1ZSBmb3IgVFJBTlNf
U0VUX0NPTlRFWFRfTEFURU5DWSBpcyBjYWxjdWxhdGVkIGJ5DQo+ID4gPiBzdWJzdHJhY3RpbmcN
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqIGNydGNfdmRpc3BsYXkgZnJvbSBjcnRjX3ZibGFua19z
dGFydCwgc28gaW5jcmVtZW50aW5nDQo+ID4gPiBjcnRjX3ZibGFua19zdGFydA0KPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgICogYnkgMSBpZiBib3RoIGFyZSBlcXVhbC4NCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoCAqLw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUg
JiYgY3J0Y19zdGF0ZS0NCj4gPiA+ID5oYXNfcGFuZWxfcmVwbGF5ICYmDQo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQgPT0gYWRqdXN0
ZWRfbW9kZS0NCj4gPiA+ID4gY3J0Y192ZGlzcGxheSkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZibGFua19zdGFydCArPSAxOyB9DQo+
ID4gPiArDQo+ID4gDQo+ID4gRG8geW91IGhhdmUgc29tZSBzcGVjaWZpYyByZWFzb24gdG8gaGF2
ZSB0aGlzIGluIGludGVsX2Rpc3BsYXkuYz8NCj4gPiBIb3cgYWJvdXQNCj4gPiBtb3ZlIGl0IHRv
IGludGVsX3Bzci5jPyBZb3UgY291bGQgYWxzbyB1c2UgbW9yZSBkZXNjcmlwdGl2ZSBuYW1lLg0K
PiA+IEN1cnJlbnQgbmFtZSBzb21laG93IG1hZGUgbWUgdGhpbmsgaXQgaXMgc29tZSBnZW5lcmlj
IGZ1bmN0aW9uIHRvDQo+ID4gY2FsY3VsYXRlIHZibGFuayBkZWxheS4gSXQgaXMgYWN0dWFsbHkg
b25seSBmb3IgdGhpcyB3b3JrYXJvdW5kLg0KPiANCj4gVGhhbmtzIGZvciByZXZpZXcuDQo+IEFz
IHBlciBmZWVkYmFjayBmcm9tIHJldjMgSSBoYXZlIGFkZGVkIGluIGludGVsX2Rpc3BsYXkuYy4g
R29pbmcNCj4gZm9yd2FyZCBhbGwgdmJhbG5rIHJlbGF0ZWQgYWRqdXN0bWVudCB3aWxsIGJlIGFk
ZGVkIGludG8gdGhpcw0KPiBmdW5jdGlvbi4NCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy8xMjk2MzIvI3JldjMNCj4gSSBjYW4gbW92ZSB0byBpbnRlbF9wc3IuYyBp
ZiB0aGUgY3VycmVudCB2ZXJzaW9uIGlzIG5vdCBhY2NlcHRhYmxlLg0KDQpPaywgdGhhbmsgeW91
IGZvciBwcm92aWRpbmcgdGhlIGNvbnRleHQuIElmIGl0J3MgaW50ZW5kZWQgdXNlIGlzDQpnZW5l
cmljIHRoZW4gSSB0aGluayBjYWxsaW5nIGl0IHNob3VsZG4ndCBoYXBwZW4gZnJvbQ0KaW50ZWxf
cHNyX2NvbXB1dGVfY29uZmlnLiBNYXliZSBWaWxsZSBjYW4gY29tbWVudCB3aGVyZSBpdCBzaG91
bGQgYmUNCmNhbGxlZCBmcm9tLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFJl
Z2FyZHMsDQo+IEFuaW1lc2gNCj4gDQo+ID4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2
Z2FuZGVyDQo+ID4gDQo+ID4gDQo+ID4gPiDCoGludCBpbnRlbF9kb3RjbG9ja19jYWxjdWxhdGUo
aW50IGxpbmtfZnJlcSwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9saW5rX21fbiAqbV9uKQ0K
PiA+ID4gwqB7DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmgNCj4gPiA+IGluZGV4IGY0YTA3NzNmMGZjYS4uMjMzMTVlY2VkNDFlIDEw
MDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5oDQo+ID4gPiBAQCAtNDEzLDYgKzQxMyw3IEBAIGJvb2wgaW50ZWxfY3J0Y19pc19iaWdq
b2luZXJfbWFzdGVyKGNvbnN0DQo+ID4gPiBzdHJ1Y3QNCj4gPiA+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpOw0KPiA+ID4gwqB1OCBpbnRlbF9jcnRjX2JpZ2pvaW5lcl9zbGF2ZV9waXBl
cyhjb25zdCBzdHJ1Y3QNCj4gPiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRl
KTsNCj4gPiA+IMKgc3RydWN0IGludGVsX2NydGMgKmludGVsX21hc3Rlcl9jcnRjKGNvbnN0IHN0
cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUpOw0KPiA+ID4g
wqBib29sIGludGVsX2NydGNfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
DQo+ID4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gPiArdm9pZCBpbnRlbF9jcnRjX3ZibGFua19kZWxh
eShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUpOw0KPiA+ID4gwqBi
b29sIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gPiA+ICpjdXJyZW50X2NvbmZpZywNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiA+ID4gKnBpcGVfY29uZmlnLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgZmFzdHNldCk7
IGRpZmYgLS1naXQNCj4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gPiBpbmRleCA3MmNhZGFkMDlkYjUuLmZjY2VmNTQzNGU5YyAxMDA2NDQNCj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IEBAIC0xNDMwLDYg
KzE0MzAsMTAgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+ID4gPiBp
bnRlbF9kcA0KPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmICghKGNy
dGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgfHwgY3J0Y19zdGF0ZS0NCj4gPiA+ID5oYXNfcHNy
KSkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ID4g
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAvKiB3YV8xNDAxNTQwMTU5NjogZGlzcGxheSB2ZXJzaW9u
cyAxMywgMTQgKi8NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPj0gMTMpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfY3J0
Y192YmxhbmtfZGVsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gPiArDQo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgY3J0Y19zdGF0ZS0+aGFzX3BzcjIgPSBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChpbnRlbF9k
cCwNCj4gPiA+IGNydGNfc3RhdGUpOw0KPiA+ID4gwqB9DQo+ID4gPiANCj4gDQoNCg==
