Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 767B67E6B4F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Nov 2023 14:41:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BF8710E213;
	Thu,  9 Nov 2023 13:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A940010E213
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 13:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699537302; x=1731073302;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cgl2KYQiNsyeZGACVVeq9BJGunuGZhwTTWcS7cYmUBc=;
 b=ZvBIPPRqCxpfTZc0IEykhdOlXcJySzUOknGES/1YffTqISZKAnpY3acV
 fuqL+rCtvHroCuMUwHIqBE9y48r7MsAikY/SD4uZpgWNfwWqA6jv7zQ+i
 p4TP8mhyMn0MnBjvsP/DmtbGBnrGgjiqnztmv9cj2fIcAjwycnNbSrBrn
 PH4SI6M8MStMrLKxpmA5l9l5KXPVr2TzokoGq/LNjidekG7qmYu6EPMCs
 m4Fe7T/c5xd/gmfdINq+m8yqH7Vd29JCfrclyuh7E9l0+6TmBEUvDLIjL
 oDCLlMj2FIUo2pVA8vXSacmQyXFLiCMvqwHAZsf6G3o8CL2s+QijdlkD/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="456475299"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="456475299"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 05:41:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="886993975"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="886993975"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 05:41:05 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 05:41:04 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 05:41:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 05:41:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FM+YX4+cLn2uRYYA6xNYGohVuXyftBGtdgLd9lRl6bf03ZvdH6XkvgbnoOoFApr1B0iGOiUjB6tng5dzoFxWoliv3Set2t/pzpxnPyz3M90RCXPb2pKSs78LVUH6rm2TdmEKZRcEpIbhe1U7n4xTR4lx0suGJk+sIkiVRLbYijrDlcmVfhSuIo8gR+k/uVBfHhT0PS1Qt0d4+vt7gS/tHEhi4w7twmrJDivB6EmwbJur2EuzPys+Q6aob4GoF/kmWqGjhP3ay9DQ2aMvF23hsnNtzZy3fwj9z/3uHhjpdK4JPmup4nZK/B9YKZ+vBajc+SdqWcr0i4q9sSMHT2+3dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cgl2KYQiNsyeZGACVVeq9BJGunuGZhwTTWcS7cYmUBc=;
 b=AU3H4hFZ5detNxAfDcQrj++LNbvYtrrTXnlKQX4tiqC/sYp1NzOMmTppH2z3ExVF+WlK4auWzgxLrhBeQI16eRcfg68g9OPzcAiR5SA5uB3WEc5h++tYI2+IqVSIsnAuyCyyLGEFrw/CB0msJdjKmLCMNOlI0kv2zwZsdZlTl19mvmOgskqAYuNhcllNpdqHSzUG1+ScsWQ92JPsMBRCFwce/VNg3zuf9t6xTbMA6IXwIaPMRE28nwt67VZdrP7EU8T4+F8CKbDj37aMp6b/yQuBtXX7Z2lOKQibkMcxDQTx/IRPGJI7CUoZddqfNyGpHLixrpY6uIMthigwb3iPnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.29; Thu, 9 Nov
 2023 13:41:02 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%6]) with mapi id 15.20.6954.028; Thu, 9 Nov 2023
 13:41:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4] drm/i915/display: Support PSR entry VSC
 packet to be transmitted one frame earlier
Thread-Index: AQHaEKc2Vb4RiBGCZU2eiyAsRMCPJLBwqIQAgAAA04CAAAsvgIABTf1A
Date: Thu, 9 Nov 2023 13:41:02 +0000
Message-ID: <MW4PR11MB70540C0996F722141982CE7FEFAFA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231106114228.146574-1-mika.kahola@intel.com>
 <ZUu-ZmzJ55_P6C2L@intel.com> <ZUu_FwaFCmS4_9nw@intel.com>
 <8734xgxhty.fsf@intel.com>
