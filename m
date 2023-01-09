Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C31E662507
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 13:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC67610E3F3;
	Mon,  9 Jan 2023 12:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6DCF10E3F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 12:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673266050; x=1704802050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Mdy5n9pISwi/8FVmC0jseR4zKzLu8726mR+x0/Ia1Bg=;
 b=gvLbCrU05GxJmEzovrpWwnm3PuVOC1ve0wy2h3Y/8cPFAUC/+hz1dYM3
 i4gRQEAZJXhWHN4xE9ZOLGRiOBueK6TYbGD0GmXI76ihSnBAc6wK6aMWo
 Pkcbl5/aabZCWvwKGtma5/MKxsEBLkeck8+MS1MnTVpn7PaKKyd0RJVSk
 OFAQO5//3dhC3LEM5x5F8PVVOGhER42gmG/L2lHhE1phjrqQDVE5V73Jv
 f44XRbSRQF89oktpLiB8JfQTGn8WRVvSa0V02xjBnA2i76oRTwFvNN7Ow
 YEECWwmNJWaiEeNAnHvXFPjyhSoBEjETbHW15Uxfrz91enLkSfiDgnb5u w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="385158185"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="385158185"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 04:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="658575469"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="658575469"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jan 2023 04:07:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 04:07:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 04:07:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 9 Jan 2023 04:07:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 9 Jan 2023 04:07:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OvM/fmvvt3U/iCpCyTrXIswAzR1f2pYJI024b0n9Qc+XvU+5dsQrhodPO1UDGbq0ej+y5OTs7eghlCiOaW++yEgaqiceKxyOnZEJLAzEssJhV3UuF2AJPjdmTLr1tQe6XlG7HfwisxzXNOBshe2RFeTTVzaipdKHRb38QogBpDqjTAp4le96tRpM5T/zS7T3QhuMe0tiBQYhF4x81pWzJ+/BMURVpGn8FsDvHPXahIShgTJK8e3uwIJvnnrhk6mFUlEHpLvxnUl2uacyF2AArLH/msbygIrS9U5gPQVL+9AIXdPybYrjetKAmMAsR1ml2c+0ub1xt3ruuBMJ6OTW2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mdy5n9pISwi/8FVmC0jseR4zKzLu8726mR+x0/Ia1Bg=;
 b=Rxcg8QT9aXvWOWd+vxexWrxy9YNUPYZj7YHDSlTo6mX9cImhQbSW7rHC6oj3OSB8ZdqhrLkPfrKN3EJW8TEpG0AetEBE5nb0461Wqt3Ap4qZfFydcSkJ/PnQBA8+XG/DrqaC/XOa594gM3i+mLA7Nk8qmMXFlQIQfILgEOtx+EdWUV6AtcqI82ZfFPxAn6DSOvgKkMU/O2KoU5NUuQgH8KnpiNxINXstRVNzTuWbu2eZKkWXTniyjkBGZgQeWjD9cG4NU87Fr28o9M9da+v6NeGlQOjOMiP0U9yTfoxF1gALakKm3hksi+N91MGOuGLcLIagZcplekdvUBknhR0XIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by CO1PR11MB5171.namprd11.prod.outlook.com (2603:10b6:303:94::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 9 Jan
 2023 12:07:27 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f%6]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 12:07:26 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v7 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
Thread-Index: AQHZI/jg4GjJSSGxs0ySUghajYDcaa6V/e2A
Date: Mon, 9 Jan 2023 12:07:26 +0000
Message-ID: <91a7a09692cb831d0548af71ec53af98827387d4.camel@intel.com>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
 <20221223130509.43245-2-luciano.coelho@intel.com>
 <Y7u83SCf5CGbNZ6v@intel.com>
