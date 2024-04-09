Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F011589D5B0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 11:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6614E10EF02;
	Tue,  9 Apr 2024 09:38:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+ZqY/BM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68EE410EF02
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 09:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712655504; x=1744191504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oLfQ+MpzOm1ArIX9p5s1S30FUtmQLB4J9O/yjLK0nHc=;
 b=R+ZqY/BMlTwiVyKLHr0O+wMJPGjVzW3DV8Dz2mJjnFqCY9hJXH4uBulV
 dIPPr/WWCgUzHB3NgMscooW+XHL3a/LXGQANl4sTYl2C2qxq5xxxmOfYI
 JsqdbDCPCmMQDrUHlie+1o9K0V0/VoPvJOUvayax/P7bqi4gdRDnAm0rV
 kDQIJ0TY2pIRKlpjoY2GQL9OD1+oh9aEKp4Qj2mb5R9AhoyJLwFI8q92l
 o8xW4AzBJi7Edbsy/zcvMnOlNzFR+g3iIfGlvzdEzH2+7unpfthPAdxI6
 d3SU50uLPV6kaz/HfA0ZX44nV0IeD2+lvDyhHHUiM2XP1dKorKRyVtdEo A==;
X-CSE-ConnectionGUID: ZrRYjtpPSIaB2zqKUdmJ7g==
X-CSE-MsgGUID: 8Wzn9pcoQEOysFWvydJOqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="8085766"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; 
   d="scan'208";a="8085766"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 02:38:23 -0700
X-CSE-ConnectionGUID: bEJYZKlgRVugskuzdR0j7A==
X-CSE-MsgGUID: U/yYhzR1Qc+zTCU41BBJAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="20618065"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 02:38:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 02:38:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 02:38:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 02:38:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LfDHAlusMUlmhYw2/PUGPgvxPsP1YKJYAPLJL2jbVNFJ0bxuY+88Cl9aOogdPATIsxG5U4s1v7j1qsspJmLgJPVBaow9eFHIBS/OEhTcQdfR++/9KngZ+CxD3VKBgIasnxoD2MiwZqlMHUySx9jHv5RXxgC2DrScohq4+lfbIKXnncZVFKWPlHgDsrGziJKuHTpGLndfSH9P/vXIy1bam74vfgdCIIfZPXYWbwrYQt8auv57R53V44whfwEcDUlgPrHHXOCz7vCPENL+zPhfpkjRFaabksXKBfrQqoHz1W0hqjdB65KLJbZYoTN9hUE0n0SsIMmDXd1exlv5GV8NDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLfQ+MpzOm1ArIX9p5s1S30FUtmQLB4J9O/yjLK0nHc=;
 b=UgumjU1tzbvGeb3FuPfmqt2YyO3RbxVIVAW+Vd25Kg9NMSxnlFWnNtAc59RNsu1s5i43p9n56kpVG+In2XBGgTYR/c9uRb2DvmCo8MBByA9Rje+77fumqdnUHotMvMeAEa3bTQM5bVVFa7cTnDT1NUG0HHXtOQaaW50Zw2o2VJT861kofKRDonlgmUxvV2J0uEzKben111dyxuVqciZv3Tyt5cgVuoq4dAoQoUPfGFyuy8ruv86qUTG6akBHcRRdPrV06uyqcS0I2JByAqfAVwi+Fvs1QuBV6pkaCgAGW0MFVoVe/h4AM8qcyS5bL1S9LrsLxl/qXzPY0UFxgB74yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH3PR11MB8138.namprd11.prod.outlook.com (2603:10b6:610:158::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Tue, 9 Apr
 2024 09:38:20 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%3]) with mapi id 15.20.7452.019; Tue, 9 Apr 2024
 09:38:20 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Lu, Baolu"
 <baolu.lu@intel.com>
Subject: Re: [PATCH v1 1/1] iommu/vt-d: Fix WARN_ON in iommu probe path
Thread-Topic: [PATCH v1 1/1] iommu/vt-d: Fix WARN_ON in iommu probe path
Thread-Index: AQHaimGC3nhXExrl0ki/D2bvh3nzZrFfrosA
Date: Tue, 9 Apr 2024 09:38:20 +0000
Message-ID: <780e0b51aa795fcd3833678ef79dfad7823ec76a.camel@intel.com>
References: <20240409093645.456004-1-vinod.govindapillai@intel.com>
 <20240409093645.456004-2-vinod.govindapillai@intel.com>
