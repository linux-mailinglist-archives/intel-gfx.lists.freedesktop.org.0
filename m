Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4647DA5D66E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 07:41:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DFAE10E6DD;
	Wed, 12 Mar 2025 06:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfdikeKf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5F710E6DB;
 Wed, 12 Mar 2025 06:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741761661; x=1773297661;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BHujr3OS5Ex6n5pmNzpIIWi3eiYnMVmkY6FtT8SXWr0=;
 b=HfdikeKfhKO7+FYnMqNiDvmW5frMovIrljOnbxhYhZCksAx2+zbCUmJU
 tEZVJj2FTdZdSw7Rn8V+GSQekhuN5H5ZkLHe7zGZSpeGzJEsDCnL70J8Y
 Aw3I3Iv0vBGu5w42plRAXmGb+9sO99s8pv3asLiVSU52f8B9iGNDMsIXY
 BJwzLpQj4zKlWdKsirIVbKf7vD3bcqthuIq0UR57CUDXBfQaBA43bPtc0
 mTWWjsJrK/wpKyckU/DDI5lv4SGJT43KThe8q8WDOxvJMjj8CsWPDztjl
 KExPR2ocz1krxzlmZQ78BFNzg+z83XmdYnYZ2uE6CRWLQFR3duiitW1J3 Q==;
X-CSE-ConnectionGUID: lVpnKkSdSbK0xCyezqLe3A==
X-CSE-MsgGUID: YsN/0h8lT3uBYTrYN2JWUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42681319"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42681319"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:39:47 -0700
X-CSE-ConnectionGUID: BmHuA9J7R0eVjUqcezoSoA==
X-CSE-MsgGUID: cdOV0EIrS4uRYg7lp4KN0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="121048937"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:39:38 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 11 Mar 2025 23:39:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 23:39:37 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 23:39:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SEzKOXKS61DFeH90cVPmPiTNYXany/GvRcfBN3NtUbR8quXZ4UtjyNAYKcrxMVEYN3IaKpiAw+SsXJ3DNIvswoFN/Fb3kJ8SAAXAxP/9PFj0usQZzmTRJfyPW6q1wghHy0AuiB+eKAxnlmiBpf7P50yCtscGWkHwiFMfVC64EFO3dMXlhqNKHGlHCliD8Nh3f63R/KGHJQlGKIHKZw0mAxJq/CjZLYXXnNbraWY5P6ozVEPsm8lwziqBOrOAJZtzeL3p/lCrsabHOu/XDJ9FMpBb9A8nSuuB7Q4Hz0be9Lm2NEzQf0qPUttPaFIpfdE6b4XqL8CDhomHymZTDybZ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ji7zHKsLKGPXuw7qZ8QrZwEbAP4Da1Bv3E30zDl8j9g=;
 b=PdT/9ai7cxpc0vjgZRNHS/men1Oeok0S5gEoar1fHW1b2kEBuuaTpymUJUiEvdADynub0jUzVWbKVM+dYEwXP35+03DYaoKLIQq1RG57VcMhGTJUBaL4fCuzaviNLff/NHipGwq2+Aa1kaK37AP3kwJagBUGVA6Ron6UyYRUvj4r0kBYf4b1AbfhA8d7x0y/1Y6KVZ6NsFzudLZSENlMTQ/Mc7poaPV5siBbG4E5KhAFCFGk529rduvjMrrWSir5Jn0latiBCZpHDzinKLdZjja08jkoC3T6DC+u7uISmyqiI0K3zkDatwLDlwD/r8KjtXxJf/xkeeORja28L8+NpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB4808.namprd11.prod.outlook.com (2603:10b6:510:39::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 06:39:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 06:39:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 9/9] drm/i915/display: rename I915_HAS_HOTPLUG() to
 HAS_HOTPLUG
Thread-Topic: [PATCH 9/9] drm/i915/display: rename I915_HAS_HOTPLUG() to
 HAS_HOTPLUG