In-Reply-To: <Y7u83SCf5CGbNZ6v@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.2-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|CO1PR11MB5171:EE_
x-ms-office365-filtering-correlation-id: f74589db-70eb-4178-dc93-08daf23a130a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zV/Q+LiHv2bK1HbdhqUDPWNSN6e/UHgqiLya834Za6rj1eWTRvwfddbmU/yW+HFIp2vVuyUx8ntyFzaexoW6xv+IRCdGsnA9AgxI/jElQFr+WZ+cAxPAT+cNiywEGNvlBT676nMLFIK61L3MWTBK4ybHfX0e+0NoHOCidqx4RTOMn5ZocbJvJbtNL1hWEcTJwyKGPvmJXfenGBv0S//nhBFN2mYprXuQnG20pPT2Y2+BpdlVQHU30Z187hrspR2qzlBEBvLyZPQZBbpFYW3sJYlszajrcpidCAdHg7Kk/IldFP6jtoDQqdN1VTwL+ju1jbkafVnpis9InQ7APCcTcqo/ece59rYpBAMRBCH5YKBTb9dxQ+qa6EQiIcvnMHr8cvltGbB4upV4xHnThsfwg5MipEZpQwa4f4McC94YZiynMPWnAlmU3qJF/mVc6r5n7EukukDX+7ktWjM+f4BS9cgFOJeRzB40wCzeWZPN9GSmwckO6bgb4PHqn6/FEwQCVlB0c5riUzAe0JdCp5NpuNVl0w6NL2sgUNJNzFXGSg9FvVALceSc/D9qY/jSDdlXzGAwZbVwz2UlWbq8mDJDtgaQKQK3AS/U9w3+uMspbUEmxfhLKwVgpkIcLLBeuIP7KkGzZi2BXGeUo9zt5EmDT6AUp+eaSvFvdTookZabxkCvAxg1LPMnZpZ+EJHsIQWZbO12hrx/OiXntOEDBatBsQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(136003)(39860400002)(451199015)(6506007)(478600001)(6486002)(26005)(2616005)(4326008)(186003)(64756008)(66556008)(66446008)(66476007)(76116006)(6512007)(91956017)(8676002)(71200400001)(37006003)(6636002)(316002)(83380400001)(86362001)(38070700005)(122000001)(38100700002)(82960400001)(66946007)(66899015)(41300700001)(36756003)(5660300002)(2906002)(6862004)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFZJeDlPS0VUSENJajhLbmpQbE1sakZHTEIvWG5pM3Mzd3RjaUJkQTNxYlA5?=
 =?utf-8?B?L3p1OHpZRFB5MXl1QS9wMmNBR1ZWR3E0MDZUSjVWSmFhMUxYTjEzMXB4UEFm?=
 =?utf-8?B?QkowaVRXYXRjYVdDMFE5cVZ2WGFSNUVNUmEvZklTR29YK25jUjZIbHhQM2tC?=
 =?utf-8?B?UXV2Z3JBZitsYmFYb2hWR2RpZUU3RWU2TlNZQ1o3TDhsS0FwR3NGSVp3REFy?=
 =?utf-8?B?TWlBcWN1b3BJaHhOdUE1Vy9KZHNqWWZYdGxHcW1nYzhTL0Jla0hMZVg3TmVl?=
 =?utf-8?B?MWhya24wdldhN2xDRzB3MkFsb3dPTzN1MkhpZWdKdkl4WDhZUm11ZmEybHNz?=
 =?utf-8?B?dHBjVlJiMVZVYXFSMm9CRS8yYmNmajRYYjNPMDNkeVlmelBzMFpONFBkM0FR?=
 =?utf-8?B?aEFoRjFaQ2l5aEdyOFZ1SXlIakJxbnQ3S25meEdjLzdkVURFRk5aKzRKVmM3?=
 =?utf-8?B?L0tRVU5BUUs0dW42Z3BPUHFQQ0tFUlhJbWpPc3dkQ1JObkllSkdGWlJrbEx6?=
 =?utf-8?B?VkdabzcvM24wVFNWOFF4clpyTHNTdVhyYlo4SkN0OHRVcWZDa0NIL29Kcm43?=
 =?utf-8?B?bWFQdjNGbFVoSXFUZDMzaXlRSVNlS2lEdTcvT1MrK00yQ1RtWGcxY3paMmJW?=
 =?utf-8?B?RURGTDQ1a3ZPcDU1Ynd6amxxSVNLeFdPMzJpWlNIeTc4WEEzL3ZncnpxcFBE?=
 =?utf-8?B?ZitGYkduTWRBVVR1cWg3ZVJ2U20yRm9zWkRmQXpCdEs5TnpOdVdWbUZpenJO?=
 =?utf-8?B?TU1tTkViamUvWi9rUXZKNFRTdnNURi92Qk51WDdIQ0RHdWxvdjhyWlNQcm04?=
 =?utf-8?B?SXVWMXZ5WWw4dWkrUVdXQlQ2dFR6a1Q5UTVUTENOL04rcjgrRXR4NDZKcVBn?=
 =?utf-8?B?NVEvZkFRM21ra2RSM2FPK3FDTEtYZGg0cFl4aWZGM2paS3QyckYzaW4rcUs0?=
 =?utf-8?B?dzcwOWp1MFpjcXg4bzVIUFhDb3IxRDU5ak0vMjR3bFFXZ283blIvWUNPTTJO?=
 =?utf-8?B?YXZmYzJxeWp6OHowd3NsblJxTWhUa1gwcnpmNGxVc3dhcFBickF4cWpNclhP?=
 =?utf-8?B?aDlVWGZiOStqc2pPMWNLNzhZQnJ6Z2dtNkpMdVhJcUQ4UWM5MGtiNmUxS1l3?=
 =?utf-8?B?dXdJZHhaazZaK1N6K0N6R1h6RjJwRWQ3Sjk2UXhweGs0NWZwMnJwK3EydEJY?=
 =?utf-8?B?T05hZXE4TDJhQU5VWjA1cHNnVWl0SFFJQnBHcVdsT0NFaHRSWUxKaUxPUHY5?=
 =?utf-8?B?RWF5ZFhFSklBYmw2cWxMZEdqVFNEYVlJVjJRU3ZCRmZ6T05LWnJ6NmI3NmlT?=
 =?utf-8?B?cWF3S2pVVHpBUGFnRHJVVW1oLy9qVGMxNkhiekJpNGFOMlFmWlJSamRWMjdv?=
 =?utf-8?B?cER6VUNFZHNBeitpWGdYbHBKTkR2SUVPM3EzaEhPZC9QNDA5U0M0cm9nZi9t?=
 =?utf-8?B?RG5TWG1Ha01iZXRYVHFiK1RPRDFzTDNyRnJVRnZ3cTZ6U25vaFdpTWVrUHJP?=
 =?utf-8?B?M0h3UFNKWDJKSEF0ZGVRbnVHOVFCMURZY2I1WDVGU0xCbnBxUTRGTGF6bDNI?=
 =?utf-8?B?Zlk4SERIVjNwUXQ1bmhqYzR2MUVObXQwMWZ1WEtOWHh2c1pSZmxlMXc5czdu?=
 =?utf-8?B?anFrQm9kMzJZK0hzSVBWSHJvbUZhbG9zck1oQzFSRk9WSWNMS2hvR25CcTg0?=
 =?utf-8?B?aktrNXNoSjhQOTZzdjRHaThwZnZQRzQzamd5TVhjWXY5VFZFbkEvOGRvcWRI?=
 =?utf-8?B?KzNpUUkvV09JeUxSSmFnTUZpZHJ1RFFjaENYeURIWFQ0SmIyOEtzNFdnVzBx?=
 =?utf-8?B?NStVcFQ3UGtZZ0RHOGZkN0ZqZ1VUeVVkaS9lT3graGo4VXRnWklLWFBjVTVm?=
 =?utf-8?B?VlNOMS9Tcm9vT2psWWlMS1crdm40dWVZckEvVHBmZlM3ZDV6MEJzcTA0L3ll?=
 =?utf-8?B?MXlrK3BCQUFtVDBsRjI5MXp6QXNpVTV4dkV3dkRVckNxZzhqbGJKNzlCaHVo?=
 =?utf-8?B?WUFTRHpXQlVDNHBqSlBsellqc05SS3B1NTZLR3JpVE9GcXIrMkhJMlhRUENn?=
 =?utf-8?B?TWltMkZmVnVyNUlXRFBVSmY4QUFzRUFYK0NPa2RSVnNXa3dKVitPMnM5QWNa?=
 =?utf-8?B?V3ZFMDVrd3RFdjQvdThETXlUaFU0SktBMG5EK2V6bEF4MkxyaTZmRUdzbkVy?=
 =?utf-8?B?ZkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <49811FB591808F449DBAD90B68DA0E0E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f74589db-70eb-4178-dc93-08daf23a130a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2023 12:07:26.7694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cSYNy/UC6RK9qK+rGXIEbkFQHtiOouzd+iWWfFGmAz66C5RP4lC4NaG3Pes7K2whY3KfbAAt97HXLqFhBdF0rNBnn+tzQ3NJNXVa2Jb4z8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5171
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTAxLTA5IGF0IDA5OjA2ICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gRnJpLCBEZWMgMjMsIDIwMjIgYXQgMDM6MDU6MDhQTSArMDIwMCwgTHVjYSBD
b2VsaG8gd3JvdGU6DQo+ID4gSW4gbmV3ZXIgaGFyZHdhcmUgdmVyc2lvbnMgKGkuZS4gZGlzcGxh
eSB2ZXJzaW9uID49IDE0KSwgdGhlIHNlY29uZA0KPiA+IHNjYWxlciBkb2Vzbid0IHN1cHBvcnQg
dmVydGljYWwgc2NhbGluZy4NCj4gPiANCj4gPiBUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBv
ZiB0aGUgc2NhbGluZyBsaW1pdHMgaXMgc2ltcGxpZmllZCBhbmQNCj4gPiBvbmx5IG9jY3VycyB3
aGVuIHRoZSBwbGFuZXMgYXJlIGNyZWF0ZWQsIHNvIHdlIGRvbid0IGtub3cgd2hpY2ggc2NhbGVy
DQo+ID4gaXMgYmVpbmcgdXNlZC4NCj4gPiANCj4gPiBJbiBvcmRlciB0byBoYW5kbGUgc2VwYXJh
dGUgc2NhbGluZyBsaW1pdHMgZm9yIGhvcml6b250YWwgYW5kIHZlcnRpY2FsDQo+ID4gc2NhbGlu
ZywgYW5kIGRpZmZlcmVudCBsaW1pdHMgcGVyIHNjYWxlciwgc3BsaXQgdGhlIGNoZWNrcyBpbiB0
d28NCj4gPiBwaGFzZXMuICBXZSBmaXJzdCBkbyBhIHNpbXBsZSBjaGVjayBkdXJpbmcgcGxhbmUg
Y3JlYXRpb24gYW5kIHVzZSB0aGUNCj4gPiBiZXN0LWNhc2Ugc2NlbmFyaW8gKGJlY2F1c2Ugd2Ug
ZG9uJ3Qga25vdyB0aGUgc2NhbGVyIHRoYXQgbWF5IGJlIHVzZWQNCj4gPiBhdCBhIGxhdGVyIHBv
aW50KSBhbmQgdGhlbiBkbyBhIG1vcmUgc3BlY2lmaWMgY2hlY2sgd2hlbiB0aGUgc2NhbGVycw0K
PiA+IGFyZSBhY3R1YWxseSBiZWluZyBzZXQgdXAuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
THVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiANCj4g
PiBJbiB2MjoNCj4gPiAgICAqIGZpeCBEUk1fUExBTkVfTk9fU0NBTElORyByZW5hbWVkIG1hY3Jv
czsNCj4gPiANCj4gPiBJbiB2MzoNCj4gPiAgICAqIE5vIGNoYW5nZXMuDQo+ID4gDQo+ID4gSW4g
djQ6DQo+ID4gICAgKiBHb3QgcmlkIG9mIHRoZSBjaGFuZ2VzIGluIHRoZSBnZW5lcmFsIHBsYW5l
cyBtYXggc2NhbGUgY29kZTsNCj4gPiAgICAqIEFkZGVkIGEgY291cGxlIG9mIEZJWE1FczsNCj4g
PiAgICAqIE1hZGUgaW50ZWxfYXRvbWljX3NldHVwX3NjYWxlcigpIHJldHVybiBhbiBpbnQgd2l0
aCBlcnJvcnM7DQo+ID4gDQo+ID4gSW4gdjU6DQo+ID4gICAgKiBKdXN0IHJlc2VudCB3aXRoIGEg
Y292ZXIgbGV0dGVyLg0KPiA+IA0KPiA+IEluIHY2Og0KPiA+ICAgICogTm93IHRoZSBjb3JyZWN0
IHZlcnNpb24gYWdhaW4gKHNhbWUgYXMgdjQpLg0KPiA+IA0KPiA+IEluIHY3Og0KPiA+ICAgICog
Q29uc3RpZnkgYSBjb3VwbGUgb2YgbG9jYWwgdmFyaWFibGVzOw0KPiA+ICAgICogUmV0dXJuIC1F
SU5WQUwsIGluc3RlYWQgb2YgLUVPUE5PVFNVUFAgYW5kIC1FQlVTWTsNCj4gPiAgICAqIEFkZCBh
bm90aGVyIEZJWE1FOw0KPiA+ICAgICogUmVtb3ZlIHVubmVjZXNzYXJ5IHVuZG9pbmcgb2YgY2hh
bmdlIGluIGVycm9yIGNhc2VzLg0KPiA+IA0KPiA+IA0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIHwgODUgKysrKysrKysrKysrKysrKysrLS0tDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMNCj4gPiBp
bmRleCA2NjIxYWEyNDVjYWYuLmE5YTNmMzcxNTI3OSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYw0KPiA+IEBAIC00MSw2ICs0MSw3IEBA
DQo+ID4gICNpbmNsdWRlICJpbnRlbF9nbG9iYWxfc3RhdGUuaCINCj4gPiAgI2luY2x1ZGUgImlu
dGVsX2hkY3AuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX3Bzci5oIg0KPiA+ICsjaW5jbHVkZSAi
aW50ZWxfZmIuaCINCj4gPiAgI2luY2x1ZGUgInNrbF91bml2ZXJzYWxfcGxhbmUuaCINCj4gPiAg
DQo+ID4gIC8qKg0KPiA+IEBAIC0zMTAsMTEgKzMxMSwxMSBAQCBpbnRlbF9jcnRjX2Rlc3Ryb3lf
c3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjLA0KPiA+ICAJa2ZyZWUoY3J0Y19zdGF0ZSk7DQo+
ID4gIH0NCj4gPiAgDQo+ID4gLXN0YXRpYyB2b2lkIGludGVsX2F0b21pY19zZXR1cF9zY2FsZXIo
c3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUsDQo+ID4gLQkJCQkg
ICAgICBpbnQgbnVtX3NjYWxlcnNfbmVlZCwgc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMs
DQo+ID4gLQkJCQkgICAgICBjb25zdCBjaGFyICpuYW1lLCBpbnQgaWR4LA0KPiA+IC0JCQkJICAg
ICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gPiAtCQkJCSAgICAg
IGludCAqc2NhbGVyX2lkKQ0KPiA+ICtzdGF0aWMgaW50IGludGVsX2F0b21pY19zZXR1cF9zY2Fs
ZXIoc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUsDQo+ID4gKwkJ
CQkgICAgIGludCBudW1fc2NhbGVyc19uZWVkLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0
YywNCj4gPiArCQkJCSAgICAgY29uc3QgY2hhciAqbmFtZSwgaW50IGlkeCwNCj4gPiArCQkJCSAg
ICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gPiArCQkJCSAgICAg
aW50ICpzY2FsZXJfaWQpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoaW50ZWxfY3J0Yy0+YmFzZS5kZXYpOw0KPiA+ICAJaW50IGo7DQo+
ID4gQEAgLTMzNCw3ICszMzUsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfc2V0dXBfc2Nh
bGVyKHN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YQ0KPiA+ICANCj4g
PiAgCWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwgKnNjYWxlcl9pZCA8IDAsDQo+ID4gIAkJ
ICAgICAiQ2Fubm90IGZpbmQgc2NhbGVyIGZvciAlczolZFxuIiwgbmFtZSwgaWR4KSkNCj4gPiAt
CQlyZXR1cm47DQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+IA0KPiBBcyBJIHVuZGVyc3RhbmQg
dGhhdCBjaGFuZ2UgaXMgYSBiaXQgaXJyZWxldmFudCB0byB0aGUgcGF0Y2ggdG9waWMsDQo+IGlk
ZWFsbHkgaXQgc2hvdWxkIGJlIHJlZmxlY3RlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIHRoYXQg
d2UgYXJlIGRvaW5nDQo+IHRoaXMgYW5kIG1vc3QgaW1wb3J0YW50bHkgd2h5Lg0KDQpSaWdodCwg
bWF5YmUgdGhpcyBzaG91bGQgaGF2ZSBiZWVuIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2UuICBJDQppbml0aWFsbHkgZGlkbid0IHJldHVybiBhbiBlcnJvciBmb3IgdGhlIG5ldyBmYWls
dXJlIHBhdGgsIGJ1dCBWaWxsZQ0KYXNrZWQgbWUgdG8gZG8gc28sIHNvIEkgY2hhbmdlZCB0aGUg
ZnVuY3Rpb24gdG8gcmV0dXJuIGFuIGVycm9yIGhlcmUgYXMNCndlbGwuDQoNCg0KPiBIb3dldmVy
IEknbSBub3QgZ29pbmcgdG8gYmUgcGlja3kgaGVyZSwgYXMgaXQgaXMgYSBzbWFsbCB0aGluZywg
anVzdA0KPiBhcyBhIHNpZGUgbm90ZS4NCg0KVGhhbmtzIQ0KDQoNCj4gUmV2aWV3ZWQtYnk6IFN0
YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KDQpUaGFu
a3MgZm9yIHRoZSByZXZpZXcsIFN0YW4hDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
