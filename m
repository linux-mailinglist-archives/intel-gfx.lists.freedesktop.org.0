Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 090C45F5D3F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 01:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4798610E28D;
	Wed,  5 Oct 2022 23:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F3A10E28D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 23:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665012699; x=1696548699;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zjGLBbro2djrKdS8yeE8uMRdCB9taOAWNuR8nmXCM90=;
 b=DdP1/THRtv8+LTiiccPo2iBvJgYd8LQhulbJXu+hwx9IxkVtvW597hl2
 pBeYCZZX0eUXQxVHuuthii4hQQkR4YXi9jkYAZ80gJEPtGuPLLf00eQg0
 hLF4ipjaT/Ga1CRgKxb4mkuWgTwDR8alCJbzP8+02fg1gBQkAObZY064J
 I4oLm+pd3/4wuuWp92aRnZpFfezOhkX/kwrL3IbiDQO1H/LdR/DS9i4L9
 BWywPIV3M62fKC6F6yMx4mOc5WeTtnKD4/4ZIB3Hy5zeV5Y4ZNUtGpCQp
 Q3GV7g8RljlQ2vL320KkwSLnqNO1vWFdpHMsnt0TjXKV50mn/6U2tN5pd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="367427435"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="367427435"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 16:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="953392487"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="953392487"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2022 16:31:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 16:31:38 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 16:31:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 16:31:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 16:31:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kj+5cpV3DSRMv7MGJebHToBj4ozQdUZjgoexFm9PzFcIy8QO1wEzWLW2bubd9SfdMXfuRHd9ZHEb5UQm3IvzOQrVfhRckBrHeT7teFc0H/HeH3/guUoCeZPdVjB2fZQ/X2LKvezNvosATKnrobMHelFP4JVkx/As7eiTCdW6V21AKsPLA/UvCymR/fNZcYsAIkhahZpxtTt5jMg2aqLHbYDw1zWPOlT4Qhb4Jvw6VnAWija3zRMvQvJSdDMaPr85P5TSTYBLOVY5ws3iyO77vkd3TJD7dIQVvHc1mqhYEiS2OXJf+Rks7OCTftZr+Ex0AsTI3Fz+3e1P0RI1iWSoAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zjGLBbro2djrKdS8yeE8uMRdCB9taOAWNuR8nmXCM90=;
 b=fLhVfBuugrxYuW+QPooui+okuOYqaGKWYbdppVBu3sFa/+Ji5SIx2UZ533uCyn8Qhmt/ek8y1Q4WALYV7oqZnC6IY1JMs8+TLVDZ18Ctn4alkZewfEEBtuXXwTm3czSEry6yJV1V7I7jgydsF6tdb5bov8x2bxh0agodO//EBgQ5IswGVSQNKMPnzUNe7OhASSFCbn6iepaLUb0szunT8ln+0BkHiZBGkuskCBJonNlIQXan2cKRnh33LpLprZUtzSdJOBG1EeqKgHBf2qOnhEJtDpeEIfSoqb+zn0uBMbxgiTXhqD8/EUcgcijQ68ECr5St+TFhsUJmVg1Kl6v/0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5758.namprd11.prod.outlook.com (2603:10b6:408:166::18)
 by SJ0PR11MB5167.namprd11.prod.outlook.com (2603:10b6:a03:2d9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Wed, 5 Oct
 2022 23:31:36 +0000
Received: from BN0PR11MB5758.namprd11.prod.outlook.com
 ([fe80::589f:aadd:421f:e025]) by BN0PR11MB5758.namprd11.prod.outlook.com
 ([fe80::589f:aadd:421f:e025%5]) with mapi id 15.20.5676.032; Wed, 5 Oct 2022
 23:31:35 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
Thread-Index: AQHY1Gii8wVN8waP5ku0rjVTVFyRb634QOaAgAA4iwCAABeUgIAEcpSAgAAVeoCAABfXgIAALF0AgAAP9oCAABGmgIAC/hMA
Date: Wed, 5 Oct 2022 23:31:35 +0000
Message-ID: <11c4177945916a7707ffe79dd0698785aefedd52.camel@intel.com>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
 <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
 <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
 <9703bd69-3b42-3e64-04e1-5b8fc6e9f367@intel.com>
 <27c162aadb79123fff5458dc1695c6026ea0c796.camel@intel.com>
 <03452d47-a16e-fde3-3d6f-e7d98c6d2b2e@intel.com>
 <e76198c741918fbdcc9a4d6b504c4929007e2a78.camel@intel.com>
 <669a599a-a5d1-4357-c27c-f3e17bc1b4f5@intel.com>
In-Reply-To: <669a599a-a5d1-4357-c27c-f3e17bc1b4f5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5758:EE_|SJ0PR11MB5167:EE_
x-ms-office365-filtering-correlation-id: 2165bd7a-cf96-4335-5569-08daa729be88
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NrpV9NCr6DU6BiXM5/E1/W5QSGx0ITJcgo1LG8o3A5Xhsy4HCGah57UcHKhDf64AhZL5wIVJbWE1aZ8Ng+UYE5o2O6jKCWDLOaJexs9mv7LOphgKxVYNL8RQmds6uSzHZtQKmEAOlz0gBOowXgFTVYHLyytjCLNyvLOZd210fuOA4xLcoIaUs9uK1XtdDpUr5VMw9yEH7OOrjTwzKI17QjjqUWP6qEqqtNrDD8dow6ck0ZG8ZF7AzV6kxgb55YQUlqWQrXr0KTvnUiYxmGw2wmBM936NplPcj+yJgZosaNIlVceB9hNQKKTUIfFn2H4OEGzMWirZMG2t3LIIU65V6IF2cMYHngaZPzVb2PmKKyeeXaslC/v/VHJofQpcvCAMbGX7f/jvZ6gYxxRH8UOjZUOs6f6RtcA3S+wTbJUBuPslFmtEjtuq+0HKeGLq4Cj8qbNRt86LKD7JxNpSR0FyOZ1slNT76bRB6A4Uc8uzfZb2QmyxtBkQInlECcE8PoR4+oFD9FiZ1ThUJXI/AlLECu3BblxFBwSyaRhbr8PUeWsX/+D83dBedos9CNKuaM0O/MrFIcqxNU/dmNqDGJQRSgELiT3mKVcgjVR67hDSOYM0WML5ahrD+rhQyt4wII/z27aOCIRDy/XaqeT+V8brua4vJtyIuhQUyr1BqLtiFsbv8sVf6XzsL6YbezrO0Ube4mN+XV04qM1wB6bevG9kgcPtIYuEIHUDgDwL/73FBIhUSJ0DyUWfmx20FBBoyjQqNNZw85G0o45FqT80Nd342A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5758.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(136003)(346002)(39860400002)(396003)(451199015)(5660300002)(41300700001)(2906002)(8936002)(71200400001)(6486002)(36756003)(316002)(478600001)(38100700002)(82960400001)(91956017)(86362001)(8676002)(122000001)(76116006)(6512007)(66476007)(53546011)(66556008)(64756008)(66446008)(110136005)(2616005)(38070700005)(6506007)(66946007)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzBNQjVpajlhWGs2NE9NL0dDcHNsbEVXODlFSUVlV3E2QzVFYVpjYld1cTFI?=
 =?utf-8?B?TmoyK21rZUt2dEh4d1cyeUJZcW9ETExzWXo0UTJya25ER2xqYU0rbC9VUXlW?=
 =?utf-8?B?d0kyaE14b2tkOGd3cUNJOXFreVpaWnRnRHV6UXVacWVJTFBWaWNlejZQZWZH?=
 =?utf-8?B?ZDVHNWJtQUZiV1N5M3lKbkxOR3NSQnFTL25lTGZjM0gwbjJtcTdvWDc0bVBE?=
 =?utf-8?B?b3c0VjFqZFBUcDhJYjZFY2h4dVVUUzdqdTlITHg3ZitDR3lxbTd5RGE0Y3Nl?=
 =?utf-8?B?ek5lS1dyNVlFNVl0cjc4UVR4UFpvcmlLQ1M3RkxONDJXK29WWjJoRHJVUVNk?=
 =?utf-8?B?TGkwM1FWOW1hbVNwWjRRRkQ2Rm5vUytmSE1jZzUwUFM5bUQ0bDM3SmtUK25L?=
 =?utf-8?B?K1VramVKYS9BNkVFQ1JRZnkwa3pxNkdvcXJSS0NlWHhxQ1A1SUczcGovNm8v?=
 =?utf-8?B?ZjlHa0ZNdkRNVWx0ckZZNFVOeHA0dGRSYzNtZnFyQm9JVTkrV0p2bGVvRTFw?=
 =?utf-8?B?ajNEZ3ZvYnRHb2liWGxmendIejhxZlZqWE5kMGpYQ2IxMFlnc2xWcDU3THhm?=
 =?utf-8?B?MmEyR2lpTDJ6R3RNL3NTQ0dDTXhnVGl2bER1elVFRHlzTVg1Mmh3OWVEUXUv?=
 =?utf-8?B?TlJ5UWoxVmF2Y3RpS2lBalVoY3Y1NGV5clpLcFp1S0hHMTlXZmVBZ1NJQ2Fa?=
 =?utf-8?B?REhvYkRPRjNWdjlmZ0ttVG1QQlpveVgxcTJGQlFjK3R5ZFI2NG1ES2lBNGw3?=
 =?utf-8?B?TDFaL1dPeHdzRi84T1Q2b1RpWjFiZXVMb0dncUtOcTFNV0FYaTkycGR5b25H?=
 =?utf-8?B?YmI0T1ZKU09hZDJnTGRkd3p5aEJod2ovZ0w3MVc2SkN5K3QrcVp3WTJ6aXNp?=
 =?utf-8?B?dVVFQ2h2VWZoVUJDeWJiSWo3ZjkzNnh6S1BucVd6cnlCbTFKRWt6MjBWUnJo?=
 =?utf-8?B?b3A5TVNmNG1wSVZManRRYUVNOG9FSy94Q1VINmdnZWJLd3RubkJjSkNvY3Ny?=
 =?utf-8?B?ek1xei8vd3FobWNTL1Z3VlR4K0J1dGlLYlA2Tkg5NFlGanZnWVd1Qm5XTzdE?=
 =?utf-8?B?MzhUZVJqdG1jcjBIelZzWngvRFNXTWJCMXNqaVg0dEpGSzdVbjBIUEZTUlJQ?=
 =?utf-8?B?WTRXaE5GSTRpMlE0aFBIeFpWRGRiWXVESkpnRGJFT0pMT1pDTUtGYjNOOThD?=
 =?utf-8?B?Wk03dUd5MHEzQzAxTUJqc2dLOVFVbGJoMzJjc2RmYnFZOUZrOXV1dTBQamJy?=
 =?utf-8?B?Z2E2b083Ym1CMm45MXBtNVF4MldxcTBCVzdhTERoQk91eWZoM1YzS0ZlWUVa?=
 =?utf-8?B?MWpjZHNJWjdFY08vd1pkSHhTYlhaNVFLQ3BIdTJqSTh2R3lSQ2xNMUlucmdP?=
 =?utf-8?B?RHU4ZHUrRjd4VHROajM2TDNBdHlEc25RUW43Wjd3ejBkQjB5YWlZK2s0ekEx?=
 =?utf-8?B?VWdEVC9NSjdWUmx1MEw0M3BkS2E5ay9jdWkzNjBqN2QwNjVHM2VKYnFHaE5m?=
 =?utf-8?B?cllmVGVHMTBheFVyTWg2S0NmZm81WDhzSzkwYzRnekNCVGlleUdWUGR1azVJ?=
 =?utf-8?B?M3kza0gzQ05kbmdhcjZKVU1JSUNuelNZTitwajhCOVpuTTFaczNTbVNmR21U?=
 =?utf-8?B?eG5ZdzBVeGEyNURiMTZNbXVIK3QzVkFFUG5zRGZQSk5xSW44Rk1OaUlaeElq?=
 =?utf-8?B?MGEvT1hic0szZTVyRzZGWElGdzN1djJhVE9LVzEramFZTDA3RitsNldxV040?=
 =?utf-8?B?Nis2eWNSZEFoUFptd0t6bEErQnViZGgyYmNzVmV2WDBBYVdxWFExQ1M2MkhR?=
 =?utf-8?B?TEFoWjhqd0RvQ1Rkenh0VHFDeFczTWZjZlY4aXJTQ0VUOThPT0VhY1drbGlT?=
 =?utf-8?B?VGkyL3E5cVVMNDg4UXNab3JkWFVjcGFrM2RCemJyK2xGT0ZaaE9QYzNwV1M4?=
 =?utf-8?B?OTdhU1psc1JEdXdWbXNrdkZRRmZ1N0xNRkx0NVMwTnpNSWhucHVDcm43R0VV?=
 =?utf-8?B?NmlPTmo4MlFIdWdvYzd6VzJ5RjErQXJnVE8yeHdvMlNUR29XY1ZwM1NOcmRN?=
 =?utf-8?B?US9sQ05MbXBwbmdzOWUxelJkdDl4L0NPQmN1WTFhaHg5bm1ELy9vTmJpVlBY?=
 =?utf-8?B?ZlZtY2NidExSandwVVJaejA4blZIejVZMUIzbmJ3VDhaVE9YbGwvbFAxa1Nn?=
 =?utf-8?Q?yn0Z01eIJGdU6mHVQomY6zc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E9E6A2AE2E34854590C5B1CF803B3331@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5758.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2165bd7a-cf96-4335-5569-08daa729be88
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2022 23:31:35.7980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x1KxwOoNCeiUY1i6lDKzunlInWAyRNUDiHUCcsDVY/bnMX+eKI/8Qi2Qf5Zddmy1M9ddKY5dJ/GnB16bePgv03AWYfUbPNpskyUjDhbeAh9kq6ACoR6nIUjUmuLiJ8AX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5167
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

SGkgSm9obiwgdGVzdGVkIG9uIHJlYWwgUFZDIGFuZCB0aGUgZXN0aW1hdGVkIG1pbiBzaXplIG5l
ZWRlZCB3YXMgfjExNUsuIEV2ZW4gd2l0aG91dCBtb2RlbGxpbmcsIHdlIGNhbiBzYWZlbHkgc2F5
IHRoYXQNCmFuIGltYWdpbmFyeSBkZXZpY2Ugd2l0aCBhIHRpbGUgdGhhdCBpcyA0eCBiaWdnZXIg
d291bGQgc3RpbGwgYmUgaGFsZiB0aGFuIDEgTUIuIFRoYXQgc2FpZCBJIHNoYWxsIHByb2NlZWQg
d2l0aCBhIHJlLXJldg0KdGhhdCBzaGFsbCBpbmNsdWRlIGRyb3BwaW5nIHRoZSBzaXplIG9mIGd1
Yy1sb2ctZXJyb3ItY2FwdHVyZS1yZWdpb24gZG93biB0byAxTUIgaW4gYWRkaXRpb24gdG8gc3Rp
Y2tpbmcgd2l0aCB0aGUNCiJkcm1fd2FybiguLi5tYXliIHRvbyBzbWFsbCkiIGFuZCBvZmMgcmVi
YXNpbmcgdG8gbGF0ZXN0IGRybS10aXAuIFNoYWxsIHJlcnVuIHNvbWUgdGVzdHMganVzdCBpbiBj
YXNlIC0gc28gd2lsbCBnZXQgaXQNCm91dCBsYXRlciB0aGlzIHdlZWsuDQoNCi4uLmFsYW4NCg0K
T24gTW9uLCAyMDIyLTEwLTAzIGF0IDE4OjUxIC0wNzAwLCBIYXJyaXNvbiwgSm9obiBDIHdyb3Rl
Og0KPiBPbiAxMC8zLzIwMjIgMTc6NDYsIFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3JvdGU6
DQo+ID4gU28gYXMgcGVyIHRoZSBsYXN0IHJlc3BvbnNlIGFuZCB0aGUgb2ZmbGluZSBjb252ZXJz
YXRpb24gd2UgaGFkIHdlIGFncmVlZCB0aGF0Og0KPiA+IA0KPiA+IDEuIHdlIHNoYWxsIHN0aWNr
IHdpdGggZHJtX3dhcm4oIC4uLiBtYXliZSB0b28gc21hbGwuLi4pIGlmIHRoZSBhbGxvY2F0aW9u
IGRpZG4ndCBtZWV0IG1pbl9zaXplLg0KPiA+IDIuIEknbGwgbW9kZWwgZm9yIFBWQyAoc2luY2Ug
aXRzIGJldHRlciB0byBsb29rIGF0IHRoZSBzcGVjIGFzIG9wcG9zZWQgdG8gdHJ5aW5nIHRvIGh1
bnQgZm9yIGEgZnJlZSBtYWNoaW5lIHdpdGggdGhlDQo+ID4gbW9zdCBlbmdpbmVzIGFuZCBEU1Mg
KGZvciB0aG9zZSBzdGVlcmluZyByZWdpc3RlcnMgdGhhdCBhcmUgY291bnRlZCBtdWx0aXBsZSB0
aW1lcykuDQo+ID4gMy4gSWYgIzIgeWllbGRzIHVzIHdpdGggc3Vic3RhbnRpYWwgaGVhZHJvb20g
KGkuZS4gYSBtb2RlbCdzIFBWQyB3b3VsZCBiZSBsZXNzIHRoYW4gNzAwSyBtaW5fc2l6ZSksIHRo
ZW4gbGV0cyBkcm9wIHRvDQo+ID4gMU1CIGFsbG9jYXRpb24uDQo+ID4gDQo+ID4gLi4uYWxhbg0K
PiBTb3VuZHMgZ29vZCB0byBtZS4NCj4gDQo+IEpvaG4uDQo+IA0KPiA+IA0KPiA+IA0KPiA+IE9u
IE1vbiwgMjAyMi0xMC0wMyBhdCAxNjo1MSAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3cm90ZToN
Cj4gPiA+IE9uIDEwLzMvMjAyMiAxNDoxMCwgVGVyZXMgQWxleGlzLCBBbGFuIFByZXZpbiB3cm90
ZToNCj4gPiA+ID4gT24gTW9uLCAyMDIyLTEwLTAzIGF0IDEyOjQ3IC0wNzAwLCBIYXJyaXNvbiwg
Sm9obiBDIHdyb3RlOg0KPiA+ID4gPiA+IE9uIDEwLzMvMjAyMiAxMToyOCwgVGVyZXMgQWxleGlz
LCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiA+ID4gPiA+IE9uIEZyaSwgMjAyMi0wOS0zMCBhdCAx
NTozNSAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3cm90ZToNCj4gPiA+ID4gPiA+ID4gT24gOS8z
MC8yMDIyIDE0OjA4LCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+ID4gPiA+
ID4gPiANCj4gDQoNCg==
