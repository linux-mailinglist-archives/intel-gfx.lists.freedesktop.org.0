Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93719768C40
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 08:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B1810E1AB;
	Mon, 31 Jul 2023 06:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C2D10E1AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 06:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690786052; x=1722322052;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=r/c5KHLbkLfwamCgbTldEH/OMjS9/0zO4yrKqmR5clQ=;
 b=fEgEORTYl9/CA1IGT2w5ejsxJ11qL0PTKWcv2G8na3MY+1i1fywB9yKL
 H/FTyGaRGvOKUe+nH+skcqw5zAhT57eiRiS1sDjWNSmi+COiE6t6glxtz
 v5l1V+84r+ykq8AcDvxunNkHntFg5Idprk/Qpwbv/tSpC5vpo/oDhHZFq
 YvBp33jXlapvklSUvnAMjefxQhqnJdorrIyk0jw9gXstTbkpSWUovppqi
 7LlpfAnt1ZPT7B6H27TT8EI4k6FHfTkDuhMShO7gWKJUU3YXuuej+V/Z9
 Ikwx3tBpv2wyxCERZJfIAIgoouf9b9xMyb39TZE7Q0rtheiOIJPt/xTAh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="435236823"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="435236823"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 23:47:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="851919594"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="851919594"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 30 Jul 2023 23:47:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 23:47:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 30 Jul 2023 23:47:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 30 Jul 2023 23:47:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmRigEli075MM8Ob4H2ufn5BX0uvMgFgslFoA5QXbPmm2aUpoIgugvzLU/0FPHYeLNLmAk4+b42zrqRWtmEnYpeYDv9F/qkTF/zuDy6+ddxdL/G1Vro1LqsbOa6emP22McAHkModmXYYszxcmais5KjtrEwTg1KsjpVjHNycAqR0fCh9Cx8ZKI/PbXGWo4SKK8w6b4Z6OfpCsOKBn02DreAtZ5wLAY4F5Q9NqaSGij6e95vxrOKjWsaFWPTr/yKFDnV3/REkkczWXxhoqqwkWtiuUkLXvSncP2igHK9gnGzgtwMgyYVz9WzMX9ecyz0HS6Isp6qKkJiD9XwA2wOJtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/c5KHLbkLfwamCgbTldEH/OMjS9/0zO4yrKqmR5clQ=;
 b=QRbxC1GF8eoplS8h+nn+B+XO/CzVcI8j1MWoxyx8XWXoqaGAd1y5shbdz2ev9zHuWfVZumgKzgkBJSkQ/GSoiZm+T5h/+rSEj0qmJxSias0PQPP5AcqdLMT1UrSN7BvuFHyZ4xcJtU5IimGFhCytHxQGYC8CvhqnOdj+JLbUU5XcmRKFi0gMbQQLyKj8bTtT5jALWwO7MD7G6rUH/6YMxG7f741QTksMLVFt086rxOameg2/vRSe4x70dQYrLm9oWHv/WvYD823Xrqem7TcFdPwlefFXHxm4k/Ki9JitdR3+PSmx59GhGXV1UNXAzw6aHS5WsTIImp3Jw3D5h8XozQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV3PR11MB8555.namprd11.prod.outlook.com (2603:10b6:408:1b0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 06:47:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6631.043; Mon, 31 Jul 2023
 06:47:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 4/6] drm/i915/panelreplay: Initializaton and compute
 config for panel replay
Thread-Index: AQHZwVLv1KJTPjo3/kqZRF2CIG9rUq/TcxSA
Date: Mon, 31 Jul 2023 06:47:26 +0000
Message-ID: <accb9747bbcb8ad836f55a939403a6e354cbba25.camel@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
 <20230728124609.2911830-5-animesh.manna@intel.com>
