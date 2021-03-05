Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272CA32EEB4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 16:24:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A186EB50;
	Fri,  5 Mar 2021 15:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11AFE6EAAF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 15:24:20 +0000 (UTC)
IronPort-SDR: 9O4+7B9a88961nid+vva9i47ffyghllDI51L3arqDIV2ImG6RI7bqat9+mCD2kfosPM1nf3YZC
 vjElTy7E3HbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="187719173"
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="187719173"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 07:24:18 -0800
IronPort-SDR: oMk61ChDE2MxG+6DPu0QQFALTPdaGA/jdW3FumoMvLEgPngf5Uq3nm2hA8/MeUQ6p6h9PuCCu0
 DA11JZ/c2Oqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="597824735"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 05 Mar 2021 07:24:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 07:24:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 07:24:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 5 Mar 2021 07:24:18 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.58) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 5 Mar 2021 07:24:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jwR7ImQMXTd5+l5+d6Y5tcXECYEwVJujLuYfVp3NKqV6BV6e42V0IUxv4pMYYDLxNlmDrgNugek0ppQTf6gn3h+YkF9WDOFtKokspe1UEsYYbcYhkjqLufe8P8NoohoXEQklVkAjJE53IuUfI7inHubCqoJW8pXveO4LfcKE0Wp9IveANypKWJinWkOuAjOrquTJldE2AT2siRsdZO9MoFNi9tc7CHOnFxFXRRY+iRAMyqLR7pdmfYgh5ED9u9t5oazOoZ3K6u8XsGkQAv/v4AEn1wlDQKhMMvXA0fPiw1t8WWFLYHLzU4ZeX7WokFDWxbwZhLqKUhwzk5VrjBtoKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yL1f1s3s0JNcdLbgmve4QSJGLPXE+W4ySWO0tfvHQ0=;
 b=aXazwJfAqxCbeoY3wofYbqhEXCix0OHIcx4T2m+RduZtUBYPIFW4EjhqVF2kzwnHgNQGNUJw8bAlIl7KyRdFe3h9sf2rnujRlO+H8tXpDfIGc5KtrJY3Yne2qQgxrdYmWfuzwQYkt8ZSP23soj3iEkU4h+USVny3Wz013hhVarPjrKQTTwNAqS/13VjOL3/MJBqBuwVLa8Tsv3ypFGQk/ARDF9mOaGCwJ49LY4hdQwGaW21h1DQ/tziFRCz6Ios3fp+avNGxDu1tNAO4BYQyIAuROpj88TdIpe/sDm/5c1GRd6ZksoZP59mqOnTDTCxTLEV0zNIx2E3c50JT8Ru5wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yL1f1s3s0JNcdLbgmve4QSJGLPXE+W4ySWO0tfvHQ0=;
 b=Jw3GLVHrr+7UiNm1Viysel1Xti7vZfUjsYNT2iq74yZJU9eLxR5514pRhwxPyySabLOTuDGsVJXvSphOHygoDZ7ZX1oDEp3ejHcmJ1yvB0YQPGCW0iG0KN/G4LbTm3I7bvraaZmD/mUpdfk/PT5h62Plf/vC+uewvUBzIolwdrE=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SA2PR11MB4955.namprd11.prod.outlook.com (2603:10b6:806:fa::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Fri, 5 Mar
 2021 15:24:14 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3868.038; Fri, 5 Mar 2021
 15:24:14 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXDy9TNUpQng5a8UOTNIkE1rTbjqpzjp4AgAAB8gCAACvUAIAA2R2AgACOaACAADGngIAAMJ3w
Date: Fri, 5 Mar 2021 15:24:14 +0000
Message-ID: <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
 <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
In-Reply-To: <161494684568.15221.13792200139079395463@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc183593-76aa-48ec-7fe9-08d8dfeabc23
x-ms-traffictypediagnostic: SA2PR11MB4955:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4955344465DFAB0ACB80276C9D969@SA2PR11MB4955.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u3LUdx/QOEyNZMhInFvrq05ZNvnDVzJwKKWsdi4bYMPYBj49GmOiyjz7MCV7RcS9EN/Tqoxx6h1UTs9XbkEbZULtuzwEGvv4AqnTac9hm9kqac7cOVJCm/VmmreGz+FkWXdKU3pkZGew4TfvuOwqghPY+TSldV63EH2zq023PDBI5bFskYPzCfX7cez2T0zxcRZ4L0jysLfULM8hpILswtXEYKHFbMXReYdj1N56erEk8fbNMjdwqK1wMK8t1yqbfi9RXmksyuCCAUVKSdCgbAG3tGf+N/2GrTnRyFnhgfERH1/GRx+t++Qv6tzF8hkWTV1neZE2GjG6P4btyZ9oCWRbypED047ErK6WW77PRrcltq2kha0ZK7zcl0CDcycIGreGI/uGzWeHd3etzSvQ2eS53AdfYEeEUlAVYeKuQSCZGelgfM7zKacax1q9TPE8SQa8hDN40l32WpJsnXaSyNacL5P+pgtaeRVstd/FEuBB0TCMGAyc8I4KIjznbEKPhq2+kb2ALViST9e+V1SHtMlGH+6rjBXoZK9qIfxTF7xOKFp6acLZAD4qjUgTT7c2S/K3OVVbQserYPF29ntSkPTQPwdY5iVx8m4DbkcV0MePTNu1m5eYwlqDtWT7WPipknkWQklkdCiOhfs9GieKFg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(346002)(136003)(376002)(396003)(39860400002)(366004)(2906002)(33656002)(52536014)(54906003)(186003)(66476007)(55016002)(64756008)(4326008)(5660300002)(66946007)(71200400001)(76116006)(66556008)(9686003)(66446008)(26005)(7696005)(110136005)(8676002)(86362001)(316002)(8936002)(83380400001)(6506007)(478600001)(966005)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WjnTWxGPr7fjH0UdaDqqEpeRVshgsL92xp1E0JBCWYUb3J+6MqfmDCqZ5fQ4Iv8UI/JpQF9JwF+WOglS79V6yb37BW3Eg12Uh54p5n4FIpRx92q+Pz+QxnufkUiG7rW0tUDhkw7+ugd+iOPVHFa2pvWwvm5Yos0lsyoJBHXJ4WrCQcKLVw2QJLqgxvPTy6xf1SmTYjsunl/LNNyNtkaxSvxWW+jziIOoGwNplxseSF4xccBSCc38Kp13kTSosin6xtFjpAvyhmYdpORPnSX0hv91woTBIC7oQztVobBnXEdNSpxhjfhKEo/xZo81jlGkEqglkw/0i3guvuSMp45VkoBVx+lTCnkTuIizgiAKWZK31qBTH7rFqmHsT/oHbuQ0Z7tfonHsnut20fR/aAfvuCaFxxDzFnYCsstQ3ZaVFDNbj7vv6IRsfy41ns0Xs7s8dWJ4pd/JgSVDFoR0KkIxQgYWG7u9x+r3PxcEX3dDAwuVQOfKZ1NBFucTxi672f7CBh5FtyELcucuOvOyIos2MyvMECTi0g65bDlHSAn2xrwlcwHEf0BWRPeMMqooK77GaIuzodJ84d3V5r+r5jsVWZMcR2OJsndH39fLCGv+WRHOzQ73abLN2jTutcB80hBFd/8EBrRzSzCqFQJe02UdDT52lBntnKoPEVfYGDX/JeLgmwIisW4wU6vo+XQoX10z4oQLKFwAbxKwqgZ8G06biUEw9JpVimCLNFr9lEDrPbU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc183593-76aa-48ec-7fe9-08d8dfeabc23
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2021 15:24:14.3604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mx1xNz4qidufOb+Vi8FtJTr/Z/ifUrT+4P6DrNAve/oZ7I4AD0sKdoYXcHLDxOzWzkixySijRUaeBSQsz4TNxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4955
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Chen, Rong A" <rong.a.chen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWZ0ZXIgc3dpdGNoZWQgdG8gZmZzIGZyb20gZmxzIGluICJwYXRjaCB2NSIoaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84MTc2NC8jcmV2NyksIG5vdyBDSSByZXN1bHQg
aXMgUEFTUyBubyByZWdyZXNzaW9uIGluIHdhX3ZlcmlmeSB3YXJuaW5nLg0KDQpAQ2hlbiwgUm9u
Zw0KQ291bGQgeW91IHBsZWFzZSBydW4g4oCccGhvcm9uaXgtdGVzdC1zdWl0ZS5zdXBlcnR1eGth
cnQuMTAyNHg3NjguRnVsbHNjcmVlbi5VbHRpbWF0ZS4xLkdyYW5QYXJhZGlzb0lzbGFuZC5mcmFt
ZXNfcGVyX3NlY29uZOKAnSB3aXRoIHRoaXMgbGF0ZXN0IHBhdGNoIHY1IG9uIHRlc3QgYm94IHRv
IHNlZSBpZiBhbnkgcGVyZm9ybWFuY2UgaW1wYWN0LiBUaGFua3MsDQoNCkJlc3QgUmVnYXJkcywN
CkNvb3Blcg0KDQo+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMjEtMDMtMDUgMDk6MjM6MDIp
DQo+ID4gSSBhbSBub3Qgc3VyZSBpZiBQQzggYW5kIERNQyBjb3VsZCBhbHNvIGJlIGludm9sdmVk
IGZyb20gd2hhdCBDb29wZXINCj4gPiB3YXMgc2F5aW5nIGluIGEgZGlmZmVyZW50IHRocmVhZC4g
TWF5YmUgYW5vdGhlciBDSSBydW4gd2l0aG91dCB0aGUNCj4gPiBETUMsIGJvdGggZmZzIGFuZCBm
bHMuIEFub3RoZXIgZm9yIGxpbWl0aW5nIGNzdGF0ZXMuDQo+IA0KPiBEaXNhYmxpbmcgdGhlIGRt
YyBsZWF2ZXMgdGhlIGRpc3BsYXkgY29kZSBpbiBhbiBpbmNvbnNpc3RlbnQgc3RhdGUgc28gd2Ug
ZG9uJ3QNCj4gY29tcGxldGUgYSBCQVQgcnVuOyBidXQgc2luY2UgdGhlIHdhcm5pbmdzIGFyZSB0
aHJvd24gZHVyaW5nIGJvb3Qgd2UgY2FuDQo+IHNheSB0aGF0IGRpc2FibGluZyB0aGUgZG1jIGRv
ZXMgY2xlYXIgdXAgdGhlIHdvcmthcm91bmQgaXNzdWVzIG9uDQo+IGVobC9qc2w6DQo+IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1RyeWJvdF83NjEyL2ZpLWVo
bC0yL2Jvb3QwLnR4dA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1RyeWJvdF83NjEyL2ZpLWpzbC0xL2Jvb3QwLnR4dA0KPiAtQ2hyaXMNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
