Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DC2828615
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 13:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E90910E41B;
	Tue,  9 Jan 2024 12:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C26E10E41B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 12:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704803639; x=1736339639;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6pkXkpOSYEsXhKLfNgQF7wpbdRozSREDLdqfywuLENc=;
 b=CUwf+hfmFtAjtiP8d1niBqgCWE/9ufpFyrVOD+kKIB97iGFMogXSwkCx
 fEgqhlCLCDJGTimtKyGI6OMvf/FLzeeISuOPOBze8prz+WKXOBASbKVv2
 FZ56Aa5mSWRTqcWgUCga/yoneR+ghw+q30WKvYp7/qLQWNtb87wZvPMzm
 lWloEQCR1jcRXwyWJ2HW7ENpQX6UQm0PH7f8rpM50dtf1jA7ui9XUjS8Y
 yr101TlI62xVivv56CQ2+XM/IkSyGrOqRACJtAfFZNJmM5Bl+/bbcJ0BS
 +V9CjKtxxqSYvoeS2K+8kn1nQWuc32Kd5lPzP2+6wyTnE9fN8f0pqZ7nL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="4959974"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; 
   d="scan'208";a="4959974"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 04:33:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="23872148"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2024 04:33:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 04:33:57 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Jan 2024 04:33:57 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Jan 2024 04:33:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FftQ+IZUwpwLoAxCg2FqDzG3C4LgauwuQyCGoR9YVGi/FvCFJW7TcmtetdWLcjCbr4uW3WjR/grhKpfnyJWvHKmoSgVwPYQb6biWnAPGapy+XgVx2zKJp+11u9Tmx/QuSeOCbKuF7O2BcrXch1nUcgdD9StXOVV2BqwjxAQOV/y7S6sIPold+e1K+DDfvcsZTyVUsineqsFoUgJc8aNHeJOWmo2RvsUMr5p9ZF4fNU/UfaYHFBwk0fD5HbMXU5qtOCU6NzNu/xl1TNYTTw7JbRXVYD2+psiGWLvkh6Cs0AmC+Xmu69Bwdo39mWWwe0YyIZZ2B/iUCz11RWoo6RuaDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6pkXkpOSYEsXhKLfNgQF7wpbdRozSREDLdqfywuLENc=;
 b=IGKroz4Cy7uc3wm8LU8eWm7RKAduWQiLRGcurKuNa7s79K2jZgA5RQsj2Ex7sDF10HU1lvhpLCsdKHF9JXLJfnAk8xo81mW7KnvSR2YrlG0FMXJ95b+GPJKMrNQdZeyO8On2PYUFmXZ+Sv5+k5+FPG9B/Plhy/BueDr4wdo8sO10o0R20BW+09ZTQwr8whNj32XvTpjwTca2goki1X2dOu/WFDAP+li6ox4XxHXcaYvTcwIbcgq/gyj060ifuTwAd82DWtIIXv3M8T9U75Gq30ktORe4D4X70VK6dT1vF67QbsF9k7SHbI/iyB3tkW+m1vrAW0vzaXbbQ58HZPcrMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Tue, 9 Jan
 2024 12:33:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 12:33:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/7] drm/i915/psr: Calculate and configure CUR_POS_ERLY_TPT
Thread-Topic: [PATCH 4/7] drm/i915/psr: Calculate and configure
 CUR_POS_ERLY_TPT
Thread-Index: AQHaMeBjWVkTJIgQm0CrVFEYX0xwO7DRjFfw
Date: Tue, 9 Jan 2024 12:33:55 +0000
Message-ID: <MW4PR11MB705431A00DD1FEFD9A373825EF6A2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
 <20231218175004.52875-5-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB8740:EE_
