Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 292E27B4713
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 13:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7DA10E0C8;
	Sun,  1 Oct 2023 11:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6125B10E0C8
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 11:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696158508; x=1727694508;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=mZux/1zXOQzwLDkV27jwFOGb6p7zhJDYMk1VsAETP+o=;
 b=GWP8aejpswEPgNBuw4xi95b5zoNp7pHg2d+NxuHd98w5Sd7J4Fz+5DUl
 ivxRI9UXd/sTPo3jp0wIULWoIhG+IKyRO+pG9hm2uIkGL12awQ83FHw53
 0LkCAuPFW/hQRgjSQMLIMfk89WWJOi5XGuj0OzhmV9JUTt1KxEhNExbxk
 /3CwCIo28Bb8cJ9xUwsZT3U/Fj+JbMn4sx/waCGqiciJVx+7wUtCk2A+5
 /LGPzfOexCbQjCiXzTaKQ/ttWtog0obkYFfbK4XPImE9Ip9600jimkCX+
 QTYzr++r7V/fC4JReO5Ggg+61hdWpN4BUrfsoka9Eg+sWhrPXmQPFMegS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="468798560"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="468798560"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; 
   d="scan'208";a="1274479"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2023 04:07:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 04:08:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 04:08:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 1 Oct 2023 04:08:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 1 Oct 2023 04:08:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FBB5ACkn6J7Ubqge8OESRcFzqsRUrZ+dVVUxm6XUjZIwqH8c9oZycSBSHrTb49OSqBBVkHkdxXTHZChuRjgCrB5/XKb+jfOtRJNq9YBR5j8VtJ0N7pqZp4RTpYnTgY/fUcsaOHmtJQRZ93bSCLP/yK4yvTgnO9RRuG+FHuhvI993jUNoUuqCFNHu/rDuOWodgvtLky+/uT1xpf+F5/z+bzUMiqT6fM28CmhX/L3eGMNBNfIsotqb6Y7OtTN+52SB+ENOoqtVuaZMdNu8jDf9LvnSRWKpnGLu4XDTceprL8gZwNMWITC2U8vyECi0VfppHgXLPhiUDFXIct88f5LmMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mZux/1zXOQzwLDkV27jwFOGb6p7zhJDYMk1VsAETP+o=;
 b=N4WJAOFyq9m1u3zwL4I1f/ZjgI0VSnJyfLF/eMLtAuvsj3/fblMVMPlzbTWzmPA1cF0933aCVGP1ehFOZp7AuuoRfQVu+0hp3R3v7euPK0tAvNY56VQgN5WKFlclHrK246f/xBwRnAfY9SDJgPgh42yLnP0vejHmIIFadvshIZK85FpQnModkPmcWk3miNLPV5A1yh62kCloMzm0ECetThV05L/FoVQFRX42CpOFRr+6jxYG4axLHsgmGMBJTz5Rjy+HyZS9ARCzCO4kHFWJcjUJ2vAEZ9J/4Db6AWFX3+OOzWitxGx73HKsvm3iaocQaNsndHvY/f3xecsZ83moUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 IA1PR11MB7811.namprd11.prod.outlook.com (2603:10b6:208:3f9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.29; Sun, 1 Oct
 2023 11:08:24 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5%5]) with mapi id 15.20.6838.029; Sun, 1 Oct 2023
 11:08:23 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915/fbc: Split plane pixel format
 checks per-platform
