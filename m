Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AB7852DF4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 11:34:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9D110E23E;
	Tue, 13 Feb 2024 10:34:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q7fmOU6K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C8AE10E137
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 10:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707820483; x=1739356483;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=S3eQ+I8+m191++KEM7zJxFUqLX1kt1xJaAd/QGuHWBI=;
 b=Q7fmOU6K/ELDUtC+22XM2F5dZTH1fdKa5Gqu5dbu31mgG7wQSJ/XFGlT
 0OfPNvTnZzUdZb55jbNAiMWmWYSrChWA04Z/WL/ONiZxHCcXbB2FPzxs+
 Ke0XYfdWMjMIjSl8CRk5Q1iIT5KKJ5iVUyBnyHcMW71gW7zph5+9GFtRz
 AbRjingvHJdfW1ni+PZBp7HDSblZ0ADF1ecxzxSA9Rn7FiQsg8gb9Izh1
 l/ERqZd4I4Mj7SN5wK2wffhTn1jjLCgzu4fy8HphR46A9PWA/en+JidV8
 jPTlm2rPETo2evJrCFd2iXD9al74/8ZrXwGu39x8ENbFBhhQhlclg4yw+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="4785855"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="4785855"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 02:34:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="40310586"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 02:34:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 02:34:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 02:34:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 02:34:42 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 02:34:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BBWcrEO6YTI3cNjVUbuloWFfWGXIjKZ2HKOiG4/Cgm4cVLC604CPGndrEv7HuksUNcRICN+UJ/2+lelJRbmv0wyk/Q9cvMXqUTEL0lx65BTPzMFZqVYDtKqdRlX1J2/Yvd5vBKFe/XebItev9wY9pRV2gJFNEdz1/zRauqB8PLZyGVWYf/HZQouK5RcSr83+jCa6fAZo4ZNYNtfrkHYuA3fYvkr8eMZs9oJiNsO63v25nKQGOqZPNu49sgdFGJK8Uh58z/JL4QAHHNLtH0V8d+an1ET2aKRhyk+lmwm77mE/JRV4tlmygp9RZUW2pMTJu2nTbBIkaqLvN35vUO5fng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3eQ+I8+m191++KEM7zJxFUqLX1kt1xJaAd/QGuHWBI=;
 b=hxqmqTveqW5K8NkSdeRa+Xmii0bo0g+nbS0gYDw4ztPd7QbQRnt+MQsU4MxTjBMqz1l1eM7D7cXZkC5okIxlW79mdWI2pW4jrXZhiDV924Ma0iB9vHMKh4mDZSexmkEQXpCdzaJ3Kgrk+qk9GEMgaCnvuT4mM3nxIoqxGbiAtnm5A+O2Nps9Y3rwNMfXv/xruINA7alySktYiBT6AzfZCWaUGXuCL+tZbmzN/SDGtL+PNAqTUsINHRomUhm8P/uqy+b/HVQ1NpsRTAbdd0QmBEO/a8j1KH7mx3WlfCHgHxOCwliw8agBRcqcX15/+LBZGe7jp+Yqhy2RAXdEGGhocg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BL1PR11MB5544.namprd11.prod.outlook.com (2603:10b6:208:314::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 10:34:39 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7270.033; Tue, 13 Feb 2024
 10:34:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/5] drm/i915: Include the CRTC name in the ELD buffer
 mismatch
Thread-Topic: [PATCH 2/5] drm/i915: Include the CRTC name in the ELD buffer
 mismatch
