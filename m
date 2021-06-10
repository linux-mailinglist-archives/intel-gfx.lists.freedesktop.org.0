Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E51A3A2773
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 10:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E896EC9F;
	Thu, 10 Jun 2021 08:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE776EC8D;
 Thu, 10 Jun 2021 08:52:48 +0000 (UTC)
IronPort-SDR: KfF93eNM38rAkDc2DOyq+Q+U5dJ7pdOw6q4yapu730IXMHb8SvofhRx4HrzZM73OyK476Axnzm
 oa5Vsbjn9lDA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="202231233"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="202231233"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 01:52:42 -0700
IronPort-SDR: nXS++Mvg6WAIWRg7Dqn1Snm5jKVQ+yVkKxiOoVgbLd42eEByAPKVyF+UtXHAitOjXOADPckgCC
 MTUZfAnMMIYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="402622042"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 10 Jun 2021 01:52:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 01:52:42 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 01:52:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 01:52:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 01:52:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrtRLIAkW0BJ/Id7C9DpFBNhtpOvqSAJVcE8k8KCny0iSCbQK3bClEm3TkaTLp7mDkutaEJiT5TeFv7+SiVBT8r5T5jMbeZZIMFdfgCI2M7osiMgGQ07nem6s15uyGPU50ihi2SLVWmWwC5lVqTOitWMR0Q1W/ZpS275PlyXZ8bXEnVe9xwcrqy8ps6XXIi0mDABSMzk3YoqWy0ORN9tlW/RtNOT2IjkiaDAhE45s2jHaiqh2vopu/mj77BLmpFSUqyX23++rW0UXsUPBBgPo7UvJf+F676onNsT9KrRRYHiiCTJq7ULryabxdi7algQcpMjM7lZrLw3UQyNfb6AWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dGl4irQPD7b+cJzI3R0pZjl40ADPvOiN5WS1bdyQxEA=;
 b=WkJpC6ZBx3JNkZCLRAiNVI0wdTGPBRLzLxQsXuFwgRGrEMrJFWE7I3cC2+2amI3dBqmw3PlHR7MWAA/ZUzi+w4btw6J7thFzIcMWmJsFvBioc5rfrlb8+E7v4arzDH1goMXoymTfqtSM3tH8vKnI+xXrrqO6fkGD2pT/To6q0NeJKZ0iHdxn+DJDae0ajn55dDHbw8yQu05P3eqkuUSySYC0NgLztRKbHaLIcWSRuKABRESelUzF0KRl5DK7qJorp93UL3QHpcB+u9cCxnQUqAtF9PeJUXdSq8QwslwpSnJK2+tA7zBbHi77WX6Z/0uVl49m/qKIt3906fycoPuXgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dGl4irQPD7b+cJzI3R0pZjl40ADPvOiN5WS1bdyQxEA=;
 b=WPl2jLXR4JYPs7oqpBJmmEXOLH3V9EWEJJwIOFZVvD7BYn5UhfZMfhWAmvVw33pPawrUP6B+Wz3EuoLbRXN2LFBxMPIiCxOrXHcURuCllrR7e5z6REAzKbWWjrnWJ3teOaCTFWUzf2SqLZXsvoTlAqNZYUyCc8w4cjkXw6VqAj8=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by SJ0PR11MB4847.namprd11.prod.outlook.com (2603:10b6:a03:2d9::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Thu, 10 Jun
 2021 08:52:38 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.030; Thu, 10 Jun 2021
 08:52:38 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Latvala, Petri" <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait
 for vblank before collecting CRC
Thread-Index: AQHXU3r+0BLlTn3Au0CMvXxolxn81qsJwWIAgAAI/oCAAAPTMIAAGIuggAArU4CAAussIIAAB1CA////5nA=
Date: Thu, 10 Jun 2021 08:52:38 +0000
Message-ID: <BY5PR11MB43728FBA9BCC7BDCFE9588CE89359@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
 <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
 <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB437298B9B622322E6663495E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <dc3df242-57b9-13f9-c5ab-42acadc39c86@gmail.com>
 <BY5PR11MB43727C61A55E03DA6EE2C53589359@BY5PR11MB4372.namprd11.prod.outlook.com>
 <YMHSfaK9We4Mzh54@platvala-desk.ger.corp.intel.com>
In-Reply-To: <YMHSfaK9We4Mzh54@platvala-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d39a5b55-c363-45f8-d8ec-08d92bed195e
x-ms-traffictypediagnostic: SJ0PR11MB4847:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB484739C1EC2A0C601CF006CE89359@SJ0PR11MB4847.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h/QWsd0uDYtURM0aao4N3naLob547W06yZ/hZRurbrGQKmJdUlrC94q54r3Ysu001k5j2qSYEdSTx3qCSODJyBqKwuaYcy2+EzmefgYzxeCIMJjfw8v3jPch3DyV0Z0L6CnBjEeeAREjasZ2l8P80uZBUp6RlfwiViAHTtYGxg+qdiu4xzsHMeUMbE9OBXhm3LfTl+2XQWyk1YlSWNCw/fRv/vXEHvjaR00kFYBD2GRbFnV65jB1FwmKhbGuQ7dL4mtF495+Vbn9+zEfhmAWk6QEr597/7RKs8Bp5AytTTW4RCbPix0PgnyLdy18LebF42rLDCAJ1RUeQm0tb7WU6psGsTEzmmn72nT9M6OiqwIPX/8G41V2BkXREAuXRfFyum+EUqLrHwJFY7A/7SICZE1ZVqtt6EZg09hk0CZfbmHadfD1dcNk9ucIkoRhgOQ/gKNLK3aapvDjd7Deb/A7OZyNc0cDb6ebAokvth/I5gMpALKEPrQnfNxU4oNYbYAm6Qim+dOBAGX8ysyJHVEEtDJHGloJ4QakbETOs5Jr5haIgesv0vPMxbSDGwHlWppt4ULkxIbNvtFdwBboLtQCM8yZoMaBw3esj8dw+O8nuFQCRRtFiqyX9ig/PGVGcyYxBYGE/hccXU4alZ/rid2lOAza7iQJitrBAbyeO6s623nNMyVGnhy7tkAqeu7bY/vpr/nN/3BmC6SjIrJWw2Fzcg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(366004)(39860400002)(346002)(396003)(66446008)(71200400001)(66556008)(66476007)(186003)(64756008)(4326008)(66946007)(33656002)(53546011)(6506007)(8676002)(76116006)(52536014)(107886003)(38100700002)(478600001)(316002)(966005)(54906003)(86362001)(122000001)(4744005)(5660300002)(9686003)(55016002)(83380400001)(6862004)(26005)(6636002)(2906002)(8936002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFVDYVNOOElnRys3TGlHRDZReGthU3RzSEhEQVJydTNyaU00R3d4cTlibEJy?=
 =?utf-8?B?UG9PYmE3WlNmMHB6MTZIaDhiUmFyR3lmT3JWbGM4UHRoTFNlS3h2SlBRdFR4?=
 =?utf-8?B?aS9XVllZMnhEWW1FT254VXBnQXY5aU9IbUlIb05IeXZ2YzlvK2VWNUJlaFVY?=
 =?utf-8?B?MXJWZWJwT0E2ZGREeTJLaUt0YndtTmt2eVVzSHArRkV6bDE2V09xQVQ0eGpw?=
 =?utf-8?B?VXZIc0J2bFVQeDYweFZqQVZJamYrQjIxdyt6d0l4eXVqcG0yTUloSFBUdFJ5?=
 =?utf-8?B?Yy9uVFZZV0t0Wmw0ZisxS09EL29EaWRFd0NsWDhQOUxBblF1dWh2VUh0dzVY?=
 =?utf-8?B?OG1XVW9uODdMSUJ2dTZnZktCTnVVTGFVVHhuaFN4aHpNc0ZUb3pSYmFvSTZU?=
 =?utf-8?B?RmM0Sm5JcWxjcTExUmZsSmdyc2d5Y1R2bGhGdnFMWTl6TVdSNkY3aE5Cek5i?=
 =?utf-8?B?ZmgyMlB5VkYvQ1F0b1Z4T2xXSTJqMC9CQTNXZitEMTA3YTh4U3Jock4xeGha?=
 =?utf-8?B?S25veFVVaXg1cVc3Z2tQa0tPUzJYTytHbUxnSFRiRWZ2Ymhwd0pVc2YySldZ?=
 =?utf-8?B?ZXhyZ25aS01UWm96ek9JTXo0WTh6ejd4WkVvRGhoVXlLQjFBU3E1UG5FcVZG?=
 =?utf-8?B?dHZiTnM3MDllVEtWQnBvL2lLR0hKc0NOVldPNDBOVXRMdWtXd0NmWTUrNnVZ?=
 =?utf-8?B?Q2JLeVhKOWZEcVN2NlR5TU9la1BObTBPTi9hVXZwMUtzNXIvSWpvVXJXdjRy?=
 =?utf-8?B?ajlGOVRxV1VCTGxjQThpYUlBcHVmOFp3eUZsd1Qra0xnNFUveGF5L2lESEQ5?=
 =?utf-8?B?UFZ0eFNYNnFwUlF0ZG5yWFdmUU1jbW81U056V2dITXUxU1NyYUVzM0R1cVh0?=
 =?utf-8?B?dXBLOGtJQ0lXWDFyZkxYVmJTZ2FnV2tNeFlKckpwZWZzY3paeklBcnpzRHM2?=
 =?utf-8?B?Y3d5UlI0dUtvSTRoQ0k5dWZHVEhkVEhDZGdBY3lSRVJzSFpYaVA2Z2tPOTRJ?=
 =?utf-8?B?bTBwb1NRdDdLMU1iRTRpUjFyTGUzakVhL0h0ZTQ3THlnc2lRWnUydWFCZnMw?=
 =?utf-8?B?R0xpWkVBT3FTTFpheEtoUFRzSFpFbnprMFl4L3g5R0o0K0pBQmxUdW1STW1x?=
 =?utf-8?B?emNheGlNZFFLTWloRkRrNTZGcWZvT1ZObEcwY3J3eWthZnRINk91eUFnYjNV?=
 =?utf-8?B?ZlFkMVRhUmk3NnA4aUVPL2RaWVpPVGRoUmlvcXNaTnVvZmVnWkZzZWIrRHBl?=
 =?utf-8?B?cHVJeExCZWFBdU1XSUsycE5DTzZWR1dyVExaNE1iRXFib29ndHkzYXVKb3cv?=
 =?utf-8?B?OHFReW1LUGppM081d3F0SXNobU0zVW80di83cFBhc3FBelRKdWxBZFVvOXls?=
 =?utf-8?B?NEViTmdYNy9uYXdZQmV4UDY3Q0F2bzVSZXlRc1lLeWdDZ21DRmxtME5ud3Iy?=
 =?utf-8?B?QmVjU2JRdUJMN09GUDRVUGg1bmlWUzhuckNKaWIzcENKYllhbnQzbnRsdjFQ?=
 =?utf-8?B?VkVqZllXTHE2Q3lnTVM2aVVDWmliZmU0YklldnVCVmo0MFJJdEVqc3FSenA1?=
 =?utf-8?B?MU5IeWtxOFpGNEVtSHI4aERRbE11dkRXcUlYSlZqdCtzU3V1Kyt4SDFQYkNT?=
 =?utf-8?B?VnB3Y25PYjg5OEhucWdTZjVHVTRXQXB4amdHYVMyRUltMy9LYnd4TVZjbGRD?=
 =?utf-8?B?Zmx4Mjc0RTBYcGxDL1l4akpRekJnOUFxWkNtc3ZXNGh2M0lzc2RKZjlGVGs4?=
 =?utf-8?Q?FtOaJ23XNjYV4vUJe8suf/9x3DLfz8i2OCXilv0?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d39a5b55-c363-45f8-d8ec-08d92bed195e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 08:52:38.0876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VB8boJoWGN/a1XJOe00XsCb5wzXg37/tIfcF3RIw9ANsN5N5pxAkV1WMrzHelxq+mpZBUF+Mt/lE2cfGZliptEDMH+mnVSzWrxugWvESY1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_big_fb:
 Wait for vblank before collecting CRC
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

VGhhbmsgeW91IHNvIG11Y2ggUGV0cmkuIEkgc2VlIGl04oCZcyBhIFBBU1MgZm9yIGFsbW9zdCBl
dmVyeXRoaW5nIGV4Y2VwdCBvbiBvbmUgR0xLLg0KDQpSZWdhcmRzDQpWaWR5YQ0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTGF0dmFsYSwgUGV0cmkgPHBldHJpLmxhdHZhbGFA
aW50ZWwuY29tPiANClNlbnQ6IFRodXJzZGF5LCBKdW5lIDEwLCAyMDIxIDI6MjEgUE0NClRvOiBT
cmluaXZhcywgVmlkeWEgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCkNjOiBqdWhhcGVra2Eu
aGVpa2tpbGFAZ21haWwuY29tOyBNb2RlbSwgQmhhbnVwcmFrYXNoIDxiaGFudXByYWthc2gubW9k
ZW1AaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaWd0LWRldkBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IExpbiwgQ2hhcmx0b24gPGNoYXJsdG9uLmxpbkBpbnRlbC5j
b20+DQpTdWJqZWN0OiBSZTogW2lndC1kZXZdIFtJbnRlbC1nZnhdIFtQQVRDSCBpLWctdF0gW1JG
Q10gdGVzdHMva21zX2JpZ19mYjogV2FpdCBmb3IgdmJsYW5rIGJlZm9yZSBjb2xsZWN0aW5nIENS
Qw0KDQpPbiBUaHUsIEp1biAxMCwgMjAyMSBhdCAwODozODo0MkFNICswMDAwLCBTcmluaXZhcywg
VmlkeWEgd3JvdGU6DQo+IEhlbGxvIEp1aGEtUGVra2EsDQo+IA0KPiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzkwMzg5LyNyZXY3IHNob3dzIFBBU1MgZm9yIGFsbCBD
SS4NCj4gSG93ZXZlciBJIGRvbuKAmXQgc2VlIGttc19iaWdfZmIgYWxsIHRoZSBzdWJ0ZXN0cyBy
dW5uaW5nIGluIENJLiBJbiB0aGUgDQo+IGxvZ3MgSSBzZWUgcGFzcyBmb3IgbGluZWFyLTMyYnBw
LXJvdGF0ZS0wDQoNClRoZSBkZWZhdWx0IHZpZXcgaW4gdGhlIENJIHJlc3VsdHMgb25seSBzaG93
cyB0ZXN0cyB0aGF0IGhhdmUgaXNzdWVzLiAidmlldyAtPiBzaGFyZHMgYWxsIiBmcm9tIHRoZSB0
b3Agc2hvd3MgYWxsIHRlc3RzLg0KDQpodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0lHVFBXXzU5MDcvc2hhcmRzLWFsbC5odG1sP3Rlc3RmaWx0ZXI9a21zX2JpZ19mYg0K
DQoNCi0tDQpQZXRyaSBMYXR2YWxhDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
