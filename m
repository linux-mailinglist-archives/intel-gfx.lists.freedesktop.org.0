Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8EB7A8916
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 17:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 925A610E4CD;
	Wed, 20 Sep 2023 15:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1710A10E4CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 15:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695225493; x=1726761493;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w0rgD0p26cUPe2wC3w93nWHTySpbLpeFOCkXxUODLZo=;
 b=nH6zPnlXun6ZxYL11abWG9WrfiW674NmrYlwAY9iQQKfqVF19UsuBHIh
 6/NrJLW8mxaEjYebIaASvstrwM82EHK889RZSbdP7iSVbWIA7IJsvL9c3
 ZBNzL0e2HUB7AN/fOEOCBCys2ZYcJS/6+UG9FaVhmOjjHGLqbu1UElYPt
 rJv/2lOwFK6AZvI1qHeIGOqgmHIa2mPPBYE+jSrpNkvmfTlrNFZQL5iVh
 bt2h3eOFZH9GBHc9fK2yRhA1McaKM3WXyY2VSKcx3cQOVONowlWpInSu9
 IlCgrX8zGP8ae+ZA4WG85Np10wAH89r3F2QT3W19HHUka6t7rbmWadmRi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="380179442"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="380179442"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 08:57:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="696348156"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="696348156"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 08:57:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 08:57:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 08:57:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 08:57:48 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 08:57:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SWbSQQCe0lyeTWB2l+bzB5M7VfddSzerbmRHtjKy1XDTB1i8V6QDPh/XVi7We8apXvoX3O6gyw58F3iEFVHvxbNLzMe35VW4rANMxP4Qcny5RznpN1fR2VnNlnUJPnxyql6t8pWVMT/FIROrz7Rf00jmCBOPHPX2p9Fx8/TRhi8x0vslZYFy8JlTEvHjxhukqJVYVnWklZPUWHQ6nAIIH/goJKTx0is5FAur9seN7aOIttnaIWyeiWTXfbEowMTQCh1uwkFc5mCSna5k4huE7FtkXNmTglH4F1fgfPLFD17zcRBnLz1iw+X24a5VapCR40dUOII11Uht7kzlNhouTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w0rgD0p26cUPe2wC3w93nWHTySpbLpeFOCkXxUODLZo=;
 b=oWSGqFYTNeSy+kibdvmtSpHQWg1gK181jAl8bzNMExKqiQI062b56a8P68/dwC85W1EAJFuOh+UaWioEXucgSrCNxkGUWWNVSQn59maTlL/BKRBlCGtBwm/mITdWI0F8aaWwwjM1DxzksSjvb8NC6i2ujKncXU0kAOgmTEtpQ+3rnt21LiQu23t8rj0Rcdnie4nH7kffheXgFKs+I0A0UOBl1z6A4cxQ+RNfodCZJvzPP3bIkFTVRk+66ectAsg4ZFJI52DvDQczc0Paz1qyeDKmodvRJ25TGoW/pIRgC5i0Ski1rOINzAOnW6WQdstqtJQPwgE2bRwJnbkZ8y+sNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB7157.namprd11.prod.outlook.com (2603:10b6:806:24b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Wed, 20 Sep
 2023 15:57:44 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6792.019; Wed, 20 Sep 2023
 15:57:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 2/2] drm/i915/hdcp: Move common message filling
 function to its own file
Thread-Index: AQHZ668EjtdnDPmNeEujN90njB/W2LAjnygAgAA7/3A=
Date: Wed, 20 Sep 2023 15:57:44 +0000
Message-ID: <SN7PR11MB6750D0421D9D389995AC48C6E3F9A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230920085014.246564-1-suraj.kandpal@intel.com>
 <20230920103852.264728-1-suraj.kandpal@intel.com> <87r0mtqc61.fsf@intel.com>
