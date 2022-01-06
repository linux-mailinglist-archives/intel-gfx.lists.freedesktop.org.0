Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F139486A01
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 19:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3C710E5DE;
	Thu,  6 Jan 2022 18:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB0010E5DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 18:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641494044; x=1673030044;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Bt5417qctW4OwRZe2Cez4XRRucBY2Q+ZgTAweX0GwbE=;
 b=WSxfm9M+VfOnj+kWYT1vfjiDwqo4g9EemFc5bYgsfrfzGWYA49pRmz+N
 Yjx0ldLOE9HK1C6njwhfw91/xycFinDZiUd3ZCmFONyZH323onlIxhwzf
 LXGje/5+5tJE7jl6oWCNLaaO1dMllR1yLYcl6f77nXUbLWcENT2g4cB9g
 KRCPvZTuTcKcK1DsBLGYMcbosy8w6YMewIGjfLrsbXtZOz65hNoicNXMD
 S4zUzs9dxKecT9SmW32gWvRo8Yzz3S1m9yGSc4ZKZtnJ2LN8u20+eVOf7
 i7QHJT9QY95pvRWw6khSdN1ukPH9cfnXplUKveUz+qTq7dq/rvoPPTvxa A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242915425"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="242915425"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 10:34:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="611925797"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jan 2022 10:34:03 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 10:34:02 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 10:34:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 6 Jan 2022 10:34:02 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 6 Jan 2022 10:34:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCgdStlRaAUnf0oJMVzQol2qHHN5hUsZxVXh7EDGnmkRVU4umq7TFntgD4x8pmHkYKr+4EQjRrr7HscbPkSuQqF+OtNn17W3QIDSxpQBPv/MWqWxCy/vXr6C5belEyc3qso+CkKcASQanf/AbSJC0KTBsojYaibd7g6MzDtJVXvpdnl152TibTt6G2C59VlNQONJ4RXSnVbzQqTTTHIiZn1JxVXWS2uZ7FiqfMh/dLTegd/rPOaKU8pfYjo6pJHAnIPhHfsZeh+J3i4mau/8wWTT0zFZw+ctyc+1Hyj269yu97U2doBGMsmGSCydKJkmeuAREypaahlIMY3CrfNj/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bt5417qctW4OwRZe2Cez4XRRucBY2Q+ZgTAweX0GwbE=;
 b=oF54ZhcG1rX6mexVBe6ZzbmvmekxofVyGtngYhgwz5e2KWkGa/Kx+9LUVipZ7n6DxQCyvC6T94RRz4MS3oTVAiICgXtmlsfRx7CnJxDJQbLhg01uzQDNWpozorDkY8pUrhJz59bSVkrKJgpGcvL4FD+VyIfcpxdkAosoSCPT2WU8rHmKAAkSMbwnT9pJVuHi5Op3uuvvNA9+BGlpKpLt4qB5Ru+HSC0pzi0GjOjoViIWWYuBwA9TdOQctIDIH1caGjWddTHE2pyRF/ul2+Zxr0YkV88zW+ORYQh9SEglcva6IHl9zm1iBHHmCYd9HUNDbCEvVj9NFukd6kHEqwYEVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BY5PR11MB4386.namprd11.prod.outlook.com (2603:10b6:a03:1bc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Thu, 6 Jan
 2022 18:33:55 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%6]) with mapi id 15.20.4844.017; Thu, 6 Jan 2022
 18:33:55 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
Thread-Index: AQHX3/Ueewn73SRF5061jq6P87GJy6wn02QAgABnhACAGGKigIABIMoAgAAYIICAEU9sgIABzo2AgAEN3wCAAJYwAA==
Date: Thu, 6 Jan 2022 18:33:55 +0000
Message-ID: <798a8740d1692541ee822535dbe880ce17b2bbbc.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
 <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
 <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
 <baaf6bcf51c487817392142913f31655138b6596.camel@intel.com>
 <8257f42f-7bbd-c033-28f1-f43f21cc81af@linux.intel.com>
 <0267e249fbc650069e4c6d29438ce32289d535cb.camel@intel.com>
 <4da5fd63-d74f-2004-082b-a75cbdb024ad@linux.intel.com>