x-ms-office365-filtering-correlation-id: aae0e443-8bd6-4e6f-ca13-08dc110f3e8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tU1vunashm8q311BmHjrrcdBmN0FsY5VhZR5uwdV20s9RrqG15LSETwoS1lYJLx/YuN5/16UAAwqWSGtRhChBLlP/f7yiA8O+0U5iZK0jnhCUnsNvIjUA3nkzDSzeSad+8K6YQtb7B5aN92l+V6v9+tY32je3hrFK3zP9AcdBq1h7A+vkVPwoqdYBAWCr69Q8tGSYFX/0u7g2ez/5kp9wQGsf6JCmMbJWvuf4aoayfiEzCn83nvz+8ChOiLIAtgw4C893yzxG52fECRppp1mTCV+FHwBx8QBNGS4FleCuYEIVwmjQvQ1S88Md51gcLL0X/5zvQA8IoAnnuyZ6+L3Stv3N35k5HkJQ4+jU2O59l2inna0TVE8QXoGSMg3fvvZ3b2OuyjdmBcCsBGYglc7L3Bnqzqlrer8oxqFxAeGvP4M0kx0Muo45sYETLoBhaKDzpDNnn+63CZaO1/HvmzwDUrgyQT7IVwZVoiwaTr6PtM6TOaIyDxRFkhiFfWUufY+x5YZi4ClvSnuM9TPOG86gt5MswNQx6C3yefjBn6T3gkRN4hdBXU0LoSNsruFr0HkNO6KjQF49sLe+a/fUKPjClKTv3gdjLPVGNYR5AhxbTVhbZTAHpUELx8QVLHpJOND
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(366004)(376002)(39860400002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(9686003)(53546011)(6506007)(8676002)(8936002)(82960400001)(38070700009)(83380400001)(66574015)(33656002)(26005)(38100700002)(122000001)(41300700001)(5660300002)(86362001)(2906002)(52536014)(76116006)(66946007)(66556008)(66476007)(71200400001)(66446008)(64756008)(55016003)(478600001)(7696005)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1NyZVU4NWFGbnZKb3JXOEsrYTVVdjczbi8vZWtoRS9JKzRFVkpZYjljOURo?=
 =?utf-8?B?WERCR2lhSkw1SElRbE14a0tjOUlzLzJ1eElQNTQ5ZExCL0g0d2ZNZkRTN0U1?=
 =?utf-8?B?SEkzRVVRdnoyMWNZRUMxUGRTendJRWZqaDIwQ04vTi81eEE0dVd5WTdRcjJw?=
 =?utf-8?B?N2hIeEMwbTZlRWhtODNsS1JnV2pjazFLc1VYNmtEQ1VBRzZ2cEpkc2NWVkpp?=
 =?utf-8?B?TGRwa0l3S05DSGJkSDBDOElUZnVITjlLUkFPUnkwbHdCcTZkRFFYd2VKMFJC?=
 =?utf-8?B?eWdOOHErdC9RRGxTdDlVY1RuL0FnY3BhbmNvT1lsVm5SUmFUNnJ0dHVqMzlh?=
 =?utf-8?B?OUJXakhJYU1SNlVhUEowSjRMbVJYNjgzTzlOTUZIRFQ2VjhwNDJnOE1OYlNh?=
 =?utf-8?B?UXVQbGtvb0d6ODlFWmxhUDdiTDd2Q2lUN0RRS0lCQytqbzd0Q0R2dWhPcEVl?=
 =?utf-8?B?VFJoQmFIUm40Nis1QTBaS0NtM0VqN2tZdDFBeFNtcUk4bVpyMFFmVzk0VXAr?=
 =?utf-8?B?RkNMaDZUU2Q5cXpUM2dUNHlzcXlrNjNOUS8zM0lLQUp1cEVaTUgxTDdUckg5?=
 =?utf-8?B?THBMazlsdUJBYUtrVm5TY2UwWlBkTldlS2x5NHVBNUYrTk9FZFVmNUN4SWU3?=
 =?utf-8?B?WTA4aGx2UERIWTArL0l1ajdqSnQrNjM5dzJUUVlJUjVMMis4SmNnTGhHYU9G?=
 =?utf-8?B?c1hzMVFESlBIaWJZM3BYeG9PNkNaazhKUkwzN0tuMlpXSXk2REVmSk15M1pp?=
 =?utf-8?B?cW1sbS9MNGErTExkWEdtcXRkVHU4ZjdRaU1vQkhPRUtscE5HMEMycUhiQitE?=
 =?utf-8?B?OHM3MXJhR0FjeTJIMVpZTE5wSDU0SVVIK0FVWDBWbWZ4MjdxUmpJYjRiamdH?=
 =?utf-8?B?Lys2blkyTjR1azhqNExwc0dPRUFON0d6bEFsUFhONXlqU3UxUkNXdUhHWGF6?=
 =?utf-8?B?dUxPUjFDTzZWSndFc1RDMi81a0s5Yk5qLzJvNW9JSFQvMVhSNG8xV2FrQ1hU?=
 =?utf-8?B?WlpjS0Z4RUtJT2NDT25HazlnMFJDeEcyM0xwWU50N0JFWkV3MUs4eUN4bFJY?=
 =?utf-8?B?Q2d5aW1qeFh6V0xIdFdHWURuUHpwL1FJSEhiRnc1SFlHdWd4b0V5T0tmM2VI?=
 =?utf-8?B?Q0lJaWV3RUFzOU0vMXF0ZjVRMXNPK1lqYXZjOEw2WEJQbWFway9KcjJYakNU?=
 =?utf-8?B?TEFnZXQ1Tmo0V0lUbEw3dGtHVXpkNHJhckpDYnh5UGJLVkNLaERqWUdjdnBK?=
 =?utf-8?B?RS9RQURsU0t3R2I4THRsZURhajVwODIrY0ZWSzY5b0xvUDhmd1B0U1ZmTVY0?=
 =?utf-8?B?WURVT2VBcUUxOUJjODI2RWc1bmMycTR0L3lHN3VycWFDTHdMa2lkbndOUXF5?=
 =?utf-8?B?akFEYUNOQ1lyV0d5NStoUzU5UjFkdk9VbnRLTEhpMXMySkYyRUVSVEZETGxi?=
 =?utf-8?B?Y3ZMemI3VC83V0k4eDgycGhzN05XN3BIVXhGb1gxallFL0M1alQ1NWxTSTE1?=
 =?utf-8?B?RVdUVjhXNkxMVHEwRVpOMThWS09CKytCd3lJQmRpQ1JpdWNMbkRPRTA0VmYz?=
 =?utf-8?B?RU1JNjhNZTFkUTFWeHdPejM2OVh0Vm9BS0xCTWNBVCtJTjZiek5rRkRySU1p?=
 =?utf-8?B?NU95cmVveFprYlY3VkJkUlBxdkYwdGhUaTFSZUdGY3VXZFZaOWJLNDl6NUMv?=
 =?utf-8?B?dnZRUFE5UXJmbmlveVpFNThObEZjTXNkN0UxZTlONEJsUWcxcVRacW9NWllP?=
 =?utf-8?B?WURaZUFTT0Y2SldiampIZnpyaVpyVEtuZVFxQmJkdGRHemYwNTg2NjNDamFy?=
 =?utf-8?B?VVkycjlvclZrQnphY2FmNkEvQzhXd2VzV1d0M1k2MDZMVk9xMjZFQVdOS29k?=
 =?utf-8?B?Kys5Wk9GYmxYT3ZBNUdqZDdmN0R6RWRReU0zc09JWExSTDdseUN2RmdUaW5V?=
 =?utf-8?B?R1NXbW40R0FseWkwVVdFOXRKbUd1cVdRMVQ2dnN2TkhGc0dkam9kY3g5dUxD?=
 =?utf-8?B?LzJTVmVYYThlUE9mMVZ0OGg1cGdxaDAvQ1A4bHUwNlNSY3BsSmJ4NytHZXlK?=
 =?utf-8?B?SWFJSFI4YVhMaU1JcldxVkhvWG1sM202aDRPU3FMc2FUK1JjTkZBU203UDMx?=
 =?utf-8?Q?9u8Ys31TLQZePv+hwO4IZNr01?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aae0e443-8bd6-4e6f-ca13-08dc110f3e8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2024 12:33:55.1334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iERpeUqQjIqqdDXW11VFMrHARcxFVdIe16zzh6aV5W62236VEOsVMEw89mvlPyERIVKefro7Q0CAe3NJQYSpPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8740
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDE4LCAyMDIzIDc6NTAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDQvN10gZHJt
L2k5MTUvcHNyOiBDYWxjdWxhdGUgYW5kIGNvbmZpZ3VyZSBDVVJfUE9TX0VSTFlfVFBUDQo+IA0K
PiBOZXcgcmVnaXN0ZXIgQ1VSX1BPU19FUkxZX1RQVCByZWxhdGVkIHRvIGVhcmx5IHRyYW5zcG9y
dCBpcyBzdXBwb3NlZCB0byBiZSBjb25maWd1cmVkIHdoZW4gZWFybHkgdHJhbnNwb3J0IGlzIGlu
IHVzZS4NCj4gDQo+IFRoaXMgcmVnaXN0ZXIgaXMgdXNlZCB0byBjb25maWd1cmUgY3Vyc29yIHZl
cnRpY2FsIHBvc3Rpb24gZnJvbSBiZWdpbm5pbmcgb2Ygc2VsZWN0aXZlIHVwZGF0ZSBhcmVhLg0K
PiANCj4gQnNwZWM6IDY4OTI3DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N1cnNvci5jIHwgMzIgKysrKysrKysrKysrKysrKy0tLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgIDIgKysNCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBpbmRleCA5MjZlMmRl
MDBlYjUuLmVjZmY5MGUyMzNmMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N1cnNvci5jDQo+IEBAIC00NywxMiArNDcsMjMgQEAgc3RhdGljIHUzMiBpbnRl
bF9jdXJzb3JfYmFzZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
KQ0KPiAgCXJldHVybiBiYXNlICsgcGxhbmVfc3RhdGUtPnZpZXcuY29sb3JfcGxhbmVbMF0ub2Zm
c2V0Ow0KPiAgfQ0KPiANCj4gLXN0YXRpYyB1MzIgaW50ZWxfY3Vyc29yX3Bvc2l0aW9uKGNvbnN0
IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ICtzdGF0aWMgdTMyIGlu
dGVsX2N1cnNvcl9wb3NpdGlvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gKwkJCQkgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSwNCj4gKwkJCQkgYm9vbCBlYXJseV90cHQpDQo+ICB7DQo+ICAJaW50IHggPSBwbGFuZV9zdGF0
ZS0+dWFwaS5kc3QueDE7DQo+ICAJaW50IHkgPSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+
ICAJdTMyIHBvcyA9IDA7DQo+IA0KPiArCS8qDQo+ICsJICogRm9ybXVsYSBmcm9tIEJzcGVjOg0K
PiArCSAqIE1BWCgtMSAqIDxDdXJzb3IgdmVydGljYWwgc2l6ZSBmcm9tIENVUl9DVEwgYmFzZSBv
biBjdXJzb3IgbW9kZQ0KPiArCSAqIHNlbGVjdCBzZXR0aW5nPiArIDEsIENVUl9QT1MgWSBQb3Np
dGlvbiAtIFVwZGF0ZSByZWdpb24gWSBwb3NpdGlvbg0KPiArCSAqLw0KPiArCWlmIChlYXJseV90
cHQpDQo+ICsJCXkgPSBtYXgoLTEgKiBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBp
LmRzdCkgKyAxLA0KPiArCQkJeSAtIGNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MSk7DQo+ICsN
Cj4gIAlpZiAoeCA8IDApIHsNCj4gIAkJcG9zIHw9IENVUlNPUl9QT1NfWF9TSUdOOw0KPiAgCQl4
ID0gLXg7DQo+IEBAIC0yNzQsNyArMjg1LDcgQEAgc3RhdGljIHZvaWQgaTg0NV9jdXJzb3JfdXBk
YXRlX2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQlzaXplID0gQ1VSU09SX0hF
SUdIVChoZWlnaHQpIHwgQ1VSU09SX1dJRFRIKHdpZHRoKTsNCj4gDQo+ICAJCWJhc2UgPSBpbnRl
bF9jdXJzb3JfYmFzZShwbGFuZV9zdGF0ZSk7DQo+IC0JCXBvcyA9IGludGVsX2N1cnNvcl9wb3Np
dGlvbihwbGFuZV9zdGF0ZSk7DQo+ICsJCXBvcyA9IGludGVsX2N1cnNvcl9wb3NpdGlvbihjcnRj
X3N0YXRlLCBwbGFuZV9zdGF0ZSwgZmFsc2UpOw0KPiAgCX0NCj4gDQo+ICAJLyogT24gdGhlc2Ug
Y2hpcHNldHMgd2UgY2FuIG9ubHkgbW9kaWZ5IHRoZSBiYXNlL3NpemUvc3RyaWRlIEBAIC01MDMs
MTcgKzUxNCwyNCBAQCBzdGF0aWMgdm9pZA0KPiBpOXh4X2N1cnNvcl91cGRhdGVfc2VsX2ZldGNo
X2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJCQkgICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkJCQkgICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpICB7DQo+IC0Jc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7DQo+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOw0KPiAg
CWVudW0gcGlwZSBwaXBlID0gcGxhbmUtPnBpcGU7DQo+IA0KPiAgCWlmICghY3J0Y19zdGF0ZS0+
ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWlmIChkcm1fcmVj
dF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhKSA+IDApDQo+IC0JCWlu
dGVsX2RlX3dyaXRlX2Z3KGk5MTUsIFBMQU5FX1NFTF9GRVRDSF9DVEwocGlwZSwgcGxhbmUtPmlk
KSwNCj4gKwlpZiAoZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hf
YXJlYSkgPiAwKSB7DQo+ICsJCWlmIChjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25f
ZXQpIHsNCj4gKwkJCXUzMiB2YWwgPSBpbnRlbF9jdXJzb3JfcG9zaXRpb24oY3J0Y19zdGF0ZSwg
cGxhbmVfc3RhdGUsDQo+ICsJCQkJdHJ1ZSk7DQo+ICsJCQlpbnRlbF9kZV93cml0ZV9mdyhkZXZf
cHJpdiwgQ1VSUE9TX0VSTFlfVFBUKHBpcGUpLCB2YWwpOw0KPiArCQl9DQo+ICsNCj4gKwkJaW50
ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9DVEwocGlwZSwgcGxhbmUt
PmlkKSwNCj4gIAkJCQkgIHBsYW5lX3N0YXRlLT5jdGwpOw0KPiAtCWVsc2UNCj4gKwl9IGVsc2Ug
ew0KPiAgCQlpOXh4X2N1cnNvcl9kaXNhYmxlX3NlbF9mZXRjaF9hcm0ocGxhbmUsIGNydGNfc3Rh
dGUpOw0KPiArCX0NCj4gIH0NCj4gDQo+ICAvKiBUT0RPOiBzcGxpdCBpbnRvIG5vYXJtK2FybSBw
YWlyICovDQo+IEBAIC01MzYsNyArNTU0LDcgQEAgc3RhdGljIHZvaWQgaTl4eF9jdXJzb3JfdXBk
YXRlX2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJZmJjX2N0bCA9IENVUl9G
QkNfRU4gfCBDVVJfRkJDX0hFSUdIVChoZWlnaHQgLSAxKTsNCj4gDQo+ICAJCWJhc2UgPSBpbnRl
bF9jdXJzb3JfYmFzZShwbGFuZV9zdGF0ZSk7DQo+IC0JCXBvcyA9IGludGVsX2N1cnNvcl9wb3Np
dGlvbihwbGFuZV9zdGF0ZSk7DQo+ICsJCXBvcyA9IGludGVsX2N1cnNvcl9wb3NpdGlvbihjcnRj
X3N0YXRlLCBwbGFuZV9zdGF0ZSwgZmFsc2UpOw0KPiAgCX0NCj4gDQo+ICAJLyoNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGluZGV4IDI3ZGM5MDNmMDU1My4uZDZmN2U2OGJhMzA4IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTMwNTksNiArMzA1OSw3IEBADQo+ICAjZGVm
aW5lICAgTUNVUlNPUl9NT0RFXzY0X0FSR0JfQVgJKDB4MjAgfCBNQ1VSU09SX01PREVfNjRfMzJC
X0FYKQ0KPiAgI2RlZmluZSBfQ1VSQUJBU0UJCTB4NzAwODQNCj4gICNkZWZpbmUgX0NVUkFQT1MJ
CTB4NzAwODgNCj4gKyNkZWZpbmUgX0NVUkFQT1NfRVJMWV9UUFQJMHg3MDA4Yw0KPiAgI2RlZmlu
ZSAgIENVUlNPUl9QT1NfWV9TSUdOCQlSRUdfQklUKDMxKQ0KPiAgI2RlZmluZSAgIENVUlNPUl9Q
T1NfWV9NQVNLCQlSRUdfR0VOTUFTSygzMCwgMTYpDQo+ICAjZGVmaW5lICAgQ1VSU09SX1BPU19Z
KHkpCQlSRUdfRklFTERfUFJFUChDVVJTT1JfUE9TX1lfTUFTSywgKHkpKQ0KPiBAQCAtMzA4Nyw2
ICszMDg4LDcgQEANCj4gICNkZWZpbmUgQ1VSQ05UUihwaXBlKSBfTU1JT19DVVJTT1IyKHBpcGUs
IF9DVVJBQ05UUikgICNkZWZpbmUgQ1VSQkFTRShwaXBlKSBfTU1JT19DVVJTT1IyKHBpcGUsIF9D
VVJBQkFTRSkNCj4gI2RlZmluZSBDVVJQT1MocGlwZSkgX01NSU9fQ1VSU09SMihwaXBlLCBfQ1VS
QVBPUykNCj4gKyNkZWZpbmUgQ1VSUE9TX0VSTFlfVFBUKHBpcGUpIF9NTUlPX0NVUlNPUjIocGlw
ZSwgX0NVUkFQT1NfRVJMWV9UUFQpDQo+ICAjZGVmaW5lIENVUlNJWkUocGlwZSkgX01NSU9fQ1VS
U09SMihwaXBlLCBfQ1VSQVNJWkUpICAjZGVmaW5lIENVUl9GQkNfQ1RMKHBpcGUpIF9NTUlPX0NV
UlNPUjIocGlwZSwNCj4gX0NVUl9GQkNfQ1RMX0EpICAjZGVmaW5lIENVUl9DSElDS0VOKHBpcGUp
IF9NTUlPX0NVUlNPUjIocGlwZSwgX0NVUl9DSElDS0VOX0EpDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
