Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BFC5EC2B5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 14:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DCE10E920;
	Tue, 27 Sep 2022 12:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0300A10E920
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 12:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664281844; x=1695817844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BqxlhODEM8qrWhCbX3fxnv5m0HTwn3sHWj4Zbp8YDMc=;
 b=XE3tI8fR4S16dkALIGrHRD9b4G41fITqTS9CLFyWcC7fID8Py0rN0emr
 otQap9znDCsDj32KOW9U9td+F9FxCMhmUJvHM8JsvjnhpVFHay3Ha2PK/
 YzT7ZkAyF4tavMd4+JeKmdX+fKn3sm6eDUHUFibzChGTl0ovhTK/rA6Hb
 VI2ri758aIfaYIRAVuwAhU/fsO3TaUkx7EgKXcaYQ+VIdzPZvlDw7+ls8
 GWSL4Lza7aeIYoMpHs+Z9JXGh5aytA33REESCX7N0ZT+8N/VJMk5az0fI
 iwYC3F681fOymbWgGjO6bXOuxDwxcmswI4tpFdOVKuMXlh4kn9nVxUJUb w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="302784112"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="302784112"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 05:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="866552430"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="866552430"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 27 Sep 2022 05:30:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 05:30:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 05:30:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 05:30:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 05:30:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igY+ucPYjgeTzeNAmIJPXQB5ix/enSp4v3Ic1X77vX10CD7ZIUBWMgFIBo+PNaG5F4ZKr32EVCPPn+1xk+sG8IFTyKY6aAxVUNk5g3JAZzticJMkHZxTzHZ1IYeEL4U6brgOjM0Hyv6MB8xaqkqi8NzAh7dZ7gywvVl4FXhsV6y65bXO4Uum46xrJQZLrhLkTxUUA6+4K9GFKZGPAvvowzDMgPMuq3pDspfKJvbXEWE4GyVQ5tzKoyqcOMdLoHqoA7GdpxLSq/PJQT9hKpmt8Bi1oOjgXcdpEIQyVDcCT/NYeu0i4yGAqRJ5VvEQNh3Li/2EVt2qiS3d0le1Yw6kCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BqxlhODEM8qrWhCbX3fxnv5m0HTwn3sHWj4Zbp8YDMc=;
 b=lJnA+FpvDB442PW+TkCCuEwDr0vY2EDirDvQq2GvuL7MzffXGfb+eEFCFMasSNV5PG8Sb1oTPupfAKfVcHdF8r8GPXF6mhQPUqlNMbidiWEakCyAe7pHvigSybR0oubpvwQbjtCrZQJ7Vx3cYf277PKjTnoG69K+G7n5G+y69RSsX3Xpn4PO9mvP2Kl9f0ACuGbeBLUe+014C8EAix8UyAc/XWWI7y1RjTuTTH/g2sZpTQIfKfkxjokum7j3uvCTiXNvMVanGXbLMJ00OlKdNOTP1GqacBtV6kEaQPIWRZV6pwQf7TbF1YFQ379wXRfFTQdQFGEY1IYXfrYO7v6C5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6207.namprd11.prod.outlook.com (2603:10b6:208:3c5::21)
 by MN0PR11MB6058.namprd11.prod.outlook.com (2603:10b6:208:376::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.15; Tue, 27 Sep
 2022 12:30:37 +0000
Received: from MN0PR11MB6207.namprd11.prod.outlook.com
 ([fe80::3a13:6e49:f5c9:acfe]) by MN0PR11MB6207.namprd11.prod.outlook.com
 ([fe80::3a13:6e49:f5c9:acfe%5]) with mapi id 15.20.5654.024; Tue, 27 Sep 2022
 12:30:37 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual
Thread-Index: AQHYz1k+d/GQ9KTr6Uuk11hcBZCOI63x6Z8AgAFDIwA=
Date: Tue, 27 Sep 2022 12:30:37 +0000
Message-ID: <MN0PR11MB6207718B97A5A5780BF0D5C795559@MN0PR11MB6207.namprd11.prod.outlook.com>
References: <20220923143125.5768-1-anshuman.gupta@intel.com>
 <f9852362-47ff-91b5-11f6-54b521faa8cd@intel.com>
In-Reply-To: <f9852362-47ff-91b5-11f6-54b521faa8cd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6207:EE_|MN0PR11MB6058:EE_
x-ms-office365-filtering-correlation-id: ab07669b-c3af-48d7-c5d1-08daa08414d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w1CiE+5r3ikV0k4akj5Kdyfh251Hut0g5Ji8rI512AHRlOZ0T+xn7jvsNG3LHir9BBJqNDmIdCcA91lB2WdTsN2QFm8gNXyZcyBDTD/EJ4vp9Zp+vLG0MDoUriOG+Lh1015LAukG/6e09i/57fcZkhtJbtGyhGT0A5L1AiJm37FH2inif+kSaMs72UC5nNViZFmEOw18PXVL70r3/OBv3q/5y9Nv+J3pDpjby/LkjWCLGq4AVeQkk7EBw0RHprXDCatf+JkSeKcU1qEJAkSCRHItbNnSdPsVQKC4MoYQQaSFubG0tmHUD5F5uUlxe22juM8OAwl7Yt6lJs8kGhH8b3ZOrHHjncABQME+3promZtq7IA2M0hkYErt/lBMBxuawxffVdez0snzUbmmiETFIaibD6CNRjAzfCZN8mGewP8MfhXmr25BJzYaq4T3XvqEQFo5ETQdm+y5jQDPR9pVKXee70YednEcnCavwXNJDAq3YM50UhxP2czeV3AFJN4P02x+lMCAXU1rzo/Pm0nnyi014x6drPtScHqpcgwe00oKfvMLWlnKUS9lOqFQfOu84WpHLixVqtujObCiYOrUtDkr6/scEJ5V7WEvgHKKN72nZiddqCDMdXsOOtpI0Ca6UGvBetcLB0XtAazXs0bwUzZyeiqmIIeLMQmAyFbZzP6W74Wsd1EJxqyASh2vggS6MJLuMuWF6Yvy5nkYuHelpX7ZYup6tzfQOyB8TEkGSOJiuHvWvPI85gua9Wr4By3Faj/4tnO4+5JiHuLsziyIlg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(136003)(39860400002)(451199015)(83380400001)(41300700001)(52536014)(82960400001)(33656002)(86362001)(71200400001)(2906002)(26005)(316002)(66556008)(6506007)(5660300002)(122000001)(7696005)(54906003)(9686003)(38100700002)(186003)(53546011)(55236004)(76116006)(38070700005)(478600001)(4326008)(8676002)(64756008)(66946007)(66446008)(110136005)(66476007)(55016003)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aE1JMnQydDJZTEtvYW9HTm02V09oT1k2NG5KQit1bGZleU9xck9oOVdrRVA3?=
 =?utf-8?B?eVpmS2tpS2xmNzNGOUVNU1VOd0M5aXBVUWlZOVdDVnpaOFFtTjdHYlR5eXdX?=
 =?utf-8?B?Y3ZlMWduUnZDTzZBaUx4NHc5ak9SR2M0cFA2d29HTFRXUlVrcTZSVUVhQSs4?=
 =?utf-8?B?aXNjRGtRdVpYZFVrUlZjcWNGTTN5eGhMemQ2a25FMVQwRFhoUWg4ZjhQVnhu?=
 =?utf-8?B?QnlJSm9YM0dHNDVXVU9vNEtZMWhpRGh3Zi8zVEo4dmVzMGZLRFZuTEJZOHZD?=
 =?utf-8?B?OFE3ZkxUYnlJdmxuT24wUHRZNk1BNG9hRXpKZUNlemtTSlJIdmpGWTZnUnBp?=
 =?utf-8?B?R0d5Z3lOTXlIampyYW1QQzBPTjVxNFlhL0xteXdTLzArTzJ2SVVPTzY0RzVY?=
 =?utf-8?B?b0hrMGlHKzBqSEpMOEpNa0RpMEd5U1d3ZW5rME9UclRlTWVCVTM1OUVUN1ZY?=
 =?utf-8?B?NUxhbFVJOUFKcHZzeFVaZ1g2Wm5SdGFvYU1rbDZuWTdqcnlXakxkeVAzemVV?=
 =?utf-8?B?RnFseG5hbzkvcDhQSmRFNG5XcUF4Z1FmOEhraXF2SHZ2dERQQzhxcHlMUU52?=
 =?utf-8?B?TzhqVEFXN3VwWDJPb0tsVVNWNEtWZ3JDU2JUdTNsSUI2OVViM1hqNzh3blhQ?=
 =?utf-8?B?cUtyQzZZMDQzMExjeUxsby9hTVRLUVBJTnNmMXZZRytlRWVsZTM0Zk11b29j?=
 =?utf-8?B?VmZPQ2lVbXgvODIxY0ZLV0c0R05UUVIrQUxHRENLNlVJNHAzWlgxWXl4MnE0?=
 =?utf-8?B?WjllSThEcmxvampDMzJSODhpa2lTYlZaTWUvWi9GT0NSOEVmTm5NdURWazJZ?=
 =?utf-8?B?K0pRd3RxNjdUN2VKSG9ra29veVpXZjJoS01Cb2hmWWxCdGIrakMwVHdIWFNL?=
 =?utf-8?B?TldvWmJlaHR1VnlsTlp5QmxweDl1ZkZRcWVjZGJWM2h3V1JGVFo0d2V0eGFz?=
 =?utf-8?B?SHBFOWw4bCs5TkZnUzMwVmJWakp4MUp0eEJtWnhoQUtnNWdOMnpuS25vWWVl?=
 =?utf-8?B?ZXJLaVU2L3dDUzcycmFTQmgyYS84YVNwd1VQWCtoeHVkNTNvRmI3UTk3dndF?=
 =?utf-8?B?endWbm9mSWxHMFJUMWRHYm1nVWpoR2xsTERVS1ZNc3IzK0FDSXBrR1JEaXZM?=
 =?utf-8?B?aDNCenlOV25BZm5pcUtUN0tOVTdVYnUwVUk4YmFoSUlHc0JpV0c2T2VoRmhW?=
 =?utf-8?B?WHkxelRjVUZIWlNJSVR0cDZMZ0FBWW44V21CVCtIbjRtVEtON0xSQlg0RHNx?=
 =?utf-8?B?MllHaTZFSEpIQWtiVmhnY0I4MmhsTVRmZUlHVm1VVkZOMG9IQmwzTVgreDdG?=
 =?utf-8?B?eEZiOEYyVTNKUFFsNXg3ckRpcnBDc0oyQjh6empWS3hDbFcwWmsxRDd6bnkr?=
 =?utf-8?B?Rjk3dnV6YzQ1QTRsekprUWQvUUlaZ1JNRWVTdDlqS1BZTlpVNS9YbExYNE1E?=
 =?utf-8?B?U3RZSFBkdTBOVEhsS3o2WU8rdzVia0FvemZrYjExZGF0aVRoYUc0d0FYMGhl?=
 =?utf-8?B?UjlQd1NzNUZpdm8yU0k2SktCU25CaUxJLzZSam0xY3gzaXhQbUtYMWtHZDUy?=
 =?utf-8?B?UTE3NVg1NzBocHhSY1dLSkFtUThpZmpqWXV4M2NtOVNmZ01Bd1dobDd1TDZI?=
 =?utf-8?B?cHFvcFZtZ3A1ald2SFZmWlA4WkJSdU1HcGovQlhUVEt3VStLWTM3Ti9OSm9K?=
 =?utf-8?B?NDNwVWVzZFZWK0hDeTRqNHJ4RDEra3pGMHJOMUhaS2ZSQm1Pem52K0pqQU96?=
 =?utf-8?B?R0g2eFFDUGwzTkNkUm4rdkMzUnRDM0NobWllcGcwTzRUM1JOOSs3ZUw0cW1L?=
 =?utf-8?B?dHVkL1IwMWhzVWFiT1IrWE1CVXlXYjRLRTV6WWFJODk2elRidzdwMFBRcEs4?=
 =?utf-8?B?Z1pqeFBRS3JEamRQaGNpNERvVFl3bkc4NDVQMWNVV29WMnNzTjBKWXh5RXRM?=
 =?utf-8?B?Q2JVNXV6VzRIbDRQUjEwdndGcks0cGdRVjMrMjgxcDZoVHhvYnBJd2NwWnR0?=
 =?utf-8?B?RUpwcGtBWk5QZmZ5YTZTanJBZ3FlZUFsYUZXM2ovUFovOUlaTGNIYVMzUWlN?=
 =?utf-8?B?ZTBmR2xYaVdZSFEvNUZHTS9mVmZSZFQ4b1FXNFVBcVNTMFFvT3JqdXJ5RlBh?=
 =?utf-8?Q?h1w9196a6sTcsn3wV3y8P97tt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab07669b-c3af-48d7-c5d1-08daa08414d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 12:30:37.1936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WnKXn8/j3aUyMDfNcv2ZSb3VpJJNRm7oUYUb5fBkMJQYPdycg2qSbQsbY/4hnQdAJrGB90re/5ec1dm+iL5325MPmxOiMpoc7NdWDpV5768=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6058
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Grab wakeref at
 i915_ttm_unmap_virtual
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXVsZCwgTWF0dGhldyA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMjYsIDIw
MjIgOTo1MiBQTQ0KPiBUbzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogam9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbTsgdHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tDQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2RnZng6IEdyYWIgd2FrZXJlZiBhdCBpOTE1
X3R0bV91bm1hcF92aXJ0dWFsDQo+IA0KPiBPbiAyMy8wOS8yMDIyIDE1OjMxLCBBbnNodW1hbiBH
dXB0YSB3cm90ZToNCj4gPiBXZSBoYWQgYWxyZWFkeSBncmFiYmVkIHRoZSBycG0gd2FrZXJlZiBh
dCBvYmogZGVzdHJ1Y3Rpb24gcGF0aCwgYnV0IGl0DQo+ID4gYWxzbyByZXF1aXJlZCB0byBncmFi
IHRoZSB3YWtlcmVmIHdoZW4gb2JqZWN0IG1vdmVzLg0KPiA+IFdoZW4gaTkxNV9nZW1fb2JqZWN0
X3JlbGVhc2VfbW1hcF9vZmZzZXQoKSBnZXRzIGNhbGxlZCBieQ0KPiA+IGk5MTVfdHRtX21vdmVf
bm90aWZ5KCksIGl0IHdpbGwgcmVsZWFzZSB0aGUgbW1hcCBvZmZzZXQgd2l0aG91dA0KPiA+IGdy
YWJiaW5nIHRoZSB3YWtlcmVmLiBXZSB3YW50IHRvIGF2b2lkIHRoYXQgdGhlcmVmb3JlLCBncmFi
IHRoZQ0KPiA+IHdha3JlcmVmIGF0IGk5MTVfdHRtX3VubWFwX3ZpcnR1YWwoKSBhY2NvcmRpbmds
eS4NCj4gPg0KPiA+IFdoaWxlIGRvaW5nIHRoYXQgYWxzbyBjaGFuZ2VkIHRoZSBsbWVtX3VzZXJm
YXVsdF9sb2NrIGZyb20gbXV0ZXggdG8NCj4gPiBzcGlubG9jaywgYXMgc3BpbmxvY2sgd2lkZWx5
IHVzZWQgZm9yIGxpc3QuDQo+ID4NCj4gPiBBbHNvIGNoYW5nZWQgaWYgKG9iai0+dXNlcmZhdWx0
X2NvdW50KSB0bw0KPiA+IEdFTV9CVUdfT04oIW9iai0+dXNlcmZhdWx0X2NvdW50KS4NCj4gPg0K
PiA+IEZpeGVzOiBhZDc0NDU3YTZiNWEgKCJkcm0vaTkxNS9kZ2Z4OiBSZWxlYXNlIG1tYXAgb24g
cnBtIHN1c3BlbmQiKQ0KPiA+IFN1Z2dlc3RlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1
bGRAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1h
bi5ndXB0YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jIHwgMTkgKysrKystLS0tLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgIHwgMzkgKysrKysrKysrKysrKysrKy0tLS0tLS0t
DQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgIHwgMTEgKysr
KysrLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCB8ICAy
ICstDQo+ID4gICA0IGZpbGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFu
LmMNCj4gPiBpbmRleCA3M2Q5ZWRhMWQ2YjcuLjlkYTU2MWMxOWE0NyAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYw0KPiA+IEBAIC01NTcsMTEgKzU1
NywxMyBAQCB2b2lkDQo+ID4gaTkxNV9nZW1fb2JqZWN0X3J1bnRpbWVfcG1fcmVsZWFzZV9tbWFw
X29mZnNldChzdHJ1Y3QNCj4gPiBkcm1faTkxNV9nZW1fb2JqZWN0ICoNCj4gPg0KPiA+ICAgCWRy
bV92bWFfbm9kZV91bm1hcCgmYm8tPmJhc2Uudm1hX25vZGUsIGJkZXYtPmRldl9tYXBwaW5nKTsN
Cj4gPg0KPiA+IC0JaWYgKG9iai0+dXNlcmZhdWx0X2NvdW50KSB7DQo+ID4gLQkJLyogcnBtIHdh
a2VyZWYgcHJvdmlkZSBleGNsdXNpdmUgYWNjZXNzICovDQo+ID4gLQkJbGlzdF9kZWwoJm9iai0+
dXNlcmZhdWx0X2xpbmspOw0KPiA+IC0JCW9iai0+dXNlcmZhdWx0X2NvdW50ID0gMDsNCj4gPiAt
CX0NCj4gPiArCS8qDQo+ID4gKwkgKiBXZSBoYXZlIGV4Y2x1c2l2ZSBhY2Nlc3MgaGVyZSB2aWEg
cnVudGltZSBzdXNwZW5kLiBBbGwgb3RoZXIgY2FsbGVycw0KPiA+ICsJICogbXVzdCBmaXJzdCBn
cmFiIHRoZSBycG0gd2FrZXJlZi4NCj4gPiArCSAqLw0KPiA+ICsJR0VNX0JVR19PTighb2JqLT51
c2VyZmF1bHRfY291bnQpOw0KPiA+ICsJbGlzdF9kZWwoJm9iai0+dXNlcmZhdWx0X2xpbmspOw0K
PiA+ICsJb2JqLT51c2VyZmF1bHRfY291bnQgPSAwOw0KPiA+ICAgfQ0KPiA+DQo+ID4gICB2b2lk
IGk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0DQo+ID4gKm9iaikgQEAgLTU4NywxMyArNTg5LDYgQEAgdm9pZA0KPiBpOTE1X2dlbV9v
YmplY3RfcmVsZWFzZV9tbWFwX29mZnNldChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQ0KPiA+ICAgCQlzcGluX2xvY2soJm9iai0+bW1vLmxvY2spOw0KPiA+ICAgCX0NCj4gPiAgIAlz
cGluX3VubG9jaygmb2JqLT5tbW8ubG9jayk7DQo+ID4gLQ0KPiA+IC0JaWYgKG9iai0+dXNlcmZh
dWx0X2NvdW50KSB7DQo+ID4gLQkJbXV0ZXhfbG9jaygmdG9fZ3QodG9faTkxNShvYmotPmJhc2Uu
ZGV2KSktDQo+ID5sbWVtX3VzZXJmYXVsdF9sb2NrKTsNCj4gPiAtCQlsaXN0X2RlbCgmb2JqLT51
c2VyZmF1bHRfbGluayk7DQo+ID4gLQkJbXV0ZXhfdW5sb2NrKCZ0b19ndCh0b19pOTE1KG9iai0+
YmFzZS5kZXYpKS0NCj4gPmxtZW1fdXNlcmZhdWx0X2xvY2spOw0KPiA+IC0JCW9iai0+dXNlcmZh
dWx0X2NvdW50ID0gMDsNCj4gPiAtCX0NCj4gPiAgIH0NCj4gPg0KPiA+ICAgc3RhdGljIHN0cnVj
dCBpOTE1X21tYXBfb2Zmc2V0ICoNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMNCj4gPiBpbmRleCBlM2ZjMzhkZDVkYjAuLjA2MzBlZWNhNzMxNiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMNCj4gPiBAQCAtNTA5
LDE4ICs1MDksOSBAQCBzdGF0aWMgaW50IGk5MTVfdHRtX3NocmluayhzdHJ1Y3QNCj4gZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLCB1bnNpZ25lZCBpbnQgZmxhZ3MpDQo+ID4gICBzdGF0aWMgdm9p
ZCBpOTE1X3R0bV9kZWxldGVfbWVtX25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJv
KQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBpOTE1
X3R0bV90b19nZW0oYm8pOw0KPiA+IC0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWYgPSAwOw0KPiA+
DQo+ID4gICAJaWYgKGJvLT5yZXNvdXJjZSAmJiBsaWtlbHkob2JqKSkgew0KPiA+IC0JCS8qIHR0
bV9ib19yZWxlYXNlKCkgYWxyZWFkeSBoYXMgZG1hX3Jlc3ZfbG9jayAqLw0KPiA+IC0JCWlmIChp
OTE1X3R0bV9jcHVfbWFwc19pb21lbShiby0+cmVzb3VyY2UpKQ0KPiA+IC0JCQl3YWtlcmVmID0g
aW50ZWxfcnVudGltZV9wbV9nZXQoJnRvX2k5MTUob2JqLQ0KPiA+YmFzZS5kZXYpLT5ydW50aW1l
X3BtKTsNCj4gPiAtDQo+ID4gICAJCV9faTkxNV9nZW1fb2JqZWN0X3BhZ2VzX2Zpbmkob2JqKTsN
Cj4gPiAtDQo+ID4gLQkJaWYgKHdha2VyZWYpDQo+ID4gLQkJCWludGVsX3J1bnRpbWVfcG1fcHV0
KCZ0b19pOTE1KG9iai0+YmFzZS5kZXYpLQ0KPiA+cnVudGltZV9wbSwgd2FrZXJlZik7DQo+ID4g
LQ0KPiA+ICAgCQlpOTE1X3R0bV9mcmVlX2NhY2hlZF9pb19yc2d0KG9iaik7DQo+ID4gICAJfQ0K
PiA+ICAgfQ0KPiA+IEBAIC0xMDUyLDEyICsxMDQzLDE1IEBAIHN0YXRpYyB2bV9mYXVsdF90IHZt
X2ZhdWx0X3R0bShzdHJ1Y3Qgdm1fZmF1bHQNCj4gKnZtZikNCj4gPiAgIAlpZiAocmV0ID09IFZN
X0ZBVUxUX1JFVFJZICYmICEodm1mLT5mbGFncyAmDQo+IEZBVUxUX0ZMQUdfUkVUUllfTk9XQUlU
KSkNCj4gPiAgIAkJZ290byBvdXRfcnBtOw0KPiA+DQo+ID4gLQkvKiB0dG1fYm9fdm1fcmVzZXJ2
ZSgpIGFscmVhZHkgaGFzIGRtYV9yZXN2X2xvY2sgKi8NCj4gPiArCS8qDQo+ID4gKwkgKiB0dG1f
Ym9fdm1fcmVzZXJ2ZSgpIGFscmVhZHkgaGFzIGRtYV9yZXN2X2xvY2suDQo+ID4gKwkgKiB1c2Vy
ZmF1bHRfY291bnQgaXMgcHJvdGVjdGVkIGJ5IGRtYV9yZXN2IGxvY2sgYW5kIHJwbSB3YWtlcmVm
Lg0KPiA+ICsJICovDQo+ID4gICAJaWYgKHJldCA9PSBWTV9GQVVMVF9OT1BBR0UgJiYgd2FrZXJl
ZiAmJiAhb2JqLT51c2VyZmF1bHRfY291bnQpIHsNCj4gPiAgIAkJb2JqLT51c2VyZmF1bHRfY291
bnQgPSAxOw0KPiA+IC0JCW11dGV4X2xvY2soJnRvX2d0KHRvX2k5MTUob2JqLT5iYXNlLmRldikp
LQ0KPiA+bG1lbV91c2VyZmF1bHRfbG9jayk7DQo+ID4gKwkJc3Bpbl9sb2NrKHRvX2d0KHRvX2k5
MTUob2JqLT5iYXNlLmRldikpLQ0KPiA+bG1lbV91c2VyZmF1bHRfbG9jayk7DQo+ID4gICAJCWxp
c3RfYWRkKCZvYmotPnVzZXJmYXVsdF9saW5rLCAmdG9fZ3QodG9faTkxNShvYmotPmJhc2UuZGV2
KSktDQo+ID5sbWVtX3VzZXJmYXVsdF9saXN0KTsNCj4gPiAtCQltdXRleF91bmxvY2soJnRvX2d0
KHRvX2k5MTUob2JqLT5iYXNlLmRldikpLQ0KPiA+bG1lbV91c2VyZmF1bHRfbG9jayk7DQo+ID4g
KwkJc3Bpbl91bmxvY2sodG9fZ3QodG9faTkxNShvYmotPmJhc2UuZGV2KSktDQo+ID5sbWVtX3Vz
ZXJmYXVsdF9sb2NrKTsNCj4gPiAgIAl9DQo+ID4NCj4gPiAgIAlpZiAod2FrZXJlZiAmIENPTkZJ
R19EUk1fSTkxNV9VU0VSRkFVTFRfQVVUT1NVU1BFTkQpDQo+ID4gQEAgLTExMjMsNyArMTExNywy
OCBAQCBzdGF0aWMgdTY0IGk5MTVfdHRtX21tYXBfb2Zmc2V0KHN0cnVjdA0KPiA+IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikNCj4gPg0KPiA+ICAgc3RhdGljIHZvaWQgaTkxNV90dG1fdW5tYXBf
dmlydHVhbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQ0KPiA+ICAgew0KPiA+ICsJ
c3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibyA9IGk5MTVfZ2VtX3RvX3R0bShvYmopOw0KPiA+
ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWYgPSAwOw0KPiA+ICsNCj4gPiArCWFzc2VydF9vYmpl
Y3RfaGVsZF9zaGFyZWQob2JqKTsNCj4gPiArDQo+ID4gKwlpZiAoaTkxNV90dG1fY3B1X21hcHNf
aW9tZW0oYm8tPnJlc291cmNlKSkgew0KPiA+ICsJCXdha2VyZWYgPQ0KPiA+ICtpbnRlbF9ydW50
aW1lX3BtX2dldCgmdG9faTkxNShvYmotPmJhc2UuZGV2KS0+cnVudGltZV9wbSk7DQo+ID4gKw0K
PiA+ICsJCS8qIHVzZXJmYXVsdF9jb3VudCBpcyBwcm90ZWN0ZWQgYnkgb2JqIGxvY2sgYW5kIHJw
bSB3YWtlcmVmLiAqLw0KPiA+ICsJCWlmIChvYmotPnVzZXJmYXVsdF9jb3VudCkgew0KPiA+ICsJ
CQlzcGluX2xvY2sodG9fZ3QodG9faTkxNShvYmotPmJhc2UuZGV2KSktDQo+ID5sbWVtX3VzZXJm
YXVsdF9sb2NrKTsNCj4gPiArCQkJbGlzdF9kZWwoJm9iai0+dXNlcmZhdWx0X2xpbmspOw0KPiA+
ICsJCQlzcGluX3VubG9jayh0b19ndCh0b19pOTE1KG9iai0+YmFzZS5kZXYpKS0NCj4gPmxtZW1f
dXNlcmZhdWx0X2xvY2spOw0KPiA+ICsJCQlvYmotPnVzZXJmYXVsdF9jb3VudCA9IDA7DQo+ID4g
KwkJfQ0KPiA+ICsNCj4gPiArCX0NCj4gPiArDQo+ID4gICAJdHRtX2JvX3VubWFwX3ZpcnR1YWwo
aTkxNV9nZW1fdG9fdHRtKG9iaikpOw0KPiA+ICsNCj4gPiArCWlmICh3YWtlcmVmKQ0KPiA+ICsJ
CWludGVsX3J1bnRpbWVfcG1fcHV0KCZ0b19pOTE1KG9iai0+YmFzZS5kZXYpLT5ydW50aW1lX3Bt
LA0KPiB3YWtlcmVmKTsNCj4gPiAgIH0NCj4gPg0KPiA+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV90dG1fb2JqX29wcyA9IHsNCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYw0KPiA+IGluZGV4IGIzNjdjZmZmNDhkNS4uMWU2
MzQzMmQ5N2JiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jDQo+ID4g
QEAgLTQxLDcgKzQxLDcgQEAgdm9pZCBpbnRlbF9ndF9jb21tb25faW5pdF9lYXJseShzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KQ0KPiA+ICAgCXNwaW5fbG9ja19pbml0KGd0LT5pcnFfbG9jayk7DQo+ID4N
Cj4gPiAgIAlJTklUX0xJU1RfSEVBRCgmZ3QtPmxtZW1fdXNlcmZhdWx0X2xpc3QpOw0KPiA+IC0J
bXV0ZXhfaW5pdCgmZ3QtPmxtZW1fdXNlcmZhdWx0X2xvY2spOw0KPiA+ICsJc3Bpbl9sb2NrX2lu
aXQoZ3QtPmxtZW1fdXNlcmZhdWx0X2xvY2spOw0KPiA+ICAgCUlOSVRfTElTVF9IRUFEKCZndC0+
Y2xvc2VkX3ZtYSk7DQo+ID4gICAJc3Bpbl9sb2NrX2luaXQoJmd0LT5jbG9zZWRfbG9jayk7DQo+
ID4NCj4gPiBAQCAtNzEsNiArNzEsMTAgQEAgaW50IGludGVsX3Jvb3RfZ3RfaW5pdF9lYXJseShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqaTkxNSkNCj4gPiAgIAlpZiAoIWd0LT5pcnFfbG9j
aykNCj4gPiAgIAkJcmV0dXJuIC1FTk9NRU07DQo+ID4NCj4gPiArCWd0LT5sbWVtX3VzZXJmYXVs
dF9sb2NrID0gZHJtbV9remFsbG9jKCZpOTE1LT5kcm0sIHNpemVvZigqZ3QtDQo+ID5sbWVtX3Vz
ZXJmYXVsdF9sb2NrKSwgR0ZQX0tFUk5FTCk7DQo+ID4gKwlpZiAoIWd0LT5sbWVtX3VzZXJmYXVs
dF9sb2NrKQ0KPiA+ICsJCXJldHVybiAtRU5PTUVNOw0KPiA+ICsNCj4gPiAgIAlpbnRlbF9ndF9j
b21tb25faW5pdF9lYXJseShndCk7DQo+ID4NCj4gPiAgIAlyZXR1cm4gMDsNCj4gPiBAQCAtODEz
LDYgKzgxNywxMSBAQCBzdGF0aWMgaW50IGludGVsX2d0X3RpbGVfc2V0dXAoc3RydWN0IGludGVs
X2d0ICpndCwNCj4gcGh5c19hZGRyX3QgcGh5c19hZGRyKQ0KPiA+ICAgCQlndC0+dW5jb3JlID0g
dW5jb3JlOw0KPiA+ICAgCQlndC0+aXJxX2xvY2sgPSBpcnFfbG9jazsNCj4gPg0KPiA+ICsJCWd0
LT5sbWVtX3VzZXJmYXVsdF9sb2NrID0gZHJtbV9remFsbG9jKCZndC0+aTkxNS0+ZHJtLA0KPiA+
ICsJCQkJCQkgICAgICAgc2l6ZW9mKCpndC0NCj4gPmxtZW1fdXNlcmZhdWx0X2xvY2spLCBHRlBf
S0VSTkVMKTsNCj4gPiArCQlpZiAoIWd0LT5sbWVtX3VzZXJmYXVsdF9sb2NrKQ0KPiA+ICsJCQly
ZXR1cm4gLUVOT01FTTsNCj4gPiArDQo+ID4gICAJCWludGVsX2d0X2NvbW1vbl9pbml0X2Vhcmx5
KGd0KTsNCj4gPiAgIAl9DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfdHlwZXMuaA0KPiA+IGluZGV4IDMwMDAzZDY4ZmQ1MS4uOTI1Nzc1MzEwYjFlIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oDQo+ID4gQEAg
LTE1Myw3ICsxNTMsNyBAQCBzdHJ1Y3QgaW50ZWxfZ3Qgew0KPiA+ICAgCSAqICBidXQgaW5zdGVh
ZCBoYXMgZXhjbHVzaXZlIGFjY2VzcyBieSB2aXJ0dWUgb2YgYWxsIG90aGVyIGFjY2Vzc2VzDQo+
IHJlcXVpcmluZw0KPiA+ICAgCSAqICBob2xkaW5nIHRoZSBydW50aW1lIHBtIHdha2VyZWYuDQo+
ID4gICAJICovDQo+ID4gLQlzdHJ1Y3QgbXV0ZXggbG1lbV91c2VyZmF1bHRfbG9jazsNCj4gPiAr
CXNwaW5sb2NrX3QgKmxtZW1fdXNlcmZhdWx0X2xvY2s7DQo+ID4gICAJc3RydWN0IGxpc3RfaGVh
ZCBsbWVtX3VzZXJmYXVsdF9saXN0Ow0KPiANCj4gSXQgbG9va3MgbGlrZSB0aGVyZSB3ZXJlIHNv
bWUgY29tbWVudHMgb2ZmIGxpc3QgYWJvdXQgdGhpcy4gSXQgZG9lc24ndCBsb29rIGxpa2UNCj4g
cnVudGltZSBwbSBpcyByZWFsbHkgcGVyIGd0LCBzbyBtYXliZSBqdXN0IHN0aWNrIGFsbCB0aGlz
IGluIGk5MTU/IE9yIHdhcyB0aGVyZQ0KPiBzb21lIG90aGVyIHJlYXNvbiBmb3IgcHV0dGluZyB0
aGlzIGluIGd0Pw0KVGhhbmtzIGZvciByZXZpZXcsIA0KWWVzIHJ1bnRpbWUgcG0gaXMgbm90IHBl
ciBHVCAsIGkgaGFkIGtlcHQgaW5zaWRlIGd0IHRvIGFsaWduIHdpdGggR1RUIG1tYXAgcmVsZWFz
aW5nIGltcGxlbWVudGF0aW9uLA0KQXMgdGhlcmUgaXQgd2FzIGVuY2Fwc3VsYXRlZCBpbnNpZGUg
Z2l0LT5nZ3R0Lg0KQWxzbyB1c2VyZmF1bHRfd2FrZXJlZiBpcyBhbHNvIGVuY2Fwc3VsYXRlZCB3
aXRoIGluIEdULg0KU2hhbGwgSSBtb3ZlIGFsbCB1c2VyZmF1bHRfd2FrZXJlZiwgbG1lbV91c2Vy
ZmF1bHRfbG9jayBhbmQgbG1lbV91c2VyZmF1bHRfbGlzdCB0byBpOTE1ID8NCg0KVGhhbmtzICwN
CkFuc2h1bWFuIEd1cHRhLg0KDQoNCiANCg0KPiANCj4gPg0KPiA+ICAgCXN0cnVjdCBsaXN0X2hl
YWQgY2xvc2VkX3ZtYTsNCg==
