Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFC2567A1E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 00:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F56910E923;
	Tue,  5 Jul 2022 22:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F64410E7C6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657060533; x=1688596533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RINO/SS1g9++s0iG3SWMKLsM8jjjmoicatpa/ulmoug=;
 b=HIajM/Xt58ztVMALhdkUYG+5Cymqg2dVcjyYOXp42M+q/wrhwe9rF/Fz
 Aef7FMBZ/G0/0HXBTzkzhI0FDdbNnJmT/tcSB4RuOAia/CF1EprIMFXUu
 jOQxwzkATZctTHQGv64V+yyOkhnRZH4b6qvMyi/q1/fAQXL4bHOZwhiDB
 pRNo8pVKO8rYta3rsHkpvwaWdF0KnAH/5VM1MkMMtLDUd1r/O9BlUZqBS
 r0L0mXTw1BTDKiD5zz2dQFiDWi5mpZthByaJENyG3VGHWRoxHyf0HEnXI
 eYVLcndjy5//RFuPMiuv+ig2fkDVDhpTomK42xrrKUYwLm2YYpybzdSma Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="281098423"
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="281098423"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 15:35:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="567804994"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 05 Jul 2022 15:35:32 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 15:35:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 15:35:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 15:35:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mk89hpex1GKq0xrW+FFsxfWNgyCS6tTHEESm0uG2B0v1BJSfiTlc5i4FJm5LEyX8vedtRi5aGf3HWTccVF3S4CgEXlIwiKSAH9tZJ1SeG11segyXZaDcOpFK6jnn7vESdVMWX5spXsuv72l1lmyYJn5CbATTa3QhDUzSogm3ULvOczWezRwP1GVno5UWYXIyvhrL8r84amRv78a/+8pqh7DY8iAkO0z7bh134TYurp7dZVh8WVGLhqU+VNWSMmCeOREOu6iQnu0siqI8WPtkCmCLYCle6LxPAPuPjwKQ9ig9BMZ5ljH0Mm12f9q0zYeE+Yrk8KU60DJatiuirIFhgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RINO/SS1g9++s0iG3SWMKLsM8jjjmoicatpa/ulmoug=;
 b=nOtml1PdXBOzxKDCFFDKukAnrV4qWfciML1z1PZADdT7KE0iPy4viozDZ0UpcLU0l0Pw5RgSZuD3qKHdD8bk2/69lr0hKTcGtZK3z8LawytyVcOBbZSiLBPBXvlgZA5/wYwY6UJ5buPvQb3h/kr9oesKExevplVpia1CoEYXtyTMuNjVBBFgGM7z0q3zFnqw0x+hFAmT3dnzFsfVfOupnVuxoyRz6mFrBH46Q79mSAz/4lwfQPOXYqm4aPePaItrprirN1698r2WvCGU2VM3Fe2MqOxg+yUAEpbZ4ZMu9pziLcbO7NfW8sN7B4HXz2DfXr/sdYZXsLfJ1Q6GB0wKJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN9PR11MB5434.namprd11.prod.outlook.com (2603:10b6:408:11f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Tue, 5 Jul
 2022 22:35:25 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f812:ea66:9a83:ad0c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f812:ea66:9a83:ad0c%5]) with mapi id 15.20.5395.022; Tue, 5 Jul 2022
 22:35:25 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 10/15] drm/i915/dg2: setup HuC loading via GSC
