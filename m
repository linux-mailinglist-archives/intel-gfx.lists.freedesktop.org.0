Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0203C7BFA33
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7090910E342;
	Tue, 10 Oct 2023 11:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C6810E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938461; x=1728474461;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GNLkTH2vybxzBdQZc9AhIwdlpHycao0Yq9owFCTCBAE=;
 b=hfLmKreqIZ9LBjYNQ8/H8ZXlbeCnhwYx9FVlged5kmbIGZhbQ4/sBZmo
 n7o4C8pc/eDeRojtsWV88wfsstQZbKL5k3OVjz9Vp+jfEKuMjlqQiEXaZ
 UAoltTOZh/wdF2V7OjEIITDUqLG8P/n+gY4MHQERB4juiUv/25nynVIFG
 U4PdCwIKzHLUUF88VkKWlyDgjkDGf6n93/psgA8AK/6c2kjVcUfzA5AcN
 lJmrzx1UblcPdPfIvAL0NUTvTXdNi9Yj+8JR+iohHECe53m4bd0VGPHno
 6hpmfRgYfxTJ90+mSS8t8hTLSsucDX3wrizirBwnPRpCZST5zjAq4dOxr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384226988"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="384226988"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:47:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="782857799"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="782857799"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 04:47:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:47:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 04:47:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 04:47:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nN6IREy2n+1TdL7rLvY6jwfFREZDiWa592zzT/fc9FIm0/aXfSqxej2RkfTiMtnjdfNuZ1vbrIwdFlVRjuYx2LF27Xn0/WJtxyGBBr0K/FYR1fQ/Fyl8YffjUKebvw95jrPnsttK1xbcaEPKkiWPnkWHcAK3Oy76AyXmZBHgwrINR+s77GQPlw0jUFONjlPkgK80D5VrhKaQJ/oy/odgzzAZIkUQhytO+GWcghSMgJ21OJw2o9+CADVn1u4DXKpv8/UZOE5V+gJlFmyJdjOKGigg7wlEPgHtvBbxB/1hk36FBckss2QTTejUHFTTPuwXvYpZjnU+Ur6nyMlDllvvzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GNLkTH2vybxzBdQZc9AhIwdlpHycao0Yq9owFCTCBAE=;
 b=agRAmTJmpWmcbKBu2naL1iJAS5dFfvKqgBauWOwt9+tTO2VIIzaW5qVGOcDXLXUNrmD6+NFpayiCbCcl+zF6PJbPWcsHuHsf8l5IXHXos8Ne6V6sqyF7KC446wYA7pGXjTBFkAfdACpw7VX9wTr/IuDs0bro3hIMFbA9dLrzyPozCHexlEc+Zm/ayGysWHVSA4LpWzdocUVW5LInvh5++jspBLvdCGN0o9U+RURyZkNxF+3/FPFtDGEmF6tzwpRHwfEgDuckEtG0kuL/L7+iAgfjVNCgEqveKFpTtkqNLIU9d5mv2GR2gPdC/GhHhOTJGDHtkER6iMhSQCLS2AQSCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7299.namprd11.prod.outlook.com (2603:10b6:610:14b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.37; Tue, 10 Oct
 2023 11:47:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 11:47:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/lnl: Remove watchdog timers for PSR
Thread-Index: AQHZ+2BXfwCmEmTBq065xkgsh+2ByrBC6FgA
Date: Tue, 10 Oct 2023 11:47:32 +0000
Message-ID: <0c5e4f36610ec932ed700646bb4bce6e77b151de.camel@intel.com>
References: <20231010095233.590613-1-mika.kahola@intel.com>
In-Reply-To: <20231010095233.590613-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7299:EE_
x-ms-office365-filtering-correlation-id: d635ed3c-8798-4fde-fd09-08dbc986b03f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rIJozbyN5JIOh/1QHnvpHE99+tf4xdSG+hLtYYXyGPCLDeC4I1zrc4oOR2Z8F67eMgy6g/SRL7YjuhOKjzGhGGj+rZeD6dbV/dvtpI3c2pJftjpvwD8THHUfPWS6NYPqPcmcPbsYVjqc+9KkiYBTMk52Z639jZJeImHx14jfKbxrHwOco7QnzGgbrW+PrGS6FEun3Lhx9smYVmn5pV5DgCGCQZnzi6nvV2DC/rd11mNbw1VVjLTdxAPuVtoEEr2zA0d0XhmwEWZxqiRZ85wDHR6Nyg6R91hfPDiIkeNh0tGVIdULkHkha5ZS9zUYdIsdH+CdG9JFgEKsBW4mkz/bfoiHbLxMglHT7i31N4LHbVhaUtjgKYrh5g5/fQfeUprjBQ0sgOnn997k7z/EZab+4HeWA8MoYQ6+B83ShIWzKlpG1z+DEtFk0KPrECqq+1Hb51M7exEQiovbLsSup0IMSRJb1+DFqtC8aw+rIvGaN2do0dX9VQjlXCn/MOhCC/jA7sknnePBgcBE7QU6UgwKcvXRr7EY68nG3cToN4T7rnXYK0Uq/kAYXvsWfdkhp54K5pmxvDbp+5rgWXkq42IG3vu38QZPdcNt1vVVDcKYpNg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(39860400002)(396003)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(2616005)(26005)(71200400001)(82960400001)(86362001)(38100700002)(38070700005)(36756003)(122000001)(83380400001)(4326008)(4001150100001)(6512007)(2906002)(8676002)(66574015)(478600001)(66946007)(6506007)(41300700001)(6486002)(66446008)(5660300002)(76116006)(64756008)(8936002)(316002)(91956017)(66476007)(66556008)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVNtaUdLV2NOZGlNUEJ4VENhNGdiQ3pXMFFPUzgyVnlaOGIyczFjOFdzRytk?=
 =?utf-8?B?anJMT3pkQ0tMWERZZlU5NGlVS0tHMXZiSEIzQ1VFd1N5NDVPaXlqWnNqSFVO?=
 =?utf-8?B?TDV5L2ZBY044T01hZ1NGYVZ5dWsxeHVTaFF6VGtKSkh5d2lPVU1jeHZKWDBv?=
 =?utf-8?B?ODlCSTVHaTBNU1YzajJ0ZnpZaFd1V2tIbXBoR09oaEhwdGd2M3NpMU9NSzBh?=
 =?utf-8?B?Y1FuNTZVNXRzLzFweG9GUEtwZ0Y4U2hjenJrUGlJUlRzV2hpSUVIZzVCZWZU?=
 =?utf-8?B?Q0M5alN5Y2ZuTFJ2a2s0ak5STUdRYUdocXZKOWdDcFE0dk4vV3liTlBTWG9F?=
 =?utf-8?B?ODQ0VWNndGkrdVhPR2diL2VJRTl2ZEhPUVd2VG9GeGJzb1V5NUJTRFI5NGEv?=
 =?utf-8?B?S2RRY0JvMkpXTTl0NndiQUpHR240S1ZzVTJYeUZKVzB3Sk9xMVMycGJXZ2ky?=
 =?utf-8?B?dm5GeXhqc0pqWmMzMVM3dGxkM1RzN0w2eGVqNmtGTEN5R3BNRXBxVVFEOE5n?=
 =?utf-8?B?YzJQQ3pjZzFFSWhvS21BMUJTSVJkakNRdnhtTjhBeSt4a0lHSlRFQWhsMWxP?=
 =?utf-8?B?NFVkamZpYnpTY0dyU1NrRHVqL3lxNWhReFB3bHdURVVHRjlGYkJTTlZUeTRY?=
 =?utf-8?B?bGlSaGVHdkluVVpRS013ZEFMQXFldnRCTDBTRGZXK1NFazNyamhYRDk5ZzJZ?=
 =?utf-8?B?Y29RVXgxTHc3ZDl0SnF1ZzVQYXRBZDF3VGFCUWNmeDVKMy9EdDZGeWNDTWpT?=
 =?utf-8?B?dnAzc2RoZmM3Y1B3MmhLSUJlbjJ0NXJ3bXFrRzZTcEdQSEJJL2t6MHVEQkp6?=
 =?utf-8?B?ZXpKR2lId2RjWEYvdTh2d2pza0FnbGVwWXlibG9TYUNmc3hmZkx6VmhxRncw?=
 =?utf-8?B?Z0dGaUl5eHZqaGJlaGhMaStQTWFSTXlXVkJocnh3cXozSTVadXdGcitybXRh?=
 =?utf-8?B?QTd1UWRnTzBSb1RubXFxeTlSYUp3QXFGMjNYdjhaM0s5RTRFdGFzL2RtcHlm?=
 =?utf-8?B?WFZ2TmgvT2x1NkFpb3h4TzBPVXd3Y3dLa0NNZ3F5cXJUZG83elBzTm5pdDcy?=
 =?utf-8?B?S3d1ODEyT0VZak5NdkhPZXpnTDIva2ZTR2ZDU1JyVkRSeUxrVGFzUGNqYmRV?=
 =?utf-8?B?MlMraVlWRG1nK082ZXdzY2xUclZoNEJTMmw4NUhHQnN5UlRFRlF4RjNXSHBx?=
 =?utf-8?B?aHRIdTZIdGVUM3FDYWh5THVqa0NvT0lIMXdVY2crRllzdTN0ODJTT1M4VkIx?=
 =?utf-8?B?ZmMzUlJTTXFzVnBpenZqRFNPTzlpOTREekUrNUNGeG9QOXR0c0hMVVVqZ3lr?=
 =?utf-8?B?WWlVRGJLMjM5Y2wwcEIwWnVLUXpyWVg2emliMXBoUGd0bW9CWFdXMDhDdU9B?=
 =?utf-8?B?SjNnQnVTbXJpUDEzVjV2NmpqQlFqTUhacUhrak5URCt0d3h5L3lYTmh1aW5u?=
 =?utf-8?B?U3pQVG9ZaWRQNDdtOE9mTlpwYjlQWVRhTXhUbFN0ajlkaGRkOXdRQmxRdWtQ?=
 =?utf-8?B?NUpJUWVIdW9sRmlVZEhnSnVvUVZKem52Q2lMMzF4Zng5NW5ib0toczhjZkx1?=
 =?utf-8?B?Q3F5aTB3WkdaZ1MreFZVVThPZnFseVZZSjFlTm4wWFNHZTg4UndzMERpL0pH?=
 =?utf-8?B?QjViUWZmS2NSUGFiL3dnU2w5U3F4dXdDbG13MlQ0SnpEZDM5N2pQMmtIK2Jh?=
 =?utf-8?B?NFFMOXJwL0p3MW5qMmd6S2dJYk5EMEZPV1BuZ215NFJEUFVUZkF3a3l6UjRy?=
 =?utf-8?B?NlFsdlpkN0tNQ05jeFdSYTM5RXYyc2ZvQ0djd0dpeE81cVdNWkFCNkVaTW5V?=
 =?utf-8?B?cFpDdXVlb2tONlJ3SU9RZHE1WkUvRWhVUTR5Sm40OUJmcFE0MFYvbXUvNHN4?=
 =?utf-8?B?cjVHWVd5QkIzWmdHVDdFRzU1YWlIeUF3YjcyZGgvaGhKUXVneml1WWRoNjR5?=
 =?utf-8?B?cGN5NWtMeXFja0k0WStaS0dFeS9JSjBOYmJyVllrVXpoOGQ2V2RxeFhNa3Q1?=
 =?utf-8?B?NytZbSt3THE3SUh4WmVFQmplN2VQN3A5S3F6NFpoVXhoLzZ5UTc1NDZQbUVy?=
 =?utf-8?B?NjBiVU5DRTd2NUpWQXBqN2hkVXByVVMxTnFIRk1EMzlJOXgvUThCSnB3Qm9r?=
 =?utf-8?B?eTBDeVBiQXZneUxxSVhRcVkyWnpmRW5QOVFRcUM5d3ZYZ2Rzc2MwY1VmK1dY?=
 =?utf-8?B?dUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7D1F66327FB5C842891EDFA265AB6EEF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d635ed3c-8798-4fde-fd09-08dbc986b03f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 11:47:32.2596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sm6cEt6tojfhvGgFesNxWXEoppefVB0WIyXpRUrTKrbGhaJsFk4H7g0zcMHhES+ZtO2he/Nm9lVCAiFzDI2hZ9dV/9zYBl4Br2nbQXu8akc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/lnl: Remove watchdog timers for
 PSR
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

T24gVHVlLCAyMDIzLTEwLTEwIGF0IDEyOjUyICswMzAwLCBNaWthIEthaG9sYSB3cm90ZToKPiBX
YXRjaGRvcmcgdGltZXJzIGZvciBMdW5hcmxha2UgSFcgd2VyZSByZW1vdmVkIGZvciBQU1IvUFNS
Mgo+IFRoZSBwYXRjaCByZW1vdmVzIHRoZSB1c2Ugb2YgdGhlc2UgdGltZXJzIGZyb20gdGhlIGRy
aXZlciBjb2RlLgo+IAo+IEJTcGVjOiA2OTg5NQo+IAo+IHYyOiBSZXdvcmQgY29tbWl0IG1lc3Nh
Z2UgKFZpbGxlKQo+IMKgwqDCoCBEcm9wIEhQRCBtYXNrIGZyb20gTE5MIChWaWxsZSkKPiDCoMKg
wqAgUmV2aXNlIG1hc2tpbmcgbG9naWMgKEpvdW5pKQo+IHYzOiBSZXZpc2UgY29tbWl0IG1lc3Nh
Z2UgKFZpbGxlKQo+IMKgwqDCoCBSZXZlcnQgSFBEIG1hc2sgcmVtb3ZhbCBhcyBpcnJlbGV2YW50
IGZvciB0aGlzIHBhdGNoIChWaWxsZSkKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPgoKQ29uc2lkZXIgZml4aW5nIHR5cG8gYWJvdmUgKHdhdGNo
ZG9yZykgYmVmb3JlIG1lcmdpbmc6CgpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+Cgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDEwICsrKysrKystLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCBiYjY1ODgxZTg3Y2MuLjRmMWYzMWZjOTUyOSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC02NzYsNyAr
Njc2LDkgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0IGludGVsX2RwCj4g
KmludGVsX2RwKQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoHZhbCB8PQo+IEVEUF9QU1JfSURMRV9G
UkFNRVMocHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMoaW50ZWxfZHApKTsKPiDCoAo+IC3CoMKgwqDC
oMKgwqDCoHZhbCB8PSBFRFBfUFNSX01BWF9TTEVFUF9USU1FKG1heF9zbGVlcF90aW1lKTsKPiAr
wqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjApCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfUFNSX01BWF9TTEVFUF9USU1FKG1heF9z
bGVlcF90aW1lKTsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChJU19IQVNXRUxMKGRldl9wcml2
KSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfUFNSX01JTl9M
SU5LX0VOVFJZX1RJTUVfOF9MSU5FUzsKPiDCoAo+IEBAIC0xNDAwLDggKzE0MDIsMTAgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0Cj4gaW50ZWxfZHAgKmludGVs
X2RwLAo+IMKgwqDCoMKgwqDCoMKgwqAgKi8KPiDCoMKgwqDCoMKgwqDCoMKgbWFzayA9IEVEUF9Q
U1JfREVCVUdfTUFTS19NRU1VUCB8Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBf
UFNSX0RFQlVHX01BU0tfSFBEIHwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRURQX1BT
Ul9ERUJVR19NQVNLX0xQU1AgfAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBfUFNS
X0RFQlVHX01BU0tfTUFYX1NMRUVQOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBf
UFNSX0RFQlVHX01BU0tfTFBTUDsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVS
KGRldl9wcml2KSA8IDIwKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXNrIHw9
IEVEUF9QU1JfREVCVUdfTUFTS19NQVhfU0xFRVA7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgLyoK
PiDCoMKgwqDCoMKgwqDCoMKgICogTm8gc2VwYXJhdGUgcGlwZSByZWcgd3JpdGUgbWFzayBvbiBo
c3cvYmR3LCBzbyBoYXZlIHRvCj4gdW5tYXNrIGFsbAoK