In-Reply-To: <87r0mtqc61.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB7157:EE_
x-ms-office365-filtering-correlation-id: 40655716-c372-4fcf-72db-08dbb9f25411
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NWGSS4OKrjHrZksGEzri/ab2Xfzw7vDvaHxuGSNkD6t9uhs4dlwuEm1NWfFFV9ps6vf7SAqo/bJQiXwnbPymM+xOhvCsYZn/u4UgtM7IUKjSwJ9ofrE1jy7Xm7yup0QFDTBR4W6gqT3+ueuhqd1tP49Iqij138EoFH0ypOTI9xVU1n65FYDfOAiOHI/kKGY0OJ1wwkIEab+K7/uVBAGWzJrAVtvNWI71OZVTU3flauprptMkoFxnk4736C6vwRp5zN9FwsbkV+9r/Ah65i0HmGhUXczBN8gwOuEcmq7pNPgV3ojRjmFDxdf7xLnMT2ATF/eUKfnx0r/CA8gsocXXEfuSZDYU9c61iKVRXWKDXZlI79yPutowbroc+9zucS2VzLphKFilMUMrQC3MG+XFjbWnUu33AyS+DgvkF7aXs3quB64UKQiHv0OPJ5F5FbDD5pTzpwZ7W/mp8hYd079JDL4OgoigcIKTAcAlggygFcoyvHAevoixB58eUXGF8yLzDJ35gsEo57PJj5DqYI8Q28qjEKXQowqNZ0nDYAtLjPicP3fesTJH/exCHEYPT2mKglNAT7EDzQp59/foOicZt+GKlUdEnGx+z06VRsr47kEZ9417jea2AX3HHjIGr4ay
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(136003)(346002)(1800799009)(451199024)(186009)(86362001)(33656002)(8676002)(41300700001)(2906002)(15650500001)(83380400001)(76116006)(52536014)(26005)(4326008)(7696005)(66946007)(71200400001)(55016003)(8936002)(5660300002)(82960400001)(66446008)(66476007)(64756008)(66556008)(107886003)(9686003)(38100700002)(478600001)(6506007)(38070700005)(316002)(110136005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dW9Uc3crUzlkZEh3Ym0vSkEwaGxTUkpsMWUzQ2lPSlpudEIwRDZGQVlKcThj?=
 =?utf-8?B?SmM1MFN1cFZ4RGFBRVIrWXVNTXNUVnhSbVBoc3ZJMGFKb2QvN3NBQW5XbmUy?=
 =?utf-8?B?MGw0OGJTOHd3TnJISXFEL2twZ1B5SHRsWGZMRnFmU213S0ZnTTJ0SDNxbnlL?=
 =?utf-8?B?SDVoSVdJUzRodnBKNkk5SGl2OUh1bTFaQVFXQ2pDSmJPU0NyY3RwTWtONEZE?=
 =?utf-8?B?am02NmZIK2d3VDdhdStYeGk4QWhuZTlUbFdWOUR2aGxlRzY3U3kyMXJLWlRZ?=
 =?utf-8?B?RitZMm5GVmc1M0VvSllzYmZDTTVENzVmdTREcW9CaUwxNmxXRHcvZzVoSWlZ?=
 =?utf-8?B?SHJtRXpjeE5aWXBBbE5CQnVuaXRQdC81cUdQN1l3THgwVDhaUjdRenlEUnJE?=
 =?utf-8?B?Z1ZQemhtSlJSaEdyaUFSNVl2em92MnYvTlhHWHU3UU5CeDdEQ2VpMEVQQWwy?=
 =?utf-8?B?VURsNndyQjZtM3d1aXp0b3hMRTlsaXcrTkhnbkQ4S3IwVDFscnNLZkhMMzVO?=
 =?utf-8?B?eHVtdUdQYnIxWjZ4Z1A4Y2huZmFGSjlKcklTWUM3cVEzS3ZEOWZyZ3oyTGdl?=
 =?utf-8?B?VXhEZXhkMEVqTTBIYVU2TitNKzlEWFVwYjJ3V21Uemk5eTVKaVEzRDNoaWZR?=
 =?utf-8?B?MklxYTdnbFZBbStvZVB2aERQSTFrZ081aG9TV2JyMlBUdndrNkNyL1ozakxa?=
 =?utf-8?B?eUhxQ1ZvL0s2empiT0N4WElnNFJaQVNCbTF4SFRzNjUwVmFSeHUrbzFDMWpJ?=
 =?utf-8?B?Nittb21yOGJISFlYaXFjcXkvcE1qSkdOVlhwZTdDbndZc0pCblE2SVBGK1hV?=
 =?utf-8?B?RFQ4ZnZoS05jeGdqbXVVaEZieWtKajBBTnFYMmZOTlVYUlRla25RKzJyUUpK?=
 =?utf-8?B?K0tqY2plWGN3T3hVTkMvcVB4TnRtU2Y3SW0yTlk1dTlqaHQzOEJYeUdaNjR2?=
 =?utf-8?B?NkZOV1VjSjhyUUJ3TmhvQVptVnR0cUJCMEVmWDliSldmZlIvdEVHYmMyc2wy?=
 =?utf-8?B?WGprYTBGY0l0WFg1RkdRb2E4ZzZYNnA5QXRhTTk5VENMcTNtOFZoUjczU0lj?=
 =?utf-8?B?NHRrbEFXVHFWbGdBSGNqQ3VkT2xCSU9QZDZnRFcvMldnZExUNlZlc0VZSjVi?=
 =?utf-8?B?RzF0TXpmR0ZhNWcxYkwvYnJhQXN1TS9VUWlCOEpZY1BTWE1na3FrcEZjcmZM?=
 =?utf-8?B?c1U5emlRYmNacCtiL3FsUUZnQ1duaHZKQ0RDeStvSlVHQVl2VWtUNm82ZUU0?=
 =?utf-8?B?VTd5cDFydWYzcTBxOEwyS0NqWGcwcUh3TkhyeE0xNDM3aWhJdVEvbklyTXcz?=
 =?utf-8?B?UUZqM1VFd1RaMG1jdlUwZTVYbFVIRW1xQU1WUEY1elVUVkluU21SMW8rbEx1?=
 =?utf-8?B?dFlBZkJYUFdiaFhaNVcwaTNxdzBGcEpjSUlrR1dUaW81VkJpa2s3aFUzN1Ba?=
 =?utf-8?B?RFlSS0gvNEptTDhHSVhaY2ZMcStOWDBJK0VNWUF0eU5wTGdzUVExb0t0VkRH?=
 =?utf-8?B?elRnSHlnOVlqT2wzSWYzZGlKRVNYODdVbi82TzFSdW1aRE92QklIZUpXSno0?=
 =?utf-8?B?VCtPNDR5RFJ1M0xnRzZsaWJCR3NNUUNoWlpqZGkzWVBVZGhVRFdJa0FhMW54?=
 =?utf-8?B?OFVtbUJ1bm5lM3lpUWpTZlJjaFVuZUd0enlrWUZMakpmYUIwTTRMZE9hZWxY?=
 =?utf-8?B?S2FWZFRNaVJ4QmtKdDhxWHE1WHN4R2xaOG1yL2NlR3Rrc3p0N00vWWdiTUlR?=
 =?utf-8?B?dThNbkhEcTRxcnIrNE1wMDRpeFlYQVd1VHVXbDZFb3VaajhBYTlPOTBtQnVC?=
 =?utf-8?B?bitNaHVmMzZwUzlCbk5KcHVOWUtDVXR5UXluYngyVitINkpab0NBK3hlZUhD?=
 =?utf-8?B?RkdHZDh5Nm9oVmhPQ1N3MUMyNjYrVWRRaXZ3YnFVRDRSTkxkSUh3dXpRNWNG?=
 =?utf-8?B?ZjNHRkI0ZklLMFRVcmNjY0pEV0xjQU5Ea1NCOExxK2lzVDZxNDA5MzhneWRj?=
 =?utf-8?B?TmdKRUNiT1hDUHFLdmtWV0FlNkVyNTFQTEVaKzY0UTB0NVB3N2JkMDhxK3Bq?=
 =?utf-8?B?Sm9qYzBTMkxocFVBM1Zidm5tTElmd3dkczNvU1JveEQ3SFM3OWtaZlVGNjUr?=
 =?utf-8?Q?1JqD2DNO0EeCbicQhutVSSktW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40655716-c372-4fcf-72db-08dbb9f25411
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2023 15:57:44.6284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I+YBJ/DDM59lImErSFT57vSEh257ZiPsytJRXijXpJf2/MyLZscMybD4jYFlpuqLMC5Wx8WKQSr0bhT/Jsj99w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/hdcp: Move common message
 filling function to its own file
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

DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgMi8yXSBkcm0vaTkxNS9oZGNwOiBNb3ZlIGNvbW1v
biBtZXNzYWdlIGZpbGxpbmcNCj4gZnVuY3Rpb24gdG8gaXRzIG93biBmaWxlDQo+IA0KPiBPbiBX
ZWQsIDIwIFNlcCAyMDIzLCBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4g
d3JvdGU6DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRjcF9nc2NfbWVzc2FnZS5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3BfZ3NjX21lc3NhZ2UuaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4g
aW5kZXggMDAwMDAwMDAwMDAwLi4xMDk2ZGQzNjgyM2YNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwX2dzY19tZXNzYWdl
LmgNCj4gPiBAQCAtMCwwICsxLDczIEBADQo+ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBNSVQgKi8NCj4gPiArLyoNCj4gPiArICogQ29weXJpZ2h0IMKpIDIwMjMgSW50ZWwgQ29ycG9y
YXRpb24gICovDQo+ID4gKw0KPiA+ICsjaWZuZGVmIF9fSU5URUxfSERDUF9HU0NfTUVTU0FHRV9I
X18NCj4gPiArI2RlZmluZSBfX0lOVEVMX0hEQ1BfR1NDX01FU1NBR0VfSF9fDQo+ID4gKw0KPiA+
ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+IA0KPiBXaGF0IGRvZXMgdGhpcyBoZWFkZXIgbmVl
ZCBmcm9tIGVyci5oPw0KPiANCg0KQWhoIHJpZ2h0IHRoaXMgY2FuIGJlIG1vdmVkIHRvIGludGVs
X2hkY3BfZ3NjX21lc3NhZ2UuYw0KSSBkb27igJl0IGtub3cgd2hlcmUgbXkgbWluZCB3YW5kZXJz
IG9mZiB0b28gOi1bDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gQlIsDQo+IEphbmku
DQo+IA0KPiA+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4gPiArDQo+ID4gK3N0cnVjdCBk
ZXZpY2U7DQo+ID4gK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOw0KPiA+ICtzdHJ1Y3QgaGRjcF9w
b3J0X2RhdGE7DQo+ID4gK3N0cnVjdCBoZGNwMl9ha2VfaW5pdDsNCj4gPiArc3RydWN0IGhkY3Ay
X2FrZV9zZW5kX2NlcnQ7DQo+ID4gK3N0cnVjdCBoZGNwMl9ha2Vfbm9fc3RvcmVkX2ttOw0KPiA+
ICtzdHJ1Y3QgaGRjcDJfYWtlX3NlbmRfaHByaW1lOw0KPiA+ICtzdHJ1Y3QgaGRjcDJfYWtlX3Nl
bmRfcGFpcmluZ19pbmZvOw0KPiA+ICtzdHJ1Y3QgaGRjcDJfbGNfaW5pdDsNCj4gPiArc3RydWN0
IGhkY3AyX2xjX3NlbmRfbHByaW1lOw0KPiA+ICtzdHJ1Y3QgaGRjcDJfc2tlX3NlbmRfZWtzOw0K
PiA+ICtzdHJ1Y3QgaGRjcDJfcmVwX3NlbmRfcmVjZWl2ZXJpZF9saXN0OyBzdHJ1Y3QgaGRjcDJf
cmVwX3NlbmRfYWNrOw0KPiA+ICtzdHJ1Y3QgaGRjcDJfcmVwX3N0cmVhbV9yZWFkeTsNCj4gPiAr
DQo+ID4gK3NzaXplX3QgaW50ZWxfaGRjcF9nc2NfbXNnX3NlbmQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsIHU4DQo+ICptc2dfaW4sDQo+ID4gKwkJCQlzaXplX3QgbXNnX2luX2xlbiwg
dTggKm1zZ19vdXQsDQo+ID4gKwkJCQlzaXplX3QgbXNnX291dF9sZW4pOw0KPiA+ICtib29sIGlu
dGVsX2hkY3BfZ3NjX2NoZWNrX3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
IGludA0KPiA+ICtpbnRlbF9oZGNwX2dzY19pbml0aWF0ZV9zZXNzaW9uKHN0cnVjdCBkZXZpY2Ug
KmRldiwgc3RydWN0IGhkY3BfcG9ydF9kYXRhDQo+ICpkYXRhLA0KPiA+ICsJCQkJc3RydWN0IGhk
Y3AyX2FrZV9pbml0ICpha2VfZGF0YSk7IGludA0KPiA+ICtpbnRlbF9oZGNwX2dzY192ZXJpZnlf
cmVjZWl2ZXJfY2VydF9wcmVwYXJlX2ttKHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gPiArCQkJCQkg
ICAgICAgc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhLA0KPiA+ICsJCQkJCSAgICAgICBzdHJ1
Y3QgaGRjcDJfYWtlX3NlbmRfY2VydA0KPiAqcnhfY2VydCwNCj4gPiArCQkJCQkgICAgICAgYm9v
bCAqa21fc3RvcmVkLA0KPiA+ICsJCQkJCSAgICAgICBzdHJ1Y3QgaGRjcDJfYWtlX25vX3N0b3Jl
ZF9rbQ0KPiA+ICsJCQkJCSAgICAgICAqZWtfcHViX2ttLA0KPiA+ICsJCQkJCSAgICAgICBzaXpl
X3QgKm1zZ19zeik7DQo+ID4gK2ludA0KPiA+ICtpbnRlbF9oZGNwX2dzY192ZXJpZnlfaHByaW1l
KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGhkY3BfcG9ydF9kYXRhDQo+ICpkYXRhLA0KPiA+
ICsJCQkgICAgIHN0cnVjdCBoZGNwMl9ha2Vfc2VuZF9ocHJpbWUgKnJ4X2hwcmltZSk7IGludA0K
PiA+ICtpbnRlbF9oZGNwX2dzY19zdG9yZV9wYWlyaW5nX2luZm8oc3RydWN0IGRldmljZSAqZGV2
LCBzdHJ1Y3QNCj4gaGRjcF9wb3J0X2RhdGEgKmRhdGEsDQo+ID4gKwkJCQkgIHN0cnVjdCBoZGNw
Ml9ha2Vfc2VuZF9wYWlyaW5nX2luZm8NCj4gKnBhaXJpbmdfaW5mbyk7IGludA0KPiA+ICtpbnRl
bF9oZGNwX2dzY19pbml0aWF0ZV9sb2NhbGl0eV9jaGVjayhzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+
ID4gKwkJCQkgICAgICAgc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhLA0KPiA+ICsJCQkJICAg
ICAgIHN0cnVjdCBoZGNwMl9sY19pbml0ICpsY19pbml0X2RhdGEpOyBpbnQNCj4gPiAraW50ZWxf
aGRjcF9nc2NfdmVyaWZ5X2xwcmltZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBoZGNwX3Bv
cnRfZGF0YQ0KPiAqZGF0YSwNCj4gPiArCQkJICAgICBzdHJ1Y3QgaGRjcDJfbGNfc2VuZF9scHJp
bWUgKnJ4X2xwcmltZSk7IGludA0KPiA+ICtpbnRlbF9oZGNwX2dzY19nZXRfc2Vzc2lvbl9rZXko
c3RydWN0IGRldmljZSAqZGV2LA0KPiA+ICsJCQkJICAgc3RydWN0IGhkY3BfcG9ydF9kYXRhICpk
YXRhLA0KPiA+ICsJCQkJICAgc3RydWN0IGhkY3AyX3NrZV9zZW5kX2VrcyAqc2tlX2RhdGEpOyBp
bnQNCj4gPiAraW50ZWxfaGRjcF9nc2NfcmVwZWF0ZXJfY2hlY2tfZmxvd19wcmVwYXJlX2Fjayhz
dHJ1Y3QgZGV2aWNlICpkZXYsDQo+ID4gKwkJCQkJICAgICAgIHN0cnVjdCBoZGNwX3BvcnRfZGF0
YSAqZGF0YSwNCj4gPiArCQkJCQkgICAgICAgc3RydWN0DQo+IGhkY3AyX3JlcF9zZW5kX3JlY2Vp
dmVyaWRfbGlzdA0KPiA+ICsJCQkJCSAgICAgICAqcmVwX3RvcG9sb2d5LA0KPiA+ICsJCQkJCSAg
ICAgICBzdHJ1Y3QgaGRjcDJfcmVwX3NlbmRfYWNrDQo+ID4gKwkJCQkJICAgICAgICpyZXBfc2Vu
ZF9hY2spOw0KPiA+ICtpbnQgaW50ZWxfaGRjcF9nc2NfdmVyaWZ5X21wcmltZShzdHJ1Y3QgZGV2
aWNlICpkZXYsDQo+ID4gKwkJCQkgc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhLA0KPiA+ICsJ
CQkJIHN0cnVjdCBoZGNwMl9yZXBfc3RyZWFtX3JlYWR5DQo+ICpzdHJlYW1fcmVhZHkpOyBpbnQN
Cj4gPiAraW50ZWxfaGRjcF9nc2NfZW5hYmxlX2F1dGhlbnRpY2F0aW9uKHN0cnVjdCBkZXZpY2Ug
KmRldiwNCj4gPiArCQkJCQkgc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhKTsNCj4gPiAraW50
DQo+ID4gK2ludGVsX2hkY3BfZ3NjX2Nsb3NlX3Nlc3Npb24oc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QNCj4gPiAraGRjcF9wb3J0X2RhdGEgKmRhdGEpOw0KPiA+ICsNCj4gPiArI2VuZGlmIC8q
IF9fSU5URUxfSERDUF9HU0NfTUVTU0FHRV9IX18gKi8NCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxh
LCBJbnRlbA0K
