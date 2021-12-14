Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 341DB473CD5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 06:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF60510ED2E;
	Tue, 14 Dec 2021 05:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DA910ED2E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 05:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639461556; x=1670997556;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nWr+9igb2N4eT8Ga+2nxeBygAOqvbSNcQ0Y9QICyx8c=;
 b=URz7e1VukW5/efH21sSW7sF5jA5C62hPZn7Jq/Dh/wlZ2Xqnn8LWaBya
 nlTIAmeMzAh55kt+arRiY1hcD/lza4HvulLOK0h03tWsW2y/k2OyftQKQ
 rfAcZAzSzSiVBbUJJEgipfnwYejUOSmfJhrrenirFpa2nibxYQWEvofoR
 8ifYPtQGSzImM63EzEXX5EpC6kmjU4BtE106BzlkZEGrxv4vLh8V6uxXr
 c139uRmAIn+B0o21Fls1gA/X2DhujKiH9J/8YdpLZvxu656xVV8dINMob
 HzDNWK/n7ly68DAmIq6dswrrytGLalIdYtAzftKit4WiT82EB0R2z+i++ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="299684657"
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="299684657"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 21:59:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="583260404"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2021 21:59:01 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 21:59:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 21:59:00 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 21:58:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MavH8XJbjY5vS0u5gW3m1N38Rm5A/l7MkOxQIGmCBIEN1xgVwGzTFZ/hIg7wTEfEpsrdP14BOe7+m3x3fppZifODb/k7FfsXGDbXCvwCCRfwt7+HTaO96fbfg32lc3dzUqWxV5tRhf5Z2XACxU6YvipAHK7gMw4BS8El58XP7QjODBQe8oiA3fy6MeHsSV2yJAQ9C68v+sPS7t6V/ISW2nvabnu8isdOBxIadF9WLgNAL5fWjWLSCSf0IZhI4cddD6NXats1JqCTGzV5NX3nwr39PspIl65D8cN8G1KOfcTLw5lKFqalQipoYCmiOOrSXdzEr4gXerzf2fIxNf1q6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nWr+9igb2N4eT8Ga+2nxeBygAOqvbSNcQ0Y9QICyx8c=;
 b=TGuLucJX29IPwmHvTpXXdqZsLo0nFZmoDkcXzwujKUO7x2CRT75+TpYvrvSo8ZCwboNmZtY2TQkPGfbJUTsf+C+3F/hrV3U4juM7a1jHil6nOkhRyon0UhstYpzRcSt2Mb12SImuaHDqT0A0fb87cbFYNKra0KgEl7ITdAP5/8gWyEpKo6YVsJWU6GlFMAjH0kfttMXE2pnf8riDvkpn6igcbJ3BFLhKOSKT4+46swQTsIcQNeZLiLjWMvETX/SXrVD7poOD3vJn/qnpCwXrH2q2AN5PlIl+elHyAXMAcmZ4tcYAf5IJ7xNXBhuPZTPwl0REPiT3MvhsVQ12MAVOBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWr+9igb2N4eT8Ga+2nxeBygAOqvbSNcQ0Y9QICyx8c=;
 b=ZLqcqJmwYUNzTLSL/ZXwgqNwtdkOg9kZ80wdPMKQOMaPvfjgbSqfAmMIbKhVkTeaSt3Bqi3dSndEIQ1M/lPI+9HR+7AsLKrV7sczDcoojz7+n4dwd9EAhx249MJfeQUlx52+IFke1E9WtHMg5Nmd6EhQpsAfaPWeLGccu9Kem44=
