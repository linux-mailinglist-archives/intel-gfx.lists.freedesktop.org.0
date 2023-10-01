Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E127B470B
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 13:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6129E10E1F9;
	Sun,  1 Oct 2023 11:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65FCD10E1F9
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 11:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696158050; x=1727694050;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=j1buacRDeMtlregDCGW6c2ZAzhmnNWx0Zz0c0z+qllk=;
 b=S0j+UI+/D4mND/bk17f0MreNWyn+91G8r8DLv8aA23WIMTym2LVIof3p
 kU+3orHVLYG3u5mNZYOll8Qr+8Wi6NbgP7h87nWAfocT2zNwrvOKyWRn4
 BuSE67RALgcofA30XSibyK5XrEii1vTHQvNBbBg2giDk8//0hs5xFcynP
 a7LFGw4+IClolsA7azfpjszUteLcUqxeQLwRES8zgWGGw1BAFtS1oguxa
 tR4aQ5/kATR0SlwMblcM4WxFW5+v9uOqccdQZ64gcikzPXneANBTMudQf
 gqEnShisuY3m19/o1MHJ1u5gWZUAehtEcFpnITe6E0CRb8K/pl32l6jbC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="372868896"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="372868896"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:00:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="840733322"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="840733322"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2023 04:00:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 04:00:46 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 04:00:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 1 Oct 2023 04:00:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 1 Oct 2023 04:00:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=key/Aia50bN1s32wE9WhwPwSlwtiNYk717h+Fe/Ac1A7423qrIBSH2wQfnwXi+WHPPsOZi7/gxBjEtY1vZxdBGE6VrulWznfQ5RJKUtFTD8tJx57rdYEcdG6UgP+Fese/J16xBv7rFiPivASE3KaoxYqSDnleQbThPk6tdjuGT2iquJwxnvk9JZG/30RXdSXhbErkjn8EseCpUJm7qyNW0bxTZaQn8E+HRSTBErdfQhW74NOdo1nRJyp0Xt22Pyocd1eSH8K5zSQlvvNv2tQEiHJ7ZWY3bAzR6O4CTPJk5SyecTb9jhmLd1b4U7YGyFHUR46eAe9AnBrT6nmpPvfEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j1buacRDeMtlregDCGW6c2ZAzhmnNWx0Zz0c0z+qllk=;
 b=S9FY5BMl64Fs4BsJchrG3hlcfxrHFchS0lpXM9lSD7G0b6t9UUUJnLZGuMmwK939tYA+5ZSIjz0J0WoDctRkPEziYkhco8VW6NUATJZhDwzzaNbNafwiQ5Que/REYL6Ij0XC4X/uAbBd241ZLUNQBuS8zXq3SsPUBdsH/9eE8xeH969XctnJFDLL63BdXgS6xileyo5eYMsFix+vmsBEc7oOooA0UchDr1gLUSVIdwGNEzPNd1C/nwr3Uj9yp82poJ/Fv+Vj5JUvPigRqrawT0V8b9i22D0imq1+KCnO8zZt+qwsysbPto31GJ4nW9sd2D1gnvHDRPMM4ksbu62jKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Sun, 1 Oct
 2023 11:00:44 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5%5]) with mapi id 15.20.6838.029; Sun, 1 Oct 2023
 11:00:44 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/5] drm/i915/fbc: Split plane tiling checks
 per-platform
