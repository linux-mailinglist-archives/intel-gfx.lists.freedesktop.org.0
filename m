Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E670160A998
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95DB10E69E;
	Mon, 24 Oct 2022 13:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC2410E69E
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 13:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666617779; x=1698153779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=p5jHXqOERyJpI7+UqdrYIns8Jj+mhNUTIjXedUcYEy0=;
 b=Hw1sbJ84Kf8Y844y9pGYMe4FYnkfIt6aALGdM7oRJpIleZAMD4mrIKc8
 RTX7tqsfRfoVrhx4TkiGCHFtpxpHnvwPfFgSbIv5fzdpOnB5Su3GWFRtm
 gLWohF0SOEPW53qVxHSLH9i3ptAnafX4IYJ6iaG7q7l/obuPukqDDfsB2
 MxErhTUhrowheXLWWBER8nn/BaQ+B9x1hxhuLAmyIu5E0K0+ziEDYkzUJ
 LxIAW6WfbsAzADVXXXxCwB0TrCGHgc9bl0Is0x92KyR85BZXDsbeBIBB6
 bgii0ZGdkGdqU55gxEGRmU32EwmaxmuNhzp7zVu5JKlpP4K6lbI9ZlXso g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="333999496"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="333999496"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 06:22:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="960425723"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="960425723"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 24 Oct 2022 06:22:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 24 Oct 2022 06:22:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 24 Oct 2022 06:22:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 24 Oct 2022 06:22:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 24 Oct 2022 06:22:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KER2aN7B+5jFGCHMpYUqrY3g6tAC1bX+q7qRV/IcpfZsH2k1VxwD1VVpXN3bhC1IInfFKaVT6vWPHBzCr8BwLbfYN4CfzHNhIpxjMxGM7LFqqRMZzlo6fC3at/JjdmnbSdMhqhneBo9Vd38uE7bZtU4Qlapctm1aGg0y+btGoCBFHJ5+54Lq+jVjjq/rRbEXapMMAKybpHJaRS8LQcuoO+6Drqmef+ruqDRvPWhW8HE1UlyygnpwXqg9mO9m8sddupbaJv6v0cuKKxd77uvBH3gVWP0iXB7C0oRBNZmlYcLnXFu7qTBq/0GB74BHkw//hEr6HzRgCuTP94N4Bv7esA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p5jHXqOERyJpI7+UqdrYIns8Jj+mhNUTIjXedUcYEy0=;
 b=ZT+ZIt+W12BHIrnbPwVt0yx4aOC4IRDuGb0oqocpw/10GUUCfzSlQzzXLBm05UmSQlEKIp3ZY81ZqwqKRJIwiXIvokP5JmhXYp39qY0mf8OYA2knC6hGtkETk2zHYsZ9X9UkuvERCGE20YXfFLSpUx8ZqfAO+oEHAZeiWt36dhiyKHKLPCmCCdwmFTesmU48xgp748zy+7orS7fgpVt5t7lQYDtCWSIWU0wHUPW1kvq8/kzttUkf6FZPPUZ7QOjd5b3q1fgIz3WBu816x+0mehUCW3zUiUt8Uo4vvn1yjVuG6e+1lGBaobMfTrZ5Vm38jz/08a4qC/CzYHYyOJrumw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by DM4PR11MB6238.namprd11.prod.outlook.com (2603:10b6:8:a8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Mon, 24 Oct
 2022 13:22:55 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::2da8:4021:a5a6:dc4a]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::2da8:4021:a5a6:dc4a%11]) with mapi id 15.20.5746.026; Mon, 24 Oct
 2022 13:22:55 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Send update also on invalidate
