Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4E7A4DE40
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC32E10E5BB;
	Tue,  4 Mar 2025 12:48:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxKlZ8VQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2D610E5B5;
 Tue,  4 Mar 2025 12:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741092535; x=1772628535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7cH2XzgAXhtr0kO3gz0hdxp30ZT0jMzHk2F8hHSLg1g=;
 b=jxKlZ8VQRrq4kANG+g5qJbgZvOIkcKdIGrxG0fi3XyDwTKJrVIp8O2BJ
 p0iEeql0nbFPjw1g/aIjrQtwah8kw8BGtjFZRdt4zlCitqq7cXdvPiUJj
 oQem88msrYFJkmlmvdy0JHDtwEHk6142AkPdsSosX/0VH8fGKtK9KNtPM
 QKKaqqK7Rn1EuyQD3ZTWqO39wiZxzgFDSJSyXUdOM9kEEn8ETcyd/kMBQ
 e/9QIIuVwjPiUofhu3Rm/5/NFS9BWZgKSRAqFkHRE15W8kOUJIGCefrrK
 X2o3QfB8cv9KMuTkmTtfvI8EjffwAT8IcWWep2G/uSTmQfXWk3NF8z/R9 g==;
X-CSE-ConnectionGUID: /FYC394GTAW9z9eTUxl68A==
X-CSE-MsgGUID: dGRXMMo+Qga43+bBa7aXOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="64453927"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="64453927"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:48:53 -0800
X-CSE-ConnectionGUID: Ww0fGmmVQ16mSVFLGABCEw==
X-CSE-MsgGUID: A8k+OnAWQOet9wBZT0rBiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155556656"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:48:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 04:48:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 04:48:51 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 04:48:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f8knI4WYxX+42No6oxJRn4WD4F7y+t53Y8yYUKhxx+dx9Ts9oUSFCP0BoFLjkfNygyh1tKdQyDX0HVzIgwurmVyMrGloB5yRT0dUYx2FxWBzMgeZ397+c/fkImPocsqjea9voZpqpibj3WVAMz1rDWuGh6WpMh2azAnoEjzE4+ftUhmDauYOHl+ZjpWSKfhuH6eUJTdAaDE3C/Y/L6emdiJUKK82axzEMkYu1ojMwQEL6nhdwZBVhVUfMN079T/2iNE8ElbCXC32f4TN5wL0qxrnTAWiS77Q56A3G9yTlPBt7eNnre+ZqdgcD+TMfCa3A8jyER3cbn1cSnZcpl+1Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=38dOjcnDRVzwkSjfl3MXL1YjfX/3gvYvGpRzJNV6ESA=;
 b=cx2NNbQiU4BZ4KdnXJY52rKpLFml6TOU8FuHh+ixxei3W81k2CaC4VW1HaI2F8FoXWvHer1Q9uT9t94YOP1DMNhgcBNsjiWuiQwcDcOa7YZINlvAsRzz3TUs58Ndy5EMyIxSolPSXRw8MrlK8s2jeLLnqaO1P1tKI8g5ibnQ+fS+GOE4DxVLABra7GSYTREOfx0+5aDgn0wiPvBLVFSM6Q3hz9wFRt1JgJJT5L/kpcL7ZP7KIyG7JZgEg0ffRzEr0TDaHnBBk4usew35KoQPnSbWz8SAgMaulq1o0kLVjkzDOuIYbDYrLMPLWtYxTuJe7TD+X1x+ILaNszK1USZsLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Tue, 4 Mar
 2025 12:48:49 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%6]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 12:48:49 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/display: convert
 intel_has_pending_fb_unpin() to struct intel_display
Thread-Topic: [PATCH 3/5] drm/i915/display: convert
 intel_has_pending_fb_unpin() to struct intel_display
Thread-Index: AQHbjPAduiNAo4dXaUea0IfgwSzcvbNi7Zog
Date: Tue, 4 Mar 2025 12:48:49 +0000
Message-ID: <IA1PR11MB6467FDC8A0FA0F847152C9D2E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
 <d70ad8f9cbba5ee32d985b76047b56996ad4b31e.1741084010.git.jani.nikula@intel.com>