Thread-Index: AQHZ5wAmuGWYnza97EusF6a0WB+KYbA03wqA
Date: Sun, 1 Oct 2023 11:00:44 +0000
Message-ID: <e928b839ff9ebb66e46215319f9ca4ec1983b7a5.camel@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230914113854.10008-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230914113854.10008-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|PH8PR11MB8257:EE_
x-ms-office365-filtering-correlation-id: ee0d47dc-755d-465d-1b8f-08dbc26da8cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9pHwaZdITwS0f4wJcVr9hHoWdGk6+bvng5HfCtSs8cnDRm8WXnb9dSC6xs7CD+a2kT9smYBoJmLWmkouSqmrHyOhXxz3jtLzc4SXYVS+z6uZnyObLG2ISpmdHTEFMH+eNJM7lbEF0Hacd91S1EtAjGR2gLgQwGYkjVPxvW1bv8eE22cb/9wa3//i87vORSRTK6u3rTo4cp4Sy9TkoEAPf2f/6PgMnGwbeuV5ZoxU07m78/R/Ezr4CCABJW5/znwwBzYOCoiIG8t5ZZw1N6SozBQXIwxYqWnILa6fxKnxGFqyNJPUDR61F+4mj403g1ATN9DDU9fA/UiYkbQ6zSIIyy+tycWDumtmg9e5mku7SVCLEMmLF8mJJorTPfUIRSL3uLfM/kPfkxpVxBtOWh8Xa2X51AwO7qBd/ldElzg+AU5xFgMxxjVZDx7GLhGB8jow8GiswVwmfkcINrV8RGMCe72kj9ochwwnD1RtLxt8tJT6AlSGxiC7PVsxwD9/oQwVo8L5V8LqWszV39BnK4rUuCvIRFQrTc05YoCqy9BO9CHc7ZXzO0Yobbe8y3TxbNJhSrq19NF9gYH595O/el+tslpmYlX0MkGLuVBcoURQzWONQgNZiEjnFqDwF1Jt35mQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(396003)(346002)(376002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(478600001)(6512007)(6506007)(38070700005)(91956017)(64756008)(8936002)(66476007)(71200400001)(83380400001)(66574015)(76116006)(110136005)(5660300002)(41300700001)(66446008)(66946007)(316002)(86362001)(82960400001)(8676002)(36756003)(66556008)(38100700002)(26005)(2906002)(6486002)(122000001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjBVNStkMkpXWW9MNUJwYmpPTnhDanpjUkhGZWZTNVdWczlqYnVDSlNMaEx2?=
 =?utf-8?B?MHl6VHZkQWpaUkl2S1BobnFQWnNMNk10SVJkaVpqOC9BWFZpTzhRL0hCaTBp?=
 =?utf-8?B?VTdQYkhSRzVBY2xoeUNIaHhnZ0hVb2FWNXRjR216N1IxbGdjZy9oVmdLd01n?=
 =?utf-8?B?TFg4engwTCsyTzhaWDlDYWhia1laaDJqVEh1QWlJanVha0k3Vkl4SGIvcWVq?=
 =?utf-8?B?SGxaS1oyczk5dko2ZW5pTVhVV2tGeWcxUmF5ZmpFaGplalJlci9sYS9SN0Jn?=
 =?utf-8?B?cXdYWmxGWWZwN2Mxa2s5VU5YRmVlRE1heUdOYU15N3lQOXNtYmlNZG9uOFgv?=
 =?utf-8?B?MVNCYUR1ZjR1LzFhQ3VlUFFtMURJZXRKOGNlWDBzT0Y4VGpvUUxxMzFFVUdC?=
 =?utf-8?B?a1BmSlUxNm10MmV4RWNLNm4xVHdaTUl1Yng5bEFUbEk3K09Yd2tZMUZqMFJh?=
 =?utf-8?B?bTU5OUc3dnlCUWNzdElxRkdqQVNYTTl5d1IrSVN0Z0tTdHB6UllML0I0VFU1?=
 =?utf-8?B?MkV0R0dtaVlBNlNaa2ZzZGZyMkJBVGhKNXN1bHA2dTRocW02QWZ0RUxCM2Y4?=
 =?utf-8?B?V0hPVnhBK01NbU1mdTBXRHFCbmVCdTBienNCRzAybWFOWmxZcXpFbEhSMDMr?=
 =?utf-8?B?OGZ1aWY1K1pYaDN4S2Evd0E2OEZ6SXVhU0FtTWdkclE3SnNaeVEzaXNybkxX?=
 =?utf-8?B?NDA2SURPSnd0cDR2NUswWFQxaDhzdXBQMjRuakRveHpSMUt5Z2swcmYzTjdJ?=
 =?utf-8?B?dFpxUlhJOEQ3NVFhVUY1Ykl6cHowZUVrWnRBb1lOQjJDOFZHVTZhNE1qdENN?=
 =?utf-8?B?cnRqOCt2cEk4Uk1VSW1KOCtuMGVzRGRyRnVOV292UHhmTzdoN0ZuOENYU3Rn?=
 =?utf-8?B?YS9tdHJiK3l0UnFuaVQ0d3MvTzBwYzhQVU5NYjZLcUtLaE5JVDR1Y0NqMGt0?=
 =?utf-8?B?VVM0d2huaEVwSCtSTGI4TmYvcEIrNHlrWXJYbTRML0xKU0NwaXpoaCtmeEZE?=
 =?utf-8?B?bGYwdGVJOGJwREhVVmZOeW05aWFKWGowVXJ2ejU2STJIUWF4N0lZTUNhVnJx?=
 =?utf-8?B?ZGQ0aUpZQzZLcHhXcjBqdy9aN0RiVi9jVEE3L2VBT0hHd2xaVk50ZXJhWXkz?=
 =?utf-8?B?dGl3dFVzT1owTStnMTNzWjZEUmwzUHRPU0pqOVAyQzZHaTN6YUp3L0t0eVlm?=
 =?utf-8?B?MlZhbE4wQlJvNm9GUkxFSEh0N0lTdTh5U2lGcERMMlpUMzYweW5WZzdIUmM4?=
 =?utf-8?B?QWMvOXVTdzl4RmZ4UFcyR2RBR3ZiL2RtMEMvTVRjdElHVTlaZXZTK1RuUnFl?=
 =?utf-8?B?aVlMMVlZaFpWRU03dXIxRHg0WThFdGpCQndybTF6RmcyMXFkNWFKMVd4VkJU?=
 =?utf-8?B?TzBYYnJ2TU5Tak5ZeS82RU4ram1teE14UXYzTTM3emhqNnpEUVYxWnlHK3RB?=
 =?utf-8?B?TVNHMVlWUUo1TG8yeFZzbzQzUkM0U0lNWE0wWXowMzdmYnBZY3NuU1prRTBn?=
 =?utf-8?B?aDN1Y1VUcG5RMmFwUWY2d1dFR1NVc29VQ2ZESHRUZDlRRjhUUlU2ZnlhdlBK?=
 =?utf-8?B?Z1ZvaHdPVnZURFE1UUVUNnlzNjg2USsrcVI5anJjZVFOMnVqRUdtMFo2ditX?=
 =?utf-8?B?cElPdXRjbEI0dE5TY0ZqcThvYWxYd2FEVlpCbEFNdkdDMnA5N21zK093S2Rv?=
 =?utf-8?B?U21UUUgyWStaTHNGVUVzL2xlYVpPc0s4eGpIcElTdFV4d2FINDBxRWR5Qkhy?=
 =?utf-8?B?VFlwelBoWDNNUHlLZ1hEVHRHTmZ3Q0lzcGtVQXp2TnNQZEpZQmZNRTdwbWph?=
 =?utf-8?B?YkVVMGp0M0RkMm5IY1RHWEpLNHpJcGZ6TWFJVjRKTG4zS0JTb3BSR29iY1h3?=
 =?utf-8?B?MFBiVXovdWVOMFcwMzhyTWk5eDBMVUxpV1o2aDBiQ0VXcUlwdHdkbk1Ub3Nj?=
 =?utf-8?B?VDQ2ekhiY25OYWhleDRMVEpPRXc3M1ZWNUEvRGFXM3RHUjd6TnQxTUZOem13?=
 =?utf-8?B?OVF1aURiL21wdm5JaGNZNTF2UmpsdXpjeFBvNTJoN1NCZitpakRIUjUzYUhy?=
 =?utf-8?B?YWpWbCtIS01VSERCSksySk9TT1JIM1B3T243RHI4Mmo3NWFCQklmalRRb0lK?=
 =?utf-8?B?ejk4OGpqaTVraFJVMk1mUldpUUVlMUlNWTFoajFRbnF5bkVJdmQ2L08reEZD?=
 =?utf-8?Q?StZTUIJafFQXYAbB5gpWA5A=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BA2F889E2503CA44A03564E6DA2AC230@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee0d47dc-755d-465d-1b8f-08dbc26da8cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2023 11:00:44.2059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /OF7cayZFznDd9S3AyrnyJw9VtjqfM/EJfngmRuVzMqWrUqHJG41uGsbE3FCvjV9pcoW3SGqDdVxVkHpeMju465+nlifg5gD3EZ9J4k27Qc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/fbc: Split plane tiling checks
 per-platform
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

