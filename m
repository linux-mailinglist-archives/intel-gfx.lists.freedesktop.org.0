Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDD36F0AAC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 19:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CF210E23C;
	Thu, 27 Apr 2023 17:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C1110E23C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 17:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682615938; x=1714151938;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=c+yoNtDgoRaNuHcR4eUSPSat3nZDxWMvh9QewTUBDUk=;
 b=huJuj1/c2mSyUiUo7i155cYcop18+97DqZWm2KkbfibWqOpVoa0GhuwT
 uNNrBzH6c/KdO4eMmDHXacz2Bz9bO6BkG4HZ2yiXwREEBsVSqncshNpVN
 5KJXWlHGUUrRR6soT1buVMTHXI2aEI2Ub5zJ2/pnRBFZwJg0xqJMsK1Q7
 7h873AKdfnjxwItDE9svNocQUQhDFLX2HnwsMrMYuDp4UFRQrhVIkJg0G
 XTaZvFb6cpuS3tJjLthq/q31coLR+vhvpEsAkf4Ym4R/ACqTZU7jF3QlW
 fMcBa2GLJr6Mn9KffCxcGZjG81zJYCAcQcMG9XgzUJFzH4xOvATQvYWhn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="344960772"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="344960772"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 10:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="783833653"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="783833653"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Apr 2023 10:18:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 10:18:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 10:18:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 10:18:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 10:18:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpKcSmKJleeD3+1wsvpu0/mr5iGT+jbDSsd68oWUfHCNRSzpBO3Ha9WLwyCmGyV0Sb70rRiTGEzv8tEcLZfmR4A05XgLlADfxzf5ybRBT3oYOvCfogWse3lpoOQ7hM1lCJp0vOJAWrHB4NqJB9zgijKN64WOEfTaEY3WIdwlwelwZ2PPoUcgnTI+suP0XaWRWRUV6KAwq46bsFEXE3dsUmmdAw/eIEJxb196Bp0TpuYNdGkVMpWdCEaE7QIDbyHoLPmw/LnBNLeB/5QyFc0QvB4dM9Vo0jjKzVKVlr1ZH6B2J/ZcZfAz8EH8DUQUNsYdyVYJFqW6RljbfBYDfR2dKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+yoNtDgoRaNuHcR4eUSPSat3nZDxWMvh9QewTUBDUk=;
 b=oa2CtztUQ6PsdQ25iaGIvB8iA2XGZ/iM9uEaE+VaNWjV2r0pHJx/OfpVcURYqptSCPh4VfB7498rqrrtYqZBsDpQJ2SP00s16kD7xX9YwQnrsh4essEtPcJpzXvleJZOrWgZWl2mfOw4HWKtYU7XiezEcQc7QSRLwdZbW3ISipGTi/X/HX8mC/YH+NyXhJ0U/ynkQayda/2qO6fMEXcnwMyEpiQmb2+VwH8UU2sDJa55afyxAPqVZb90ozIaWCn9Mnq9F4/y0sTW728psmuCsZc9FCSsiBwDydFlXA1OviMMtTXpgbocXeLA8DSOE/p9YzZ1JOl+TgMdjTYxW3mLRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS7PR11MB7858.namprd11.prod.outlook.com (2603:10b6:8:da::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Thu, 27 Apr 2023 17:18:51 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%6]) with mapi id 15.20.6340.022; Thu, 27 Apr 2023
 17:18:50 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Justen, Jordan L" <jordan.l.justen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>
Thread-Topic: [PATCH v8 6/8] drm/i915/uapi/pxp: Add a GET_PARAM for PXP
Thread-Index: AQHZdBLs73/R+FVB002lLr1tVAGsHq897oAAgABIRgCAATm8AA==
Date: Thu, 27 Apr 2023 17:18:50 +0000
Message-ID: <27483f34611239dc4a73ff832cda9abc9074a88f.camel@intel.com>
References: <20230421053410.1836241-1-alan.previn.teres.alexis@intel.com>
 <20230421053410.1836241-7-alan.previn.teres.alexis@intel.com>
 <82cab075a8330355b3844cad26fcf842b275afb9.camel@intel.com>
 <168254855442.392286.5736829518983136908@jljusten-skl>
