Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BCD64D9A6
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 11:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A248D10E51E;
	Thu, 15 Dec 2022 10:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7662C10E51E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 10:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671100773; x=1702636773;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Aoa0b9GXDQigbWEGC1LtlKWbWf0UIv5twR59XMyUS84=;
 b=NEHm7kcuOXMyFxwkRAlBYuiop6El8YaefO8Ev4prlDpVfaFwvFzQ77Gy
 cTdXFvWx5kafG5011QHrkYxFN6GSAfXpkvOk7A2u9WJESccLiCHfIevff
 +ARq7hCheqiBOHpuR1LKOqrkLkH/nKOT5LIwRfMv+4C2lXkap4JnNnlF4
 Q8WoizkDodmLcgUzM1mye9l4enln8Ar+2ifUEd4Nx3SnHbUkkXYNRKmEu
 4QcGtWHqJ9ibwYEjFPRU02Cubf2JNaNoe2czInHKLa+t1LKL1iJSqM6bu
 3uJXfjb/uTpvs4XdgFMlCerZ5l8IXvxR9fJm683MsVN49YpGzHbWvo+hF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="298322724"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="298322724"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:39:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681807273"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="681807273"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 15 Dec 2022 02:39:19 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 02:39:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 02:39:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 02:39:18 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 02:39:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=et47prdPJr4epdqfqU/IyVvutdzxGbJPn73vm5IPPNrGGL8TS5bOL5zqUkjAxU7gLjshQH7DFvfAiKMzGy8zrWxSHDyLZuuGBa7c8Yhy5OfDtAO3u8nZgG1xj+FahzGBu6Y6UVlQO0oPoXDNBLh99Qh5nBs6o3v8pqJ1WK7WXM/FF2631rX+/cFQvyTozxFjpoBVqtzHMSM/BFSPxYu0UncujEkJm4CseclsAz70v/mzxVFVTEmca0/qB8Kj1wyWkdzYkAGTYUCBaCh8Mpttr2Dj+hZot3ZFs7PRkPtFh3PMKD6JyABYszHrYzVjqzWKqeSwv1/QIgAp7rMZEb9Mnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aoa0b9GXDQigbWEGC1LtlKWbWf0UIv5twR59XMyUS84=;
 b=QBFttNJfEYZtoSB/48MRsh1381up+YTowou1uvY7x54tuIW2EdBJyYYXRi5l9xL0li5DKFb0oY5bvUI97bLABwskXgjWGQmBTaH36uxgaGB1B8L+Wy3aCZtfEX5WFTNizRcYvxOlGBTaGqVGx5pLlTL3r9Gsc3yeGKtUFZQAplxAAc+hJ5LgTrBoUec5pkSDc32KAk0xiOj8+t9ACLuch5D3thV+nyAilsjJ+f/zyKTdFIukG69yPwFis16UNb9bihXuOzLlGWSH6HukkdVKEdQL+aYefDkwXbneprsgACJ8YX88IMDcX2PTpkzgDAa8JxhtZtU+wXoC8zqI6s6ByQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN0PR11MB6205.namprd11.prod.outlook.com (2603:10b6:208:3c7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Thu, 15 Dec
 2022 10:39:16 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 10:39:16 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
Thread-Index: AQHZDjY7S6mr+lYzqEqInl+7DRVqrK5syLlwgABT+ICAARpkIIAAd0QAgAAMDrCAAAbeAIAAAkcw
Date: Thu, 15 Dec 2022 10:39:15 +0000
Message-ID: <DM6PR11MB31778B4A7658B5C1796A4268BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
 <87k02uwdlw.fsf@intel.com>
 <DM6PR11MB31777C066D99AFF73AD5D956BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87wn6tuj1x.fsf@intel.com>
 <DM6PR11MB3177A60D4B187A5676EC9818BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87sfhhufx1.fsf@intel.com>
In-Reply-To: <87sfhhufx1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|MN0PR11MB6205:EE_
x-ms-office365-filtering-correlation-id: 1b14579c-f585-4bbf-d207-08dade889d31
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uIFzYaqSO9qBPCDHJUyD2dAg5qPN9XLty2hCBCc+V15nAZkxaacAlPcciVWH26o1rMuQxceV34PFZHdblTncn2NTl6ppqVFRKKSQeSSY+pzXNsizEdwlTY4L7WPwS/oXN5YrJNoejNl+mOe8o9AvXEhL+KpsU/rTq0BLmczLOVVwtK7a6P9EKr5XVgLo+tjU76cB0MtaWgo0A7Dog4Iqf5UMCXQxYla6aAeybQj25DBwtbMTqInS2pKN4AmGP/tI+m1vAk6z3MpuS2+kveu83qVbdb7FcKVtia4rx5ZDX7HeJgIiegr15AgkFyzc3nAq/NwOQrr7D3uyMDS1bXDM4kzeqXBq1ZhjjQozfh+O6bTL+1qzzfMyS+Vu5kPYzYBUc0ce9DQoH2tKaIBo/KrUS47TI2d7ATWq8jJ4PEJfXSH8l5UojfgLVCuLhHHWF9D/bnn+dA0bpY4+9HMSuzMiG5LtXhy1pOUc2xRJm+iWaiVnFCaPFJ1YBevIxY/jcS3hQDe3DwNCs+tNoYaejwimvMyEGhw2NMgwOFfjZGsGPcJw2TgZh3+1kRkVmZ0cr4azjtvNQS8z8vXLVgzwiakfChhRjvfAGh0+NfSYhLU0TRtzVdYRls+iRajuTwZc0KB4WIRNWWfFEAvQxPHzqaq/RA5pMHCPJFs6Fdzo9cttEtWcype7ykaigL4EcKzLOeU5HCbDY7eQH7Eq+/yDwVbHsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(366004)(39860400002)(376002)(451199015)(8936002)(41300700001)(5660300002)(52536014)(110136005)(86362001)(38070700005)(66556008)(8676002)(66476007)(66446008)(64756008)(76116006)(316002)(66946007)(83380400001)(33656002)(38100700002)(55016003)(82960400001)(2906002)(71200400001)(478600001)(9686003)(55236004)(122000001)(53546011)(186003)(7696005)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akJvK2tyZVZXVGZ1NksrMXhBUmdkdXpKOHBhejdKTWwwSTgzOFpTM2pRMXBX?=
 =?utf-8?B?SGt5eDlMaWZxNDN2Q0orbDdzK2xJTUVDdnJUNUZwckdkN3RrSFlkd1poaW5V?=
 =?utf-8?B?cEF5N1k2QnFnd2R1a2R2Yld6YlhyTndIVnJFdkJudnpaazk0N0pJdFkydmpj?=
 =?utf-8?B?ZkM3d012NFROQlFieFdRWE0xYzcvdmtaRDRtY1pWRkthdjNsbWFtWjhIbHYw?=
 =?utf-8?B?MEdHMGJFRWU2SzVCLzVFTisrQ3dYdGFnaStSTkF6M0pLM1pkREIyM3Rzd0Ju?=
 =?utf-8?B?anRTRlU4d1VjTTV0bkErNUIzNzJvd1RLR2pLRVhaYmpIeFgvc3NoRDBoMlds?=
 =?utf-8?B?ZVlWeWVYSHhnU2VsMUMxYjhRMXNGbC9JZGJLeS9OSXprbnY5QTNHcDN4dGZl?=
 =?utf-8?B?N2FmMGcxL0dNQ3JFNWdVeTlTSEdkSk5nTzlCRHFnTzRXKzZKZ1hjd2tqdDVB?=
 =?utf-8?B?VXZIdHFwM3BDbDRPUjE1ZVhZOWxuVDVCKy9BWGxnK0lxdU0zb1VWZktuMUda?=
 =?utf-8?B?QlpoSUxSbnNWTldmK0daNUpsRDAwSmYvWVVBOFpuQnRjdjhLK3NzcHRHeU5w?=
 =?utf-8?B?TDBKclpvUThQOHNDVjVuaEV5QzdmM3VQNjRzNXpkZHNZWWRaWnIycEFRZWZE?=
 =?utf-8?B?UHFMbUx4a1dMd1ZSNE02L1NqQjBySWJnWnVmZnFxeHNZZEdEK3pGQ0hYVWZx?=
 =?utf-8?B?UHRaU1RtRHdJVG05aDZrdEpVeHgzekVhbW8zaHpkTlhZOEd4MlFvRm44TnM3?=
 =?utf-8?B?Q1ZXb2ZNeCtHOWdHRURTTFBmVzhiRnNnRjdXNml2YXc2WWVNeTllQUlQelI0?=
 =?utf-8?B?dlRFcFVNVTlEaVowTHU5U3VsM254MHM1WGhHT2kxbTU2N2dWak54T0ZOUTJE?=
 =?utf-8?B?VlVvcy8rOGNyOGY1Vkc1a2ExU09NbjZEZmhHN1h0S3pBKytTcVlSYlQ4MVZr?=
 =?utf-8?B?cm1OcStvNktBVjJsZlN0d0ZtckhiVWVVRXlKNXNYNkNycWprMXdXcU1VMW4y?=
 =?utf-8?B?UU5naHBRNWtNYmFiODhpdXVSLzlNdjFBV1VlaEtEVEVmZTY2dkdoWklXNWxL?=
 =?utf-8?B?eTMrVmJJcHkyUVkxeUF4bWRnOHVuQ1QwTncvajJMVmxwSTE3NGpMelNOYlJU?=
 =?utf-8?B?MzhTVUluallFODQ2NlVNd1dHOCtaOC9vTjlWOHJFSTFGOXB0MHN0bXYyY0lk?=
 =?utf-8?B?cGJhZTVCbDJ5TXFCdWVldTJsSDNuNG13ZzQzdDdvL3BVUzJUUmtRSFhEb3dj?=
 =?utf-8?B?cERKZCtDYjR2eW52L3U3OS9wR0x5d2VsWGM4QXJOUlB2dzJSUkQxTTlNdHN3?=
 =?utf-8?B?U2FBTXhzMllkQnluWnRSOTIwQ0JuMVNZY1hOa3M3UVVOZW5KZmQrNHIrakR5?=
 =?utf-8?B?RWhxVDIyNm04YVlkbVA4OHoxQnRKYnVsVmRHcmNFRjhxVGpFQlljMEZINkRC?=
 =?utf-8?B?YUlrREFhYlptTDcvZWs2dzFlMUtOeE1kNXdHSzNwOTNaV0Nad1RyeWgycGox?=
 =?utf-8?B?L296dXlsZk84SnlQWjMzTGR0U1pqUWJrUCtkOGUzamptNHI2T0UyNWYvMEk3?=
 =?utf-8?B?U1BKQ1FBM2hOV1R1Z29CeTAxWTF5OHFZVVExcXVjUTdMdDFEaXgwZkl5Z3Iy?=
 =?utf-8?B?QlczK0VTZU5aY0NoY3pUZ25PUFdJS3FKL2FQcGxLZ0xjVlp5Zkl3dnMybWVY?=
 =?utf-8?B?VGx3azBHMTlPemQ5ZUtMSmxFd1JNM2syNGRWWXI3by91ZC9QQ01VdXV0bmNG?=
 =?utf-8?B?YVdDZ1FaSHpoWVRUN043U01mZThaVnNKb0pua2o4Um9kcHV5VnZ4Z3FZYmRD?=
 =?utf-8?B?c0E4bExuTkZFenZrVHZNN1pxMmd0b2J3aUMweFk4MDh3eHR0aHpaVXRrMkVR?=
 =?utf-8?B?QlBCUkpWWlp4NUVkditSdnNxOWNRUlE1eUx3OFlQT2YxbUV4WVg4ZU43TXZh?=
 =?utf-8?B?SkFOME5uWkw2V1FWMGFSYkZyc0FLUWtvUkRrWEFkekpZa3RrSXBuWTNSd0g5?=
 =?utf-8?B?b2dXYW1qM0dtbVlwcVVTcTM3b05RZ2tMU0dwWnFDaVdMaXYvdFZNb09yaHZI?=
 =?utf-8?B?cXBhOTdGQmc1Qy83TGQrbjc5OEtlcW9CTkNlNGlxaHBtNWVHeTU3aytSbnZQ?=
 =?utf-8?Q?vIPHc5jqYT14YSgt6jJqCUdQo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b14579c-f585-4bbf-d207-08dade889d31
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 10:39:15.9928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kK6tMikcsrfp6zwZBwWzDa0bcK5IO0mzgkvW2sZz5hWEElf8QPeRtKyWYD02QfrpcvTnMt6W4x8gDAXEvpmSgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIERlY2VtYmVyIDE1LCAyMDIyIDM6
NTAgUE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IGlu
dGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMi83XSBkcm0vaTkxNS9kaXNwbGF5OiBtb3ZlIG1vcmUgc2NhbmxpbmUNCj4g
ZnVuY3Rpb25zIHRvIGludGVsX3ZibGFuay5bY2hdDQo+IA0KPiBPbiBUaHUsIDE1IERlYyAyMDIy
LCAiTXVydGh5LCBBcnVuIFIiIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4gd3JvdGU6DQo+ID4+
ID4+IEFuZCBob3cgd291bGQgeW91IHByb3Bvc2UgdG8gZHJvcCB0aGUgd3JhcHBlcj8gVGhlIHdy
YXBwZXJzIGFyZQ0KPiA+PiA+PiBhbGwgYWJvdXQgcmVhZGFiaWxpdHkgaW4gdGhlIGNhbGxlciBz
aWRlOg0KPiA+PiA+Pg0KPiA+PiA+IEkgZGlkbuKAmXQgbWVhbiB0byBkcm9wIHRoZSB3cmFwcGVy
LCB1bmRlcnN0YW5kIHRoYXQgd3JhcHBlciBpcyBtb3JlDQo+ID4+IHJlYWRhYmxlLCB3aGF0IEkg
bWVhbnQgaXMgdG8gcmVwbGFjZQ0KPiA+PiB3YWl0X2Zvcl9waXBlX3NjYW5saW5lX21vdmluZy9z
dG9wcGVkIHdpdGggaXRzIGZ1bmN0aW9uIGNvbnRlbnRzLg0KPiA+Pg0KPiA+PiBXaHkgc2hvdWxk
IHdlIGR1cGxpY2F0ZSB0aGUgY29kZT8NCj4gPg0KPiA+IHN0YXRpYyB2b2lkIGludGVsX3dhaXRf
Zm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSB7DQpCb29s
IHN0YXRlIGNhbiBiZSBhZGRlZCBhcyBhIHBhcmFtZXRlciB0byB0aGlzIGZ1bmN0aW9uLCBvbiB0
aGUgb3RoZXIgaGFuZCwgY2FuIGhhdmUgc3RhdGUgPSBmYWxzZSBhcyBhIG1hZ2ljIHZhbHVlIGFz
IHdlbGwuDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4gPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiA+ICAgICAgICAgZW51bSBwaXBlIHBpcGUgPSBj
cnRjLT5waXBlDQo+ID4NCj4gPiAgICAgICAgIC8qIFdhaXQgZm9yIHRoZSBkaXNwbGF5IGxpbmUg
dG8gc2V0dGxlL3N0YXJ0IG1vdmluZyAqLw0KPiA+ICAgICAgICAgaWYgKHdhaXRfZm9yKHBpcGVf
c2NhbmxpbmVfaXNfbW92aW5nKGRldl9wcml2LCBwaXBlKSA9PSBzdGF0ZSwNCj4gPiAxMDApKQ0K
PiA+DQo+ID4gICAgICAgICBkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ICAgICAgICAgICAg
ICAgICAgICJwaXBlICVjIHNjYW5saW5lICVzIHdhaXQgdGltZWQgb3V0XG4iLA0KPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICBwaXBlX25hbWUocGlwZSksIHN0cl9vbl9vZmYoc3RhdGUpKTsg
fQ0KPiANCj4gQW5kIHRoZSBzdGF0ZSB2YXJpYWJsZSBjb21lcyBmcm9tIHdoZXJlPw0KPiANCj4g
QlIsDQo+IEphbmkuDQo+IA0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcg0K
