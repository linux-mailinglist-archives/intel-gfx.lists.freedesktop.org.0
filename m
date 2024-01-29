Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0F783FF20
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 08:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32BCE10E975;
	Mon, 29 Jan 2024 07:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8285010E975
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 07:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706513629; x=1738049629;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=pSeclIsyXcCNFma7i/Zb5RutYngOwUTt74MJ18vtxns=;
 b=LOKg1Xox3NF5H7ZItckcGVgX8aT8UOVr+0Vo4DUTD5I7IXXWU0INJl+S
 oXEeib8V8gF0DFrOAu0oYWghj7HJUfdCaotiRD+dAwqkqJxcfyJpSEXsT
 s4Xv0ohwHgMkD4SXcrD8D0RVwLF7M8X8Hqu3BmvIRZqku3a+f09PR5VmW
 ZZ2hebmOpPadnUi9i4F7RrRVIbh0hYpDoklcXjpfCnoRWSnpHP4LRMZa/
 oj0wznIe12joBs7Zti1gUyxwZVIFAftYxOUoiE7fiuDcpRaprn+3IaQxo
 04YFiB93Vvdgk34NgGMIaPAVdkaQ1OKWaQCxiqvlezcfHrbPpbjGA4A0G w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="16399691"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; d="scan'208";a="16399691"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2024 23:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; 
   d="scan'208";a="3277869"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jan 2024 23:33:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Jan 2024 23:33:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Jan 2024 23:33:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 28 Jan 2024 23:33:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 28 Jan 2024 23:33:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bN5UphMX2vW2c8UrCMNNCwrE59MRFvQFTsvJH57u/6PpY6c1sdA0uDDj/7LO2W8yy0JkLzIsS5nKed/EkqAm96+5L5Ocya5H9TsxE/KGWktpn2rr3KqoiLvH6ncoTM3bIMeWLTOS2ICY/R1Ul9dGecurHE08G1biuS8PQjbFam5eIH4OMM/Kl228yRbLrsU6Z82eVm2yiT7NXZIPhmpxSi79b0ISiUT2xN00gRW3oZfB9FCmoq1qpLhSy7vTnXx2K0fKTP0q0c87yNo1mN3bKPlUcNU8urDU1XqSbob5JZEcY9Zm294AgJkb3yIM/bWsfu00Q0EI1B6ZTokRzLr9CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pSeclIsyXcCNFma7i/Zb5RutYngOwUTt74MJ18vtxns=;
 b=STcxaMktYoGMmRiJduD84tFeUE2sSKaN8wZ4tk13C46CVsLBoh/sO6dsN6dRZORTJo7Yqy6wRPjubBR0wYxZuL15ksjhAfH28gPUfzkVsKNlo7sNOjU3Yn9PQGhCtNVs5XKR2I+haDNE/d+r8JLZTeqUCwCLiIvFTl+YF5Ll7Qjrqjs+cP9dY7yZm9zrajsTwPg2ceLT8VJvs4w/wtiPRedhjflzTW8Wy2RlPeFjZdyjp0oMaCCu2nrDuIdHkTo+mvhPhvqo0JpE71a4CBItsCeQkszE0llgAzNVigw48kSihM2hDW8l88thSOQOxRe0W+xyUCNCfPnG6Btpics+/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB7278.namprd11.prod.outlook.com (2603:10b6:8:10a::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.32; Mon, 29 Jan 2024 07:33:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 07:33:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/4] drm/i915/alpm: Calculate ALPM Entry check
Thread-Topic: [PATCH v2 3/4] drm/i915/alpm: Calculate ALPM Entry check
Thread-Index: AQHaP+GmEepDYSDvAUCFKAUyayDZrbDwME2AgABa5wA=
Date: Mon, 29 Jan 2024 07:33:45 +0000
Message-ID: <7aeb8fff80e1a42041be69a780bc5a1296475c5a.camel@intel.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
 <20240105141504.2808991-4-jouni.hogander@intel.com>
 <IA0PR11MB73077C177C1DDBB553CE8D9CBA7E2@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB73077C177C1DDBB553CE8D9CBA7E2@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB7278:EE_
