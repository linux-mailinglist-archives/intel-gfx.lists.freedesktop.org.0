Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEF3680667
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 08:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0026A10E0C5;
	Mon, 30 Jan 2023 07:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F33710E0C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 07:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675063326; x=1706599326;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=r0Np/mYzxYT2XmwxN0urYBr71tfumjwOh9ED6ddS9o0=;
 b=DBVEoa3ye8ogaUqxB6mqvhxjIeZTh08BtfVcgSugg7ApagKoRqdlYTIi
 vCM2TthFSPu5WdHpt+NqPPztHvme+ZYHgL+hoNZyA0XTtnx9gQoO5eN81
 KfQ7Ihu2Fl7iIN3mNb0y8h0FD75byOVXSzLz1KGmaSY9b3VZjhxc6UoWZ
 okijoXBe8fVNBEsjCtASXF6k1LxlNT7rsM/U54aRs102v9lZ1/9U0nySe
 VRs4SrvUKFrNWJXa/w+7Q53Pv+mxbj5qFadjvqwXr0oKn76+2Lwv/7Aco
 amh7jBN+nle387j+RnqzprKvoNMtiWAMaVBYs7f09RbMISX+A0PRdvmKm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="389863712"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="389863712"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2023 23:18:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="663990825"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="663990825"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 29 Jan 2023 23:18:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 29 Jan 2023 23:18:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 29 Jan 2023 23:18:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 29 Jan 2023 23:18:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 29 Jan 2023 23:18:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7tqEpbJwiKxQ8DuSn6CGWfrySIPwntYmO+pC288QbmmRkFcG9fXAPcqOiUbSKocQ0mYiM682bBq0Y1z/Jcqk6SP2H86E6KIuSxkAUUDZaZk9ntutKob3wb4j9M6pWd1X4HKFCOoVjpWZ9A2nGMOkEfYDiM3zDLHR4PVPQgDMQ132xcJspX+jOIdg6jSJ9rd+AWE/LHlQ2FSRF5deL5t25DEcLqjCzPhks1+GyGYmkCLDYf4EYYbpfioQIun/SoNGsNNjftvXSXia5jMDE4I+A6Ij3so5cawxjLsW8f3diReODDJLDyjXqiCEyNc4Lvd6NDXg39c7m9IReayAff5yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r0Np/mYzxYT2XmwxN0urYBr71tfumjwOh9ED6ddS9o0=;
 b=WSmVttMs08CWtTaDnVZRuIXNvHJx2qlxXDOH2WwEDvk7VzLzF70xzXOPl4QWxOTMvSOc59vSGAHsLOJAcJaTVXyXzWvpZ5vZ9olEJG2gopIgIEL54mkbnNWvO+Umf/jJasRV1TZLpjKzdMPn6iiY2iGkuKdU7aCyOhC88gL6mHu3hPRQdtBlCpceAgSnA5a+BKQfKBU8g7ai8F092ZtUkvGVHu1VyVwwNSCdb+cBW81xMtaQHyXRBCC9bVyR3VWXihYhNg77G67fl7EC/MFE8d0C7sxiQM05IYc04K6Z1Yza6SXgkOGwroljv3+nTGGuHHlLnG9DuGuUrmRrwIXzZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7838.namprd11.prod.outlook.com (2603:10b6:208:402::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 07:18:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%5]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 07:18:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/5] drm/i915/psr: Add the latency reporting
 chicken bit for pipe D
Thread-Index: AQHZFf0h2H53T4etOEa2HLFD97a1pK62yhUA
Date: Mon, 30 Jan 2023 07:18:25 +0000
Message-ID: <34ef080a7ad44d6c337956ca28d96bb7653f2c45.camel@intel.com>
References: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
 <20221222120048.8740-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20221222120048.8740-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7838:EE_
