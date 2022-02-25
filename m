Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3974C3EB0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 08:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72B810E302;
	Fri, 25 Feb 2022 07:06:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E112C10E302
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 07:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645772795; x=1677308795;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0n93QfGUrcjeA0Wt9leNrFYXq1JCoFI7r/cU7G01JSw=;
 b=Uf/EDmOz9ELBav2+HLT3Q0F6MTNDEc7QDTVffmTo0azkV+ZiVMWyt3Vn
 +NlKXFctXOENaKi2YE1kZDsFeEWSwHnv0Pk3sF6HSExhiC2z8w1W+K0+K
 KAJbjgzv9Q9prYOHybdoEoPPmhaaJ7hMln/bRoQ8pwnmOT23KzuseMTPo
 eo3P5SH8og4ZMqB+/Tqrt9ROn9VV5w7QB0WYGMbvzeZEhEssEB4JhVc3j
 SSAPErx7bPVjLYr+B3Es2OPo5oOpGftXqyiGyisrjwtXMKCXGkKpTgwpa
 rz0jcSo8EJXCFtjjbmq63VlTM6V6ltDGkry/qw79uA63GcZpGWyl/5VIl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="338874247"
X-IronPort-AV: E=Sophos;i="5.90,135,1643702400"; d="scan'208";a="338874247"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 23:06:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,135,1643702400"; d="scan'208";a="790424048"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 24 Feb 2022 23:06:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 23:06:28 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 23:06:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 24 Feb 2022 23:06:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 24 Feb 2022 23:06:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLLhrWUt2HKtKPx3IhQ7KoXLWDdBhsRhVyEtkMyoHE/1HCGpUQU44q/aESiKvECzFoUBtSCiN3TvB5nKqdTvuUV+qhLP1hcMOjFSshZRrNYNXRNqi7LZTU2Brl4xUJgOIU3Z0B8OliEBRsvIg47xNb/wPg7kJiSeSB0qtlM6MJc4VlHYviUOSjESsNVD7+uAF2FDIy3zKxiQeb7QuoiK/6Cdh+WAW6ckEPK9os/mfv5a0JNTEsvxe8UDg9jo1Ja2vmb2rBjkgT6JBUVfxpM5kGshrMH4H28ALKuzyYxV+4raVDY58EW6rNV6XFOp7mhslVEdi0OuBDwiyQIOdEvqTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0n93QfGUrcjeA0Wt9leNrFYXq1JCoFI7r/cU7G01JSw=;
 b=dRGfBlCjk8JZDPTzIJ0B/rSvycS2EVBzCZ3YigvIdNaAFzL79WL8G51VUFMZcn26OxkOctI+XjA+o1s0Mj8lbbe5Z63oFkQKhpTa2byahfMnFQzR+9dbrXv0URdQuzPKSynDlpp1thJiS+heqzewgVKkTogYVHVb/TNGk/HRdd8Iag8mTmr7cU+zN/Noy3ozLCKU2a1Fg380zeiFuvb7z+3rMfWEZgdyoPoNjrCQuq3im+JzFLu3W8AM6PflPldFd8um1i5DZ7T20EChFVHatNm0wwFRNiPv4t913NWhlQ0SSSCg5nK8P3y1K8tBQMUAt0NyI57ZC0Gkqi5gkEWMTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM6PR11MB2972.namprd11.prod.outlook.com (2603:10b6:5:63::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.23; Fri, 25 Feb 2022 07:06:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::436:cd8f:22d6:c66c]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::436:cd8f:22d6:c66c%2]) with mapi id 15.20.5017.022; Fri, 25 Feb 2022
 07:06:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "lyude@redhat.com" <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Set "SF Partial Frame Enable" also on
 full update
Thread-Index: AQHYKLO7XIcvhJ5Y5E608SWSTnIrKayhZUGAgAG8JoCAALmYgA==
Date: Fri, 25 Feb 2022 07:06:25 +0000
Message-ID: <68c62e32e3d1945da411c0b0552cfafe18fb7509.camel@intel.com>
References: <20220223124807.3284451-1-jouni.hogander@intel.com>
 <4cb2fee5d362cf2ac7172ad1405d164c6b0206dd.camel@intel.com>
 <2b4072ba31eb3b26c205b3335020ebd4866ef000.camel@redhat.com>
