Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0737E1CA6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 09:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AC610E284;
	Mon,  6 Nov 2023 08:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F5E10E284
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 08:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699260663; x=1730796663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P/5+zDGFLgzZ5UdlVHZn0Fa3Z2Ruf7HeBLZwMFmApZo=;
 b=Or5e+PSZ4ORby/aouw4dN0zv+Q/HWFSNmo71hKtmoRIjwGQ3sotG1Qmq
 byT6IZTqI2CUUhZId+5311VbDMgB4iRRZWainXGK2bw2mp635PEKXKDuA
 L2fttMzws0NqciLRgwqF+w6NfeEL4YfMJwgtnm5jJPy6Dab+WB1LqlPlQ
 zyDc6pXtsA7E/BaUa1JgzeMNWFQu2Z8TrwSrU+ck6aAQrSk06SyPmrMUL
 6TOohMpYBa1x+l2vgrcELdhyhCziPr+BuEngj8WqFajTRtIM9CkmaWG5R
 ntDalGRuwoI8HizyHCgs5J+gyQAVQh1MrJAFR56g+yvMi+v2acTGSoXUV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="379624102"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="379624102"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 00:51:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="905984036"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="905984036"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 00:50:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 00:50:58 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 00:50:58 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 00:50:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lJXCAfpvT1C4magkERUBUSOu5ZWWc7joTNG9TxqOANWi/16Q1iEZNeF592e2jXGGxyVQjNM6nnKOLJigkj0ggLBbbSaiX6MgODdtFvJqwTVVbAS2CTVwIl911B+yeOcNyXf0MkghRCNP+c+OGMKOYuBB84BzYxxySKhRvGIuhAn47tCN42NwYmi4dfujK0baDjcTUcScn5EYCJoUWUWBy0bVSyVjNOACIkbYBq3GfkKwPlrwTZiIlguYcDZ5N+4wO6WWooKCkSOan7EfC4dNgvfMmqG4UKb8s0+rGe0Q4D4q7FHDGRJh1QLxaRA+EkRTC3AkG3XpAFqzMDuRGIP3wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P/5+zDGFLgzZ5UdlVHZn0Fa3Z2Ruf7HeBLZwMFmApZo=;
 b=FZKqD+421VkQNQvEw9Xf77ZuLNkev8BEBPJOjUGulg8fauZm99ZD+b88EXvRRm9/UzLP79imm5sJbMQURptRSG75nz12vE2dnPgDI6e+cMVai31bDturZeI+iNyb5n0RscV0O/RFeSiAZ3agMy7T3DowdESEnlw2mlNljEtlCVnJWaRY41NsyhYSstyPLfS+ysZm7VDqgP3DEa9PudH2gzrLb51h/QV/IUP0AUY6AcHNP/cYKg/VwB9x2OwBMlT7ADWecDIgD2wKGtA8sEKL0M7OOl1jjPqfAxnCyFT8L8k5OB0X+dbql6cGp9fPKSjW+IFT+HlhOgTQHkrcLM7BIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH7PR11MB8454.namprd11.prod.outlook.com (2603:10b6:510:30c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Mon, 6 Nov
 2023 08:50:56 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%6]) with mapi id 15.20.6954.028; Mon, 6 Nov 2023
 08:50:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/display: Support PSR entry VSC packet to be
 transmitted one frame earlier
Thread-Index: AQHaDjmho0vw4zlNwEWPwOisgMZfdLBs/XIAgAABpHA=
Date: Mon, 6 Nov 2023 08:50:56 +0000
Message-ID: <MW4PR11MB7054BF16884CEB01C6C57A43EFAAA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231103093259.59054-1-mika.kahola@intel.com>
 <4f5b2fbcade29e97a6f54f1670249e2c400c49f1.camel@intel.com>
