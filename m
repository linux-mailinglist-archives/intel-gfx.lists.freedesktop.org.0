Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DF6563639
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 16:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747D810F82B;
	Fri,  1 Jul 2022 14:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3363D10F82B
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 14:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656687274; x=1688223274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GY74DlKKiwEvOE5u3VLw42pRWwwp1UxBAoK00LdVMWg=;
 b=D3WxCwM850ANLgfo6cvxsnmWWXL73/KmlZ20w5RL45xsBVoqKU1OR1k+
 8UXReZNMcSKAG/9GETcOdOMIzIvgAyIsOCci6fUFcRRIWi634RYan9AVu
 S5OZkD6Dqj2mL+uE2RBp0tSr5BWkJo+ZVZm8kJjY8O3sWaQNv5Mqd+IJV
 bHrGMqGE+EzGDrq7dbYoTzuPnUnFsPO3EdjIm5Gt0Yr8KA8WE4K2lXcye
 2+YC2myhYcRKDw9RWcPRC3UETs+jr/nShtKCLuVJ4LE5WPR812KP4e199
 2h2QLSaG50TlsdzQ6BXI+UvXRZli4jQ/pnArktKZHnwYk2Vrvjki+C2DF w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="346654734"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="346654734"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 07:54:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="648371919"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2022 07:54:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 07:54:30 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 07:54:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 07:54:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 07:54:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AOPY6e2nf/ga9lBPiPuZzLvPZr0g37VyYl+XGbEnY3ht8BWl0R9w76551Tl5Z9b4RYqV00BDt4ms4s0bfunSFgIpM2T6REqXyTIRwQYevswO1AL5PIuFz80yC25+TzqVMD+1jRsQc592R21HNTXoJUScxHMjfz08N/ByGZtS1Mjq7iO++uhOX63ZRg8d5rWHxMVB76Z6fnEk5GM1ElZwYwN4jTMIYOwNw0juqhfKWIWvGx5M3L24NVtgIE0cO5bYqHPSi6z3h6xd/G9k338x10/SdiYCO0Ll+SfLiJ1BuOI7rYBsPivEGAIPqYQxfPeWoBzHCK/s1DMLjrOYd/i2RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GY74DlKKiwEvOE5u3VLw42pRWwwp1UxBAoK00LdVMWg=;
 b=diJgU4VlxZRdzgreBGi92u91hocP7FgvJpT726/ev2l46Q8zd1Z1xg0Yl9M/7NYCDAMYMB4bj9P4ha8W06arO+Kj0yyBjhXaCHSkE0Be1JPI8chzHtRobtg1NkpbMNTbXYUxAczO808rMBGm2vEPPS+vJj/ch5AXZJpvkvnEzbRkuh2S1jCnHxH3ciz+wLXWOoJ9oYmZihLi91WahMtIp8Pj+6Bru1qd1nF0uyYZ3vAt3NbXVM/YpB0y3xkqiCwp4P9Ekvzm7UiIvVV0Yc6fmE+1IWENOU0lfyHLx1e0UQqlQI0hD9chXPAFg2qABX8vjhN5y7fC12CyF8UevcKaDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) by
 SA0PR11MB4686.namprd11.prod.outlook.com (2603:10b6:806:97::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Fri, 1 Jul 2022 14:54:27 +0000
Received: from DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::d861:ec75:9bb6:e417]) by DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::d861:ec75:9bb6:e417%9]) with mapi id 15.20.5395.017; Fri, 1 Jul 2022
 14:54:27 +0000
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Fix NPD in PMU during driver teardown
Thread-Index: AQHYjMR5x1wPOplsVUezbc042Xb2za1opMYAgACNPwCAAGlJAA==
Date: Fri, 1 Jul 2022 14:54:26 +0000
Message-ID: <81c381a50536d23ec0922874e13df5e67ffcc3d7.camel@intel.com>
References: <5535d98d0c1f1fa22e6ca6e8973a05e58a097944.1656622601.git.stuart.summers@intel.com>
 <Yr47xCs/JmhX9X7H@unerlige-desk>
 <cbfb9255-bd95-87c7-aa9d-e3af56dffd76@linux.intel.com>
