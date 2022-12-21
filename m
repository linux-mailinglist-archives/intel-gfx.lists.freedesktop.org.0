Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9047E652E7C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 10:28:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F24C10E09A;
	Wed, 21 Dec 2022 09:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06DB10E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 09:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671614892; x=1703150892;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=MzlEArMyzK5jhGTfwTnv8+MHpb9ZRU4mtwl9h3R23GM=;
 b=af4jgRzL/vLUw450bsFSzumRNYuQVdCY+plVOejrKCktn30nmnlgROls
 zyjnoDBDz29PnzrTbhAOjFU5jnLU6xmPboy8+/PmqCk1ZmdYhItqkHZR6
 nbvNadG6r8TMRuL1oYQQ1oxn5FVfX2xVnK/AeKxYWjDcdlziVqv/eMwNl
 hGW3etj80OUPzLqiJ2yG88BwjvHsIOuEPug/ricWHnXP7eKmW+05N6zsf
 /wWYAs7ixkJ5Irq33f0c1XISDe4KKOiJ+D1LUrbF7Lx/PP6vjogH7cGhX
 ZgwP2V0T5KKKtgOnisQewVqkO8DK3FyTI7moenoCvwCSW4k3fqE6pj/VY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321739977"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321739977"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 01:28:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="719886288"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="719886288"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 21 Dec 2022 01:28:05 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 01:28:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 01:28:04 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 01:28:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 01:28:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+bFRfEZbOS3ETMY/OGr4b/a5S+49+2cFZJDy0b22MNdXtrDAtSb9gdeX26/npqVSB+EWf8V5V9It8/G8xBbilyWKpQg3S0ISlXHmbNQAj3FFh46WrlRbJsRuvtG3LKd2m0/ItbcMK03G2qz0J67hmTR2dOvKfEW/bENkoJIMGAHuZP7xEzsBMK93ukjYQMlQiFJ20l/x24tEl4sD8ry32CocOv4lgnd3No2ZxlXv5VuCf88rEM6umW+VE0saANpTLmv1flf/otHJesMObKnLx9Hib6XyAQlXwOlpbEo6AaMpi/RDhUdcWLodt1M0J+VNcYpv4J+cZEaRGUbjzwB6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MzlEArMyzK5jhGTfwTnv8+MHpb9ZRU4mtwl9h3R23GM=;
 b=Jo0TJLFoldVlkiPMBBCNM+ZfLUPfmF9cvNVz2pvCbnYrZimdXgVf+B7qfKY7G5D38H2p7G/4u3pDvTpP75dvnWjXL1NU5HeaQyMLo6z/Z3B+et2I6QNAE++5V//ohGzt0qiuB3F6QCHbS/lfosUD1sZq0RFT51FvBnK0k5gXe8+I/Y788LzvuvMjTpaVQbv1D0ecpUrpGEEu5in38vSYcPTqIazQ89svWQv/eifdy/QN3roL1OdtF/ZOn/6Zj+xQJtudLReaJ+oww2mcU9CzxRPrOjMQOyV+OPhvjhcz5NHi2YxdjZPphfEZQAcYS7MaQ4wh0CyE3QHfCo0s+fQuVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6622.namprd11.prod.outlook.com (2603:10b6:a03:478::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Wed, 21 Dec 2022 09:28:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%8]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 09:28:00 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for intel
 custom fb helper
Thread-Index: AQHZA/Azr6e9Mfmq0UuOMKQXzOlaVK53L/MAgAABdACAAQPAgA==
Date: Wed, 21 Dec 2022 09:28:00 +0000
Message-ID: <f0ccd8fc4ac380dd89d7e0bd4cad1dd1a3a918f3.camel@intel.com>
References: <20221129124302.291759-1-jouni.hogander@intel.com>
 <Y6H2gmQJRmCCP1gG@intel.com> <Y6H3ugZOxZzroO6Q@intel.com>