Received: from DM6PR11MB3051.namprd11.prod.outlook.com (20.177.216.95) by
 DM4PR11MB5550.namprd11.prod.outlook.com (13.101.57.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4801.14; Tue, 14 Dec 2021 05:58:55 +0000
Received: from DM6PR11MB3051.namprd11.prod.outlook.com
 ([fe80::884b:4c29:bf5a:a2cd]) by DM6PR11MB3051.namprd11.prod.outlook.com
 ([fe80::884b:4c29:bf5a:a2cd%6]) with mapi id 15.20.4778.017; Tue, 14 Dec 2021
 05:58:55 +0000
From: "Yang, Dong" <dong.yang@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request to
 intel_context twice
Thread-Index: AQHX7WUpAq71Fneg1EmGBl60QqG8nawra1YAgAQ7E6CAAIi7gIABVKrA
Date: Tue, 14 Dec 2021 05:58:55 +0000
Message-ID: <DM6PR11MB305167D0445A11B70F7DEECEF2759@DM6PR11MB3051.namprd11.prod.outlook.com>
References: <20211210013147.2256699-1-dong.yang@intel.com>
 <d8e9dfad-7665-cc29-9f53-ff350c8a402d@linux.intel.com>
 <DM6PR11MB3051330D8484CC5EA0290DB0F2749@DM6PR11MB3051.namprd11.prod.outlook.com>
 <c15f9066-4119-2f97-ed93-1fc5a8d3d0fe@linux.intel.com>
In-Reply-To: <c15f9066-4119-2f97-ed93-1fc5a8d3d0fe@linux.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3559983b-1515-4f5e-1778-08d9bec6d05c
x-ms-traffictypediagnostic: DM4PR11MB5550:EE_
x-microsoft-antispam-prvs: <DM4PR11MB55502B5FC2DB683157288AA2F2759@DM4PR11MB5550.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X3fa7RhaaQPaiwHyEvWfSzNGHBpQJby9mqItmyeuGoosbr6wwNBNrMTCgM3eyCuMhOmQEPi5RoHN/PZfazGxqsaMwemxbQMS3BoWTwN+ompyEUFvadQerln1QXXpIq1iUU0gCFU3ZJ0XSZ5RvLIE/9iqJ3sgukXsYUfU5E47WYPdMQpC6tO+NjROzJBt8GoyQYyKHPM2X+CXXy6JQ5nHdT1e0BXlpkSB+GY8E90iWqsKdAl3Axn7GurggD9poTmFng6fr4Md0PYAZrAuwpmp04pHsWaFSbsIIFRd1Qjainjg42zGvBkGgV9/GSspi4WswfnP5BCIFdSmNrhuRCJSLzy4COqdzkvk8ifcHrxlHxqZN+KdZb+N61SqyZD3zjxKAGQWSbdRNiNV0+pccjNbr1RTzM7pKlP6OzDU4Mv10LiX1dWbjFE+SiMtvB1vCV0ZPvkw+VnOkzGxsh5OMDjoFcRbaIfxYMSibZIXdyExm6RagU3ASnoY4r3cT4yzKgKFLth2530AM+mSqRtO2GyOfML+3uu9zuNcWmcHHloq9PXQEXdA7x0j+4XVToK8QTkzJpvfR39jSwIoNgS4rToH7fZKdPrjY857ytNwShLb1lGCSNuQljpTCN1LZIo10/jXu+BbNHLgd7KSX9foih6Ji3P+Zfw4bBqYSLq4PDZ7jbuWv/rVVZ1NAFeRw4VJ/h3tyAJfw7W3Qw5ChibSuMh6Xg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3051.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(7696005)(9686003)(38070700005)(71200400001)(86362001)(2906002)(26005)(83380400001)(33656002)(82960400001)(6506007)(186003)(53546011)(38100700002)(55016003)(66476007)(66946007)(66446008)(8676002)(66556008)(64756008)(110136005)(316002)(122000001)(508600001)(52536014)(8936002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkRQNHJlM1lNa1B4NHFrVm41OW1NQTRQUUFiNWVUak93V2dLbXZwbi9oNWcx?=
 =?utf-8?B?NTEyZjUwaENid3gwakVwbGtLdHBsdjVOeDVvditQN0FLVEV1M0JLMzdXRjdC?=
 =?utf-8?B?cmFGWHVKcUZZQXUrQUpRZHpEeWhHckxSSGdxR3NjSk9ZcmQveURuQlpqLzVP?=
 =?utf-8?B?bmxGREFRSHZTRzRZMXFMeFIzaDBZbXBQMHh1eUxNSDZTTkFlU1NMeDNIclpU?=
 =?utf-8?B?VHdpQldBcEVvLzlFSzdCZ3RhWnhyUktWeHdJWTBVMUdOZGdJdmc4R1JrNXU0?=
 =?utf-8?B?NzBNTk9DdzhNZGtGOGRPc0FNdmtTNHNDbCtsSGVYcHVRQjFPWXVKaFBpZHNh?=
 =?utf-8?B?bkdsK0I3OGF2aSt6ZktUS0NIeGNjYktDRXkyam5SbGxkOGhsb0ZIRGUyN3VB?=
 =?utf-8?B?cEpKV0dKam1MTU1BNnFMaFFvUDlnRFNWd1pRUVRzS0w4NFFBR3RCSGk2dTht?=
 =?utf-8?B?MzZINTRobzlmSGcvTjlwdVV0b1NuTnFEMW1TSmM5eW82RWd1aFBzRXlUbWFG?=
 =?utf-8?B?aVhxTk5pb3NKWWwxaDBVd3prSXJ4TVZnRDFmSHk0Z1ZNblI2R012WmtQUkxp?=
 =?utf-8?B?ejhVc3lMTTJSTkVoYXFmWnBWazk0dDI5MVJZWlNtYzdzaG9yaUpnV3N4QmZh?=
 =?utf-8?B?aHdQSnFXbGs4MTRabmQ3aWZyNlRiZTFtSkYvUHo3TWFtZURzSy90ZDZTY0JY?=
 =?utf-8?B?MFBQYTZnZUpCUE1LeFpxVUNWTFJnSDlLdXN6aStVZjlhbVExS1p3MkJ0cGEy?=
 =?utf-8?B?V1RBUHRmSjBUQm1ZeGVsRm4vWGptU1dYR2UvU1N5OTEycDdpcTU4b2pZdmVS?=
 =?utf-8?B?L1VnQ2JNNjNlRGYrSTRqc01udVhUNlhiSk1OUVJDN04yazZkUUprUnF0ZDF1?=
 =?utf-8?B?cDRmNUIzSHNpUmdOSjc1aXhML1BjOXJnV1IyQVZ5OTFTSGJOOWlLZjVLbHpM?=
 =?utf-8?B?V3R6Yitwdmt6ZlJXYzB3WXJWczdNYjVuM09UZ1NHaHNpSmxEbm9rTXd3TXIz?=
 =?utf-8?B?Y1lnTjZObXU4bHc1bmdyQU95bExCVjdBcmh3K2JROHFwNmdxdXFjNTV1dDJ4?=
 =?utf-8?B?NFB6eTNseWUydVNlckhnbElTeWpTanF5V042dlFyeW1kcHY3dlZFblZOYjhv?=
 =?utf-8?B?eHFMRDJ4OGo5cVBsTXBqZmxxTWRhemNISGJmL0FVM21vRi9mamljd2pYcDNl?=
 =?utf-8?B?Wmx2T3ptRFhReW1BV2ZlK2prc0xjTE9RQnlnYTRNZFBENEtoK05OSmFBdjFL?=
 =?utf-8?B?QnVGYWJ5YVZmREx0d1V1MXpOK3BJbUtnL2dRODRBUFI0VVBFNHhUWlI2Tm54?=
 =?utf-8?B?TEIyNVhENDlKZ0poNGIzWjhKdk1jKzR0NDEyYVZ1a3lnNC9ubWgzZmZ0T3RU?=
 =?utf-8?B?R01ESU5kS29YSU1hMDRyMm5uZWFtSE9hMy9BeUJNU2ZWRGN3UHZPVkF0M054?=
 =?utf-8?B?MmkzL3l4MHpycnZwekUwMXdqY2JaNlFITHdmOVBzZ2JqM3NOa2xUSVZ0aUpr?=
 =?utf-8?B?RWpXSncvekRyRFlEdGQ0R3NCcVkrNVA1QWk3N0JQbmQ0SUUzYTNMSUtsNzU1?=
 =?utf-8?B?OVAzSnFyL3pGUmtOOWNwOEFIZjNNbTRrdlk1TUhnVERUMnBOR3FOSGlaTFhW?=
 =?utf-8?B?a0svaG5DMU0xZU53NFZUdnRodXg3YzF2YlJYbUh0VlprK3pWS3pmc1JBTkNT?=
 =?utf-8?B?RDNVZ3FCM1dTdzRxNUk3bEhxWkdNUjJUNTlhNGtEbXJ1QkdPK3VGeDFNRTg0?=
 =?utf-8?B?SC9mWTB1a2NiRGtsWFhkMjY4Z3hEaUVEeFRmR1hySzJ4NE5Xb3FqL3NudVZD?=
 =?utf-8?B?Vk8rK1k2YmVVNk1pdFFwY1IzWjU1L1lLMzMwYWN3cWFnTEovRXgrYW5oWmly?=
 =?utf-8?B?Nk9rOGx4cERpR0VGRWJBdVNPQnZnbW1qc285bE4vbmdtb2QxYzRscjI2dGFR?=
 =?utf-8?B?aTdtcVlUN1JmcVh6RzZhNFBiRkVQdi9aa1dGTGgvR0o3aUZzRG9QRmVmOVdz?=
 =?utf-8?B?eHBSYzlibUd0WTlVU3dCUk5nWS9KYTBCNVd6V0tRc0lMTDdFRFFwRmY1TEQw?=
 =?utf-8?B?dlY1emRBN09STGhoa2g4UzBYT2drdXBTeFJ6R1k3bWdpRENFVEhkK0R2S1Jy?=
 =?utf-8?B?RVl4NkkwVkFjMmtpSnVQQ1dST2VaUVVGSGRnTDdneHVBVDhISVlMSSswRXJs?=
 =?utf-8?Q?sdyM3ChZ0HLyPuZk78SbWFA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3051.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3559983b-1515-4f5e-1778-08d9bec6d05c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 05:58:55.7196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3/r/2+PC2K4qullyJ+ERq219n/MO/uiVPJUiCKIVT1cwminR87JJ9HlYoJTTu262LOIYH/oBkQiLgcg+E+KQIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5550
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request
 to intel_context twice
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

VGhhbmtzIFR2cnRrbywgSSB3aWxsIHRyeSB0aGUgcGF0Y2ggeW91IG1lbnRpb25lZC4NCg0KQlRX
LCBob3cgZG8geW91IHRoaW5rIHdlIHVzZSB0aGlzIHBhdGNoIGluIG91ciBwcm9qZWN0LCBhbnkg
c2lkZS1lZmZlY3QgaXQgbWF5IGhhdmU/ICBJZiBubyBzaWRlLWVmZmVjdCB3ZSBjYW4gdGFrZSBp
dCBhcyBXQSBmb3IgdGVtcG9yYWxseSBmaXggdGlsbCB3ZSBnb3QgdGhlIGZpbmFsIHJvb3QgZml4
ZWQuDQoNClRoYW5rcywNCkRvbmcNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJv
bTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4gDQpTZW50
OiBNb25kYXksIERlY2VtYmVyIDEzLCAyMDIxIDU6MzcgUE0NClRvOiBZYW5nLCBEb25nIDxkb25n
LnlhbmdAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVj
dDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZ3Q6IERvIG5vdCBhZGQgc2FtZSBp
OTE1X3JlcXVlc3QgdG8gaW50ZWxfY29udGV4dCB0d2ljZQ0KDQoNCk9uIDEzLzEyLzIwMjEgMDE6
NTMsIFlhbmcsIERvbmcgd3JvdGU6DQo+IEkgYW0gd29ya2luZyBvbiBhIGN1c3RvbWl6ZWQga2Vy
bmVsIGJhc2VkIG9uIDUuNC4zOSwgIGlzc3VlIGNhbiBvbmx5IHJlcHJvZHVjZWQgd2hlbiBzeXN0
ZW0gZmFjaW5nIGxvdyBtZW1vcnkgcHJlc3N1cmUsIGFuZCBzeXN0ZW0gdHJ5IHRvIHJlY2xhaW0g
bWVtb3J5LCB0aGVuIHdyb25nIGRvdWJsZSBpbnNlcnQgaTkxNV9yZXFldXN0IGNvbWluZyAgZnJv
bSB0aGUgaTkxNV9nZW1fc2hyaW5rKCkgcGF0aC4NCg0KNS40IGlzIHF1aXRlIG9sZCBhbmQgdGhl
cmUgaGF2ZSBiZWVuIGZpeGVzIHRvIHRoaXMgY29kZSBzaW5jZS4gQW55IGNoYW5jZSB0aGF0IHlv
dSBjYW4gcmVwcm8gb24gZHJtLXRpcD8gV2hhdCBwcm9qZWN0IGFyZSB5b3Ugd29ya2luZyBvbj8N
Cg0KSXMgeW91ciBidWcgcGVyaGFwcyBzaW1pbGFyIHRvIHdoYXQgYzc0NGQ1MDM2M2I3ICgiZHJt
L2k5MTUvZ3Q6IFNwbGl0IHRoZSBicmVhZGNydW1iIHNwaW5sb2NrIGJldHdlZW4gZ2xvYmFsIGFu
ZCBjb250ZXh0cyIpIGZpeGVkPyBBcyB0aGUgY29tbWl0IHNheXM6DQoNCiIiIg0KICBGdXJ0aGVy
bW9yZSwgdGhpcyBjbG9zZXMgdGhlIHJhY2UgYmV0d2VlbiBlbmFibGluZyB0aGUgc2lnbmFsaW5n
IGNvbnRleHQNCiAgd2hpbGUgaXQgaXMgaW4gdGhlIHByb2Nlc3Mgb2YgYmVpbmcgc2lnbmFsZWQg
YW5kIHJlbW92ZWQ6DQoiIiINCg0KPiANCj4gaTkxNV9yZXF1ZXN0X2VuYWJsZV9icmVhZGNydW1i
KzB4MTM2LzB4MTRhDQo+IGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKzB4NDcvMHhiMA0K
PiBlbmFibGVfc2lnbmFsaW5nKzB4NjYvMHg4MA0KPiBpOTE1X2FjdGl2ZV93YWl0KzB4YzEvMHgx
NTANCj4gX19pOTE1X3ZtYV91bmJpbmQrMHgxNy8weDFhMA0KPiBpOTE1X3ZtYV91bmJpbmQrMHg0
Ny8weGMwDQo+IGk5MTVfZ2VtX29iamVjdF91bmJpbmQrMHgxODkvMHgyOTANCj4gaTkxNV9nZW1f
c2hyaW5rKzB4MTM5LzB4NDYwDQo+ID8gX19wbV9ydW50aW1lX3Jlc3VtZSsweDUzLzB4NzANCj4g
aTkxNV9nZW1fc2hyaW5rZXJfc2NhbisweDljLzB4YjANCj4gZG9fc2hyaW5rX3NsYWIrMHgxNGYv
MHgyYjANCj4gc2hyaW5rX3NsYWIrMHhhNy8weDJhMA0KPiBzaHJpbmtfbm9kZSsweGQxLzB4NDEw
DQo+IGJhbGFuY2VfcGdkYXQrMHgyYjcvMHg1MDANCj4ga3N3YXBkKzB4MWUyLzB4M2IwDQo+IA0K
PiBJIGJlbGlldmUgaXQncyBub3QgcmVsYXRlZCB0byB0aGUgY2UtPnNpZ25hbF9sb2NrLCAgdGhl
IGxvY2sgc2hvdWxkIHdvcmtzIG5vcm1hbGx5Lg0KPiANCj4gVGhlIGk5MTVfcmVxdWVzdF9lbmFi
bGVfYnJlYWRjcnVtYigpIGNhbiBiZSBpbnZva2VkIGJ5IHNldmVyYWwgY29udGV4dCwgbGlrZSBj
YWxsZWQgZnJvbSBpb2N0bCgpLCBmcm9tIGludGVycnVwdCBjb250ZXh0LCBhbmQgZnJvbSBtZW1v
cnkgc3dhcCB0aHJlYWQsIEkgc3VnZ2VzdCBhZGQgYSBkb3VibGUgY2hlY2sgYmVmb3JlIGluc2Vy
dCBpOTE1X3JlcXVlc3QgdG8gdGhlIGxpc3QsIGl0J3MgaGFyZCB0byBhc3N1cmUgdmFsaWQgY2Fs
bCBmcm9tIGFsbCB0aGUgcGF0aHMsIGJ1dCBhZGQgY2hlY2smcHJvdGVjdCBjYW4gYXZvaWQgdGhl
IGNyaXRpY2FsIGVmZmVjdCwgIGJlY2F1c2UgYWRkIHNhbWUgaTkxNV9yZXF1ZXN0IHR3aWNlIHdp
bGwgdHJpZ2dlciBhIGRlYWQgbG9vcCBpbiBzaWduYWxfaXJxX3dvcmsoKSAsIGFuZCB0aGUgbG9v
cCB3aWxsIG5ldmVyIGJyZWFrIGNvbnRpbnVlIHRoZSBpOTE1X3JlcXVlc3QuIGh3c3Bfc2Vxbm8g
YmUgY2hhbmdlZCwgYW5kIGludmFsaWQgYWRkcmVzcyBhY2Nlc3MgZXJyb3IgcmVwb3J0ZWQgZm9s
bG93ZWQgYnkgc3lzdGVtIHBhbmljLg0KDQpNYXliZSwgYnV0IEkgd2FzIHBvaW50aW5nIG91dCBk
b3VibGUgaW5zZXJ0X2JyZWFkY3J1bWIgaXMgYWxyZWFkeSBwcm90ZWN0ZWQgd2hlbiBjYWxsZWQg
aW5zaWRlIGk5MTVfcmVxdWVzdF9lbmFibGVfYnJlYWRjcnVtYiAtIGJ5IHRoZSB2aXJ0dWUgb2Yg
dGhlIHNwaW5sb2NrIGFuZCBJOTE1X0ZFTkNFX0ZMQUdfU0lHTkFMLiBTbyBtYXliZSBhIHJhY2Ug
d2l0aCByZW1vdmUgb3Igc29tZXRoaW5nLCBidXQgaXQgbG9va3MgdW5saWtlbHkgaXQgaXMgc2lt
cGxlIGRvdWJsZSBhZGQgZHVlIHBhcmFsbGVsIGVuYWJsZW1lbnQuDQoNClJlZ2FyZHMsDQoNClR2
cnRrbw0KDQo+IA0KPiBUaGFua3MsDQo+IERvbmcNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRl
bC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTAsIDIwMjEgNDo1MSBQTQ0KPiBUbzog
WWFuZywgRG9uZyA8ZG9uZy55YW5nQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZ3Q6
IERvIG5vdCBhZGQgc2FtZSANCj4gaTkxNV9yZXF1ZXN0IHRvIGludGVsX2NvbnRleHQgdHdpY2UN
Cj4gDQo+IA0KPiBPbiAxMC8xMi8yMDIxIDAxOjMxLCBkb25nLnlhbmdAaW50ZWwuY29tIHdyb3Rl
Og0KPj4gRnJvbTogIllhbmcsIERvbmciIDxkb25nLnlhbmdAaW50ZWwuY29tPg0KPj4NCj4+IFdp
dGggdW5rbm93IHJhY2UgY29uZGl0aW9uLCB0aGUgaTkxNV9yZXF1ZXN0IHdpbGwgYmUgYWRkZWQN
Cj4gDQo+IFdoYXQgZG8geW91IG1lYW4gd2l0aCB1bmtub3duIGhlcmU/DQo+IA0KPj4gdG8gaW50
ZWxfY29udGV4dCBsaXN0IHR3aWNlLCBhbmQgcmVzdWx0IGluIHN5c3RlbSBwYW5pYy4NCj4+DQo+
PiBJZiBub2RlIGFscmVheSBleGlzdCB0aGVuIGRvIG5vdCBhZGQgaXQgYWdhaW4uDQo+IA0KPiBO
b3RlIHRoZSBjYWxsIGNoYWlucyBhcmUgdW5kZXIgY2UtPnNpZ25hbF9sb2NrIGFuZCBwcm90ZWN0
aW5nIGZyb20gZG91YmxlIGFkZCBBRkFJQ1Q6DQo+IA0KPiBzdGF0aWMgdm9pZCBpbnNlcnRfYnJl
YWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkgeyAuLi4NCj4gCWlmICh0ZXN0X2JpdChJ
OTE1X0ZFTkNFX0ZMQUdfU0lHTkFMLCAmcnEtPmZlbmNlLmZsYWdzKSkNCj4gCQlyZXR1cm47DQo+
IC4uLg0KPiAJc2V0X2JpdChJOTE1X0ZFTkNFX0ZMQUdfU0lHTkFMLCAmcnEtPmZlbmNlLmZsYWdz
KTsNCj4gDQo+IA0KPiBib29sIGk5MTVfcmVxdWVzdF9lbmFibGVfYnJlYWRjcnVtYihzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSkgeyAuLi4NCj4gCXNwaW5fbG9jaygmY2UtPnNpZ25hbF9sb2NrKTsN
Cj4gCWlmICh0ZXN0X2JpdChJOTE1X0ZFTkNFX0ZMQUdfQUNUSVZFLCAmcnEtPmZlbmNlLmZsYWdz
KSkNCj4gCQlpbnNlcnRfYnJlYWRjcnVtYihycSk7DQo+IAlzcGluX3VubG9jaygmY2UtPnNpZ25h
bF9sb2NrKTsNCj4gDQo+IA0KPiB2b2lkIGk5MTVfcmVxdWVzdF9jYW5jZWxfYnJlYWRjcnVtYihz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkgeyAuLi4NCj4gCXNwaW5fbG9jaygmY2UtPnNpZ25hbF9s
b2NrKTsNCj4gCWlmICghdGVzdF9hbmRfY2xlYXJfYml0KEk5MTVfRkVOQ0VfRkxBR19TSUdOQUws
ICZycS0+ZmVuY2UuZmxhZ3MpKSB7DQo+IAkJc3Bpbl91bmxvY2soJmNlLT5zaWduYWxfbG9jayk7
DQo+IAkJcmV0dXJuOw0KPiAJfQ0KPiANCj4gdm9pZCBpbnRlbF9jb250ZXh0X3JlbW92ZV9icmVh
ZGNydW1icyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsDQo+IAkJCQkgICAgICBzdHJ1Y3QgaW50
ZWxfYnJlYWRjcnVtYnMgKmIpIHsgLi4uDQo+IAlzcGluX2xvY2tfaXJxc2F2ZSgmY2UtPnNpZ25h
bF9sb2NrLCBmbGFncyk7DQo+IA0KPiAJaWYgKGxpc3RfZW1wdHkoJmNlLT5zaWduYWxzKSkNCj4g
CQlnb3RvIHVubG9jazsNCj4gDQo+IAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUocnEsIHJuLCAm
Y2UtPnNpZ25hbHMsIHNpZ25hbF9saW5rKSB7DQo+IAkJR0VNX0JVR19PTighX19pOTE1X3JlcXVl
c3RfaXNfY29tcGxldGUocnEpKTsNCj4gCQlpZiAoIXRlc3RfYW5kX2NsZWFyX2JpdChJOTE1X0ZF
TkNFX0ZMQUdfU0lHTkFMLA0KPiAJCQkJCSZycS0+ZmVuY2UuZmxhZ3MpKQ0KPiAJCQljb250aW51
ZTsNCj4gDQo+IFRoZSBsYXN0IG9uZSBpbiBzaWduYWxfaXJxX3dvcmsgaXMgZ3VhcmRlZCBieSB0
aGUgX19pOTE1X3JlcXVlc3RfaXNfY29tcGxldGUgY2hlY2suDQo+IA0KPiBTbyBJIHRoaW5rIG1v
cmUgY29udGV4dCBpcyBuZWVkZWQgb24gaG93IHlvdSBmb3VuZCB0aGlzIG1heSBiZSBhbiBpc3N1
ZS4NCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+Pg0KPj4gU2lnbmVkLW9mZi1i
eTogWWFuZywgRG9uZyA8ZG9uZy55YW5nQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDMgKysrDQo+PiAgICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMNCj4+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYw0KPj4gaW5kZXggMjA5Y2YyNjViZjc0Li45Yzdi
YzA2MGQyYWUgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9i
cmVhZGNydW1icy5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVh
ZGNydW1icy5jDQo+PiBAQCAtMzg3LDYgKzM4Nyw5IEBAIHN0YXRpYyB2b2lkIGluc2VydF9icmVh
ZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQ0KPj4gICAgCQl9DQo+PiAgICAJfQ0KPj4g
ICAgDQo+PiArCWlmICgmcnEtPnNpZ25hbF9saW5rID09IHBvcykNCj4+ICsJCXJldHVybjsNCj4+
ICsNCj4+ICAgIAlpOTE1X3JlcXVlc3RfZ2V0KHJxKTsNCj4+ICAgIAlsaXN0X2FkZF9yY3UoJnJx
LT5zaWduYWxfbGluaywgcG9zKTsNCj4+ICAgIAlHRU1fQlVHX09OKCFjaGVja19zaWduYWxfb3Jk
ZXIoY2UsIHJxKSk7DQo+Pg0K
