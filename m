Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A31B27EE07
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DAF89D00;
	Wed, 30 Sep 2020 15:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E57289D00
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:57:03 +0000 (UTC)
IronPort-SDR: E47AkgLud/IzEX/S9Ap99M83ygiozx4w18ct14rI60pcK2hqA1vzX5vk/38HLQ/3difnI2fd+2
 tCVa5hA1Bx4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="150137913"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="150137913"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:57:02 -0700
IronPort-SDR: hhQgLeDnC/shbX8nmDzNRnPLdEM4t8VAWmfVdmjMUlwG8GbIIy4gUFLWvlYOxQiyzaW75W5/9E
 zsPIAkbi+kQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="339142988"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 30 Sep 2020 08:57:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 08:57:02 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 08:57:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 30 Sep 2020 08:57:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 30 Sep 2020 08:57:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bfnbNojcIDbscVFaTA0bvnCJmwASi1tx47Np/sdl5paUDma4GX7F3prDL2S5KJKkxoFZmVZpGCbtlU8sS2rLgZolivqfDw1dzFkYW2ftYOT/ihfe/qwb5v5hZY5qVBjPL2miWtDB8V+wVO1ce32ZUIwq8+z3ORhFDrYsSLtggm0FaNCcpX+8dl2WDQpNZexAfUu7Umocsd8EQ7mjBAHlwtcHbGupXw4334kug5tx93SpJ65Dgfzi14CLrTC9IGtJplT0jjTsPdKakswkRspDeHHtLtl/NsKoULC/jIxjcq+wCkJilSCEcfbQoXafIWxJ/uDni5BI1cesdVc2buKucw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+bfzQ6Or1lcC93jW1BwUg8dGQStJMj1mclvfoHAFDw=;
 b=gjQhpsnKUsxFI4BEh9vAGmvcJz1BXz3JYzCQ99FVrjW/eGsdmWo/4dXA7UkYd8VStOnMJQKzc77P7PMaP89Y16EpUMuBwf8PnDFW2RAPnBYVjYIP+7bB3Q9cR5a8zY8ksV8DC8ofl+5rY2gFYzDg+gMMmqaLfT+d4j3W5TbmQMRtARgGqxj4VdKh4dMk+M+6Vo6eycVI7xmYxGvqqEBbASp3AbTaTBqjKbnk8PGCh5M8fFOjt+fpKl0xjPJ9gjTueax+Ncf2nszfP487SwzPb8qTqQd1qAwnDBJyfcBPHs+pRq+oNKYq/2aMkCGo1om21PjfXA6omIV6jH7qjOTSbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B+bfzQ6Or1lcC93jW1BwUg8dGQStJMj1mclvfoHAFDw=;
 b=IuKmqLCVXmbS1DxDHV99/5DKCwlpnmRCokUQo9k8iennv8pPV2KL7nOc5QoaPcwrFNyCvJsTPqBRIbGsQoXEIRc8B+v0nwtvGCH5EqxPeyzLwIh6uGdF9mnXUsjjUv6+U4dILdaS2qKYs5QN9d0R8g0aPfODfUDWXWNyY2x8sbs=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2637.namprd11.prod.outlook.com (2603:10b6:805:54::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.35; Wed, 30 Sep
 2020 15:56:54 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::85cc:7d43:b53d:33ff]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::85cc:7d43:b53d:33ff%7]) with mapi id 15.20.3412.029; Wed, 30 Sep 2020
 15:56:54 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display/ehl: Limit eDP to HBR2