x-ms-office365-filtering-correlation-id: e43f7769-3554-4ce1-9413-08db02922d5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UgJmxt2JMLVniTOhqNkZwlzumRqetWfZvRdIGE9BOxCAfMycDSBCI2XAz30vEPO5JZopavzA5nwFyLX63W2wgbbmrSpj6P2JHTG+3u+PKR8+lp52N+hNlleqbKCEJ9gslJdwuPRRLRZIAYI9eMiB9hPuaM81p8Z3oaoAvukF0MSajSHaBlhoB/+fDwA5b4bmhZCzaTKrnjoBpCuMNKDXPt0qZAalbCL3834vptmdpLgQQRdhbAAsGzKLWhc3lhjHYTi9UAm4UZ2py94hg2PDJaLAtJvKNkGGHSNsWMgexJsaoYHeLOPndkX9x0j7cRQH9PLUxwCfLaTw5xVZ0Ptza8Dvm8QLksS4pFWNJKTaUiTxPXPS9QR6zczVFWSQm40OCP1S/SpsikqfN0QgIuMAE9ET0VICTyGJmNodUbPVgMZi1B3J8Hbij2xOju44GC/KF2AK53B97yyIZfrnqd3CYAPLIeax1V7wO7PtjZRpoma4sY43iAh/4+v0YjGBFdsRuOzZficiFS23kbcWIyBIoJ8YavCJQpas9vpBQKtJReMeRRP0420bFTxXUcb30G/vXSd71tkc7phgs9T5IXhVtyT0hSflXbaiscq42zEG1vBZxh0v5tJJjBRbKJ5JkBLYH6eJNTeqGynRWyvYcpeG5Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199018)(4001150100001)(5660300002)(8936002)(2906002)(86362001)(41300700001)(6506007)(91956017)(66556008)(76116006)(8676002)(110136005)(36756003)(64756008)(66446008)(66946007)(478600001)(66476007)(6512007)(26005)(966005)(6486002)(71200400001)(186003)(66574015)(38100700002)(38070700005)(2616005)(316002)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmdjUm1LV1o4NHBtd2hnWEw4MFNGUEF2dXNMLytwZFVHd3lCTlZZeUZ0N1ZQ?=
 =?utf-8?B?Qld0UzV2UVRFOWhyWTNKaGt4TVVyZkF2a1lGc2tzK05YQkpObkh0MHFJcEd6?=
 =?utf-8?B?YjFCOVV1Sm9LR0VnNXBFWWhWVCswdHRkS2NiU2hIYjNHeHV3ak1qbUFoMHRF?=
 =?utf-8?B?RkVVeDhVTDVkMkNVMFFid0E3Wll1WTVOMnh2UTQyWXFmMlo4bVM2cE1zNEFK?=
 =?utf-8?B?Z054N0dKWmJXWTBkbktnN0lRVnMxUVNZaExmRFdFdkFEUnhRNU55cFhvREdW?=
 =?utf-8?B?K0dBNEFENGFrcXRhNDRLdFFBUGZrSjZTQ2dLbkZKQ3FDN3B4eTMyQ09wRlRR?=
 =?utf-8?B?d09TTzRZaDdtczZ3eUl6OEZOVXhRcm1Uak9EYjY0cVQ5Nnh5MENZbmg2UkVK?=
 =?utf-8?B?OE1BY295NHByZmo1a1ZoSGVLbG9uY2plOFZDOURkejVJL2RtcUQxOEhsMGxm?=
 =?utf-8?B?OU4vb21yUTh3T1htMUk4UDdFdU1HcnVMc0dJYnJ3R0pOWkNGa0VCSWhuVDJl?=
 =?utf-8?B?RGk3WG9zMjZXZGtpN2VmUkMwRmtkVzdXN25XVzF3OHE2NTcvQ2JTUm51VDll?=
 =?utf-8?B?ek5VYjkzTkovRkF6R2JzQ2x6U25nUVdtdGJhMFd3ZFhTMTdOOUtKbGJDNzll?=
 =?utf-8?B?d0hzcWdKR2lBSElHY3EwYlg5YVFudkhCZEZwdkVXcm9mdk1qa2tvUmZGeTQ5?=
 =?utf-8?B?VVg0M3R4eDlNVTEvSGl2eThKT3hSQXN5M1RPajAwaWFoQTVka3JoU0JMV01s?=
 =?utf-8?B?TzV3L3BNdmJ5aTgvTzJZdVMrcjBzekE1Vk9tb3ZUV1UxcThpSUpXQ0VpQkFk?=
 =?utf-8?B?a3dHTEgrTnMxYmo0SWdKZEJYcnA0cDM2cnRWSTZITUNYSUxBcVBnRy9OSjJ0?=
 =?utf-8?B?Y3N1WUpxQUp2Z3dGWXprU2RSQUs4eXIzUnFEeFNMZ2w3VE1RdWp2Z01yQXBq?=
 =?utf-8?B?bmJXZFl0WGY3ekF6dlNmUGVCSTRmNlJTWkYrR2REVmFTK2FENkxsNTlObFgr?=
 =?utf-8?B?SUJHQm1ZQ3o2TFB5UWN3NXRyYkFvQkRrTmtETG02NDJPVkc1akQ5ck05d2xS?=
 =?utf-8?B?U25Bcm5IN1pieUxVbTlpMnBCZEg1TDdDOVRmdEo1aDk3MUNxQVBmUW5WN2Yx?=
 =?utf-8?B?ZUlmMG5jcFJWVXQ4dmh6Qm1aWFJqalpRK0FjTUY2cE5nTHNuUEN1dElId3Vw?=
 =?utf-8?B?L2wvZlZ4eTgzZUhkaU1jTnVoQU1MUXI5bHQxRFVVT2xwT0pjcFZnbkplZWU3?=
 =?utf-8?B?TWVLZFZKSW1FODA5clk0aUlvWlFWMWlNeFhNUlRic1dGMjRGSUlmWDVUc1Zn?=
 =?utf-8?B?TFVFcVpLU0VLekpCT1RLeFNHQ1VRdWZmaUhzK0RhM0g3VEpzbUZSa21DdG1p?=
 =?utf-8?B?VEtIRUdHVWRTSzJNc3NiRXB2ZGlrd3BSNDl4REhKTmRLY1h5cktWWGxCZWFI?=
 =?utf-8?B?VVd1VFNEb1dXd0t6aTU1dm1PeGtvaGhDMHRPWGZlMkZVMFhMM0NFblI1TTVD?=
 =?utf-8?B?Wkd4d3JzNURFeGZ3YlBZOG1XZW1nWmlrdE1uYnoxdnNOSFc0cEVNbEhJZlRL?=
 =?utf-8?B?eWxyc3VkZ2dVQW9zY3Rsd202MkZBYzN5SlFEK0tNMURNakV6dWRzWU10dUdk?=
 =?utf-8?B?VzBDTHNodUlGc2N0ZGVLOXl3K0pnQVRMQVdBZmluNDB5VGM0WFd1L2tiblpY?=
 =?utf-8?B?SFQzbXg1L1VzSDgybDR3Q0FQYTBMYVloRzRtU1hMZE40M3J6Z3g4MklZa0Vm?=
 =?utf-8?B?NFB3aUp3VUhXMHZ3bm1XTUZyUlhtSmNZVURiMzRIbEwyY0R6eUdLNUNDNEEv?=
 =?utf-8?B?eXorbkg4VXV0d3pEOWxwS0x3bkJXdHBHaUlnd2s0VHVTSVMrTm5zckRDc3hw?=
 =?utf-8?B?bGwzUHc4bTBtczJGZUVGaTdjc0ltNHM3ejhhNkVFaGJBZlA0QnVSSlNKUzdD?=
 =?utf-8?B?WjhzMmJkZ3psRER4V0s0eXdXVnkwaDQrUmtSNDNxLzVGMG1LL0NSbEt6K21D?=
 =?utf-8?B?Rkg0ZlExT1hXaUpoZU1Rb1czdkxsa0g3UndhNGF3eHRjWGdFYUNXK1FoMG12?=
 =?utf-8?B?azhPR2N4MWRHNzF6WHFNS25VVU9YQjQ3MFBtMmtvRWE1d1dUQXFMcjlxYWhO?=
 =?utf-8?B?a3hFZmY1TTZvUk41K0hzSG5LZ0hNU2hYdndBelZPYnNDdzdsMkY3NG8rdysv?=
 =?utf-8?B?c3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6051F90CA1665D40ADD34139DB4B3CDA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e43f7769-3554-4ce1-9413-08db02922d5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 07:18:25.2201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LG8J5xhNZ98XxE1AceykOxtR2JbgV6Q0TiaalJmaX/CP8cxqxMST04qfF4jdK4XmAwiqTBm2F+IUXbWoO4U21cuHbA4ZL0bK/sr9qxzlnqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7838
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/psr: Add the latency reporting
 chicken bit for pipe D
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

