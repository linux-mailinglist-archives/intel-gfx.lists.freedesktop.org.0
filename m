Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B25643B01
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 02:55:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCEE910E033;
	Tue,  6 Dec 2022 01:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F72D10E033
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 01:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670291725; x=1701827725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YJss92nZWQ/cTh/hugVUelS53xlFtB6tzk8tcHtETrE=;
 b=gIDm2/L1EwFOnnzfh16A7AwIWQUteiqHx5tBxwkq32qaNEJPNDT/DZ8S
 sDJO71m/XhalDP/52B0OYvfPPaoUvtoeGTrJldn3jc6gV+xOw349FMAXF
 OF9X2I5d9QyamNFOPw8J/VZ4wp/H6vEhN+E9SejqXjzM0I7m8lCAHJE1a
 wOqWtt+iGLRZ+nBdY8zSjj6KSbpzBm8xG8USti5KBss0tXAVJYNH647So
 ny9lFOfGDXeX4Ztkx55sU7iNpWi3twaLlLOKoYWMwlSxAoZBSZecj616p
 FuQ2K2whiynkFaoV/yaVMT2ViyqBY3iCSMMT3JDDfQJJEhhhlC6016YB/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296202096"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="296202096"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 17:55:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="788305619"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="788305619"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 05 Dec 2022 17:55:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 17:55:23 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 17:55:23 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 17:55:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HjdpZid2zy+zqq7Nba2dTh4HpIVvdpuBaaollJAIRPy4P1dOI4x4NUb6UhwO2jmqDG9hM5jG/EGhxU5Ve3MnI9DdopauKkawW02YevFI474yOsvPd+yUODF35uO5/SJ3ewXTybO+4AYk9V3/sjXg0JR77/Mnb3VQ1ZQwi9qV8WRouyOJvgNRMM5vafV9FmgBD3zpzBzWO5lHjv83spoF7zBntOvJjfSsf0rOrX2re7RFFrq6/pXXQ8ma4zRzfE3eFwrzq4Iea7ObZBqbkkuBIWGT0Jlwio9oBN0vVM6Yjw7KcLz+x9dB9YJVJnlD6aLwySKwclUjUNI4IHjOEtStig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJss92nZWQ/cTh/hugVUelS53xlFtB6tzk8tcHtETrE=;
 b=mOfyy7XV6SCp3Ieo1vxvlpHQz1sNfSn5RQ7rApAebvSR2m0XrUV5Hn/LepRr1ioFvMnJlR7x/3LV+awlxMpTa1fPYGyHN3ZCsHdsOcVHCu05SUVN0+4rlexW2vLEG6x1jJIU/caidZfJNAfe2Jw/UPJirtWQYDnN2k6rQFQ+nsFRC1/BWUtimW3mRWirzWXo1DKhpZK0g/RO6HxRDwRmFApPA5xff/IZ1yh9NnvikIe9oSiUyIGFV/Tcd2AES/rbiSWsY5Xr1WqZLbi/xPAOz8hni9r0ctZ1tqBAcocOgbkk4s6byL5GEwMnZFzlu+ta0Ex7CxFckHSHLqLls133ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5676.namprd11.prod.outlook.com (2603:10b6:510:ea::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 01:55:20 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 01:55:20 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx 4/6] drm/i915/guc: Provide debugfs for
 log relay sub-buf info
Thread-Index: AQHYY+gkuRqM/QiC0Eqz988Lu0KWhK2HDRaAgNpXdYA=
Date: Tue, 6 Dec 2022 01:55:20 +0000
Message-ID: <b271b532775b9f873ec25c12970bad3dd6392364.camel@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <20220509210151.1843173-5-alan.previn.teres.alexis@intel.com>
 <87lesobges.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87lesobges.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5676:EE_