Thread-Index: AQHWldIhDzbQB+ele0uqkG4DeYZL/amBWCew
Date: Wed, 30 Sep 2020 15:56:54 +0000
Message-ID: <SN6PR11MB34217BC5C5AE290B12C8123CDF330@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20200928200309.88982-1-jose.souza@intel.com>
In-Reply-To: <20200928200309.88982-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.251.217.84]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a30f55f-ec1d-4bcb-5c3b-08d8655973e5
x-ms-traffictypediagnostic: SN6PR11MB2637:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2637875ECE7307AA4BF32246DF330@SN6PR11MB2637.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3aQpnTsFNiz27Xn1cit47kN9Vzsh8kmp0BP6Bn0PPeRmn8xRRqVfLGxzf85DRoMxxLVwHd3mAElPjwQWHHr3B1yKTexH7T2t+FGTrOA93uPVoumZuoi1pPJMD5uwB/VETQDHVf3kCDhsLDIWjFRjZ9qFnqe+IIipSE1YEg1BBmphoD7AqQBZFgSMtpUrH1cgGN1zoyjmU41COEyKR7LM7bQWiydVoUxoE6AwznzLAuCOQHot49MZYDH1bKo5mE2RftdsT91EEWGN3Rb5TDKrD55nfwXQhK5nmQy2yZ084L/5pWLSRrmd1PBcdZ4rhENIHxx10CRWVz3/RcBy5jGIs0XU5QByJbkzUwgVS+13pww=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(366004)(136003)(346002)(376002)(6506007)(9686003)(53546011)(71200400001)(5660300002)(8676002)(966005)(86362001)(8936002)(26005)(64756008)(66446008)(66946007)(76116006)(478600001)(83380400001)(55016002)(52536014)(186003)(7696005)(110136005)(33656002)(66476007)(66556008)(316002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: kyLxOidtyrd3h2QX3Wk+3ZCmTTJZqSytevw4l3h1rslT4IA8nQMTQFxpAxwlhdgJrevm9lOUzx3vRfVX73wjnoKwl/JIgg1raVhpBPt/8H6uOkZj6uTwxEslbrbrL4VlMbIfU0J6x9z6s8JyRKuUQ0llq6IP7zsnNxmDY1UjPFTj4ZIRmPo3NifjZsjokDebdROk7zs2YzcSpux2b8amOO/mzhl2avV+/1+GsK86l0rJGn5gQKuxndNfW2RawHHZA0Jsx029eWt1xrljo8KxxlF/HUh+rTvnb+199q0BrUNWU3VE1LutyIXSWEgEz2oS/H81VTbkRHhJkypgdGGMvOsEhW0Dlj83Gmytvt6r5CNhQp3JJXFF2O6Awhv+7FuaOd6/fmJKbqgjiUJ8sY11Cd32NzQP55bzlGoNe4DcDeUL991BPmZhA1BKgjinTNyCmabUI1u35tJul9yn1/b1sYhNbk4UUSo1bjEQEjB3dfunzwU+ffw5MPhU1bghqA/dOADX4jXi0A+E94EaSKHtYmoYwuQ/WreWiQzWFrMzadhxt08smyw1tXGw/SfmaYnS6g5DMvxqlWe8FL7H9lgEbHXQ+Sp+iX6WFx481MP8zKgqomxjLIoWcbvIIWvRnrHPO8hg2YcVOCRDzPBS55zn0Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a30f55f-ec1d-4bcb-5c3b-08d8655973e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2020 15:56:54.2341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hEALstEVn4kY7eoD9/VJh+n/1G2TQeE2VJEHOgaRtXZPo8HUamvB2aGzB2TscoofMe3J2Ahb2UpcEf8jCGUc7nGcqPVQVxP4zBaz8q/yKks8K5enc839bPkAD8kS5bmt0Rt6WmT9NsJPGj4XwDQzAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2637
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/ehl: Limit eDP to HBR2
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvc8OpIFJvYmVy
dG8gZGUgU291emENClNlbnQ6IDI5IFNlcHRlbWJlciAyMDIwIDAxOjMzDQpUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIHYyXSBk
cm0vaTkxNS9kaXNwbGF5L2VobDogTGltaXQgZURQIHRvIEhCUjINCg0KUmVjZW50IHVwZGF0ZSBp
biBkb2N1bWVudGF0aW9uIGRlZmVhdHVyZWQgZURQIEhCUjMgZm9yIEVITCBhbmQgSlNMLg0KDQp2
MjoNCi0gUmVtb3ZlIGRlYWQgY29kZSBpbiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFucygpDQoNCkJT
cGVjOiAzMjI0Nw0KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQpD
YzogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KLS0tDQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8ICA5ICsrLS0tLS0tLSAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICB8IDExICsrKysrKysrKyst
DQogMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCmluZGV4IDRkMDYxNzhjZDc2
Yy4uZWYwNmI3YjgyYmU5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KQEAgLTEwODIsMTMgKzEwODIsOCBAQCBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRlLA0KIAkJcmV0dXJu
IGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19oZG1pOw0KIAljYXNlIElOVEVMX09VVFBV
VF9FRFA6DQogCQlpZiAoZGV2X3ByaXYtPnZidC5lZHAubG93X3Zzd2luZykgew0KLQkJCWlmIChy
YXRlID4gNTQwMDAwKSB7DQotCQkJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19w
aHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMyk7DQotCQkJCXJldHVybiBpY2xfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjM7DQotCQkJfSBlbHNlIHsNCi0JCQkJKm5fZW50cmll
cyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyKTsN
Ci0JCQkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMjsNCi0J
CQl9DQorCQkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNs
YXRpb25zX2VkcF9oYnIyKTsNCisJCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRp
b25zX2VkcF9oYnIyOw0KDQpBcyBwZSBCc3BlYywgZWhsX2VkcF9oYnIyIGRvZXMgbm90IG1hdGNo
IHdpdGggaWNsX2VkcF9oYnIyIHZhbHVlcy4gUmF0aGVyIEkgc2VlIChpY2xfZWRwX2hicjIgPT0g
ZWhsX2VkcF9oYnIpIHRydWUuIA0KDQpUaGFua3MsDQpUZWphcw0KIAkJfQ0KIAkJLyogZmFsbCB0
aHJvdWdoICovDQogCWRlZmF1bHQ6DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQppbmRleCA1NGE0YjgxZWEzZmYuLjk2ZDJjNzY3NzJkNiAxMDA2NDQNCi0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQpAQCAtMjc3LDEzICsyNzcsMjAgQEAgc3RhdGljIGlu
dCBpY2xfbWF4X3NvdXJjZV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQogCWVudW0g
cGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBkaWdfcG9ydC0+YmFzZS5wb3J0
KTsNCiANCiAJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSAmJg0KLQkgICAg
IUlTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJg0KIAkgICAgIWludGVsX2RwX2lzX2VkcChpbnRl
bF9kcCkpDQogCQlyZXR1cm4gNTQwMDAwOw0KIA0KIAlyZXR1cm4gODEwMDAwOw0KIH0NCiANCitz
dGF0aWMgaW50IGVobF9tYXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkg
ew0KKwlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCisJCXJldHVybiA1NDAwMDA7DQor
DQorCXJldHVybiA4MTAwMDA7DQorfQ0KKw0KIHN0YXRpYyB2b2lkDQogaW50ZWxfZHBfc2V0X3Nv
dXJjZV9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAgeyBAQCAtMzE4LDYgKzMyNSw4
IEBAIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
CiAJCXNpemUgPSBBUlJBWV9TSVpFKGNubF9yYXRlcyk7DQogCQlpZiAoSVNfR0VOKGRldl9wcml2
LCAxMCkpDQogCQkJbWF4X3JhdGUgPSBjbmxfbWF4X3NvdXJjZV9yYXRlKGludGVsX2RwKTsNCisJ
CWVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkNCisJCQltYXhfcmF0ZSA9IGVobF9t
YXhfc291cmNlX3JhdGUoaW50ZWxfZHApOw0KIAkJZWxzZQ0KIAkJCW1heF9yYXRlID0gaWNsX21h
eF9zb3VyY2VfcmF0ZShpbnRlbF9kcCk7DQogCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJp
dikpIHsNCi0tDQoyLjI4LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