In-Reply-To: <8734xgxhty.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CY5PR11MB6344:EE_
x-ms-office365-filtering-correlation-id: 49a95b43-f025-42ea-0b5b-08dbe12983d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LWFe3hBhK1yHVuqtVtKFDn/Xm+QaLPVtvkxU9MemCDpXKMlMKVZ0cp6CoWV7jREkfJtUeOTqb340L7d3BH8GGq4j+ughNGcdC0MgUQ+h2rNMPMtdgKIpNOC677PqTJ/WehsDjDdBNe8dJwISzs7G+WrsuFLtB3pKSNoEzuyK37slgaKlb21BA6URPpW3Xo1GJgGvH6p7EohJBrFYFPmv861TxKHuHIffFdEgUML7H2IMkk8O4Xv7BV3shE/MSLxNtwI8zOIS6t2sTdqlQfxdZxoOAIR6D/Fjqwm+KESZjGYvvYzmo98z/GnOXzu+6PSm2gh/3M+NER9SKUEvrkLD144tQZFd5mYKBYVSYW/b3VeR/aDqFQzxbDw+fyZSe9CtY69DXa0Yz15DL/U8dI94fh1PRn2CzBoopAI3+NLZYiLFDwcrxAKlJb76SHzd1ERQxtWVlkZnOc/CZYP44+ZNxcwDK//KUt117tdSMj4uruRYEHBgmILG4ybECrqUrOnbLjy0SJHqJsMzhgTezy2sug9VrNNs2GY2qlO/OnQYYEXLXqDjZxiblSyHuqhmtj8ZaqMd45prPIyVFH7bgBaioBS5Xxx9vQ3frCvc35GvLrsoVC6dyydKO1kQoactBd31
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(136003)(39860400002)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(55016003)(66556008)(478600001)(38070700009)(33656002)(122000001)(82960400001)(38100700002)(86362001)(83380400001)(66946007)(6506007)(41300700001)(64756008)(76116006)(7696005)(110136005)(53546011)(66476007)(71200400001)(26005)(66574015)(9686003)(52536014)(66446008)(316002)(2906002)(5660300002)(8936002)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlVhNmc0UXBrYWNFZXlqMDFpUTM5RkRqMC9qemhsZStHRzMyY1ZmaytlYnVi?=
 =?utf-8?B?RzdrRk1uL1h2YWt6YXgzVGc4VS9NdXdnbWJObTlMQitlQkhHd0pzMnNLbEJG?=
 =?utf-8?B?OE1OSEprSGt4UjdSbU9IMGN6Y2F6cTRpcnNCbVBHL2NCVGJ0M2tDTDVhRXBi?=
 =?utf-8?B?dVl5NU1xYm9DRkl5ZnBPTHJ1OG9ocldzRHc5ZVdpamhpakt5T3NZa0ZVb0xP?=
 =?utf-8?B?SUt2MnRjU1A5bTJQd0FtWTAvYUJCcWZmNExtOGVWVk1KcHk3akdxREZmeG0r?=
 =?utf-8?B?T01QR0tTQ1luOTlUOFZiMll4aTZqVEwwUDJHOUV6bFBaMXB3K00vdzkvSDhq?=
 =?utf-8?B?L25OQjdic29hOEI4T2RjWGZsSll0cEd6U2JjWnF6aUxYR2ZUL3RPVnZiUjhY?=
 =?utf-8?B?TFc5blFtbTRYNWhFTU9ycThKUFhodVFKYnJGaTJPYkhNNGw4dVU4dVArckU4?=
 =?utf-8?B?eWhyQWhoTC9NM1AxWXQ5N0tjUlRXQmlVaUE1UVY3SENTdWs0SHd4b0V0N3hy?=
 =?utf-8?B?VWlpdmRTM21ZSWJxYUFTMHY4YVJ4ZXFuaERrUXVQNlU3ellLNURMSjlMV0w1?=
 =?utf-8?B?Mmk4a2lRZVBaZm5BMGQvTEFNZFFvUTRKSC9yNlVmeW5OYjA2L2sxSGs2T2Ns?=
 =?utf-8?B?UFBOSHI1S1h6L1pPVDRGUDlUa3A4OXA2a2RnTE1NcUttbDlHM1RjZmV6dHpE?=
 =?utf-8?B?THBkbStXTGlWSGxZZ251Wk5saXJXcmxiRTcydEFEOEc0dncvQXg0ZVFYWWRw?=
 =?utf-8?B?bklvK0lkU0U4d0JXMm1pRXU4aXN4WldmL1F6c0J6ZzhJNHBYV3dBN2ZIOSt4?=
 =?utf-8?B?d0tnVmtIb2NuR2Jnc2tSdXVHbVRodjFiNm5GWlE1akxEeDZMaTNybzJiekpY?=
 =?utf-8?B?anIxN1FCdXFseEZCcVdxeDJrVjZPWTdUQ0N0V0tRaE9LQVYxdzFJZzI2NFJ5?=
 =?utf-8?B?MkxYUjhFMFVyMzZoUVpvdGRqcmtPZk4xMTdkT0owZStFM1pycFVWOGlLcW12?=
 =?utf-8?B?UU1GUHRJVFlzWjZqZjBsUFF2SU5HV0R1L3FhZmJWc2t5VzM4YlRxbFRIM25L?=
 =?utf-8?B?N3ZJd240b3Y1V1lzSzhuRGlXNmtnakoyWlVYR0dlWXdpMTdKTzVobWpCNWhV?=
 =?utf-8?B?Q2h5NS9XZ05XU2tSRDlFY0NPS1diSGJaUnd5c2FoUU0xQ24wYkdtVjVQOE1O?=
 =?utf-8?B?dlBISVdmeHVOaU1IRW9NN09kSnlrbWRRZFZ1bWIzeUcrb2VUN0xEZFowR1My?=
 =?utf-8?B?UW5JRmRZYTNGZ1FUYkcwK1k2Y3RWSnZqaWJNVDgrRU5HM2w0bE42T2tERU5F?=
 =?utf-8?B?WmlrbTl4eCtSWDBONHR1YXhERWxiVUIxQ2tzdkZWWFBZaUdXT1haaXdEb2xo?=
 =?utf-8?B?S051TkV2UkYxa09BYTBVYWExTWFtdUhERFlLL09WWUZoMUtCL1R0MUtBbEFK?=
 =?utf-8?B?RHhlZTc4eDlaL2RudmduSmRPMXI4RVljODc2UUhrSm5LSnJ3Z1d1SDRkUlN4?=
 =?utf-8?B?S3ErcEZoVmtSSkdCdXM1UFV3RVd2Nk1DaXM0TTZ6dFNnQTN3K0ROVDlXSHZT?=
 =?utf-8?B?RG9kSlk2OWQrQ2MyZzlHaWZJSEVoQ3pzdUphUmZTd21hZDZxdURqdVoveTdJ?=
 =?utf-8?B?NGhnbzNWZ1A3ZXB1bkMwOFgrUE9zOVNSVTlYcVRhRzlvck5oNlZDWk12K203?=
 =?utf-8?B?eGV1eFJyT2xac3hhSVEvS3lYNmNmMnYrUHV1OCsrUGpUMnJoS1NsNUZXbTVl?=
 =?utf-8?B?STBtMEhtdDhja0ZpMGxSZ3puL1hNSDkwcllDVnpEcVVTOGlxaURRaVkyMXk0?=
 =?utf-8?B?ZnBULzYzRjdaYWxudGIzNU1Pd1YrQUhwT1NXaFVlSXdxYW1ZbFBJUmFIWkpG?=
 =?utf-8?B?NnZXaDJjWVVyempaMDlBZ0VaYWRiMU8xL3d0VllsTXB3Y2MzeUJCYmljaUJE?=
 =?utf-8?B?WldxYkJsRzZSNE44YVFWTnFjekVJRm53UTFORElIRTZKbENybFVHVVhmL3lR?=
 =?utf-8?B?cDc2aVBNMGlJTnA0OS9QVFZkTEEvMkEyUkxCeWI2VE0yd0tUTHNpd1U3ZHJL?=
 =?utf-8?B?cy9pa21HVmoybnFhOW5MZkpVTGZwQmNiQmNIZjZnbGtXYU5NZFd3ZWJzSEQ1?=
 =?utf-8?Q?llIM013pbY6uPpB7gx9yHFGyh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49a95b43-f025-42ea-0b5b-08dbe12983d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 13:41:02.4663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /qW/fEXkftwl8wmG/BhaD6dp1cV0wsUR/YxeMM6wRj06J5sBTIKC6NdDBOW9W3ZRmM6uzDSsT1GW/tXNM6X7Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Support PSR entry VSC
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDgsIDIw
MjMgNzo0MiBQTQ0KPiBUbzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT47IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g
W1BBVENIIHY0XSBkcm0vaTkxNS9kaXNwbGF5OiBTdXBwb3J0IFBTUiBlbnRyeSBWU0MgcGFja2V0
IHRvIGJlIHRyYW5zbWl0dGVkIG9uZSBmcmFtZSBlYXJsaWVyDQo+IA0KPiBPbiBXZWQsIDA4IE5v
diAyMDIzLCBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3
cm90ZToNCj4gPiBPbiBXZWQsIE5vdiAwOCwgMjAyMyBhdCAwNjo1OToxOFBNICswMjAwLCBWaWxs
ZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4+IE9uIE1vbiwgTm92IDA2LCAyMDIzIGF0IDAxOjQyOjI4
UE0gKzAyMDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+PiA+IERpc3BsYXkgZHJpdmVyIHNoYWxs
IHJlYWQgRFBDRCAwMDA3MWhbMzoxXSBkdXJpbmcgY29uZmlndXJhdGlvbiB0bw0KPiA+PiA+IGdl
dCBQU1Igc2V0dXAgdGltZS4gVGhpcyByZWdpc3RlciBwcm92aWRlcyB0aGUgc2V0dXAgdGltZQ0K
PiA+PiA+IHJlcXVpcmVtZW50IG9uIHRoZSBWU0MgU0RQIGVudHJ5IHBhY2tldC4gSWYgc2V0dXAg
dGltZSBjYW5ub3QgYmUNCj4gPj4gPiBtZXQgd2l0aCB0aGUgY3VycmVudCB0aW1pbmdzIChlLmcu
LCBQU1Igc2V0dXAgdGltZSArIG90aGVyIGJsYW5raW5nDQo+ID4+ID4gcmVxdWlyZW1lbnRzID4g
YmxhbmtpbmcgdGltZSksIGRyaXZlciBzaG91bGQgZW5hYmxlIHNlbmRpbmcgVlNDIFNEUA0KPiA+
PiA+IG9uZSBmcmFtZSBlYXJsaWVyIGJlZm9yZSBzZW5kaW5nIHRoZSBjYXB0dXJlIGZyYW1lLg0K
PiA+PiA+DQo+ID4+ID4gQlNwZWM6IDY5ODk1IChQU1IgRW50cnkgU2V0dXAgRnJhbWVzIDE3OjE2
KQ0KPiA+PiA+DQo+ID4+ID4gdjI6IFdyaXRlIGZyYW1lcyBiZWZvcmUgc3UgZW50cnkgdG8gY29y
cmVjdCByZWdpc3RlciAoVmlsbGUsIEpvdW5pKQ0KPiA+PiA+ICAgICBNb3ZlIGZyYW1lcyBiZWZv
cmUgc3UgZW50cnkgY2FsY3VsYXRpb24gdG8gaXQncw0KPiA+PiA+ICAgICBvd24gZnVuY3Rpb24g
KFZpbGxlLCBKb3VuaSkNCj4gPj4gPiAgICAgUmVuYW1lIFBTUiBFbnRyeSBTZXR1cCBGcmFtZXMg
cmVnaXN0ZXIgdG8gaW5kaWNhdGUNCj4gPj4gPiAgICAgTHVuYXJsYWtlIHNwZWNpZmljaXR5IChK
b3VuaSkNCj4gPj4gPiB2MzogTW9kaWZ5IHNldHVwIGVudHJ5IGZyYW1lcyBjYWxjdWxhdGlvbiBm
dW5jdGlvbiB0bw0KPiA+PiA+ICAgICByZXR1cm4gdGhlIGFjdHVhbCBmcmFtZXMgKFZpbGxlKQ0K
PiA+PiA+ICAgICBNYXRjaCBjb21tZW50IHdpdGggYWN0dWFsIGltcGxlbWVudGF0aW9uIChKb3Vu
aSkNCj4gPj4gPiB2NDogRHJvcCAic2V0IiBmcm9tIGZ1bmN0aW9uIG5hbWluZyAoSm91bmksIFZp
bGxlKQ0KPiA+PiA+ICAgICBVc2UgaTkxNSBpbnN0ZWFkIG9mIGRldl9wcml2IChKb3VuaSkNCj4g
Pj4gPg0KPiA+PiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQo+ID4+ID4gLS0tDQo+ID4+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCAgICB8ICAxICsNCj4gPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyAgICAgIHwgODIgKysrKysrKysrKysrKysrLS0tLQ0KPiA+PiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmggfCAgMiArDQo+ID4+
ID4gIDMgZmlsZXMgY2hhbmdlZCwgNzEgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+
ID4+ID4NCj4gPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4+ID4gaW5kZXggMDQ3ZmUzZjg5MDVhLi45MmYw
NmQ2N2ZkMWUgMTAwNjQ0DQo+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+PiA+IEBAIC0xNzA4LDYgKzE3MDgs
NyBAQCBzdHJ1Y3QgaW50ZWxfcHNyIHsNCj4gPj4gPiAgCXUzMiBkYzNjb19leGl0bGluZTsNCj4g
Pj4gPiAgCXUzMiBkYzNjb19leGl0X2RlbGF5Ow0KPiA+PiA+ICAJc3RydWN0IGRlbGF5ZWRfd29y
ayBkYzNjb193b3JrOw0KPiA+PiA+ICsJdTggZW50cnlfc2V0dXBfZnJhbWVzOw0KPiA+PiA+ICB9
Ow0KPiA+PiA+DQo+ID4+ID4gIHN0cnVjdCBpbnRlbF9kcCB7DQo+ID4+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPj4gPiBpbmRleCA5MjBmNzcz
MzYxNjMuLmZjMjQyOTE2MzQ5YiAxMDA2NDQNCj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+PiA+IEBAIC01OTMsNiArNTkzLDkgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ID4+ID4gIAlpZiAoaW50ZWxfZHAtPnBzci5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUpDQo+
ID4+ID4gIAkJZHBjZF92YWwgfD0gRFBfUFNSX1NVX1JFR0lPTl9TQ0FOTElORV9DQVBUVVJFOw0K
PiA+PiA+DQo+ID4+ID4gKwlpZiAoaW50ZWxfZHAtPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMgPiAw
KQ0KPiA+PiA+ICsJCWRwY2RfdmFsIHw9IERQX1BTUl9GUkFNRV9DQVBUVVJFOw0KPiA+PiA+ICsN
Cj4gPj4gPiAgCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VOX0NG
RywgZHBjZF92YWwpOw0KPiA+PiA+DQo+ID4+ID4gIAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVs
X2RwLT5hdXgsIERQX1NFVF9QT1dFUiwNCj4gPj4gPiBEUF9TRVRfUE9XRVJfRDApOyBAQCAtNjkx
LDYgKzY5NCw5IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IxKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ID4+ID4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDgpDQo+
ID4+ID4gIAkJdmFsIHw9IEVEUF9QU1JfQ1JDX0VOQUJMRTsNCj4gPj4gPg0KPiA+PiA+ICsJaWYg
KERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAyMCkNCj4gPj4gPiArCQl2YWwgfD0NCj4gPj4gPiAr
TE5MX0VEUF9QU1JfRU5UUllfU0VUVVBfRlJBTUVTKGludGVsX2RwLT5wc3IuZW50cnlfc2V0dXBf
ZnJhbWVzKTsNCj4gPj4gPiArDQo+ID4+ID4gIAlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIHBzcl9j
dGxfcmVnKGRldl9wcml2LCBjcHVfdHJhbnNjb2RlciksDQo+ID4+ID4gIAkJICAgICB+RURQX1BT
Ul9SRVNUT1JFX1BTUl9BQ1RJVkVfQ1RYX01BU0ssIHZhbCk7ICB9IEBAIC03MjgsMTENCj4gPj4g
PiArNzM0LDI3IEBAIHN0YXRpYyBpbnQgcHNyMl9ibG9ja19jb3VudChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiA+PiA+ICAJcmV0dXJuIHBzcjJfYmxvY2tfY291bnRfbGluZXMoaW50ZWxf
ZHApIC8gNDsgIH0NCj4gPj4gPg0KPiA+PiA+ICtzdGF0aWMgdTggZnJhbWVzX2JlZm9yZV9zdV9l
bnRyeShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+PiAgICAgICAgICAgXl4NCj4gPj4N
Cj4gPj4gVGhhdCB2cyAtRVRJTUUgYnJva2UgbXkgdGdsLg0KPiA+Pg0KPiA+PiA+ICtzdGF0aWMg
dTggaW50ZWxfcHNyX2VudHJ5X3NldHVwX2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LA0KPiA+ICAgICAgICAgICAgIF5eDQo+ID4gTm8sIGFjdHVhbGx5IHRoYXQgLi4uDQo+IA0KPiAq
c2lnaCoNCj4gDQo+IEkgZXllYmFsbGVkIHRoZSBwYXRjaCBhbmQgdGhlIHU4IGFuZCB0aG91Z2h0
IGFib3V0IGdpdmluZyBteSBzdGFuZGFyZCBpc3N1ZSAicGxlYXNlIHVzZSBpbnRzIHVubGVzcyB5
b3UgaGF2ZSBzcGVjaWZpYyByZWFzb25zIHRvDQo+IHVzZSBzb21ldGhpbmcgZWxzZSIgY29tbWVu
dC4gQnV0IGRpZG4ndC4NCg0KU28gaXQncyB0aW1lIHRvIHN3aXRjaCB0byB1c2UgaW50cy4gVGhv
dWdodCBlbnRyeV9zZXR1cF9mcmFtZXMgd291bGQgZml0IHRvIHU4IGJ1dCBJIGd1ZXNzIHdhc24n
dCB0aGUgY2FzZSBhZnRlciBhbGwuDQoNClRoYW5rcyBmb3Igc3BvdHRpbmcgdGhpcyENCg0KLU1p
a2EtIA0KPiANCj4gSXQncyBhICJjb2RlIHNtZWxsIi4gSXQncyBzdXNwaWNpb3VzIGV2ZW4gaWYg
aXQgaXNuJ3QgYnJva2VuLg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPg0KPiA+PiA+
ICsJCQkJCSAgIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlKSB7
DQo+ID4+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50
ZWxfZHApOw0KPiA+PiA+ICsJaW50IHBzcl9zZXR1cF90aW1lID0gZHJtX2RwX3Bzcl9zZXR1cF90
aW1lKGludGVsX2RwLT5wc3JfZHBjZCk7DQo+ID4+ID4gKwl1OCBlbnRyeV9zZXR1cF9mcmFtZXMg
PSAwOw0KPiA+ICAgICAgICAgXl4NCj4gPiAuLi4gYW5kIHRoYXQuDQo+IA0KPiAtLQ0KPiBKYW5p
IE5pa3VsYSwgSW50ZWwNCg==
