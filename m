Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFF4590B4C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3A78DB86;
	Fri, 12 Aug 2022 04:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE8F9FD51
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660279285; x=1691815285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KgwHCKCwLEVcIF5RmB8wVy65AIMIz9AIx5J1Ne9vwsk=;
 b=EmoUjo7TiGe9dISHaZfZMQH4CPYSzypNYVUn7+uduDvb9I631oWlPN75
 /DWfHjo1vpb7vtVQuWk64sd5UzgJVUS+K2HFPTlrC/rZr9aMbRxoPvBxl
 PM67VeJP54ONlLeJGVD8lMZZ6ckTcZhs5k3ZBn+jz5r7LynrjupvqaJtt
 oogHftxvU3A32hDOCzaIasvegs2k8x6Ah1fV9lMENOO6H6AQnhsLvkzFQ
 LOPQxh4TAiszMPX578h/r3rbuvK9+X7k7cvAB1VCSrnDcRWfU5OgksTCE
 lQT10AScshoYCixHsci887tuOpzy/hkryZsguvdkg99E/w4TCUJ2KpvIo A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377812001"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="377812001"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:41:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665675179"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2022 21:41:23 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:41:23 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:41:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:41:23 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:41:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pxg4uV+zYpCZwLstVtwTgCNpsbSpxbgk5aXYACqEeQb26fm/CPhkpo27KscCNhlXCXqGR+tD7ple1Cvknu7YGasxjrqt/hdn11GSFmKofziRNT6wEmOKOgJ9it0P2dhvuFV2ia7RYvjh70dJcdmHCfSCtcUXcEANotPKvI0v77OvMnNiHND7k/FSAH82/BOgGuavC1BQnCDlfI2sSTTd8su7MBMj9aZTG1semekDPZoYbYFmW0hTd0Scap7lw1CGbm5U5KT+gyxc+CXJQsd0sEzlH0XJEMEMCkERLbDNYA+v2BEdP3sUzZ/3xIW9uhguO6uCyEqnzUbj7Z9RRlL+jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXzqGlgs6sfC09EnXzuRWSAx/feyeu37J7VYmzVHQt0=;
 b=U/7GcE6Bg/Ii7sqKAncVYi3duiioE2zeZ6Hk66JTi1RtoTTqnQZRJ4r9xogDdZpR4XlqGrPsQXXoAMBqcppm2es4NEcL5ginGhR6lfjeCW/1qz9dKGcvgzOM8/b4u+XDruemtP9Y9qON6TYR5bY38Q0sMon4mKODiUbpQ7uMs94V1jF1F/nujqLo6sEIOj2MXGCUbF8RobWNeyhX61GUjek2EoXHxHXs9i4dNF/qamkd7Ne8jvwN/fcqgblpeiHKoM6mCLvLhTsLB6XH3ROqVar+EVhovQoijS04UkHBinjhkoVBALGPcxQBruZ+7Ksolt+aZZYOfuxdN1AFX9xjtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY5PR11MB6140.namprd11.prod.outlook.com (2603:10b6:930:28::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Fri, 12 Aug 2022 04:41:20 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:41:20 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
Thread-Index: AQHYrZW72R06oemnFU+48ZVYG86SoK2qr2kA
Date: Fri, 12 Aug 2022 04:41:20 +0000
Message-ID: <DM6PR11MB3177BF763F96A723B5505415BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20ac6e6f-7b87-4836-f6e1-08da7c1ce746
x-ms-traffictypediagnostic: CY5PR11MB6140:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3xbmVaIi9dhuh12w7LmLcNj9GpHKH6N++rtu9nqxhlPT+J0e1nA/iniQzPPeq9Rtoe1fn3RyGa+bGO23kbihMFXr2sxVyCJIsWISypO6jpdK1O2yw39afsaw8OuTIlozdWK9uImMP4FLYL+uPLARuWLFaPbkjWcGf3WZ3DVvx2yUfUhjOt1zYnyy+Rct8M9bwSMLEkyn0tCL1XXMTQf8wZfLp7ItqkpJyNC2QR4vmex+WycFyMmTXKiIC9clMqSpNCJDaH9x1Wz4PY/jEOQtF4e6E4fxSDrUlvGyvJqduyTWA8hgy7+iNOZcTymFKI8LJk+So8/2jVV03n70MgBQZ5AzdPZsKx7//jGVsGngXCYYLk5wXGSUwyDG0fNo1gzTHdw1nyr9R++nbBydCZIK1zV57LHKeAbC9/Kfh5ESYYC/Iop8IlmC3B5sv7jTVUhSTCqGHwXBz4i2cZLRpux3oFRr3JMFv5XeCwY2Z1Gv6at+qeultc9kpX2679PO918v5AGlfua0ghj7Geb+jdNuUgHENevpw3XXaRIT8PFHIv/WG05RDQef+KbTPf1bd8BU3+7N8RYNg8VqGOh755uMhfa/5GqJL9U6Qbq8hpABlMuq+4A3R1mooElUyg4TX1sSVA83OaKuBsPD+FS5sQtD9w5hMhTsCcEh7XPZ1HXlIvTLgU7h/vEWWfnShs41z8u+Nm6Dl6EnlLB67EYgn6z8fgX5NEPhoKeDBb5AjUJKnkYvYc0ZDyO9OHA2SJKajvzXV3U10bgUJ9tRfliwFCbLVhgtxFQYKhQoLcNAc4NbLTfEx7eJfx/bu1GFgcRDjNNc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(346002)(39860400002)(136003)(366004)(8676002)(8936002)(82960400001)(4326008)(2906002)(52536014)(83380400001)(33656002)(6506007)(66556008)(66476007)(66446008)(5660300002)(66946007)(64756008)(76116006)(41300700001)(55016003)(55236004)(478600001)(53546011)(316002)(186003)(38070700005)(107886003)(54906003)(9686003)(38100700002)(26005)(7696005)(86362001)(122000001)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oM5Muuxcm3EFuyiqRR05in+7c8GCmVjS9eJftNPErZmgL5GMMYecZtzINjON?=
 =?us-ascii?Q?JBwl7zjwioa+n4jJRODjVNO47AbbJPMlgMiNJ10jfW0zlPoXCbNINlOJ/8xU?=
 =?us-ascii?Q?bS0lrqI7OJOCb9MX5Ompy6i05ucMXwAkC+8J9RbJPD+ojLuG8RsLYkFoZFsA?=
 =?us-ascii?Q?CMZnwUG4oyixuA/6WevX5upkEqSQHizpuqHj2OadgDpiGLqNgbiLIu3lqcaw?=
 =?us-ascii?Q?dNnKkFSJLKAZXL7KHZ1gPd08AYZ9iQKS1Blq+dd51raIJh65OkMRGzSFsnle?=
 =?us-ascii?Q?eG8Gf6yMPP8Cr4I/XRjCIVOMj49Wkz51rC95mxX5T3jl/zSgQEHOM/0sO5tV?=
 =?us-ascii?Q?x+duwzCltWLhkCh+p1pZB2MyE57Mqfnqk7UYCglvlO570Gsa3SY0y00BAQj6?=
 =?us-ascii?Q?F/qdTf/oIyilrJ1Xn0nm5kolPF+em8H0Bi41YRgzY8Zdi8bttD7Exa8ObULn?=
 =?us-ascii?Q?5ihiA86UP33j7l7AdNb9FD46slBulIy3BavJ/yWxn1eLPtxZ54DPJjNMW82/?=
 =?us-ascii?Q?lxu83M67QioMED1hWfwEK28TY9/zzSyto8Qj6c4EUppknovEAEXnjrQDQVTC?=
 =?us-ascii?Q?Ron2VkIZlvmWOKqDLee+QH+hDCXg0jmNzPUtos+pKWizl0EOzoI9r4MRgTP/?=
 =?us-ascii?Q?BD4qUGNxmSB3YehDgD+FvGZN7Cxr4F0TEoxVqo8zNSWE3LxEZYTWM2ZFhA5q?=
 =?us-ascii?Q?/RaaMKA1w5uuVQR/EZw0+A2IQZ+/WnxOQLpCkLgc/KBlgPMusCSs25IKMLgc?=
 =?us-ascii?Q?EgBe7x1+Vi0Tvc8v+s2EwG0FphZwp3s3LnFdmDBEK/3Vq5VwBZClVDH2ekJz?=
 =?us-ascii?Q?b6V3Mws4I9eh1/DIcyRCAvZe6tePERE3c1dSas3NuIKyfkmFutamSWjp+e3q?=
 =?us-ascii?Q?jZWH2zmKnt3xWHafDLkHgu7W7LSABvsBEo75uO91ifo45fA5+HMpChwCgU54?=
 =?us-ascii?Q?Muu67L6Q82Tv8nYjngkrFEpqf8IqkD1//StqtRL7lkQ48CH31S/e8pIyPVJ+?=
 =?us-ascii?Q?Ozm8eM8LsW9EffMGrBrANR/JjJ7fhxYueGYADkJOB17FBjO9YjgXD0e5D2cv?=
 =?us-ascii?Q?YH5rIqI9pkifvToLlWSSQNha4TWvmJFxlCuOYxWIFyWPaqujYMF1G2oRnewD?=
 =?us-ascii?Q?4M/5VetZavZ53iHUxE1YyiWpTRuCLvKoSoM6z+evpg9gtH/28Wk2uUYWpOBi?=
 =?us-ascii?Q?96jwRPWbhiGKX1f3VIyoMM5BEnvTBvjJQw1vZLGMNDHHNSYm7fKX3G3SJT3C?=
 =?us-ascii?Q?cLriMROuUAYHbt96ajbTCTwVTKu5DEI1d7fCNjA908L60MAJ8NSg7ZkcqoBc?=
 =?us-ascii?Q?iO4G0PowwUeShutrWnCrzF7EJP7xRcMS068DA8r8ONdkVD6251ErinI4SrhQ?=
 =?us-ascii?Q?U+4s+VOgJT//gqs09h2pHTsUE1agpaoOuzdJUiRyUnl+oiuo1Y2J/2iSvWq/?=
 =?us-ascii?Q?k3K9sExQFSYJkHMAQ28148gxDvLhiq7XjdyU47iqqjL8v/b3JcCbu16xXXxa?=
 =?us-ascii?Q?iJqiYx2JZbJOtlp8DS9qgJgqIZ2Svo2zeiFHABCrWdpI8F01/Sxm/ucfTiqB?=
 =?us-ascii?Q?R3OSkBYdKMzrZciaDR88VWtad6R8W1WQIpJs3/DD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ac6e6f-7b87-4836-f6e1-08da7c1ce746
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:41:20.7150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sc7aiUaPWF+GSlGktZm2E4K/EbYr7oinSJDH5OTZKw+cILqXKbuKS826EOhmMg31mFeBsaUOhgdWMuVnnt+lcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6140
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
> display.funcs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Rename struct i915_clock_gating_funcs to intel_clock_gating_funcs while a=
t
> it.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>  drivers/gpu/drm/i915/i915_drv.h               |  4 --
>  drivers/gpu/drm/i915/intel_pm.c               | 58 +++++++++----------
>  3 files changed, 33 insertions(+), 33 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index ff76bd4079e4..98c6ccdc9100 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -10,6 +10,7 @@
>=20
>  struct intel_atomic_state;
>  struct intel_cdclk_funcs;
> +struct intel_clock_gating_funcs;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_dpll_funcs;
> @@ -44,6 +45,9 @@ struct intel_display {
>=20
>  		/* irq display functions */
>  		const struct intel_hotplug_funcs *hotplug;
> +
> +		/* pm private clock gating functions */
> +		const struct intel_clock_gating_funcs *clock_gating;
Likewise having struct intel_display and all display related structs inside=
 this, can this stuct be moved to intel_pm?
This is more related to a pm!

Thanks and Regards,
Arun R Murthy
--------------------