Thread-Index: AQHbkq+zT8ob1GtMuUKtjGqXRc4N5bNvDM0A
Date: Wed, 12 Mar 2025 06:39:29 +0000
Message-ID: <DM4PR11MB63605ADC3A1F94B84DB26C45F4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <4fded8a5dcdff65cd39af5db6e7b4b587dcd9e46.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <4fded8a5dcdff65cd39af5db6e7b4b587dcd9e46.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB4808:EE_
x-ms-office365-filtering-correlation-id: b0ebc238-4205-4655-d122-08dd6130a439
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?R/xUAfbpC+OtTyXbrO2os+Ey54UDYaXpCU2vbHdVo54I0OEjDgfrZQgaxqpk?=
 =?us-ascii?Q?WmqudxKpElzZ+iPwVmyT3aNtwfTQnaMw+E3vgc5vT9jchkmwQ30OZ0EBQh6b?=
 =?us-ascii?Q?AMctpa/knCBaYVH830HF4Fm3MTKAm8AAJroa0U7K5NTPCFxtnOxEzCc4Q7+P?=
 =?us-ascii?Q?QLJIw0SO3ZihEParyEaga4IA6rn1zuN4Rq8vQQfwiW/UyqOVR686HgABRElM?=
 =?us-ascii?Q?p2E8bwv3Z4TLUi6kE3UmC+/ENIO17Bi0H+yHCPED0PZa6pdpgKhovXA+Lass?=
 =?us-ascii?Q?6zvR4bwiZpJCJNQxnXat/j4zSUxs2WZcqIrqT9MBK9uIdcydYEVJm4fPorRX?=
 =?us-ascii?Q?Svm9NwZm9KqyqOGZI6DIDAiGVV2el11b+5NTCE+cSJ4wXyj7vs19e8opsijT?=
 =?us-ascii?Q?gdR53Y8eQBhz9FuA3ocC6pA6oOWFDmwAcnskjGVawS2pNxth4YOhOHMCFjqr?=
 =?us-ascii?Q?1mzIl1cc20EDeCsu59VHS7inDRYPvhRy962c5M1KBDrZbfZYylmb+80Ac0Xq?=
 =?us-ascii?Q?d2OjNyugwxhKqVRR+7worzGrPiAFmXTyQvLZ35O0pHDd07zMHtwyq69EijaX?=
 =?us-ascii?Q?y6+2ktwmImP56eHpdbQAhFcn+IZ4E1DEzMxCuIB6FD5+K3Pz8GiDKNRrg12S?=
 =?us-ascii?Q?1Ulp2jV4N33QEsHr8BrdpjkffB//dH4IPo/I3Q/SkY88weSNMpVfyjtUwTjQ?=
 =?us-ascii?Q?MiSxwkFSkq0QEui1ajIonIHmzWeSoQxan9LTYUNJmaBtUVvI2HZD0y21Xwsj?=
 =?us-ascii?Q?QYwyovJ+pFBNtgghWBLd18u7lCj8rrTulvcWYj5Pw66+ztXjijWNUKw9c/0/?=
 =?us-ascii?Q?KGU7+zJylhkZAvHmlthq8nxyUX1RRGlvNGhMTNWldq7sJAreQSHbyiW5cvyY?=
 =?us-ascii?Q?zjhtGqzCG2GPO/qwaBV6kaxD3KdQ/pf2ADtly7ZfzY2n2V2/BjOs/Z9ip7Rz?=
 =?us-ascii?Q?2xY11UGqonYE8YHdesSFWX4vyzWw1exLnaBfXJ1GePpOf9iaWYQ8nbXjrTTQ?=
 =?us-ascii?Q?V3iFtB5mPaBFwhnHPLjEqTOzahkV3FEj0jsl0GrI6o7anv1hyP6Mfizmo40Z?=
 =?us-ascii?Q?sNcXDROtsYKY6woFA//7l/eBnZ1eK+ZocJYgBTUYShM6BA5HIaeQGpZnmM1m?=
 =?us-ascii?Q?bUsx8gWKWTuR0M62u9Dvs75lIzvj+NWC3rPDnVzQgrTYDcBFJJd8Ii2L0mix?=
 =?us-ascii?Q?Tj58Ixqyu8Zuiu3XsjTLI/BgGALFBIKFZMt2dc9n2Qd/1jaQyeHNrKgDKPKM?=
 =?us-ascii?Q?RMAajWjfBwxPlvMdj6wVtH8zatpKBuF05IFpLN+tiNcxVqJaz2WjSQbAn9yU?=
 =?us-ascii?Q?zc2CfU8W9l9cL3tJiPnxhV21IPEFsVWLl9ei+/GcCo/4vhMQ2I+hInGw+DYz?=
 =?us-ascii?Q?lYtXGrr184c5EmuJl8ArZ63Au9umPwDqxL/BsyKhmeHG8qUv69Jh2RaSpppn?=
 =?us-ascii?Q?stuo5yFBjq7TQU8/kp5z6XMo9QRNhSUi?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yz7xRKDPYwHSmb+jlj9MxbsbuzHYYmNheT3rZ3LYBjaIOLmwAWm1eu5k0Ri5?=
 =?us-ascii?Q?g6VihSNPavRbdWSMkil1Qzz4+kXK9+lTH/NYb8YURdLSb0wk1v5ZrTpNCknI?=
 =?us-ascii?Q?uztqWJUPQoAXcpjs1Dq7HOmU7k8aqVgqRRF2pGUWZMuIhIQhVfcdXBmlxDn9?=
 =?us-ascii?Q?mWfpSF4O1xv5weZgarJUoxuIufTM/r+nbq5Jsp3fl5E/V5vzGRyLY84HFWx0?=
 =?us-ascii?Q?WR4j3vdjDI0638QMdNIe4IOd+N9ovGi4HKaBIj2q9JWcslG7zEocz6I5JQbw?=
 =?us-ascii?Q?LumeQ6D44G5EKO15JjrfRDoHiTJTNcRmw+uk70zV532lWKJct3as2ZwlAyz+?=
 =?us-ascii?Q?fYq/eDKcoLqeXXwyQjADkj6oYuDLbkHJx7eFHOwcQZCtokcHY5iIwGbvG+Ft?=
 =?us-ascii?Q?CL0WzskUWaouWUkPQ2OrAgMccAUN6YpXc2wNFOzOGYVChigcxsmxR4hA0dIr?=
 =?us-ascii?Q?aAgLEd1Be+CweUD69mMMezUC41QtlEwy6A/Nideuf1EGyqmjSqg9IkYUD3Il?=
 =?us-ascii?Q?VyuvnMrLGn2NAHv/4brCIerhlreXXuTGhJgD+uT/gNp+rqGgjCvr00iz2zGX?=
 =?us-ascii?Q?Q76jpob+03hWiJKP6rq4Im8N0W1dgpYfAO1vW8s3FYktEToDWxv2fdx+Pj/Y?=
 =?us-ascii?Q?rsJeHbIT5g4//BgngI9FLTsa5LaeLYAhyy1Ry9DicM2oUkdq7hFVQyYyNYP4?=
 =?us-ascii?Q?99eRBhh1uYe5inLaOiH8Fsn5V3O24OWXEqBbuwEg4HgU53egjfPeZs+CsT/9?=
 =?us-ascii?Q?tb8rQPVMg2rlGIgVWZquOyEIBcdfcn+UriwIkV2ZAiYaUUCFq8O0SLiQWYkO?=
 =?us-ascii?Q?qveGDbHGjejGPqw53W9Z6iBRs19GWSIc4kq/Ky0f4zb1QJt7V6DLsN8L+Xq7?=
 =?us-ascii?Q?HhIenhh3UE0WqUepfKdNFH96iA62u6o258AUJjBDUAVcfQfyTPV29MHkBDix?=
 =?us-ascii?Q?2VVNFaovy45kwMq9RnFWQZEn+tmBNQtnzviK/0nBmotVBlW3cwD5H215uzq+?=
 =?us-ascii?Q?qdi2ev5+jvZ7fAab2oms9JOzem7G+lDjoxO183vyZHTJ97P0si3euWnwEXDi?=
 =?us-ascii?Q?+6RmNDiaZMblBT2cejkE3Ab9EyqnHjDmQykHGOXk0NAsbCqW8XiDsktqWtO7?=
 =?us-ascii?Q?Mq3uMlMCLHrM3r2u5kkph97xBBIpgBwSWeHvyGihKENgArWr770aQYGPPMg+?=
 =?us-ascii?Q?mE7kIqeg2LyoXXuiAPxVM7Xk0oLWSWrX4LpJ8iNdDMPJDssdaIR+3TwbWMmo?=
 =?us-ascii?Q?UEGLHSdvATJFt6yAWbCEilCwpXB1Btg/AZcP3OF3mBggVwWbHv54zDWg3e2B?=
 =?us-ascii?Q?rbzwljljT4NX+kqRKRrbN8HxfT5zVZ5fmg6P1xFFiR+d21r79PtTStKJsPC8?=
 =?us-ascii?Q?9+ub6RRHJ25Gvydtz6ONQNfghgOObNjjuKQ2fhR/mOnVJEKd0QaMgc7hPKNA?=
 =?us-ascii?Q?69UgXF5KyZDOtI6614TxQxW6kb3dteWvu1uONNR5MCkokiaKtwSdWV5Kj3ve?=
 =?us-ascii?Q?5qGpMaAT4MUO2OAv17BaZO6pkxiu6YUd7M932Nd145U8dD+NmMAwV/1NE0KK?=
 =?us-ascii?Q?Uth3Dd/pdwT9h4BbvLUM7qyJLSKhb3weagt5ruHZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0ebc238-4205-4655-d122-08dd6130a439
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 06:39:29.7692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tDfy8ZOvYdiaVkjFUjOj7Negq6OxeencKiOcgVyFnAhBxHBhr8ScXVKyBkHntjwKQfPLOuWpvTOWqaZ5N8fWzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4808
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



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 9/9] drm/i915/display: rename I915_HAS_HOTPLUG() to
> HAS_HOTPLUG
>=20
> Most of the other display feature check macros are just HAS_<something>. =
Follow
> suit with hotplug check.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c            | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_irq.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c           | 2 +-
>  drivers/gpu/drm/i915/i915_irq.c                     | 4 ++--
>  6 files changed, 9 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index a7f360f89410..cca22d2402e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -877,7 +877,7 @@ intel_crt_detect(struct drm_connector *connector,
>=20
>  	wakeref =3D intel_display_power_get(display, encoder->power_domain);
>=20
> -	if (I915_HAS_HOTPLUG(display)) {
> +	if (HAS_HOTPLUG(display)) {
>  		/* We can not rely on the HPD pin always being correctly wired
>  		 * up, for example many KVM do not pass it through, and so
>  		 * only trust an assertion that the monitor is connected.
> @@ -901,7 +901,7 @@ intel_crt_detect(struct drm_connector *connector,
>  	 * broken monitor (without edid) to work behind a broken kvm (that fail=
s
>  	 * to have the right resistors for HP detection) needs to fix this up.
>  	 * For now just bail out. */
> -	if (I915_HAS_HOTPLUG(display)) {
> +	if (HAS_HOTPLUG(display)) {
>  		status =3D connector_status_disconnected;
>  		goto out;
>  	}
> @@ -1081,7 +1081,7 @@ void intel_crt_init(struct intel_display *display)
>=20
>  	crt->base.power_domain =3D POWER_DOMAIN_PORT_CRT;
>=20
> -	if (I915_HAS_HOTPLUG(display) &&
> +	if (HAS_HOTPLUG(display) &&
>  	    !dmi_check_system(intel_spurious_crt_detect)) {
>  		crt->base.hpd_pin =3D HPD_CRT;
>  		crt->base.hotplug =3D intel_encoder_hotplug; diff --git
> a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 717286981687..af574ae1c57e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -169,6 +169,7 @@ struct intel_display_platforms {
>  #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >=3D 4)
>  #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >=3D 10
> || (__display)->platform.kabylake)
>  #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
> +#define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)-
> >has_hotplug)
>  #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >=3D 13 &&
> !(__display)->platform.dgfx)
>  #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
>  #define HAS_IPS(__display)		((__display)->platform.haswell_ult ||
> (__display)->platform.broadwell)
> @@ -192,7 +193,6 @@ struct intel_display_platforms {
>  #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >=3D 13)
>  #define HAS_CMRR(__display)		(DISPLAY_VER(__display) >=3D 20)
>  #define INTEL_NUM_PIPES(__display)
> 	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
> -#define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)-
> >has_hotplug)
>  #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)-
> >overlay_needs_physical)
>  #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)-
> >supports_tv)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 6f78fe6de06a..d9f9b9f78abb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1900,7 +1900,7 @@ void vlv_display_irq_reset(struct intel_display *di=
splay)
>=20
>  void i9xx_display_irq_reset(struct intel_display *display)  {
> -	if (I915_HAS_HOTPLUG(display)) {
> +	if (HAS_HOTPLUG(display)) {
>  		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
>  		intel_de_rmw(display, PORT_HOTPLUG_STAT(display), 0, 0);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 1bcff3a47745..2463e61e7802 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -1481,7 +1481,7 @@ void intel_hotplug_irq_init(struct intel_display
> *display)
>  	intel_hpd_init_early(display);
>=20
>  	if (HAS_GMCH(display)) {
> -		if (I915_HAS_HOTPLUG(display))
> +		if (HAS_HOTPLUG(display))
>  			display->funcs.hotplug =3D &i915_hpd_funcs;
>  	} else {
>  		if (HAS_PCH_DG2(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 6e2d9929b4d7..757b9ce7e3b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2036,7 +2036,7 @@ static u16 intel_sdvo_get_hotplug_support(struct
> intel_sdvo *intel_sdvo)
>  	struct intel_display *display =3D to_intel_display(&intel_sdvo->base);
>  	u16 hotplug;
>=20
> -	if (!I915_HAS_HOTPLUG(display))
> +	if (!HAS_HOTPLUG(display))
>  		return 0;
>=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index ba3afc7e38ac..c1f938a1da44 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -954,7 +954,7 @@ static void i915_irq_postinstall(struct drm_i915_priv=
ate
> *dev_priv)
>  		enable_mask |=3D I915_ASLE_INTERRUPT;
>  	}
>=20
> -	if (I915_HAS_HOTPLUG(dev_priv)) {
> +	if (HAS_HOTPLUG(dev_priv)) {
>  		dev_priv->irq_mask &=3D ~I915_DISPLAY_PORT_INTERRUPT;
>  		enable_mask |=3D I915_DISPLAY_PORT_INTERRUPT;
>  	}
> @@ -995,7 +995,7 @@ static irqreturn_t i915_irq_handler(int irq, void *ar=
g)
>=20
>  		ret =3D IRQ_HANDLED;
>=20
> -		if (I915_HAS_HOTPLUG(dev_priv) &&
> +		if (HAS_HOTPLUG(dev_priv) &&
>  		    iir & I915_DISPLAY_PORT_INTERRUPT)
>  			hotplug_status =3D i9xx_hpd_irq_ack(display);
>=20
> --
> 2.39.5

