Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29552A5EE77
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 09:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 989AB10E82D;
	Thu, 13 Mar 2025 08:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuM/9Vq9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C721B10E80B;
 Thu, 13 Mar 2025 08:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741855885; x=1773391885;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=VamU+JI/CW2kwfK7uocSa3lwqQ9MUO7N27ZShrBUaDk=;
 b=kuM/9Vq9zJwXwLgpEYI3C4Li33m58XuscYwlapv7SgMX2GiTVJn6O3j8
 dKuWWTp9LvzTCID0CbyBizntGLqysrjbBYuVr3s5j2jFf2qugcYf5lAv4
 p1GPkrZ5VgFVuvmfakdxEHaG6GzneHTnxNOMINNBYUv4qDOig//MfWie2
 yqRvxKT0Hh/tyG5l/2ASKAc2AJ3P4H561XZEJHv5+RW8lk4qPjwfgZOca
 WHpwuqE8ERIL19kOBiNRqeF1Xcr3P1GQiqxW8QaHmakeL+R1ixCLc1Y9S
 cEI4F3/vnfF2UmvkBXUKPYV/yVOe3cfvtE+jP9eCQKFd3JypUuX+M5ar8 g==;
X-CSE-ConnectionGUID: 7Yf2xoA8QZmpKklGd77kYw==
X-CSE-MsgGUID: PFYYXMzuSpmCkat6wUPQDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="53955208"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="53955208"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 01:51:25 -0700
X-CSE-ConnectionGUID: NU6TBJdNTp2zvq8z7T/PFQ==
X-CSE-MsgGUID: AY4QkgTdR3C6I34yjpYVnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="144079693"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 01:51:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Mar 2025 01:51:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 01:51:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 01:51:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W3dCgW+aq1LGmnmCDgUqqpI24ahEXSSZy2WLAaMsEcl0TLDjOV9Ey5kCl0rzEmv6mavaTVlneI1ub4kSXhdaxriu9dJX7AdPUc8hJSmWr9AXdk2+E7uXhIFNvicucxceums0TUnnkoAVwV7GbP1umGlvpHGsTJ73WnCcTjJ2nAAZdrELlOLtRmyCqq414tPBwYhEJecW7iuwAvrkcpwOEZD8kku5m6nQEqgmL/q0Nsihe/eT8nNeMzymdNsTtxoEnLrqH64OWGfRXpoYZzhNW4npMI4J6fvRC0SqteYgtjisi5E32txaJovoUf7yULFnr8PrIolghzu9w+QZXAgPIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VamU+JI/CW2kwfK7uocSa3lwqQ9MUO7N27ZShrBUaDk=;
 b=CW9HzuL9LPoGWETVHqyvqCEPjzUc7FvQFETT52EQC4ZWEfLO7Xdlbp8/cGgqcSsK7kUxr3ciz5/4W8VmHCbMUd6bW4HT4eJ5Hzcqj1UtPhRoYNWQsWS2no65OO2SIIOPq47v23A6ie8c9wpYkmkgfNOIvllEW+9u7iSoIsBR10BL9E2f05wzsUUw2mcR9Qz0yxlYn9S5oDwaWaTppwXvKDOBMTXpfdTuR6yaBoXzm8TX7VzrInw/ieLcPXvnbgPLySUtSGv+OyoT8W5dDPt/AuDRYpIKSOIp8R4QtwymmkohqcmcFmcQVKeqNzdyF4cut3Y0qskshkyxucO0fAGHiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY5PR11MB6188.namprd11.prod.outlook.com (2603:10b6:930:24::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 08:51:21 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 08:51:21 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Baolu Lu <baolu.lu@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Regression on drm-tip 
Thread-Topic: Regression on drm-tip 
Thread-Index: AduT81McpXbO29/8RDWHWCDCdOzGGg==
Date: Thu, 13 Mar 2025 08:51:21 +0000
Message-ID: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY5PR11MB6188:EE_
x-ms-office365-filtering-correlation-id: d4786ad9-a8b9-465c-c7c4-08dd620c3a94
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?oz+p8ukbZCJc16WDr8E+aHglTnUEW6+sYsJSLwrmOdX4AP5cJMKfneNcaN?=
 =?iso-8859-1?Q?fthmOA0qjSukn9G8pz6NCBb7fdjKxb8Ti9mr+gIuA7NhuMID57siifX02r?=
 =?iso-8859-1?Q?y53ixQnw+EB7AARR2pEZpTXOapX6AIcxQw3wmjvokbc6WnQTi1YH9+r34z?=
 =?iso-8859-1?Q?cv91Huex9U/PDZoBQYyfl3IZmfY6B/mIUYfjjPrGpHFFbLR5IjBv6QXUA7?=
 =?iso-8859-1?Q?4l5hW+qZFma5D450+s+yDGP7b5od1OjIdakkedRUi9aPmZVJsq3SWDR3p2?=
 =?iso-8859-1?Q?6odhZnWz0tXFLsJ7rKwocnjdz3VButHnHl5pnoCEwWH/vhwy96hPb3gog/?=
 =?iso-8859-1?Q?1TQtNeocCxdjYAqvU7DANvd6gxXM62fE206806MgelrVO9OKQ/WqQeq5J4?=
 =?iso-8859-1?Q?xQDcIbcZkHvLYFa0wtpevWHRvIY+wxNKIozPI8Ftnv/I6aYmTHwVDfR0+4?=
 =?iso-8859-1?Q?FLhGHMmYwEg3mJT0lrY/KmjdD0uJbg9uMytqlacbktl7Yoq2mpyRmitP/B?=
 =?iso-8859-1?Q?iS4Yc1IrAxt64dutGleOSmOSq1kE1WubVxcL3/NLv6a+fMv29jGcjH6MQ5?=
 =?iso-8859-1?Q?ev7BNkZjhsx8zTHhd4qAjRikN1TgoFce1dH6UegR6LyM6HMAGrhG11bMS6?=
 =?iso-8859-1?Q?NxUXd57+BDTe/IfFC50d9areabhm08YvXSUqPClSqg64NAYfNKBZH/2fjd?=
 =?iso-8859-1?Q?jAXHt48BDhJOE1k6UX5ePkcWrryK27djQVfrxKnpvAzR0PKc1f1iu5vpYo?=
 =?iso-8859-1?Q?1f51Kq9BX7DxQWyIj+xy9eLEKe0gIX0I5F1EqI7u+DmH52q3GMFsIxBV1Z?=
 =?iso-8859-1?Q?11MAMpqzRxt+OwDRaU38z7W/uVMqBbLh52g0reSMNybq3tzAdsK4tP+hiD?=
 =?iso-8859-1?Q?heC5QBpGfsISR8BC9KviZKnkt9h9TFIOKo4y1p/mF1I4Q4aqZ2PQIcDLnQ?=
 =?iso-8859-1?Q?tZBQXplg9hovnAnnZbjwIx8Jb1ED+isgb+mO2m3Gle9jCM0ulfLyplR1Fh?=
 =?iso-8859-1?Q?cHmZSj3F5Ygq8WI65RpPJXdyV1NwKBAiWAwYfx+v1b30jh/2qgscLjs5Wy?=
 =?iso-8859-1?Q?Lzfbhh8xGP+MBJIaNx3LuQaSkg6lfokK1SvNgYTyk7FKHn8R7GodwlyH2k?=
 =?iso-8859-1?Q?JLLtzdA/cJUXh+e11d8okYcG5iX2UZbYWS4I4799DVvwZKa30CoTL5ckku?=
 =?iso-8859-1?Q?wh3rH6Adm02xf7t5DrDu2yswJr+X5rWGWstCg+83JV/FjbtyGyKuSwzhCi?=
 =?iso-8859-1?Q?MkptiSmis7Sh07uRVwTtV9/TRIBIV6mmT1tg38dQhH1Pl7lLCdcMub/eUB?=
 =?iso-8859-1?Q?7NyfvFmxjYxiAuJ4/zUS6pjC0lUU/oggg9/McSMeqSyM+FwiZAXbIjwXjT?=
 =?iso-8859-1?Q?LOcIw0+2zVZjUHnuDtkxCiWO2ZFbSNKmGnmkfWXxhNUyertKg8SJcjfb/Q?=
 =?iso-8859-1?Q?ocf2wjGphbyHPS1o?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?BI6hzSNjPIoDDZd5wws5M5AjdLD38L8P18/E8Xk/l83c8bklT2KVIUlBfj?=
 =?iso-8859-1?Q?sTT6JtvgtP7vT+IWvNeTEPQE2wcny0GJ2dPAbPbqDploBAyWV1RvGyS/rF?=
 =?iso-8859-1?Q?KGG5QNP5pIwE0D6VQLYTXvmm/GLgg4cpCJFTabPJaaUDtglxBBnIycHVha?=
 =?iso-8859-1?Q?z+kB7qm0lcY6SZ9BNEctQd3REYn2MLcG1WO87he3c0mgjc76ilMVZkbVBK?=
 =?iso-8859-1?Q?ziHaUoWBvNt7cvlY096ahC6wkL8KgiOwWKIXVLlKDQqnu8qpmRF9EFWhlL?=
 =?iso-8859-1?Q?ckAqfCkttqdcDepNyKpKGGn7nzGSJBmwYzRR0kYdgkG2qxIXVcotC3h7a9?=
 =?iso-8859-1?Q?RyPqOB42Rost5LlRQd7wNlaCal7X55Zd1J9cS6Kxr3vH3q0sm7JDNUnpif?=
 =?iso-8859-1?Q?MB8o+HBf32htw1CjEFz/+7zrGPrEWE4oXebIgM5RbBqGH0rwMMyUnKuhMk?=
 =?iso-8859-1?Q?wJE7mtb1nKp9V5btBr26i7r+Y0pspM68cryrsqA65c2C//mCWujsTddMMy?=
 =?iso-8859-1?Q?RTUKQEDPB9iYbvDjVnadw3pZDbR6jij0oQj7YIgZ/E8+L/dFG2jAkmnjQN?=
 =?iso-8859-1?Q?TjLIQcLAJpcLowb4neHDsrjbITM34SQbA/PmzANJkFjRQ7ygKDdcd5/KoO?=
 =?iso-8859-1?Q?3yNTKxf4jaBeLXD+HtuBEAQ/1/SKWWG27jXcd6kxpplr9SS8BVKlO0tX4j?=
 =?iso-8859-1?Q?N4SCh6b4Gw9Y9+vtHP+IAHhwApxe1KMTFE5FLYAJfIM7MY2RoS6A/p0Lp5?=
 =?iso-8859-1?Q?37dSkm/JXbENT8CVN+pavJjmHbo5OMbo5RLwKFgcuz1fFXhBoc9MbCsICw?=
 =?iso-8859-1?Q?65UCK77oe7/qtOLiU+sSUpKo87xsDdGu9D3HJhVAERjn3233TqUdKY7n4l?=
 =?iso-8859-1?Q?VTYmaH6K6uitnx1gD7oR6jk5ubMCEpdrt2FK1Ah9ymteLHL4kruJ+D2Lnw?=
 =?iso-8859-1?Q?rFPVplOeWFf9360MdeDc1l/v0qCzfSFMQNcZ7D3ATOzIjdvozidwwQz9hi?=
 =?iso-8859-1?Q?AbBn1znct+v+VNm5csE1BdRgaC9gwo6WbcSoOevPckB+Jmcf/Si7oogyYM?=
 =?iso-8859-1?Q?ukZZ4dNutyjvamSrmu0tj7MAM8/l4vseM0f4YvdX97tdBBm21Nzb0ZJmKq?=
 =?iso-8859-1?Q?w0wy4cg6gaeecy/l6vUfFsXW7M52StrO17FB+tyKpPtJG1dj4PmaoRMc5R?=
 =?iso-8859-1?Q?Y0hygyBPw+qVnl85NeK8hWUXTK6HNx0XT4Fn1A3ecPe4m5d3Sy/jzzyTtB?=
 =?iso-8859-1?Q?NboSTYiMFVyWrm7gYn112Q7BVb9egWLu+sLd1xuF9PMJteYZr/4VaZu10W?=
 =?iso-8859-1?Q?XNNXoxM92YW2pWN7DwTIeJEgrP4rCr/KbLYziAKGqPib1AKl5g4rHw/Gds?=
 =?iso-8859-1?Q?2xW91Kb9iUP/r2WCRH4aaKmQp/ld+Vd9TWVzTLMhsdm6hVE8aDdLWfkHXa?=
 =?iso-8859-1?Q?NT2aVk68XC2ko/71k6ma8eSVpB9DxKhs+KtU9V9hGpn300JAFEnWRw+4DF?=
 =?iso-8859-1?Q?7xt2V2m/oL+KkFY0RS7B+cvVq0FpYKzQaGUVBxj1b9XiYyFcb/rXAHW3eF?=
 =?iso-8859-1?Q?hdcTBzJhLP3aLCsa0hXhlh9K54pJUuZIc59agBgi0fKpk3xxIUtlglAa3F?=
 =?iso-8859-1?Q?OK02HsuHVWE34WEFARGc7e1oFEHf6UXXzOXNc61oFziRY54T/cU2rQig?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4786ad9-a8b9-465c-c7c4-08dd620c3a94
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2025 08:51:21.8423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nZD1N8gK3P3F+jIBoJKXUDhxOPQC8eoP98pcC/09ADDcByKyi9fJEsiVDxAWNLyuujjZJLEk2yWQv8DzXg76RZVdB86F6yPkArP9Cl/1X5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6188
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

Hello Lu,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on drm-=
tip repository.

```````````````````````````````````````````````````````````````````````````=
``````
<4>[=A0=A0=A0 2.856622] WARNING: possible circular locking dependency detec=
ted
<4>[=A0=A0=A0 2.856631] 6.14.0-rc5-CI_DRM_16217-gc55ef90b69d3+ #1 Tainted: =
G=A0=A0=A0=A0=A0=A0=A0=A0=A0 I=A0=A0=A0=A0=A0=A0=20
<4>[=A0=A0=A0 2.856642] ---------------------------------------------------=
---
<4>[=A0=A0=A0 2.856650] swapper/0/1 is trying to acquire lock:
<4>[=A0=A0=A0 2.856657] ffffffff8360ecc8 (iommu_probe_device_lock){+.+.}-{3=
:3}, at: iommu_probe_device+0x1d/0x70
<4>[=A0=A0=A0 2.856679]=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0but task is already h=
olding lock:
<4>[=A0=A0=A0 2.856686] ffff888102ab6fa8 (&device->physical_node_lock){+.+.=
}-{3:3}, at: intel_iommu_init+0xea1/0x1220
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [2].

After bisecting the tree, the following patch [3] seems to be the first "ba=
d" commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit b150654f74bf0df8e6a7936d5ec51400d9ec06d8
Author: Lu Baolu mailto:baolu.lu@linux.intel.com
Date:=A0=A0 Fri Feb 28 18:27:26 2025 +0800

=A0=A0=A0 iommu/vt-d: Fix suspicious RCU usage

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Gitlab issue for the regression is [4].

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/drm-tip/combined-alt.html?
[2] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16276/fi-kbl-8809g/boot=
0.txt
[3] https://cgit.freedesktop.org/drm-tip/commit/?id=3Db150654f74bf0df8e6a79=
36d5ec51400d9ec06d8
[4] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13818

Regards

Chaitanya