In-Reply-To: <20230728124609.2911830-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV3PR11MB8555:EE_
x-ms-office365-filtering-correlation-id: 95845d01-08bf-44cb-8ae6-08db919200c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qTAG39C5uF0sqIIKxwrPyDsDfJ13YjwhM6lwvXbpLwVpFtg2uh1M9tWk6bSXRFgO8hDGMZsZ0NAJ6P84FBhaqjzR9H9lAuoVz+8oh8BaK0qALHHbRhN5Cl7Xv9AnVSYzG6/Cdsk53H1yP/G76wGoIELtu3SaZS/D3AKMbZ7kCKs9d/X6KetADrlbXjpwmMbO3inOaEdwJu+q3uDtdyCL1fQiTW/qjxXJUNBjk+uP466slK0lRTVCRQxmE547ZVpqJAfvRakm4kgOlR4xIdzWh3+y2idTLVtgSku0bTkX2l2duqvuDBQmsGA84EXt0H8LHSrvGOnSmwuq2YUUXjPtyOt3copMtrK/gssHE9qwZaDmJHFK8ea1D9yrVzNsRRQsToywMK9SM93eqh2xh/XUmoDR+orut3n+7zeNaSazHAxukfyt0XhE8WvaQ8BdH2p6JZxD8hoBSDxXa9AEgD+VxXUqkX0CkLSqpJO3KSmUiUcyVZT9h03VIL1/8wI7ADKMHdI+FhYjyDnuoUpJ4dBjo30i1V+QKkrHWi/XfbRPu2etppv4wOl4uu03x5p6/imCSa0gxVeufYuRGrO8vw08H8ycj05bSvrYDLL5X1/2EZaD17ocILNA3g+/+szIk//5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199021)(6512007)(6486002)(36756003)(2616005)(6506007)(26005)(83380400001)(107886003)(186003)(66574015)(76116006)(91956017)(66946007)(66556008)(38070700005)(122000001)(82960400001)(110136005)(41300700001)(86362001)(66476007)(316002)(64756008)(66446008)(4326008)(5660300002)(8936002)(8676002)(38100700002)(2906002)(71200400001)(478600001)(30864003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LzJvZ251dlYzVkVKZWVibzJSTzBGWnBjMjBETnlmL0FHRnAzYXdvcWRNWnZT?=
 =?utf-8?B?eEZrbFNvMGRQM0NwTFpNUmRydEE0Z0xwTW9ab2piQVRMODdrVGRIZHEydDla?=
 =?utf-8?B?Q0dCRXVsUkZYYjJFTlE5M2ZSVGtxbmVjNWVNekFCamNTRlpHN3JoamY3UDI3?=
 =?utf-8?B?cmJZblVSU1RtQWJQKzNBTDdrdGx0eXZkdGFSN2ZMTTJEZVZBem9vSE1nSmFp?=
 =?utf-8?B?d0JnanVDNnBjNTlzeFJzQThYck5GZFNHZ1ZvVzBuWVV5djRENGM1MkFFUTd1?=
 =?utf-8?B?ZGpxWXIvcDgxL09vWmlXNit1NFdTZVRJSGpiWFNqclJYYUtNdFhOQnp6bCs5?=
 =?utf-8?B?Y0Q2cW5DQlR2TG5haGxVU2ZpOFZLa0Y1RUVuZ29pK2JoL3FVejllS1dFNjJO?=
 =?utf-8?B?NTVhMzFFS0UvdDZLSmJnQmx6cVFJL3d6K1NFM2ZzekpjS29lTnFIOE1KbEJp?=
 =?utf-8?B?NUV2VDJKcDBaR1dFNTFhR1JiZkh1dFV4T2RsL3d0dWs3UHpiSE43TzI1S1hw?=
 =?utf-8?B?WXdyZ2NhbW02eExEa0ZreUdVZnVLSGtXTDYwVGdPTDdxUzBEazVjN0J5YThE?=
 =?utf-8?B?bExDNmg3ODJIQXpxRmJEMXZTV1hmdDJPcjRtV0hXMjZlZ1V3TU1COW9qcDZ0?=
 =?utf-8?B?eUl5dmFqdlpNVURaMXlZR1lUaVV4MEpMV21lZkg3SitwZ25nTUV1eXBGYzgr?=
 =?utf-8?B?OGR0dnFra1lITjZGS1BXajdxSkIwL2gvTmV0RExnV2JpTFlQWUFNcmppaWh0?=
 =?utf-8?B?S1N6QUQ2M2RhZW9taStRYm5WaExIU1BaNG9qdWQrNlluV0VtVVNyeHJhNTZT?=
 =?utf-8?B?WHIwVEVmLzRjU0NoczJLL3FoWnNnRWxqSUpKeEpiVnZVZnRTZ0FBd0NLODh0?=
 =?utf-8?B?MkxuYVY2REZWL1ZNSTJkK2h2VUl5NnhaWG4zcE1GcnZFajAxVUVuS015MU5v?=
 =?utf-8?B?elg4UU96VkYzL2puSmVOTXdTSTlobCsvVzNOU3J4ZFd1K2JNNlc4NlhpcEZt?=
 =?utf-8?B?NkNyQjRHcWNtamVMMEJQUTJZaHR2d0FRb1JZQ2I1Z1lIT0ZhZUlxRmo4S00w?=
 =?utf-8?B?REtRUTIxaTJCZWxqUGJmZE5XTGRYeW9LVnlQT1pFZXVnR3VGZ1NMbDA0UEZx?=
 =?utf-8?B?bnhaUVhsRTNJY09ZaW1abkpwYlc3ZThUbkNLZkZ4ZGx5SHdIRUdQNGdXMVZz?=
 =?utf-8?B?L0REYkgvZi9BK0NvcVUyZmR2WUs3MTZhSVVXRXhrU29HaXR5NlVNa3lpa05y?=
 =?utf-8?B?UzBMM2NWRDJwdEtwNktRVDNOT2VoL3BNRnVNUVhjMTUvQ0sraHErT2N2K0Yw?=
 =?utf-8?B?bnEySThBUE92eU84MUpoemFTNzFrZU9qQTc4RnRjZXdRQ3c4a2tSTk9YMXVO?=
 =?utf-8?B?Z2YrdlZLQVVmdTRvRkwwdjdQM3pIZzQ0cHE3RmlSS09zSVAydWpzb2JOaXBG?=
 =?utf-8?B?dmVYYTV2ek1tbllXVEpUNTMyZmxFK3RRTnhuNThOTi9hTVk5OEZoVWgzVWVn?=
 =?utf-8?B?Y00vemczRmVlSG9KVVVSZmNtNlpvZjhzSVJPZlBRQ3VFRXFGeHM5RGxGWGF3?=
 =?utf-8?B?Z0NvREg1bUtyTy91NDNpQ3MzZWkvU2ZGdVdnWExlZlhUdzdQNDc2UE9DTS91?=
 =?utf-8?B?OEo0cTFjcERHbThoeTBpNUNRWGhwOEpwVEo3ajRjc3VYY1NlSzZrSGF6SFlj?=
 =?utf-8?B?UGh5azJXOTVuWmFnYTlCanliR0xJRVFLWG12OUdJejJra0VYcVJLdlIwTmNh?=
 =?utf-8?B?ZGcwOWNLK1hqOW41K1BQNzRvT096dlBrUHVoYm9xWVNmbXNycnRjZDBzUk5I?=
 =?utf-8?B?aDVQdURTTnhEREpPMDJEazc4V3pCK2N0UlB3dVhEUEZkUGJpOFRiWlJQRzhD?=
 =?utf-8?B?dVBoc0hqRUJ6SC9pblVEVmFVSjJxZ0FMUWJlUHVmMGo4L1ZJa0p6MHFiT1I5?=
 =?utf-8?B?UzFwenpHUnp2U2RHVVMvMDVTQm9CSlZEektDa1BneVdLWWlDSHAwQlFvNUlx?=
 =?utf-8?B?TkpMcjJxdWZJeENNalpZamdML3N6cHNhdzRqUnZvWGNnTDVEdi9ESXRLMk9K?=
 =?utf-8?B?aUpCempwcGNVM3ZZeHgrZy9nd3hkWUVnRnk5TEhjb25NbEhoYTlMZ0g3OXV6?=
 =?utf-8?B?dTRsUjlKaTd2cUpzL3V3TmpqMDVGZXdBWHpSbUNmbkdwQndBTU00VENPQ0tY?=
 =?utf-8?B?a2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <421AACC63798494495F0016864B3424C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95845d01-08bf-44cb-8ae6-08db919200c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 06:47:26.6578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M6pCrLXkGxODmVOsigXUsbWQJ3hYAzdMOzy7N8P4YHMsaxdKjDCv0h9D2Ef/Tv1AvIWEEvrDr0pjnZlh+jGqeVsQTRpaXxG2BYSTf3LT+yI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8555
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/6] drm/i915/panelreplay: Initializaton
 and compute config for panel replay
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

