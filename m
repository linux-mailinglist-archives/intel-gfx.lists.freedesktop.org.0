Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BE939EE55
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 07:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E326C6E235;
	Tue,  8 Jun 2021 05:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28C6C6E075
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 05:45:44 +0000 (UTC)
IronPort-SDR: acuA+HHQV0Zq7mSqzI9Xt1bgR2QZe7IHUXR/rFzsSno1PleFLPARw1Fn57rcCleUDwQLp6X0ap
 o7xMnUQga9zw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="192102200"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="192102200"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 22:45:43 -0700
IronPort-SDR: FUprQ4K/FFhIPvTrYwiDWjYCs/lJgzrwTn3gIb2rcaNbqjRqKkNmXhCSFq7ifd6tVh7wAtIk/G
 CWpreNtsey8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="401867561"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 07 Jun 2021 22:45:43 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 22:45:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 7 Jun 2021 22:45:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 7 Jun 2021 22:44:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aw6UPcvJNHNqe/1Rt8V8qL+XvbS5amXqOrN2pmtaCFRu/qlyDkm7ya5qgFrMOKZ2IS2+qukc2OUOtYv47kgbFGaMUgdwllhaHn+p/UbcyArPyybr2iwuzbsag2YvBBc5+ic1its4hcXPKCBshl1yXMqUT8b3UkP+a5sl6nYvNwhun5A2xXZ83zfwTBPDK0wLyQWVvDiy5GvpZUkHiZnZFufUgqne8Vnf0jBifdYsZJKGDCEGA8dFxtPyY3i9QXfsB0KNM/SKT7tHAwOmDfMMFbJE/ewG3bWTM1nTZ6mX8CsnnAppNkPNNHrRCP1vazLNOY2/Xeu7Mut+ephK18Rp8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nLgQYbu2bXu9Fr+qkV1KJEDgacLLS68ahPGBdS1YDUY=;
 b=IdPHozPgqgjWs9SWyQLyMqxPAJ799nI3jQIAtcrVG41ez2MApW2B2KIZPql8pAUcSmBXk2567uAEvgyoay+cXH5kpuNGpVCwCHpS330IhHy4I9il1kUcuJJperdJh55hP1jiZ0DoIo6CSaMXZ1V6xVhcgcf8odDgamJYx+PNS+PpFgiFaNdsYwoSQv062a9NFKBiEm0O03FfU0rwtEmea2HF7lhoPZh/FsfPWVXgWWSPGqQrJ1fqS3qBGr6MOzqjfBdGF1quek3dRBzq/eeO3YDlozwtg5nVS4qB+9TRjrs+PlywISMJnG3wOMH822shgDDlcc5Z5zvLp5zv3UNPtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nLgQYbu2bXu9Fr+qkV1KJEDgacLLS68ahPGBdS1YDUY=;
 b=JFbcVi7zA/CTLsJxg/6qcNSIpmkUNJm7GsSUXOtEjNcozJjvjTPMPlEsIWVV4TLJpcI9uOEG8kUtMPfm0MHymd1U1nW5Y1cVJZ7vS7cFBk7SF/YpfSjTpMIRLv08SwgLQeWRgyJVedYfV6bKiEH5w+owe1K901yKm7gma/C1ZL0=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB4954.namprd11.prod.outlook.com (2603:10b6:806:11b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Tue, 8 Jun
 2021 05:44:37 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 05:44:37 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "mingo@redhat.com"
 <mingo@redhat.com>, "bp@alien8.de" <bp@alien8.de>
Thread-Topic: [Intel-gfx] [PATCH V3] x86/gpu: add JasperLake to gen11 early
 quirks
Thread-Index: AQHXXCg5B+tQFMBlN0+7XWyP0ogUPKsJml0A
Date: Tue, 8 Jun 2021 05:44:37 +0000
Message-ID: <SN6PR11MB3421886424BDFF8080A9C546DF379@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210608052700.394114-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210608052700.394114-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.240.204.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bddcf9bf-e6e7-46b1-d976-08d92a4080e0
x-ms-traffictypediagnostic: SA2PR11MB4954:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4954730F86EDF38F6798F6BDDF379@SA2PR11MB4954.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:324;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DtXU08FYjuoyxpU5OAT4Do8op6jlxU6UQVDF8fZKcgedGX3H67B4NOo9ggoI3hEho+pF77Ae2vgHUxIzgYg3ltUHVT3xbp3xNc+MssFuNLRGDiv9pDcma2FV2SBbgxizYMJgkbYENxJbxL4OpUYt2/P+SzzSBCU28yi9P0YJAgVHVLiYR35+GJ1fXQI0abkcj2zmdAcvq7FA+RYOAwLgg7dJjDiTmmwODTO171Uek5a2SN4mKyhFu9tA06wWNRhPECyCqhd65770WwulY/v8yP6s/4mMv6M/wkkyWIfsO93SAwNz5xwR50PLxqdZzvOb6ybPEXT+x7WKilfd2CZ1xuZeOXeQ8TOJsfk/rGhlksDvJcDlU+Zx+ldkyTggQB4lr3ZeQ6B14ikB7vnmIVh5uNuX0Wp/B5XMQj+9uAWwEd/jWVyO2I2wzk/T6DX93Ny2IO4NFnjq+GDBhdS/vLtZzY3Dd/X3AiT0qf7dNlib+B//z95Luhyqd0gfTQzhhDe70snwjdEHHVLOlEdYe4g69MPlWB87UFPLZYEejbPlxFhV0qCTRrye6nVShbaTM2zjgvW1EpnfcOU6H0Z88nf19wQBz8YAjCid/V2Y5my34RJqPz5axYoHmUIvifN8NzzDnIroIAzp5tj44Nqkal4ucg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(136003)(39860400002)(366004)(376002)(2906002)(478600001)(5660300002)(26005)(53546011)(7696005)(6506007)(8676002)(86362001)(110136005)(316002)(186003)(83380400001)(966005)(52536014)(9686003)(76116006)(122000001)(55016002)(33656002)(66556008)(71200400001)(66446008)(66476007)(66946007)(64756008)(38100700002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2FHVGNaQThEL1NuOXBPWmJzdXk4MW5KR1puRzRnQTdnYTFVZjV4YkZ2QkE3?=
 =?utf-8?B?K2JpRVNoWHFKeXRlOXFScVNTLzBCdFdyeVFadHAxdUwzUFJRdFQxR2loS01z?=
 =?utf-8?B?eFpyb1ZBR09SQy9rbU5ib2oxQTVBWlhCT2wyamdBNFp6NmxEbk55c3NyRkZ1?=
 =?utf-8?B?ajRtRjJQOW5iakI0aGdFSWg3alNuSmdUb2huUnU4RURCQ3c0Z0g0cUorRVZ5?=
 =?utf-8?B?aTVUWW1kUWwxT3Z6aDNuNnVFUXNkdUQ5OUtUY3NXNWxrTWZIVkdkUXNINUZQ?=
 =?utf-8?B?OUpwb1Z4dnpzOExhSEx6ekJXMTVvdjQrd0t0VU4yWE04YnRvU3pONm5vM0VN?=
 =?utf-8?B?SGtjSFBTUWhhd29HRDQreVlscUZ2ZVVKb0VOKzNVR1RucDBpNkZRT0xDK2kv?=
 =?utf-8?B?Nmt0Vmh1NlAzZXNXNXc0VEV3UTlPemFGeVlJS1dFNlBQQndHQk9WTVVxTWZ0?=
 =?utf-8?B?T0o4SGxEOFdXVmJ5MWVHeCtxaWF5b29wempFa3h5eUQ0Ry93TFdKWHRacFA4?=
 =?utf-8?B?KzFsVkp2TGZQalViQ3QzbG5PZUtoTnRrbFVjWVFiVC9qK2grdTlSNnhwcTJF?=
 =?utf-8?B?RTBaQnF2KzB5YnVibDhPQWJPcXdrNjBLcTZkSDRNTGwvTk9PeTEvNERXZTNM?=
 =?utf-8?B?MGJwZDM0TDJTb1h1RVF3RHhGVWZ1WmkrYndUaUIwQmxPci9xNno1dVlkQ1V3?=
 =?utf-8?B?c2V2S1FwVjhrZW5tdDdHMjV4S0owTVJZb2pNNEhKc1h4aWR1bXc3RjJVVGFm?=
 =?utf-8?B?RnYyejJaNXV0UWVzNytyRGM1WVI5cW9QcjB6Z082OUFCeklPNG9VN0xYK2VN?=
 =?utf-8?B?MS9IbVByL0lsckd3U1lLV050WGQxQzdlVFN2M0trOXM2SUZVNGZ0b1M3cXFj?=
 =?utf-8?B?Vk5EUkl2QUxla2hSZGpvZnphWmJXRngyQVBjdDRMTVpHcnIrdXNsNXVUSEhq?=
 =?utf-8?B?cXdWck5tZ2N6Z2JDb045SEpDRHRWVk9KeUtQWGRSeVY0ZHk4eElReS9UMmtp?=
 =?utf-8?B?NXFTNlBjVllFRG1ib0cxMndkM1NVQmJWMnlBdU5qVW1obENhMlovTVNFeHNM?=
 =?utf-8?B?RzhxMCtwNUJLVlMwMEhnV2UxdEN2Rm0xTVdOSmo1blBCdk9mVXBMZkhlV1Jr?=
 =?utf-8?B?cXJNTDVBdW1rQlFRUG5BQXEyL3VXU2Mwc3VNVWNpcjcva0IyRFRDRGJMS2xj?=
 =?utf-8?B?R1RqbVRsVjdNbEtHbFNrNm5uWVgwQlBWcFNXVytwY0E0Y3oxOGdWMDBjTGE0?=
 =?utf-8?B?c2lvWmx5YlByNE5CK3VHTWhRNERMZDYxRjF3cEhmVDNHN3VZdDdXb0NNcktr?=
 =?utf-8?B?MXQ5cis4MitLWE1ZZkloZkpIb3hpNzdKVWpaaEhyeGpremNLczlWTjB3cUhK?=
 =?utf-8?B?THJEdTlVaUJsNnpkaXZlUG1aUTZydUpGWHBuMEtoUlZwMWpiVkozMjV3ZEdT?=
 =?utf-8?B?UjdzdUN3MlpNWUpuUVpmQjM4aTF3V0RZNnltQ2lXdERuVW1FeDFmb2JUVXEz?=
 =?utf-8?B?QjBFVHBCc20ybERVTDNaUGRzV3RBYWRmQ1E2N3ZJMzU2ZU1nNU1lS2VJbjJW?=
 =?utf-8?B?eW5qZXlwS2IzbTBDUThYbGZnaGRwSm10NndpcHN2Z1kxc1JYd3h1YkcrRkYr?=
 =?utf-8?B?eWViWHBFam1zWGpQaFVIU0lDTk00Sy8zcXAveEErUnZwWHdUTkM2L1JvWkY3?=
 =?utf-8?B?cENwWGJpUU9HdXRSQmZoNVpKdXdpYkFhRDFRMzNEeFptM3dRUTdyV1RNNUli?=
 =?utf-8?Q?0M7YLSzWYJGYMlAPVIkkkyNaxAsw0jT6xxarXrf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bddcf9bf-e6e7-46b1-d976-08d92a4080e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 05:44:37.6989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A4yxpBEYXcizJSrt1Qd1Rmz44peP5hkxMeRczS+fuCa00twDHwB4WfMa180tqfdpq4Sxe36n/03zO7dCjU5PLr6frKNhOb+UCwmaEP6WVf7hqjjd/F3o3Lz2ytC2WeIOSAd/FgwL/FdTDs+ylVlEwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4954
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3] x86/gpu: add JasperLake to gen11 early
 quirks
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

