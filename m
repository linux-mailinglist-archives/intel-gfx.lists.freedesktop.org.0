Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0282279EF5A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 18:50:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DDDA10E4BB;
	Wed, 13 Sep 2023 16:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 493E210E4BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 16:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694623820; x=1726159820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aDAYu9+sOF3u4xkvKu9VZsE7GY5JTV/nlFmvM55jSvI=;
 b=GxZ+Ovhojz7MYmCV4In/31V5UhgqgE//XKTNmxeIaP5vQnnIXpdQlnbJ
 ovWoPN1DodMZLzuZzkRrMl9sIDxKa3JAtmHtmi+AfzdUAgk71DMax/tOt
 CcqnYNuTdbouptMpNN21DEZaYtHh0SBlGDudpaW1m4fzxrF113V9aWmZU
 vniHF37Q5qd/ipJfmoYNDYJxE4RQfDpa65ucQChb1QIBDTjK7L6B8XDCf
 d+49E/AVUE6wpmDc1Mp/iKejEE9wuzESWLES7OFdK4A5CD6aj5Au375Ay
 E2aFStAhCcU3j86ltTtDJx5QD5/jQJ1Gy/L7rXy3k2TK1swB9jUfm9fjM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="378629354"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="378629354"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 09:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="887398794"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="887398794"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 09:48:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 09:48:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 09:48:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 09:48:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 09:48:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHmvSVM35emgp2QquSbqduJs26SsVQu1JkfzUtmCDgNlN/SX06MS6yHq4f7kB4mfd+LsqoljoEjNC3oP//WMYk6X+QLOTNhUqvUcxiKRQg5VwEzk3fB6x6wX6/LKQVbotV+dU933x6wH+miiVdTsz+oxnjjiWh53Uhu4UcD+bx7FCuU3XS2uRjtgW/Hm3wphbjdiM2r/bm80S6adQK+gsTy4j+NQ/dbTWvGw7oQfdtUZ12f0OdpUNvcTtWS0oNjg91spMm20cIKQH28SNvFmVooNh2hO7W+OSjphYaBvcWBzKNC3b7aCm2y8Ijq8fAgBE8IH+n0mIFcoysk7EXf0nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/sW0sfI3ho7WVH+qPC5GKoCTJ/fZL9dGXUbtsO8kZM=;
 b=hnZCCDluEAId4L7ru3kkzi5JsTmTi+vbeBdLvPrK1jF141Uo4HRT2Ft09ADTnsNLAYQU7DzWMvgLKPJA5PBGp1FDe5a1HQD/ZfKwYFio7w1zz4h+Be1kvdRhFdomsn+8BUZUrVxRaNX1wo6Zjd+UKlwL8nGbT1gGz/H+kLyl44AU+4VKF/M+d40KRTKLlWP8cQqKgbVidC7+KK9wLaXFjn2GSNey7lR0pV9QI6IvxXqjtS0SJ6Le9t/ccoZjB6/J0YrxF7iDHnrE7BMma+0rsUKWBTMLfwmhk9f8qiIXghsexm5PV/fyL2E6x5QmOrcT8R7Qo1uHq0WrN0HajODUzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by MN0PR11MB5988.namprd11.prod.outlook.com (2603:10b6:208:373::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Wed, 13 Sep
 2023 16:48:30 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 16:48:30 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 7/7] drm/i915: Enable GGTT updates with binder in MTL
Thread-Index: AQHZ5kOhJzLAWgWeJkmyWvUC85zHRbAY96NA
Date: Wed, 13 Sep 2023 16:48:30 +0000
Message-ID: <SA1PR11MB6991432A2537CAA92AFA47B392F0A@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
 <20230913130935.27707-9-nirmoy.das@intel.com>
