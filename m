Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D0587A76F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 13:15:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FBEE10F794;
	Wed, 13 Mar 2024 12:15:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IpkjOEU+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2FC010F794
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 12:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710332120; x=1741868120;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0IzuaxjwazJyDf3fzp74e0cyQNgbgZsyx9Q/4tK4xn4=;
 b=IpkjOEU+RBSGELJ5U/mSMcJAEybaoWl3Ek/CKbL8LBaVp9eMxMis9+UA
 /d3W/kpEd77VyuuB/Aeyg2mbyl8A/+CfGNmbXkwPd/lsSDVuHEc2Vrlgt
 ERJF5G2GxY1eMqsdPlOpVajcVqtuPb8m02+8t7e400pMx7S17aaSva756
 Adg5ElQvUMM11bSzbFcRkc0ohMdobmXlmPyaI6nqinloqddUD6rInVEXt
 cHXo/R3vHNMfXaLSzCE+ydhA/MGmw02pVRrVpc+2j9j94Od3ODSjannr8
 CLH4FupYeRpSnaBjQkkEsiB41fQKhGpc6eFV//niswrsN6Z2IEYDwj1D0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4955815"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="4955815"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 05:15:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11785215"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 05:15:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:15:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 05:15:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 05:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8rOP8UD0zdpEILGFUDq/5jElC+3piGf1dY9FjUbIWsRXAxI8fVAN1y40HYZWS6EgiDOojp1LqfH49A+InHUdPHiCo0fuCRFW0R+lCIfxMEny/7lpbO4LBsG2YBckp0vLosU+2loMdi9Q5FQ2EIA3uuW6j0zIFGDqMVmND1adsModHYO0VxPJYc51KRHhCSFEsV72Zp3zNyab73ybwgyyApkwtdn2AoSA/RvENM+JAuNkLjs5ws0uf0vDsIXeftBTBd8GqbRNbbfkYPLX5Lu6iHMZfrQg2RbHkAj+7eGPqG9m5Uzp8AP9aL8ckEjgSfkVbDMjEsGUx1BpsVVljEa9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0IzuaxjwazJyDf3fzp74e0cyQNgbgZsyx9Q/4tK4xn4=;
 b=blREmjLNSEofcjW711hlImpygYJVVW84TUV3it41hVtRyL2Fq/2l/0zodpiQh48747RL61Do62dCm+cTZE2ZtLwfd3BArba7wmUqi/e646FqPdFxzUEQVt8Azr4R8DbYQC1SZZH45JLIPfk2HDemWa6cBXCmJQMbtvwVQ8z5p4iCKhqeJyW85pnsWIJ3KGyvJSS8rZ4IGs4FwNeJLhiFA7aMEvxqr6gasNit66EbSEeVfrQGR04ILeE9V4OP00+TrKOO+o+Dca3v87zMa89tHjEC59KtlbmTkOLUhzbUQqD4tCBe1QKXqZ7ERgrdElKccecyHk9k92gRIQTFn0TrCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6403.namprd11.prod.outlook.com (2603:10b6:510:1f9::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.18; Wed, 13 Mar 2024 12:15:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 12:15:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Thread-Topic: [PATCH v3 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Thread-Index: AQHab7NyucTdL/2DlEK1E1k2ipp1SrE1kAAAgAAQzQA=
Date: Wed, 13 Mar 2024 12:15:15 +0000
Message-ID: <fd3adebcc45dc28e4a31c401ee932aa19a248584.camel@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-6-jouni.hogander@intel.com>
 <PH7PR11MB5981C3C4C13015B5E5692DBCF92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981C3C4C13015B5E5692DBCF92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6403:EE_
x-ms-office365-filtering-correlation-id: 584751cc-45b2-4177-643b-08dc43573d83
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tGfYNyakam2RoCYYoYe+wI0IJDp7sZvS7ncECvCpI6w3EnC8MZ0MfHx0XV0DFyEEv9F5wC8SSH5ds4MvgldSOnvBgNQHfEQ5J5RbDt1PBuCuYsKfp7AQTJkR1OsuAF9wRViZVMSYFY/KddJLOpjLTj/KKHEX9WdUu1AJjjeukvE2a7sbKFUfUgrrO/bgkZhuNpGhvGlXfFUI3SFDixUayL9j6jnmZOGWTK53+CCHe30WZbpjkLtJumKhldzuVodoDbHZ4+/9iLXD/Os2a3V+70OFHCZuz/B9IvHazpSU9qLt8pHk+fcxOutWbPfFTjdg7ig4ySnoFRKHayqHveC5fJRPARb6WtpUc/YBv5K4ygkoTzBOWGeBk7a+1NBSPgWR/ZH4/LORUD+pzqm2ZkQ353UoLD/gdaE+PPiiEEMyQ3R2/ky6Be5r8IdjAvGqHfF8zpchSLnFsGtK8b86Q2Mdr49BYYQZIuXLd3BWhvhSiutkZwqIK0sh6qOLUcCNVTrE3uetGg8a3SV8YkqXRW49oEVrkBs64I3Tx+vdmAfOmp/HdEyxCKJQOt/AR8AYyOCgBfalHagGNlAl3uIcUJcihVnZbX9l6MN412GwlxR7GzPY94llqOA1s0toR3yIwcedPLGWUAHiEHMcyvhoK6pS9O4NeynPyY1kxBLWLcqTinh8o9F2KLAQHXq1wllWxm78nddpYLp9c3d0SHp2AZfdRsPpNU3HcUd9CPr3Uf5ndJc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjFSZEdDYWxkSjFUVHBxTmRQcy9YNkFZOE5KbEp2elFtNlBLTVJQR1d0cVhU?=
 =?utf-8?B?Y1UxTUowL2t6eWtCbXNrc010N3ZvTEdrdWFqWWdhdktIMXg3RGFKeDlnNkpR?=
 =?utf-8?B?bWNPS01ZR1Fld1RmeElFT0tDclpLOGJBbUFJSzBTSzFEK0xXcnRtSHcrKzB0?=
 =?utf-8?B?VU9ZWGxXN0hKSjRyNWRsbWdiVWVRbFdPTjBOOUwzM0VXR1pjWnFud25RSVlO?=
 =?utf-8?B?MWN1Z2lRWGdEUnF6Q2dRWVZLbkFmQU5zdkpDN0tiUUxoU1Fia0pnbVAzT24v?=
 =?utf-8?B?Vzkvc2pFbDRrVzZ0L01kcmdIQzZrOFVkOHpFQlRrZEZRL0h3QTdYOHl1MExO?=
 =?utf-8?B?bE5Xdk82dWxrMVZidEJ0RjIrYTZyUWpGOGtoZ1NrdlBHWGl4aGp6MDd3UmlS?=
 =?utf-8?B?bFBYNTBZaDhwa0E3Z2dNdS93Vm1UUXZRWXJTWGVvV2VVY2g2NjhkaktvWFQv?=
 =?utf-8?B?WHpwc1lBTmNqM05NaFlIK1U5MmdpZk9GV3ZhaW05bWJHcyt3SlFoTktuMTRU?=
 =?utf-8?B?Z2hlQlZ6dklQd0tBYmVOQitEOW54MkFhMitPSzVzQ2FxamsvZlJiM3RuKzNL?=
 =?utf-8?B?SlZSRVVkZkc0QVE1Vzk3UUN1QitiZU5LREoxR0h0Uy9RdG1MM3BqMU5zYUtr?=
 =?utf-8?B?R3pnOE5mZEttT2pBM1JpNlZFY2t2WE5kRFhiaVN0bm14ekQ4NThCQmNFTFNl?=
 =?utf-8?B?WDlibWJsRHVObStFVDFZS3ZVVTJHZzhKT05KVVExVXVud3pacWtYZHlMTFph?=
 =?utf-8?B?dWdlZVQxY0F4VTRrRzJTb2lEQm5rb1RNd3d1TzBSM3M3M1BheEtSVWxzeWtS?=
 =?utf-8?B?RHlpK1BneGRQeVVtV2lUcDJLaUhPYjlEeVRnTlhqQnB3S2VIZlRoT1hTUzlq?=
 =?utf-8?B?US8rUE1oa1J6RFh3cWR2TjVIQm5ZcDJlZEhRdGtmUGxmTlhrNmt1TFpGMjJN?=
 =?utf-8?B?VGRoemNoanNJdWR0Q2RrcFRBckd4SThZYU5KcTZEK3YreGR6Tk1RNVBMSWZX?=
 =?utf-8?B?aDN0TjhZTVlnS09pN2VWN2NiSzM1dVdYMC9Ba1FHSjc1TWJQMUtEZGp3OVgz?=
 =?utf-8?B?ZlByUWhnMUZnWnJRcUFGWm11dk5CTk5zU2hkS3VOTjd6MEtSZjVWNXc4Umo3?=
 =?utf-8?B?UGE1eGlJWHdqbThwMW04VDhyN0Roc2lvVGFHMkNYQVlheGl6RzBLVVR5SHV0?=
 =?utf-8?B?b0F0eXkrV2Z1Tzlld0JmR2IxWHhBcDRtUDVYbk1LNUUxOXFXeTVraWdaYVdR?=
 =?utf-8?B?ei9MSEtmYXpsam85dE96R2R3aGV0OW85d2ZrS3E4eWVsUlFmWXNVVTkyUW9v?=
 =?utf-8?B?c2U4RmIyQnl2dlNWVGlKT1MrcXh2RzYzZFN5NmFPOW5yY29NNzZiZ0RpdWty?=
 =?utf-8?B?K1pJZjBva3phdDl6S2Rpb09tTE5TQTh6a1ZFMVEvZllIMThENUN5OVNyUjd3?=
 =?utf-8?B?TUkwcWxYL3NxSXo2bDQrMkZqR2RtVGsxNFRaNkh0NU5nWXh3aXJ6em00bFh3?=
 =?utf-8?B?T21UUHRvRXR3dVJyOFA2UXlBek9yNzBycFo0VDl6dUJuSS9hNmZJQnU2NCtP?=
 =?utf-8?B?RWJybjNtVTBNRi9BNFRpM2xqR0hmTklma0ovckxtV1hJcjROdDIyYXVuL3oy?=
 =?utf-8?B?RFdpaEU1elR0N3BwZHZGSWd0NUxhZU9ZeUxKMnFRM3hRcGhvWEN6YmxuYUdt?=
 =?utf-8?B?VG05R0JtREtaUTVHZ3ltSUYvMHV2T0hReVRvZmdTeFBtdjA4NTlVYWE5VXpM?=
 =?utf-8?B?S0tQdkJkaFFvYS9RUHY1VndydnN2akRySFZUWHFoMFpLRXVpOWdyWFNBK0Nv?=
 =?utf-8?B?RXltUVFoQmFHUTZ1UHJNWXNXV3pLZWpJblMxVzdCNlBUa0MwMGRvVkJqRjhN?=
 =?utf-8?B?bEoxOHk1RlF3ZXhveUYyOU5VTFZhN1J2K2xnUkY1Q1ZQUmFzdC9PYXFRNEZP?=
 =?utf-8?B?N1VIaEF6NGNXUDloZmZqZkh6OFl4aktuT2V4MUZzckRPL3VMcm5JSi8vQURF?=
 =?utf-8?B?Ui9ScmlSQ2hLQ1VUTWFmc2FGeXBNYWhXdGVNNFNDOW9IdU5qMXBmRHJQVURt?=
 =?utf-8?B?NnF0OXFONFF3SlFENnlIb0tZZHhpNk1oWkxIaVZsaW02QU9GWGZ2cUFmeDk3?=
 =?utf-8?B?TmRtNkFndUZ3SlZXdE1wam9DQkVTdlBiNjBpNmIyZFJiSzUwejRWSDZKb2p5?=
 =?utf-8?B?WEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1A43224C56400E4AAC12B281C9F91586@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 584751cc-45b2-4177-643b-08dc43573d83
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 12:15:15.2753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: btSXDbsoDh3ua9Lrg+ckQVJwXTeuu3kWSIhseLMtPLvhda2/NbNoIBcPp2BcFq3NBO3P3gIuUf0ChcSBk1Z5BhVzigH/YIi2DwoKaKg8izc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6403
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

T24gV2VkLCAyMDI0LTAzLTEzIGF0IDExOjE1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFNlbnQ6IFdlZG5lc2RheSwgTWFy
Y2ggNiwgMjAyNCA0OjE1IFBNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
OyBNYW5uYSwgQW5pbWVzaAo+ID4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgTXVydGh5LCBB
cnVuIFIKPiA+IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47Cj4gPiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MyA1LzZdIGRy
bS9pOTE1L3BzcjogRW5hYmxlIEFMUE0gZm9yIGVEUCBQYW5lbAo+ID4gcmVwbGF5Cj4gPiAKPiA+
IEVuYWJsZSBBTFBNIEFVWC1MZXNzIGZvciBQYW5lbCBSZXBsYXkgZURQLiBBbHNvIHdyaXRlIGFs
bAo+ID4gY2FsY3VsYXRlZCBBVVgtCj4gPiBMZXNzIGNvbmZpZ3VyYXRpb24gdmFsdWVzIGFjY29y
ZGluZ2x5Lgo+ID4gCj4gPiBCc3BlYzogNzE0NzcKPiA+IAo+ID4gdjM6Cj4gPiDCoCAtIGRvIG5v
dCB1c2UgYWxwbV9jdGwgYXMgdW5pbml0aWFsaXplZCB2YXJpYWJsZQo+ID4gdjI6Cj4gPiDCoCAt
IGRvIG5vdCBzZXQgQVVYLVdha2UgcmVsYXRlZCBiaXRzIGZvciBBVVgtTGVzcyBjYXNlCj4gPiDC
oCAtIGRyb3Agc3dpdGNoIHRvIGFjdGl2ZSBsYXRlbmN5Cj4gPiDCoCAtIGFkZCBTTEVFUF9IT0xE
X1RJTUVfNTBfU1lNQk9MUwo+ID4gwqAgLSBhZGQgUE9SVF9BTFBNX0NUTF9NQVhfUEhZX1NXSU5H
X0hPTEQKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYyB8IDQyCj4gPiArKysrKysrKysrKysrKysrKysrKystLS0KPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGluZGV4IDczOGVh
NjIzYTM5NS4uNGNkMmJhZDUyNDFmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTE2OTcsMTQgKzE2OTcsMzkgQEAgc3RhdGljIHZvaWQg
bG5sX2FscG1fY29uZmlndXJlKHN0cnVjdAo+ID4gaW50ZWxfZHAKPiA+ICppbnRlbF9kcCkKPiA+
IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90
b19pOTE1KGludGVsX2RwKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBlbnVtIHRyYW5zY29kZXIgY3B1
X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7Cj4gPiArwqDCoMKgwqDC
oMKgwqB1MzIgYWxwbV9jdGw7Cj4gPiAKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpIDwgMjApCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybjsKPiA+IAo+ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIEFM
UE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgQUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX0VOQUJMRSB8Cj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEFMUE1fQ1RMX0FMUE1f
RU5UUllfQ0hFQ0socHNyLQo+ID4gPiBhbHBtX3BhcmFtZXRlcnMuY2hlY2tfZW50cnlfbGluZXMp
IHwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQUxQTV9D
VExfRVhURU5ERURfRkFTVF9XQUtFX1RJTUUocHNyLQo+ID4gPiBhbHBtX3BhcmFtZXRlcnMuZmFz
dF93YWtlX2xpbmVzKSk7Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5wYW5l
bF9yZXBsYXlfZW5hYmxlZCAmJgo+ID4gaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgewo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFscG1fY3RsID0gQUxQTV9DVExfQUxQTV9F
TkFCTEUgfAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBBTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSB8Cj4gPiArCj4gPiDCoMKgwqDCoMKgwqDC
oMKgQUxQTV9DVExfQVVYX0xFU1NfU0xFRVBfSE9MRF9USU1FXzUwX1NZTUJPTFM7Cj4gPiArCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
Cj4gPiBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBPUlRfQUxQTV9DVExf
QUxQTV9BVVhfTEVTU19FTkFCTEUgfAo+IAo+IEdvb2QgdG8gYWRkIGNvZGUtY29tbWVudHMgd2h5
IGF1eC1sZXNzIGFscG0gaXMgZW5hYmxlZCB3aXRob3V0Cj4gY2hlY2tpbmcgcGFuZWwgY2FwYWJp
bGl0eS4KPiAKPiBTYW1lIGZvciBiZWxvdyB3aGVyZXZlciB3ZSBhcmUgc2V0dGluZyBiaXQgZm9y
IGF1eC1sZXNzIGFscG0uCgpPaywgSSB3aWxsIGFkZCB0aGVzZSBjb21tZW50cy4KCkJSLAoKSm91
bmkgSMO2Z2FuZGVyCj4gCj4gUmVnYXJkcywKPiBBbmltZXNoCj4gwqAKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiBQT1JU
X0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdfU0VUVVAoMTUpIHwKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBPUlRfQUxQTV9DVExf
TUFYX1BIWV9TV0lOR19IT0xEKDApCj4gPiB8Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQT1JUX0FMUE1fQ1RMX1NJTEVOQ0Vf
UEVSSU9EKAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBzci0KPiA+ID4gYWxwbV9wYXJhbWV0ZXJz
LnNpbGVuY2VfcGVyaW9kX3N5bV9jbG9ja3MpKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwKPiA+IFBPUlRfQUxQTV9MRlBT
X0NUTChjcHVfdHJhbnNjb2RlciksCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNf
Q1lDTEVfQ09VTlQoMTApIHwKPiA+ICsKPiA+IFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX0hBTEZf
Q1lDTEVfRFVSQVRJT04oCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHNyLQo+ID4gPiBhbHBtX3Bh
cmFtZXRlcnMubGZwc19oYWxmX2N5Y2xlX251bV9vZl9zeW1zKSB8Cj4gPiArCj4gPiBQT1JUX0FM
UE1fTEZQU19DVExfRklSU1RfTEZQU19IQUxGX0NZQ0xFX0RVUkFUSU9OKAo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHBzci0KPiA+ID4gYWxwbV9wYXJhbWV0ZXJzLmxmcHNfaGFsZl9jeWNsZV9udW1f
b2Zfc3ltcykgfAo+ID4gKwo+ID4gUE9SVF9BTFBNX0xGUFNfQ1RMX0xBU1RfTEZQU19IQUxGX0NZ
Q0xFX0RVUkFUSU9OKAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBzci0KPiA+ID4gYWxwbV9wYXJh
bWV0ZXJzLmxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltcykpOwo+ID4gK8KgwqDCoMKgwqDCoMKg
fSBlbHNlIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhbHBtX2N0bCA9IEFM
UE1fQ1RMX0VYVEVOREVEX0ZBU1RfV0FLRV9FTkFCTEUgfAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBBTFBNX0NUTF9FWFRFTkRFRF9GQVNUX1dBS0Vf
VElNRShwc3ItCj4gPiA+IGFscG1fcGFyYW1ldGVycy5mYXN0X3dha2VfbGluZXMpOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgfQo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgYWxwbV9jdGwgfD0KPiA+ICtB
TFBNX0NUTF9BTFBNX0VOVFJZX0NIRUNLKHBzci0KPiA+ID4gYWxwbV9wYXJhbWV0ZXJzLmNoZWNr
X2VudHJ5X2xpbmVzKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRlKGRl
dl9wcml2LCBBTFBNX0NUTChjcHVfdHJhbnNjb2RlciksCj4gPiBhbHBtX2N0bCk7Cj4gPiDCoH0K
PiA+IAo+ID4gwqBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLCBAQAo+ID4gLTE5NzUsNgo+ID4gKzIwMDAsMTUgQEAgc3RhdGljIHZv
aWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcAo+ID4gKmludGVsX2Rw
KQo+ID4gCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfc25wc19waHlfdXBkYXRlX3Bzcl9wb3dl
cl9zdGF0ZShkZXZfcHJpdiwgcGh5LAo+ID4gZmFsc2UpOwo+ID4gCj4gPiArwqDCoMKgwqDCoMKg
wqBpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCAmJgo+ID4gaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSkgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2RlX3JtdyhkZXZfcHJpdiwgQUxQTV9DVEwoY3B1X3RyYW5zY29kZXIpLAo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBTFBNX0NU
TF9BTFBNX0VOQUJMRSB8Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIEFMUE1fQ1RMX0FMUE1fQVVYX0xFU1NfRU5BQkxFLCAwKTsKPiA+
ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGV2X3By
aXYsCj4gPiBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUE9SVF9BTFBNX0NUTF9B
TFBNX0FVWF9MRVNTX0VOQUJMRSwKPiA+IDApOwo+ID4gK8KgwqDCoMKgwqDCoMKgfQo+ID4gKwo+
ID4gwqDCoMKgwqDCoMKgwqDCoC8qIERpc2FibGUgUFNSIG9uIFNpbmsgKi8KPiA+IMKgwqDCoMKg
wqDCoMKgwqBkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FTl9DRkcs
IDApOwo+ID4gCj4gPiAtLQo+ID4gMi4zNC4xCj4gCgo=