UGxlYXNlIGlnbm9yZSB0aGlzLiBNdWx0aXBsZSBtYWlsIHNlbnQgYnkgbWlzdGFrZS4NCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFRlamFzDQo+IFVwYWRo
eWF5DQo+IFNlbnQ6IDA4IEp1bmUgMjAyMSAxMDo1Nw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgdGdseEBsaW51dHJvbml4LmRlOyBtaW5nb0ByZWRoYXQuY29tOw0KPiBi
cEBhbGllbjguZGUNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIFYzXSB4ODYvZ3B1OiBh
ZGQgSmFzcGVyTGFrZSB0byBnZW4xMSBlYXJseSBxdWlya3MNCj4gDQo+IExldCdzIHJlc2VydmUg
SlNMIHN0b2xlbiBtZW1vcnkgZm9yIGdyYXBoaWNzLg0KPiANCj4gSmFzcGVyTGFrZSBpcyBhIGdl
bjExIHBsYXRmb3JtIHdoaWNoIGlzIGNvbXBhdGlibGUgd2l0aCBJQ0wvRUhMIGNoYW5nZXMuDQo+
IA0KPiBSZXF1aXJlZCBkdWUgdG8gYmVsb3cgcmVmZXJlbmNlIHBhdGNoOg0KPiANCj4gY29tbWl0
IDI0ZWEwOThiN2MwZDgwYjU2ZDYyYTIwMDYwOGUwYjAyOTA1NmJhZjYNCj4gZHJtL2k5MTUvanNs
OiBTcGxpdCBFSEwvSlNMIHBsYXRmb3JtIGluZm8gYW5kIFBDSSBpZHMNCj4gDQo+IFYyOg0KPiAg
ICAgLSBBZGRlZCBtYWludGFpbmVyIGxpc3QgaW4gY2MNCj4gICAgIC0gQWRkZWQgcGF0Y2ggcmVm
IGluIGNvbW1pdCBtZXNzYWdlDQo+IFYxOg0KPiAgICAgLSBBZGRlZCBDYzogeDg2QGtlcm5lbC5v
cmcNCj4gDQo+IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4NCj4gQ2M6
IEluZ28gTW9sbmFyIDxtaW5nb0ByZWRoYXQuY29tPg0KPiBDYzogQm9yaXNsYXYgUGV0a292IDxi
cEBhbGllbjguZGU+DQo+IENjOiAiSC4gUGV0ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPg0KPiBD
YzogeDg2QGtlcm5lbC5vcmcNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBUZWphcyBVcGFkaHlheQ0KPiA8dGVqYXNr
dW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlheUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgYXJjaC94
ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtz
LmMgYi9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMNCj4gaW5kZXggYjU1M2ZmZTliOTg1
Li4zODgzN2RhZDQ2ZTYgMTAwNjQ0DQo+IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWly
a3MuYw0KPiArKysgYi9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMNCj4gQEAgLTU0OSw2
ICs1NDksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgaW50ZWxfZWFybHlf
aWRzW10NCj4gX19pbml0Y29uc3QgPSB7DQo+ICAJSU5URUxfQ05MX0lEUygmZ2VuOV9lYXJseV9v
cHMpLA0KPiAgCUlOVEVMX0lDTF8xMV9JRFMoJmdlbjExX2Vhcmx5X29wcyksDQo+ICAJSU5URUxf
RUhMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4gKwlJTlRFTF9KU0xfSURTKCZnZW4xMV9lYXJs
eV9vcHMpLA0KPiAgCUlOVEVMX1RHTF8xMl9JRFMoJmdlbjExX2Vhcmx5X29wcyksDQo+ICAJSU5U
RUxfUktMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4gIAlJTlRFTF9BRExTX0lEUygmZ2VuMTFf
ZWFybHlfb3BzKSwNCj4gLS0NCj4gMi4zMS4xDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