Thread-Index: AQHZ5wAnbO9+VwhnN0O1YbGD0/SnwLA04S4A
Date: Sun, 1 Oct 2023 11:08:23 +0000
Message-ID: <5ada9e1efe7ec66986e2b5ec83fe48d793a71550.camel@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230914113854.10008-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230914113854.10008-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|IA1PR11MB7811:EE_
x-ms-office365-filtering-correlation-id: b7b38d04-9948-4cb0-b92c-08dbc26ebabd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K4Pw9XOaKyR8SfV45QZHJds7mArrgX3qKCFG/ovy0gAAt+HWsUwTxbHGHAU8OZVxxeuzAoh8F6lThAhVAKj3lVhucF5Ym6HFmFotByCMjTMo5FvL8/hLDjpDGw2M4g2p0fchaYvkqgtFum0fKB6uP444YBi89kwylnv7PDlVPq57+uTq5m3znnrmHmvLACQAJUbAguOZBNYc/2aYtOabFcDBxjqCcy7tdaa1sKphxDzuSvq9NDn0MH6wTIo5Va1iBpxwueVUik0IFg+JSDaYcusmLUuW2EttRUUkDHG3XpH8KnEUwm7ZNcEeGiY5zgr1zc2dE3uHID62YT5xgL1Q2VdYTEeKqNbbQI4UkPRxwOpo4Q/W8h3cw6W8uT4UaZjUaNJ/u6S1R6EC91GuAwzysQoRE/222X4v4QHltFkeYNIgLxrbjzU7+YQCHieEaXODjAHe6NvgEvn5A1m8mP6ZUEZada08uaZY/jmQ/qRTOd+WoEYZGLPiKeJ2ZSIuo95wCSTK1G1X+8fwHrmCZAlNwG5v5AHmlJ6fl6EjalUtVquAKXAf0cR1QfIBID7mm/YohcCoSXY7AwrvqGygJdBay67Qb9ZQ9EKdmPbZGWwnoJNHyZfXGAeI4OkDRkqZ4420
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(366004)(396003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(64756008)(83380400001)(2616005)(478600001)(2906002)(91956017)(110136005)(66446008)(316002)(66476007)(66556008)(26005)(76116006)(66946007)(66574015)(41300700001)(38100700002)(38070700005)(86362001)(6512007)(5660300002)(82960400001)(8936002)(8676002)(6506007)(36756003)(122000001)(6486002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUxSWUpoOVZkQ2RONWxkOU1NZ041ZENtaFN2WWlqbWIyeFV2Nm9ra2Q5Y213?=
 =?utf-8?B?RjBVUTJpOHpWeG5MT2FmSDdrbnRwc1VZS2kxR1dpZ2NKTFBPTWQwd2FsVnIr?=
 =?utf-8?B?bXROQlNVTUs0bE02eTZOYzJHcGh5RmFhY1MxeFFvVktFV2dKWnhEamdjeXEz?=
 =?utf-8?B?akQzc3ZodzJJQlNmc0xzV0dWeDVVcEx4Z3pCeFQvMzJ3c3BsbVp5bXc0Rkcx?=
 =?utf-8?B?S2pyeFgwenVzb0hybVczL212VVlrQ0JKOGlSOC9GMzREQjVrc25XUjI1RDdT?=
 =?utf-8?B?amdVbCtkdmpUK2xjUnE1SHhnRFJaLzZWU1lmU2F5L1dESlV3Z09xRHRub0FH?=
 =?utf-8?B?UVJvYTJLVkZGZ08rSU9yYWJUWWhlOFdsTXRnWkRJWnBWTk9QNXE2SmlZZmI5?=
 =?utf-8?B?R3drd1FFd0RBc3VaNGQ1Y01kRGFlWTQvYnlpYjdJQm5KaGpBTk4rZmdzMVZG?=
 =?utf-8?B?bzlJQUhZLzNDbGRISmhkYzJ3bEZaemUyZ0IxS0lQYkNJZTFya0t2RldWbzRy?=
 =?utf-8?B?TWU0dmVhTVRKVHVNd0R5eFEyQlk3cG9hU3JjWGlIUktlTG9ObStMYVJPMTVh?=
 =?utf-8?B?bENPcmxLU3REbmIvVDVNOVJBTkgwRnZ4VStVL0h1em1EdnF2Rnh5eldxNVJh?=
 =?utf-8?B?aEZRSU1qNEFUNi9raXhMVXJCamVpbGVQMXhvc0tIN3dQUUpITWFtVXFQWHY1?=
 =?utf-8?B?NlJ0NTFVOUxnQjZGNkJFNXBmVWk0SGJHZmwrY3VHM245WlNnWlBMNkZ4bk1K?=
 =?utf-8?B?MHpJd05LWDZJams2cUg0S3hEeG14aTJHeGpEU3BVQjRadzhzZjd3S1QwWmZ5?=
 =?utf-8?B?THVsSDN2aXk2dWE5VDhObUppQ1RoVHRMeEh5dmJ2Q1UrMDFWcDJ2Sng0eG12?=
 =?utf-8?B?NU41TEZzcW1hSThGNzQzQ1JDUmVsM1lEcDcrTTJUdzRLN3A2YVBKRmp2WDVV?=
 =?utf-8?B?Mzk3VUJNWHZHT2pHZVpEb2pvd3JJK0JKdWhNeExzTklQY0ZQd0tPc1VxMER0?=
 =?utf-8?B?a0V6ZUFvZ1l3TWorT29oMVhHM3NwYUoxRDZJUmFLT0VoU2ErSEplRVlSaXFs?=
 =?utf-8?B?MDZVWTBzcGgrbERBK0ZUTm9ZcjBmbFA3eU8rUnN4bHlvZnlUbmJCcnpxcTRC?=
 =?utf-8?B?T0tjanQyR2FPWC9hTllvRno1L2lSRExnZnREOXk1VzZFNVpuSGhNNFo5Z2FS?=
 =?utf-8?B?MzVaajhXdjFRTmowY0ZOTy9Ud0UrczBvbW8wTkJmR25saVpJeFZDZE9QK3Fw?=
 =?utf-8?B?L0Z2MFZUMHNsNVB6OXF1ZVdqWWY1RUtWU2hCUEgzeEFDbGhYdzJ0RjVRWmJP?=
 =?utf-8?B?T0R0MmdzZnVjZGNSMUxGdThud2pyM1pNVVBHQ0dBa3kwNEdJMEtCUS9hZTg1?=
 =?utf-8?B?dCsrUkd5U1hGejRsRmY1NCtmR0s4MmFaUWhydnYvcllpRlh6WXlZWnI2YWha?=
 =?utf-8?B?N0RlTDkvbVh5Sk1qNkxhays5R3ZvbFZXVlZ3NHVsVUx2aTRGVllkVEZTdmli?=
 =?utf-8?B?OUJzbG90ektyN2xPOEo4R2VTRXlYMHk0cWJQOVVoU040MWE2UUdBUTN1U3Zh?=
 =?utf-8?B?RXQ0c0d4Y0g5TG5LSmdLWTFMT2ZTZ0E4K1ZQT0xLTVpSbStCUUIvMC9iMmJL?=
 =?utf-8?B?aUxDM3M2YzYyTG9LK3JqeWRxSWx6dkl1amxZNXFKUTl4RS9MNGM3WDVhNzNv?=
 =?utf-8?B?M2tQQkRBVCs1cXZjeUFQOEZvQXJlWGxOTk9GQWQyeFkwQ0JmUFFheGFhRnJM?=
 =?utf-8?B?R0JWNGRPVnpQcGZRV0hFdENvUzlHUkF5MXNGZGxoK3lGajNYQmNEVWxvams1?=
 =?utf-8?B?dzdxZVhaN3pCaVlMdG0zMkM4RW1Gc09SQUhBTy84WHdnbW9FSkdBc2I2b2RG?=
 =?utf-8?B?NjkrT0ZiL3Z2OWFWN0prbmgyR2F4NXZSRzYzQnRHTXQwYVNzRTlNb3plVE5n?=
 =?utf-8?B?M3g0ZXNlN1JkK3FpK1B3RGxCeFUwcDB3emwycXFTVkpVdUIwc1JDWkx4TGlP?=
 =?utf-8?B?NHIzRWtDbmdXNmpPcmN4cTM1UDRXL09OaXFzYlpGNUVQSGNVaG5GNkRVelFB?=
 =?utf-8?B?TFhTZUZMUkJyRkZ5TEVEdzdOcWl3TTRLQjhxVHFsQk95dGpmNXFjcHlNVERl?=
 =?utf-8?B?QyswRU5RODJBM3drQWd1US8rL2Y3NkRDdi9yL3NOdWEzZGN2eEl5WEwzYVIw?=
 =?utf-8?Q?BLYDvmbSJpjh4VBpqsSI534=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <12438710CDEC5E408229ADF3B8655817@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7b38d04-9948-4cb0-b92c-08dbc26ebabd
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2023 11:08:23.8177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mDMnWShd0HId55nacUUkxUy8pOK+OlXpS2qbQAyrcASDyaIgVSUyy4OUJ1GCAJJwE0bUK39+TKctXwdQ9nj1/X+MuRwV9GxiBwkKNhQ6yIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/fbc: Split plane pixel format
 checks per-platform
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

T24gVGh1LCAyMDIzLTA5LTE0IGF0IDE0OjM4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gQ2FydmUgdXAgcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKCkgaW50byBwZXItcGxhdGZvcm0gdmFy
aWFudHMgdG8KPiBtYWtlIGl0IGVhc2llciB0byBzZWUgd2hhdCBsaW1pdHMgYXJlIGFjdHVhbGx5
IGJlaW5nIGltcG9zZWQuCj4gCj4gTm90ZSB0aGF0IHRoZSBYUkdCMTU1NSBjYW4gYmUgZHJvcHBl
ZCBmcm9tIHRoZSBnNHgrIHZhcmlhbnQKPiBzaW5jZSB0aGUgcGxhbmUgbm8gbG9uZ2VyIHN1cHBv
cnRzIHRoYXQgZm9ybWF0IGFueXdheS4KPiAKPiBUT0RPOiBtYXliZSBnbyBmb3IgdmZ1bmNzIGxh
dGVyCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKy0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAyNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpSZXZpZXdlZC1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cgo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+IGluZGV4IDFhNjkzMWU2NmQ1ZC4uNTE5
OThiMWVjOTQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
Cj4gQEAgLTkxMiw3ICs5MTIsNyBAQCBzdGF0aWMgYm9vbCBzdHJpZGVfaXNfdmFsaWQoY29uc3Qg
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOHh4X2ZiY19zdHJpZGVfaXNfdmFsaWQocGxhbmVfc3Rh
dGUpOwo+IMKgfQo+IMKgCj4gLXN0YXRpYyBib29sIHBpeGVsX2Zvcm1hdF9pc192YWxpZChjb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICtzdGF0aWMgYm9vbCBp
OHh4X2ZiY19waXhlbF9mb3JtYXRfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLT5kZXYpOwo+
IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5l
X3N0YXRlLT5ody5mYjsKPiBAQCAtOTI2LDYgKzkyNiwyMiBAQCBzdGF0aWMgYm9vbCBwaXhlbF9m
b3JtYXRfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlCj4gKnBsYW5lX3N0
YXRlKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogMTZicHAgbm90IHN1cHBv
cnRlZCBvbiBnZW4yICovCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElT
UExBWV9WRVIoaTkxNSkgPT0gMikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiB0cnVlOwo+ICvCoMKgwqDCoMKgwqDCoGRlZmF1bHQ6Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gK30K
PiArCj4gK3N0YXRpYyBib29sIGc0eF9mYmNfcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKGNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gK3sKPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUocGxhbmVfc3RhdGUtPnVh
cGkucGxhbmUtPmRldik7Cj4gK8KgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHN3aXRj
aCAoZmItPmZvcm1hdC0+Zm9ybWF0KSB7Cj4gK8KgwqDCoMKgwqDCoMKgY2FzZSBEUk1fRk9STUFU
X1hSR0I4ODg4Ogo+ICvCoMKgwqDCoMKgwqDCoGNhc2UgRFJNX0ZPUk1BVF9YQkdSODg4ODoKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gK8KgwqDCoMKgwqDC
oMKgY2FzZSBEUk1fRk9STUFUX1JHQjU2NToKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoC8qIFdhRmJjT25seTF0bzFSYXRpbzpjdGcgKi8KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGlmIChJU19HNFgoaTkxNSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+IEBAIC05MzUsNiArOTUxLDE2IEBA
IHN0YXRpYyBib29sIHBpeGVsX2Zvcm1hdF9pc192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUKPiAqcGxhbmVfc3RhdGUpCj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoH0KPiDCoAo+
ICtzdGF0aWMgYm9vbCBwaXhlbF9mb3JtYXRfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3Bs
YW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiArewo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZS0+ZGV2
KTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDUgfHwgSVNf
RzRYKGk5MTUpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZzR4X2Zi
Y19waXhlbF9mb3JtYXRfaXNfdmFsaWQocGxhbmVfc3RhdGUpOwo+ICvCoMKgwqDCoMKgwqDCoGVs
c2UKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGk4eHhfZmJjX3BpeGVs
X2Zvcm1hdF9pc192YWxpZChwbGFuZV9zdGF0ZSk7Cj4gK30KPiArCj4gwqBzdGF0aWMgYm9vbCBp
OHh4X2ZiY19yb3RhdGlvbl9pc192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUg
KnBsYW5lX3N0YXRlKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcGxhbmVfc3RhdGUt
Pmh3LnJvdGF0aW9uID09IERSTV9NT0RFX1JPVEFURV8wOwoK