In-Reply-To: <4f5b2fbcade29e97a6f54f1670249e2c400c49f1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH7PR11MB8454:EE_
x-ms-office365-filtering-correlation-id: bee671c1-1c6c-47b7-f429-08dbdea57df2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WEpJnvCxYm7uj0Hyo2atfGUfdDdEH4lQ8+ptmprEXXLGMCIg/8+9hKbZ+MoJljOvl/P3TjtRWPgPN3HWD+zfrgw2z271WNnSkIPSJq0NIm8rGEelur0f/MkJQK7Dv5fa6BylwBKv0LeHQclrgkgdWcR7M/I4ZVufgSHLCqtoINbIgFX/FNxW7HAxRMwR9pMcniipqB0KCNkDdK7pss/9Rqt7R7fKZpnwv8KTX6TH/Mbd9MQrjEnOdDyZ4JpLGP2iMeS9spbKBL3N2srE7vyhmBLJI6/RlKimkcvqAGoEHC1LnARdEuBJOir1AZzLcifg2ytwRkKxuSr5kstn2Tt1kCdw3A65BwcXdSfEj3SH7lcWZ32skPc5ZB+MtKTyNANh2dOs3zj2G/NfxJ7C9Bef9Ve6GUqHaYxnrmgfdCCw14nKxQ2mlipHBXGczD8s/GdUqoxmr9blk16Sc3Bq98/u4YzPUQQ86NJMasGP0SD3zJtLG3kp6LKALevWHSTsRW5rAT76rt+KE9WYrMgA0mYMUSoQww3+WHQvcUTSS4kKKnrz2dg7WATNs+7YknBwF8KjoG+ZMhj0UFKSv6+v/qdv0G8J3+O3W60YmPk211ExSNqzqhjsvotMgMmeY5kd7Yl8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(39860400002)(346002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(66574015)(7696005)(6506007)(9686003)(53546011)(41300700001)(83380400001)(8936002)(71200400001)(8676002)(4326008)(52536014)(2906002)(5660300002)(478600001)(66556008)(64756008)(76116006)(66446008)(66946007)(66476007)(110136005)(316002)(38070700009)(38100700002)(82960400001)(122000001)(86362001)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0RlYjhBT2pRUU1Nbk5iWlN0MEpNTUtGaU5DUSthWUxkclVqVUpiUnhtNHBG?=
 =?utf-8?B?RS9HZnZsUDc5V1RScExhMXE2b3VoeC9YMXVlaEEwRXZORjZWc3FmVTZzUDAz?=
 =?utf-8?B?UkhUbFdpNWtsbWs4SURpT0k1WkkwSGZGVHJrNUhRTy9Fdk9zcGN1bzdUWjJy?=
 =?utf-8?B?SXFFek5nZ2hRc0M2SGd5SkE1Tk5aeC9hTnplSzlXbTBIM2FOaXhZQnhDN1RS?=
 =?utf-8?B?T3Fqalc3Q09SUGRYREtuNTh3cGEyV0dGbVE1cXhwMUZFY3lFaUsrZmlFSm9N?=
 =?utf-8?B?bFpWciswM2lLNGtpOGd4VGhjS1V6cTU0YWE2MWUzb2x2NU9OeHgyMXRXQkhz?=
 =?utf-8?B?TUhVVXp2a1oySmliN3hWVFJhU1F2VFdwNjJxNWdtSUs5TlBaT01vOHZ1WkMx?=
 =?utf-8?B?WDNMUGllN3dDaGFsQ3FOa3dBOE9CelVrNXByU3ZJL2VGMG1hNGFsZVV2d2tr?=
 =?utf-8?B?M2h0aDZwQ0NnNkJhVHJrQjBVdW5CN0crUmdwWDV2dEZLMStOMGt5UTlvUXlt?=
 =?utf-8?B?dTFUSndiMjRPLzBPQjFRd082OGxOUFBQREZoS1lxdXFDTkRMeURKVnphY2xQ?=
 =?utf-8?B?ZXBhMWhmeDd6Tmh4OSs5QXBNQmlQMXJDZDlLYktwUm9Zc3ZKbzZxbkhWU0Iz?=
 =?utf-8?B?TmRXejMvZTM2SExMUmRXNDBaS04zZWZUVnAzemFHTDBRNnNMK1JnbnVXUUNS?=
 =?utf-8?B?WkFtb1ZNc2tlbzFsdVhwNUVpR2FhM0MvZnVRaEM2TXlDcWk5dFpTUGRVblpr?=
 =?utf-8?B?ZkpLZTNJMmRPRzR0eFFDREtzTmJpNk1jTzZxc3ZLREFMdlh4UzNQTmtLR3V2?=
 =?utf-8?B?SGpncnRRbWcyVEp3SDFMUEJEMTBEWENsY0VZOGFFbXVMUllVenRxYk5UWnhk?=
 =?utf-8?B?WjM2NkdEWS90bzJnUkJHUVd0SmZxZHJwa2RCb3pINndERW5uNUIycE1KdGlT?=
 =?utf-8?B?SkdWOTZKK1J3UEpHTUY4WWZZWWV0dE1JdzMxR0NJSi84cTdWSDRVZTF2Wk13?=
 =?utf-8?B?Z3RmUDd1SlNkL0tObWw4V3ZuYTRzZDRoRW0vYk13cEdBY0FyV3VUN1BkWWVp?=
 =?utf-8?B?VVprRXZ5Qm5jUlF5M2lnbVVqVWwvTnFXNTlXOFUrbzdFQWhPUEk0VGh2dGUw?=
 =?utf-8?B?bjBvOTFOdGpzZ2JtellqblIyeVlqUHBpMmNlNitYQXVPdFJHODlnOGN5K2Vw?=
 =?utf-8?B?SW9BR1cvWmF5aXd5Y05GVFBjY1VsbnViZFNQd2RnakxhOFcxNFF6ZS9yQllx?=
 =?utf-8?B?LzVDeHBBUFJvd3FjSmplRXcxQ0RvMEY3ZjczemVtdlhWSzdTSUtra1hOU1JY?=
 =?utf-8?B?WHJlQVNxaDhIVDVucktNVDRZR00vNWQ0OHhPOFNLNHUzUWFlN0poUWFETm1S?=
 =?utf-8?B?N29RTjZEU1gxN09yRWFiRmlhTlhndVA5VXAzNXlYcmYxVkNxN3p5MVhneWtN?=
 =?utf-8?B?R21OWEtyQ3JHTEpWYkliVFJIMjFLMmxsdXFsMVRFTDV0dEJOTU9SUEgzYnJM?=
 =?utf-8?B?OXhvR2E3SWNrb09IbEZhcHc2Z3hRalNzK0tmT1JJRDhER3NsUHVRdXdlK2lv?=
 =?utf-8?B?ZWprbmNiZHhDazdMNVc4TVo4cmJpTFo4aWs3RE0rbUhvZkk5elpHeEpuWTdM?=
 =?utf-8?B?bXdLWjhieFFrZlZrUHBzMGg4UXJ6TEdwY2RnWSt6cFluVmZjUjRoUWo2N1p2?=
 =?utf-8?B?VXZaYVNKaWZhQkhMZkQ2cDRVeVhYeERCdEV6NzNJNldKTGpsenBKb3ArbWN5?=
 =?utf-8?B?aFV6cUhhTlY1NkpUMW5ycDJYclI2QWpPWjdIKzZraUEvNXJZa09kUGZXUng0?=
 =?utf-8?B?Q1VYSnZNZUllMllzZkpMUExyT2V3M0o0VzVGZVV6QVZwZkhkWUE0eE1ORFRl?=
 =?utf-8?B?VVhFdkRqWkJyZ2hObktmVUFwUHFidlBLcFEwZnMzS1ZJcHFuR1RHRWNPcWRM?=
 =?utf-8?B?eGVyQit0akdxaVJDQzdncS9yUytyUnF3cks3d1ppK0tDNFJsTGxWYjdSYU1a?=
 =?utf-8?B?Y0Y5cThIK283NTIxT2R3elZybUZkZXBIbUM0eGZMMWtnUVZjMDZCN1U1NGFT?=
 =?utf-8?B?eXRhbWV6RGNENHVJZHI0cVJQTGt2cHFzQ2huNU9UQ0FDMHRtVC9CZ085ZzZr?=
 =?utf-8?Q?mqONvj9DGsZLPk8U8BDgN+c/u?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bee671c1-1c6c-47b7-f429-08dbdea57df2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2023 08:50:56.6780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1pCZILzY6Yx2c6WqxIHbeRboJg7kyy5TJePf7Ios4Ioyp+LztQCkGSrtEufNxsDkpVAqzBr/0zmkZiRzvoqw9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8454
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Support PSR entry VSC
 packet to be transmitted one frame earlier
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgNiwg
MjAyMyAxMDo0MSBBTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYzXSBkcm0vaTkxNS9kaXNwbGF5
OiBTdXBwb3J0IFBTUiBlbnRyeSBWU0MgcGFja2V0IHRvIGJlIHRyYW5zbWl0dGVkIG9uZSBmcmFt
ZSBlYXJsaWVyDQo+IA0KPiBPbiBGcmksIDIwMjMtMTEtMDMgYXQgMTE6MzIgKzAyMDAsIE1pa2Eg
S2Fob2xhIHdyb3RlOg0KPiA+IERpc3BsYXkgZHJpdmVyIHNoYWxsIHJlYWQgRFBDRCAwMDA3MWhb
MzoxXSBkdXJpbmcgY29uZmlndXJhdGlvbiB0byBnZXQNCj4gPiBQU1Igc2V0dXAgdGltZS4gVGhp
cyByZWdpc3RlciBwcm92aWRlcyB0aGUgc2V0dXAgdGltZSByZXF1aXJlbWVudCBvbg0KPiA+IHRo
ZSBWU0MgU0RQIGVudHJ5IHBhY2tldC4gSWYgc2V0dXAgdGltZSBjYW5ub3QgYmUgbWV0IHdpdGgg
dGhlIGN1cnJlbnQNCj4gPiB0aW1pbmdzIChlLmcuLCBQU1Igc2V0dXAgdGltZSArIG90aGVyIGJs
YW5raW5nIHJlcXVpcmVtZW50cyA+IGJsYW5raW5nDQo+ID4gdGltZSksIGRyaXZlciBzaG91bGQg
ZW5hYmxlIHNlbmRpbmcgVlNDIFNEUCBvbmUgZnJhbWUgZWFybGllciBiZWZvcmUNCj4gPiBzZW5k
aW5nIHRoZSBjYXB0dXJlIGZyYW1lLg0KPiA+DQo+ID4gQlNwZWM6IDY5ODk1IChQU1IgRW50cnkg
U2V0dXAgRnJhbWVzIDE3OjE2KQ0KPiA+DQo+ID4gdjI6IFdyaXRlIGZyYW1lcyBiZWZvcmUgc3Ug
ZW50cnkgdG8gY29ycmVjdCByZWdpc3RlciAoVmlsbGUsIEpvdW5pKQ0KPiA+IMKgwqDCoCBNb3Zl
IGZyYW1lcyBiZWZvcmUgc3UgZW50cnkgY2FsY3VsYXRpb24gdG8gaXQncw0KPiA+IMKgwqDCoCBv
d24gZnVuY3Rpb24gKFZpbGxlLCBKb3VuaSkNCj4gPiDCoMKgwqAgUmVuYW1lIFBTUiBFbnRyeSBT
ZXR1cCBGcmFtZXMgcmVnaXN0ZXIgdG8gaW5kaWNhdGUNCj4gPiDCoMKgwqAgTHVuYXJsYWtlIHNw
ZWNpZmljaXR5IChKb3VuaSkNCj4gPiB2MzogTW9kaWZ5IHNldHVwIGVudHJ5IGZyYW1lcyBjYWxj
dWxhdGlvbiBmdW5jdGlvbiB0bw0KPiA+IMKgwqDCoCByZXR1cm4gdGhlIGFjdHVhbCBmcmFtZXMg
KFZpbGxlKQ0KPiA+IMKgwqDCoCBNYXRjaCBjb21tZW50IHdpdGggYWN0dWFsIGltcGxlbWVudGF0
aW9uIChKb3VuaSkNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDEgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA4MiArKysrKysrKysrKysrKystLQ0K
PiA+IC0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdz
LmggfMKgIDIgKw0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRpb25zKCspLCAxNCBk
ZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCAwNDdmZTNmODkwNWEuLjky
ZjA2ZDY3ZmQxZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTE3MDgsNiArMTcwOCw3IEBAIHN0
cnVjdCBpbnRlbF9wc3Igew0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIgZGMzY29fZXhpdGxpbmU7
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBkYzNjb19leGl0X2RlbGF5Ow0KPiA+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgZGVsYXllZF93b3JrIGRjM2NvX3dvcms7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgdTggZW50cnlfc2V0dXBfZnJhbWVzOw0KPiA+IMKgfTsNCj4gPg0KPiA+IMKgc3RydWN0IGlu
dGVsX2RwIHsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IGluZGV4IGVjZDI0YTBiODZjYi4uNDk3ZTRjMjZmNGE2IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTU5Miw2ICs1OTIs
OSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwDQo+
ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5yZXFf
cHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkcGNkX3ZhbCB8PSBEUF9QU1JfU1VfUkVHSU9OX1NDQU5MSU5FX0NBUFRVUkU7DQo+ID4N
Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMg
PiAwKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcGNkX3ZhbCB8PSBEUF9Q
U1JfRlJBTUVfQ0FQVFVSRTsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9kcGNk
X3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VOX0NGRywgZHBjZF92YWwpOw0KPiA+DQo+
ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBf
U0VUX1BPV0VSLA0KPiA+IERQX1NFVF9QT1dFUl9EMCk7IEBAIC02OTAsNiArNjkzLDkgQEAgc3Rh
dGljIHZvaWQNCj4gPiBoc3dfYWN0aXZhdGVfcHNyMShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50
ZWxfZHApDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0g
OCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfUFNSX0NS
Q19FTkFCTEU7DQo+ID4NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID49IDIwKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gTE5M
X0VEUF9QU1JfRU5UUllfU0VUVVBfRlJBTUVTKGludGVsX2RwLQ0KPiA+ID5wc3IuZW50cnlfc2V0
dXBfZnJhbWVzKTsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3JtdyhkZXZf
cHJpdiwgcHNyX2N0bF9yZWcoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyKSwNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH5FRFBfUFNSX1JFU1RPUkVfUFNSX0FD
VElWRV9DVFhfTUFTSywgdmFsKTsNCj4gPiDCoH0NCj4gPiBAQCAtNzI3LDExICs3MzMsMjcgQEAg
c3RhdGljIGludCBwc3IyX2Jsb2NrX2NvdW50KHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9k
cCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHBzcjJfYmxvY2tfY291bnRfbGluZXMoaW50
ZWxfZHApIC8gNDsNCj4gPiDCoH0NCj4gPg0KPiA+ICtzdGF0aWMgdTggZ2V0X2ZyYW1lc19iZWZv
cmVfc3VfZW50cnkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgew0KPiA+ICvCoMKgwqDCoMKg
wqDCoHU4IGZyYW1lc19iZWZvcmVfc3VfZW50cnk7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDC
oGZyYW1lc19iZWZvcmVfc3VfZW50cnkgPSBtYXhfdCh1OCwNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50ZWxfZHAtDQo+ID4gPnBzci5zaW5rX3N5bmNfbGF0ZW5jeSArIDEsDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDIpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqAvKiBFbnRyeSBzZXR1
cCBmcmFtZXMgbXVzdCBiZSBhdCBsZWFzdCAxIGxlc3MgdGhhbiBmcmFtZXMNCj4gPiBiZWZvcmUg
U1UgZW50cnkgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5lbnRyeV9z
ZXR1cF9mcmFtZXMgPj0NCj4gPiBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5KQ0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5ID0gaW50ZWxfZHAt
DQo+ID4gPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMgKyAxOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDC
oMKgwqByZXR1cm4gZnJhbWVzX2JlZm9yZV9zdV9lbnRyeTsgfQ0KPiA+ICsNCj4gPiDCoHN0YXRp
YyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4g
wqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBlbnVtIHRyYW5z
Y29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoHUzMiB2YWwgPSBFRFBfUFNSMl9FTkFCTEU7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgdTMyIHBzcl92YWwgPSAwOw0KPiA+DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8PQ0KPiA+
IEVEUF9QU1IyX0lETEVfRlJBTUVTKHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSk7
DQo+ID4NCj4gPiBAQCAtNzQxLDcgKzc2Myw4IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9w
c3IyKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCAmJiBESVNQTEFZX1ZFUihkZXZfcHJpdikg
PD0NCj4gPiAxMikNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBF
RFBfWV9DT09SRElOQVRFX0VOQUJMRTsNCj4gPg0KPiA+IC3CoMKgwqDCoMKgwqDCoHZhbCB8PSBF
RFBfUFNSMl9GUkFNRV9CRUZPUkVfU1UobWF4X3QodTgsIGludGVsX2RwLQ0KPiA+ID5wc3Iuc2lu
a19zeW5jX2xhdGVuY3kgKyAxLCAyKSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgdmFsIHw9DQo+ID4g
RURQX1BTUjJfRlJBTUVfQkVGT1JFX1NVKGdldF9mcmFtZXNfYmVmb3JlX3N1X2VudHJ5KGludGVs
X2RwKSk7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gaW50ZWxfcHNyMl9nZXRf
dHBfdGltZShpbnRlbF9kcCk7DQo+ID4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAxMikgeyBAQCAtNzg1LDYgKzgwOCw5IEBAIHN0YXRpYw0KPiA+IHZv
aWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5yZXFfcHNyMl9zZHBfcHJpb3Jfc2Nh
bmxpbmUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gRURQX1BT
UjJfU1VfU0RQX1NDQU5MSU5FOw0KPiA+DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAyMCkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cHNyX3ZhbCB8PSBMTkxfRURQX1BTUl9FTlRSWV9TRVRVUF9GUkFNRVMoaW50ZWxfZHAtDQo+ID4g
PnBzci5lbnRyeV9zZXR1cF9mcmFtZXMpOw0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkgew0KPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgdTMyIHRtcDsNCj4gPg0KPiA+IEBAIC03OTgsNyArODI0LDcg
QEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwDQo+ID4gKmlu
dGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBQU1IyIEhXIGlzIGluY29ycmVjdGx5IHVz
aW5nIEVEUF9QU1JfVFAxX1RQM19TRUwgYW5kIEJTcGVjDQo+ID4gaXMNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgICogcmVjb21tZW5kaW5nIGtlZXAgdGhpcyBiaXQgdW5zZXQgd2hpbGUgUFNSMiBpcyBl
bmFibGVkLg0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgcHNyX2N0bF9yZWcoZGV2X3ByaXYsDQo+ID4gY3B1X3RyYW5z
Y29kZXIpLCAwKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
cHNyX2N0bF9yZWcoZGV2X3ByaXYsDQo+ID4gY3B1X3RyYW5zY29kZXIpLCBwc3JfdmFsKTsNCj4g
Pg0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRURQX1BTUjJf
Q1RMKGNwdV90cmFuc2NvZGVyKSwgdmFsKTsNCj4gPiDCoH0NCj4gPiBAQCAtMTA2Niw2ICsxMDky
LDQwIEBAIHN0YXRpYyBib29sIF9jb21wdXRlX3BzcjJfd2FrZV90aW1lcyhzdHJ1Y3QNCj4gPiBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+
IMKgfQ0KPiA+DQo+ID4gK3N0YXRpYyB1OCBpbnRlbF9wc3Jfc2V0X2VudHJ5X3NldHVwX2ZyYW1l
cyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29uc3Qgc3RydWN0DQo+ID4gZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9k
ZSkNCj4gDQo+IEkgdGhpbmsgInNldCIgaXMgbm90IGNvcnJlY3QgaGVyZS4gaW50ZWxfcHNyX2dl
dF9lbnRyeV9zZXR1cF9mcmFtZXMgaXMgbW9yZSBhcHByb3ByaWF0ZS4NClByb2JhYmx5IHNvLiBJ
IHdhcyB0aGlua2luZyBzZXR0aW5nIHRoZSByZWdpc3RlciB3aXRoIHRoaXMgdmFsdWUgYnV0IGhl
cmUgaXQncyBtb3JlIGdldHRpbmcgdGhlIHZhbHVlIHRoYW4gc2V0dGluZy4NCg0KPiANCj4gPiAr
ew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiANCj4gWW91IHNob3VsZCB1c2UgbmFtZSBpOTE1IGhl
cmUuDQpSaWdodC4gSSdsbCBmaXggdGhpcy4NCg0KPiANCj4gPiArwqDCoMKgwqDCoMKgwqBpbnQg
cHNyX3NldHVwX3RpbWUgPSBkcm1fZHBfcHNyX3NldHVwX3RpbWUoaW50ZWxfZHAtDQo+ID4gPnBz
cl9kcGNkKTsNCj4gPiArwqDCoMKgwqDCoMKgwqB1OCBlbnRyeV9zZXR1cF9mcmFtZXMgPSAwOw0K
PiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAocHNyX3NldHVwX3RpbWUgPCAwKSB7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJt
LA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJQU1IgY29uZGl0aW9uIGZhaWxlZDogSW52YWxpZCBQU1Igc2V0dXANCj4gPiB0aW1lICgw
eCUwMngpXG4iLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3JfZHBjZFsxXSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRVRJTUU7DQo+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+
ICsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX3VzZWNzX3RvX3NjYW5saW5l
cyhhZGp1c3RlZF9tb2RlLCBwc3Jfc2V0dXBfdGltZSkgPg0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoCBhZGp1c3RlZF9tb2RlLT5jcnRjX3Z0b3RhbCAtIGFkanVzdGVkX21vZGUtPmNydGNfdmRp
c3BsYXkNCj4gPiAtIDEpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAyMCkgew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogc2V0dXAgZW50cnkgZnJhbWVzIGNhbiBiZSBz
ZXQgdXAgdG8gMw0KPiA+IGZyYW1lcyAqLw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZW50cnlfc2V0dXBfZnJhbWVzID0gMTsNCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZf
cHJpdi0+ZHJtLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNSIHNldHVwIGVudHJ5IGZyYW1lcyBzZXQg
dG8NCj4gPiAlZFxuIiwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW50cnlfc2V0dXBfZnJhbWVzKTsNCj4g
DQo+IERvbid0IHJlZmVyICJzZXR0aW5nIiBoZXJlIGFzIHRoaXMgaXMganVzdCByZXR1cm5pbmcg
dGhlIHZhbHVlLiBOb3Qgc2V0dGluZyBpdC4NCkknbGwgZHJvcCB0aGUgInNldCIgaGVyZS4NCg0K
VGhhbmtzIGZvciB0aGUgY29tbWVudHMgYW5kIHJldmlldyENCg0KLU1pa2EtDQoNCj4gDQo+IEJS
LA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB9IGVsc2Ugew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICJQU1IgY29uZGl0aW9uIGZhaWxlZDogUFNSIHNldHVwDQo+ID4gdGltZSAoJWQgdXMpIHRvbyBs
b25nXG4iLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwc3Jfc2V0dXBfdGltZSk7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVUSU1FOw0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4gK8KgwqDCoMKgwqDCoMKgfQ0K
PiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gZW50cnlfc2V0dXBfZnJhbWVzOw0KPiA+
ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpDQo+ID4gwqB7DQo+ID4gQEAgLTEyMTMsNyArMTI3
Myw3IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiA+
ICppbnRlbF9kcCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGNv
bnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0K
PiA+IC3CoMKgwqDCoMKgwqDCoGludCBwc3Jfc2V0dXBfdGltZTsNCj4gPiArwqDCoMKgwqDCoMKg
wqB1OCBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+ID4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgICogQ3VycmVudCBQU1IgcGFuZWxzIGRvbid0IHdvcmsgcmVsaWFi
bHkgd2l0aCBWUlIgZW5hYmxlZCBAQA0KPiA+IC0xMjQyLDE5ICsxMzAyLDEzIEBAIHZvaWQgaW50
ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgfQ0KPiA+DQo+ID4gLcKgwqDCoMKgwqDCoMKgcHNyX3NldHVwX3RpbWUgPSBkcm1fZHBf
cHNyX3NldHVwX3RpbWUoaW50ZWxfZHAtPnBzcl9kcGNkKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBp
ZiAocHNyX3NldHVwX3RpbWUgPCAwKSB7DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IgY29uZGl0aW9uIGZhaWxlZDog
SW52YWxpZCBQU1Igc2V0dXANCj4gPiB0aW1lICgweCUwMngpXG4iLA0KPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3Jf
ZHBjZFsxXSk7DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4g
PiAtwqDCoMKgwqDCoMKgwqB9DQo+ID4gK8KgwqDCoMKgwqDCoMKgZW50cnlfc2V0dXBfZnJhbWVz
ID0NCj4gPiBpbnRlbF9wc3Jfc2V0X2VudHJ5X3NldHVwX2ZyYW1lcyhpbnRlbF9kcCwgYWRqdXN0
ZWRfbW9kZSk7DQo+ID4NCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfdXNlY3NfdG9fc2Nh
bmxpbmVzKGFkanVzdGVkX21vZGUsIHBzcl9zZXR1cF90aW1lKSA+DQo+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgIGFkanVzdGVkX21vZGUtPmNydGNfdnRvdGFsIC0gYWRqdXN0ZWRfbW9kZS0+Y3J0
Y192ZGlzcGxheQ0KPiA+IC0gMSkgew0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChlbnRyeV9zZXR1
cF9mcmFtZXMgPj0gMCkgew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRl
bF9kcC0+cHNyLmVudHJ5X3NldHVwX2ZyYW1lcyA9DQo+ID4gZW50cnlfc2V0dXBfZnJhbWVzOw0K
PiA+ICvCoMKgwqDCoMKgwqDCoH0gZWxzZSB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNSIGNvbmRpdGlvbiBmYWls
ZWQ6IFBTUiBzZXR1cCB0aW1lICglZA0KPiA+IHVzKSB0b28gbG9uZ1xuIiwNCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwc3Jfc2V0dXBf
dGltZSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgIlBTUiBjb25kaXRpb24gZmFpbGVkOiBQU1Igc2V0dXAgdGltaW5nDQo+ID4gbm90
IG1ldFxuIik7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+
ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaA0KPiA+IGluZGV4IGQzOTk1MTM4M2M5Mi4uZWZl
NDMwNmIzN2UwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyX3JlZ3MuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyX3JlZ3MuaA0KPiA+IEBAIC0zNSw2ICszNSw4IEBADQo+ID4gwqAjZGVmaW5lDQo+
ID4gRURQX1BTUl9NSU5fTElOS19FTlRSWV9USU1FXzBfTElORVPCoMKgUkVHX0ZJRUxEX1BSRVAo
RURQX1BTUl9NSU5fTElOS18NCj4gPiBFTlRSWV9USU1FX01BU0ssIDMpDQo+ID4gwqAjZGVmaW5l
wqDCoCBFRFBfUFNSX01BWF9TTEVFUF9USU1FX01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19H
RU5NQVNLKDI0LCAyMCkNCj4gPiDCoCNkZWZpbmUNCj4gPiBFRFBfUFNSX01BWF9TTEVFUF9USU1F
KHgpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0ZJRUxEX1BSRVAoRURQX1BTUl9NQVhfU0xF
RVANCj4gPiBfVElNRV9NQVNLLCAoeCkpDQo+ID4gKyNkZWZpbmXCoMKgIExOTF9FRFBfUFNSX0VO
VFJZX1NFVFVQX0ZSQU1FU19NQVNLwqDCoFJFR19HRU5NQVNLKDE3LCAxNikNCj4gPiArI2RlZmlu
ZQ0KPiA+IExOTF9FRFBfUFNSX0VOVFJZX1NFVFVQX0ZSQU1FUyh4KcKgwqDCoMKgUkVHX0ZJRUxE
X1BSRVAoTE5MX0VEUF9QU1JfRU5UUlkNCj4gPiBfU0VUVVBfRlJBTUVTX01BU0ssICh4KSkNCj4g
PiDCoCNkZWZpbmXCoMKgIEVEUF9QU1JfU0tJUF9BVVhfRVhJVMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19CSVQoMTIpDQo+ID4gwqAjZGVmaW5lwqDC
oCBFRFBfUFNSX1RQX01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoFJFR19CSVQoMTEpDQo+ID4gwqAjZGVmaW5lDQo+ID4gRURQX1BTUl9UUF9UUDFfVFAywqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfRklFTERfUFJFUChFRFBfUFNS
X1RQX01BU0ssDQo+ID4gMCkNCg0K