SGkgVmlsbGUsCgpPbiBUaHUsIDIwMjMtMDktMTQgYXQgMTQ6MzggKzAzMDAsIFZpbGxlIFN5cmph
bGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiAKPiBDYXJ2ZSB1cCB0aWxpbmdfaXNfdmFsaWQoKSBpbnRvIHBlci1wbGF0Zm9y
bSB2YXJpYW50cyB0bwo+IG1ha2UgaXQgZWFzaWVyIHRvIHNlZSB3aGF0IGxpbWl0cyBhcmUgYWN0
dWFsbHkgYmVpbmcgaW1wb3NlZC4KPiAKPiBUT0RPOiBtYXliZSBnbyBmb3IgdmZ1bmNzIGxhdGVy
Cj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMgfCAyMSArKysrKysrKysrKysrKysrKystLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jCj4gaW5kZXggNGM0NjI2Yzg0NjY2Li4wNTJmOWQ4YjUzZDQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiBAQCAtOTg0LDE2
ICs5ODQsMjEgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2h3X3RyYWNraW5nX2NvdmVyc19zY3Jl
ZW4oY29uc3Qgc3RydWN0Cj4gaW50ZWxfcGxhbmVfc3RhdGUgKgo+IMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gZWZmZWN0aXZlX3cgPD0gbWF4X3cgJiYgZWZmZWN0aXZlX2ggPD0gbWF4X2g7Cj4gwqB9
Cj4gwqAKPiAtc3RhdGljIGJvb2wgdGlsaW5nX2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9w
bGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gK3N0YXRpYyBib29sIGk4eHhfZmJjX3RpbGluZ192
YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICt7Cj4g
K8KgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9z
dGF0ZS0+aHcuZmI7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBmYi0+bW9kaWZpZXIgPT0g
STkxNV9GT1JNQVRfTU9EX1hfVElMRUQ7Cj4gK30KPiArCj4gK3N0YXRpYyBib29sIHNrbF9mYmNf
dGlsaW5nX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
Cj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLT5kZXYpOwo+IMKgwqDCoMKgwqDCoMKgwqBj
b25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsKPiDC
oAo+IMKgwqDCoMKgwqDCoMKgwqBzd2l0Y2ggKGZiLT5tb2RpZmllcikgewo+IMKgwqDCoMKgwqDC
oMKgwqBjYXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoKPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRDoKPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWWZfVElMRUQ6Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBE
SVNQTEFZX1ZFUihpOTE1KSA+PSA5Owo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIEk5MTVfRk9STUFU
X01PRF80X1RJTEVEOgo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIEk5MTVfRk9STUFUX01PRF9YX1RJ
TEVEOgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gQEAg
LTEwMDIsNiArMTAwNywxNiBAQCBzdGF0aWMgYm9vbCB0aWxpbmdfaXNfdmFsaWQoY29uc3Qgc3Ry
dWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiDCoMKgwqDCoMKgwqDCoMKgfQo+
IMKgfQo+IMKgCj4gK3N0YXRpYyBib29sIHRpbGluZ19pc192YWxpZChjb25zdCBzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5l
LT5kZXYpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gOSkK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHNrbF9mYmNfdGlsaW5nX3Zh
bGlkKHBsYW5lX3N0YXRlKTsKPiArwqDCoMKgwqDCoMKgwqBlbHNlCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOHh4X2ZiY190aWxpbmdfdmFsaWQocGxhbmVfc3RhdGUp
OwpJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRCBpcyBub3QgY2hlY2tlZCBmb3IgaTh4eF9mYmNfdGls
aW5nX3ZhbGlkKCkgY29tcGFyaW5nIHRvIHRoZSBvcmlnaW5hbCBjb2RlLgpJcyB0aGF0IGludGVu
dGlvbmFsPyAKCldpdGggdGhhdCBjaGVja2VkLAoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFw
aWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKCj4gK30KPiArCj4gwqBzdGF0
aWMgdm9pZCBpbnRlbF9mYmNfdXBkYXRlX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUpCgo=
