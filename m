Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE4C39C612
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 07:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB126E843;
	Sat,  5 Jun 2021 05:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D8376E46B;
 Sat,  5 Jun 2021 05:44:24 +0000 (UTC)
IronPort-SDR: NlczyoYWJ3MMFQcWe1vNgmi6gHRawBDUhumOf+WEFKiqeq9tlW2qWP5l1fSFIx9GtqH7m3DhCp
 vsyUwGlzAPAw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="290040987"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="290040987"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:44:24 -0700
IronPort-SDR: M/BWNAx601vVKv1UuSXwsNPO1ObNQFd24ZiYy4Pf8HyHnu6/HbEKeUE4x12J5mhy8itYqPH7wU
 ck7vjG3SUGNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="550739434"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 04 Jun 2021 22:44:23 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:44:23 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:44:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 22:44:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 22:44:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GlJzuO/saQHVesOwCj8R/KEamOMevGAYXq7kHLPXfiULSdkg1ja71j2AGfRxmy3GpmvdcEjraPhJrEt+KnjPaaX44s0cF1cEycreHIfKMvNMMRZNrv/wQrKgJoAL1Gr8IZai8rBGo/X2acmzsdn043FUvknv7/cq4CP99pXqxRhOlgp/1IqhDLcxvDPiAtSyUq8NYWQB+c3+CQRysBeAXrEpXFeB87uLnoq+IJbxtr+2HqKaqstxGqtLb8SZmHlU2xsjsWBLpCfX1wdtQAYCv4zktoVwckqhaMJIBTaXkvrj0jgHtagLh4VuBYBeDH3dybShrbrHcl5g3cxU+FFHTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dgRsbzFBG/An/PoOAGjVwVKuDnjeDJy0WjFZCHA9v4E=;
 b=D7wg3Dgzkz3TD/n17iigbWXDW6xkh3rjTsVGQXDYlmBAptUdvXaMS4zzO+y0WJ7Rk64JD1yTmoFWxDzb+yr48L1B1dh1Sa5Cdu2wmf/7371xmyWpj/zHnUx59o5vmqzQ7k3Q/pXZ8LQnt+UvX7q/KPEx88ZFAaEblee+Bg9SeuvKiU+5A1uo5/32cMAWH+dlph83zJOQnMNEevW/ei34uqdNm+ePXEpzdlMOzrjqzoajUAwDjZDclsqN4POz+qc+0V/ApBODJJQqFvBoTeyvxt9d9cA3K8raM0LInNb27LSlsw5v5voJGAt0sLe/Gvk+MWtp3pPDSLIFn9LSt5/wfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dgRsbzFBG/An/PoOAGjVwVKuDnjeDJy0WjFZCHA9v4E=;
 b=SOG6Evr/q6mQ1a/WJnjJvp0WCA2tWSlFyTCcMHQXkYLe4tjK663kVYmTuZDHrI642YrBeoBQjcdQM2Mk8UKR3pj27nnXKMzHUfNkvsfmFCk5efF/rFazq1+vYiSVVOsWELXEa+UGSn2wYKIxKsqMJ16QYYh/DOjxM/GSMmqinAc=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BYAPR11MB3414.namprd11.prod.outlook.com (2603:10b6:a03:85::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Sat, 5 Jun
 2021 05:44:21 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.024; Sat, 5 Jun 2021
 05:44:21 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Mark Yacoub <markyacoub@chromium.org>
Thread-Topic: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch to
 64 byte for Intel platforms
Thread-Index: AQHXU3wUP1wR5ZwOHEeqEEBbEw3F66r9qGyAgAAGtjCABo/vgIAAtR9w
Date: Sat, 5 Jun 2021 05:44:20 +0000
Message-ID: <BY5PR11MB43729A75936150CB989EBBE5893A9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176443-12682-1-git-send-email-vidya.srinivas@intel.com>
 <YLTv/Z8j9rCf2koN@intel.com>
 <BY5PR11MB4372AB95A5AC6DE9AC0FA552893F9@BY5PR11MB4372.namprd11.prod.outlook.com>
 <CAJUqKUr7VAmDwtouJ27Cc+VJZsXcpVYdCzqS3q7nVg6g3Vum1w@mail.gmail.com>
In-Reply-To: <CAJUqKUr7VAmDwtouJ27Cc+VJZsXcpVYdCzqS3q7nVg6g3Vum1w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: chromium.org; dkim=none (message not signed)
 header.d=none;chromium.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c231f42-8e9e-4cfa-edd6-08d927e4f7b3
x-ms-traffictypediagnostic: BYAPR11MB3414:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB341491844CE19F650AD97F6C893A9@BYAPR11MB3414.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VtMGs6yK4gWJa0wv2hqlLeZajQWw7HhjHof4WlyFf2qCrovSktLUmoFHkRgRk4G4fjvIcuS4YUGzcz+/mciHQVsPVRIj8Zkn44hwRIuNYFhHzMCYJAbmgaieYlSZWl6oM6+qZIQs31yQw/HDYYe2jnZvnXq5iDqt7ML3EKSRqlmCKdXQYdv81bK9S8cABLcz/bPsDAF3n7wPP8emWIMbniTqvCg8oimDtNBeaakNkkuTD+a+z2lUm4rizbM34Mk/N7FAv3FsoQqjUFQor2ph0oN6xOyY3bLB38l98u0HQnzlrrfW9Rm3vdtUYJpIQTLri0dIgqOoR+nnqwtZCzfJsPE23y0f0jEptej7zJe/VQp9VN7WJwKGFrhSzQPUXXckKXLmIbdNqMWpnRHw/b/r+34kT2q3vt700CroBP3NIdcvZntt6apItIoTrygs65dj6sQDcWedyUEnc1jG55fGmuGPf5jJ9CG1GBnDU8FX5DL15U+/0mYXHqofMKRSxwis5sSJSbt0Wc+kTjxsMzzhXX53RHSjxXEjqXP9LTb5Du9YFezDux25I+mCiNU+74EdARRHn5JhhU/oBSw411kMzRX5VirUNXgG83naJBpPX4v+rJvnpO+mJWVLWSnELyJwrkLTI1Y2tYUMic7zlcijTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(376002)(346002)(366004)(136003)(66556008)(8676002)(66446008)(66476007)(64756008)(33656002)(4326008)(7696005)(8936002)(6506007)(55016002)(66946007)(26005)(38100700002)(71200400001)(66574015)(186003)(53546011)(316002)(54906003)(2906002)(86362001)(6916009)(122000001)(5660300002)(83380400001)(966005)(52536014)(478600001)(9686003)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?clYvYzczU1NCaGI4UUYyWEdENjZLU0gvSlcrZzNMN0xFb2N5QkJlSksyZTIr?=
 =?utf-8?B?VS9tMXN0YU9aUDhnb0tqRHRHTGloSkVDVVRTTktRTWM3c3g3VTl0cldkdkpV?=
 =?utf-8?B?VUs2dkRLTXlFZUZLWDZOREVKYWtjRDlNNVJkNzhNSTFBSFhJcm5LNXNXdXRu?=
 =?utf-8?B?MDJLWTFlZVh2cjVURWh3VkR3blJjd3A0K2dLUmhmeEdoZXR1Q0FGbktZNXYx?=
 =?utf-8?B?eXY5aXRIZGtCT0xWdk1FbW5yazRzVEUvYyt2SGgvNjc1UmlwTlUzWWR6akg2?=
 =?utf-8?B?T2w2TkhxZEtLeUJtSUdQS0IvUzhSUEl1V3hRUTVxOXNQYnpkMTFpUzJNUGtK?=
 =?utf-8?B?TWdHdWhvRTNYdWNZM3J4dzZEM1NCQmxQT0xYaHZ5TWJIVVU4d2hiSHlFQjdV?=
 =?utf-8?B?WXV2YlFYUUI2TlhQeW9LekJkM05kMU1LcytJaUQwcEYxa1E4WlFMWTJiekc2?=
 =?utf-8?B?a3pwUGRHSDU2dDROdVNGM2pLMUs2ZHdrSkkydTREUUE3eDNEWW45SFBUSmR1?=
 =?utf-8?B?V2RiUnV3TFVYWGxBR1pEYWk3ekxXYWRvb2hZUDBGNjJ1UVlnbHQ4SmVpd1dl?=
 =?utf-8?B?enN3Q1JnMUZhZkFaYS95aDlLSDNaemYyeDljMW93YmtQM0RJb1V2SkJBc0VN?=
 =?utf-8?B?RmhQU29ubzIvSDlBdmdlYmhIRTcwdW51bTJkREdObWdVQllqdXlWRWJJNmxn?=
 =?utf-8?B?RnlnVUoyWkU2U01VR21jUmdWNUF2azBXRzFDZHMxVEg4eEpGa0hnanI1Lzh5?=
 =?utf-8?B?d3hVQ0dTaTN1Kzc2bHkrQVYyKytXbnJkcyswNm5wVVdVcGtMYWFIeUJFNGl1?=
 =?utf-8?B?N2QwVUtJa3QyS0YzVXBZbG5NcWUrOXNtYUFMYmt3Skc4VkI0Q2tyQW5TYk9p?=
 =?utf-8?B?UkE3V0o4Mm5wSW8wYjBrRmMzejhUQys1NGwxekJnekcvWU5aelBhYUwxWXJ5?=
 =?utf-8?B?ci80aktabEhSSVJpUEVkczRWNGViRlJCZmJXYmxUT3VlSzFORFZZUlp4Wndy?=
 =?utf-8?B?VzNacTRhZnQydWJGTjJXRWR0YmpiYWxlYlZ3bU56bERxbUgvS0VlOWNPYjdD?=
 =?utf-8?B?ZFFrU3JyQ0NhRldSYStNS3RaSklZVkFkeENNZ0xQS1lvRnp1NGZVVWtZZTlB?=
 =?utf-8?B?NjlUczQ0bEplZlhxclNLSTRxU2xkWFNEa3ZNRnkrYXVvRXNibml2RGdQNHRq?=
 =?utf-8?B?QW1LM2dnMDZQbEM0ZTJ1ZWs3SXJtT2dwcEkwWkdYL1FtVlpSZ1paNDQ4aDZu?=
 =?utf-8?B?dUExU1Rubkt3OVlnV29DYU9jZHZldWlFb2tndTZPT1VjRDkzV3YzeWRVSGJl?=
 =?utf-8?B?RWlQazk4RUxhU2I5UkROSCtQdUZFaFhjRzVhK1BoN09zVXdTa3krTitpQWlM?=
 =?utf-8?B?VkZ6cVBUZmppYkcwM20zNTU1OWM1WUZYc3RMeXd4MG9OOXpWb3RJeU81dHpo?=
 =?utf-8?B?RG1hNkNlMEFhWEhFb3NYUlMrNk0zZjRoNjl4dFN3QmhlKzNaL083L0RDS2RK?=
 =?utf-8?B?SlZiQXE5YWtCeWc4MktGYnRISUFUa1RqeDRRZUtieVRhd2I2NjNiNVdKYzFa?=
 =?utf-8?B?OGswVThtWS9iemhhaW5pRjNxYjZzZzdsVkt2NVVyWnUzOUFwUXlmbDVqRlZM?=
 =?utf-8?B?c09GTmtwclBVb1JWWmMwR29CMHV5cFhtelJRUEFuNFVSV0J3QWFNbVBSbjl5?=
 =?utf-8?B?QzRsdlF6KzhGUmUwNXJsYVhvai91czU4ajBtdi92Zjdubkk5SE9ZN2VYL09D?=
 =?utf-8?Q?nIb48+4145Ziyd3ugY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c231f42-8e9e-4cfa-edd6-08d927e4f7b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2021 05:44:21.0407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r9GJpQt5hXF4iD0+d55b2rIhkUZtRXC8Oq3fTyaDsOo8qXdXzTBo/p6zvtdU0R+BBWfpl9BzfupgonSDT5/xJRBetHGkM9gYZeJx+E8xTFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3414
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime:
 Aligned pitch to 64 byte for Intel platforms
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin, 
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmsgeW91IHZlcnkgbXVjaCBNYXJrLCBmb3IgdGVzdGluZyB0aGUgcGF0Y2ggYW5kIHByb3Zp
ZGluZyB0aGUgIlRlc3RlZC1ieSIgdGFnLg0KSSBzaGFsbCBpbmNvcnBvcmF0ZSB5b3UgcmV2aWV3
IGNvbW1lbnRzIGFuZCBzdWJtaXQgdGhlIHBhdGNoLg0KDQpBZGRpdGlvbmFsbHksIHdlIGhhdmUg
c3VibWl0dGVkIHRoZSBrZXJuZWwgYWx0ZXJuYXRpdmUgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3BhdGNoLzQzNjE5OS8NCg0KUmVnYXJkcw0KVmlkeWENCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IE1hcmsgWWFjb3ViIDxtYXJreWFjb3ViQGNocm9taXVtLm9y
Zz4gDQpTZW50OiBTYXR1cmRheSwgSnVuZSA1LCAyMDIxIDEyOjI0IEFNDQpUbzogU3Jpbml2YXMs
IFZpZHlhIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBMaW4sIENoYXJsdG9uIDxjaGFy
bHRvbi5saW5AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtpZ3QtZGV2XSBbUEFUQ0ggaS1nLXRd
IFtSRkNdIHRlc3RzL2ttc19wcmltZTogQWxpZ25lZCBwaXRjaCB0byA2NCBieXRlIGZvciBJbnRl
bCBwbGF0Zm9ybXMNCg0KT24gTW9uLCBNYXkgMzEsIDIwMjEgYXQgMTA6NDcgQU0gU3Jpbml2YXMs
IFZpZHlhIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+IHdyb3RlOg0KPg0KPiBIZWxsbyBWaWxs
ZSwNCj4NCj4gVGhhbmsgeW91IHZlcnkgbXVjaC4NCj4gQmVmb3JlIHJlYWNoaW5nIG91ciBpOTE1
J3MgaTkxNV9nZW1fZHVtYl9jcmVhdGUsIGl0IGdvZXMgdG8gdmdlbV9nZW1fZHVtYl9jcmVhdGUg
Zm9yIGttc19wcmltZS4NCj4NCj4gVGhlIHBpdGNoIGdldHMgY2FsY3VsYXRlZCB0aGVyZSBhbmQg
aXQgaXMgbm90IDY0IGJ5dGUgYWxpZ25lZC4gRHVlIHRvIHRoaXMsIGludGVsX2ZyYW1lYnVmZmVy
X2luaXQgcmVwb3J0cyAicGl0Y2ggbXVzdCBiZSA2NCBieXRlIGFsaWduZWQiDQo+IGFuZCBmcmFt
ZWJ1ZmZlciBjcmVhdGlvbiBmYWlscy4gSSB0cmllZCBzdWJtaXR0aW5nIHZnZW0gcGF0Y2ggd2hl
cmUgNjQgDQo+IGJ5dGUgYWxpZ25tZW50IGNhbiBiZSBkb25lIGluIHZnZW1fZ2VtX2R1bWJfY3Jl
YXRlIGFuZCB0aGF0IGFsc28gcGFzc2VzLiBCdXQgd2UgZGlkIG5vdCBnZXQgYXBwcm92YWwgeWV0
IGFzIGZldyBvZiB0aGVtIGZlbHQsIHZnZW0gaXMgZ2VuZXJpYyBhbmQgb3RoZXIgcGxhdGZvcm1z
IG1pZ2h0IGZhaWwgaWYgd2UgZG8gNjQgYnl0ZSBhbGlnbm1lbnQgdGhlcmUuDQo+DQo+IEtpbmRs
eSBzdWdnZXN0LiBUaGFua3MgYSBsb3QuDQo+DQo+IFJlZ2FyZHMNCj4gVmlkeWENCj4NCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBNYXkgMzEsIDIwMjEgNzo0
OCBQTQ0KPiBUbzogU3Jpbml2YXMsIFZpZHlhIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+
IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpZ3QtZGV2QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgDQo+IExpbiwgQ2hhcmx0b24gPGNoYXJsdG9uLmxpbkBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbaWd0LWRldl0gW1BBVENIIGktZy10XSBbUkZDXSB0ZXN0cy9rbXNfcHJp
bWU6IEFsaWduZWQgDQo+IHBpdGNoIHRvIDY0IGJ5dGUgZm9yIEludGVsIHBsYXRmb3Jtcw0KPg0K
PiBPbiBGcmksIE1heSAyOCwgMjAyMSBhdCAxMDowNDowM0FNICswNTMwLCBWaWR5YSBTcmluaXZh
cyB3cm90ZToNCj4gPiBGb3IgSW50ZWwgcGxhdGZvcm1zLCBwaXRjaCBuZWVkcyB0byBiZSA2NCBi
eXRlIGFsaWduZWQuDQo+ID4gS2VybmVsIGNvZGUgdmdlbV9nZW1fZHVtYl9jcmVhdGUgd2hpY2gg
aXMgcGxhdGZvcm0gZ2VuZXJpYyBjb2RlIA0KPiA+IGRvZXNudCBkbyB0aGUgYWxpZ25tZW50LiBU
aGlzIGNhdXNlcyBmcmFtZSBidWZmZXIgY3JlYXRpb24gdG8gZmFpbCANCj4gPiBvbiBJbnRlbCBw
bGF0Zm9ybXMgd2hlcmUgdGhlIHBpdGNoIGlzIG5vdCA2NCBieXRlIGFsaWduZWQuDQo+ID4NCj4g
PiB0ZXN0czogdGVzdCBydW4gb24gSW50ZWwgcGxhdGZvcm1zIHdpdGggcGFuZWwgcmVzb2x1dGlv
biAxMzY2eDc2OA0KPiA+DQpUZXN0ZWQgb24gQ2hyb21lT1Mgb24gSlNMIChEcmF3bGF0KS4NClRl
c3RlZC1ieTogTWFyayBZYWNvdWIgPG1hcmt5YWNvdWJAY2hyb21pdW0ub3JnPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gIHRlc3RzL2ttc19wcmltZS5jIHwgNSArKysrLQ0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
dGVzdHMva21zX3ByaW1lLmMgYi90ZXN0cy9rbXNfcHJpbWUuYyBpbmRleA0KPiA+IDhjYjJjYTJh
OWRjMy4uZmRjOTQxZmU4MTAwIDEwMDY0NA0KPiA+IC0tLSBhL3Rlc3RzL2ttc19wcmltZS5jDQo+
ID4gKysrIGIvdGVzdHMva21zX3ByaW1lLmMNCj4gPiBAQCAtNTEsNiArNTEsOCBAQCBzdGF0aWMg
c3RydWN0IHsNCj4gPiAgICAgICB7IC5yID0gMS4wLCAuZyA9IDAuMCwgLmIgPSAwLjAsIC5jb2xv
ciA9IDB4ZmZmZjAwMDAgfSwgIH07DQo+ID4NCj4gPiArYm9vbCBjaGVja19wbGF0Zm9ybTsNCkkg
dGhpbmsgd2UgY2FuIGRvIGEgbW9yZSBwcmVjaXNlIG5hbWUgdG8gaW5kaWNhdGUgd2hpY2ggcGxh
dGZvcm0uDQpTb21ldGhpbmcgbGlrZSBpc19pbnRlbF9kZXZpY2Ugb3IgaXNfaTkxNSB3b3VsZCBi
ZSBtb3JlIGFwcHJvcHJpYXRlLg0KYWx0ZXJuYXRpdmVseSwgd2UgY2FuIGRyb3AgdGhlIGJvb2xl
YW4gYW5kIGp1c3QgZG8gdGhlIGNoZWNrIHdoZW4gbmVlZGVkLg0KU28gaXQgd291bGQgbG9vayBz
b21ldGhpbmcgbGlrZQ0KKyBpc19pOTE1X2RldmljZShmZCkgPyBBTElHTihzY3JhdGNoLT53aWR0
aCwgNjQpIDogc2NyYXRjaC0+d2lkdGgsDQoNCj4gPiArDQo+ID4gIElHVF9URVNUX0RFU0NSSVBU
SU9OKCJQcmltZSB0ZXN0cywgZm9jdXNpbmcgb24gS01TIHNpZGUiKTsNCj4gPg0KPiA+ICBzdGF0
aWMgYm9vbCBoYXNfcHJpbWVfaW1wb3J0KGludCBmZCkgQEAgLTEwMSw3ICsxMDMsNyBAQCBzdGF0
aWMgDQo+ID4gdm9pZCBwcmVwYXJlX3NjcmF0Y2goaW50IGV4cG9ydGVyX2ZkLCBzdHJ1Y3QgZHVt
Yl9ibyAqc2NyYXRjaCwNCj4gPiAgICAgICBzY3JhdGNoLT5icHAgPSAzMjsNCj4gPg0KPiA+ICAg
ICAgIHNjcmF0Y2gtPmhhbmRsZSA9IGttc3Rlc3RfZHVtYl9jcmVhdGUoZXhwb3J0ZXJfZmQsDQo+
ID4gLSAgICAgICAgICAgICAgICAgICAgIHNjcmF0Y2gtPndpZHRoLA0KPiA+ICsgICAgICAgICAg
ICAgICAgICAgICBjaGVja19wbGF0Zm9ybT8gQUxJR04oc2NyYXRjaC0+d2lkdGgsIDY0KTogDQo+
ID4gKyBzY3JhdGNoLT53aWR0aCwNCj4NCj4gVGhlIGR1bWJfY3JlYXRlIGlvY3RsIGFscmVhZHkg
ZG9lcyB0aGlzIGZvciB1cy4NCj4NCj4gPiAgICAgICAgICAgICAgICAgICAgICAgc2NyYXRjaC0+
aGVpZ2h0LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICBzY3JhdGNoLT5icHAsDQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICZzY3JhdGNoLT5waXRjaCwgQEAgLTI2Miw2ICsyNjQsNyBAQCBp
Z3RfbWFpbg0KPiA+DQo+ID4gICAgICAgICAgICAgICAvKiBBTlkgPSBhbnl0aGluZyB0aGF0IGlz
IG5vdCBWR0VNICovDQo+ID4gICAgICAgICAgICAgICBmaXJzdF9mZCA9IF9fZHJtX29wZW5fZHJp
dmVyX2Fub3RoZXIoMCwgRFJJVkVSX0FOWSB8IA0KPiA+IERSSVZFUl9WR0VNKTsNCj4gPiArICAg
ICAgICAgICAgIGNoZWNrX3BsYXRmb3JtID0gaXNfaTkxNV9kZXZpY2UoZmlyc3RfZmQpOw0KPiA+
ICAgICAgICAgICAgICAgaWd0X3JlcXVpcmUoZmlyc3RfZmQgPj0gMCk7DQo+ID4NCj4gPiAgICAg
ICAgICAgICAgIHNlY29uZF9mZCA9IF9fZHJtX29wZW5fZHJpdmVyX2Fub3RoZXIoMSwgRFJJVkVS
X0FOWSB8IA0KPiA+IERSSVZFUl9WR0VNKTsNCj4gPiAtLQ0KPiA+IDIuNy40DQo+ID4NCj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IGlndC1k
ZXYgbWFpbGluZyBsaXN0DQo+ID4gaWd0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lndC1kZXYNCj4N
Cj4gLS0NCj4gVmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IGlndC1kZXYgbWFpbGluZyBsaXN0DQo+IGln
dC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