x-ms-office365-filtering-correlation-id: 1e188984-71e7-4515-f0cc-08dad72cee40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G/KUBwFrCXe6XDyok62oLGGXvEfPJC4fnbzIXLzRdNXQBds47vDer52OddxeMjUO4t9qX4zZqFVUG1iXJdbONlL9AZFqkxg0OClJrT3K8g5NaAXjSY3X3icj4t3JIY4JaLtxtRnweNqFZfPWbGfRHg7HV/ix2Kf/cHCo+rBTGOGe5OJw0aSwj1GokOmTnDKTQAkRCcoFMLTE4gfByMjUunYR230JJyMfnkG9GIkYiD0q2uQitIlPwcpaqw17Fo8slo5sCpdm3nk++jRkJh618X9QMGs3X38t6+SwAnvt5XhoylckaI/KdR2YyxgbTT2bSJvzcpstnEaXKzMOgyJY6U6pWrCsvHr+6oo2JUYEcPTjTe5DRzmUjX9YLEgCU4fs2o3YJS6oe2UfAVZLOZewU+XoxVGahaYRbok5OyunbPuPvF2pfPb2THw0GTu68rNDju8mFT3yYWflbYYzTGSSigYyeUMX9YtuYfP20kYHgY4kx7RXH2XQ96Jvk9hDLptiIE23nEieAJDti9BE+yxIUS2OeSGePuCCuDH2/qPdxNKidcEFXLbubuUAN2Ru4IRTLjj9AR5pfnyUPjlXlZNHWb+qA7al4ZiI9xIXVnrbAfSYmYh5O5Peil9fySu8IovDF4Wilyhiib/AUJUmffUrW6iVkujRBl3OE/gRG31uaCks/SLTgY7l2yC4G+n83tXEPnGmTbNtlWCM2D7E5etQvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(376002)(366004)(136003)(451199015)(2906002)(6862004)(8936002)(38100700002)(122000001)(66946007)(66476007)(83380400001)(8676002)(66556008)(66446008)(64756008)(4326008)(76116006)(36756003)(71200400001)(86362001)(186003)(2616005)(91956017)(41300700001)(5660300002)(82960400001)(316002)(26005)(6636002)(37006003)(6506007)(6512007)(6486002)(478600001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWNGeWUwSFVqV3dveEtRTlQwSlZQU2tLM1hpeWd3ak1BdEJOM2V2V29TS1N5?=
 =?utf-8?B?bjNPT2F0SUdCeWlVc1YyZm1vTjAxWi9OamdCSVZPcmw1T2UrVFNvcWhVb003?=
 =?utf-8?B?RTlSTnphNWtDaEZKbUZyZExkY1FNN3ltWlBTdGlzMldFWDg1U2dyVnE1R2lD?=
 =?utf-8?B?dDdVRU5GenluSjk0ZzBKL05NZTNwTkV0cGxuODRCb2Y0UWFYUjJZTW5BVDBl?=
 =?utf-8?B?RnVtY3lhVnBvVmVxQlc4MG1BN3V6Zmk2WWs4Sjk0d2t5ek8rckZPZllwRVFp?=
 =?utf-8?B?Qmk5OWx4RjFYU0ZCcWVlQzJrYVZxUmdndDAyMjA4Vm52NGJ3NFF0M3VnT3py?=
 =?utf-8?B?ZUVlb3ZIcW50UWc4U253SUE4Ky9hNThBWW9vSWo1QWdHa2NzUm1CODdpSUw3?=
 =?utf-8?B?WUcvLzBhTWxRRDFXRmRRVjg0c0NQYTJ6TU81eEU5OHVQY0VXY280aC8wbTFt?=
 =?utf-8?B?OHlMaGsvU3ZZYUZXM1ZNV3FLdkxHSVZSZkZML2VnOHBTcW1PY2FyOEhSeFJq?=
 =?utf-8?B?Qmx1SnhiaUlqVk5Xc1l3Q244MFN0UnBvdjVMZVdvOTNGRUh6WWtFNGEySmxy?=
 =?utf-8?B?ODBkbmJBWUxPZWZuTXRhaWpRZkNxZi9wN2JsYzM2QjVxYnoyWG5mVDE1Zjda?=
 =?utf-8?B?U2NKTEhuNHZZWWJkdEUzUFUwdDZBeFRxL2RFS0IzR3dKenpLUmFtcytzTUR0?=
 =?utf-8?B?ZkdXSC9FOHNBWGRxNGRRVXZSY05wWDBIQTBkOXNrSEdmZXVsV1lHSm5vVnlL?=
 =?utf-8?B?aHpQaExQM3htYlR0SDFuL1VQWkxXOFM4Y2t6TitsQ3Jubml6OWZVa2I4ekFN?=
 =?utf-8?B?VkRHbUNMeTFkaEI2SXZoRXB3QjhWVVUzSnJnT1pCRUZoM09YazNNT1U2dnc0?=
 =?utf-8?B?dUNOSXdwMmVkUkxCSldKYjdpVlN5Ly8rNVFXMTdKMHdyMHl4K2dkQTJ3bk55?=
 =?utf-8?B?bWJVaVFuWHJoZ3JnRUpiejB0TGRNc0JoUlFZZ1VjNm0wSVEyYStXdVJYMFFB?=
 =?utf-8?B?OVNGSHhXemZtZmJZcnlvajBoeFdYZG11TDJ2U0czeTVMY2Z2OHFzUVQrUkgw?=
 =?utf-8?B?RHY4TWlaRFJEQVhHelZESHJnMUJLaW5aNVk3dk0rWWM1NjVjZlptL2xKSVAy?=
 =?utf-8?B?Vkdwd2JpaTkxd3k3bXRNSjYrK0xibVorUzY5S21jOTFzbWczaUplQmp5TTkv?=
 =?utf-8?B?c2p6NEtPcXJrOEU3akhEUUdoV2MrbURJNFEybHB2aEJIQTlwQzJYeEZyQWdN?=
 =?utf-8?B?aTNmVTRZWDVsN3M1Q1FMSVpubnUwUkxSakdiTmFYUHpPczZJZlhWQ2dJTGxh?=
 =?utf-8?B?dlBrRHQzRy9BNTlYWDkxdFNIdTVpM0FucVVoSHJSMHhOMlhCMUtJdGtqelU1?=
 =?utf-8?B?eUtKdWo5NFFnaW1rS0JLU3cwd2lxdUJiUFZuSjF4aHNaOTNCS3NSUWkvM0Mw?=
 =?utf-8?B?MkJCemtUVVBnYUNuRys3MGRzYXRsaHVJUGdNTWVzcVhLNGowaHpOWHlMaDR5?=
 =?utf-8?B?N0RicEttYnA3OW5nRVk2VysvVkcvWFRheWJZMWVuNEVwU2M5M1FnWXc2Q2JN?=
 =?utf-8?B?cUFrTE9zZERCZ1p4cFA0RHc1ZUZHcjBQc21Ja3VVVDhSQ0ZMTmZIM2VaRXpt?=
 =?utf-8?B?Z3hSNE8zR1lob2tpMmE1WEZjNkpFWkcybDRKWlFjVWdBNURGRC9Kd2QzSmlP?=
 =?utf-8?B?bWhweGtHWWEzNVdwKytSMFhnOFBCblFpUUxnL3ZXbE5zajRmL2toVmQ2SWpG?=
 =?utf-8?B?Ni9GeUd6aE5DT0RHb0ZFUzVNZjI3eE5yNW1ydWJlKy9PTG5BYm9pY1h1aTcw?=
 =?utf-8?B?VmxuRGVld1YyVVZ6ZWVwYzFKYlVIVGVST1BaR2xGdkxqZzNxRW91OGE0cjBZ?=
 =?utf-8?B?dnc5NDIySnpnRzlEOXJLb3dadkVxQnp2VU1oT3JGcWNTaTZISi8rZy8rWnJC?=
 =?utf-8?B?SjR2aXBWRzBFSjF5cDN1OFgwa3Vic2VCN3FDaWRudG9GQU9GeUdOTjJ4Y1Ny?=
 =?utf-8?B?a3h1Ui8vU0w3b0JkSTJIZnVpbXpBZGI4NjM4OGFicDFBenFZZFExTFBRSkZX?=
 =?utf-8?B?NDFWTXIzU1JDbjU2MmMxTWlSaU1GMnZ2K0NSNlVIaitXWHgwYngwT2w1Mkh4?=
 =?utf-8?B?bENpNEZCbVpHNEVhQ3M4OVFjSkZ6YmR0WDFscU1tOVIwM1lKVU01WFdkNHZG?=
 =?utf-8?Q?5/axHK/Tpi/bbWOtBisytQA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2F4BB1769A296C42A2CBF842D50948CA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e188984-71e7-4515-f0cc-08dad72cee40
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 01:55:20.1800 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JLlTKj/ToLV4frN0nTy+LH7f75oOO7RvGsUcvK6eY1c1ww1kcQ8Dje/J4tO/WyU2RPSFyXUvdZj6xh7+z10ZGO2wOjpFrIaDfLyWHU3bJw0zqoZUETbw5u7LU6SZ3NyY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 4/6] drm/i915/guc: Provide debugfs for
 log relay sub-buf info
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

