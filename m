Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0106B7857E1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 14:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8462510E419;
	Wed, 23 Aug 2023 12:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F2710E419
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 12:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692793650; x=1724329650;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=FIpghYrY1PIqEJ5zVhMnyfSMR8YC23vbLNMzU1ob44s=;
 b=EMjWv/xm45QBIYM6wgZugYFHw+5Dg1aWblShoY3hYjMJ17bYsAGzzJnn
 BXiNHMETy9ouqA6YSZjWyFsnaxR0BjoeisJZFgEy4IFzsTo/7Ah2fy+rh
 Sg40UKjtFeF7SETiVwGtDDltKbXCJUbFhh++YrFE+jOfoK7Oilk6RWbnH
 k+2JhzGpUCx8MXh2AkFSwE/m2Liah8aFoVnVi0A3D7VxB8wWBp40ayt5h
 BXgvH40MqNcTGHlt94lBuYaFVlTo2m5IbCimN7cupx2saab7K1BCxITng
 G61zBz1LW/EoC+x6Y95iTM9a7JmB/EcZjZTrdAn2ICDbcMa17/07T4Tlg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="374119667"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374119667"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 05:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="910490807"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="910490807"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 23 Aug 2023 05:27:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 05:27:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 05:27:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 05:27:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mJWKju/u85mnoNuUcDqchqma7MsOyRV09oh1Ck/8V974BXAJnY8vG4Kz4UOXf2VFhaqS5px2Kf17AoVKgjBc+6whU+sNdBaMWQzLcoDOtd2ijycIhbcaFT4k2FtlrEQP6431dcprhFBm0z+Yq9k4Y1mkEUXSXufnTjaYe5YSlbqhf/F9BFRaSbA7kBEympFm0XyfgTPe/SUjtlh+yy5xbI4X49SceH1ZWvfcaEdl1/cGW0c3EUCw8abL5O2LdG7OUhth3N3nt9m+zxRfvDq3NzcwslZwR8MexxzoMYDDMp9fYtUQte36NG76RsSv4QoktrkoKKpNZlrar7AXKlXaaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FIpghYrY1PIqEJ5zVhMnyfSMR8YC23vbLNMzU1ob44s=;
 b=bT6jzPv5rRIefVCOFApkKZkZMUX0YadbBHgoLp5j5b5i7GpGVWP5RwaU9edcyVeVRdKqxv7WIgIXygt0jhyIhlbkZKD3A/ebgRD6py9QbYtlvd0f5g4U3ESbzptojrfXAP25Png3BYmkfCSAF9O2kcMtJ6MNqMwcYk24EaxILGtOcjbXawWYm7jlZWzEZzRyBJudyvnanTvFgJT/E2bDSjlOmcW+22OiZp75/+BFLfKomsrfsFcMVqS48C+fLW2EvSFg9lj7FulC775SII099KQrlO9xjnsuu0KdUTunDbmK1yUReuY1Cx0tdNZwxvV0ESV5Vs6/hW0mpvV+NMVN6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6792.namprd11.prod.outlook.com (2603:10b6:a03:485::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.25; Wed, 23 Aug
 2023 12:27:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6699.022; Wed, 23 Aug 2023
 12:27:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/vma: constify unbind_fence_ops
Thread-Index: AQHZ0ccZrYA8QbLJGEOCXSGwdl6LPK/31sqA
Date: Wed, 23 Aug 2023 12:27:26 +0000
Message-ID: <b7e8f31cf1dbf6f234e6e8836c4a24aef0f5ad1e.camel@intel.com>
References: <20230818112758.3586545-1-jani.nikula@intel.com>
In-Reply-To: <20230818112758.3586545-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6792:EE_
x-ms-office365-filtering-correlation-id: 46a9e66e-b186-4c06-2d75-08dba3d44f85
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ib19WCPcKgfAt76HVqhTxFjhj4G2O/3Gp1y2NGoEoxizuTdXdP6u3lQ2joSSB0e3ZxdP8f4wb2DWqRvllLdMbjAKaEgH6eNY+dly+Jir6+qk2s5mAedj5nTcOXoLlpAFPPccKywNXyY0JSPnM7YDLl9rJrVWoAlk1wBxWbBLgEFLUmGJlTqcukt8vte93sDVWtTE/QQU8A3kccJ2KBfUR6gbTdRY2A2S0kzV7cYzsRrMLltFK2tAknnGZFLUBUr318Cg4HGLrPjBEYFRFQHF/XqzRWfxqwsGEFKabsha+6TYDy2Nh4lAr4Q/7f8Kcoho5pdYro6M3c69lDFmQ9iuWUSeAL1hRYe5gfs6UvKCuzp4T6R0iTwR7egNLKcavzd8FMDDTCk6gcFmHvxVT5XvCrDuHHbKGFIgKzMryi84FaLf7nzYlWLoJ9AD7rtIo6jfSEhE0R+hfgwhjW8C6Zjk4d3rNILZOGlnFl+jzjD76IVTtNcOmMFtdD9FsbL8P+rCWGk7A/uf4RuKlLsCNCdQlDGGE0TpnpATpqOmUL/UFdhCLg7EHz9qpQqgjhs4OxAzJ0LlZp2t4SwKYG8jGthmnJjI+bP4n4rHuk6QmPNGxptY88FpjqXo5ZXMyn04zORg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(136003)(39860400002)(396003)(1800799009)(186009)(451199024)(71200400001)(6506007)(6486002)(2616005)(6512007)(86362001)(66556008)(76116006)(5660300002)(4744005)(2906002)(91956017)(38100700002)(110136005)(82960400001)(38070700005)(8676002)(8936002)(66946007)(36756003)(64756008)(41300700001)(66476007)(316002)(66446008)(122000001)(478600001)(83380400001)(66574015)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RE5JNTJPSk5RTE0zVURRcDNZWXM1aFpuTlpQb0N3RlN4V2JQUkIxaGhFaDdx?=
 =?utf-8?B?bkpEL0FhSGtDMDRtZytVc2c4eGFvbWJzc1czT1NBOGtzVFdhb0JWVk9JK1h5?=
 =?utf-8?B?OTc2dmFobFpNRkw3c3kwOU1Fd0FwZlJVSDNhNU00TC9lT0k4NnZUV0t2eERy?=
 =?utf-8?B?Z0FtcmRaRE8xVlNYNjAySExXMTRCa1JhNnRodGxrU285NXdBR2d2Y2t1QWRY?=
 =?utf-8?B?M1A2eVZiaUxJS2x5Y0RLR3YzTGhSdFFobnNRbFh3RnZEUXJER01lQXFDUG5y?=
 =?utf-8?B?MzZYSC9BcjJEVHhXQnYxNTRRWVkvYzdLNDBuai9XMzFZdHZzcVhwbXJmb1Qv?=
 =?utf-8?B?L2F4Z3Z4dUlxODhKcXRXM2tkRy9SdGMxWnM2Y1EwNHFEcVcvbjAzTDdwN2pF?=
 =?utf-8?B?S2NwamlnZjE2Uk1hV2hOMURRN0ZJQWx0RncyM0R1VjIzRTFQdnhacmU4SENk?=
 =?utf-8?B?RVBvcEtqT3pSaTU5QVpGcm8wZlcvUVNjVU5VRHprOW5EMkdZZ1ErNFJ1YjI5?=
 =?utf-8?B?Y25iQmUwL2NBSjNocGljdm4yZjZHZ0FDTEU1eG01RStoY0dxUE5DQkNnVDAr?=
 =?utf-8?B?VUQ2eElkN3AzRjZXRlpLQ0dNMHc1RlNhaktnMk1ic214cnRQREhBMUY2dFNT?=
 =?utf-8?B?clhFamRZdktrdm95Y0FPVUcxUkIyVHFqY3Q4Wjg4bHhsZkNLdFVGL0dBY01s?=
 =?utf-8?B?ZDd4VWpEYTRBQmNPNXRYdEp3OHpQejNMa1d6bDI2UWs3QW5INndKVk1EamND?=
 =?utf-8?B?NVB5bHZQNWh3VDYzTXJIV21wemF1WktvOElTSVRYMUJFUENCN09hYXRWRzZT?=
 =?utf-8?B?eDNRUThwY0NmUTY0cGsvU3hnaEZwcFI5eHRpZVpBa1hnT1cwcFc2R09WbnY1?=
 =?utf-8?B?MzFRWDRlamplQU1Hd3ZHMWM2K0VWUGV0c3lSZkhkNXpjWFhBYmdWQ1FBNmlz?=
 =?utf-8?B?ZGgyWVZKUjRDK3NmZVZJWkUwam9yalhSWk5sRDVsZ0dCNlYxalIza2ZKUUwx?=
 =?utf-8?B?SHBvMURLRWVKTWc3OHJvWHpnOVpGSkw2Z0UvNWEwdVRKaC9sVVNLejQxL3B0?=
 =?utf-8?B?L0NCUTFSdTFIajQvbXcvYXY0Ync5aWN6eGJIWGFTQUg1QVVZRUNLNWdhMWor?=
 =?utf-8?B?VVBhcHhjK2s1V1FjL203OVlxUkxSWGNDc3EyeUhJa0cybHVRWmNEaExyQnlU?=
 =?utf-8?B?bjZXMU1ZSFFtclFPMmhZQk5SVGQrb0I4Q25uOUpER3Bwek00TTFvclNMR09i?=
 =?utf-8?B?aHZhRW9FV2FobW5BYncyTE9jT2Z2ZS9rQm13b2F2dmF3Uk5LNFpBK1QwSElH?=
 =?utf-8?B?K09MN3kvTWpiZ1lGV25zR09GekQwa0haUE0vaXNqUkpNZmgyem55Rm1Nd2VF?=
 =?utf-8?B?cGN1czdwa3VQbVJUaWUwNmV6ZnVLWTJmbTcxbEhsaERaN3JvSDc2UFJyeUVY?=
 =?utf-8?B?d056UE9peUZFekMzRkVvMkVUMGhmZm45d0VOTmZ5RFhEV21tbjBCK1loRmRi?=
 =?utf-8?B?cTNHQWh5aEQyUWp3UDRCNmxKWVY3NC9seEQxbkZIOEcraGo0U3ZScHp3ck9a?=
 =?utf-8?B?ZnVabGlKdStTUEJQTHp0SHcxT1hzV0swRnJyRUxqcjJuU2xOTmlIbXZXS25x?=
 =?utf-8?B?c3ZsTjJNWFRjdk1DVENMeXFiWXJUM1p2dnNFZVdoYU9qcVQ0U2dqTFVYSXVR?=
 =?utf-8?B?WG41OGdqYlJSZDBMOXQ3MjdDSVBVMUVnMnFpVk4raFFGK04wOWlxKy9mRUF2?=
 =?utf-8?B?emVaYmVyeEVOaUFJeTVLNWtpdXRLR1JrOVVBK0RkL0d6UDIrV2I5M2pHdUFQ?=
 =?utf-8?B?VUlBOTJ3Z2xmUVFYaEdCbjhJeHVpMUVCOVQyT3ZMc1N3cEFTVHh5MnRvbjQ2?=
 =?utf-8?B?MmxjbUQ4UHpVMkhHSjFVNk94eDVDTlZHR1Q4UGFZNFpjS0pYU3k4aDdBQ1Q1?=
 =?utf-8?B?Z0lQdCtYa00vdTBTTjBtNHQ5bUJEWTQwNnBOaXFTanhtRTl3eVdZZUVKaGNt?=
 =?utf-8?B?Nm1HeHA0WnBFdkpDaS9Pb3R1Zk5taHl3N3EwNjBkdWVtNmQ1dE01STJaV0xi?=
 =?utf-8?B?c0tlM3VoTUxSVDJHL1VtK2FITXFIUFcvNW44ejJDN0lvTUNmVHEyb1FBSHRC?=
 =?utf-8?B?TXVES2l4VmdxVFJUN04xRFRtcjdWQjEvT24yWkVMS1VLSWIzanQvdUFERWhu?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <235A99171D37FC45AF6869F353716DA7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a9e66e-b186-4c06-2d75-08dba3d44f85
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 12:27:26.5543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wSRsgNkgpYxYyYeN682UcLAo8p5KDdHFuEcWgsf0QlXARUqMEcaHOWaZzkDO55CVUxVwxZ0/ixequUsuZVDYTrB5a6Tv8WLZwGOROJxUEkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6792
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vma: constify unbind_fence_ops
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

T24gRnJpLCAyMDIzLTA4LTE4IGF0IDE0OjI3ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
dW5iaW5kX2ZlbmNlX29wcyBjYW4gYmUgY29uc3QgYW5kIHBsYWNlZCBpbiByb2RhdGEuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpS
ZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoN
Cj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWFfcmVzb3VyY2UuYyB8IDIg
Ky0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYV9yZXNvdXJjZS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWFfcmVzb3VyY2UuYw0KPiBpbmRleCA2
YmE3YTdmZWNlYmEuLjUzZDYxOWVmMGMzZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWFfcmVzb3VyY2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYV9yZXNvdXJjZS5jDQo+IEBAIC05NCw3ICs5NCw3IEBAIHN0YXRpYyB2b2lkIHVuYmlu
ZF9mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UNCj4gKmZlbmNlKQ0KPiDCoMKgwqDCoMKg
wqDCoMKgY2FsbF9yY3UoJmZlbmNlLT5yY3UsIHVuYmluZF9mZW5jZV9mcmVlX3JjdSk7DQo+IMKg
fQ0KPiDCoA0KPiAtc3RhdGljIHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHVuYmluZF9mZW5jZV9vcHMg
PSB7DQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgdW5iaW5kX2ZlbmNlX29w
cyA9IHsNCj4gwqDCoMKgwqDCoMKgwqDCoC5nZXRfZHJpdmVyX25hbWUgPSBnZXRfZHJpdmVyX25h
bWUsDQo+IMKgwqDCoMKgwqDCoMKgwqAuZ2V0X3RpbWVsaW5lX25hbWUgPSBnZXRfdGltZWxpbmVf
bmFtZSwNCj4gwqDCoMKgwqDCoMKgwqDCoC5yZWxlYXNlID0gdW5iaW5kX2ZlbmNlX3JlbGVhc2Us
DQoNCg==