In-Reply-To: <2b4072ba31eb3b26c205b3335020ebd4866ef000.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f9710a9-5cc4-4659-886c-08d9f82d56a8
x-ms-traffictypediagnostic: DM6PR11MB2972:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB2972CE01DE39FB3748978C678A3E9@DM6PR11MB2972.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 95k82NVrPnBLxw/1iYpwTivBWQHkBge/6NqijKgfFWt3UgnMYS7Fw7li50Cbt0V1LhQzejeDWN8M3oZZAl0d3GIjA1+F9yCcDG6A8bwZ05eUXn7F78cphSPMaBz5L06MuZNKb4muTNbXFVDC6Pm2H5LX5eaSJ6VxyO+AWOptMIYCTjlZgZzyGNDBNXBjJty6yp4iGM31ZtQGkU8M4LxuzhlGw8ICplQlImKR8TRJKOdia/PqTYtg3yzqgkt8+pcvlSGHFJTeCWlkhpQfexGkFshZSZPL+ppsKUvGd2af9oLUNwVFcyE1LzyhIUjDp4rljk6V2LjRcMTdwW9CH5lYafY1PBnzVVQzc0fMtmfy/Ruv517hib9KEScKmRvT+R1vh25zT0cKj+PmTEEzBjxEg0rfuGWGd8lXBBoIL0BM6Teu+ESgs4ws4DcT9RKq7UA9o1hRRJw8BvkChYBhDkJ+PHxGcDaYQi/ON2UwKgIyF5rLu2LkgRej7Zn35O2nSf392wtZK4IB0/aaNU7uI1a56geOb2e6pxRs1IO1CGeFn5oWSYSKJ/cr8gpbk+QEkjoYDtNLlrmK8Bbt/XuYpZ5q4Dm3JGO2v2BTldJIuaQDhLBrIGdB3QKBQJ7ECypIMKCjEjvx0ScO49joyRF8g6UnoJ4uwqb9Md839lJD75RTMkRYs1+fjCD9rpuo9tiZ37uTX29KK5uNf8Z+91n+2jnKAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6636002)(26005)(5660300002)(2906002)(71200400001)(83380400001)(110136005)(316002)(54906003)(186003)(6506007)(2616005)(86362001)(66946007)(64756008)(4326008)(66556008)(8936002)(122000001)(8676002)(38100700002)(38070700005)(82960400001)(6512007)(966005)(6486002)(76116006)(15650500001)(36756003)(66574015)(66446008)(508600001)(66476007)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ek5ZYmx0czBYZEdiQU5EUmxDS09OSmM5R2Z5L3FFTnlxbVZDbTZueG1UcnRw?=
 =?utf-8?B?dFBXWWxQcGxPTHV1Q2Q1ZXEyRTdBUGRkRzFWSXpCNW5waVQ1aDk2dUhVWmNv?=
 =?utf-8?B?aVBzZUg0djhpdjE1ZkNoWTZ0Z1pEMDF4TXB3dG5wRjQ5M0pRMHVKd0xVOEoz?=
 =?utf-8?B?aTdIQTJSN0gwU0NHZXhKWHNVMjY2T05DbytVZlNucktWR0ZyTTlvamo5aksz?=
 =?utf-8?B?NGw5TFAxTG0wMFdOVnR0TjZiVDNxbUJHYW9IK2dJZ0RKQW9scG9HL0VCVGh4?=
 =?utf-8?B?STFDN1E1SU80M0hHQ2c2cGZPR1F6d3BEZDZiWUgyOXhQMTlVSkczdVVmQkJs?=
 =?utf-8?B?NWRWZ25KdTE2ZVlORm1DdTI2U3luNXpMSzVmV1haUGZib3hSVkYxUnZ0dEJY?=
 =?utf-8?B?MWdBSHJvUDAya3dETk1zSEwyY0lhZUF5UkNHNk8xSGNDaWZBREVBU0IzVWF6?=
 =?utf-8?B?SVJERThJUHBoUEowOXFkT0VIaG9KQ1Y2ajJhUzZMZGlCTFdnTTVCUXRGZitT?=
 =?utf-8?B?V0JBV2thK0kxQ0RZQ01DSUYza1dqVzJvdVh0T1BrS2NuL21mZExLb1NYZW1R?=
 =?utf-8?B?d0pkK1VNT2gweC9DRm9kaGVjT3dsT1VhSDVrSC9JblZuNFJORXR3amZqUHU1?=
 =?utf-8?B?U1ZBeENDUngzQXBnai9BaC80SGtGQjVseVZSNExMTUNRbU4yWXdrZlBsNDhu?=
 =?utf-8?B?NlhaWkRENlBMeXE3NmM2SmNTcVZ5NTVKWUJ3dnNzYWE0QUdyWTNILzZLaDRr?=
 =?utf-8?B?TkNtbGlPQU5tcDZZaFBTS1BwNmRLY0FpY2p4dk92ODB1clhySzZsQUx0MGxO?=
 =?utf-8?B?aEpIKy9wVmJwclgya0drN0tqOXRTSGY3L1hpYnNwZ3EzbHo0MXZ3NmVXV01K?=
 =?utf-8?B?UXk0d2FyZUtnN0ZTaTRsZUdKK0NmSzRIRkxRMmNJT2ZGU0VaWlJYUHY3S0NI?=
 =?utf-8?B?RXNEWnhwOU4rU0tDNmdEWmY3dzN0UktRSm5ydGcvRUllK2dxN0lPTjgzM0Y0?=
 =?utf-8?B?QS9LbUJNamFjY0kwSWc4K3FId1RoREs3YldnQzdRTnBZcW9qY2tVQ2xZVXZv?=
 =?utf-8?B?WjdoTjdyaUZDQndZeExDTWM2M28wazlQeWZzMXNMcUtzVzd1bWFMZWNNMy9J?=
 =?utf-8?B?UnhaYlB6b3dkbkFhNHFEZmh1YnZ4VEkydGN5bTJibEo1bFlzVEM5aFdTUy9Q?=
 =?utf-8?B?OE9rcW4xZURUbGMvSExWYUdacWV4a3dqUnJzMkRMOTA3QmdrdWFTYnhCeGlv?=
 =?utf-8?B?dVNJVkNWMFNpNmU0aWE1Z3VJN0N1NnY4WXlieUtQWjZ3VjF2akMyQjBoQ3Ax?=
 =?utf-8?B?cThPelY5Y2UrWGI4MlNaazBhZE9MUDF6c1hrMTdLYmtpZDdEU3Z0L3k5dE5h?=
 =?utf-8?B?UEJCbG9FMjRaaEM2aU1xVk1ZVmZtNWFBWVdWMTNEN1BsdzZEeGpVREhkRG13?=
 =?utf-8?B?bjlEVWhtNkhDMyt3RGxRakZ6OVRLL2M2SDhUVmRpQ0lkdkw2VkxLZUNpdzF3?=
 =?utf-8?B?ZThvRmpFU3kreGRkeFYwcGZSQjZVNmRCbGNLUi93NGV0Ri9RT0I0S3I3ckRD?=
 =?utf-8?B?WFVMa2gzWW1MUEoveTZRK0swVGVUclQrekdBaWpTWFl0RlZ5UFFYTGRGeHZW?=
 =?utf-8?B?cFNWanNMZzJVQm5OWHl2MUlycitIb0dOZHpFd045MkpObCtXQXlGWlZ0NE8r?=
 =?utf-8?B?MTFMRk5nY3NrcUdrYWw1NmtnMno3OUZOSmRqQVBJamNiUEhreVErNTZPQ0pD?=
 =?utf-8?B?akFFYWd2ZVB0cmNnS0xPTzcwUlNjMHFiVExHdzNwcFVyTDBvdkloZU9LdGZm?=
 =?utf-8?B?ZXNXOUlqRGVsWDZDV0tCUnptN1JVN2ZyZC9kOElHNnBNb0ZCcTRraytHZWtQ?=
 =?utf-8?B?K2VMQ1pBdzk5L3JqQzBBSVI1UGxwNnB3ZzFSTUhqZFBjUXp0SytJMlRYNGdD?=
 =?utf-8?B?QlErdzZyVkdHdlF0OENycEUxMTAxNkRBdGZRUXdjSmlTUmhadVRoRWI3Z1hU?=
 =?utf-8?B?bjFmT2VWTmJMMXIvK25qTEtlQXdHWnY5c2VhMnRYSHFmNEVqR3NqSmpqbDVt?=
 =?utf-8?B?YUdyRUdXa3htS1RiQ0w4T1hLalNyckNrK3Z3eFVuSkVtOWlxRVU0WjdCTG43?=
 =?utf-8?B?QUlobTZhT24ycWNjNVo4dTBzcGlFcGgwenNJUWNLMldkR3RJZ2FxQ0RqYVJt?=
 =?utf-8?B?bXp6K0JtU2ZnNzRHaGpEQzhyTFFqL3BwWjhtZFV0VmRVaVB2Vytic2RaUS9Z?=
 =?utf-8?Q?wf3ftQwUdraqgaCnVz35uagJpL162GLsLdw8hMIOcE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E69C5EBA6E713042824A68C28F4CC25E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f9710a9-5cc4-4659-886c-08d9f82d56a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 07:06:25.9801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W8O4sy9fr5hQVU/gUK5/JrxeP9ikRK5AD7iyHQdtZ/dUwbi53GpihnXj9YotFyYr4ug7ieMTijiJZFPo0vnsDxJQppMyq/Rj9oFrh/N60V8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2972
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Set "SF Partial Frame
 Enable" also on full update
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
Cc: "mharpau@gmail.com" <mharpau@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkcmVzc2VkIGNvbW1lbnRzIGZyb20gSm9zZSBhbmQgUGF1bCBpbiB2ZXJzaW9uIDMuDQoNCk9u
IFRodSwgMjAyMi0wMi0yNCBhdCAxNTowMiAtMDUwMCwgTHl1ZGUgUGF1bCB3cm90ZToNCj4gQWxz
byAtIEkgcmVhbGl6ZWQgdGhpcyBpcyBtaXNzaW5nIGFuIGFwcHJvcHJpYXRlIEZpeGVzOiB0YWcg
Zm9yIHRoZQ0KPiBjb21taXQNCj4gdGhhdCBlbmFibGVkIFBTUjIgc2VsZWN0aXZlIGZldGNoIG9u
IHRpZ2VybGFrZSBpbiB0aGUgZmlyc3QgcGxhY2UNCj4gDQo+IE9uIFdlZCwgMjAyMi0wMi0yMyBh
dCAxNzozMiArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gT24gV2VkLCAyMDIyLTAyLTIz
IGF0IDE0OjQ4ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+ID4gPiBDdXJyZW50bHkg
d2UgYXJlIG9ic2VydmluZyBvY2Nhc2lvbmFsIHNjcmVlbiBmbGlja2VyaW5nIHdoZW4NCj4gPiA+
IFBTUjIgc2VsZWN0aXZlIGZldGNoIGlzIGVuYWJsZWQuIE1vcmUgc3BlY2lmaWNhbGx5IGdsaXRj
aCBzZWVtcw0KPiA+ID4gdG8gaGFwcGVuIG9uIGZ1bGwgZnJhbWUgdXBkYXRlIHdoZW4gY3Vyc29y
IG1vdmVzIHRvIGNvb3Jkcw0KPiA+ID4geCA9IC0xIG9yIHkgPSAtMS4NCj4gPiA+IA0KPiA+ID4g
QWNjb3JkaW5nIHRvIEJzcGVjIFNGIFNpbmdsZSBmdWxsIGZyYW1lIHNob3VsZCBub3QgYmUgc2V0
IGlmDQo+ID4gPiBTRiBQYXJ0aWFsIEZyYW1lIEVuYWJsZSBpcyBub3Qgc2V0LiBUaGlzIGhhcHBl
bmVkIHRvIGJlIHRydWUgZm9yDQo+ID4gPiBBRExQIGFzIFBTUjJfTUFOX1RSS19DVExfRU5BQkxF
IGlzIGFsd2F5cyBzZXQgYW5kIGZvciBBRExQIGl0J3MNCj4gPiA+IGFjdHVhbGx5ICJTRiBQYXJ0
aWFsIEZyYW1lIEVuYWJsZSIgKEJpdCAzMSkuDQo+ID4gPiANCj4gPiA+IFNldHRpbmcgIlNGIFBh
cnRpYWwgRnJhbWUgRW5hYmxlIiBiaXQgYWxzbyBvbiBmdWxsIHVwZGF0ZSBzZWVtcw0KPiA+ID4g
dG8NCj4gPiA+IGZpeCBzY3JlZW4gZmxpY2tlcmluZy4NCj4gPiA+IA0KPiA+ID4gQWxzbyBtYWtl
IGNvZGUgbW9yZSBjbGVhciBieSBzZXR0aW5nIFBTUjJfTUFOX1RSS19DVExfRU5BQkxFDQo+ID4g
PiBvbmx5IGlmIG5vdCBvbiBBRExQIGFzIHRoaXMgYml0IGRvZXNuJ3QgZXhpc3QgaW4gQURMUC4N
Cj4gPiANCj4gPiBCaXQgZXhpc3QgYnV0IGhhcyBhbm90aGVyIG5hbWUuDQo+ID4gDQo+ID4gPiBC
c3BlYzogNDkyNzQNCj4gPiA+IA0KPiA+ID4gdjI6IEZpeCBNaWhhaSBIYXJwYXUgZW1haWwgYWRk
cmVzcw0KPiA+ID4gDQo+ID4gPiBSZXBvcnRlZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0
LmNvbT4NCj4gPiA+IENjOiBNaWhhaSBIYXJwYXUgPG1oYXJwYXVAZ21haWwuY29tPg0KPiA+ID4g
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4g
PiBCdWd6aWxsYTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy81MDc3DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMA0KPiA+ID4gKysrKysrKysrKysrKysrKysrLS0NCj4g
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDEgKw0KPiA+
ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
PiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+ID4gaW5kZXggMmUwYjA5MmY0YjZiLi45MGFjYTc1ZTA1ZTAgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBAQCAtMTQz
OSw2ICsxNDM5LDEzIEBAIHN0YXRpYyBpbmxpbmUgdTMyDQo+ID4gPiBtYW5fdHJrX2N0bF9zaW5n
bGVfZnVsbF9mcmFtZV9iaXRfZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiAgICAg
ICAgICAgICAgICBQU1IyX01BTl9UUktfQ1RMX1NGX1NJTkdMRV9GVUxMX0ZSQU1FOw0KPiA+ID4g
IH0NCj4gPiA+ICANCj4gPiA+ICtzdGF0aWMgaW5saW5lIHUzMiBtYW5fdHJrX2N0bF9wYXJ0aWFs
X2ZyYW1lX2JpdF9nZXQoc3RydWN0DQo+ID4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gPiA+ICt7DQo+ID4gPiArICAgICAgIHJldHVybiBJU19BTERFUkxBS0VfUChkZXZfcHJpdikg
Pw0KPiA+ID4gKyAgICAgICAgICAgICAgQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxf
RlJBTUVfVVBEQVRFIDoNCj4gPiA+ICsgICAgICAgICAgICAgIFBTUjJfTUFOX1RSS19DVExfU0Zf
UEFSVElBTF9GUkFNRV9VUERBVEU7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gIHN0YXRpYyB2
b2lkIHBzcl9mb3JjZV9od190cmFja2luZ19leGl0KHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmlu
dGVsX2RwKQ0KPiA+ID4gIHsNCj4gPiA+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gPiBAQCAtMTU0Myw3ICsxNTUw
LDE3IEBAIHN0YXRpYyB2b2lkIHBzcjJfbWFuX3Rya19jdGxfY2FsYyhzdHJ1Y3QNCj4gPiA+IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gPiAgew0KPiA+ID4gICAgICAgICBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0NCj4gPiA+ID51
YXBpLmNydGMpOw0KPiA+ID4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNydGMtDQo+ID4gPiA+YmFzZS5kZXYpOw0KPiA+ID4gLSAgICAgICB1MzIg
dmFsID0gUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEU7DQo+ID4gPiArICAgICAgIHUzMiB2YWwgPSAw
Ow0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICAvKg0KPiA+ID4gKyAgICAgICAgKiBBRExfUCBkb2Vz
bid0IGhhdmUgSFcgdHJhY2tpbmcgbm9yIG1hbnVhbCB0cmFja2luZw0KPiA+ID4gZW5hYmxlDQo+
ID4gPiArICAgICAgICAqIGJpdA0KPiA+ID4gKyAgICAgICAgKi8NCj4gPiANCj4gPiBOaXQ6IFVu
bmVjZXNzYXJ5IGNvbW1lbnQuDQo+ID4gDQo+ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IA0KPiA+ID4gKyAgICAgICBpZiAo
IUlTX0FMREVSTEFLRV9QKGRldl9wcml2KSkNCj4gPiA+ICsgICAgICAgICAgICAgICB2YWwgPSBQ
U1IyX01BTl9UUktfQ1RMX0VOQUJMRTsNCj4gPiA+ICsNCj4gPiA+ICsgICAgICAgLyogU0YgcGFy
dGlhbCBmcmFtZSBlbmFibGUgaGFzIHRvIGJlIHNldCBldmVuIG9uIGZ1bGwNCj4gPiA+IHVwZGF0
ZSAqLw0KPiA+ID4gKyAgICAgICB2YWwgfD0gbWFuX3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRf
Z2V0KGRldl9wcml2KTsNCj4gPiA+ICANCj4gPiA+ICAgICAgICAgaWYgKGZ1bGxfdXBkYXRlKSB7
DQo+ID4gPiAgICAgICAgICAgICAgICAgLyoNCj4gPiA+IEBAIC0xNTYzLDcgKzE1ODAsNiBAQCBz
dGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMoc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ID4gICAgICAgICB9IGVsc2Ugew0KPiA+ID4gICAgICAg
ICAgICAgICAgIGRybV9XQVJOX09OKGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2LCBjbGlwLT55
MQ0KPiA+ID4gJSA0IHx8DQo+ID4gPiBjbGlwLT55MiAlIDQpOw0KPiA+ID4gIA0KPiA+ID4gLSAg
ICAgICAgICAgICAgIHZhbCB8PSBQU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJQUxfRlJBTUVfVVBE
QVRFOw0KPiA+ID4gICAgICAgICAgICAgICAgIHZhbCB8PQ0KPiA+ID4gUFNSMl9NQU5fVFJLX0NU
TF9TVV9SRUdJT05fU1RBUlRfQUREUihjbGlwLT55MSAvIDQNCj4gPiA+ICsgMSk7DQo+ID4gPiAg
ICAgICAgICAgICAgICAgdmFsIHw9IFBTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX0VORF9BRERS
KGNsaXAtDQo+ID4gPiA+eTIgLyA0ICsNCj4gPiA+IDEpOw0KPiA+ID4gICAgICAgICB9DQo+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiBpbmRleCAyYjhhMzA4NmVkMzUu
Ljg5YmJiNjRlNTIwZCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4g
PiA+IEBAIC0yMzE2LDYgKzIzMTYsNyBAQA0KPiA+ID4gICNkZWZpbmUgDQo+ID4gPiBBRExQX1BT
UjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFIodmFsKSAgICAgICBSRUdfRklFTERf
UA0KPiA+ID4gUkVQKEFETFBfDQo+ID4gPiBQU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9TVEFS
VF9BRERSX01BU0ssIHZhbCkNCj4gPiA+ICAjZGVmaW5lIA0KPiA+ID4gQURMUF9QU1IyX01BTl9U
UktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUl9NQVNLICAgICAgICAgUkVHX0dFTk1BU0sNCj4gPiA+
ICgxMiwgMCkNCj4gPiA+ICAjZGVmaW5lIA0KPiA+ID4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NV
X1JFR0lPTl9FTkRfQUREUih2YWwpICAgICAgICAgUkVHX0ZJRUxEX1ANCj4gPiA+IFJFUChBRExQ
Xw0KPiA+ID4gUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFJfTUFTSywgdmFsKQ0K
PiA+ID4gKyNkZWZpbmUgDQo+ID4gPiBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfUEFSVElBTF9G
UkFNRV9VUERBVEUgICAgICAgICBSRUdfQklUKDMxKQ0KPiA+ID4gICNkZWZpbmUgDQo+ID4gPiBB
RExQX1BTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZVTExfRlJBTUUgICAgICAgICAgICBSRUdf
QklUKDE0KQ0KPiA+ID4gICNkZWZpbmUgDQo+ID4gPiBBRExQX1BTUjJfTUFOX1RSS19DVExfU0Zf
Q09OVElOVU9TX0ZVTExfRlJBTUUgICAgICAgICBSRUdfQklUKDEzKQ0KPiA+ID4gIA0KDQpCUiwN
Cg0KSm91bmkgSMO2Z2FuZGVyDQo=