In-Reply-To: <168254855442.392286.5736829518983136908@jljusten-skl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS7PR11MB7858:EE_
x-ms-office365-filtering-correlation-id: 0f9a32a6-9fb0-4e21-226b-08db4743782d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BCpr9FOIq9fS9D4yVdkjVWHkdhLdDa68GmEC7cfrhMRcJOVfdhoBDJ8OiD3Rr73uBy+fruO1MIWheevMnLbwZ59Av8CX4J8AIjWU1Us55J8B0Y47iUGt6SEzS62yJAqn2BOyfZih65VcZmM7YzFriNg/6TvnIov820PzDM78XmN0uNQBVJMcWOfJE+nR2/vA0jHWUffGa/Z3TdBK9KjXjGg4WuTeJJ0zKvRgfPHDdpGRloudvyvkQD82Kly0zZFCFOaWjc/RIwIGX1GjjLWj5WYEGZ7KoDY9IQJZ75mLeDUZMKeaqWutWo4aJIeYqjwXPDqVyMYiKga+4HzCAsMe62gUpE/eucJ7MG4cIOMBg80UQ/TnLApIdsUiZl1qgnZS5tApI8OlKPsU3WtnK1qYrZdwJ4MFmYOm3BJcvdZqvpsR3Jw7dk+u0N/2P5kflt1lZtdUWlNXLTJbYQcF1aw0WVjlK91cPHfXboWTFcCvNHYa4bb+U5y1btwCuhJf4nzTWgW4pnNZKYtJhQLQNxFt+lIwowq4EE4cVQR734pmMG9kc+mfKjMMG7ETl3Zq5FTGrOE6LB/GgqewV7X0GE/lUuLsZcFMe6m/K4kox+yn5spEtXFJ+gS7Kmq3X+5XQ28h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(39860400002)(346002)(376002)(451199021)(41300700001)(122000001)(86362001)(38070700005)(36756003)(2906002)(6486002)(83380400001)(2616005)(53546011)(186003)(71200400001)(6506007)(6512007)(26005)(91956017)(76116006)(64756008)(66446008)(66476007)(66556008)(478600001)(66946007)(316002)(110136005)(4326008)(5660300002)(38100700002)(54906003)(8676002)(6636002)(82960400001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ck52VGtZOXgvQmNzemk3aGUxSzJpQzlZYWVNQmloQjVjR2FPd3JGcE1KaWNr?=
 =?utf-8?B?NXl0VWFMVldIUmFxSEVUMkpkbnVUb2NBWjNKa1lPVDRTdFBFMGtISjQ2OHpT?=
 =?utf-8?B?S2hHV2NwS2ZYMzRXcWlJSy9BZkZRSWJwS3ZrZmRRemNsVGd3VW1MMHdqcHhp?=
 =?utf-8?B?QVVyLzBiaU9DOWREd2sxQ1plQ2VPUkJUWGh2aW16MDR0R0NBM3VITnNxcWhy?=
 =?utf-8?B?NVJpWGxFRExYZXF6QkdLRnN1OE1sS0VlZVRrRHF1cU03WEdBYU1ZLzVpc21S?=
 =?utf-8?B?Rzc0c1RBYnJuRytxRXZYSlVIblV1THZuOHc0dTI3N29PYnl5a3BTWHlSaTB1?=
 =?utf-8?B?ODk0SnV3Q2VXb0FTVVl2OWp5NWl0WGp5M21kaXQ3bDRNY2U2b29JMVVkU1A5?=
 =?utf-8?B?TVRCOU1ESitiUWF4RHM1VVl1bzRKbHoycHJ4R2w3dFpySjgzTm91UkJkWmJl?=
 =?utf-8?B?aWxoeDV1WVNjUXBBZm51eGtmMnVHRU5LaUxIYzBjTTZLMEN4azNjdndFZDBG?=
 =?utf-8?B?VnRJdjBPNzlkWVRKNy9GWGdqS09HMVY5bllkaGszeGtVdXFmenA1QmJTb3Zs?=
 =?utf-8?B?S01UTEszUHBwYWlHZ0xOTURtSVNITWUvS3hUN21RdXBwMll5VUxPclMwclNK?=
 =?utf-8?B?SlFqSHkwT0FPUi9ndzh4aW00WVFGeVErTjM5RWsyaUhUeGZqTHMwazJtc0FI?=
 =?utf-8?B?ZUpyZDdpdmhIWnN0WUw3V3FUTHVOOXRxY0hOMUx2WXY2RTFQU012Slg3ZkY5?=
 =?utf-8?B?L3l2TEVYWXhOaWtKU0J6U0YrY2ttUDlpZTFQbFV3OEJZanUrUGxNbjhwSVZp?=
 =?utf-8?B?bGZaYmdMNjFvNWtaVHRmbDJHSkRKbThBME5QQWZscEdzSW1XeXV5dnJtS2Vv?=
 =?utf-8?B?dEg0bWpUT1JmbW82Snp3QytZRzREc2p5NWVBMFlEeEZBNUI2ZDdKRXZkbG9p?=
 =?utf-8?B?V1RYcStEOFlIUUlSZUNnNlZuOTVjK3BRallvZUVvYVhSVGEyeEtFU2EwOUZ5?=
 =?utf-8?B?RERwZ0x0ZEc4QjdtMmovODgzck1OV3NhODBYMTRla3EvcC8wSEJzSU1zMnFF?=
 =?utf-8?B?a3lPZm5FVzQzaTdvVGlNSldtUGdneVc0OXhHZEZwQ0pnTFhCUnlOREFRK1kv?=
 =?utf-8?B?bkhvWVZXSnVueThqalVSQlBwMVRDUmhRVFhCdzNzUm1TUWFnS1g1TkVsZXcw?=
 =?utf-8?B?NXVmMFBINWFGdnlaOWpHR1dOdDhYSnFpVmEySzhsRnZWc1Z5Zm9WSWFaM3Ux?=
 =?utf-8?B?d2N0SHBpb3d6ZUJOMytXQWRDUjhhZU1YUUtBbXZHYkpCME1sc216eDZOVmxw?=
 =?utf-8?B?UzI4RFB2dis3U3ZHOXJ1V2gwWitHUnc5aEJiRkJKdU44VnZ6RnVqYXlQT0lG?=
 =?utf-8?B?ZkpjQjIvdXhSMzAxL2NvOHhUeG90bW5iTWxOVWtPeFpncENUWjQ5WU1ZRHdB?=
 =?utf-8?B?K3BlbDlPNHVZZnB1RWU4cDduRmRBQmpEcXdGTXY3eDhBMjM4NXc2UkI0a3RI?=
 =?utf-8?B?VW5oU2JFQnNMTFMyNjFyK0gxZTVnOHdWbTBaWUJEWTd2T0xJN3dwekZLOU5M?=
 =?utf-8?B?ZjRiV2h4ZS9FQlVoMTlScUFNcTJjUTVVZzFaWDdXelFVaGNoaWZWU0FtLzJ3?=
 =?utf-8?B?RURNUStYeVd1MXFWUjFEeTFIY0RPb0pGTFRMUXJMeDhtQjFiRWQrUjNoSnYr?=
 =?utf-8?B?TFBZcjNyWHlvQWNrZ2ExaXJWQXlKazZLZTJGRUl4dGphbmVmclpUUVRCQUpC?=
 =?utf-8?B?Sjg1bVZOR1dUMzdhR2xhM0J3Nk5tVlJhRVpFQlZxOS9jU1FXMENnU0RUNkNh?=
 =?utf-8?B?K2daK2FQZkJpcTJDcjFTWUJOMS9weU5wbG0yRGtXVVVmTFZSTVRycWM3dGE3?=
 =?utf-8?B?d0taTXVmMEFZODRQRzRtRFNSMm5IVzJvNkJrcDJrSjQwbE1nbVlFNlFQakov?=
 =?utf-8?B?L29iWGU1MCtCanBGclBPLzkvUnRldTJRdTREYS9WVjNSSHMyblhKc1lLbi9Q?=
 =?utf-8?B?K0NQSXQwelE5OGZkTGVSWERSdTM3T21PK05sQ1REbkVMZ2pkOTloeWpOeDh1?=
 =?utf-8?B?bVNiWVJpM3BhYzVQNDNVYzQ4KzNlSE5waktkQm84R1BkK1RwekdHYWdvYVp2?=
 =?utf-8?B?VFpZRFJyVGdaQ29Ya0UxRDI3ZlltWXZYLzFzemJXb21PaGhPY2VwS08wOXVF?=
 =?utf-8?Q?p9bHKtZTO+CR76oa4LsHKPI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <47C06D83B2B17240A36039806AF68D2E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f9a32a6-9fb0-4e21-226b-08db4743782d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 17:18:50.7309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4wKjilPSfxOoDau9gs36mFxWUYZHWvSadmfFm7g8G+g/yg+L3kTP8+D0JStXaE6LNlfD9j2uALjSxk3qU2+Xof8ByI5CwVZL2ZTKSqmugCdWatJvzlKAiE0zEmLQ4T8z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7858
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
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
Cc: "aniel@ffwll.ch" <aniel@ffwll.ch>,
 "ustonli@chromium.org" <ustonli@chromium.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "ri-devel@lists.freedesktop.org" <ri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA0LTI2IGF0IDE1OjM1IC0wNzAwLCBKdXN0ZW4sIEpvcmRhbiBMIHdyb3Rl
Og0KPiBPbiAyMDIzLTA0LTI2IDExOjE3OjE2LCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdy
b3RlOg0KYWxhbjpzbmlwDQoNCj4gDQo+ID4gLSBKb3JkYW4gc3RpbGwgd2FudHMgdGhlIGV4dGVu
c2lvbiBxdWVyeQ0KPiBZZXMsIEkgZG8sIGJ1dCBzbyBmYXIgaXQgZG9lc24ndCBhcHBlYXIgdGhh
dCBhbnkga2VybmVsIGRldnMgdGhpbmsNCj4gaXQncyBhIHJlYXNvbmFibGUgcmVxdWVzdC4NCj4g
DQo+IEFzIEkgcmVhZCB0aHJvdWdoIHlvdXIgZW1haWxzIGFib3V0IHRoaXMgcHhwIHNpdHVhdGlv
biwgaXQgc2VlbXMgbGlrZQ0KPiBhIHNlcGFyYXRlIGlzc3VlLiBXaGVuIEkgZW5jb3VudGVyZWQg
dGhlIDhzIGRlbGF5LCBpdCB3YXMgb24gTVRMLCBhbmQNCj4gYXBwYXJlbnRseSBzb21lIGZpcm13
YXJlIGlzc3VlIG1lYW50IGl0IHdhcyBuZXZlciBnb2luZyB0byB3b3JrLiBTbywgSQ0KPiB0aG91
Z2h0IHRoaXMgd2FzIGEgY2FzZSBvZiBpdCBlaXRoZXIgYmVpbmcgc3VwcG9ydGVkLCBvciBuZXZl
ciBiZWluZw0KPiBzdXBwb3J0ZWQuDQphbGFuOiB0aGlzIG1pZ2h0IGJlIGJlY2F1c2Ugb2YgYW4g
b2xkZXIgcGF0Y2ggdmVyc2lvbiBpbiBpbnRlcm5hbCB0cmVlDQotIHdoaWNoIEknbSB0cnlpbmcg
aGFyZCB0byBmaXggdG8gZm9sbG93IGxhdGVzdCB1cHN0cmVhbSAtIGJ1dCBrZWVwIGdldHRpbmcN
CmRlbGF5cyBhbmQgY29uZmxpY3RzIC0gYnV0IHRoYXRzIHVucmVsYXRlZCB0byB0aGlzIHVwc3Ry
ZWFtIFBPVg0KDQoNCj4gTm93IEknbSBzZWVpbmcgZnJvbSB5b3VyIGVtYWlscyB0aGF0IGluIHNv
bWUgY2FzZXMgaXQgbWlnaHQgYmUNCj4gc3VwcG9ydGVkLCBidXQganVzdCBub3QgcmVhZHkgeWV0
LiBJbiB0aGF0IGNhc2UgYSBzdGF0dXMgd2hpY2ggaXMNCj4gZGlyZWN0bHkgdGllZCB0byBweHAg
c2VlbXMgdmFsdWFibGUuIChCdXQsIHl1Y2ssIGhvdyBkaWQgd2UgZ2V0IGludG8NCj4gdGhpcyBz
aXR1YXRpb24/IDopDQphbGFuOiB0aGFua3MgZm9yIHRoZSBnbyBhaGVhZCBvbiB0aGlzIFBYUCdz
IHVuaXF1ZWx5IGRpZmZlcmVudC1pc3N1ZQ0KKGFuZCBpIG11c3QgYWdyZWUsICd5dWtjeScgc2l0
dWF0aW9uKS4NCg0KSG93IGRpZCB3ZSBnZXQgaGVyZT8gd2UgYXJlIHRyeWluZyB0byBkZWJ1ZyB0
aGlzIC0gaXRzIGludGVyZXN0aW5nIHRvIHNlZQ0KdGhlIHNhbWUga2VybmVsIHdpdGggdGhlIHNh
bWUgY29uZmlncyBtdWNoIGZhc3RlciBvbiBBREwgdnMgTVRMIGJ1dA0KdGhlIE1UTCBjYXNlIGlz
IHN1ZmZlcmluZyBiZWNhdXNlIHRoZSBtZWktaGVjaS1wYXJlbnQgZHJpdmVyIGlzIGdldHRpbmcN
CmxvYWRlZCBtdWNoIGxhdGVyICh3aGljaCBJUyBjb21tb24gdG8gQURMKSAtIHRoaXMgZGVsYXll
ZCBwYXJlbnQgZHJpdmVyDQppcyBjYXVzaW5nIHRoZSBkZWxheSBvbiB0aGUgZ3NjLXByb3h5IGNv
bXBvbmVudCBNVEwuIEZyb20gcGFyZW50IGxvYWQNCnRvIGdzYy1wcm94eSBiaW4raW5pdCBpcyBy
ZWxhdGl2ZWx5IGZhc3QgKH5mZXcgaHVuZHJlZCBtaWxpc2VjcykuIEJ1dCBJDQpiZWxpZXZlIGl0
IHNlZW1zIHRvIG9ubHkgYmUgaGFwcGVubmluZyBvbiBzZWxlY3QgT1Mgc3RhY2tzIChvdXIgQ2hy
b21lT1MNCmZvcmsgaXMgZGVmaW5pdGVseSBzZWVpbmcgdGhpcykuDQoNCg0KPiBDYW4geW91IHRl
bGwgdGhhdCBweHAgaXMgaW4gcHJvZ3Jlc3MsIGJ1dCBub3QgcmVhZHkgeWV0LCBhcyBhIHNlcGFy
YXRlDQo+IHN0YXRlIGZyb20gJ2l0IHdpbGwgbmV2ZXIgd29yayBvbiB0aGlzIHBsYXRmb3JtJz8g
SWYgc28sIG1heWJlIHRoZQ0KPiBzdGF0dXMgY291bGQgcmV0dXJuIHNvbWV0aGluZyBsaWtlOg0K
PiANCj4gMDogSXQncyBuZXZlciBnb2luZyB0byB3b3JrDQo+IDE6IEl0J3MgcmVhZHkgdG8gdXNl
DQo+IDI6IEl0J3Mgc3RhcnRpbmcgYW5kIHNob3VsZCB3b3JrIHNvb24NCj4gDQo+IEkgY291bGQg
c2VlIGFuIGFyZ3VtZW50IGZvciB0cmVhdGluZyB0aGF0IGFzIGEgY2FzZSB3aGVyZSB3ZSBjb3Vs
ZA0KPiBzdGlsbCBhZHZlcnRpc2UgcHJvdGVjdGVkIGNvbnRlbnQgc3VwcG9ydCwgYnV0IGlmIHdl
IHRyeSB0byB1c2UgaXQgd2UNCj4gbWlnaHQgYmUgaW4gZm9yIGEgbmFzdHkgZGVsYXkuDQo+IA0K
YWxhbjogSUlSQyBMaW9uZWwgc2VlbWVkIG9rYXkgd2l0aCBhbnkgcGVybXV0YXRpb24gdGhhdCB3
b3VsZCBhbGxvdyBpdCB0byBub3QNCmdldCBibG9ja2VkLiBEYW5pZWxlIGRpZCBhc2sgZm9yIHNv
bWV0aGluZyBzaW1pbGlhciB0byB3aGF0IHUgbWVudGlvbmVkIGFib3ZlDQpidXQgaGUgc2FpZCB0
aGF0IGlzIG5vbi1ibG9ja2luZy4gQnV0IHNpbmNlIGJvdGggeW91IEFORCBEYW5pZWxlIGhhdmUg
bWVudGlvbmVkDQp0aGUgc2FtZSB0aGluZywgaSBzaGFsbCByZS1yZXYgdGhpcyBhbmQgc2VuZCB0
aGF0IGNoYW5nZSBvdXQgdG9kYXkuDQpJIG5vdGljZSBtb3N0IEdFVF9QQVJBTVMgdXNlIC1FTk9E
RVYgZm9yICJuZXZlciBnb25uYSB3b3JrIiBzbyBJIHdpbGwgc3RpY2sgd2l0aCB0aGF0Lg0KYnV0
IDEgPSByZWFkeSB0byB1c2UgYW5kIDIgPSBzdGFydGluZyBhbmQgc2hvdWxkIHdvcmsgc291bmRz
IGdvb2QuIHNvICcwJyB3aWxsIG5ldmVyDQpiZSByZXR1cm5lZCAtIHdlIGp1c3QgbG9vayBmb3Ig
YSBwb3NpdGl2ZSB2YWx1ZSAoZnJvbSB1c2VyIHNwYWNlKS4gSSB3aWxsIGFsc28NCm1ha2UgYSBQ
UiBmb3IgbWVzYSBzaWRlIGFzIHNvb24gYXMgaSBnZXQgaXQgdGVzdGVkLiB0aGFua3MgZm9yIHJl
dmlld2luZyBidHcuDQoNCmFsYW46c25pcA0KDQo=