Thread-Index: AQHaW4cvCuKFl+OpGUi/DuTryznWfrEIGVQQ
Date: Tue, 13 Feb 2024 10:34:39 +0000
Message-ID: <MW4PR11MB7054432344D37C3BD71CB5EBEF4F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240209183809.16887-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BL1PR11MB5544:EE_
x-ms-office365-filtering-correlation-id: 9be77c6b-29e8-4b3e-ff8d-08dc2c7f6211
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l+hc17xnNSVEPexT8Lh4mck8y8CKVXqQe/hqj/l3cPoPICrA61fKT6t9Yn+HyCFM8dSklheLIuKBhKPaWH5CS+2fhS0FHaHZLklrTwYNIVap7iPMA6W8SQg/lX9L+Y9V6vH9jdaVHfaozSYOvCwtGhZmUDupoqMst9DJuBR1r6Vq5LVFB3krHj/bvyp4GWH1C75UcrXifCtWBDtuZ101G0Ga1VWjYeKiS+rAnT0iiEDmzFVCM3UH+IT6UEmud3neGGcwTnWDinwxnAivN1hIVLfeSdxwRD84R4nWuhZWasHSG0GN1JnhplGusPXkDdPctLgkgiyX1AEcX9Mxw0NykY1/HlGOGejOuVEJ/dF1Q6Rf8f0UL8s5CcYiM28XDK3TK/JcOCc98UCIWPrL8yRfbU8TCuiHegy2pFcxNdYWZGEumdRad++rdZUSboqnTnc7sP+3YtYOvLx7cHG+qoxYqES4cbMu0eKRZDl7q8omZcau1LrdYhn+tC38W9sOcPjtX/bOdnIyXtmhpg64K5bGFUiSWbuaUk1Ih+I0HuRVcIBiB/xA88MWgCQXNttT8JW9koQb/JHTOl+Kmpl2bnjIAiT7HSJqres6fBzpPBx32e5xymtStlc5tljrjyJ/M88+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(346002)(366004)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(38070700009)(41300700001)(55016003)(76116006)(110136005)(66446008)(64756008)(7696005)(6506007)(66476007)(66556008)(66946007)(316002)(9686003)(8936002)(8676002)(52536014)(478600001)(5660300002)(53546011)(2906002)(82960400001)(33656002)(86362001)(122000001)(38100700002)(26005)(71200400001)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzdqS0RXamY1WVN2bWtLMHZZK2xBL3pncXZCZERTRFZ3SVJDbjVoYTlKTmVs?=
 =?utf-8?B?MlI3Y2xPdFphVDBIR0hTdVludlZFb2RsdUVtTzN6QnU0aEdOUHNQTG9IMDJZ?=
 =?utf-8?B?aFVEVDJpYk5PRVBEb1dOUGJyWEhWaEhRV1I1U2VPUDN2Z0ZVVjUrejhDN2NS?=
 =?utf-8?B?ZE12RmhKcEpkekNiczNhUTNPRDg2R1pTYVIzNU0rSktRTlE5cjBHRXRmcG9P?=
 =?utf-8?B?YlFka2xEeG9rQzNDd2dqdHB5WmVFMVlKamt4TGFUa2tzeGgvYlRBQitVaDN2?=
 =?utf-8?B?ZVkwbmR5Q1IzcUZld3pZMmF0TWNmWXZlZTNKaDgwRmRxZE1aMTFmMUFDMDFM?=
 =?utf-8?B?S0pTVlJQdmVyOExuZlBLY09HM2s0RnlVZFl1eDRpNHlLQjF3RmV0VWpidUVF?=
 =?utf-8?B?VklCSCswREg4R0RvVjdYSEVSYW1HNWdBMkgxYUUxc3d2aGIxNlFsNGY5SDZt?=
 =?utf-8?B?NFlhU1QxLzJpRkdqcDN1M29yL2FUR0pRaFA4NlFkU0FMNm1RUjRsamRjalhF?=
 =?utf-8?B?VU9iY29JSC9wekd1WklhQm5ZOW9vNkFvVHo2UkdwQmFoZFRTTWR6SWo0cW1u?=
 =?utf-8?B?YW03RERlMnVROUo0bVlVWnF5OXZsYlNFNXovS1MvYXltdDVLcU1yT002bEZR?=
 =?utf-8?B?amZhbmtFT2NPb3dSWjhobWlDWkt2c1VKTlJucDRHNmJLSEkzVUx2SzE5V1pD?=
 =?utf-8?B?blNBc3FjKzRGMkJXVXZlTmUyTzhDK1ZYQ051UTdCcWJTTk5KREN4cHdDRUhl?=
 =?utf-8?B?aThEdGl6bTIyNk1ZdTVzcDE0T09WY0JhdEYvU3dyWExsaVo0blV3T1JMNlpV?=
 =?utf-8?B?ZHJjYVRzMFVRUkFtU1hPTXJiQlU2YStaTWFVWVc0elcrYVh5ajBHdzNxNkd1?=
 =?utf-8?B?d1V1STc1RzU1SUExek5Va0NlZUkwMU44a2dRRWpPVWdwdUREanRpaFpaOS9p?=
 =?utf-8?B?Ymt5NnJlMVM3VTlqaTFGbllDRDExQitBN0xBam9pRGNPeEplTWtIcVFxclp4?=
 =?utf-8?B?M3JQS3VOUHVwL25XeW94NjZvSy8rUGNTWDNSVWViQmQ4MzNvdklVdTRxTkhB?=
 =?utf-8?B?VWpOVlp6V1NDZUc4TGNXSCt5elZHMllTZTFKd2tLeFovUHBabk5Jd3lZdzhl?=
 =?utf-8?B?cFFYeUlucXFsMlkzb0k4Mnc5Z1VtNVZoUGx5TXVPQjJnbkNxUHZJTVdhM3Zn?=
 =?utf-8?B?d25IUnhoREY2YjV2ZUV5MGM3a0NkSXgvOGhWTGFhUmhtMUVyOU0zK3lqUjZz?=
 =?utf-8?B?Y0tiTzdVOGQrN1dWdEZOd1padXVuaWtEaTcybjFZWFFNVDY2Nkd1ZWxHZ1ZX?=
 =?utf-8?B?MldINVE3eTZoUHZQS2V6aFFxYjRzS2hHaDVxTWc0TlY3bFc1M2gyQTh5QjdK?=
 =?utf-8?B?K1Y4NERhR3FWUk5IS24xeHlUa3FKM1pka0R0cnFMM2dDSWdRanIyMEsrdW5D?=
 =?utf-8?B?b2J4K3RZVVA0YVdCVGdqRUhZQ0JMWnA3MnFhQkdDSVJzdFVETUgrYk1pa2Y1?=
 =?utf-8?B?Z2hZek16MU1JR2w4eVJ2SVZKQm5sd25GdlRsQ1RxdEU2YmYySnZvd3pJdUVh?=
 =?utf-8?B?N3ErbnFpbDN5cTBYVEwzYUdJeVphcTRHRy9lYjNIaHFuS0o3R2N6aHhBSm5i?=
 =?utf-8?B?NGc5VTBFTXlxOHZIenVLZFRkV09OOVVaeW9pUmFtRFArTzcxeUFhRkJTVkEw?=
 =?utf-8?B?VlZhb2xMY1lNUmpNWnl4WVdTbVNyTTNOQW9yVS9Lc0x4YkV2TmFpL1o0WGo3?=
 =?utf-8?B?Q2NxRmJ2d21TL3hqdlRXeENCbldoL2Fab1E0NW5QR0IvYm1jN2Vqdy9ScXRV?=
 =?utf-8?B?TFZoYUVvMldQbDZ2UjB4YmY0bnhzSXdDSFFiaHBOTVlMQW1aRnJOYWdKTXZu?=
 =?utf-8?B?Y2RsZHJRVEtNVjdSRDVib1VMMlNZb0NtUExQeDgxaTBMRUJjdXY1QTZnMDFm?=
 =?utf-8?B?U21WMGRlT1BVODBSaFlSU25tZmxIS2RTMWt4QnhPZkpiS1BZNFRIbU9sbkpH?=
 =?utf-8?B?VEVSNkEyUi9BdVJJSktzcWZiREVIWG5JbVVaR1orS2F3YVZJWXdlQkJvVE4y?=
 =?utf-8?B?OVJET0ZlZ3BaeDdkSndSR09PMDd1MDRPZnRYQXZxay8xdVh4d1gxVHEvenBO?=
 =?utf-8?Q?vWGH5H4GHVyb9kC4MrKuqvY1K?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9be77c6b-29e8-4b3e-ff8d-08dc2c7f6211
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2024 10:34:39.7471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vfHWWsEGBxN+hS5jH3i/iMaGuiXprqzhvtkeIHxtBSsIjbH2h4uisn/fcFtSeu56BzJMX37a7Mw/9Zm3vaUT1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5544
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogRnJpZGF5LCBGZWJydWFyeSA5LCAyMDI0IDg6MzggUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDIvNV0gZHJtL2k5
MTU6IEluY2x1ZGUgdGhlIENSVEMgbmFtZSBpbiB0aGUgRUxEIGJ1ZmZlciBtaXNtYXRjaA0KPiAN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IE1vc3QgY3J0YyBzdGF0ZSBtaXNtYXRjaGVzIGluY2x1ZGUgdGhlIENSVEMgaWQrbmFt
ZSBpbiB0aGUgcHJpbnRzLiBBbHNvIGluY2x1ZGUgaXQgaW4gdGhlIEVMRCBidWZmZXIgbWlzbWF0
Y2ggcHJpbnRzLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE0ICsrKysrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZjIwNzI4YjdmNjdiLi4x
ZDM4MWZhOTZjODQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IEBAIC00ODUxLDEwICs0ODUxLDEyIEBAIG1lbWNtcF9kaWZmX2xlbihj
b25zdCB1OCAqYSwgY29uc3QgdTggKmIsIHNpemVfdCBsZW4pICB9DQo+IA0KPiAgc3RhdGljIHZv
aWQNCj4gLXBpcGVfY29uZmlnX2J1ZmZlcl9taXNtYXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsDQo+IC0JCQkgICAgYm9vbCBmYXN0c2V0LCBjb25zdCBjaGFyICpuYW1lLA0K
PiArcGlwZV9jb25maWdfYnVmZmVyX21pc21hdGNoKGJvb2wgZmFzdHNldCwgY29uc3Qgc3RydWN0
IGludGVsX2NydGMgKmNydGMsDQo+ICsJCQkgICAgY29uc3QgY2hhciAqbmFtZSwNCj4gIAkJCSAg
ICBjb25zdCB1OCAqYSwgY29uc3QgdTggKmIsIHNpemVfdCBsZW4pICB7DQo+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+ICsN
Cj4gIAlpZiAoZmFzdHNldCkgew0KPiAgCQlpZiAoIWRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9L
TVMpKQ0KPiAgCQkJcmV0dXJuOw0KPiBAQCAtNDg2Myw3ICs0ODY1LDggQEAgcGlwZV9jb25maWdf
YnVmZmVyX21pc21hdGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAkJ
bGVuID0gbWVtY21wX2RpZmZfbGVuKGEsIGIsIGxlbik7DQo+IA0KPiAgCQlkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwNCj4gLQkJCSAgICAiZmFzdHNldCByZXF1aXJlbWVudCBub3QgbWV0IGlu
ICVzIGJ1ZmZlclxuIiwgbmFtZSk7DQo+ICsJCQkgICAgIltDUlRDOiVkOiVzXSBmYXN0c2V0IHJl
cXVpcmVtZW50IG5vdCBtZXQgaW4gJXMgYnVmZmVyXG4iLA0KPiArCQkJICAgIGNydGMtPmJhc2Uu
YmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBuYW1lKTsNCj4gIAkJcHJpbnRfaGV4X2R1bXAoS0VS
Tl9ERUJVRywgImV4cGVjdGVkOiAiLCBEVU1QX1BSRUZJWF9OT05FLA0KPiAgCQkJICAgICAgIDE2
LCAwLCBhLCBsZW4sIGZhbHNlKTsNCj4gIAkJcHJpbnRfaGV4X2R1bXAoS0VSTl9ERUJVRywgImZv
dW5kOiAiLCBEVU1QX1BSRUZJWF9OT05FLCBAQCAtNDg3Miw3ICs0ODc1LDggQEANCj4gcGlwZV9j
b25maWdfYnVmZmVyX21pc21hdGNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwN
Cj4gIAkJLyogb25seSBkdW1wIHVwIHRvIHRoZSBsYXN0IGRpZmZlcmVuY2UgKi8NCj4gIAkJbGVu
ID0gbWVtY21wX2RpZmZfbGVuKGEsIGIsIGxlbik7DQo+IA0KPiAtCQlkcm1fZXJyKCZkZXZfcHJp
di0+ZHJtLCAibWlzbWF0Y2ggaW4gJXMgYnVmZmVyXG4iLCBuYW1lKTsNCj4gKwkJZHJtX2Vycigm
ZGV2X3ByaXYtPmRybSwgIltDUlRDOiVkOiVzXSBtaXNtYXRjaCBpbiAlcyBidWZmZXJcbiIsDQo+
ICsJCQljcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgbmFtZSk7DQo+ICAJCXBy
aW50X2hleF9kdW1wKEtFUk5fRVJSLCAiZXhwZWN0ZWQ6ICIsIERVTVBfUFJFRklYX05PTkUsDQo+
ICAJCQkgICAgICAgMTYsIDAsIGEsIGxlbiwgZmFsc2UpOw0KPiAgCQlwcmludF9oZXhfZHVtcChL
RVJOX0VSUiwgImZvdW5kOiAiLCBEVU1QX1BSRUZJWF9OT05FLCBAQCAtNTA3MSw3ICs1MDc1LDcg
QEANCj4gaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3VycmVudF9jb25maWcsDQo+ICAJQlVJTERfQlVHX09OKHNpemVvZihjdXJyZW50X2Nv
bmZpZy0+bmFtZSkgIT0gKGxlbikpOyBcDQo+ICAJQlVJTERfQlVHX09OKHNpemVvZihwaXBlX2Nv
bmZpZy0+bmFtZSkgIT0gKGxlbikpOyBcDQo+ICAJaWYgKCFpbnRlbF9jb21wYXJlX2J1ZmZlcihj
dXJyZW50X2NvbmZpZy0+bmFtZSwgcGlwZV9jb25maWctPm5hbWUsIChsZW4pKSkgeyBcDQo+IC0J
CXBpcGVfY29uZmlnX2J1ZmZlcl9taXNtYXRjaChkZXZfcHJpdiwgZmFzdHNldCwgX19zdHJpbmdp
ZnkobmFtZSksIFwNCj4gKwkJcGlwZV9jb25maWdfYnVmZmVyX21pc21hdGNoKGZhc3RzZXQsIGNy
dGMsIF9fc3RyaW5naWZ5KG5hbWUpLCBcDQo+ICAJCQkJCSAgICBjdXJyZW50X2NvbmZpZy0+bmFt
ZSwgXA0KPiAgCQkJCQkgICAgcGlwZV9jb25maWctPm5hbWUsIFwNCj4gIAkJCQkJICAgIChsZW4p
KTsgXA0KPiAtLQ0KPiAyLjQzLjANCg0K