x-ms-office365-filtering-correlation-id: 30071894-9cf8-4023-ed9b-08dc209ca04c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1gj0xNUHTWaAFOSSYjW6+FHHx70Gh3RBNiUdEWReaJaqpzvsY4eELxSj5FnpKIeGS7+takRLNIPp9oHiWK597ppIfI5ispFSeSvZAvyd+JWjcyuqz7yJLmRIu+QJs2LykNRErYfuB2OiIK7igHt4LDNYFG0J9lt4RhYTUf3QL+Oah4RcRqiIyyFlttOWXBFoWxVF6LAtTcNBWW0wWuWKMBQEYD5z+8YTucuyjtF9aOTTCLVEqeXaqeUJj39dWPNbEnpi8XUGLsHRuvkkyWBvaOtCoHwboB4XNg6p1PPYXKER3ypdxbBPRKJpW0uKTdlY9GreebEyM2Cq49PFMYvVUCp8TIpnYvDLNeENRD7E48LzVsDJ7VugSikrIuUPaQY/3WsysmV9Pb8fAXuPKykmBHj+aORylXiQHazhWLwvaglrIOlNdx05EqRmddB0589t5ZiXR43UI3nEsgxnkrVFw2e1nAh/rvs32LmbgUVNXTNSoijXL2zfGs/Fyl3aMpisUr5NIyYkHZdkScWf/WA2SlzgZL48KIcJpBpQHwwV7sDuaKGaFHxYytUmwd5GC2xRDsEwaqXNcOkF41aGVOJOOU/TkhOQuilWlCxGuDMgOW4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(136003)(396003)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(38070700009)(41300700001)(2906002)(5660300002)(36756003)(110136005)(86362001)(91956017)(83380400001)(66476007)(66556008)(66946007)(66446008)(76116006)(64756008)(316002)(478600001)(6486002)(71200400001)(53546011)(6506007)(6512007)(2616005)(26005)(82960400001)(122000001)(8676002)(8936002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnkzSjhkNnQzZkY3SVE5T0lPaXVCUnFLU0NSN3c2WHEvNnkwV1p0V2xyd1VM?=
 =?utf-8?B?ZUQwb0pXcEhjYXN2MGJEUG13OU1IQUVnZXY2NWNMQ3BMaWxPcmRqcXpEY0pV?=
 =?utf-8?B?ek1aMHVDWDBvMFlNT2lNeG5PKzQ3cVRxbXNDUzN2S1cvVkhMbTlqb1dYZkd5?=
 =?utf-8?B?anlzWW5Cbitwdk9ucWRpeGRBTzd1SnhqWnFVY200SDU1U2d5cnlWTEFMeTc3?=
 =?utf-8?B?K241WXJpZmwzL0orbWJnMTZmWkRhN1gyQVNLREt5VDArYlQ1SDV6TllPOFht?=
 =?utf-8?B?cVFCWDB6SUloMnhrK2hHenpQV0EwU3l2dW5qZUMvanQvY3BXdWRaUTNpeWQr?=
 =?utf-8?B?TkhtMTUvRytna2tic2pwb3NHV1RPWE5MYjVrZTVJeVRFQm4xYThwL0VZUUJX?=
 =?utf-8?B?SlErVnJuOG1FaWJQR0V3RDd5VkdwUEJGYjl3dm1vVHUrbzlMeVBXak5LRHhN?=
 =?utf-8?B?QXRBMDFtVi8wSTczbzhWakFyNEp5OTJCQUlxaGlTWEU0dk1ITmVnUlRMMDhm?=
 =?utf-8?B?ZTk5Tlh3Um9FYzJHWlNES3JzcU5SMnlFYnJzTlpCeEt0K1NZcm5saTJpUmNp?=
 =?utf-8?B?WmxFakUrV1VBWVE1ZWdWVFMyWXVDVUZTa1ZmSlU5T080K2RFK1QrL1ZROXBD?=
 =?utf-8?B?ZEtINzRJSFI0YW5sbVBSN2JDN2xMVEVuR1dDTnhoNUtnamE5OXl3dWduRUpu?=
 =?utf-8?B?OTVkRVhvbzBLYUtQWEtxRnV3Y2V3N25rZmMydXh0eUZCVWJCWDlrU3pwcExG?=
 =?utf-8?B?WU5ia3dhNWVUc3o3Vy9yM3hIYk1aZFQzOEV1aVJuOXczcW9EeHNSU2lUYUhB?=
 =?utf-8?B?blpHeDBFdmFCK1YwcmVPcFE2MGhiWGxNZ0JCcm1kSjlpMjZLY2dJZmZmV29m?=
 =?utf-8?B?NzlaYTB6QUt6am95em1qUDZic2RHQnpITGtrZUlVV2hkWUxHSU1ZNm5vMys3?=
 =?utf-8?B?SUhydUFNSlM1dXNWREJDNFpUN3F1ZDdmODJJT3NycDNIWEQzd3FpYWlNTmxF?=
 =?utf-8?B?MTFublZoUG55bWlRcEljRENvOGJBdHRRVVFMR1ljM2ZaSm9tcSs2R2ZvaTFU?=
 =?utf-8?B?L1JycTJ0eHN3b080T0VJbzFmZTZZeUs1OEF6QU5iNzlDdkVWZ05TM2FnY3Yv?=
 =?utf-8?B?S1JYYTlZMEZFQVRYQzEzREE3cUV3ckdWV09wLzY0bzBxN0xXaGtWejlTd1JT?=
 =?utf-8?B?YU1qajE4VGdDeE5seVBYd0dVWHdob0VsSngvYUFuOVhqRmZZRVZxN3k5YnI3?=
 =?utf-8?B?L05rZHp5VTE3cDlYVU9Za0V1NERhQldhSWJlam83K1oybENrdjMwNkNEWFRM?=
 =?utf-8?B?TTFrQXR2dHBHOXpQWlR6V2tlVm1RM2dhRmlHaE1uRzY2NTg2WHlHZ0lJZ0Zp?=
 =?utf-8?B?MUFReXhhR21Pb08rVnd2VWtSZ0RMY2ZIZ1NUaXlVbnkxZ0RkdG1VdFhCQlBs?=
 =?utf-8?B?RkR5bkZVd2dXY2RiVEl4ZmY0MUg0amZjcFNtaVZHR2JMUGR5QVRMUllKaVV2?=
 =?utf-8?B?eU04eXpZanlKa2NseElDT0tFWXlyMWdEQmkwZlAwZTNldUt3ZHlHZHFtblJW?=
 =?utf-8?B?M2JjYXM3a0l5OWRnK2J5NFFkQkE0ZDlXSjFvU1ppQW9oNEkvaGFSUTRsQ09L?=
 =?utf-8?B?YnVwZlJ0M0hkMW1qdTJIWkdLdStuYmRDUkhZWE1BNW95aytjNjZ1K2t5Q3VL?=
 =?utf-8?B?Nm1sdUtFQU8rTFB6Qkx0QStmSHBJd2lnQkZxWFhaK2ZsZnh5amR0bk1CaTNE?=
 =?utf-8?B?K2FKVTdMaTVqTWJVbXJySXFTL0ZXWWgxV0JFNmM3L3lkWUZaS1pDYjYweWNm?=
 =?utf-8?B?Zzd6VjFsWTdrd25PMUFaRytNWW96cFNxVFM1Uzd0dFFKbjRJRGIrRGdEM3pC?=
 =?utf-8?B?U2hEWEFRek1IbTZRL0hMTkQ1TXA0aE81Ti9Id1hCSWlCelpkREFSeC9LSFZz?=
 =?utf-8?B?eWtoUFV5T1pmbEMyRzdjbi91NlBGbW10YXc0WGM4MnluRm50WFRpeXVvWWdF?=
 =?utf-8?B?c2wxNUQ0a1dUWWNlSTlPWGEwaU5LM3NrcXJlNUtud0o2dE4rUkNHeDZyVmRq?=
 =?utf-8?B?VDF4OFloTmRCNzJneW1zcFh0bXhzbUoxTjQvVUdnZXYwSXZFdk9Lb3BwZnd6?=
 =?utf-8?B?OWRzNHhNb29seWZVQUhPendNMXpWa3haaldPVi9qZjdRNmt6VUdaa1hBaEpo?=
 =?utf-8?B?U3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <971B21347021A447968A51E9B9B03417@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30071894-9cf8-4023-ed9b-08dc209ca04c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 07:33:45.5660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2IiMcE9u9Zdi8fvIzw5w+ElEKrRPDHvI43s/G7jFtVWx5C/iI7SEbtIM7z5KN8kJnKwqHb28BUThxftxOKpn4tp2M/maq9Qji19fJD4V1sk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7278
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

T24gTW9uLCAyMDI0LTAxLTI5IGF0IDAyOjA4ICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBJbnRlbC1nZngg
PGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmCj4gPiBP
ZiBKb3VuaQo+ID4gSMO2Z2FuZGVyCj4gPiBTZW50OiBGcmlkYXksIEphbnVhcnkgNSwgMjAyNCA3
OjQ1IFBNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gU3ViamVj
dDogW1BBVENIIHYyIDMvNF0gZHJtL2k5MTUvYWxwbTogQ2FsY3VsYXRlIEFMUE0gRW50cnkgY2hl
Y2sKPiA+IAo+ID4gQUxQTSBFbnRyeSBDaGVjayByZXByZXNlbnRzIHRoZSBudW1iZXIgb2YgbGlu
ZXMgbmVlZGVkIHRvIHB1dCB0aGUKPiA+IG1haW4gbGluawo+ID4gdG8gc2xlZXAgYW5kIGtlZXAg
aXQgaW4gdGhlIHNsZWVwIHN0YXRlIGJlZm9yZSBpdCBjYW4gYmUgdGFrZW4gb3V0Cj4gPiBvZiB0
aGUgU0xFRVAKPiA+IHN0YXRlIChlRFAgcmVxdWlyZXMgdGhlIG1haW4gbGluayB0byBiZSBpbiB0
aGUgU0xFRVAgc3RhdGUgZm9yIGEKPiA+IG1pbmltdW0gb2YKPiA+IDV1cykuCj4gPiAKPiA+IEJz
cGVjOiA3MTQ3Nwo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDMgKysKPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAyOAo+ID4gKysrKysrKysrKysr
KysrKysrKwo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCj4gPiBpbmRleCA4ODlhOGIzNGI3YWMuLjdlZGRlZjg1OWZmNCAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAo+ID4gQEAgLTE2ODAsNiArMTY4MCw5IEBAIHN0cnVjdCBpbnRlbF9wcHMge8KgIHN0cnVjdCBh
bHBtX3BhcmFtZXRlcnMgewo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IGlvX3dha2VfbGluZXM7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgdTggZmFzdF93YWtlX2xpbmVzOwo+ID4gKwo+ID4gK8KgwqDCoMKg
wqDCoMKgLyogTE5MIGFuZCBiZXlvbmQgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoHU4IGNoZWNrX2Vu
dHJ5X2xpbmVzOwo+ID4gwqB9Owo+ID4gCj4gPiDCoHN0cnVjdCBpbnRlbF9wc3Igewo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggMTcwOWVi
YjMxMjE1Li43ZmJkMThmMjFjM2IgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gPiBAQCAtMTA5OSw2ICsxMDk5LDI4IEBAIHN0YXRpYyBib29sCj4g
PiBfY29tcHV0ZV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZV9pbmRpY2F0aW9uKHN0cnVjdCBpbnRl
bF9kcAo+ID4gKmludGVsX2QKPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiA+IMKg
fQo+ID4gCj4gPiArc3RhdGljIGJvb2wgX2xubF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQo+ID4gKmNydGNfc3RhdGUpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgYWxwbV9wYXJhbWV0ZXJzICphbHBtX3BhcmFtcyA9ICZpbnRlbF9kcC0KPiA+ID5w
c3IuYWxwbV9wYXJhbXM7Cj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgY2hlY2tfZW50cnlfbGluZXM7
Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqAvKiBBTFBNIEVudHJ5IENoZWNrID0gMiArIENFSUxJ
TkcoIDV1cyAvdGxpbmUgKSAqLwo+ID4gK8KgwqDCoMKgwqDCoMKgY2hlY2tfZW50cnlfbGluZXMg
PSAyICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF91c2Vjc190b19z
Y2FubGluZXMoJmNydGNfc3RhdGUtCj4gPiA+aHcuYWRqdXN0ZWRfbW9kZSwgNSk7Cj4gPiArCj4g
PiArwqDCoMKgwqDCoMKgwqBpZiAoY2hlY2tfZW50cnlfbGluZXMgPiAxNSkKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gPiArCj4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoaTkxNS0+ZGlzcGxheS5wYXJhbXMucHNyX3NhZmVzdF9wYXJhbXMpCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2hlY2tfZW50cnlfbGluZXMgPSAxNTsKPiA+ICsK
PiA+ICvCoMKgwqDCoMKgwqDCoGFscG1fcGFyYW1zLT5jaGVja19lbnRyeV9saW5lcyA9IGNoZWNr
X2VudHJ5X2xpbmVzOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gPiAr
fQo+ID4gKwo+ID4gwqBzdGF0aWMgYm9vbCBfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ID4g
KmNydGNfc3RhdGUpwqAgeyBAQCAtCj4gPiAxMTE0LDYgKzExMzYsOCBAQCBzdGF0aWMgYm9vbCBf
Y29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAKPiA+ICppbnRlbF9kcCwKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogaXQgaXMgbm90IGVub3VnaCAtPiB1c2Ug
NDUgdXMuCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYXN0X3dha2VfdGltZSA9IDQ1Owo+ID4gKwo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFRPRE86IENoZWNrIGhvdyB3ZSBjYW4g
dXNlIEFMUE1fQ1RMIGZhc3Qgd2FrZQo+ID4gZXh0ZW5kZWQKPiA+IGZpZWxkICovCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF93YWtlX2xpbmVzID0gMTI7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgfSBlbHNlIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aW9fd2FrZV90aW1lID0gNTA7Cj4gPiBAQCAtMTEzMCw2ICsxMTU0LDEwIEBAIHN0YXRpYyBib29s
IF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdAo+ID4gaW50ZWxfZHAKPiA+ICppbnRlbF9kcCwK
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmFzdF93YWtlX2xpbmVzID4gbWF4X3dha2VfbGlu
ZXMpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiA+
IAo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwICYmCj4gPiAh
X2xubF9jb21wdXRlX2FscG1fcGFyYW1zKGludGVsX2RwLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4g
Y3J0Y19zdGF0ZSkpCj4gVGhlIGZ1bmN0aW9uIG5hbWUgX2xubF8qKiogaW5kaWNhdGVzIGl0IHNo
b3VsZCBiZSBkaXNwbGF5IHZlciAyMC4gU28KPiBjYW4gdGhpcyBkaXNwbGF5IHZlciBjaGVjayBi
ZSBtb3ZlZCB0byBfbG5sXyoqKiA/CgpZZXMsIEkgY2FuIGRvIHRoYXQuCgpCUiwKCkpvdW5pIEjD
tmdhbmRlcgoKPiAKPiBUaGFua3MgYW5kIFJlZ2FyZHMsCj4gQXJ1biBSIE11cnRoeQo+IC0tLS0t
LS0tLS0tLS0tLS0tLS0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
ZmFsc2U7Cj4gPiArCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1z
LnBzcl9zYWZlc3RfcGFyYW1zKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
b193YWtlX2xpbmVzID0gZmFzdF93YWtlX2xpbmVzID0gbWF4X3dha2VfbGluZXM7Cj4gPiAKPiA+
IC0tCj4gPiAyLjM0LjEKPiAKCg==