In-Reply-To: <20230913130935.27707-9-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|MN0PR11MB5988:EE_
x-ms-office365-filtering-correlation-id: bcef067a-a688-4874-edef-08dbb4794278
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wbvL0z4Eo89LOCMx0TX88smIBVFRJLZ1NcLYImDN2nIZ81FFnfk4P83upOevMEZtqwZBDJAdU67UvdDuCREvc8qnl0q7+Sg0fPmuJMz2hUCorFEPRXIzDFpB7Uc+yHH9qZAzoU/GvJEDeTGtCwGfJhYe1llAiJAqRAMvK4tN8MZAxoj3SlVPGxhdOtw9QHgArB4S4Zx4DUFmohyuOlGmZLzX78fBRM8GUpB/vIyhlb2kl4jCmmxs+Bmai29QayWckvQYTIzSRFF752UlKUrdMYeih6PiQHTw2yTfe/CrKp9Yo4tKuYOVQ4t0GXLye+XtRdQYf2udFUxcU5phhjKXanbRtHVMRlF0vTiBJazwn6MNJAN/nPxVJ0qYrqjQ1gdeoL/vTf03mySkNaCW1lkci2Hl/ooPa+ZYBz7HSWjFiqBZnZxi83RvYUWIZCmtyd05ench/f+UiGTlZmqgqie6KIOOi1Sbk6umHA2Ryf3JtBCkZsew/LVEyf8lgHdGy/5nLQjgZeGxxAHL4d4IwtuJKrBnQIQkHFb3JhPk/NUw8Cf8TUGgP3GI/3L9nYJ0gkHOXUwkGotqhYuO+a+7x/GHVrHPe+lvz2kR4Hh1STbcEUUZAhesi+Qbdlq4mo2/mmQe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(366004)(346002)(186009)(451199024)(1800799009)(52536014)(41300700001)(316002)(26005)(55016003)(15650500001)(110136005)(54906003)(76116006)(66476007)(2906002)(4326008)(8676002)(66946007)(66556008)(66446008)(8936002)(64756008)(478600001)(5660300002)(53546011)(6506007)(7696005)(9686003)(86362001)(71200400001)(38100700002)(83380400001)(82960400001)(33656002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hRuqn0kclcs4d8vsDZVTmWqmDUlAhXlJQXVS7IINWfKsCK/3AJ/wB2uUgtxB?=
 =?us-ascii?Q?ypplYTzF57Ra+1tsbjA7QR+O6gB+9k9VQrtxWRoxe0Q++Goja7DTFvfExS/U?=
 =?us-ascii?Q?W3qh7LC/N0LFitn+pgA21w57lUfDVI08iv81kyws+XUOQzjRcPyI/vJxGFfR?=
 =?us-ascii?Q?AtZfFGWGOd6PjowzJCXUtcVVoPPMGIuxRkz5t9/7VFN6wAtTCTy62bxFsJ5i?=
 =?us-ascii?Q?nERufNh3WKbW2UsHRrzHP8iY+Q+mnF9GJ47tZ8YtuKls0fPspO+Ns/LhXNOd?=
 =?us-ascii?Q?77uskh+bdFVzvj8oIIsEalhezwRg1udB2b0M0/z+rCqzGYUrmaVmoXz0e6eS?=
 =?us-ascii?Q?tvZZA2rD5UdbSF+7wA/fqdD8eje11J856CDjvFGZePj8OXZsln19O0ZfYsIa?=
 =?us-ascii?Q?WV8h8xa7NTh3stZOBoU8QkdKuaxxBB6ZaS1wZRZ/9sX5vYyKt+xL6RMHIFJf?=
 =?us-ascii?Q?XVfWAktycQoSLBBhVb6oPrdVXVKExrIplos0kxi6RwWVTixiAoMIFPnJwNPz?=
 =?us-ascii?Q?Dzxtn7puXyfg4GDmhkW/rP0CMx1A9FCAVAedCQeg632Op3U2b58PXBu/AqaP?=
 =?us-ascii?Q?PuBfuhBxOoRe733PwwAc3o+Apfbb3znJdvJ0JsrTrdoFZqJ9e6+7Fky8u83r?=
 =?us-ascii?Q?SBifmcOijP8gPmCkxpjW0oBjArNlW0d5Q1ri6RJVmrYsIkpGn/72ff4+T2yQ?=
 =?us-ascii?Q?RofoGgfTeYz2vJMtyGyEUJThpe59QaaSgh919ec6zSt1l0yhZy1uRaVI70IZ?=
 =?us-ascii?Q?Br3RMoGJ8/MJ2sNvP5tS3j4VQ91kMimOYw0LS3QBLwbPRvtmZ/gCmu2pQB/2?=
 =?us-ascii?Q?9edy8/lMARmcknUbMG8rLShgZRLvdrktpXaS/tqLa/Y+OdP0gzUicZ5Dg8MO?=
 =?us-ascii?Q?zNe+F7o+5FpYnN455zTx2SLaiSy1E9m5Zp3cOZzDI1YyYftVTIhAHwBDNrv8?=
 =?us-ascii?Q?3uHD2wSZTda1j3mNduTUjMcZU0HiIHmCs9rM1KELPzV9tH0icwVp5qSYZ1QF?=
 =?us-ascii?Q?Jf0QdK6hvzHKFAlkIsbMeOP25kOzKp3NP2XHq5Tk3215KEu2uIJDhZPB6vD6?=
 =?us-ascii?Q?MI6lrtDGYylrZbm+a7Xz4H6Dn1tbJPb8gU6L08aDA9/dB4LhjSMbotllUWBv?=
 =?us-ascii?Q?Xv8nEEkVjIYDUfiYLQ0mjr3aMr9BX1WDGTNaDwC0B862UWT76PKfRxRuXeGc?=
 =?us-ascii?Q?nr7o+RkXNFkkaAiJMGhEkV+ARSV67/MAS/0OySoCTM0nWfwB//HorSbZst1m?=
 =?us-ascii?Q?IkYDEyTrYJA98mYZ8rG1R/LNNIRNW0QipG0+I87dwRxxr0KV0OFt8kYOCc8R?=
 =?us-ascii?Q?U3NA26F546BA/1rLOy9paK8VxTAUIMIJWxb3Zdg+/I9aYlW+e3d66nVMA48P?=
 =?us-ascii?Q?Uf6hiYGJq2mrhZBUOBozd+kfvfAu+ssm61t+V3urUCgchvgStRySE7kbVo8X?=
 =?us-ascii?Q?l1aVhFZRAc4UQNp8+A748aZ+Pnpq/RzZQsP/NlwJ0KvU+/SFpBdS+O1wfMIc?=
 =?us-ascii?Q?Pjwd+KmgBhrN2kr9icUXhMOSFrH+8zs02/2H25G6ddTlp6dcOYGHvEJOpIWk?=
 =?us-ascii?Q?XtjScFH+G+XXzTSTUbY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcef067a-a688-4874-edef-08dbb4794278
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 16:48:30.1959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +vMI5A265q2rCSwkVOZjFT6oFmTVswX/TAE7BgPvvsLbcBVGujLaryw8VWBXadGYfNwtKryuhO7xMJm4sYUBMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5988
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Enable GGTT updates with
 binder in MTL
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Oak Zeng <oak.zeng@intel.com>

Thanks,
Oak

> -----Original Message-----
> From: Das, Nirmoy <nirmoy.das@intel.com>
> Sent: Wednesday, September 13, 2023 9:10 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piork=
owski,
> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; M=
un,
> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: [PATCH 7/7] drm/i915: Enable GGTT updates with binder in MTL
>=20
> MTL can hang because of a HW bug while parallel reading/writing
> from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
> related pci transactions with blitter command as recommended
> for Wa_13010847436 and Wa_14019519902.
>=20
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 4c89eb8d9af7..4fbed27ef0ec 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -23,7 +23,8 @@
>=20
>  bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>  {
> -	return false;
> +	/* Wa_13010847436 & Wa_14019519902 */
> +	return MEDIA_VER_FULL(i915) =3D=3D IP_VER(13, 0);
>  }
>=20
>  static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915=
)
> --
> 2.41.0