Thread-Index: AQHY52wS/cAV2EDIFUGib3SE795JY64diJmA
Date: Mon, 24 Oct 2022 13:22:55 +0000
Message-ID: <46eeb6bb2f21097ac9c5efd76519a500cd5872b4.camel@intel.com>
References: <20221024054649.31299-1-jouni.hogander@intel.com>
In-Reply-To: <20221024054649.31299-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|DM4PR11MB6238:EE_
x-ms-office365-filtering-correlation-id: 466362ef-fe93-434a-9d89-08dab5c2dc7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zBLcK0A2FORVCumzHFby2F34zk47eUbidH5i5NaQp9L5mCc4FP2ToEah396m/Tyx97TqDdATcKC7tChAmTOW0slDppUjwlLken4oiejXO27b+4eDkeR4haHsGzLnxCFfiBoFqEla54CAVldTrTPe6Atfe+w0prAzPc22HFo7CbCDzYgbqHYb8LENW4zIStYx81qh46LQvsI783+wfAK7/Pg2EDFSOtrNzFCTgMCNQpesVWliwa8qv6qE0CGW17J8VzQFBYWYybkiQWvnWhkuNC2zxvL7VIAHLIsr4GusnelBzXTCHFc1koH5frNSClQa/bfXRYi0U+nAWirZFM0uc13iktvNWpmidd7qOwy7aZv/+5KBz9i1Iuk1EeDnAkTdzCLL+BZGmUPnxxq6EHQO1S/2dG+QREt1BC2oYjrOCY5LbtdXmUIE0juNzL6Fq4eosonpr01rmpPb0J4hgiCIfScFyok5zxh8IPOokEjgGb5131M7bxSklmGVKZM6yLgljyA4KB8JtrY/LX8HwRu7PJ6rStQMW053ainB8PkELSVobojDVAKcxBXJ3WWfClk5I6O4L7BMnPEL7/PRzI4Llic6j2V6wEl5Hq31z9cB/WHnUwVs4VXcZBaTFJORS5goBnDTeNDV7h4Jhs+A6JsP0B8ozK/j4ojV2jEairjFJAiiQJC1NlkLAoP6LPldZwLHn6/2wCbWYzYDXmhR60IYhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(136003)(396003)(366004)(376002)(451199015)(2906002)(66946007)(86362001)(6636002)(38070700005)(66446008)(36756003)(91956017)(122000001)(38100700002)(6512007)(186003)(110136005)(82960400001)(54906003)(8676002)(66556008)(76116006)(5660300002)(71200400001)(64756008)(41300700001)(2616005)(8936002)(4326008)(4001150100001)(26005)(478600001)(15650500001)(83380400001)(316002)(6486002)(66574015)(6506007)(66476007)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akV5MDc1T0JydERUd1VpcnpZZ3RCMDhFbFRqQS82UnJIM09JZDAyUWpRM1FI?=
 =?utf-8?B?amljTVNWSk45UVZ4TUlNekhmR2N5SjYzQ1V4UjA3V0toQkEvY0E1Z0FxODlY?=
 =?utf-8?B?N29zaWp5NExDTURWdnRDRS8wM3BjeCtJaXFpVDV1UnRudmx3MlNBMTQ5OUxl?=
 =?utf-8?B?YmhIb2F0cTFaUUJGS0FWWjFYN2lqT3RHbCtZbDMxODRLYTJVdkFZME9nanI0?=
 =?utf-8?B?SlBxVU1qMjB2aVBjaEs4UXMvdDhqL2FwSXVNTHpvQTloQVlqTFkzMy9MYTRu?=
 =?utf-8?B?R29LTWRzamlOTVBsZjVvdWNPWk1NZ3dWSjM1MzJnTjVLK0djeSs5dlF6eVZM?=
 =?utf-8?B?Tm91VnBRMUp3MVlEc3RnVjlnR3JZU250UXZGYU1GcVlBTW1seDVEUitJY0dI?=
 =?utf-8?B?Y0RZVnJia2loY01nMEs0RWl4Q2V1YTVlV3dud2M5SXFtNkl4cDZ4MitmU0Nu?=
 =?utf-8?B?NHc0OGprMFRTZTJidmxkSEhXRmdwK3FZd0VWTUQrSWd2NTdPRlYzZnRUNU03?=
 =?utf-8?B?WjYzVHNLQ1FnT2YwOHRBRUFEREs5NlR2OE9rZVlFSWNNdEwzNnZSYUM0TVUv?=
 =?utf-8?B?NUpVK1ZCRnhpTDBIcVU4KzRaM3lHY1dXRGtRZDF1eEl3SktILzFvNlpuWDZv?=
 =?utf-8?B?QkZvTStFcXcycmhwWUFzcVVoWmw5YWpMNW5zRWpjMXU3ZFJYNWpUeGRsUmp2?=
 =?utf-8?B?TkVLVnhGaDBxNzdBOUtOVzdxZG9ZcnZxWUp4NDBQK3pMcFpZbE45L1d0dDRC?=
 =?utf-8?B?NVZnN3h5STU2ckhjS21zakZPbzByRElzNk52YW5WZnJXTndtMWExWk9FREl5?=
 =?utf-8?B?U1FlVmFlMXhWNS9VRzB4ZUVSVFdMSEg0eWpwbzFBME4zNldhTU84QU4wdnRx?=
 =?utf-8?B?dW1YSXg3WUJXbXBmSTF1dnVPZHhQR0p5b2x4WGJTWU8vbFZKRUJSU1kwektG?=
 =?utf-8?B?c3JxUUdhdXorZElQQVBOV1lteWVmciswNEswclFMSVZYT2NEd2pZSHN5YXE5?=
 =?utf-8?B?VTZYU0loaDVjVlIwb0hoemhVb3MxbGxob1J5eDhZMXY3REpycWprQ2VMKzVM?=
 =?utf-8?B?U1pNanZvbGJNRDhFUkE4eDBvc0tUdE9BUnNiblRDL08veWllbUFVaWdtV2Fw?=
 =?utf-8?B?OEJuSFVDZ0IrTyszU3dBdFNoWEF6YXdnend2NUV1WDZIRURJb1VKNHNpWkps?=
 =?utf-8?B?bGVkQStzWWtLdHJFR0daQUlTekpZdlZOMC9TMTVaMlZSRy9YaFRvTys4aWg5?=
 =?utf-8?B?Uk04dys2SSt0a1ZBVTdhbFN3bkllc0UrMGJYeHptaDZ5N0x2elJySkxFMSt4?=
 =?utf-8?B?Z0VQYTNBMTVobTBFZWhWcVJQUDNGRjdlZFU1aGVRL2t5RUl2YUpXWEZPdzJr?=
 =?utf-8?B?R2NTTVVoRGdUMmNJeElyS3paU05yMmhBSkR3NVpoQjVvejJzYS9yRzBSbmJv?=
 =?utf-8?B?cDhJa0lUZlVyTm5kS2I4RGdrb0lNRkh5RVBvN29FZ3lZaXVKRHJBSkRWeDNE?=
 =?utf-8?B?YzBXU0VzSE11c21VNnZZVHF3N1BvVG1DY3pXUGlIc2RTbkVVMkxPTDNZak9r?=
 =?utf-8?B?clNFM0tSL2R0S2xpUmZNelNtZ292UHR4aGZMLzlSckFHU3NFL3VMeXJldkk5?=
 =?utf-8?B?Rmd5Zml2Wm96VERVQm45NDV4SER1VitGRUtQWmpiWS95bDZhNEpGcmk4cCtu?=
 =?utf-8?B?MlRtTHZOaXFKdk1PYmxkbTNjNUtxckVVam1Nckh2dWtGTVE2eW8zT09veHRX?=
 =?utf-8?B?dEltK1ZrNU9HS3FtRk96Ti9BWG1kWnc1WU9tT3FqUFFnbXZUaEtOVWRZUjFD?=
 =?utf-8?B?UFpTMkZUUnlBMjNRM2VwY2pwMEo3dnAzRWJaRFB6QlJEM2pFWUhTMC95MTlY?=
 =?utf-8?B?aXBtSHQxcXB3LzVPRXVaZG5hQm5IVDZzODdJNVI5RDgwWnBLZ2MxVlA2RkIy?=
 =?utf-8?B?RFBHSnZGRURJOXFaUFZmQVF5R0tZcDFheWxHUTFzRk9jSlUydWgwOGlrT3FZ?=
 =?utf-8?B?NzFMdXh1VXlLSzRiRVJtVm1jZml2aGh3dmdENXh2TkNHQmd1MmVYejJUdnFr?=
 =?utf-8?B?Nzk5aDRRQnFQdGlCcHVDb05nSVJtVUkyekFUcm9NdTFvZDVKWkdwQ2M5RXNQ?=
 =?utf-8?B?VzZhR21TVkdsMFBxaUZ3dFVmalJxUGVyR3lTNm8wZUNqMFUyYllVL1hWd2xm?=
 =?utf-8?B?amc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9839A27BF0A4A64AAE454AB25759BDD8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 466362ef-fe93-434a-9d89-08dab5c2dc7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 13:22:55.3314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nWaPUVWaC9kLQ+c8BaQrTQz+JNvWGvc5sEqvFB4qL6L5x6fwTmMSSvDS+I33Yvbz0b1AGK4Cl+5Dt2dhPL6u1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6238
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Send update also on invalidate
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
Cc: "brian@tarricone.org" <brian@tarricone.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTEwLTI0IGF0IDA4OjQ2ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSB3ZSBhcmUgb2JzZXJ2aW5nIG1vdXNlIGN1cnNvciBzdHV0dGVyaW5nIHdo
ZW4gdXNpbmcNCj4geHJhbmRyIC0tc2NhbGluZz0xLjJ4MS4yLiBYIHNjYWxpbmcvdHJhbnNmb3Jt
YXRpb24gc2VlbXMgdG8gYmUNCj4gZG9pbmcgZnJvbmJ1ZmZlciByZW5kZXJpbmcuIFdoZW4gbW92
aW5nIG1vdXNlIGN1cnNvciBYIHNlZW1zIHRvDQo+IHBlcmZvcm0gc2V2ZXJhbCBpbnZhbGlkYXRl
cyBhbmQgb25seSBvbmUgRGlydHlGQi4gSS5lLiBpdCBzZWVtcw0KPiB0byBiZSBhc3N1bWluZyB1
cGRhdGVzIGFyZSBzZW50IHRvIHBhbmVsIHdoaWxlIGRyYXdpbmcgaXMgZG9uZS4NCj4gDQo+IEVh
cmxpZXIgd2Ugd2VyZSBkaXNhYmxpbmcgUFNSIGluIGZyb250YnVmZmVyIGludmFsaWRhdGUgY2Fs
bCBiYWNrDQo+ICh3aGVuIGRyYXdpbmcgaW4gWCBzdGFydGVkKS4gUFNSIHdhcyByZS1lbmFibGVk
IGluIGZyb250YnVmZmVyDQo+IGZsdXNoIGNhbGxiYWNrIChkaXJ0eWZiIGlvY3RsKS4gVGhpcyB3
YXMgd29ya2luZyBmaW5lIHdpdGggWA0KPiBzY2FsaW5nL3RyYW5zZm9ybWF0aW9uLiBOb3cgd2Ug
YXJlIGp1c3QgZW5hYmxpbmcgY29udGludW91cyBmdWxsDQo+IGZyYW1lIChjZmYpIGluIFBTUiBp
bnZhbGlkYXRlIGNhbGxiYWNrLiBFbmFibGluZyBjZmYgZG9lc24ndA0KPiB0cmlnZ2VyIGFueSB1
cGRhdGVzLiBJdCBqdXN0IGNvbmZpZ3VyZXMgUFNSIHRvIHNlbmQgZnVsbCBmcmFtZQ0KPiB3aGVu
IHVwZGF0ZXMgYXJlIHNlbnQuIEkuZS4gdGhlcmUgYXJlIG5vIHVwZGF0ZXMgb24gc2NyZWVuIGJl
Zm9yZQ0KPiBQU1IgZmx1c2ggY2FsbGJhY2sgaXMgbWFkZS4gWCBzZWVtcyB0byBiZSBkb2luZyBz
ZXZlcmFsIHVwZGF0ZXMNCj4gaW4gZnJvbnRidWZmZXIgYmVmb3JlIGRvaW5nIGRpcnR5ZmIgaW9j
dGwuDQo+IA0KPiBGaXggdGhpcyBieSBzZW5kaW5nIHNpbmdsZSB1cGRhdGUgb24gZXZlcnkgaW52
YWxpZGF0ZSBjYWxsYmFjay4NCg0KRmFpciBlbm91Z2guDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IA0KPiBGaXhlczogODA1ZjA0ZDQyYTZiICgiZHJt
L2k5MTUvZGlzcGxheS9wc3I6IFVzZSBjb250aW51b3MgZnVsbCBmcmFtZSB0byBoYW5kbGUgZnJv
bnRidWZmZXIgaW52YWxpZGF0aW9ucyIpDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy82Njc5DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBSZXBvcnRlZC1ieTogQnJp
YW4gSi4gVGFycmljb25lIDxicmlhbkB0YXJyaWNvbmUub3JnPg0KPiBUZXN0ZWQtYnk6IEJyaWFu
IEouIFRhcnJpY29uZSA8YnJpYW5AdGFycmljb25lLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNSArKysrLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDkwNGExMDQ5ZWZmMy4uNTY0ZDRmZDk0
MDQ4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
QEAgLTIyMDksOCArMjIwOSwxMSBAQCBzdGF0aWMgdm9pZCBfcHNyX2ludmFsaWRhdGVfaGFuZGxl
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJaWYgKGludGVsX2RwLT5wc3IucHNyMl9z
ZWxfZmV0Y2hfZW5hYmxlZCkgew0KPiAgCQl1MzIgdmFsOw0KPiAgDQo+IC0JCWlmIChpbnRlbF9k
cC0+cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkKQ0KPiArCQlpZiAoaW50ZWxfZHAtPnBz
ci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5hYmxlZCkgew0KPiArCQkJLyogU2VuZCBvbmUgdXBkYXRl
IG90aGVyd2lzZSBsYWcgaXMgb2JzZXJ2ZWQgaW4gc2NyZWVuICovDQo+ICsJCQlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgQ1VSU1VSRkxJVkUoaW50ZWxfZHAtPnBzci5waXBlKSwgMCk7DQo+ICAJ
CQlyZXR1cm47DQo+ICsJCX0NCj4gIA0KPiAgCQl2YWwgPSBtYW5fdHJrX2N0bF9lbmFibGVfYml0
X2dldChkZXZfcHJpdikgfA0KPiAgCQkgICAgICBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2Jp
dF9nZXQoZGV2X3ByaXYpIHwNCg0K
