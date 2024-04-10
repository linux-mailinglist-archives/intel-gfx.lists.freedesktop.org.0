Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D048F89EBCC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 09:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2110810E57B;
	Wed, 10 Apr 2024 07:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f6Dachzc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD19F10E57B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 07:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712733851; x=1744269851;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zhKFvTshy5L2VRcEdG/js8Vrm0wDTKldzoGaSvYBCZw=;
 b=f6Dachzci3w5+MMB4dPWNEo32zySJ3AgcC4UciLQeiqvQMcHmK2sON+2
 Jj/Ya9XRPVVSc+uyC7YMrrfJ9x4TzEjw09ANIEWxeNwYk71nE4RAXuZGl
 zxLW4/QM3Rs7g0pla/BKiBZElNJPGW038yxtP4Lm09PvThbPQefzNwbJ7
 JpzkiyrJflYHqK0t4y9mdPDEFeqhfJCnCaDxTuDgo4TAK2w/XiLwSytDR
 llLRF6lxQcuXDrWbcT4jHga4qs85QCQ1tGQifg3TAzcwSLKdiOMUFA6+3
 0k3tn9ZvJPWJvHHQlSvJxajV0R/hbc3u6DVvNdndsy6VVkNR/o7Wj2EJB w==;
X-CSE-ConnectionGUID: rxFX77+gSViOOMtJWwsQyg==
X-CSE-MsgGUID: 66WC8pEwRdWSZQsTwKFzxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7935417"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7935417"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 00:24:10 -0700
X-CSE-ConnectionGUID: SHB1hqsdSieC+tLsVeQIdg==
X-CSE-MsgGUID: zfypFqMtTlGM/YgPr5mV+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20437189"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 00:24:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 00:24:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 00:24:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 00:24:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 00:24:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aOEiWf2zbx9mpgyPfSkD62iowU9kEaDMttpsoRyGUA5XO1iWJhDkyTV/fG4V974gfTD8ijcMorLDLvUR1uySztrLEFYOlydi3XYs7FVjw+NIlxWsYXiKrEoAo5BLm3ZWWZvqnhhbeNBfKgZJ9CARUNxq9RgS3+Khrp53rf8tJjTjZQwhKvDS24NNMDTXOUIaa9N2YJ3WB/cYBlJn6WnyxnxSpipr2bGeBFO2xOtfm+2nueSlnrE1giGIF57OGUucoRQcSzaGuGG3riTp1eV6N9j0Zlh5fa8zOkSgltzxAvyqxRMr+J+QFJ5w+9XOpBFcaHkb8dx2GiUQFiO2gQcrkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zhKFvTshy5L2VRcEdG/js8Vrm0wDTKldzoGaSvYBCZw=;
 b=OzcuMyrewwRemK3O2ZNi+54vcozQ40mrwE0lK/x+aQTImFcNMI7Xdan8Ia5XbpuKjFQmTr26mLiN0Uu0d6y63JNWJvAjn3C+PrBIYh4Um1V5k8tDkf6756fXApVlzZD7w4wBMIukuRvFFRzeHoFTsY2cRr1owqiV2j1qIkXW0HfYS1btbBxfF15KV0N0G4VTHKeKQtDfrf9q9+hCvZwnzWrIT5ulrE0fsx77xfVRxL5rdnt7Md+Lk5DZPGzeYJcATwDwgmtBel7GHkMPvBZnkhqUp+HyTQya04HSPEjd22hp35G4XNj521D4R+79IDRKudv2mczRoLHL10pn6pqX6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4848.namprd11.prod.outlook.com (2603:10b6:a03:2af::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.39; Wed, 10 Apr 2024 07:24:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 07:24:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHagMyo7wCwT/Bmf0W7FJeLKxv4XbFhLomA
Date: Wed, 10 Apr 2024 07:24:07 +0000
Message-ID: <b425ba4a833691fefdb70a7ac7d4bdb9bcf75f41.camel@intel.com>
References: <20240328044354.1871391-1-animesh.manna@intel.com>
In-Reply-To: <20240328044354.1871391-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4848:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D64XF29/AosYC1Ch0+s6lEOH4iJPNrOuG5RqdRnIsr80H4S6bYRTweiRdMc67FR0DoECTqwfpT0+jiAflIjUjHiJxvm9viSZJw3WldB3QgNttty8FWrll59awLusUYTmgBD+RC2DiIHpPDTFBwnd9rxGc+WHdYJZm7DzUzHU6m5cFe7VoCj6Rq6z+lRJtvLZlUGYX1UzXpiMKk7eHFfH5BzOBlFan8sQCjio2dDuYj+oQH6ddxwk4JkenXCG2DqRYkJiyZSyt3FMs/Z2naSR7HMAc2Sis7oERkEp1wKJt6vSW7pu+H7EsDVH99vv1yXEsVYClOvWBRSCAlKM3uyYwWn6lW6wKc+5+v5HJ+FpQY1eUbPXD/GXkNkwMy4s+yb2ETkWlmgWCGgLZ7Wu64DgsX5dMbA9C/vzsJac3KXHWVAF4OtWtzNf+79R9/efhv2kATC/kVVkLfPh/ShDgaK0oUs7NgiSOia1exEeL3wZ6kfL6MhVcKn8pBP4fM2nUcZZIdvUUh0RbgJZOiix1tJbmpjLJuw0b6W5wpI38jh9ISm7JHoQS/V2zZ/AnkaXNPwDc2JVZBnHl1u7R/ePwe1w9cYC8GJYhNRycXZOYQSzQwm+zrO5XMAyy3FvkG8HRqQJwB0XONndTIX2Cq7WtJZ/9fF62ZlOVuQAS9jPYjfN+nE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0VHT0dWdWlJeWVzRXphcDQ0YmhEamdiTnNsbG1GZU81b2doakN6ZXVONm53?=
 =?utf-8?B?MURjalJ4WVgzOWNRSWsydHhLLzZoVHFLK2ZpYkpjLzd2UUVVR1NENzFLRDlJ?=
 =?utf-8?B?WUNQRlJKS3B3dytFaWpkREJIMVY0SG54c0dCMmluY0w0VnM1MjVBbFJBb2NL?=
 =?utf-8?B?SXdTaVhWTHdSOWJUMGs4VmR5ZzVsOWlVbjFBUkJzYWFadkNkSWNoRXlEVXp0?=
 =?utf-8?B?amozRHFyc1Y0L0FoV2J4MHJGVy8wdnZKaUhDejBXK01BSXNrZ2tsUE8yazZN?=
 =?utf-8?B?MnNFNHoxY3pTZm5vazIwaFpKS0s2aUlRMjlHQzgrTUVCcTMwT2F6V0NyVDV4?=
 =?utf-8?B?RTRzcFJETkpGbjdkQ2hqT3dFbS9RSFVCc1ZJcmhoNG9GOUgzUlRBMHFaN0d4?=
 =?utf-8?B?eUIwNExzOGxoR3RkWk81MHZQR2J2NldSeGE0WXN5SFNrejUvVVlKUkEzY29a?=
 =?utf-8?B?NDRkanhndzAwekd0eHovYTJzNlBOKzJIdzhmNk5paEFlMHpBdDMwbVhzdnlp?=
 =?utf-8?B?dk1RRHlDRU82akFJNmdvYXlITkNsbE8vZ2NCVEVVN0owTGFsR016MG1XMzVj?=
 =?utf-8?B?WERpdEcyL0s0dGJySzI2RFpuOWc5ODUvRXg0QmdCZTZjSUF0WFE1WkZtdHZS?=
 =?utf-8?B?RWZyVklWQlVNNmdPdzlWdGM3Yi81Z2ZyOHRSS3hGOUVjb0RRYUJvbE1WRkcw?=
 =?utf-8?B?ZTd4RXBwM3ZBTUNaTFNkZUZlVGg2cjFmancveWhSbytCUHV0NlhXR3BtNUtD?=
 =?utf-8?B?b2x6RWpDUU1GczNNc2dSWm5qc2hXWUFhRzJtY1lxeFliSDRnclQ3UEdnUmgv?=
 =?utf-8?B?VUNOMmhHWFNpRGl0L0E2WlBSUGk2NThOS0Q2MysvalJESEVnUUZxRTJxcWI1?=
 =?utf-8?B?aDJOM05TMVREb1ZJTkYvUHUxbUVSY1JKQlY2YVg5MXk2SmIwRXUvVmxxTDBC?=
 =?utf-8?B?VVd0SncwWkRlcHFmWW90Znp6Y3QyVW9QaUMvQTl0cVRmcHJzekpzd2FRN2ZO?=
 =?utf-8?B?b0l2aGdFTS95K2tSdzBFdEJldGhuL2F6U3JDOEt6NEFVMmsyTEhpYXlwbHF2?=
 =?utf-8?B?WEpNem9YVm9MV24vYnAyMW4vMTByV0NuNURaTnE4UXJKYUI5eHMwRzIzb0pQ?=
 =?utf-8?B?VmRUbENZNDlwSk9uWkFNSHQzc1JLeXptRkxtbVdwRFE5ajYxYko5MWJINE1v?=
 =?utf-8?B?WEdNcjRlRTZIY0hrVGRjQ0k1NHNGWFEyWHFRTFNnekRvZmFOK00vbVI4SENE?=
 =?utf-8?B?UUVheU9sMFRCcG1rM2RHUW1sajZoT3Y5bHB6dFlmR0VXaVMrSXA0eVczbGFq?=
 =?utf-8?B?THdMbC9NVTVCeElLNzMvNzBhdndSTVBIR3ZUaWVRcEVqVE5YL2xNMUNTZWIy?=
 =?utf-8?B?ZFUyVG5qK1ZMdkx2cXk0TVZlRXNhb05hcU1kR0RHWXFxa1JpSENlQkg5MUNi?=
 =?utf-8?B?ZlIreUlkWmVCVWwyTGFzcURSSUJ6dHhhb1pXbUo0RFZLUjhkZ3RyWFVDRWlK?=
 =?utf-8?B?cXpsMmg0Y1lQY1JKQUcyeEMwOW9FcDJPSkVHOUZuWVdUZjlrSVh2VWdiMzJi?=
 =?utf-8?B?bVZMUmVHbldBbEF3c1hCR0ppYXJnOEh3NzlhSENaZ093UUVLcWg1R2hLVHlI?=
 =?utf-8?B?VGxZQ1BlRVpWMmVKUEdKZ1FBUkxyRDZFZ08zcGhndTA0ek5xVkIzWlJSbjNK?=
 =?utf-8?B?dEcyeVRGUEZsTHNRYWtrR2x3amJKSVhiZW81NDdKckQvZi9KaFg3UlN1WW5w?=
 =?utf-8?B?YnV2SzZ6SDBDUE1PQmJkZ2tYbkMwWStkTzZHaU1YTlFjbE1XRitFSjh6cXJl?=
 =?utf-8?B?OXpwV3ZsYnRtMHJjOU94ZVRWMVFPdkpWTmR2L0IwdUFwL0pLUXpjMWROZE1J?=
 =?utf-8?B?N0JEN0Fja3VXTVcva0Y5UGMrWkR0cVRwNnFmdk1WRHByWlArc3hTaysyWVZS?=
 =?utf-8?B?M3U2YWlXdVpoaEVic3dQdk5xUmVZRXhCelM1REpyeTRJdy9KTmxsQXdRamlz?=
 =?utf-8?B?ZFkyYWtDU3REaXZUY0FoSXlHWU5Lcm5abmpPbzNJL1lwaU5nM1o1RmM2c1Bs?=
 =?utf-8?B?bmFOM0dqRlhWQkl1bWp0N0tzbk41MExPN3JtVmpNWEVGRW1SVUtVTkViR0Y2?=
 =?utf-8?B?K2gwVldSMjBoVUg2MzZpOVFGTTE1RFM4UWNTMEc2MWd0dFo0b1JjaE9ETjJs?=
 =?utf-8?B?YlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6A46F8F422CA2D4283C67535D128902A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fef778b8-dc68-431c-fcae-08dc592f3543
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2024 07:24:07.1280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4SwihZ+++FVcukQKQIMFSmTrpXn0BX0a9sSzf4mccDWSFZmkMFUgOk2JccNWIrUWEE7Qc9yc7N8U/ECws9WP3NDjVpqoICZqhj1XtiNN1E8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4848
X-OriginatorOrg: intel.com
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

T24gVGh1LCAyMDI0LTAzLTI4IGF0IDEwOjEzICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBQYW5lbCBSZXBsYXkgVlNDIFNEUCBub3QgZ2V0dGluZyBzZW50IHdoZW4gVlJSIGlzIGVuYWJs
ZWQNCj4gYW5kIFcxIGFuZCBXMiBhcmUgMC4gU28gUHJvZ3JhbSBTZXQgQ29udGV4dCBMYXRlbmN5
IGluDQo+IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kgcmVnaXN0ZXIgdG8gYXQgbGVhc3QgYSB2
YWx1ZSBvZiAxLg0KPiANCj4gSFNEOiAxNDAxNTQwNjExOQ0KPiANCj4gdjE6IEluaXRpYWwgdmVy
c2lvbi4NCj4gdjI6IFVwZGF0ZSB0aW1pbmdzIHN0b3JlZCBpbiBhZGp1c3RlZF9tb2RlIHN0cnVj
dC4gW1ZpbGxlXQ0KPiB2MzogQWRkIFdBIGluIGNvbXB1dGVfY29uZmlnKCkuIFtWaWxsZV0NCj4g
djQ6DQo+IC0gQWRkIERJU1BMQVlfVkVSKCkgY2hlY2sgYW5kIGltcHJvdmUgY29kZSBjb21tZW50
LiBbUm9kcmlnb10NCj4gLSBJbnRyb2R1Y2UgY2VudHJhbGl6ZWQgaW50ZWxfY3J0Y192Ymxhbmtf
ZGVsYXkoKS4gW1ZpbGxlXQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTcgKysrKysrKysrKysrKysrKysNCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8wqAgMSArDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgIHzCoCA0ICsrKysNCj4g
wqAzIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDAwYWM2NWExNDAy
OS4uN2Y1YzQyYTE0MTk2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMzg0MCw2ICszODQwLDIzIEBAIGJvb2wgaW50ZWxfY3J0
Y19nZXRfcGlwZV9jb25maWcoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
DQo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsNCj4gwqB9DQo+IMKgDQo+ICt2b2lkIGlu
dGVsX2NydGNfdmJsYW5rX2RlbGF5KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQ0KPiArew0KPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0
ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gKw0KPiArwqDC
oMKgwqDCoMKgwqAvKg0KPiArwqDCoMKgwqDCoMKgwqAgKiB3YV8xNDAxNTQwMTU5NiBmb3IgZGlz
cGxheSB2ZXJzaW9ucyA+PSAxMy4NCj4gK8KgwqDCoMKgwqDCoMKgICogUHJvZ3JhbSBTZXQgQ29u
dGV4dCBMYXRlbmN5IGluIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kNCj4gcmVnaXN0ZXINCj4g
K8KgwqDCoMKgwqDCoMKgICogdG8gYXQgbGVhc3QgYSB2YWx1ZSBvZiAxIHdoZW4gUGFuZWwgUmVw
bGF5IGlzIGVuYWJsZWQgd2l0aA0KPiBWUlIuDQo+ICvCoMKgwqDCoMKgwqDCoCAqIFZhbHVlIGZv
ciBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZIGlzIGNhbGN1bGF0ZWQgYnkNCj4gc3Vic3RyYWN0
aW5nDQo+ICvCoMKgwqDCoMKgwqDCoCAqIGNydGNfdmRpc3BsYXkgZnJvbSBjcnRjX3ZibGFua19z
dGFydCwgc28gaW5jcmVtZW50aW5nDQo+IGNydGNfdmJsYW5rX3N0YXJ0DQo+ICvCoMKgwqDCoMKg
wqDCoCAqIGJ5IDEgaWYgYm90aCBhcmUgZXF1YWwuDQo+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiAr
wqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSAmJiBjcnRjX3N0YXRlLT5o
YXNfcGFuZWxfcmVwbGF5ICYmDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBhZGp1c3RlZF9tb2Rl
LT5jcnRjX3ZibGFua19zdGFydCA9PSBhZGp1c3RlZF9tb2RlLQ0KPiA+Y3J0Y192ZGlzcGxheSkN
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkanVzdGVkX21vZGUtPmNydGNfdmJs
YW5rX3N0YXJ0ICs9IDE7DQo+ICt9DQo+ICsNCg0KRG8geW91IGhhdmUgc29tZSBzcGVjaWZpYyBy
ZWFzb24gdG8gaGF2ZSB0aGlzIGluIGludGVsX2Rpc3BsYXkuYz8gSG93DQphYm91dCBtb3ZlIGl0
IHRvIGludGVsX3Bzci5jPyBZb3UgY291bGQgYWxzbyB1c2UgbW9yZSBkZXNjcmlwdGl2ZSBuYW1l
Lg0KQ3VycmVudCBuYW1lIHNvbWVob3cgbWFkZSBtZSB0aGluayBpdCBpcyBzb21lIGdlbmVyaWMg
ZnVuY3Rpb24gdG8NCmNhbGN1bGF0ZSB2YmxhbmsgZGVsYXkuIEl0IGlzIGFjdHVhbGx5IG9ubHkg
Zm9yIHRoaXMgd29ya2Fyb3VuZC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KIA0KDQo+IMKg
aW50IGludGVsX2RvdGNsb2NrX2NhbGN1bGF0ZShpbnQgbGlua19mcmVxLA0KPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1
Y3QgaW50ZWxfbGlua19tX24gKm1fbikNCj4gwqB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+IGluZGV4IGY0YTA3NzNmMGZjYS4uMjMzMTVl
Y2VkNDFlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaA0KPiBAQCAtNDEzLDYgKzQxMyw3IEBAIGJvb2wgaW50ZWxfY3J0Y19pc19iaWdqb2lu
ZXJfbWFzdGVyKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsN
Cj4gwqB1OCBpbnRlbF9jcnRjX2JpZ2pvaW5lcl9zbGF2ZV9waXBlcyhjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKgc3RydWN0IGludGVsX2NydGMgKmlu
dGVsX21hc3Rlcl9jcnRjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0
YXRlKTsNCj4gwqBib29sIGludGVsX2NydGNfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gK3ZvaWQgaW50ZWxfY3J0Y192YmxhbmtfZGVs
YXkoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiDCoGJvb2wgaW50ZWxf
cGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3Vy
cmVudF9jb25maWcsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqcGlw
ZV9jb25maWcsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBib29sIGZhc3RzZXQpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNzJjYWRhZDA5ZGI1Li5mY2NlZjU0MzRlOWMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAt
MTQzMCw2ICsxNDMwLDEwIEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIShjcnRjX3N0YXRl
LT5oYXNfcGFuZWxfcmVwbGF5IHx8IGNydGNfc3RhdGUtPmhhc19wc3IpKQ0KPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gwqANCj4gK8KgwqDCoMKgwqDCoMKgLyog
d2FfMTQwMTU0MDE1OTY6IGRpc3BsYXkgdmVyc2lvbnMgMTMsIDE0ICovDQo+ICvCoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTMpDQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlbF9jcnRjX3ZibGFua19kZWxheShjcnRjX3N0YXRlKTsNCj4gKw0K
PiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3BzcjIgPSBpbnRlbF9wc3IyX2NvbmZp
Z192YWxpZChpbnRlbF9kcCwNCj4gY3J0Y19zdGF0ZSk7DQo+IMKgfQ0KPiDCoA0KDQo=