Thread-Index: AQHYfFejKV7WyIa9FUO47u1dUUb8H61whoyA
Date: Tue, 5 Jul 2022 22:35:24 +0000
Message-ID: <8224f79b39316466868648010a85d81efcc53c7f.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-11-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-11-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c64a5787-6dd4-485b-9ab3-08da5ed6a755
x-ms-traffictypediagnostic: BN9PR11MB5434:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r+2Ill57yaLHtCvGE4ltVhi214Zjar01lxO2DuMaJCmc9nIj+0wNpeBS0yT+i4mDGOebpBad/eGK0RLOUK7iQJeqq6KfbGE08guSIndlJGq9XV196J2rl1qtXL5QliNunE/lNPWWU6Ma1Q0fRuLvs8FfS56IwlBHtArqEzxNOOphDm25XKhEbRWjpsTMTaKJUIWvjdqJs8xvsDy7TqzPJ8kLbFa8oyilCFDiE5vzMghCwwXn1N3hekd7bwxGJ00OE+YTiXUtEF7Rt4ozos2wqnKp8xCRfxg5rCteYeMcYeiDxvhkbdXErAK8OliFD387N6PQlH88ZqLn3h2BmDUa43iY6bpVmGhm0TNWoWIruZmVd+J5RqsvxVDx9pYf/4FMmWHn8n9XTZgwy/J5p8xhOGZ0T62reKMFremIthfqRmOnFed3BqLCYniiSQUNQK4IVKcV2Bm22lhbC0I8Dado0SeFgjKDo+RyzzxwdEXYsR+c2GMByI25QZWZnBfrquRdGeevouGyoZ0LlV/l9HwlqeLpUlRbPsaEk2hCaYl694j/ewgxCk9WQ1XbtPQ/bNsaCOljYZl4r3OceVcV1V7tYVXOQEU1k6V1QJjY92MZIyUoBHIYYp4sxloaGQakVo1t5WZMg2jDh0frs8C7Py4n3ei8Sik2cV3Lv/DCQJyDv34REM91fpapH8Ijjs168BByGpnoo4JcQszvAFSYvcBbxiw3fciEC0r9f0rDeSXlCNYjqwiikBhVZn6ib+5vWyOPnu2S0EzLJJOiC6I5F+kYwT05wlMk1eGSHbTweT4w2J3WHH7nblgQQKFZWRTxUGhA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(346002)(376002)(396003)(86362001)(110136005)(558084003)(66446008)(6486002)(66946007)(71200400001)(38100700002)(316002)(36756003)(54906003)(6506007)(76116006)(82960400001)(8936002)(2616005)(6512007)(41300700001)(107886003)(186003)(26005)(478600001)(5660300002)(4326008)(122000001)(64756008)(2906002)(66556008)(91956017)(8676002)(66476007)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWhPUXhJTWxwK3dmVjJvRlVNY0VWVllDMUdWcEI0aGgrZEpMMXk4NUM2ZDFU?=
 =?utf-8?B?RDhucGRWYVA5ak9LRGQySkxOc0JtZjRVaWk3Y2ptVC9wa2pjaVJDRmdGblRp?=
 =?utf-8?B?b0xPOWRzR0lFRmFkclE2L0dhUzZhaVpPNzFML09UM01yVkRGQVRmTWI0b0NV?=
 =?utf-8?B?WWtiRUpVRUVjbnJNcWh6UllDMmlkcW84S29jVkhsTDhlWjgzL2o4TWw3Tlcv?=
 =?utf-8?B?VFFpeHdNRWZvRVVMWUVFSUlITkVwenBCdk16ZW93aHNJQmZhNWExSS9XQ24x?=
 =?utf-8?B?S1NuY0h4TDVZcW1LVi85OW4rQkdxOEZJdE5DV2dDQStLVTAyaDBvNEl3SDNC?=
 =?utf-8?B?cVREdlZCWUtEQmE5aFY0THR5RmM4czB2M29seWNscHpDWVBQYW1waVlPZnUv?=
 =?utf-8?B?QXBMN3pXVWRkYjVqTHprZ0tWVVJINjZDQUtQbXVRTTJtc2gxa0paSi9Yd2Fx?=
 =?utf-8?B?clVVTXhzeE9lbTFSWHJiZzVHZUFMaDVoeHE4WVFqb1E4bXovc1B6bmo0bFpL?=
 =?utf-8?B?bGFpcmtiYXZlRE5Cb01VaVB5TklaMkl1aGU5SEFNWjNlMmRSSXMrWnlXNmxL?=
 =?utf-8?B?NnAvQytzNi9Hb0J4NWJUVm9OaGRaeEJnTlFYZzd4L1h1TFJCZ29hUXRkOEZs?=
 =?utf-8?B?K1ZnaUprek1sN0t0MmttSnR2b0IwZWdhM0R1R2hieGpiZDM3S0dlcnlBU2wx?=
 =?utf-8?B?N0RFTFRldTZRbzJaVmxCRXdMbERhdlZWR3hsNlhjUnhTZnViZnlRNDZVcWdh?=
 =?utf-8?B?cklRYkd2WGZzYWRrTjJnR0RzUnJPcTBsMHB0U054RE9meERLQjlWT2FlTWFs?=
 =?utf-8?B?ZlQ4Nm5RQW5ZeGNTUG1QUUk4bTNHc1l3UnBKaVhFaFJNSjV6Mkx0VDFaVkY1?=
 =?utf-8?B?c3lzUnZjQm9YK0I2MTZTcDhicy91NVM4QU9abEUvZThIMnRxRGJmME5wM3J5?=
 =?utf-8?B?NFE5TVB2UUs4eU9KR3NQek5DWEY3cEdKUTRQUnVrN2NUamV5VGRIWXdUOVYv?=
 =?utf-8?B?L3RuVXZDUVV5RnlLdWg0YTNRWVdGSmtDck9keDNwTk10c1E3Q0h3OGtFdzRh?=
 =?utf-8?B?bzlRbldSdGhVL0ZMTXRzVWd4ZTlJZ2ZjMnVXZ05WdE02cUtuTTAxNldHWUow?=
 =?utf-8?B?L2IybHphQmdURzhzSjNVb0VDZFVKYklQZERaeWU0ckpZWTU3SG5VVkpaTE1R?=
 =?utf-8?B?MGJIelUyUHVYYjRIOTlxZzU4VFJibytuMnVxbWVUWXVxNit3RlJkTEVTQ2pi?=
 =?utf-8?B?T0FzUnBFZ2svZnBXYmhXcFBaeCtOcGhKZHhScFRjRnBLQVNnYlpmeVFJWnJH?=
 =?utf-8?B?M1NZaGZ1ek5SY2dyTmZVdDlkWCt2MFVhdUYyYnhRamExZjRYZHE2RFBTM0Ur?=
 =?utf-8?B?SnpENVhDVVovNG9NaGl4VlVRSEVZSWM1cnRDUEU2aGtIb0lHTkdGN0JHY1JB?=
 =?utf-8?B?d3BXZXd5em91OTZSU012M0dMcjNpMUUxdVJlMUZsd0NteHNLQlcxbm0wUnVq?=
 =?utf-8?B?UXpCd3lHVWJzVFlLU042a1JQakxuK1RHKzBuamNYbk14cUtHaGtQblhEN01L?=
 =?utf-8?B?ay9GYm9wMnZBSVRDYktXdHdTYVhlSW9aakY1UytjSDZQWERJdzBjOWRDZW1E?=
 =?utf-8?B?L3h0VlAyeEJva2lvUmQ4WUR3aitvcVJQS1ZnR0YxczJnUFpGNnMrZm9rUmI0?=
 =?utf-8?B?aGhBNytJaDNick8vcWEvVnlqOWt0bE92cnNDTlhsY1hac0xYbG9xTkt1eXpJ?=
 =?utf-8?B?OXZjSndzT3MwZmphOU9MUEloZ3YrN242RHhrUHE5M3ZONXpHQXZxSjRxcDNw?=
 =?utf-8?B?bzM1cFoxdjIyNVNMdWR2Rk5vdVdHWGhucEdxNmdvbU9yUEZ4L1JpOS9CNlgr?=
 =?utf-8?B?QkErQWt4RC93R0lVdE9vdzBuSkFZRzgyN3BtVm9VSi9ublhqSjZRZTN2cXJ1?=
 =?utf-8?B?WE9mNFZaS0ZZelNwY21PWU5tUmR5SGhqbUlQdGJ4SVA4NXZweTBLaE9wQXU4?=
 =?utf-8?B?bXZYRlE4eSswVFkxWkhvczU1ajN2MEtHUTVpRm5tSlUvWHFuYUlJbGdaYUZL?=
 =?utf-8?B?TlVuc3dUNW01UGdaTXlYMTl4RlRtNEV5NVNiV3ZLbDV5MUhmOFZOTjUwN1NS?=
 =?utf-8?B?c1ZwUzJWQmhldWpJTmRwWjVnQ3BremhRQlB1YVhDSXovMlhRTUl6b01uMlV4?=
 =?utf-8?Q?W5oGxlgHTpDVCmJenilkT+g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E5C81F6084986F4B9F1BAF16ECBAC8FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c64a5787-6dd4-485b-9ab3-08da5ed6a755
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 22:35:24.9607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WXjmTIv9yQv0IsXRDvIaYYMpc04oDOa693wRH8xR3xEiW3mgN22f3DEnnfNuTgJs4owM9swFhN0AmKHKkwf57Na2zyPo74q/KQHJHNHG9VVyfj4C8UE6EDzjVZU8np2/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5434
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/15] drm/i915/dg2: setup HuC loading via
 GSC
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TEdUTS4NClJldmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlz
QGludGVsLmNvbT4NCg0KDQpPbiBUaHUsIDIwMjItMDYtMDkgYXQgMTY6MTkgLTA3MDAsIENlcmFv
bG8gU3B1cmlvLCBEYW5pZWxlIHdyb3RlOg0KPiBpbnRlbF9odWNfd2FpdF9mb3JfYXV0aF9jb21w
bGV0ZQ0KDQo=