In-Reply-To: <4da5fd63-d74f-2004-082b-a75cbdb024ad@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 711a57c5-edb5-4df5-2576-08d9d14318a7
x-ms-traffictypediagnostic: BY5PR11MB4386:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB438649D6FCFCB7727B1951E38A4C9@BY5PR11MB4386.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ANsTh2yRbQTUvagEvZ/NBuF8dR6TgweKIwJO9+EP4ghCj6vA4LLPmagzYNORMzvn3WrxvpBX7CGgZqxYMjYxbwV+/DNhUenR17zdCDpij7SBmZItIRxBf3c6Nz27s2k3BP30ExNVAopZ3u+2gltaUtSdCp7Yqk1MBEDAvNmww9xMm5dfTbxVqG5nKWnrAUmWvnwygXkHsh0EIO7ai7uMZprsy3yXPUqCoxoZueFOiyDaNdSVlwsBdKBmDyhN3tP25pEVCiKpfnNA9nqHfDRp+NGpeDNUMhJk25W8LxEtYe6jLuFAecbLHrY1PpyB+qwbrVxiItOVJVXbks3yRq0AyA1mOhTD0GORI1HN5gL0CKzzd8FOFqVPe0h3kAfaXltPpMDSosHTocSoYXbL04PUUO0mexnqA0XUo3qFFXStuOlfIUCeaXlw69Twc1bIm7EP+lArgyd4MThiglES7HYwLhcHja0G2iaUX38VYqLrGSZh//iAOablA3mOeKYP/qiJTPmxHq5VshjQ+4AoJBPYKA59OiODnspUAqIHtzwRoB2DRSLafr5yo42vS8NVYLmQPHDsxqRL2H+sXF2ryurbkSJOWz2IoBIgH5vkuaRX+TkbNWxO6ztdJFgdJ7lYDpzsHW9AfR/uu2EPROueSlqAr+qLRUFmqDWDOy8ViNKZesy/LTq4Oq68+plw14YFuAORE3hKKQIia1foqrfBwXmVew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(71200400001)(5660300002)(2906002)(508600001)(4326008)(110136005)(38070700005)(8676002)(36756003)(83380400001)(82960400001)(2616005)(6486002)(186003)(38100700002)(53546011)(8936002)(26005)(6506007)(316002)(122000001)(66946007)(76116006)(6512007)(66476007)(66446008)(64756008)(86362001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2xFaWFEbHM0S3J0TWZkUk5sNGFQaExGRE04bEpZMjM2bk5ibW5tckJ2Ny8x?=
 =?utf-8?B?UUxCdFQ3RmJPQkdBSGdQSE1NT2dxWXdSRDNUOWxYYVFGUmptUXh1SEtZT3JD?=
 =?utf-8?B?KzlQNzU5UnprLzRMbHN4L3ZmMFRFeXJsU3lvVHhCd0dDZDNZYTdmUFdtZDFo?=
 =?utf-8?B?eDRlMWRVKzhQaHlMd0FJMVFhRFBtdnFZL0VwRnAwNllKQ2xwT3A3VlhwOHVw?=
 =?utf-8?B?QXJTNGJIOTBwZzd1SE1HSUs4T3I0RVRCQUxvU3A4TWEwY1Q5S01WLyt0M2sr?=
 =?utf-8?B?UFNVbjZpTmthRkU5bm5adEFWTlQ4S2JUVmo3WDA0Kzc4T3VPdnMxTE1GUk9z?=
 =?utf-8?B?QitpVFVFTTFJeXFNdlowdzMzbFBMWDI3TWZYRCtZakNxTDZPUGgxWXlWV3Yy?=
 =?utf-8?B?b1RIbEthbXZwdEgzT1pQaEE4RjkzckNMM3dvNEZ3cHRORm5oazNhT24xbEJJ?=
 =?utf-8?B?bXJiWTRLMWFnMGovWWEra1ZyQVZ1NzFZRldUS2dRUy9xYWt2WVhDTFZGcWNx?=
 =?utf-8?B?VnB2T2JHWTl3SHp6ZWN6NHlLaDM1cFh1ZTU3V3g2VTRkN1lBTnNtejBNUTB2?=
 =?utf-8?B?OC9ZVXl2TW94eGd0ck9ZMWRmTlp3b2VkUGlvT3JjLzZwMnNtUW1MMjNvbXBI?=
 =?utf-8?B?WnEwOTM5OS9Ba1hrcTBLZFVrSmpoRjFMcFFyNjV5a1BXUzBseUtGK0I3THpI?=
 =?utf-8?B?MmtBL3M3SEZ1bnFvR2N5dFJ5TmFwOVNrZXVQN2lmLzNoN2ZpTGFZWFd5NHls?=
 =?utf-8?B?Z1FUTzRWRVpLbXZLTndOdzNyY24yVVJlY01lR0pNOVpZS3FQNG13MFZRZGI0?=
 =?utf-8?B?UEJ2MXpZUHpuT2lVcVZCWGVtUlBObGpuNThZTzVIMUxvWkloZ3Z0UjltbE5O?=
 =?utf-8?B?c2ZZVEtmVDRhb0pUUjNzMUNpMnpGU2xIU3RXT3dhc3dRV2ZiTUIrTXBZTXNp?=
 =?utf-8?B?L05Ta2hmeWxWdHpDdWFmUy83WUFZNUx3UTl4MllMZHlxL1FqTXJTQllZZ2Ni?=
 =?utf-8?B?aUtLc0ZtaXpySmdSR2hBYzBMWi92SWlvVU93ZHRjZ000VWc4T2lIZHZCdzJK?=
 =?utf-8?B?enU5c1ZEdkF5TmJSRlZyS1hYVzJmcXB6a01UUExYVEZPZFhUZlNnMEZNRS9p?=
 =?utf-8?B?eVdGRHI5cmRtNmsrRnJCdHViYTkvRTlaWkdJZEhVZHZFcmFraWRoVlQ3SDM1?=
 =?utf-8?B?TmRFb1dJaUZsMEFPbkFFZEJpa3ViczE0YjdURTlISVBkeHZqdkY3QjZDS0l6?=
 =?utf-8?B?UEtRZ0lZWEh6UDkvUlRHbUFoKzB3cC93TTAySnpXWUVQR3NOeUhaZ244VGE4?=
 =?utf-8?B?R1JKMUFZV1czeXlXdi84RmtKd1dpdzFTNW4vWGFTYlBSd0dYUEN0cG8vdkw4?=
 =?utf-8?B?QkRYQUo5b0huaUkwQW13MDlRVTUxeWN5NE8rUElGNEZKNlBuVHFDL080RXhB?=
 =?utf-8?B?aGlBVTYvSEwvWTRRWXFVMDNsV0dVNVVZN05oekw3S1RiV2ttTmJRNWpJNEYv?=
 =?utf-8?B?Q2ZiWmo4eEIxVE9teVY1THAzc1lhb3lMWURiRHVHL1ZtaEp4VWhMSTl2TWpn?=
 =?utf-8?B?b3RveXhNTEUza3NpSXBhUCtITHJEYzJxMTk5K1JIMkxBcW9nYnk0a3lDQUpk?=
 =?utf-8?B?c2lIWW1aV1JHN0c3WER0L0hIVUV1R1hCUWNEY0FmNGQ4ZU9mSEJYWno2Z0k5?=
 =?utf-8?B?a1AzMUxxK0xuejZIU0tnR2pXVDRycS9ablpCWEo3eFZaVkFXNUNETGRMN0Iv?=
 =?utf-8?B?c2VOSmp4ZnlOOWg5NWgrRWRYZnM5bG15eFpORlQ4T0x0ditHVmlVQzFKcTll?=
 =?utf-8?B?YWV0bm92KzRjNnp4M2hkTmdQZ2pIaDZkMjNkSGJwU0hVQjI5dTY4R2pHUXA4?=
 =?utf-8?B?cEFIR0JMUyt1cW9FcW53ZUlTbHNqS2FqTFJ2ZUg3cmxNR2w5WC9NaThwOWFy?=
 =?utf-8?B?NG1BVk91K0NKWGJWZG4rUm5WRHZOSHNzVFpFODQvcG9FaFUxTXBLdExSWmhz?=
 =?utf-8?B?Y1c2RXJ5c1l1TkNIQXcrck1FZEpxK1pCVHdoUmQvVGdZNlk0VWVGQU04UkN0?=
 =?utf-8?B?Vk1RQzErM0kxZElCYmhiS1lTZFFJL1UwTUJqdVNUTTFCd3VmQ2kwYlZPcWpy?=
 =?utf-8?B?YTR1aVNPb1oybWcyRkZhOFV2TkZkL2l2WGtTVmdpMTRCR3hucXBIZFpxSWpK?=
 =?utf-8?B?OWV5NmkyVC9JZVRLOThEaUZJTFBBUVR4R3VrZjUyMXJvMTRnUWlpbnBOSUNw?=
 =?utf-8?B?YSt5cGVuaXZqUDVQbnhVUmQwTVZqb0oxcnBSayt6QnUxcUdkS0xVT1BXWHRJ?=
 =?utf-8?B?TlVabnVHVkl6b2pQbnN5NGdjM3ZkbmRvT0RYclQyOEM5TTkwZnR4dz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4207BC2D6BCFB24B9C1ABA5B8DD38535@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 711a57c5-edb5-4df5-2576-08d9d14318a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2022 18:33:55.5163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oyADI4det7MoUbHXS841/sTcauBu843eBFaMgWdgUmLRrJ751DBHeZAlYh4jJhyh60GxaN+MszA/wqcIlRW8jn/7bFigQ6HzeFXHSqwiXz/gAFr+oUXiu2Krnw2r7/mN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4386
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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