T24gVGh1LCAyMDIyLTEyLTIyIGF0IDE0OjAwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gUGlwZSBEIGhhcyBhIGNoaWNrZW4gYml0IGZvciB0aGUgbGF0ZW5jeSByZXBvcnRpbmcgb3Zl
cnJpZGUKPiB0aGluZyBhcyB3ZWxsLiBBZGQgaXQuCj4gCgpUaGlzIGlzIGFscmVhZHkgdGFrZW4g
Y2FyZSBpbiB0aGlzIHBhdGNoLCB3aGljaCBpcyBub3cgbWVyZ2VkOgoKaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzUxNzAzMC8/c2VyaWVzPTExMjQzMCZyZXY9MgoKPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8
IDIgKysKPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmjCoMKgwqDCoMKgwqDCoMKg
wqAgfCAxICsKPiDCoDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCA3MGJkNGU2OTgzNGMu
LmEyMzM1MTBiMjE2MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwo+IEBAIC0xMTEyLDYgKzExMTIsOCBAQCBzdGF0aWMgdTMyIHdhXzE2MDEzODM1NDY4X2Jp
dF9nZXQoc3RydWN0Cj4gaW50ZWxfZHAgKmludGVsX2RwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIExBVEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURfUElQRV9COwo+IMKg
wqDCoMKgwqDCoMKgwqBjYXNlIFBJUEVfQzoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiBMQVRFTkNZX1JFUE9SVElOR19SRU1PVkVEX1BJUEVfQzsKPiArwqDCoMKgwqDC
oMKgwqBjYXNlIFBJUEVfRDoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IExBVEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURfUElQRV9EOwo+IMKgwqDCoMKgwqDCoMKgwqBkZWZh
dWx0Ogo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgTUlTU0lOR19DQVNFKGludGVs
X2RwLT5wc3IucGlwZSk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
MDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IDhiMmNmOTgwZjMyMy4uYjBiM2I1
MTFlMTlmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTU3MzcsNiArNTczNyw3
IEBACj4gwqAjZGVmaW5lwqAgUkVTRVRfUENIX0hBTkRTSEFLRV9FTkFCTEXCoMKgwqDCoFJFR19C
SVQoNCkKPiDCoAo+IMKgI2RlZmluZSBHRU44X0NISUNLRU5fRENQUl8xwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9NTUlPKDB4NDY0MzApCj4gKyNkZWZpbmXCoMKgIExB
VEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURfUElQRV9EwqDCoMKgwqDCoFJFR19CSVQoMzEpCj4gwqAj
ZGVmaW5lwqDCoCBTS0xfU0VMRUNUX0FMVEVSTkFURV9EQ19FWElUwqDCoMKgwqDCoMKgwqDCoMKg
UkVHX0JJVCgzMCkKPiDCoCNkZWZpbmXCoMKgIExBVEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURfUElQ
RV9DwqDCoMKgwqDCoFJFR19CSVQoMjUpCj4gwqAjZGVmaW5lwqDCoCBMQVRFTkNZX1JFUE9SVElO
R19SRU1PVkVEX1BJUEVfQsKgwqDCoMKgwqBSRUdfQklUKDI0KQoK