In-Reply-To: <d70ad8f9cbba5ee32d985b76047b56996ad4b31e.1741084010.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 65c99c76-0e92-466d-e73a-08dd5b1ae902
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dE9rrO/4VKoUcCi1UZ8n0zC0RjwdwjMSpT20inFLVPX5ASTjuxoZmvVQbuvj?=
 =?us-ascii?Q?L7nfNS6VpWajm3FHRVyopekv2PbTNLNbLRoUUPzc+kZQEyZnomADdnAvUap0?=
 =?us-ascii?Q?nU5bCdKwKpow8Z7U4EIxZJ2YvrfLcSsid+csoWXOBLhdH3OKiaitt82s3GmM?=
 =?us-ascii?Q?1WIKWCp/jgOAiOzEP/xriGrl6hfQqi6zpwr37N8QE2Pp6siFXwquOI/9tM4E?=
 =?us-ascii?Q?98XaG5nRyt+BwQfUnm4WTMETfCei8Xx/k8LOhMK26Be09+QulAYLzoHI8Wlx?=
 =?us-ascii?Q?qB4FbhvgLZxE8bGBnAn548RQsVIonq1go6nFQ4z7yARFmLfDiamXYdqYtE6K?=
 =?us-ascii?Q?/RGcVVcRrOCKmex8HhoZZVzgZDP9eG8sBr9quVq4P0fxuEwhvZvFjKSdRbAc?=
 =?us-ascii?Q?ANEDPQF0mlZMt4TIuHJv2oFXr3gExhEk3JPDzARYa3cityokyZdZP/jioojN?=
 =?us-ascii?Q?qj4je1YImpIBn+2JH4FMXx/hAbnuVYJKc6Je5VIstTGpkq1FbP0523iwSkJI?=
 =?us-ascii?Q?YXJovtSHV7cvvMp747lKHZWUwT/TaxYha4QnmJhdETiAN/WLV+zoya5BFeM/?=
 =?us-ascii?Q?9S2ApYHVCMllFqKg7ITaITK5Bc24vP2QYrortVUTCaxLEWmVc8tLNnbP5Wob?=
 =?us-ascii?Q?L4vjRvZFg89+5JBJrTq8rHpTOsNpDlggc0Lt6Qg+zaWnEjzx4cKXB+O+NO5d?=
 =?us-ascii?Q?klsju/TYl8lKZXdM1blDPVXHixEENkyXgeP/mV31tBoD+5ItxutYIPOEmjGC?=
 =?us-ascii?Q?kSOgR0QuPahiXBIgxmPn7ZrCw9XwLQ0v82V0TZfezl2DHf9g/OMwaXQVN+G8?=
 =?us-ascii?Q?Zeuy3GcD+hJDrMc/Hly0vHiJk3MoPiFpJealyUyD6/VvSJBiKGVlbV+lOpMr?=
 =?us-ascii?Q?TLQWFwUQjgpfeSraLrj1Bv1hbjO2JiMAjueaZNJ2wj4yBByQB0iIWRsMGn74?=
 =?us-ascii?Q?r1b0oeGDqPX4m3k53DpYollLgrjy9dWd/yKgXre/4yin6tKPChwIo6E3yxGZ?=
 =?us-ascii?Q?MMzoJSguo63jhIEk9hhZNZFyKaD9S5N1fazgJoTaMTtkaU10efdWCD3SPnNk?=
 =?us-ascii?Q?x7YaD+JRoFFk7+osnKRYdqBBZs3533Qiew1xVLUKOFa7lQCrHBHK/+WG3oLK?=
 =?us-ascii?Q?MvbKGUCCeNjE6ZOqB/5/F/ElvNUhPlsnxQ83gHShNXk2Kb9MmS9Kf0YzWmOw?=
 =?us-ascii?Q?cmMIvH7M/4ywPlalx9Ip80CPCYgDG2HlNoC7fnabusZwBRn5itA18kiVGlVS?=
 =?us-ascii?Q?hnZgVqQQ6VD+l5mpNbZJga4ih85IEfUXN9/BCBzJg9K6FpttjRY0BSCKSAgu?=
 =?us-ascii?Q?mfkaHcX/Ld8rLGvXGihiKDtE5wsfjKr1ZhAhSGgYfLpTC44tCPOfMTttsnZq?=
 =?us-ascii?Q?WKYSdxXWF4m9E45lcmKA+8t0yZmeSHNeCIloyARkzOWCyvDJPSh4Vy+gJkiu?=
 =?us-ascii?Q?XZQPf+P2iUwpAk80wKxYHVCObDqOxUOu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/1qdInFe7xHEgcGyua7t4xvxVfJbQ+t3uwgr4d0uR8k5Nr+La4jU4y3gymwh?=
 =?us-ascii?Q?wJ4k+4k3O3pv9hG4w3cghLjJyOm2k0YLGcCDA7pSTjjGLAvKEFcJt2cM5rqu?=
 =?us-ascii?Q?I947KOmJmMf4pALocvDvrnzxpl6rF9xuGu5y/k1lSLQlkv+Kk8S/1sbiqPzH?=
 =?us-ascii?Q?vTZuLTI2z+2uvhqmnCoHz7H4Iyb3MZOVtcxZx7cRaAHikPdAvHjXH+xvprvs?=
 =?us-ascii?Q?/psuoXswsn9iMdk+aKjZtaOIAaMf+X8hskdrTtnUDlBqTt/F2xjXH6H18Lbj?=
 =?us-ascii?Q?jB/wWFLCNczegvhl0g+yviT5wzYVXB5kJHPCweO/TnurQCZN0mNAHwPrRJqX?=
 =?us-ascii?Q?X9FTrxtnOmv/pC6Q0VSzpE9Oz7vTF3IDkYGHZnyyUSKdKb6+gQWVtuhkHNvb?=
 =?us-ascii?Q?F6f37c0lvUT1FKQ0UnER6o8qOZpi73WNUgZ5h3v0/b973Nk6bC86c2vti7Ym?=
 =?us-ascii?Q?SeUZ1gISZCap61fr9cr7E9Zs7+Gr0hDVjDW8eQ8mIE7htB7IMt3cF/nU86/m?=
 =?us-ascii?Q?WTs0YgSHkrjUpPyyJYkLXZaojc9m1nElQElDdP2SGuPNHAXKWcdTFtMayWZT?=
 =?us-ascii?Q?Au0T8LiQqLmyGg3ov/knDkFi+6bJJNY6UdKEwL5tRTMi3r1h+dKPsbhh/EGV?=
 =?us-ascii?Q?J/R26FT5Psj+fUrU38SvScl4LtctlqlgVKhDLCdrGdYvcIc91fhWzmtGuSI0?=
 =?us-ascii?Q?fWVnjWh0BYP4pFpfjLiAadRBX0jRzACu03sfjVrxhbN0oXQnp4UE4by5k8wr?=
 =?us-ascii?Q?R/9bUIADOweSuh+RhwqdMtpC4GXmE9aO/gu8yb65KLpwZFvsY0yDiBXUXwq+?=
 =?us-ascii?Q?JWLmE24xZ/xMmRrNmHW9l8LD8VYinrcHLb6/9ug3Y51IMgKRdZwtS6yqCqlf?=
 =?us-ascii?Q?4EZ0KmhWcrFFRfmnGdlDQ+Iyx1lkmOuulU5oEoaEyHSenU1d+VmVt85/XmBH?=
 =?us-ascii?Q?39Mq25DXpoeN0MTWxzMIP+ddbhum3eMGW5aNPtO18SJ/a6rBbZ3VFuIfyCnI?=
 =?us-ascii?Q?aLq4x5vh6gwIiCClvkdOewULoNIc9VXIX976HLl8FlekvHblXjIEeM7P53Mf?=
 =?us-ascii?Q?2k1T7ueEuK1cAC6dr10ttVN46R6Fnrv+3xaAIp89JEtSgxf2uQZqI4j0gins?=
 =?us-ascii?Q?rXi6JJ9sYtR0TwrfmqjKp45Li468H3zZy5UcuFd+XlStHUJawuXAG2TPeKi0?=
 =?us-ascii?Q?o6X0RIevNPk+QwZ4Ds2HeXshkOC2HoSuJgR6LCfG+iljFx5fa2BRkY7mET8g?=
 =?us-ascii?Q?B4rDGUhCePUZhQsQ+0bXypAsCtl0PigeAPA9tOUGmfQ0Lyl7KR1qaczYHdb9?=
 =?us-ascii?Q?SveAV/oWJZGSlz/J5Fe28shTJXZM+NE+U0L037cPJCckLaLXwiBdWKaF4YEE?=
 =?us-ascii?Q?TVdl5guVTlhRgivntdORlKlWpy9/N3HhOd3QzQuVcpAzQ00UL2G0fYPnl20G?=
 =?us-ascii?Q?/hCapLWjYDNcL4qx+gqFlOUQAqlwu8ZZsypbjWNHhqWshy5hm1Pi4EHmYkcB?=
 =?us-ascii?Q?m7qg9HkE6gIs2/+R+p+kNsZmAVDuqjHK3BMjyL/J3G2Yx9juC7Sjv1QQlolt?=
 =?us-ascii?Q?xO0dlwKYVHw2TMiEZ5KGSJtRAvVCMkPZPCouPTXR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65c99c76-0e92-466d-e73a-08dd5b1ae902
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 12:48:49.2799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uubPSgCgLGiC6DRozi4C/My5bxaPnwFadyhBoBF4creI5/EOSyFpJdTdHCkFkQdtEjVUHhChE5Kj+cY4WIkpTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Tuesday, March 4, 2025 3:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 3/5] drm/i915/display: convert intel_has_pending_fb_unpin=
()
> to struct intel_display
>=20
> Going forward, struct intel_display is the main display device data point=
er. The
> intel_display.[ch] files are too big to convert in one go. Convert
> intel_has_pending_fb_unpin() to struct intel_display.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
> drivers/gpu/drm/i915/display/intel_display.h |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dp.c      |  3 +--
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c |  3 ++-
>  5 files changed, 12 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3b7ec0be9011..676c1826f15c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4660,6 +4660,7 @@ static int intel_ddi_init_dp_connector(struct
> intel_digital_port *dig_port)  static int intel_hdmi_reset_link(struct
> intel_encoder *encoder,
>  				 struct drm_modeset_acquire_ctx *ctx)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_hdmi *hdmi =3D enc_to_intel_hdmi(encoder);
>  	struct intel_connector *connector =3D hdmi->attached_connector; @@
> -4726,7 +4727,7 @@ static int intel_hdmi_reset_link(struct intel_encoder
> *encoder,
>  	 * would be perfectly happy if were to just reconfigure
>  	 * the SCDC settings on the fly.
>  	 */
> -	return intel_modeset_commit_pipes(dev_priv, BIT(crtc->pipe), ctx);
> +	return intel_modeset_commit_pipes(display, BIT(crtc->pipe), ctx);
>  }
>=20
>  static void intel_ddi_link_check(struct intel_encoder *encoder) diff --g=
it
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index debf9826fd2f..6962bc0da53c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -764,12 +764,12 @@ static void icl_set_pipe_chicken(const struct
> intel_crtc_state *crtc_state)
>  	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);  }
>=20
> -bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv)
> +bool intel_has_pending_fb_unpin(struct intel_display *display)
>  {
>  	struct drm_crtc *crtc;
>  	bool cleanup_done;
>=20
> -	drm_for_each_crtc(crtc, &dev_priv->drm) {
> +	drm_for_each_crtc(crtc, display->drm) {
>  		struct drm_crtc_commit *commit;
>  		spin_lock(&crtc->commit_lock);
>  		commit =3D list_first_entry_or_null(&crtc->commit_list,
> @@ -5574,7 +5574,7 @@ int intel_modeset_all_pipes_late(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> -int intel_modeset_commit_pipes(struct drm_i915_private *i915,
> +int intel_modeset_commit_pipes(struct intel_display *display,
>  			       u8 pipe_mask,
>  			       struct drm_modeset_acquire_ctx *ctx)  { @@ -
> 5582,14 +5582,14 @@ int intel_modeset_commit_pipes(struct
> drm_i915_private *i915,
>  	struct intel_crtc *crtc;
>  	int ret;
>=20
> -	state =3D drm_atomic_state_alloc(&i915->drm);
> +	state =3D drm_atomic_state_alloc(display->drm);
>  	if (!state)
>  		return -ENOMEM;
>=20
>  	state->acquire_ctx =3D ctx;
>  	to_intel_atomic_state(state)->internal =3D true;
>=20
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
> +	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
>  		struct intel_crtc_state *crtc_state =3D
>  			intel_atomic_get_crtc_state(state, crtc);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 83a820b72a6e..65245ef04347 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -457,7 +457,7 @@ int vlv_get_cck_clock(struct drm_i915_private
> *dev_priv,
>  		      const char *name, u32 reg, int ref_freq);  int
> vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
>  			   const char *name, u32 reg);
> -bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
> +bool intel_has_pending_fb_unpin(struct intel_display *display);
>  void intel_encoder_destroy(struct drm_encoder *encoder);  struct
> drm_display_mode *  intel_encoder_current_mode(struct intel_encoder
> *encoder); @@ -531,7 +531,7 @@ int
> intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>  				      const char *reason, u8 pipe_mask);  int
> intel_modeset_all_pipes_late(struct intel_atomic_state *state,
>  				 const char *reason);
> -int intel_modeset_commit_pipes(struct drm_i915_private *i915,
> +int intel_modeset_commit_pipes(struct intel_display *display,
>  			       u8 pipe_mask,
>  			       struct drm_modeset_acquire_ctx *ctx);  void
> intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 205ec315b413..a236b5fc7a3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5193,7 +5193,6 @@ static int intel_dp_retrain_link(struct intel_encod=
er
> *encoder,
>  				 struct drm_modeset_acquire_ctx *ctx)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	u8 pipe_mask;
>  	int ret;
> @@ -5224,7 +5223,7 @@ static int intel_dp_retrain_link(struct intel_encod=
er
> *encoder,
>  		    encoder->base.base.id, encoder->base.name,
>  		    str_yes_no(intel_dp->link.force_retrain));
>=20
> -	ret =3D intel_modeset_commit_pipes(dev_priv, pipe_mask, ctx);
> +	ret =3D intel_modeset_commit_pipes(display, pipe_mask, ctx);
>  	if (ret =3D=3D -EDEADLK)
>  		return ret;
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index 00f7cd6debf3..0c723e7c71a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -328,6 +328,7 @@ static bool fence_is_active(const struct i915_fence_r=
eg
> *fence)
>=20
>  static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)  {
> +	struct intel_display *display =3D &ggtt->vm.i915->display;
>  	struct i915_fence_reg *active =3D NULL;
>  	struct i915_fence_reg *fence, *fn;
>=20
> @@ -353,7 +354,7 @@ static struct i915_fence_reg *fence_find(struct
> i915_ggtt *ggtt)
>  	}
>=20
>  	/* Wait for completion of pending flips which consume fences */
> -	if (intel_has_pending_fb_unpin(ggtt->vm.i915))
> +	if (intel_has_pending_fb_unpin(display))
>  		return ERR_PTR(-EAGAIN);
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
>  	return ERR_PTR(-ENOBUFS);
> --
> 2.39.5