DQpPbiBUaHUsIDIwMjItMDEtMDYgYXQgMDk6MzggKzAwMDAsIFR2cnRrbyBVcnN1bGluIHdyb3Rl
Og0KPiBPbiAwNS8wMS8yMDIyIDE3OjMwLCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdyb3Rl
Og0KPiA+IE9uIFR1ZSwgMjAyMi0wMS0wNCBhdCAxMzo1NiArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6DQo+ID4gPiA+IFRoZSBmbG93IG9mIGV2ZW50cyBhcmUgYXMgYmVsb3c6DQo+ID4gPiA+
IA0KPiA+ID4gPiAxLiBndWMgc2VuZHMgbm90aWZpY2F0aW9uIHRoYXQgYW4gZXJyb3IgY2FwdHVy
ZSB3YXMgZG9uZSBhbmQgcmVhZHkgdG8gdGFrZS4NCj4gPiA+ID4gCS0gYXQgdGhpcyBwb2ludCB3
ZSBjb3B5IHRoZSBndWMgZXJyb3IgY2FwdHVyZWQgZHVtcCBpbnRvIGFuIGludGVyaW0gc3RvcmUN
Cj4gPiA+ID4gCSAgKGxhcmdlciBidWZmZXIgdGhhdCBjYW4gaG9sZCBtdWx0aXBsZSBjYXB0dXJl
cykuDQo+ID4gPiA+IDIuIGd1YyBzZW5kcyBub3RpZmljYXRpb24gdGhhdCBhIGNvbnRleHQgd2Fz
IHJlc2V0IChhZnRlciB0aGUgcHJpb3IpDQo+ID4gPiA+IAktIHRoaXMgdHJpZ2dlcnMgYSBjYWxs
IHRvIGk5MTVfZ3B1X2NvcmVkdW1wIHdpdGggdGhlIGNvcnJlc3BvbmRpbmcgZW5naW5lLW1hc2sN
Cj4gPiA+ID4gICAgICAgICAgICAgZnJvbSB0aGUgY29udGV4dCB0aGF0IHdhcyByZXNldA0KPiA+
ID4gPiAJLSBpOTE1X2dwdV9jb3JlZHVtcCBwcm9jZWVkcyB0byBnYXRoZXIgZW50aXJlIGdwdSBz
dGF0ZSBpbmNsdWRpbmcgZHJpdmVyIHN0YXRlLA0KPiA+ID4gPiAgICAgICAgICAgICBnbG9iYWwg
Z3B1IHN0YXRlLCBlbmdpbmUgc3RhdGUsIGNvbnRleHQgdm1hcyBhbmQgYWxzbyBlbmdpbmUgcmVn
aXN0ZXJzLiBGb3IgdGhlDQo+ID4gPiA+ICAgICAgICAgICAgIGVuZ2luZSByZWdpc3RlcnMgbm93
IGNhbGwgaW50byB0aGUgZ3VjX2NhcHR1cmUgY29kZSB3aGljaCBtZXJlbHkgbmVlZHMgdG8gdmVy
aWZ5DQo+ID4gPiA+IAkgIHRoYXQgR3VDIGhhZCBhbHJlYWR5IGRvbmUgYSBzdGVwIDEgYW5kIHdl
IGhhdmUgZGF0YSByZWFkeSB0byBiZSBwYXJzZWQuDQo+ID4gPiANCj4gPiA+IFdoYXQgYWJvdXQg
dGhlIHRpbWUgYmV0d2VlbiB0aGUgYWN0dWFsIHJlc2V0IGFuZCByZWNlaXZpbmcgdGhlIGNvbnRl
eHQNCj4gPiA+IHJlc2V0IG5vdGlmaWNhdGlvbj8gTGF0dGVyIHdpbGwgY29udGFpbiBpbnRlbF9j
b250ZXh0LT5ndWNfaWQgLSBjYW4gdGhhdA0KPiA+ID4gYmUgcmUtYXNzaWduZWQgb3IgInJldGly
ZWQiIGluIGJldHdlZW4gdGhlIHR3byBhbmQgc28gY2F1c2UgcHJvYmxlbXMgZm9yDQo+ID4gPiBt
YXRjaGluZyB0aGUgY29ycmVjdCAob3IgYW55KSB2bWFzPw0KPiA+ID4gDQo+ID4gTm90IGl0IGNh
bm5vdCBiZWNhdXNlIGl0cyBvbmx5IGFmdGVyIHRoZSBjb250ZXh0IHJlc2V0IG5vdGlmaWNhdGlv
biB0aGF0IGk5MTUgc3RhcnRzDQo+ID4gdGFraW5nIGFjdGlvbiBhZ2FpbnN0IHRoYXQgY290bmV4
dCAtIGFuZCBldmVuIHRoYXQgaGFwcGVucyBhZnRlciB0aGUgaTkxNV9ncHVfY29kZWR1bXAgKGVu
Z2luZS1tYXNrLW9mLWNvbnRleHQpIGhhcHBlbnMuDQo+ID4gVGhhdCdzIHdoYXQgaSd2ZSBvYnNl
cnZlZCBpbiB0aGUgY29kZSBmbG93Lg0KPiANCj4gVGhlIGZhY3QgaXQgaXMgIm9ubHkgYWZ0ZXIi
IGlzIGV4YWN0bHkgd2h5IEkgYXNrZWQuDQo+IA0KPiBSZXNldCBub3RpZmljYXRpb24gaXMgaW4g
YSBDVCBxdWV1ZSB3aXRoIG90aGVyIHN0dWZmLCByaWdodD8gU28gY2FuIGJlIA0KPiBzb21lIHVu
cmVsYXRlZCB0aW1lIGFmdGVyIHRoZSBhY3R1YWwgcmVzZXQuIENvdWxkIGhhdmUgY29udGV4dCBi
ZSANCj4gcmV0aXJlZCBpbiB0aGUgbWVhbnRpbWUgYW5kIGd1Y19pZCByZWxlYXNlZCBpcyB0aGUg
cXVlc3Rpb24uDQo+IA0KPiBCZWNhdXNlIGk5MTUgaGFzIG5vIGlkZWEgdGhlcmUgd2FzIGEgcmVz
ZXQgdW50aWwgdGhpcyBkZWxheWVkIG1lc3NhZ2UgDQo+IGNvbWVzIG92ZXIsIGJ1dCBpdCBjb3Vs
ZCBzZWUgdXNlciBpbnRlcnJ1cHQgc2lnbmFsaW5nIGVuZCBvZiBiYXRjaCwgDQo+IGFmdGVyIHRo
ZSByZXNldCBoYXMgaGFwcGVuZWQsIHVuYmVrbm93biB0byBpOTE1LCByaWdodD8NCj4gDQo+IFBl
cmhhcHMgdGhlIGFuc3dlciBpcyBndWNfaWQgY2Fubm90IGJlIHJlbGVhc2VkIHZpYSB0aGUgcmVx
dWVzdCByZXRpcmUgDQo+IGZsb3dzLiBPciBHdUMgc2lnbmFsaW5nIHJlbGVhc2Ugb2YgZ3VjX2lk
IGlzIGEgdGhpbmcsIHdoaWNoIGlzIHRoZW4gDQo+IG9yZGVyZWQgdmlhIHRoZSBzYW1lIENUIGJ1
ZmZlci4NCj4gDQo+IEkgZG9uJ3Qga25vdywganVzdCBhc2tpbmcuDQo+IA0KQXMgbG9uZyBhcyB0
aGUgY29udGV4dCBpcyBwaW5uZWQsIHRoZSBndWMtaWQgd29udCBiZSByZS1hc3NpZ25lZC4gQWZ0
ZXIgYSBiaXQgb2Ygb2ZmbGluZSBicmFpbi1kdW1wDQpmcm9tIEpvaG4gSGFycmlzb24sIHRoZXJl
IGFyZSBtYW55IGZhY3RvcnMgdGhhdCBjYW4ga2VlcCB0aGUgY29udGV4dCBwaW5uZWQgKHJlY291
bnRzKSBpbmNsdWRpbmcNCm5ldyBvciBvdXN0YW5kaW5nIHJlcXVlc3RzLiBTbyBhIGd1Yy1pZCBj
YW4ndCBnZXQgcmUtYXNzaWduZWQgYmV0d2VlbiBhIGNhcHR1cmUtbm90aWZ5IGFuZCBhDQpjb250
ZXh0LXJlc2V0IGV2ZW4gaWYgdGhhdCBvdXRzdGFuZGluZyByZXF1ZXN0IGlzIHRoZSBvbmx5IHJl
ZmNvdW50IGxlZnQgc2luY2UgaXQgd291bGQgc3RpbGwNCmJlIGNvbnNpZGVyZWQgb3V0c3RhbmRp
bmcgYnkgdGhlIGRyaXZlci4gSSBhbHNvIHRoaW5rIHdlIG1heSBhbHNvIGJlIHRhbGtpbmcgcGFz
dCBlYWNoIG90aGVyDQppbiB0aGUgc2Vuc2UgdGhhdCB0aGUgZ3VjLWlkIGlzIHNvbWV0aGluZyB0
aGUgZHJpdmVyIGFzc2lnbnMgdG8gYSBjb250ZXh0IGJlaW5nIHBpbm5lZCBhbmQgb25seQ0KdGhl
IGRyaXZlciBjYW4gdW4tYXNzaWduIGl0IChib3RoIGFzc2lnbmluZyBhbmQgdW5hc2lnbmluZyBp
cyB2aWEgSDJHIGludGVyYWN0aW9ucykuDQpJIGdldCB0aGUgc2Vuc2UgeW91IGFyZSBhc3N1bWlu
ZyB0aGUgR3VDIGNhbiB1bi1hc3NpZ24gdGhlIGd1Yy1pZCdzIG9uIGl0cyBvd24gLSB3aGljaCBp
c24ndA0KdGhlIGNhc2UuIEFwb2xvZ2llcyBpZiBpIG1pcy1hc3N1bWVkLg0KDQo+IFJlZ2FyZHMs
DQo+IA0KPiBUdnJ0a28NCg0K