SXQncyBiZWVuIGEgd2hpbGUgLSB0cnlpbmcgdG8gcmVzdXJyZWN0IHRoaXMgbm93Lg0KDQoNCg0K
T24gVHVlLCAyMDIyLTA3LTE5IGF0IDIwOjQwIC0wNzAwLCBEaXhpdCwgQXNodXRvc2ggd3JvdGU6
DQo+IE9uIE1vbiwgMDkgTWF5IDIwMjIgMTQ6MDE6NDkgLTA3MDAsIEFsYW4gUHJldmluIHdyb3Rl
Og0KPiA+IA0KPiA+IA0KQWxhbjogW3NuaXBdDQoNCj4gPiArI2RlZmluZSBHVUNfTE9HX1JFTEFZ
X1NVQkJVRl9DT1VOVCA4DQo+ID4gK3UzMiBpbnRlbF9ndWNfbG9nX3JlbGF5X3N1YmJ1Zl9jb3Vu
dChzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKQ0KPiA+ICt7DQo+ID4gKwlyZXR1cm4gR1VDX0xP
R19SRUxBWV9TVUJCVUZfQ09VTlQ7DQo+ID4gK30NCj4gDQo+IHVhcGkgd2lzZSwgaW5zdGVhZCBv
ZiBleHBvc2luZyBndWNfbG9nX3NpemUgYW5kIHN1YmJ1Zl9jb3VudCwgd2h5IG5vdA0KPiBleHBv
c2Ugc3ViYnVmX3NpemUgYW5kIHN1YmJ1Zl9jb3VudD8NCg0KVG8gY29tYmluZSBhZGRyZXNzaW5n
IHlvdXIgcmVxdWVzdCArIGNvbnNpc3RlbmN5IHdpdGggZXhpc3Rpbmcga25vYnMgKGFsbCBvZiB3
aGljaCBhcmUgZGVkaWNhdGVkIGZvciBndWMtcmVsYXktbG9nZ2luZyksDQpJJ2xsIGdvIGFoZWFk
IGFuZCBjaGFuZ2UgaXQgdG8gZ3VjX2xvZ19yZWxheV9zdWJidWZfc2l6ZV9nZXQgYW5kIGd1Y19s
b2dfcmVsYXlfc3ViYnVmX2NvdW50X2dldC4NCj4gDQo+ID4gK3N0YXRpYyBpbnQgZ3VjX2xvZ19y
ZWxheV9idWZfc2l6ZV9nZXQodm9pZCAqZGF0YSwgdTY0ICp2YWwpDQo+ID4gK3sNCj4gPiArCXN0
cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cgPSBkYXRhOw0KPiA+ICsNCj4gPiArCWlmICghbG9nKQ0K
PiA+ICsJCXJldHVybiAtRU5PREVWOw0KPiA+ICsJaWYgKCFsb2ctPnZtYSkNCj4gPiArCQlyZXR1
cm4gLUVOT0RFVjsNCj4gDQo+IFdoeSBhcmUgdGhlc2UgY2hlY2tzIG5lZWRlZD8gSGFzbid0IGxv
ZyBiZWVuIGluaXRpYWxpemVkIGFuZCBhdHRhY2hlZCBhdA0KPiBpbnRlbF9ndF9kZWJ1Z2ZzX3Jl
Z2lzdGVyX2ZpbGVzKCkvZGVidWdmc19jcmVhdGVfZmlsZSgpIHRpbWUgaXRzZWxmPw0KPiANCj4g
QWxzbyBpZiBuZWVkZWQgbGV0J3MgZG86DQo+IA0KPiAJaWYgKCFsb2cgfHwgIWxvZy0+dm1hKQ0K
PiAJCXJldHVybiAtRU5PREVWOw0KPiANCkFsYW46IFlvdSBhcmUgcmlnaHQsIHdlIGRvbid0IHRv
IGNoZWNrIGxvZyBidXQgbWlnaHQgbmVlZCB0byBjaGVjayBsb2ctPnZtYTogaXRzIGJlZW4gYSBs
b25nIHRpbWUgLSBpIGNhbiB2YWd1ZWx5DQpyZW1lbWJlciBidXQgaSByZWNhbGwgc29tZSB3ZWly
ZCBiZWhhdmlvciBpZiB0aGUgdXNlciBzcGFjZSB3YXMgaG9sZGluZyBvbiB0byByZWxheSBsb2dn
aW5nIGhhbmRsZXMgYW5kIHN0aWxsIGNhbGxpbmcgaW4NCndoaWxlIGRyaXZlciBpcyBiZWluZyB1
bmxvYWRlZC4gSSdsbCBoYXZlIHRvIHJldGVzdCB0aGlzIGFuZCBzZWUgaWYgaXRzIHNvbWV0aGlu
ZyB0byBjYXJlIGFib3V0IG9yIGNvbnNpZGVyIGFzIGEgdXNlcg0KZXJyb3IuIEJ1dCBldmVuIHRo
ZXJlLCB3ZSBjYW4gc2hvcnRlbiBpdCB0byBpZighbG9nLT52bWEpIGFzIHRoZSBtaW5pbXVtLiAo
b2YgY291cnNlIGV2ZW4gaWYgdGhlcmUgd2FzIGEgYnVnLCB0aGUNCmRlYnVnZnMgcGF0aCBzaG91
bGQgZXZlbnR1YWxseSBnZXQgcmVsZWFzZWQgYXMgcGFydCBvZiB0aGUgaTkxNSB1bmxvYWQgYnV0
IGp1c3QgYSB0aW55IGJpdCBsYXRlciBhZnRlciB0aGUgZ3VjIHJlc291cmNlcw0KYXJlIGZyZWVk
KS4gU2FtZSBjb21tZW50IGhlcmUgYXBwbGllcyB0byB0d28gbW9yZSBjb21tZW50cyB5b3UgcHJv
dmlkZWQuIE5lZWRzIHRvIGJlIHRlc3RlZC4NCg0KPiANCkFsYW46IFtzbmlwXQ0K