T24gRnJpLCAyMDIzLTA3LTI4IGF0IDE4OjE2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IE1vZGlmeSBleGlzdGluZyBQU1IgaW1wbGVtZW50YXRpb24gdG8gZW5hYmxlIHBhbmVsIHJlcGxh
eSBmZWF0dXJlIG9mCj4gRFAgMi4wCj4gd2hpY2ggaXMgc2ltaWxhciB0byBQU1IgZmVhdHVyZSBv
ZiBFRFAgcGFuZWwuIFRoZXJlIGlzIGRpZmZlcmVudCBEUENECj4gYWRkcmVzcyB0byBjaGVjayBw
YW5lbCBjYXBhYmlsaXR5IGNvbXBhcmUgdG8gUFNSIGFuZCB2c2Mgc2RwIGhlYWRlcgo+IGlzIGRp
ZmZlcmVudC4KPiAKPiB2MTogSW5pdGlhbCB2ZXJzaW9uLgo+IHYyOgo+IC0gU2V0IHNvdXJjZV9w
YW5lbF9yZXBsYXlfc3VwcG9ydCBmbGFnIHVuZGVyIEhBU19QTkVMX1JFUExBWSgpIGNoZWNrLgo+
IFtKb3VuaV0KPiAtIENvZGUgcmVzdHJ1Y3R1cmVkIGFyb3VuZCBpbnRlbF9wYW5lbF9yZXBsYXlf
aW5pdAo+IGFuZCByZW5hbWVkIHRvIGludGVsX3BhbmVsX3JlcGxheV9pbml0X2RwY2QuIFtKb3Vu
aV0KPiAtIFJlbW92ZSB0aGUgaW5pdGlhbCBjb2RlIG1vZGlmaWNhdGlvbiBhcm91bmQgaGFzX3Bz
cjIgZmxhZy4gW0pvdW5pXQo+IC0gQWRkIENBTl9QQU5FTF9SRVBMQVkoKSBpbiBpbnRlbF9lbmNv
ZGVyX2Nhbl9wc3Igd2hpY2ggaXMgdXNlZCB0bwo+IGVuYWJsZSBpbiBpbnRlbF9wc3JfcG9zdF9w
bGFuZV91cGRhdGUuIFtKb3VuaV0KPiB2MzoKPiAtIEluaXRpYWxpemUgYm90aCBwc3IgYW5kIHBh
bmVsLXJlcGxheS4gW0pvdW5pXQo+IC0gSW5pdGlhbGl6ZSBib3RoIHBhbmVsIHJlcGxheSBhbmQg
cHNyIGlmIGRldGVjdGVkLiBbSm91bmldCj4gLSBSZWZhY3RvcmluZyBwc3IgZnVuY3Rpb24gYnkg
aW50cm9kdWNpbmcgX3Bzcl9jb21wdXRlX2NvbmZpZygpLgo+IFtKb3VuaV0KPiAtIEFkZCBjaGVj
ayBmb3IgIWlzX2VkcCB3aGlsZSBkZXJpdmluZyBzb3VyY2VfcGFuZWxfcmVwbGF5X3N1cHBvcnQu
Cj4gW0pvdW5pXQo+IC0gRW5hYmxlIHBhbmVsIHJlcGxheSBkcGNkIGluaXRpYWxpemF0aW9uIGlu
IGEgc2VwYXJhdGUgcGF0Y2guCj4gW0pvdW5pXQo+IAo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxh
bmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiAtLS0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgOCArLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoMKgwqDCoMKgIHwgNDQgKysrKysrKystLQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA4OCArKysr
KysrKysrKysrLS0tLQo+IC0tCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDEwNCBpbnNlcnRpb25zKCsp
LCAzNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5kZXggNzMxZjJlYzA0ZDVjLi4xZmY3ZTZj
MDNiNDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaAo+IEBAIC0xMjAyLDYgKzEyMDIsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSB7Cj4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgaGFzX3BzcjI7Cj4gwqDCoMKgwqDCoMKg
wqDCoGJvb2wgZW5hYmxlX3BzcjJfc2VsX2ZldGNoOwo+IMKgwqDCoMKgwqDCoMKgwqBib29sIHJl
cV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZTsKPiArwqDCoMKgwqDCoMKgwqBib29sIGhhc19wcjsK
PiDCoMKgwqDCoMKgwqDCoMKgYm9vbCB3bV9sZXZlbF9kaXNhYmxlZDsKPiDCoMKgwqDCoMKgwqDC
oMKgdTMyIGRjM2NvX2V4aXRsaW5lOwo+IMKgwqDCoMKgwqDCoMKgwqB1MTYgc3VfeV9ncmFudWxh
cml0eTsKPiBAQCAtMTY5Myw2ICsxNjk0LDggQEAgc3RydWN0IGludGVsX3BzciB7Cj4gwqDCoMKg
wqDCoMKgwqDCoGJvb2wgaXJxX2F1eF9lcnJvcjsKPiDCoMKgwqDCoMKgwqDCoMKgdTE2IHN1X3df
Z3JhbnVsYXJpdHk7Cj4gwqDCoMKgwqDCoMKgwqDCoHUxNiBzdV95X2dyYW51bGFyaXR5Owo+ICvC
oMKgwqDCoMKgwqDCoGJvb2wgc291cmNlX3BhbmVsX3JlcGxheV9zdXBwb3J0Owo+ICvCoMKgwqDC
oMKgwqDCoGJvb2wgc2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydDsKPiDCoMKgwqDCoMKgwqDCoMKg
dTMyIGRjM2NvX2V4aXRsaW5lOwo+IMKgwqDCoMKgwqDCoMKgwqB1MzIgZGMzY29fZXhpdF9kZWxh
eTsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRlbGF5ZWRfd29yayBkYzNjb193b3JrOwo+IEBA
IC0xOTgzLDEyICsxOTg2LDE1IEBAIGRwX3RvX2xzcGNvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQo+IMKgI2RlZmluZSBDQU5fUFNSKGludGVsX2RwKSAoKGludGVsX2RwKS0+cHNyLnNpbmtf
c3VwcG9ydCAmJiBcCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAoaW50ZWxfZHApLT5wc3Iuc291cmNlX3N1cHBvcnQpCj4gwqAKPiArI2RlZmlu
ZSBDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSAoKGludGVsX2RwKS0KPiA+cHNyLnNpbmtfcGFu
ZWxfcmVwbGF5X3N1cHBvcnQgJiYgXAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKGludGVsX2RwKS0KPiA+cHNyLnNvdXJjZV9wYW5lbF9yZXBsYXlf
c3VwcG9ydCkKPiArCj4gwqBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZW5jb2Rlcl9jYW5fcHNy
KHN0cnVjdCBpbnRlbF9lbmNvZGVyCj4gKmVuY29kZXIpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDC
oGlmICghaW50ZWxfZW5jb2Rlcl9pc19kcChlbmNvZGVyKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoHJldHVybiBD
QU5fUFNSKGVuY190b19pbnRlbF9kcChlbmNvZGVyKSk7Cj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJu
IENBTl9QU1IoZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpKSB8fAo+IENBTl9QQU5FTF9SRVBMQVko
ZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpKTsKPiDCoH0KPiDCoAo+IMKgc3RhdGljIGlubGluZSBz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKPiBpbmRleCAwMzY3NTYyMGUzZWEuLjBiYTIzMWVlNmUzNCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtMTk0NiwxMiArMTk0Niwy
MiBAQCBzdGF0aWMgdm9pZAo+IGludGVsX2RwX2NvbXB1dGVfdnNjX2NvbG9yaW1ldHJ5KGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLQo+ID51YXBpLmNydGMp
Owo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoC8qCj4gLcKgwqDC
oMKgwqDCoMKgICogUHJlcGFyZSBWU0MgSGVhZGVyIGZvciBTVSBhcyBwZXIgRFAgMS40IHNwZWMs
IFRhYmxlIDItMTE4Cj4gLcKgwqDCoMKgwqDCoMKgICogVlNDIFNEUCBzdXBwb3J0aW5nIDNEIHN0
ZXJlbywgUFNSMiwgYW5kIFBpeGVsIEVuY29kaW5nLwo+IC3CoMKgwqDCoMKgwqDCoCAqIENvbG9y
aW1ldHJ5IEZvcm1hdCBpbmRpY2F0aW9uLgo+IC3CoMKgwqDCoMKgwqDCoCAqLwo+IC3CoMKgwqDC
oMKgwqDCoHZzYy0+cmV2aXNpb24gPSAweDU7Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3Rh
dGUtPmhhc19wcikgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9yIFNVIGFz
IHBlciBEUCAyLjAgc3BlYywKPiBUYWJsZSAyLTIyMwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKiBWU0MgU0RQIHN1cHBvcnRpbmcgM0Qgc3RlcmVvLCBQYW5lbCBSZXBsYXksIGFu
ZAo+IFBpeGVsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIEVuY29kaW5nL0Nv
bG9yaW1ldHJ5IEZvcm1hdCBpbmRpY2F0aW9uLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnNjLT5yZXZpc2lvbiA9
IDB4NzsKPiArwqDCoMKgwqDCoMKgwqB9IGVsc2Ugewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAvKgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBQcmVwYXJlIFZT
QyBIZWFkZXIgZm9yIFNVIGFzIHBlciBEUCAxLjQgc3BlYywKPiBUYWJsZSAyLTExOAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBWU0MgU0RQIHN1cHBvcnRpbmcgM0Qgc3RlcmVv
LCBQU1IyLCBhbmQgUGl4ZWwKPiBFbmNvZGluZy8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICogQ29sb3JpbWV0cnkgRm9ybWF0IGluZGljYXRpb24uCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAqLwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2c2Mt
PnJldmlzaW9uID0gMHg1Owo+ICvCoMKgwqDCoMKgwqDCoH0KPiArCj4gwqDCoMKgwqDCoMKgwqDC
oHZzYy0+bGVuZ3RoID0gMHgxMzsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAvKiBEUCAxLjRhIHNw
ZWMsIFRhYmxlIDItMTIwICovCj4gQEAgLTIwNjAsNiArMjA3MCwyMSBAQCB2b2lkIGludGVsX2Rw
X2NvbXB1dGVfcHNyX3ZzY19zZHAoc3RydWN0Cj4gaW50ZWxfZHAgKmludGVsX2RwLAo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZzYy0+cmV2aXNpb24g
PSAweDQ7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
dnNjLT5sZW5ndGggPSAweGU7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4g
K8KgwqDCoMKgwqDCoMKgfSBlbHNlIGlmIChjcnRjX3N0YXRlLT5oYXNfcHIpIHsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3IuY29sb3JpbWV0cnlfc3Vw
cG9ydCAmJgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZHBf
bmVlZHNfdnNjX3NkcChjcnRjX3N0YXRlLCBjb25uX3N0YXRlKSkgewo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogW1BhbmVsIFJlcGxheSB3aXRoIGNv
bG9yaW1ldHJ5IGluZm9dICovCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9kcF9jb21wdXRlX3ZzY19jb2xvcmltZXRyeShjcnRjX3N0YXRlLAo+
IGNvbm5fc3RhdGUsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHZzYyk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0gZWxz
ZSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogW1BhbmVs
IFJlcGxheSB3aXRob3V0IGNvbG9yaW1ldHJ5IGluZm9dCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9yIFNVIGFz
IHBlciBEUCAyLjAKPiBzcGVjLCBUYWJsZSAyLTIyMwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogVlNDIFNEUCBzdXBwb3J0aW5nIDNEIHN0ZXJlbyAr
IFBhbmVsCj4gUmVwbGF5Lgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICovCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqB2c2MtPnJldmlzaW9uID0gMHg2Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgdnNjLT5sZW5ndGggPSAweDEwOwo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB9Cj4gwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICogW1BTUjFdCj4gQEAgLTMzNTQsMTAgKzMzNzksMTEgQEAgc3RhdGljIHNzaXplX3QgaW50ZWxf
ZHBfdnNjX3NkcF9wYWNrKGNvbnN0Cj4gc3RydWN0IGRybV9kcF92c2Nfc2RwICp2c2MsCj4gwqDC
oMKgwqDCoMKgwqDCoHNkcC0+c2RwX2hlYWRlci5IQjMgPSB2c2MtPmxlbmd0aDsgLyogTnVtYmVy
IG9mIFZhbGlkIERhdGEKPiBCeXRlcyAqLwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qCj4gLcKg
wqDCoMKgwqDCoMKgICogT25seSByZXZpc2lvbiAweDUgc3VwcG9ydHMgUGl4ZWwgRW5jb2Rpbmcv
Q29sb3JpbWV0cnkKPiBGb3JtYXQgYXMKPiAtwqDCoMKgwqDCoMKgwqAgKiBwZXIgRFAgMS40YSBz
cGVjLgo+ICvCoMKgwqDCoMKgwqDCoCAqIE90aGVyIHRoYW4gcmV2aXNpb24gMHg1IHdoaWNoIHN1
cHBvcnRzIFBpeGVsCj4gRW5jb2RpbmcvQ29sb3JpbWV0cnkKPiArwqDCoMKgwqDCoMKgwqAgKiBG
b3JtYXQgYXMgcGVyIERQIDEuNGEgc3BlYywgcmV2aXNpb24gMHg3IGFsc28gc3VwcG9ydHMKPiBQ
aXhlbAo+ICvCoMKgwqDCoMKgwqDCoCAqIEVuY29kaW5nL0NvbG9yaW1ldHJ5IEZvcm1hdCBhcyBw
ZXIgRFAgMi4wIHNwZWMuCj4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3CoMKgwqDCoMKgwqDCoGlm
ICh2c2MtPnJldmlzaW9uICE9IDB4NSkKPiArwqDCoMKgwqDCoMKgwqBpZiAodnNjLT5yZXZpc2lv
biAhPSAweDUgfHwgdnNjLT5yZXZpc2lvbiAhPSAweDcpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBnb3RvIG91dDsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAvKiBWU0MgU0RQIFBh
eWxvYWQgZm9yIERCMTYgdGhyb3VnaCBEQjE4ICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCA5ZmJjYjRiOTNmMTEuLjc1MDhlNmM5NjdlMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC00NzIsNiAr
NDcyLDI3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShzdHJ1Y3QK
PiBpbnRlbF9kcCAqaW50ZWxfZHApCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3Iuc3Vf
eV9ncmFudWxhcml0eSA9IHk7Cj4gwqB9Cj4gwqAKPiArc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxh
eV9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiArewo+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOwo+ICvCoMKgwqDCoMKgwqDCoHU4IHByX2RwY2QgPSAwOwo+ICsKPiArwqDCoMKgwqDCoMKg
wqBpZiAoIUhBU19QQU5FTF9SRVBMQVkoZGV2X3ByaXYpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm47Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGRybV9kcF9kcGNkX3JlYWRi
KCZpbnRlbF9kcC0+YXV4LCBEUF9QQU5FTF9SRVBMQVlfQ0FQLAo+ICZwcl9kcGNkKTsKPiArCj4g
K8KgwqDCoMKgwqDCoMKgaWYgKCEocHJfZHBjZCAmIERQX1BBTkVMX1JFUExBWV9TVVBQT1JUKSkg
ewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAiUGFuZWwgcmVwbGF5IGlzIG5vdCBzdXBwb3J0ZWQgYnkKPiBwYW5lbFxuIik7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiArwqDCoMKgwqDCoMKgwqB9Cj4g
Kwo+ICvCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlBhbmVsIHJlcGxheSBpcyBzdXBwb3J0ZWQg
YnkgcGFuZWxcbiIpOwo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9y
ZXBsYXlfc3VwcG9ydCA9IHRydWU7Cj4gK30KPiArCj4gwqBzdGF0aWMgdm9pZCBfcHNyX2luaXRf
ZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9Cj4gQEAgLTUyMSwxMiArNTQyLDEzIEBAIHN0
YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcAo+ICppbnRlbF9kcCkKPiDC
oAo+IMKgdm9pZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Cj4gwqB7Cj4gK8KgwqDCoMKgwqDCoMKgX3BhbmVsX3JlcGxheV9pbml0X2RwY2QoaW50ZWxfZHAp
Owo+ICsKPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1eCwg
RFBfUFNSX1NVUFBPUlQsIGludGVsX2RwLQo+ID5wc3JfZHBjZCwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZW9mKGludGVsX2RwLT5wc3JfZHBj
ZCkpOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyX2RwY2RbMF0pCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7
Cj4gLcKgwqDCoMKgwqDCoMKgLyogVE9ETzogQWRkIFBSIGNhc2UgaGVyZSAqLwo+IMKgCj4gwqDC
oMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0KSB7Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLmNvbG9yaW1ldHJ5X3N1
cHBvcnQgPQo+IEBAIC0xMjA3LDEzICsxMjI5LDExIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJf
Y29uZmlnX3ZhbGlkKHN0cnVjdAo+IGludGVsX2RwICppbnRlbF9kcCwKPiDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGZhbHNlOwo+IMKgfQo+IMKgCj4gLXZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkK
PiArc3RhdGljIGJvb2wgX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+IMKgewo+
IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90
b19pOTE1KGludGVsX2RwKTsKPiAtwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOwo+ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0gJmNydGNfc3RhdGUtCj4gPmh3
LmFkanVzdGVkX21vZGU7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCBwc3Jfc2V0dXBfdGltZTsKPiDC
oAo+IMKgwqDCoMKgwqDCoMKgwqAvKgo+IEBAIC0xMjIxLDEwICsxMjQxLDM2IEBAIHZvaWQgaW50
ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcAo+ICppbnRlbF9kcCwKPiDCoMKg
wqDCoMKgwqDCoMKgICogU28gaWYgVlJSIGlzIGVuYWJsZWQsIGRvIG5vdCBlbmFibGUgUFNSLgo+
IMKgwqDCoMKgwqDCoMKgwqAgKi8KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPnZy
ci5lbmFibGUpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+IMKgCj4gwqDCoMKgwqDC
oMKgwqDCoGlmICghQ0FOX1BTUihpbnRlbF9kcCkpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZh
bHNlOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBwc3Jfc2V0dXBfdGltZSA9IGRybV9kcF9wc3Jfc2V0
dXBfdGltZShpbnRlbF9kcC0+cHNyX2RwY2QpOwo+ICvCoMKgwqDCoMKgwqDCoGlmIChwc3Jfc2V0
dXBfdGltZSA8IDApIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19r
bXMoJmRldl9wcml2LT5kcm0sCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIlBTUiBjb25kaXRpb24gZmFpbGVkOiBJbnZhbGlkIFBTUiBzZXR1
cAo+IHRpbWUgKDB4JTAyeClcbiIsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZHAtPnBzcl9kcGNkWzFdKTsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ICvCoMKgwqDCoMKgwqDCoH0KPiAr
Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX3VzZWNzX3RvX3NjYW5saW5lcyhhZGp1c3RlZF9t
b2RlLCBwc3Jfc2V0dXBfdGltZSkgPgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBhZGp1c3RlZF9t
b2RlLT5jcnRjX3Z0b3RhbCAtIGFkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXkKPiAtIDEpIHsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgIlBTUiBjb25kaXRpb24gZmFpbGVkOiBQU1Igc2V0dXAgdGltZSAoJWQKPiB1cykgdG9vIGxv
bmdcbiIsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcHNyX3NldHVwX3RpbWUpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gZmFsc2U7Cj4gK8KgwqDCoMKgwqDCoMKgfQo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXR1
cm4gdHJ1ZTsKPiArfQo+ICsKPiArdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQo+ICt7Cj4gK8Kg
wqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkx
NShpbnRlbF9kcCk7Cj4gK8KgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUgKmFkanVzdGVkX21vZGUgPSAmY3J0Y19zdGF0ZS0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsKPiDC
oAo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIXBzcl9nbG9iYWxfZW5hYmxlZChpbnRlbF9kcCkpIHsK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+
ZHJtLCAiUFNSIGRpc2FibGVkIGJ5Cj4gZmxhZ1xuIik7Cj4gQEAgLTEyMzQsNyArMTI4MCw2IEBA
IHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcAo+ICppbnRlbF9k
cCwKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3Iuc2lua19ub3RfcmVsaWFibGUp
IHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJp
di0+ZHJtLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAiUFNSIHNpbmsgaW1wbGVtZW50YXRpb24gaXMgbm90Cj4gcmVsaWFibGVcbiIpOwo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqDCoMKgwqDCoMKgwqDC
oH0KPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoYWRqdXN0ZWRfbW9kZS0+ZmxhZ3MgJiBEUk1f
TU9ERV9GTEFHX0lOVEVSTEFDRSkgewo+IEBAIC0xMjQzLDIzICsxMjg4LDExIEBAIHZvaWQgaW50
ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcAo+ICppbnRlbF9kcCwKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+
IMKgCj4gLcKgwqDCoMKgwqDCoMKgcHNyX3NldHVwX3RpbWUgPSBkcm1fZHBfcHNyX3NldHVwX3Rp
bWUoaW50ZWxfZHAtPnBzcl9kcGNkKTsKPiAtwqDCoMKgwqDCoMKgwqBpZiAocHNyX3NldHVwX3Rp
bWUgPCAwKSB7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJQU1IgY29uZGl0aW9uIGZhaWxlZDogSW52YWxpZCBQU1Igc2V0dXAKPiB0
aW1lICgweCUwMngpXG4iLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3JfZHBjZFsxXSk7Cj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiAtwqDCoMKgwqDCoMKgwqB9Cj4gLQo+IC3CoMKgwqDC
oMKgwqDCoGlmIChpbnRlbF91c2Vjc190b19zY2FubGluZXMoYWRqdXN0ZWRfbW9kZSwgcHNyX3Nl
dHVwX3RpbWUpID4KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y192
dG90YWwgLSBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZkaXNwbGF5Cj4gLSAxKSB7Cj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAo+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IgY29u
ZGl0aW9uIGZhaWxlZDogUFNSIHNldHVwIHRpbWUgKCVkCj4gdXMpIHRvbyBsb25nXG4iLAo+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBzcl9z
ZXR1cF90aW1lKTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IC3C
oMKgwqDCoMKgwqDCoH0KPiArwqDCoMKgwqDCoMKgwqBpZiAoQ0FOX1BBTkVMX1JFUExBWShpbnRl
bF9kcCkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmhhc19w
ciA9IHRydWU7Cj4gK8KgwqDCoMKgwqDCoMKgZWxzZQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcHNyID0gX3Bzcl9jb21wdXRlX2NvbmZpZyhpbnRlbF9k
cCwKPiBjcnRjX3N0YXRlKTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmhhc19w
c3IgPSB0cnVlOwo+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcHNyMiA9IGludGVs
X3BzcjJfY29uZmlnX3ZhbGlkKGludGVsX2RwLAo+IGNydGNfc3RhdGUpOwo+IMKgCj4gwqDCoMKg
wqDCoMKgwqDCoGNydGNfc3RhdGUtPmluZm9mcmFtZXMuZW5hYmxlIHw9Cj4gaW50ZWxfaGRtaV9p
bmZvZnJhbWVfZW5hYmxlKERQX1NEUF9WU0MpOwo+IEBAIC0yNjk5LDcgKzI3MzIsNyBAQCB2b2lk
IGludGVsX3Bzcl9pbml0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0KPiBkcF90b19kaWdfcG9y
dChpbnRlbF9kcCk7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaWYg
KCFIQVNfUFNSKGRldl9wcml2KSkKPiArwqDCoMKgwqDCoMKgwqBpZiAoIShIQVNfUFNSKGRldl9w
cml2KSB8fCBIQVNfUEFORUxfUkVQTEFZKGRldl9wcml2KSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgLyoKPiBAQCAtMjcx
OSw2ICsyNzUyLDkgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3Iuc291cmNlX3N1cHBvcnQg
PSB0cnVlOwo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgaWYgKEhBU19QQU5FTF9SRVBMQVkoZGV2X3By
aXYpICYmICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnNvdXJjZV9wYW5lbF9yZXBsYXlfc3VwcG9ydCA9IHRy
dWU7CgpJIGRvbid0IHRoaW5rIGl0J3MgY29ycmVjdCB0byBoYXZlIGJvdGggaW50ZWxfZHAtPnBz
ci5zb3VyY2Vfc3VwcG9ydAphbmQgaW50ZWxfZHAtPnBzci5zb3VyY2VfcGFuZWxfcmVwbGF5X3N1
cHBvcnQgc2V0LiBFLmcuOgoKCWlmIChIQVNfUEFORUxfUkVQTEFZKGRldl9wcml2KSAmJiAhaW50
ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkKCQlpbnRlbF9kcC0+cHNyLnNvdXJjZV9wYW5lbF9yZXBs
YXlfc3VwcG9ydCA9IHRydWU7CgllbHNlCgkJaW50ZWxfZHAtPnBzci5zb3VyY2Vfc3VwcG9ydCA9
IHRydWU7CgpCUiwKCkpvdW5pIEjDtmdhbmRlcgoKPiAgCj4gKyAgICAgICBpZiAoSEFTX1BBTkVM
X1JFUExBWShkZXZfcHJpdikgJiYgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4gKyAgICAg
ICAgICAgICAgIGludGVsX2RwLT5wc3Iuc291cmNlX3BhbmVsX3JlcGxheV9zdXBwb3J0ID0gdHJ1
ZTsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFNldCBsaW5rX3N0YW5kYnkgeCBsaW5rX29mZiBk
ZWZhdWx0cyAqLwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwg
MTIpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBGb3IgbmV3IHBsYXRmb3Jt
cyB1cCB0byBUR0wgbGV0J3MgcmVzcGVjdCBWQlQgYmFjawo+IGFnYWluICovCgo=