In-Reply-To: <cbfb9255-bd95-87c7-aa9d-e3af56dffd76@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36126978-3c1b-4191-70b3-08da5b71983d
x-ms-traffictypediagnostic: SA0PR11MB4686:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X620EUSYi6clw+euMfGhL7dj9H3PhHKoTKI1lXPWlcrRYEZPSaP8YQqFTht+D5kT81/JO8KK5S8cjGLBI9Xfbjrj83hRQnlQqvoIKr+Y1OlEBimGnoplZW895yTCdsXnoKpNtQ0agdqH3DW4I/r7jo7RIx0b91yZNYXeZDokVH6SNS5sCiPrpk2VAp6CkSRR+DY+oQCUHAifXHfIYDfoeWy7kXeOULot8NIpsELhWJy+IopYCWKURfHNMMFsbmcgusWoDbW3peWxfquiSXHAPuJQW+J/owN3tgVry2qiCRzgz1Vfli0r+tOudCbqlLkz4YCDOh7i+/W7s3nPa42RNG/es7BJvqUBMPa2jFbHaOMzs2cXs54cPLHlede06sBGMg2JGOazN/Mzqoj8FRPhIqh+e2TQfZ8MA5269EdDorweQg/04TrknPr7slqnk3AMpG0Ga60/nNm7bdbkXrBs9f+RDXIvBPCSr2V9jtLRR/Px8J0qkHr9b+4rTb0NOXfxReld04cgarXDoZlVmpnRNMtlPi3y6JBeGm6U9qlJPlgB015zmFNUHFvMbLPqb7jiLTn01ga98SGK8MXhPEuhEzEKEmJER4dlm5DvvQ4V5DzCLirUCKDYVe6jIxDxex5woffIEgznwDBGtCbm4hM1rxdnbzRN7vHwvla5nEqUpwLhUjVvf3UacQS0HHvirdNBAcQDwGbjY8MdQmhhU/jomy3Zluzbt3dZlxFKndXgb18xHnRldfdY8EMgrWKkx1NcRLMFnl1rB1EI9HPjhJ7J8LoRB1nwh3ycvXyVXSV34TyAIx60dnyW9A+G0iT/1NX5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5573.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(136003)(376002)(396003)(39860400002)(6486002)(71200400001)(91956017)(6512007)(86362001)(478600001)(110136005)(4326008)(8676002)(5660300002)(2616005)(66476007)(66446008)(36756003)(83380400001)(8936002)(66556008)(64756008)(26005)(66946007)(76116006)(41300700001)(53546011)(6506007)(2906002)(38070700005)(122000001)(38100700002)(186003)(316002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1hPZFJwdG41N2ZmS1VFTG5idVpsdWVRRVA0L3h1UGxPd25xTzA3cjhZSjRW?=
 =?utf-8?B?aFpacGlqY2pUZFJ1VFNySUlWeEVtUU1LZFNvamlITUc5RTRsSmtndEtaV3dz?=
 =?utf-8?B?YmdlK1JML1ZSZ1dNY2ZxWjVta1NHWmhlanhzb1h1QmJTa0crbHRjMjNWbjRn?=
 =?utf-8?B?cXZzME5weFBXTVQzVVAwRmtCaURsYmdjbWdYdmtnaldxUkx4eHFRVzE5ZnZL?=
 =?utf-8?B?TXI1OUl4Qkdjd0JKOExmNjlnZHJtKzJyZ3lmWG9vSTR1L3RTMXpIWDZZcml2?=
 =?utf-8?B?WU92MTRlUHdmR29rcDJDRDUxc01JSUFIUXh5RG1tam9CMWdGQ2ZXOTQ1L0t1?=
 =?utf-8?B?azR1V3VvU2diSHp5UHRpekplQlduZjZkYkpZQjlvdHE5Y0dkM1IyUlZFby9O?=
 =?utf-8?B?QUVBdzIwQ2NHMDVPWSt6cHJHS0JmWmJUUUplL2praDFnSGN3OUc3OTNtQzFx?=
 =?utf-8?B?V0JWcXZWcnV3K29QbmVYKzk1ekhIZ2F1TnBsSkJ5SFJWTUczY0thTGgxb2FD?=
 =?utf-8?B?N3NXVlh2a2RUVTZxYnJ2ZFFxdDg3cThzd1JkbU5lZVZQR2dvVFNPWGJPbkZL?=
 =?utf-8?B?ZERpRXdRZ1BGZzMwUmJNN1VqSkJaTmRlWThTNkYxL1l1dkxXUGNTSUcrSGI3?=
 =?utf-8?B?blBZVURBeFgzcDVkdDdVOGZPck1zWHoyaUJuWEZCYmJRNEZzRCtaYXhJT1Bh?=
 =?utf-8?B?QldlWWd5YXFWY2NIVlE0bzlobHN4a2k0OS9uVjAwRFRFT0tlaWV1bVQyNDk0?=
 =?utf-8?B?Vjk3YUVwZDREdEVFMW9GL29USlFwQXJWdTcwYUxXNllwWTV3N2pDaU05cS9O?=
 =?utf-8?B?ZmhudzhiS1JPMnpmMmJPaDhVMHBiUkl5b2VvWXB4SFczZEkrbUdvQ0ZJYUdn?=
 =?utf-8?B?S2hiN1dqV01SMXRBeWNvTWRjWHVxVzlKRlRHSEw5Zkd2L3ZVbklUYzIxdG1a?=
 =?utf-8?B?ajJRc1I1aXJ5RVpFbEF6ekJLNE8rY3Z2dnRGdVYwSFdWRVpkb2FEYmw3aFJV?=
 =?utf-8?B?S0JQYzdlYk41NnNGQ0RScEFWbldiS0xwT3QwR1pQNGRUR01nM2MxdEg1NHJQ?=
 =?utf-8?B?R0NtSlhlajJCdENNQ2F4bUhmd1pyVUtQUkpxS0dzZFd3QWNTcXE4UGpHWjBI?=
 =?utf-8?B?QVhrckpVY24rSDZ3WmRxMVBHc1R4c2Y4ZmhiNkswZ1NzbHMwNXpiazBBcEZ0?=
 =?utf-8?B?ZHNFdmE3SGtud0tmT29FWUZhUWcyT0VJdndhRTBseGFwZGp6MEtkV212VCtk?=
 =?utf-8?B?dWdnMmZlRWZLWk5pdnhDZnVNNHpyT01lNzJYSGxSZVRtdjFCZTRjUzI3amtm?=
 =?utf-8?B?enpBMlFCS3pVazd3MFZwWUJ3WFY1dWRSLzY2dmMybnNKNjZnejE1THprU3l4?=
 =?utf-8?B?dUprWktsNGxCNnYyLzZhaHVLNmc2U0FlSjNEb3I4K1RBWGpKYnk3OCtkTWQr?=
 =?utf-8?B?TVMxS1J1MThncnZQWk5zN3hMdmtUbkF4TWRpc04rYUZYWXN1WXlnQXdUamJC?=
 =?utf-8?B?aVFONVpGZDlPN3E0RFhKOVlBc2N3Z1lta3ZYYVZSRG9HL081NEJyUzVVRktW?=
 =?utf-8?B?K2FnYXFTNENUZFZMekNZdWJQV0JHb0dVZmlpUVZLaWxzV0c1ZlRjbGp1WGFu?=
 =?utf-8?B?T2lHUTZ1dUpkaFoxekl3eVpmd2xhOWVBYUFBOHlSZjVveEUrVzMzNDhTc0ZI?=
 =?utf-8?B?cXV6K2pDWURlczRibjBrT0kvenlYaTJoU2hRR2h0dnpkN2pCNHVQTG9uYnRT?=
 =?utf-8?B?S0wxa0RsWFp6R0F2TDNLK0VTSWhteHVmL2xwRUcxZGEvWnBpRmhlM0E2OVdy?=
 =?utf-8?B?RDhpNVQxbHY5ZFRvRnVybEtNQm9ETFd5Nm8rMytjWkpBUEdXME9kN3NQeGxv?=
 =?utf-8?B?QnNFdDl1OWZRTHAzenR2cmxpOXBXOFp5RFFuTWNsRlB2K09pOWZYMWpvRTdD?=
 =?utf-8?B?UlhxYTZXenVWWGVyNDg0WmEzcVFuK3hNNHF0ZHFmZVNTWUs0OWNKcGVuVlJw?=
 =?utf-8?B?S2JYdXVRV1BaOXRjUjhacktnYS9uMHhNTFJncGtZbDk2RHQwRkVkeUJiQUE4?=
 =?utf-8?B?cytEL1RVeVBvRVpkYS8zVkUvQXV2MjVkRWNLbHN1OWpJTkd0MVhnTEZTZjVC?=
 =?utf-8?B?WEFVL2ptbllBR2VNUnNWZVA2NHBqU3RjSFF1aG9WeFlFVnpORkhidEE4RGpI?=
 =?utf-8?B?N1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <96A7902D3803BF4CA047E84BE492465B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5573.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36126978-3c1b-4191-70b3-08da5b71983d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2022 14:54:26.9317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P8uPb09tO/jxpBGPjxzXFzuFoPwmHbneEm/RI6pDCNGorgNYnbdw6W9v7xMeuEqkIJtClqmSbltrZ80MW1e7Y3UhX6n6mxc5u3x/0gsxhVg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4686
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NPD in PMU during driver
 teardown
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

T24gRnJpLCAyMDIyLTA3LTAxIGF0IDA5OjM3ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMDEvMDcvMjAyMiAwMToxMSwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOg0KPiA+
IE9uIFRodSwgSnVuIDMwLCAyMDIyIGF0IDA5OjAwOjI4UE0gKzAwMDAsIFN0dWFydCBTdW1tZXJz
IHdyb3RlOg0KPiA+ID4gSW4gdGhlIGRyaXZlciB0ZWFyZG93biwgd2UgYXJlIHVucmVnaXN0ZXJp
bmcgdGhlIGd0IHByaW9yDQo+ID4gPiB0byB1bnJlZ2lzdGVyaW5nIHRoZSBQTVUuIFRoaXMgbWVh
bnMgdGhlcmUgaXMgYSBzbWFsbCB3aW5kb3cNCj4gPiA+IG9mIHRpbWUgaW4gd2hpY2ggdGhlIGFw
cGxpY2F0aW9uIGNhbiByZXF1ZXN0IG1ldHJpY3MgZnJvbSB0aGUNCj4gPiA+IFBNVSwgc29tZSBv
ZiB3aGljaCBhcmUgY2FsbGluZyBpbnRvIHRoZSB1YXBpIGVuZ2luZXMgbGlzdCwNCj4gPiA+IHdo
aWxlIHRoZSBlbmdpbmVzIGFyZSBub3QgYXZhaWxhYmxlLiBJbiB0aGlzIGNhc2Ugd2UgY2FuDQo+
ID4gPiBzZWUgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlcy4NCj4gPiA+IA0KPiA+ID4gRml4IHRo
aXMgb3JkZXJpbmcgaW4gYm90aCB0aGUgZHJpdmVyIGxvYWQgYW5kIHVubG9hZCBzZXF1ZW5jZXMu
DQo+ID4gPiANCj4gPiA+IEFkZGl0aW9uYWxseSBhZGQgYSBjaGVjayBmb3IgZW5naW5lIHByZXNl
bmNlIHRvIHByZXZlbnQgdGhpcw0KPiA+ID4gTlBEIGluIHRoZSBldmVudCB0aGlzIG9yZGVyaW5n
IGlzIGFjY2lkZW50YWxseSByZXZlcnNlZC4gUHJpbnQNCj4gPiA+IGEgZGVidWcgbWVzc2FnZSBp
bmRpY2F0aW5nIHdoZW4gdGhleSBhcmVuJ3QgYXZhaWxhYmxlLg0KPiA+ID4gDQo+ID4gPiB2MTog
QWN0dWFsbHkgYWRkcmVzcyB0aGUgZHJpdmVyIGxvYWQvdW5sb2FkIG9yZGVyaW5nIGlzc3VlDQo+
ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVy
c0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiANCj4gPiBJIHRob3VnaHQgdGhpcyBpcyBsaWtl
bHkgaGFwcGVuaW5nIGJlY2F1c2UgaW50ZWxfZ3B1X3RvcCBpcyBydW5uaW5nDQo+ID4gaW4gDQo+
ID4gdGhlIGJhY2tncm91bmQgd2hlbiBpOTE1IGlzIHVubG9hZGVkLiBJIHRyaWVkIGEgcXVpY2sg
cmVwcm8sIEkNCj4gPiBkb24ndCBzZWUgDQo+ID4gdGhlIHVubG9hZCBzdWNjZWVkICgiZmF0YWwg
bW9kdWxlIGluIHVzZSIsIG5vdCBzdXJlIGlmIHRoaXMgd2FzIGEgDQo+ID4gcGFydGlhbCB1bmxv
YWQpLCBidXQgd2hlbiBJIHRyeSB0byBraWxsIGludGVsX2dwdV90b3AsIEkgZ2V0IGFuDQo+ID4g
TlBELiANCj4gPiBUaGlzIGlzIGluIHRoZSBldmVudCBkaXNhYmxlIHBhdGggLSBpOTE1X3BtdV9l
dmVudF9zdG9wIC0+IA0KPiA+IGk5MTVfcG11X2Rpc2FibGUuDQo+IA0KPiBTbyBpOTE1IGZhaWxl
ZCB0byB1bmxvYWQgKGFzIGV4cGVjdGVkIC0gd2l0aCBwZXJmIGV2ZW50cyBvcGVuIHdlDQo+IGVs
ZXZhdGUgDQo+IHRoZSBtb2R1bGUgcmVmIGNvdW50IHZpYSBpOTE1X3BtdV9ldmVudF9pbml0IC0+
IGRybV9kZXZfZ2V0KSwgdGhlbg0KPiB5b3UgDQo+IHF1aXQgaW50ZWxfZ3B1X3RvcCBhbmQgZ2V0
IE5QRD8gT24gdGhlIGVuZ2luZSBsb29rdXA/IFdpdGggdGhlIA0KPiByZS1vcmRlcmVkIGluaXQv
ZmluaSBzZXF1ZW5jZSBhcyBmcm9tIHRoaXMgcGF0Y2g/DQo+IA0KPiBXaXRoIGVsZXZhdGVkIG1v
ZHVsZSBjb3VudCB0aGVyZSBzaG91bGRuJ3QgYmUgYW55IHVubG9hZGluZyBoYXBwZW5pbmcNCj4g
c28gDQo+IEkgYW0gaW50cmlndWVkLg0KPiANCj4gPiBJdCdzIGxpa2VseSB0aGF0IHlvdSBhcmUg
c2VlaW5nIGEgZGlmZmVyZW50IHBhdGggKHVubG9hZCkgbGVhZGluZw0KPiA+IHRvIHRoZSANCj4g
PiBzYW1lIGlzc3VlLg0KPiA+IA0KPiA+IEkgdGhpbmsgaW4gaTkxNV9wbXVfZGlzYWJsZS9kaXNh
YmxlIHNob3VsZCBiZSBhd2FyZSBvZiBldmVudC0NCj4gPiA+aHcuc3RhdGUgDQo+ID4gYW5kIG9y
IHBtdS0+Y2xvc2VkIHN0YXRlcyBiZWZvcmUgYWNjZXNzaW5nIHRoZSBldmVudC4gTWF5YmUgbGlr
ZSwNCj4gPiANCj4gPiBpZiAoZXZlbnQtPmh3LnN0YXRlICE9IFBFUkZfSEVTX1NUT1BQRUQgJiYg
aXNfZW5naW5lX2V2ZW50KGV2ZW50KSkNCj4gPiB7DQo+ID4gDQo+ID4gQFR2cnRrbywgd29uZGVy
aW5nIGlmIHRoaXMgY2FzZSBpcyB0ZXN0ZWQgYnkgaWd0QHBlcmYNCj4gPiBfcG11QG1vZHVsZS11
bmxvYWQuIA0KPiANCj4gQSBiaXQgeWVzLiBGcm9tIHdoYXQgU3R1YXJ0IHdyb3RlIGl0IHNlZW1z
IHRoZSB0ZXN0IHdvdWxkIG5lZWQgdG8gYmUgDQo+IGV4dGVuZGVkIHRvIGNvdmVyIHRoZSBjYXNl
IHdoZXJlIFBNVSBpcyBnZXR0aW5nIG9wZW5lZCB3aGlsZSBtb2R1bGUgDQo+IHVubG9hZCBpcyBp
biBwcm9ncmVzcy4NCj4gDQo+IEJ1dCB0aGUgTlBEIHlvdSBzYXcgaXMgZm9yIHRoZSBtb21lbnQg
Y29uZnVzaW5nIHNvIEkgZG9uJ3Qga25vdyB3aGF0DQo+IGlzIA0KPiBoYXBwZW5pbmcuDQo+IA0K
PiA+IEkgYW0gbm90IGNsZWFyIGlmIHdlIHNob3VsZCB1c2UgZXZlbnQtPmh3LnN0YXRlIG9yIHBt
dS0+Y2xvc2VkIGhlcmUNCj4gPiBhbmQgDQo+ID4gaWYvaG93IHRoZXkgYXJlIHJlbGF0ZWQuIElN
TywgZm9yIHRoaXMgaXNzdWUsIHRoZSBlbmdpbmUgY2hlY2sgaXMNCj4gPiBnb29kIA0KPiA+IGVu
b3VnaCB0b28sIHNvIHdlIGRvbid0IHJlYWxseSBuZWVkIHRoZSBwbXUgc3RhdGUgY2hlY2tzLiAN
Cj4gPiBUaG91Z2h0cz8NCj4gDQo+IEVuZ2luZSBjaGVjayBhdCB0aGUgbW9tZW50IGZlZWxzIGxp
a2UgcGFwZXJpbmcuDQo+IA0KPiBJbmRlZWQgYXMgeW91IHNheSBJIHRoaW5rIHRoZSBwbXUtPmNs
b3NlZCBtaWdodCBiZSB0aGUgc29sdXRpb24uDQo+IFBlcmhhcHMgDQo+IHRoZSByYWNlIGlzIGFz
IG1lbnRpb25lZCBhYm92ZS4gUE1VIG9wZW4gaGFwcGVuaW5nIGluIHBhcmFsbGVsIHRvDQo+IHVu
bG9hZC4uDQo+IA0KPiBJZiB0aGUgc2VxdWVuY2Ugb2YgZXZlbnRzIHVzZXJzcGFjZSB0cmlnZ2Vy
cyBpczoNCj4gDQo+ICAgIGk5MTVfcG11X2V2ZW50X2luaXQNCj4gICAgaTkxNV9wbXVfZXZlbnRf
c3RhcnQNCj4gICAgaTkxNV9wbXVfZW5hYmxlDQo+ICAgIGk5MTVfcG11X2V2ZW50X3JlYWQNCj4g
DQo+IEkgZ3Vlc3MgcG11LT5jbG9zZWQgY2FuIGdldCBzZXQgaGFsZndheSBpbiBpOTE1X3BtdV9l
dmVudF9pbml0LiBXaGF0IA0KPiB3b3VsZCBiZSB0aGUgZWZmZWN0IG9mIHRoYXQuLiBXZSdkIHRy
eSB0byBnZXQgYSBtb2R1bGUgcmVmZXJlbmNlDQo+IHdoaWxlIA0KPiBpbiB0aGUgcHJvY2VzcyBv
ZiB1bmxvYWRpbmcuIFdoaWNoIGlzIHByb2JhYmx5IHZlcnkgYmFkLi4gU28gcG9zc2libHkNCj4g
YSANCj4gZmluYWwgY2hlY2sgb24gcG11LT5jbG9zZSBpcyBuZWVkZWQgdGhlcmUuIEhvIGh1bS4u
IGNhbiBpdCBiZSBtYWRlDQo+IHNhZmUgDQo+IGlzIHRoZSBxdWVzdGlvbi4NCj4gDQo+IEl0IGRv
ZXNuJ3QgZXhwbGFpbiB0aGUgTlBEIG9uIEN0cmwtQyB0aG91Z2guLiBpbnRlbF9ncHVfdG9wIGtl
ZXBzDQo+IHRoZSANCj4gZXZlbnMgb3BlbiBhbGwgdGhlIHRpbWUuIFNvIEkgdGhpbmsgbW9yZSBp
bmZvIG5lZWRlZCwgZm9yIG1lIGF0DQo+IGxlYXN0Lg0KDQpTbyBvbmUgdGhpbmcgaGVyZSBpcyB0
aGlzIGRvZXNuJ3QgaGF2ZSB0byBkbyB3aXRoIG1vZHVsZSB1bmxvYWQsIGJ1dA0KbW9kdWxlIHVu
YmluZCBzcGVjaWZpY2FsbHkgKHdoaWxlIHBlcmYgaXMgb3BlbikuIEkgZG9uJ3Qga25vdyBpZiB0
aGUNCk5QRCBmcm9tIFVtZXNoIGlzIHRoZSBzYW1lIGFzIHdoYXQgd2UncmUgc2VlaW5nIGhlcmUu
IEknZCByZWFsbHkgbGlrZQ0KdG8gc2VwYXJhdGUgdGhlc2UgdW5sZXNzIHlvdSBrbm93IGZvciBz
dXJlIHRoYXQncyByZWxhdGVkLiBBbHNvIGl0DQp3b3VsZCBiZSBpbnRlcmVzdGluZyB0byBrbm93
IGlmIHRoaXMgcGF0Y2ggZml4ZXMgeW91ciBpc3N1ZSBhcyB3ZWxsLg0KDQpJIHN0aWxsIHRoaW5r
IHRoZSByZS1vcmRlcmluZyBpbiBpOTE1X2RyaXZlci5jIHNob3VsZCBiZSBlbm91Z2ggYW5kIHdl
DQpzaG91bGRuJ3QgbmVlZCB0byBjaGVjayBwbXUtPmNsb3NlZC4gVGhlIHVucmVnaXN0ZXIgc2hv
dWxkIGJlIGVub3VnaCB0bw0KZW5zdXJlIHRoZSBwZXJmIHRvb2xzIGFyZSBub3RpZmllZCB0aGF0
IG5ldyBldmVudHMgYXJlbid0IGFsbG93ZWQsIGFuZA0KYXQgdGhhdCB0aW1lIHRoZSBlbmdpbmUg
c3RydWN0dXJlcyBhcmUgc3RpbGwgaW50YWN0LiBBbmQgZXZlbiBpZiBmb3INCnNvbWUgcmVhc29u
IHRoZSBwZXJmIGNvZGUgc3RpbGwgY2FsbHMgaW4gdG8gb3VyIGZ1bmN0aW9uIHBvaW50ZXJzLCB3
ZQ0KaGF2ZSB0aGVzZSBlbmdpbmUgY2hlY2tzIGFzIGEgZmFpbHNhZmUuDQoNCkknbSBieSB0aGUg
d2F5IHVwbG9hZGluZyBvbmUgbW9yZSB2ZXJzaW9uIGhlcmUgd2l0aCBhIGRybV9XQVJOX09OQ0UN
Cmluc3RlYWQgb2YgdGhlIGRlYnVnIHByaW50Lg0KDQpUaGFua3MsDQpTdHVhcnQNCg0KPiANCj4g
UmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPiBSZWdhcmRzLA0KPiA+IFVtZXNoDQo+ID4g
DQo+ID4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jIHwgMTEgKystLS0NCj4g
PiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgICAgfCA3MiArKysrKysrKysrKysr
KysrKy0tLS0tLQ0KPiA+ID4gLS0tLS0tLQ0KPiA+ID4gMiBmaWxlcyBjaGFuZ2VkLCA0OCBpbnNl
cnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMgDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gPiA+IGluZGV4IGRlYjhhOGI3Njk2NS4uZWU0ZGNiODVk
MjA2IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIu
Yw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+ID4g
QEAgLTcxNyw3ICs3MTcsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9yZWdpc3RlcihzdHJ1
Y3QgDQo+ID4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiA+ICAgICBzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2ID0gJmRldl9wcml2LT5kcm07DQo+ID4gPiANCj4gPiA+ICAgICBpOTE1
X2dlbV9kcml2ZXJfcmVnaXN0ZXIoZGV2X3ByaXYpOw0KPiA+ID4gLSAgICBpOTE1X3BtdV9yZWdp
c3RlcihkZXZfcHJpdik7DQo+ID4gPiANCj4gPiA+ICAgICBpbnRlbF92Z3B1X3JlZ2lzdGVyKGRl
dl9wcml2KTsNCj4gPiA+IA0KPiA+ID4gQEAgLTczMSwxMSArNzMwLDEyIEBAIHN0YXRpYyB2b2lk
IGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCANCj4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQ0KPiA+ID4gICAgIGk5MTVfZGVidWdmc19yZWdpc3RlcihkZXZfcHJpdik7DQo+ID4g
PiAgICAgaTkxNV9zZXR1cF9zeXNmcyhkZXZfcHJpdik7DQo+ID4gPiANCj4gPiA+ICsgICAgaW50
ZWxfZ3RfZHJpdmVyX3JlZ2lzdGVyKHRvX2d0KGRldl9wcml2KSk7DQo+ID4gPiArDQo+ID4gPiAg
ICAgLyogRGVwZW5kcyBvbiBzeXNmcyBoYXZpbmcgYmVlbiBpbml0aWFsaXplZCAqLw0KPiA+ID4g
KyAgICBpOTE1X3BtdV9yZWdpc3RlcihkZXZfcHJpdik7DQo+ID4gPiAgICAgaTkxNV9wZXJmX3Jl
Z2lzdGVyKGRldl9wcml2KTsNCj4gPiA+IA0KPiA+ID4gLSAgICBpbnRlbF9ndF9kcml2ZXJfcmVn
aXN0ZXIodG9fZ3QoZGV2X3ByaXYpKTsNCj4gPiA+IC0NCj4gPiA+ICAgICBpbnRlbF9kaXNwbGF5
X2RyaXZlcl9yZWdpc3RlcihkZXZfcHJpdik7DQo+ID4gPiANCj4gPiA+ICAgICBpbnRlbF9wb3dl
cl9kb21haW5zX2VuYWJsZShkZXZfcHJpdik7DQo+ID4gPiBAQCAtNzYyLDExICs3NjIsMTIgQEAg
c3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfdW5yZWdpc3RlcihzdHJ1Y3QgDQo+ID4gPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiA+IA0KPiA+ID4gICAgIGludGVsX2Rpc3BsYXlfZHJp
dmVyX3VucmVnaXN0ZXIoZGV2X3ByaXYpOw0KPiA+ID4gDQo+ID4gPiAtICAgIGludGVsX2d0X2Ry
aXZlcl91bnJlZ2lzdGVyKHRvX2d0KGRldl9wcml2KSk7DQo+ID4gPiAtDQo+ID4gPiAgICAgaTkx
NV9wZXJmX3VucmVnaXN0ZXIoZGV2X3ByaXYpOw0KPiA+ID4gKyAgICAvKiBHVCBzaG91bGQgYmUg
YXZhaWxhYmxlIHVudGlsIFBNVSBpcyBnb25lICovDQo+ID4gPiAgICAgaTkxNV9wbXVfdW5yZWdp
c3RlcihkZXZfcHJpdik7DQo+ID4gPiANCj4gPiA+ICsgICAgaW50ZWxfZ3RfZHJpdmVyX3VucmVn
aXN0ZXIodG9fZ3QoZGV2X3ByaXYpKTsNCj4gPiA+ICsNCj4gPiA+ICAgICBpOTE1X3RlYXJkb3du
X3N5c2ZzKGRldl9wcml2KTsNCj4gPiA+ICAgICBkcm1fZGV2X3VucGx1ZygmZGV2X3ByaXYtPmRy
bSk7DQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BtdS5jIA0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jDQo+ID4gPiBp
bmRleCA5NThiMzcxMjNiZjEuLjc5NmExZDhlMzZmMiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcG11LmMNCj4gPiA+IEBAIC02NzAsMjEgKzY3MCwyOCBAQCBzdGF0aWMgdm9pZCBp
OTE1X3BtdV9lbmFibGUoc3RydWN0DQo+ID4gPiBwZXJmX2V2ZW50IA0KPiA+ID4gKmV2ZW50KQ0K
PiA+ID4gICAgIGlmIChpc19lbmdpbmVfZXZlbnQoZXZlbnQpKSB7DQo+ID4gPiAgICAgICAgIHU4
IHNhbXBsZSA9IGVuZ2luZV9ldmVudF9zYW1wbGUoZXZlbnQpOw0KPiA+ID4gICAgICAgICBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7DQo+ID4gPiAtDQo+ID4gPiAtICAgICAgICBlbmdp
bmUgPSBpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoaTkxNSwNCj4gPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgIGVuZ2luZV9ldmVudF9jbGFzcyhldmVudCksDQo+ID4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICBlbmdpbmVfZXZlbnRfaW5zdGFuY2UoZXZlbnQpKTsNCj4gPiA+IC0N
Cj4gPiA+IC0gICAgICAgIEJVSUxEX0JVR19PTihBUlJBWV9TSVpFKGVuZ2luZS0+cG11LmVuYWJs
ZV9jb3VudCkgIT0NCj4gPiA+IC0gICAgICAgICAgICAgICAgIEk5MTVfRU5HSU5FX1NBTVBMRV9D
T1VOVCk7DQo+ID4gPiAtICAgICAgICBCVUlMRF9CVUdfT04oQVJSQVlfU0laRShlbmdpbmUtPnBt
dS5zYW1wbGUpICE9DQo+ID4gPiAtICAgICAgICAgICAgICAgICBJOTE1X0VOR0lORV9TQU1QTEVf
Q09VTlQpOw0KPiA+ID4gLSAgICAgICAgR0VNX0JVR19PTihzYW1wbGUgPj0gQVJSQVlfU0laRShl
bmdpbmUtDQo+ID4gPiA+cG11LmVuYWJsZV9jb3VudCkpOw0KPiA+ID4gLSAgICAgICAgR0VNX0JV
R19PTihzYW1wbGUgPj0gQVJSQVlfU0laRShlbmdpbmUtPnBtdS5zYW1wbGUpKTsNCj4gPiA+IC0g
ICAgICAgIEdFTV9CVUdfT04oZW5naW5lLT5wbXUuZW5hYmxlX2NvdW50W3NhbXBsZV0gPT0gfjAp
Ow0KPiA+ID4gLQ0KPiA+ID4gLSAgICAgICAgZW5naW5lLT5wbXUuZW5hYmxlIHw9IEJJVChzYW1w
bGUpOw0KPiA+ID4gLSAgICAgICAgZW5naW5lLT5wbXUuZW5hYmxlX2NvdW50W3NhbXBsZV0rKzsN
Cj4gPiA+ICsgICAgICAgIHU4IGNsYXNzID0gZW5naW5lX2V2ZW50X2NsYXNzKGV2ZW50KTsNCj4g
PiA+ICsgICAgICAgIHU4IGluc3RhbmNlID0gZW5naW5lX2V2ZW50X2luc3RhbmNlKGV2ZW50KTsN
Cj4gPiA+ICsNCj4gPiA+ICsgICAgICAgIGVuZ2luZSA9IGludGVsX2VuZ2luZV9sb29rdXBfdXNl
cihpOTE1LCBjbGFzcywNCj4gPiA+IGluc3RhbmNlKTsNCj4gPiA+ICsgICAgICAgIGlmIChlbmdp
bmUpIHsNCj4gPiA+ICsgICAgICAgICAgICBCVUlMRF9CVUdfT04oQVJSQVlfU0laRShlbmdpbmUt
PnBtdS5lbmFibGVfY291bnQpICE9DQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgSTkxNV9F
TkdJTkVfU0FNUExFX0NPVU5UKTsNCj4gPiA+ICsgICAgICAgICAgICBCVUlMRF9CVUdfT04oQVJS
QVlfU0laRShlbmdpbmUtPnBtdS5zYW1wbGUpICE9DQo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgSTkxNV9FTkdJTkVfU0FNUExFX0NPVU5UKTsNCj4gPiA+ICsgICAgICAgICAgICBHRU1fQlVH
X09OKHNhbXBsZSA+PQ0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKGVuZ2lu
ZS0+cG11LmVuYWJsZV9jb3VudCkpOw0KPiA+ID4gKyAgICAgICAgICAgIEdFTV9CVUdfT04oc2Ft
cGxlID49DQo+ID4gPiArICAgICAgICAgICAgICAgICAgIEFSUkFZX1NJWkUoZW5naW5lLT5wbXUu
c2FtcGxlKSk7DQo+ID4gPiArICAgICAgICAgICAgR0VNX0JVR19PTihlbmdpbmUtPnBtdS5lbmFi
bGVfY291bnRbc2FtcGxlXSA9PSB+MCk7DQo+ID4gPiArDQo+ID4gPiArICAgICAgICAgICAgZW5n
aW5lLT5wbXUuZW5hYmxlIHw9IEJJVChzYW1wbGUpOw0KPiA+ID4gKyAgICAgICAgICAgIGVuZ2lu
ZS0+cG11LmVuYWJsZV9jb3VudFtzYW1wbGVdKys7DQo+ID4gPiArICAgICAgICB9IGVsc2Ugew0K
PiA+ID4gKyAgICAgICAgICAgIGRybV9kYmcoJmk5MTUtPmRybSwNCj4gPiA+ICsgICAgICAgICAg
ICAgICAgIkludmFsaWQgZW5naW5lIGV2ZW50OiB7IGNsYXNzOiVkLCBpbnN0OiVkIH1cbiIsDQo+
ID4gPiArICAgICAgICAgICAgICAgIGNsYXNzLCBpbnN0YW5jZSk7DQo+ID4gPiArICAgICAgICB9
DQo+ID4gPiAgICAgfQ0KPiA+ID4gDQo+ID4gPiAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgm
cG11LT5sb2NrLCBmbGFncyk7DQo+ID4gPiBAQCAtNzE0LDIxICs3MjEsMjYgQEAgc3RhdGljIHZv
aWQgaTkxNV9wbXVfZGlzYWJsZShzdHJ1Y3QNCj4gPiA+IHBlcmZfZXZlbnQgDQo+ID4gPiAqZXZl
bnQpDQo+ID4gPiAgICAgaWYgKGlzX2VuZ2luZV9ldmVudChldmVudCkpIHsNCj4gPiA+ICAgICAg
ICAgdTggc2FtcGxlID0gZW5naW5lX2V2ZW50X3NhbXBsZShldmVudCk7DQo+ID4gPiAgICAgICAg
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsNCj4gPiA+IC0NCj4gPiA+IC0gICAgICAg
IGVuZ2luZSA9IGludGVsX2VuZ2luZV9sb29rdXBfdXNlcihpOTE1LA0KPiA+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgZW5naW5lX2V2ZW50X2NsYXNzKGV2ZW50KSwNCj4gPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgIGVuZ2luZV9ldmVudF9pbnN0YW5jZShldmVudCkpOw0KPiA+
ID4gLQ0KPiA+ID4gLSAgICAgICAgR0VNX0JVR19PTihzYW1wbGUgPj0gQVJSQVlfU0laRShlbmdp
bmUtDQo+ID4gPiA+cG11LmVuYWJsZV9jb3VudCkpOw0KPiA+ID4gLSAgICAgICAgR0VNX0JVR19P
TihzYW1wbGUgPj0gQVJSQVlfU0laRShlbmdpbmUtPnBtdS5zYW1wbGUpKTsNCj4gPiA+IC0gICAg
ICAgIEdFTV9CVUdfT04oZW5naW5lLT5wbXUuZW5hYmxlX2NvdW50W3NhbXBsZV0gPT0gMCk7DQo+
ID4gPiAtDQo+ID4gPiAtICAgICAgICAvKg0KPiA+ID4gLSAgICAgICAgICogRGVjcmVtZW50IHRo
ZSByZWZlcmVuY2UgY291bnQgYW5kIGNsZWFyIHRoZSBlbmFibGVkDQo+ID4gPiAtICAgICAgICAg
KiBiaXRtYXNrIHdoZW4gdGhlIGxhc3QgbGlzdGVuZXIgb24gYW4gZXZlbnQgZ29lcyBhd2F5Lg0K
PiA+ID4gLSAgICAgICAgICovDQo+ID4gPiAtICAgICAgICBpZiAoLS1lbmdpbmUtPnBtdS5lbmFi
bGVfY291bnRbc2FtcGxlXSA9PSAwKQ0KPiA+ID4gLSAgICAgICAgICAgIGVuZ2luZS0+cG11LmVu
YWJsZSAmPSB+QklUKHNhbXBsZSk7DQo+ID4gPiArICAgICAgICB1OCBjbGFzcyA9IGVuZ2luZV9l
dmVudF9jbGFzcyhldmVudCk7DQo+ID4gPiArICAgICAgICB1OCBpbnN0YW5jZSA9IGVuZ2luZV9l
dmVudF9pbnN0YW5jZShldmVudCk7DQo+ID4gPiArDQo+ID4gPiArICAgICAgICBlbmdpbmUgPSBp
bnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoaTkxNSwgY2xhc3MsDQo+ID4gPiBpbnN0YW5jZSk7DQo+
ID4gPiArICAgICAgICBpZiAoZW5naW5lKSB7DQo+ID4gPiArICAgICAgICAgICAgR0VNX0JVR19P
TihzYW1wbGUgPj0gQVJSQVlfU0laRShlbmdpbmUtDQo+ID4gPiA+cG11LmVuYWJsZV9jb3VudCkp
Ow0KPiA+ID4gKyAgICAgICAgICAgIEdFTV9CVUdfT04oc2FtcGxlID49IEFSUkFZX1NJWkUoZW5n
aW5lLQ0KPiA+ID4gPnBtdS5zYW1wbGUpKTsNCj4gPiA+ICsgICAgICAgICAgICBHRU1fQlVHX09O
KGVuZ2luZS0+cG11LmVuYWJsZV9jb3VudFtzYW1wbGVdID09IDApOw0KPiA+ID4gKw0KPiA+ID4g
KyAgICAgICAgICAgIC8qDQo+ID4gPiArICAgICAgICAgICAgICogRGVjcmVtZW50IHRoZSByZWZl
cmVuY2UgY291bnQgYW5kIGNsZWFyIHRoZQ0KPiA+ID4gZW5hYmxlZA0KPiA+ID4gKyAgICAgICAg
ICAgICAqIGJpdG1hc2sgd2hlbiB0aGUgbGFzdCBsaXN0ZW5lciBvbiBhbiBldmVudCBnb2VzDQo+
ID4gPiBhd2F5Lg0KPiA+ID4gKyAgICAgICAgICAgICAqLw0KPiA+ID4gKyAgICAgICAgICAgIGlm
ICgtLWVuZ2luZS0+cG11LmVuYWJsZV9jb3VudFtzYW1wbGVdID09IDApDQo+ID4gPiArICAgICAg
ICAgICAgICAgIGVuZ2luZS0+cG11LmVuYWJsZSAmPSB+QklUKHNhbXBsZSk7DQo+ID4gPiArICAg
ICAgICB9IGVsc2Ugew0KPiA+ID4gKyAgICAgICAgICAgIGRybV9kYmcoJmk5MTUtPmRybSwNCj4g
PiA+ICsgICAgICAgICAgICAgICAgIkludmFsaWQgZW5naW5lIGV2ZW50OiB7IGNsYXNzOiVkLCBp
bnN0OiVkIH1cbiIsDQo+ID4gPiArICAgICAgICAgICAgICAgIGNsYXNzLCBpbnN0YW5jZSk7DQo+
ID4gPiArICAgICAgICB9DQo+ID4gPiAgICAgfQ0KPiA+ID4gDQo+ID4gPiAgICAgR0VNX0JVR19P
TihiaXQgPj0gQVJSQVlfU0laRShwbXUtPmVuYWJsZV9jb3VudCkpOw0KPiA+ID4gLS0gDQo+ID4g
PiAyLjI1LjENCj4gPiA+IA0K