In-Reply-To: <20240409093645.456004-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH3PR11MB8138:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qqQ6ix6sOfla5jqDOEeABLuPhgJaPH9Sf/aaX5iHxSbLVUXn0BK1BGpO2AjyNS00wthamAMCRopbtXLh7CFMdrWBl7tW37iw6G9YS8G6i+93HwWP4hVlAS9Bop30F8dD3Nbcp1OmYWWj2U9l30D9irQKSEPFu/0Fy+9sX5JNmlqnXfrj0ANWDeQoXyoae2+pTyOZ9bYggAhp5XoNNhDCnaJ4xgKpnYH7o3NZZ6yslL5+4QDl3W9vMsnVuTnHI1IvMMZJZ1RipjhhdE06VvdDfXLtiOATPfvBqGYWo4Vz8yheVD2QPr5Bx5LSyvFoQHzXlJGaP+8oslichvKqBHgHAtDX58KCM02JuS+SPIbqjDDhEMkCD8kF/YCRIvRB0IKqANvoWi/oc97uKVOBsO7gWOvwLf/lUU5UUFlyWSl5uF/T7Df7In6KdlgdcOWyg6h5Vark97UqSzCF8TYGsCAVn8nX6AOEhQ+ElBzw0bhFFsa5rk36o50kQb/Xb11jH8bcohbagFtr31nyDZRXz93QRBtUTDeX6uQUNFyvf44Vhm37s5RpQ3J6meECwf2RXMe0nmzKJNlRLAD89nJ7k8tL7RlWoWdUJr9CBgq+ez58a+Uug28v+9zm6JR1e7hAT0PhtQkFSP6fszxptXOlJB7L4tbQmLsZx8zas5kL5TrGpD8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1hLSzl2bHg5TndNMXZhQzloellOT3p2T1FNenVIVWVKQzFaazB5WVJnUjlN?=
 =?utf-8?B?Z1lCanVZbjdRR3VEeVV2OWUwS0c2TzZSeHcrc29lMTJjTU55RlkxRS8yY2xs?=
 =?utf-8?B?U1FaT09DQjcybG4xRHhyUmxEek1GSzN1M1JPQmlDWG1PYnJOdEJBMDgzYUsw?=
 =?utf-8?B?K1NJWVpuRW1oTE9PU1dSS056WFVQNE52Y1N2b2x3RWZUYThDZVJMYU1wdzZy?=
 =?utf-8?B?TGovbXNnRXBSUmRDdEx6WlQycm9iREE1WG9wRkQ0Z0pqKzVwWS84TFVMTmFH?=
 =?utf-8?B?LzE4YzMraFR6V0ExN3MrR0Zua2JvNDdFeEQ5bUFzNzRCYTRiWTdleDJQTEVX?=
 =?utf-8?B?SjdnK3A0RGw4czBIbXlPYzZpcG00Zzc1NDVZY0ZwTnNPdWxINWVMVjVZTmlS?=
 =?utf-8?B?NksrT1FuM05leXY2elVQM1phVVpoY2pBdDJueFR3OUNOMXFtMjVaNHFVSkpM?=
 =?utf-8?B?RzJwZG03RCtGMGxNcEdKdVpNQUVIUEdWYTRLUmlqRUZTSUZGcnQya1FNc3FF?=
 =?utf-8?B?Q0RIYXY0MjhweFJaMFJtZ0VaeW9VZEhsMlp6YWpuTFdISlhlbkZSN1JSdXZH?=
 =?utf-8?B?UWJZY1ZEcGRVN1dzQWhCMUIzMzBqK3NJdVhPNDViL2RES2xCdjN0UkV3Rkt3?=
 =?utf-8?B?cllBK2NtOTc5d2F6S0Z5Yy96TmtiY1JxMm9ncEpHTlpWK1R5Y2lzRWFzdC9k?=
 =?utf-8?B?ZEdmQWhpUkJxUGxSbWMyQXNOMFpqQ2NRVjcyQVNiSnd4ZW14Q1djbDRKZllQ?=
 =?utf-8?B?V1ZRaUIzcEg0STNLNC9mbG5qaFZtREcvSTJJM0xHUEFIaXFvUmRSYlBZOEhP?=
 =?utf-8?B?V0RkcXhkeFVTZkF2SUI1N2dXRzZXS0RDUFd3aDU0QnhWbGdoTitIdCtBTm8y?=
 =?utf-8?B?QUU2SlZ6UC9LY2lTQWdEQkN6MWxsTXUwMnBzNlhpdy8xUTUxNnJ3WktQcXA3?=
 =?utf-8?B?WlNNamlvdG1wNk1vMUo2K1JYc2hBdmprbWRGOFhoZlpBQlpnUzZadTF4d2Ns?=
 =?utf-8?B?bE9jd2lmNUszUTlQNEtqMzFKNkwvVGtPbUo5bWlmQ0NkRXRLaERjQTM5M05N?=
 =?utf-8?B?NlN6bW1NQm9NRVhKc05zd2pCZ2kyTGVQTFhuU1U0dnZuMnZPbTBoTE02K2hP?=
 =?utf-8?B?SHRsc1ViUlhicnpJRTJrUFNKRkZrS1BYSVI4Rkxxd3pXcE9TWmI4enU3ckll?=
 =?utf-8?B?SjBUTUxJMUU0d2lScVFGQmF4NWE1NTlXTWlkOTU4NXViOTYvaURhM1JmQ2Jq?=
 =?utf-8?B?OEpobnliWDhHWjlBbEovVFFCS1h0L241aTZDZ1UzcmVLdEdycE1SSUdDVUJH?=
 =?utf-8?B?UWkrRXhpb1ZndXlpanpSN1ltWTJVMTdpUlpwOW9pUGxyaU9hL1hyNVREZzZU?=
 =?utf-8?B?Q0MvVnphSmRLUmpyR0s0Y2VFVURvSHJzUzYvZ2s0OXg0QlNnL2FmNGdmdHE1?=
 =?utf-8?B?TFBmbTBrUXZVZ0cwSk9iaGdiUXNqaUZ3ZDhhUnVNRGhmMkcyenNJQTlGczBU?=
 =?utf-8?B?bmhCdTlUbGw5Z1QyWXI2SFRvQS9ydEgwaE1zT0RmVEdCenRocmpjakJQZy9Y?=
 =?utf-8?B?a1cyRmJCNm40MWcwVW1wR1J4OXl1UzN3bmtLTm10eWd0NmZyTFE4UGx2bzJS?=
 =?utf-8?B?dlh2YzZlWTUxNWd4dXFSbitHNFdPN3BOZ2owNlFRQzRRdHhHSTdCQTU3dDJX?=
 =?utf-8?B?NTl4WTU3K05kQ3hPUllUZGpaQ2x2djZYYUZWMWp6WHB0TmpOTDhHa2h6b2k3?=
 =?utf-8?B?NXNRejBGMS9iekNtZG80clI2WEptMFNZWFR0N0E1aW9UTGNWT1U1ZFU4Lysy?=
 =?utf-8?B?bHowWmNsdVBmUmVxaUF0TE5ic1l0ZUxFeW5yY0xoSU1tZ3k0NFRWU1RWbHR1?=
 =?utf-8?B?V3NFRVZ6M3BxRzZSVnNoaFV1ZW1ERzFPTUU4ZXNPcFB4RzZFZ2lQNTdad0xl?=
 =?utf-8?B?bWwxUUVOY2VuSko0SmpBSE5CaTFxNndOMXkwdEFreTN1SDdqS1RqdE1ndEdw?=
 =?utf-8?B?eStzRG1Rc3ZCeGk4Rm5ZQlpWOWNzbmxpSXhrU1lkQWE1YVlQVThQMUJCWnB2?=
 =?utf-8?B?cUhsUFE1Y3UyM29NUmtvanAxcXV0djlGRnFDWUdoblRnMTc4L2c1SktmSWNT?=
 =?utf-8?B?Q05rSzJhd3JvQVB5ZXE3b1F3MXQrRVRQYlVURWx3Y3VwNnZTQy96Q0lnRVBU?=
 =?utf-8?Q?5TUYlfO7HIc5TNuIdjCuW20=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D31ACA7E17CAAF4EAF9CA6035A6BD348@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79733026-a939-4b20-93d7-08dc5878cacc
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2024 09:38:20.1397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zx5YN2xhvKLmmWhofF4DbrFUuNv7O28aun/IHB69weWnJUtJkogKhfc7B9saVtMb5+aCTr+Bper2V+EiR2lmz+O8xRmdktSbg4rwWlHNa/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8138
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