In-Reply-To: <Y6H3ugZOxZzroO6Q@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6622:EE_
x-ms-office365-filtering-correlation-id: c337bd41-9ccf-4be7-36cf-08dae335a72c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NhXDmh6WbOIlGf9+r51WGfaaM0memv045LYrJnXX93i+EVfBFbcxNp/jGKNs1lLlb6wfYmnZPXJyFZhDIn7oboOzfqyLi+Y+vc12jW9KHyVHGn4o+Sx6/zhlM9ZA9OpvHZaGlgSIv+sscA36R9JKu36xNyhxsAAYpcibTN1kNd+poZ3u2rNAXW2TFiLFkm+RMZvjVOcJrndrm1MP5Gs2s1BpsUq4bkjM3T3kLzB7F9w4h/xeUYTykF1uI3D+12ET9cnAN72weRVSShv6L7flqJj2p36t5eTAwaxYAeGZZjNLfS6CFw4fVaiUwcoyAr096Zm7vu7oF/xw9QjH7z5erPW6Ya8vp10+OaD5hfT0alOYlFAFPIg4XrnACpuB1q+4zWaKYC1Isr0WI7fVVxcPgcrJxsCwbw5lEmz4xnOhQ6WOQo202p293e+v72z4SC6T55/P+uKtIsMPAMCrBLIEFM7ALrir1q4deZ97txEwVCu61x/5Sxwwlkj/AIv5+5TLdwbZDB+S6d3CjfFL1QPkDoyaoDAmF1wDC5At3YWoZxmkuRQ5TtZfxENm2E33U6/HuLCq4wrF/XeXIgq52J6ZKxri3WrlbO06Y0iBPP4FA0Tns89t2L7JMdAxu4GhLOpZ0OwTTfeBK9+oWsA49/W/m1MYKiKkZ+eSiQMvoGsc6+T0qmouZl+V7RYXFnllTUDsm0tJEbYfmQzp+zKSS2nmhRzFbXGxbGe7JGKZYJxya8s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(39860400002)(136003)(346002)(451199015)(66574015)(8936002)(5660300002)(83380400001)(186003)(41300700001)(6512007)(26005)(4001150100001)(2906002)(316002)(6486002)(82960400001)(478600001)(38070700005)(6916009)(6506007)(54906003)(86362001)(36756003)(4326008)(91956017)(2616005)(76116006)(64756008)(71200400001)(66946007)(66556008)(66446008)(8676002)(38100700002)(66476007)(122000001)(14143004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEJwVExwaUtpeEIxTVZjMTN3WDQ5cEZRNnM5NTkzMmYzZUd1cUcxK0I5SnJW?=
 =?utf-8?B?V3BYMTk0RUhWOFM0VVNnYnlZeXhnT3cvM3FEcmxYTW9JcmcvSE1OL1JVdGRk?=
 =?utf-8?B?eWYvdk1xU09wZGUvVGFQc1RGaHVMcmhOb1QwVWRvekJubDZJL0E4enFOa08y?=
 =?utf-8?B?eUhoVW5adm1PL0I1L2Fuc1Rta2djSUU5R0dEMHdzNkNIbkdGUE1uV3dOMWtW?=
 =?utf-8?B?TlRqQVZDVUhQVCtONHhPOVhGSTNQRTZuQUJYRlZuSlU2d29reUZGU0dRUWF6?=
 =?utf-8?B?SlNBS0pBMVdBY1lEWGVqQy9jUE1MUWFqU3hPTVd0djNKVmdvbThaV3JsQUZ5?=
 =?utf-8?B?dE96VmxTbUJYV280MjNqbXcxc09TR1dLQkJiWlRKT0RSVTk2NkRRVU1jMzBh?=
 =?utf-8?B?QlYzNHF0bVJOR0RSVHB4K1hhUDMwdVN0MHhQYnFxZm9NNk1rVW9pdGRIdGRJ?=
 =?utf-8?B?UmVudmRueCtIOXI4QzY1VEVzUTNPTHl1dUlXUnBDV3BMdXhFN1NiTDdmdHVn?=
 =?utf-8?B?MlBUSjNyeXl2K3J5SWJaRmxlYVovRnYwUE05RWRBa3VhL1FVZlJMWHZZbXJ5?=
 =?utf-8?B?RTRwSURGa3BnNmgwNVhWQm03d0Z2VXlMYmNYOXpSV09obVg3Q25qS0xhMDYw?=
 =?utf-8?B?bnlUZU4rd0R4QUludUM3MHJlTTlFemM0VEhBcjBIQWl0dGxBMmh2Q2taZFdF?=
 =?utf-8?B?RGdjY3Fldml5elBpZVZXMVErNWliMHhVWVQvN25nc1hWdVhuYmVwTVA1WTVx?=
 =?utf-8?B?ZHpvUHlwN1dyUWYwY1JhN1RFeFg5eDRJZ1gwdmFvS0F2cGo0cHR6cXlnQ3Ni?=
 =?utf-8?B?TXJDUCtZMzdzdWZqbC9mRVRjUTg1MW13SFdueGV0cGdEVHhKRHphTlJiVEZC?=
 =?utf-8?B?SDBPSlJLeXUySUQzMmZ3cnlRbEdhZTUzUHdtM1ArQ2Z5dUdmVnhxZWt6UmhE?=
 =?utf-8?B?bExVV1N4VFN5K01wUTdGSm9OK1N2SHp3ZjRiSmNMZ1l2YTRRZitDekRHUUcw?=
 =?utf-8?B?Z25ySDl0VjEvMHZ2WHVYK2x2RlZpaEd4UUROTnU1d3ZFZmxNRjRYcG5tZzV2?=
 =?utf-8?B?MmEyZGZ0N0dTVHVlUTJIclVjTWZ3TTAxYVFHRzdSb3pMaHF5WUdIbitMNlNG?=
 =?utf-8?B?ZmNjTDZtVFd6NHkxanRSNkxPMnR3dlUvaWxIaXA1SWticUVwSFkzZm92L204?=
 =?utf-8?B?U1hKNW9wMDUwRGZhRzh3V0h1Yy8wc2F6aE1XRXpCcjBld09LeVJkNHFleCtk?=
 =?utf-8?B?NkZFeE51eTg5ZDA4YnRhdCtvL2dmb1ByUXl1eDJvTElGWHhuaVJPYnl4L25a?=
 =?utf-8?B?eUJUaG1BOXhleG15ZmpQSUU5SzdraGtxM21hNDBBejBVYkdwMXdUVGVOYnZB?=
 =?utf-8?B?MkhCNFJ3MUZYQ3loUFpTeERUdG9BZFV2SldoQnlmOVJ5bUgxMi9KR21yeTlv?=
 =?utf-8?B?R2ZSbUxBU09FZ2o2SmNHWDJYY0FwRC8xOWtxWFFRc3RITW5Za0ZJaExqdDc1?=
 =?utf-8?B?dTF5L2lRSmYzWDlESzBldGpYaS9STnlmbkxWYUxHSXBkNmRXYzl6aVRldW1r?=
 =?utf-8?B?YXJMSFJFSE1LK0dWdGxqWWIycmxWbEJEdVpuRGtNMFNCak5jODhHQUJGU2Vt?=
 =?utf-8?B?cWU5TmRlQnc3S0NKUU43NnluVElCQ1lMdFd5L3hTSUJFZTlKSHBsanpmMEhQ?=
 =?utf-8?B?WlNzZjFSUnM3bjd0U3VhbmREZ0grQ2l1KzhUWjBDTnV3VlM5UjVIRk42RmZB?=
 =?utf-8?B?RGtCa0d1WGZuYmI0d2JPbVFsdlJoMXNSQWh5Rk1USlI1Mm05WmhVVTUrc1c0?=
 =?utf-8?B?V0dZMUF3UlM4aFhuS1cydEZrVDlpN0dETk5IL3ZMcEZvRE5pcWkrWXFjWTQ3?=
 =?utf-8?B?b3owUUxRbHZvQjNJRkJBWWp1c0ZUK1N5SllJOWVhWEIvN1Z3OTRnM3g0SHZt?=
 =?utf-8?B?djJmUXg3TG9VaUlVeHlOT1FuNXhOaDZJUW1FUHQ1UHp0cnRvZXhMZFpOdElo?=
 =?utf-8?B?YTV1YnIrK1JSYmlUVkZ5UjQvNk1FK1pDdDhKWUN0QXVmV3NSdTNaZ3NGV2ho?=
 =?utf-8?B?TUxiQXNNYmp1Q2NoQWRzVS9WYVVGN2hSc09vWDV1WXcxRjRWTUNyTWN1bDBI?=
 =?utf-8?B?OHdNQjhJTDNXd001MVRGeldZK3FGV3ArUjBKTUl5dHJ6TEZxblhpaFEyN1Iy?=
 =?utf-8?B?bUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <00B8A28ED1DDFF44B4976C629C053E0B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c337bd41-9ccf-4be7-36cf-08dae335a72c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2022 09:28:00.3654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0wEmll262EaeVmKSaml1p5EfkeE7x1942S1O0rkVFCbucKTn+EfekRbbA4mDibg8Eb+wDdZ5plX8VkDVcjZ9qQCLzyfkY6HYcJpGIbyQZqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTEyLTIwIGF0IDE5OjU4ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRGVjIDIwLCAyMDIyIGF0IDA3OjUzOjA2UE0gKzAyMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToNCj4gPiBPbiBUdWUsIE5vdiAyOSwgMjAyMiBhdCAwMjo0MzowMlBNICswMjAw
LCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+ID4gPiBBZnRlciBzcGxpdHRpbmcgZ2VuZXJpYyBk
cm1fZmJfaGVscGVyIGludG8gaXQncyBvd24gZmlsZSBpdCdzDQo+ID4gPiBsZWZ0IHRvDQo+ID4g
PiBoZWxwZXIgaW1wbGVtZW50YXRpb24gdG8gaGF2ZSBmYl9kaXJ0eSBmdW5jdGlvbi4gQ3VycmVu
dGx5IGludGVsDQo+ID4gPiBmYiBkb2Vzbid0IGhhdmUgaXQuIFRoaXMgaXMgY2F1c2luZyBwcm9i
bGVtcyB3aGVuIFBTUiBpcyBlbmFibGVkLg0KPiA+ID4gDQo+ID4gPiBJbXBsZW1lbnQgc2ltcGxl
IGZiX2RpcnR5IGNhbGxiYWNrIHRvIGRlbGl2ZXIgbm90aWZpY2F0aW9ucyB0bw0KPiA+ID4gcHNy
DQo+ID4gPiBhYm91dCB1cGRhdGVzIGluIGZiIGNvbnNvbGUuDQo+ID4gDQo+ID4gSnVzdCBmb3Vu
ZCB0aGlzIHJlZ3Jlc3Npb24gbXlzZWxmIGFmdGVyIGJlaW5nIGJhZmZsZWQgd2h5IHRoZQ0KPiA+
IHZ0IGNvbnNvbGUgd2FzIGlub3BlcmFibGUgcmlnaHQgYWZ0ZXIgdGhlIGRyaXZlciBnZXRzIGxv
YWRlZC4NCj4gPiANCj4gPiBJdCdzIGFsc28gbm90IGp1c3QgcHNyLCBidXQgYWxzbyBmYmMgdGhh
dCBpcyBoYXZpbmcgaXNzdWVzLg0KPiA+IA0KPiA+IE5lZWRzIGEgZml4ZXMgKyBjYzpzdGFibGUg
dGFncy4NCj4gDQo+IEFjdHVhbGx5IGxvb2tzIGxpa2UgaXQgZGlkbid0IG1ha2UgaXQgaW50byA2
LjEgc28gSSBndWVzcw0KPiBubyBjYzpzdGFibGUgbmVlZGVkLg0KDQpBZGRlZCBGaXhlcyB0YWcu
DQoNCj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4NCj4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmRldi5jIHwgOSArKysrKysrKysNCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPiA+ID4gaW5kZXggNTU3NWQ3YWJkYzA5Li43Yzdm
YmEzZmU2OWUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJkZXYuYw0KPiA+ID4gQEAgLTMyOCw4ICszMjgsMTcgQEAgc3RhdGljIGludCBpbnRl
bGZiX2NyZWF0ZShzdHJ1Y3QNCj4gPiA+IGRybV9mYl9oZWxwZXIgKmhlbHBlciwNCj4gPiA+IMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ID4gwqB9DQo+ID4gPiDCoA0KPiA+ID4gK3N0
YXRpYyBpbnQgaW50ZWxmYl9kaXJ0eShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVyLCBzdHJ1
Y3QNCj4gPiA+IGRybV9jbGlwX3JlY3QgKmNsaXApDQo+ID4gPiArew0KPiA+IA0KPiA+IFRoZSBv
cmlnaW5hbCB0aGluZyBoYWQgc29tZSBraW5kIG9mICJpcyB0aGlzIHJlY3QgYWN0dWFsbHkNCj4g
PiB2aXNpYmxlPyINCj4gPiBjaGVjayBoZXJlLiBEb2VzIGFueW9uZSBrbm93IHdoeSBpdCB3YXMg
dGhlcmUsIGFuZCBpZiBzbyBtYXliZSBpdA0KPiA+IHNob3VsZA0KPiA+IGdvIGJhY2sgdG8gdGhl
IGhpZ2hlciBsZXZlbCBmdW5jdGlvbiBzbyBldmVyeW9uZSBkb2Vucyd0IG5lZWQgdG8NCj4gPiBh
ZGQgaXQNCj4gPiBiYWNrIGluPw0KDQpJJ2xsIGd1ZXNzIHlvdSBtZWFuIHRoaXMgb25lID86DQoN
Ci8vIHNuaXANCiAgICAgICAvKiBDYWxsIGRhbWFnZSBoYW5kbGVycyBvbmx5IGlmIG5lY2Vzc2Fy
eSAqLw0KICAgICAgIGlmICghKGNsaXAtPngxIDwgY2xpcC0+eDIgJiYgY2xpcC0+eTEgPCBjbGlw
LT55MikpDQogICAgICAgICAgICAgICByZXR1cm4gMDsNCi8vIHNuaXANCg0KSSB3aWxsIGNyZWF0
ZSBzZXBhcmF0ZSBwYXRjaCBmb3IgdGhpcy4NCg0KPiA+IA0KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
aWYgKGhlbHBlci0+ZmItPmZ1bmNzLT5kaXJ0eSkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KGhlbHBlci0+ZmIsIE5V
TEwsDQo+ID4gPiAwLCAwLCBjbGlwLCAxKTsNCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oHJldHVybiAwOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+IMKgc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1fZmJfaGVscGVyX2Z1bmNzIGludGVsX2ZiX2hlbHBlcl9mdW5jcyA9DQo+ID4gPiB7DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3Byb2JlID0gaW50ZWxmYl9jcmVhdGUsDQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqAuZmJfZGlydHkgPSBpbnRlbGZiX2RpcnR5LA0KPiA+ID4gwqB9Ow0KPiA+
ID4gwqANCj4gPiA+IMKgc3RhdGljIHZvaWQgaW50ZWxfZmJkZXZfZGVzdHJveShzdHJ1Y3QgaW50
ZWxfZmJkZXYgKmlmYmRldikNCj4gPiA+IC0tIA0KPiA+ID4gMi4zNC4xDQo+ID4gDQo+ID4gLS0g
DQo+ID4gVmlsbGUgU3lyasOkbMOkDQo+ID4gSW50ZWwNCj4gDQoNCkJSLA0KDQpKb3VuaSBIw7Zn
YW5kZXINCg==