K0phbmkNCg0KDQpPbiBUdWUsIDIwMjQtMDQtMDkgYXQgMTI6MzYgKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+IEZyb206IEx1IEJhb2x1IDxiYW9sdS5sdUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBDb21taXQgMWE3NWNjNzEwYjk1ICgiaW9tbXUvdnQtZDogVXNlIHJidHJlZSB0
byB0cmFjayBpb21tdSBwcm9iZWQNCj4gZGV2aWNlcyIpIGFkZHMgYWxsIGRldmljZXMgcHJvYmVk
IGJ5IHRoZSBpb21tdSBkcml2ZXIgaW4gYSByYnRyZWUNCj4gaW5kZXhlZCBieSB0aGUgc291cmNl
IElEIG9mIGVhY2ggZGV2aWNlLiBJdCBhc3N1bWVzIHRoYXQgZWFjaCBkZXZpY2UNCj4gaGFzIGEg
dW5pcXVlIHNvdXJjZSBJRC4gVGhpcyBhc3N1bXB0aW9uIGlzIGluY29ycmVjdCBhbmQgdGhlIFZU
LWQNCj4gc3BlYyBkb2Vzbid0IHN0YXRlIHRoaXMgcmVxdWlyZW1lbnQgZWl0aGVyLg0KPiANCj4g
VGhlIHJlYXNvbiBmb3IgdXNpbmcgYSByYnRyZWUgdG8gdHJhY2sgZGV2aWNlcyBpcyB0byBsb29r
IHVwIHRoZSBkZXZpY2UNCj4gd2l0aCBQQ0kgYnVzIGFuZCBkZXZmdW5jIGluIHRoZSBwYXRocyBv
ZiBoYW5kbGluZyBBVFMgaW52YWxpZGF0aW9uIHRpbWUNCj4gb3V0IGVycm9yIGFuZCB0aGUgUFJJ
IEkvTyBwYWdlIGZhdWx0cy4gQm90aCBhcmUgUENJIEFUUyBmZWF0dXJlIHJlbGF0ZWQuDQo+IA0K
PiBPbmx5IHRyYWNrIHRoZSBkZXZpY2VzIHRoYXQgaGF2ZSBQQ0kgQVRTIGNhcGFiaWxpdGllcyBp
biB0aGUgcmJ0cmVlIHRvDQo+IGF2b2lkIHVubmVjZXNzYXJ5IFdBUk5fT04gaW4gdGhlIGlvbW11
IHByb2JlIHBhdGguIE90aGVyd2lzZSwgb24gc29tZQ0KPiBwbGF0Zm9ybXMgYmVsb3cga2VybmVs
IHNwbGF0IHdpbGwgYmUgZGlzcGxheWVkIGFuZCB0aGUgaW9tbXUgcHJvYmUgcmVzdWx0cw0KPiBp
biBmYWlsdXJlLg0KPiANCj4gwqBXQVJOSU5HOiBDUFU6IDMgUElEOiAxNjYgYXQgZHJpdmVycy9p
b21tdS9pbnRlbC9pb21tdS5jOjE1OCBpbnRlbF9pb21tdV9wcm9iZV9kZXZpY2UrMHgzMTkvMHhk
OTANCj4gwqBDYWxsIFRyYWNlOg0KPiDCoCA8VEFTSz4NCj4gwqAgPyBfX3dhcm4rMHg3ZS8weDE4
MA0KPiDCoCA/IGludGVsX2lvbW11X3Byb2JlX2RldmljZSsweDMxOS8weGQ5MA0KPiDCoCA/IHJl
cG9ydF9idWcrMHgxZjgvMHgyMDANCj4gwqAgPyBoYW5kbGVfYnVnKzB4M2MvMHg3MA0KPiDCoCA/
IGV4Y19pbnZhbGlkX29wKzB4MTgvMHg3MA0KPiDCoCA/IGFzbV9leGNfaW52YWxpZF9vcCsweDFh
LzB4MjANCj4gwqAgPyBpbnRlbF9pb21tdV9wcm9iZV9kZXZpY2UrMHgzMTkvMHhkOTANCj4gwqAg
PyBkZWJ1Z19tdXRleF9pbml0KzB4MzcvMHg1MA0KPiDCoCBfX2lvbW11X3Byb2JlX2RldmljZSsw
eGYyLzB4NGYwDQo+IMKgIGlvbW11X3Byb2JlX2RldmljZSsweDIyLzB4NzANCj4gwqAgaW9tbXVf
YnVzX25vdGlmaWVyKzB4MWUvMHg0MA0KPiDCoCBub3RpZmllcl9jYWxsX2NoYWluKzB4NDYvMHgx
NTANCj4gwqAgYmxvY2tpbmdfbm90aWZpZXJfY2FsbF9jaGFpbisweDQyLzB4NjANCj4gwqAgYnVz
X25vdGlmeSsweDJmLzB4NTANCj4gwqAgZGV2aWNlX2FkZCsweDVlZC8weDdlMA0KPiDCoCBwbGF0
Zm9ybV9kZXZpY2VfYWRkKzB4ZjUvMHgyNDANCj4gwqAgbWZkX2FkZF9kZXZpY2VzKzB4M2Y5LzB4
NTAwDQo+IMKgID8gcHJlZW1wdF9jb3VudF9hZGQrMHg0Yy8weGEwDQo+IMKgID8gdXBfd3JpdGUr
MHhhMi8weDFiMA0KPiDCoCA/IF9fZGVidWdmc19jcmVhdGVfZmlsZSsweGUzLzB4MTUwDQo+IMKg
IGludGVsX2xwc3NfcHJvYmUrMHg0OWYvMHg1YjANCj4gwqAgPyBwY2lfY29uZjFfd3JpdGUrMHhh
My8weGYwDQo+IMKgIGludGVsX2xwc3NfcGNpX3Byb2JlKzB4Y2YvMHgxMTAgW2ludGVsX2xwc3Nf
cGNpXQ0KPiDCoCBwY2lfZGV2aWNlX3Byb2JlKzB4OTUvMHgxMjANCj4gwqAgcmVhbGx5X3Byb2Jl
KzB4ZDkvMHgzNzANCj4gwqAgPyBfX3BmeF9fX2RyaXZlcl9hdHRhY2grMHgxMC8weDEwDQo+IMKg
IF9fZHJpdmVyX3Byb2JlX2RldmljZSsweDczLzB4MTUwDQo+IMKgIGRyaXZlcl9wcm9iZV9kZXZp
Y2UrMHgxOS8weGEwDQo+IMKgIF9fZHJpdmVyX2F0dGFjaCsweGI2LzB4MTgwDQo+IMKgID8gX19w
ZnhfX19kcml2ZXJfYXR0YWNoKzB4MTAvMHgxMA0KPiDCoCBidXNfZm9yX2VhY2hfZGV2KzB4Nzcv
MHhkMA0KPiDCoCBidXNfYWRkX2RyaXZlcisweDExNC8weDIxMA0KPiDCoCBkcml2ZXJfcmVnaXN0
ZXIrMHg1Yi8weDExMA0KPiDCoCA/IF9fcGZ4X2ludGVsX2xwc3NfcGNpX2RyaXZlcl9pbml0KzB4
MTAvMHgxMCBbaW50ZWxfbHBzc19wY2ldDQo+IMKgIGRvX29uZV9pbml0Y2FsbCsweDU3LzB4MmIw
DQo+IMKgID8ga21hbGxvY190cmFjZSsweDIxZS8weDI4MA0KPiDCoCA/IGRvX2luaXRfbW9kdWxl
KzB4MWUvMHgyMTANCj4gwqAgZG9faW5pdF9tb2R1bGUrMHg1Zi8weDIxMA0KPiDCoCBsb2FkX21v
ZHVsZSsweDFkMzcvMHgxZmMwDQo+IMKgID8gaW5pdF9tb2R1bGVfZnJvbV9maWxlKzB4ODYvMHhk
MA0KPiDCoCBpbml0X21vZHVsZV9mcm9tX2ZpbGUrMHg4Ni8weGQwDQo+IMKgIGlkZW1wb3RlbnRf
aW5pdF9tb2R1bGUrMHgxN2MvMHgyMzANCj4gwqAgX194NjRfc3lzX2Zpbml0X21vZHVsZSsweDU2
LzB4YjANCj4gwqAgZG9fc3lzY2FsbF82NCsweDZlLzB4MTQwDQo+IMKgIGVudHJ5X1NZU0NBTExf
NjRfYWZ0ZXJfaHdmcmFtZSsweDcxLzB4NzkNCj4gDQo+IEZpeGVzOiAxYTc1Y2M3MTBiOTUgKCJp
b21tdS92dC1kOiBVc2UgcmJ0cmVlIHRvIHRyYWNrIGlvbW11IHByb2JlZCBkZXZpY2VzIikNCj4g
U2lnbmVkLW9mZi1ieTogTHUgQmFvbHUgPGJhb2x1Lmx1QGxpbnV4LmludGVsLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvaW9tbXUvaW50ZWwvaW9tbXUuYyB8IDExICsrKysr
KystLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmMgYi9kcml2
ZXJzL2lvbW11L2ludGVsL2lvbW11LmMNCj4gaW5kZXggNTBlYjlhZWQ0N2NjLi5hN2VjZDkwMzAz
ZGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvaW9tbXUvaW50ZWwvaW9tbXUuYw0KPiArKysgYi9k
cml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmMNCj4gQEAgLTQyOTksOSArNDI5OSwxMSBAQCBzdGF0
aWMgc3RydWN0IGlvbW11X2RldmljZSAqaW50ZWxfaW9tbXVfcHJvYmVfZGV2aWNlKHN0cnVjdCBk
ZXZpY2UgKmRldikNCj4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDC
oGRldl9pb21tdV9wcml2X3NldChkZXYsIGluZm8pOw0KPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBk
ZXZpY2VfcmJ0cmVlX2luc2VydChpb21tdSwgaW5mbyk7DQo+IC3CoMKgwqDCoMKgwqDCoGlmIChy
ZXQpDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGZyZWU7DQo+ICvCoMKg
wqDCoMKgwqDCoGlmIChwZGV2ICYmIHBjaV9hdHNfc3VwcG9ydGVkKHBkZXYpKSB7DQo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSBkZXZpY2VfcmJ0cmVlX2luc2VydChpb21t
dSwgaW5mbyk7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQ0KPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZnJlZTsN
Cj4gK8KgwqDCoMKgwqDCoMKgfQ0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHNtX3N1cHBv
cnRlZChpb21tdSkgJiYgIWRldl9pc19yZWFsX2RtYV9zdWJkZXZpY2UoZGV2KSkgew0KPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9IGludGVsX3Bhc2lkX2FsbG9jX3RhYmxl
KGRldik7DQo+IEBAIC00MzM2LDcgKzQzMzgsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9pb21tdV9y
ZWxlYXNlX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfaW9tbXUgKmlvbW11ID0gaW5mby0+aW9tbXU7DQo+IMKgDQo+IMKgwqDCoMKgwqDC
oMKgwqBtdXRleF9sb2NrKCZpb21tdS0+aW9wZl9sb2NrKTsNCj4gLcKgwqDCoMKgwqDCoMKgZGV2
aWNlX3JidHJlZV9yZW1vdmUoaW5mbyk7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChkZXZfaXNfcGNp
KGRldikgJiYgcGNpX2F0c19zdXBwb3J0ZWQodG9fcGNpX2RldihkZXYpKSkNCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRldmljZV9yYnRyZWVfcmVtb3ZlKGluZm8pOw0KPiDCoMKg
wqDCoMKgwqDCoMKgbXV0ZXhfdW5sb2NrKCZpb21tdS0+aW9wZl9sb2NrKTsNCj4gwqANCj4gwqDC
oMKgwqDCoMKgwqDCoGlmIChzbV9zdXBwb3J0ZWQoaW9tbXUpICYmICFkZXZfaXNfcmVhbF9kbWFf
c3ViZGV2aWNlKGRldikgJiYNCg0K
