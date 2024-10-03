Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED9498E9C4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 08:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F43310E14E;
	Thu,  3 Oct 2024 06:45:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvnXQAAu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78DF810E14E;
 Thu,  3 Oct 2024 06:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727937923; x=1759473923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j6n5BQ15tB3AfqzK5VrWcexpwrkdjSSP+m/5/Fx6dlQ=;
 b=NvnXQAAuGPc8MiA8mehd0KrOMwUIG//VBPkbTL8k8yY/AAftn0+tgPif
 DTRYN2xQ+BNvDV+jzTDOU6cXcQyx8DK3OYk4x3SUoV6xco4AvvkHIS+9K
 AubDvxxTBUEYX7LwMbSI6b6RNpuHqiGeYxVXFPUAulTbd61V5JwV+Meju
 d1pfZj0sgihsMnntJxODoLyeZHFvH61SXhYNpIZZ5/5GREwctndyceiAe
 AzjtkxQVPCG8rOS2dALrZzE8S+o5vEiKxco6M17QtamGfnUrEFGAuV2GR
 wijgrykJVufH/76NALfJR6FmNEl8N6OBs6Zc+q3dtevaNrMHfpzQsd28n g==;
X-CSE-ConnectionGUID: bgw6m3txR0iXdgFDmGkvpA==
X-CSE-MsgGUID: AL5yJkrlTkmgthAjA2onww==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27213812"
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; d="scan'208";a="27213812"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 23:45:22 -0700
X-CSE-ConnectionGUID: rthPllNrTxGbb3ia4qFlmQ==
X-CSE-MsgGUID: Pg1OPF4GQr6tC/vpPUSlfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; d="scan'208";a="111713699"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2024 23:45:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 23:45:21 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 23:45:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 2 Oct 2024 23:45:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 2 Oct 2024 23:45:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FqAErCUJIWBQ6OLqLtlcZisEN/MMs7MR01EaUVyo2b36cEIzNXJCYl3l7MfMOeGnKWsKvCphUZ0PqsDYQV6YWZO/D2qMuldWymA1lBBI5mNGu0fSnrXrfB/qYu/jypv8GCYD1FhvS8BG2X/N72rPPqk3GWK+I9yNGh7OnAEFmtg7BjCdHFYFF5Sp6vRW8UmleZyyu+HEL+/xTqebcu5Xg/gU2iodrBf6dkecaGnGG4YmH+50n0VCctZSwPA0Rj8DXREEB5QVK39YV1pILCYAgP5RHSOElNuL3FsdTzTOQnrPSYYk56kv4iaedTbQAwmj0xfGecyjuo3YEtAqm1ilUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NYZVeFiaEjZrD920q2CkNR6cL2yAuhBSLrpiysIxX+s=;
 b=Hfu0Ponw7swdT0gNbvUIeFFNgpWKTD7fcG5L7UsgDpZ9vvX+lr0DdNh61HxEZ1kOuj8moCzVsuOcCPSgEn1OTcGBIN9MjOmOg6J1lXSZ0PMoZWrxmCJDOEaTQBbVT69Yr0peaogiYshYxE8N7uzDsGnlBEujEFOA43thn49LclihaSpO62HALgUr1ZbRfY7VZQmj/NUboNZJ89JlP3XA5g2zVQOPiO1+wYR+ekBePkUQuthy5tizISsL92x4q0uURmgH52ke241de/uQyw57mXWi3yyyZsfdXvGcrjjRzsDMLpNkJWBAKodrKZYNgzMeteIpD9lNYdl5zRW/k2yn/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB7487.namprd11.prod.outlook.com (2603:10b6:806:317::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.29; Thu, 3 Oct
 2024 06:45:18 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8026.016; Thu, 3 Oct 2024
 06:45:17 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915: use NULL for zero wakeref_t instead of plain
 integer 0
Thread-Topic: [PATCH] drm/i915: use NULL for zero wakeref_t instead of plain
 integer 0
Thread-Index: AQHbFPdSQqEXyyL4BUmcaSD6sm75L7J0lWUA
Date: Thu, 3 Oct 2024 06:45:17 +0000
Message-ID: <SJ1PR11MB61295ADC70452548919B3598B9712@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241002181655.582597-1-jani.nikula@intel.com>
In-Reply-To: <20241002181655.582597-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB7487:EE_
x-ms-office365-filtering-correlation-id: bd6fab9e-7925-4d25-a800-08dce376f19c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?cf9+8xKbx7+iCTwLjBHAnB0zQdRg2lSLEkI62ZWJKOvBRMkvN/zaSeL+Gw1W?=
 =?us-ascii?Q?HNZPAmFM52CJ+t6VJyeiTgtwVNqfUiQlGBRTFTpld1cbdJZ8GnDCzegnJeH9?=
 =?us-ascii?Q?JrU+/xIwQIxcN6KUygQ/VPMhHaWrBJjREM9Wi9Fy9hbOCqNUPA/G2gfs2nHW?=
 =?us-ascii?Q?F45xpI1DFabEeXZSHHpfG9JFcdzeG8xoNmjJArs0CiuYXRZYS7HW4Hswmb93?=
 =?us-ascii?Q?4ozwole8EumZ6Oxhm/5gMg3uoXQ+n9RQQeQKZeOaY3QkvfIos0nfxTKqihpT?=
 =?us-ascii?Q?Nvpqb3W1B6otdRYa3Mesi0VPEnmkMzDVms+BbsOS38JNCUpV0WponxDVTgx5?=
 =?us-ascii?Q?Ls3+ZzjlATIBRuY7JirnqsUbYh1J1l9Nq1RkgReAllvSRcjJPbxKrsVGcGh+?=
 =?us-ascii?Q?LJKbb1u/pIjmwwfUmyY0G/QdLtSxuJ5dZ94C6TIs5UTkORsDKtgW+InK2QrD?=
 =?us-ascii?Q?UZf1h4Ri1dBE9Qbm/p9GjUnpRgLEgjKHvWDPtTgvVtkvL4kznNi1TUR1JGmN?=
 =?us-ascii?Q?2GpPXB8ET9CezYIKY3kKJXbDhrw8gYBfiz1zdhhERzeGE0h27VdgLcivfpqt?=
 =?us-ascii?Q?IhL6h+5lO4zU59MGR3lWfRBGiwYeNfneBVGEO5sFkqPWhDp4b8LrGj6hDzV0?=
 =?us-ascii?Q?DDMVsw/OfMECl1qG1HDrJ8xtZvXjJTj22riiHrGw8xaIxHcGNF5ZWMfs+pv/?=
 =?us-ascii?Q?kr4d4GR3S/G+qbRlM8H8LlkCyT340HTXbaL5AcE1FOsy1GukI2rmqmXVpm9P?=
 =?us-ascii?Q?ECew7VUAkwsD04bV1KHIZ0nIV4DDzXah80quAJWMEosnpq6LK2KyoBcv8Fcr?=
 =?us-ascii?Q?qWLo9jwOi64Sgzy1ieDoHvyJyEpck2QaOryx9crUqfkt4odxSU2gTTeAooTR?=
 =?us-ascii?Q?BPMkZ6bdIw+NfvkIRtZZUMlyDkuXKXAbeksA3wtI4YQnxmF+qJyuDJp5ZKmE?=
 =?us-ascii?Q?LPhAYkROmAtleUsYUEjw0YF6vIW/kyDi3h9cR/RZ4GQ/rGunTTaEyxMH8wfh?=
 =?us-ascii?Q?og/ystuO3+3BZSI37c3aMv7SWxNnsbyOOapmDoIvw9+EBMSNYFpIMRbrz1bV?=
 =?us-ascii?Q?JVNAesz8KCXgY0ulZt5Sbgzt8hZN0cBZqtIjrT6wLsGEjrrWPRx6RZRlr2MZ?=
 =?us-ascii?Q?DLvFJ93UtsW1ERdNbyzge4LDK+hgxUS1K1W6eXqY1p5VVYfIQR/QGTsqceAh?=
 =?us-ascii?Q?M2lOjZc3fRqIWtqC+MIcgss5Tzga17vZT03OpkukI/BPFDfsydMVA7ebOmS0?=
 =?us-ascii?Q?thS51hu9a7grvQWNKRwJSHKZnPiht+MRxizNxSVSTQIOn/zFhT07uIGcb3y3?=
 =?us-ascii?Q?zq+/Pf3i3+LVS/Vo8nhg/j6td6fGmiDgQ8w6jB5eQzn7+A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RjIiyWfHIcXQJ4IqEie53FP1zvsJsRUE3056W2WUxLXgjf2X+AwSP5QmDrmR?=
 =?us-ascii?Q?B4jSD0XqEMOSRTMAb0ijOgPNeOzaLLr+QlTKoOEcfJvTqwXDAY3QngyQE4q1?=
 =?us-ascii?Q?IpzejwPqTN4S3ejpiIGaibEtfEFgb0pxar/aJz56GmtOJK7QiScEdbr/MsKT?=
 =?us-ascii?Q?8CwLUiaRsWRVnBpx6tdnfk8qO+5ypYDmiwyPQnjWVHoOFBGaQNn0ROKJZMqd?=
 =?us-ascii?Q?Ks2DCC4hMDH4bG6TYujvn5qT0Q8O3TAou+usn+/elTNZ2f2u+0xxEWRQPACy?=
 =?us-ascii?Q?K2Br/fE25iMZlr2hAwdUr4ylkqTHRSXMyIkQ6QVrpfgwabrFxcUFGYjwUzVZ?=
 =?us-ascii?Q?4kmWPUEECJ6OyX721M2/Rj2dnqjneYxa8dSCVjA363jMhepiVOkdRHSbt35j?=
 =?us-ascii?Q?xohEAjWDy1NND+m5CPJTbPb1uHiGpHKZUzv31+0Qtix9VBEgDWlzQRiajbdK?=
 =?us-ascii?Q?5dVtGvPqytkdjcRgtG/u1CigTe8No9MsRqGXx90MONqbV+QC0EOco1Sx7YVo?=
 =?us-ascii?Q?yMExJ0Aw/j3D5h8F3MbRn9qdCwyrdGKJG0hhQ6k1CV4Vtjt2GfdziLR8D7EO?=
 =?us-ascii?Q?SLb7AfBaXg95DUpsfYZAO+0GX8bReSHiAyndmSz4IV0uVszfJ3vZRgu1uEYy?=
 =?us-ascii?Q?/pVxxmY2HXeUFsNI0R2BertQTMfLmftWS1COWB8uF80oUZGfDHlH/qZESQv3?=
 =?us-ascii?Q?+yPyEC4zcMVxD8fawMSVbPpgPLlUb8TdC5iH/iz+VtGSjv4P3uzJ1D0vvJDo?=
 =?us-ascii?Q?2D9ewzt0dG7Iz4jyiw7tbF4sB2nZKXYi8pL4A5k1diujOkILKa88C7uLI3wr?=
 =?us-ascii?Q?M82VA422U/ByUKXeRsEfw3DJUisyvaDgg44c59RgpWz44XTQ5q8lB0RN3viB?=
 =?us-ascii?Q?dxBNvQvzEqoqqUSQtmgKUjDyYlwjHqXBhw/qQa8ciI0t667/cjJxwLHQZiza?=
 =?us-ascii?Q?CRcQIORyiMm82YPeAnJVz/SYUl77DsM01nJ7NyCD/k9L56c5vYV99DhjQbjQ?=
 =?us-ascii?Q?nO12f1DqPfBRCAhuWo1LcUAMgV4w6+IaS6dqEBBHf2/uHqV72903JR22Id5/?=
 =?us-ascii?Q?BhPFqQlyDWvnB/i42ku2xOugPxHDcfaN7Wxn/N7hXiMCQ7LRfwyMxkbVAram?=
 =?us-ascii?Q?zbglyiKSzw7uWqiDtf8ameMslZsWpxG1ivdqUyc1hZLH7cANlDVEq5x0t2yG?=
 =?us-ascii?Q?iyEYfB0WO8Gvsdqjv+JZHiP1pqKsswa5QkU7/a22ljl7VBQuFzxnaM8JHga0?=
 =?us-ascii?Q?zH9sXNXizEuGOHAuT+uGy106+goR5ISQOnnEfeCfaQF8/O4wDy5caCc/wThe?=
 =?us-ascii?Q?Po7ccsvF/rkW7V7fy/ULbSk9j3kuBEOnG2r47lhza8bYk9kWSyRVmc4NzTZN?=
 =?us-ascii?Q?SFPyFcjf1eU2aFQIJCCeocmDz9PjtftNbDPXbR3UMsbwr+zhbdv0SpZpbyqB?=
 =?us-ascii?Q?XG+PkAbAXVPZIB+3HkJ2l4Bymf3TGZznpqGWzYfK3K812tcWQ9udo3UnRvqr?=
 =?us-ascii?Q?1X8hiBO8Mh8aEBE5sqmy9afXk5nY/YbxXPaOmnhpU98KposUf0M8Jz8N7Qds?=
 =?us-ascii?Q?ikxicjM54DG6xd0pjGz8utd3FD9qCFRpfAn3DGgreweaZNmfTJYmqElIUq01?=
 =?us-ascii?Q?Tw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd6fab9e-7925-4d25-a800-08dce376f19c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 06:45:17.8484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KiPY93LggNuh7w5H+32Y7X2M5Dr0hLgcLG8rXACD9I05KvK8bSX/oVtdk5XwcatdzB/0jI3huvyRDCKTAyF4Gy6tG8VragOC7eR5DvfHgNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7487
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, October 2, 2024 11:47 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915: use NULL for zero wakeref_t instead of plain
> integer 0
>=20
> As of commit 2edc6a75f26c ("drm/i915: switch intel_wakeref_t underlying
> type to struct ref_tracker *") we gained quite a few sparse warnings abou=
t
> "Using plain integer as NULL pointer" for using 0 to initialize wakeref_t=
. Switch
> to NULL everywhere.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>




> ---
>  drivers/gpu/drm/i915/display/intel_display.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_power.c |  6 +++---
> drivers/gpu/drm/i915/display/intel_display_power.h |  4 ++--
>  drivers/gpu/drm/i915/display/intel_pps.c           |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c       |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c            |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.h              |  6 +++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  2 +-
>  drivers/gpu/drm/i915/i915_vma.c                    |  4 ++--
>  drivers/gpu/drm/i915/intel_runtime_pm.c            |  2 +-
>  drivers/gpu/drm/i915/intel_runtime_pm.h            |  6 +++---
>  drivers/gpu/drm/i915/intel_wakeref.c               | 14 +++++++-------
>  drivers/gpu/drm/i915/pxp/intel_pxp.c               |  2 +-
>  .../drm/xe/compat-i915-headers/intel_runtime_pm.h  |  6 +++---
>  15 files changed, 32 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 74311bb9d290..2864a894d399 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7589,7 +7589,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_crtc *crtc;
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D
> {};
> -	intel_wakeref_t wakeref =3D 0;
> +	intel_wakeref_t wakeref =3D NULL;
>  	int i;
>=20
>  	intel_atomic_commit_fence_wait(state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 7b16ba1a8226..c2bc80f5bf6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -545,7 +545,7 @@ intel_display_power_get_if_enabled(struct
> drm_i915_private *dev_priv,
>=20
>  	wakeref =3D intel_runtime_pm_get_if_in_use(&dev_priv->runtime_pm);
>  	if (!wakeref)
> -		return 0;
> +		return NULL;
>=20
>  	mutex_lock(&power_domains->lock);
>=20
> @@ -560,7 +560,7 @@ intel_display_power_get_if_enabled(struct
> drm_i915_private *dev_priv,
>=20
>  	if (!is_enabled) {
>  		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -		wakeref =3D 0;
> +		wakeref =3D NULL;
>  	}
>=20
>  	return wakeref;
> @@ -648,7 +648,7 @@ intel_display_power_put_async_work(struct
> work_struct *work)
>  	struct i915_power_domains *power_domains =3D &dev_priv-
> >display.power.domains;
>  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
>  	intel_wakeref_t new_work_wakeref =3D
> intel_runtime_pm_get_raw(rpm);
> -	intel_wakeref_t old_work_wakeref =3D 0;
> +	intel_wakeref_t old_work_wakeref =3D NULL;
>=20
>  	mutex_lock(&power_domains->lock);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 3b7c1a0bb1de..3f8f84df4733 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -297,10 +297,10 @@ void gen9_dbuf_slices_update(struct
> drm_i915_private *dev_priv,
>=20
>  #define with_intel_display_power(i915, domain, wf) \
>  	for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
> -	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
> +	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D
> +NULL)
>=20
>  #define with_intel_display_power_if_enabled(i915, domain, wf) \
>  	for ((wf) =3D intel_display_power_get_if_enabled((i915), (domain));
> (wf); \
> -	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
> +	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D
> +NULL)
>=20
>  #endif /* __INTEL_DISPLAY_POWER_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index 88abc4c7cda1..ffeee9daa568 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -87,7 +87,7 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp
> *intel_dp,
>  	mutex_unlock(&display->pps.mutex);
>  	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE,
> wakeref);
>=20
> -	return 0;
> +	return NULL;
>  }
>=20
>  static void
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> index d166052eb2ce..9117e9422844 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> @@ -117,7 +117,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
>  		},
>  		{ NULL, 0 },
>  	}, *phase;
> -	intel_wakeref_t wakeref =3D 0;
> +	intel_wakeref_t wakeref =3D NULL;
>  	unsigned long count =3D 0;
>  	unsigned long scanned =3D 0;
>  	int err =3D 0, i =3D 0;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index b22e2019768f..abb82be0d0aa 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1038,7 +1038,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault
> *vmf)
>  	struct ttm_buffer_object *bo =3D area->vm_private_data;
>  	struct drm_device *dev =3D bo->base.dev;
>  	struct drm_i915_gem_object *obj =3D i915_ttm_to_gem(bo);
> -	intel_wakeref_t wakeref =3D 0;
> +	intel_wakeref_t wakeref =3D NULL;
>  	vm_fault_t ret;
>  	int idx;
>=20
> @@ -1195,7 +1195,7 @@ static u64 i915_ttm_mmap_offset(struct
> drm_i915_gem_object *obj)  static void i915_ttm_unmap_virtual(struct
> drm_i915_gem_object *obj)  {
>  	struct ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);
> -	intel_wakeref_t wakeref =3D 0;
> +	intel_wakeref_t wakeref =3D NULL;
>=20
>  	assert_object_held_shared(obj);
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 20b9b04ec1e0..cc866773ba6f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -70,7 +70,7 @@ static void __intel_breadcrumbs_disarm_irq(struct
> intel_breadcrumbs *b)
>  	if (!--b->irq_enabled)
>  		b->irq_disable(b);
>=20
> -	WRITE_ONCE(b->irq_armed, 0);
> +	WRITE_ONCE(b->irq_armed, NULL);
>  	intel_gt_pm_put_async(b->irq_engine->gt, wakeref);  }
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> index dcbfc09194b7..6f25c747bc29 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> @@ -35,7 +35,7 @@ static inline void __intel_gt_pm_get(struct intel_gt *g=
t)
> static inline intel_wakeref_t intel_gt_pm_get_if_awake(struct intel_gt *g=
t)  {
>  	if (!intel_wakeref_get_if_active(&gt->wakeref))
> -		return 0;
> +		return NULL;
>=20
>  	return intel_wakeref_track(&gt->wakeref);
>  }
> @@ -73,7 +73,7 @@ static inline void intel_gt_pm_put_async(struct intel_g=
t
> *gt, intel_wakeref_t ha  }
>=20
>  #define with_intel_gt_pm(gt, wf) \
> -	for (wf =3D intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf =3D 0)
> +	for ((wf) =3D intel_gt_pm_get(gt); (wf); intel_gt_pm_put((gt), (wf)),
> +(wf) =3D NULL)
>=20
>  /**
>   * with_intel_gt_pm_if_awake - if GT is PM awake, get a reference to pre=
vent
> @@ -84,7 +84,7 @@ static inline void intel_gt_pm_put_async(struct intel_g=
t
> *gt, intel_wakeref_t ha
>   * @wf: pointer to a temporary wakeref.
>   */
>  #define with_intel_gt_pm_if_awake(gt, wf) \
> -	for (wf =3D intel_gt_pm_get_if_awake(gt); wf;
> intel_gt_pm_put_async(gt, wf), wf =3D 0)
> +	for ((wf) =3D intel_gt_pm_get_if_awake(gt); (wf);
> +intel_gt_pm_put_async((gt), (wf)), (wf) =3D NULL)
>=20
>  static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)  { diff=
 --git
> a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index ed979847187f..9ede6f240d79 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1339,7 +1339,7 @@ static ktime_t guc_engine_busyness(struct
> intel_engine_cs *engine, ktime_t *now)
>  	 * start_gt_clk is derived from GuC state. To get a consistent
>  	 * view of activity, we query the GuC state only if gt is awake.
>  	 */
> -	wakeref =3D in_reset ? 0 : intel_gt_pm_get_if_awake(gt);
> +	wakeref =3D in_reset ? NULL : intel_gt_pm_get_if_awake(gt);
>  	if (wakeref) {
>  		stats_saved =3D *stats;
>  		gt_stamp_saved =3D guc->timestamp.gt_stamp; diff --git
> a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index d2f064d2525c..776f8cc51b2f 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -2157,7 +2157,7 @@ static struct dma_fence
> *__i915_vma_unbind_async(struct i915_vma *vma)  int
> i915_vma_unbind(struct i915_vma *vma)  {
>  	struct i915_address_space *vm =3D vma->vm;
> -	intel_wakeref_t wakeref =3D 0;
> +	intel_wakeref_t wakeref =3D NULL;
>  	int err;
>=20
>  	assert_object_held_shared(vma->obj);
> @@ -2196,7 +2196,7 @@ int i915_vma_unbind_async(struct i915_vma *vma,
> bool trylock_vm)  {
>  	struct drm_i915_gem_object *obj =3D vma->obj;
>  	struct i915_address_space *vm =3D vma->vm;
> -	intel_wakeref_t wakeref =3D 0;
> +	intel_wakeref_t wakeref =3D NULL;
>  	struct dma_fence *fence;
>  	int err;
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index a21f5a1c89bc..1a47ecfd3fd8 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -250,7 +250,7 @@ static intel_wakeref_t
> __intel_runtime_pm_get_if_active(struct intel_runtime_pm
>  		     pm_runtime_get_if_active(rpm->kdev) <=3D 0) ||
>  		    (!ignore_usecount &&
>  		     pm_runtime_get_if_in_use(rpm->kdev) <=3D 0))
> -			return 0;
> +			return NULL;
>  	}
>=20
>  	intel_runtime_pm_acquire(rpm, true);
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index 796a2dcb307e..126f8320f86e 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -188,15 +188,15 @@ intel_wakeref_t intel_runtime_pm_get_raw(struct
> intel_runtime_pm *rpm);
>=20
>  #define with_intel_runtime_pm(rpm, wf) \
>  	for ((wf) =3D intel_runtime_pm_get(rpm); (wf); \
> -	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D 0)
> +	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D NULL)
>=20
>  #define with_intel_runtime_pm_if_in_use(rpm, wf) \
>  	for ((wf) =3D intel_runtime_pm_get_if_in_use(rpm); (wf); \
> -	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D 0)
> +	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D NULL)
>=20
>  #define with_intel_runtime_pm_if_active(rpm, wf) \
>  	for ((wf) =3D intel_runtime_pm_get_if_active(rpm); (wf); \
> -	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D 0)
> +	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D NULL)
>=20
>  void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm);  #if
> IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c
> b/drivers/gpu/drm/i915/intel_wakeref.c
> index dea2f63184f8..87f246047312 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.c
> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
> @@ -27,11 +27,11 @@ int __intel_wakeref_get_first(struct intel_wakeref *w=
f)
>  	if (!atomic_read(&wf->count)) {
>  		INTEL_WAKEREF_BUG_ON(wf->wakeref);
>  		wf->wakeref =3D wakeref;
> -		wakeref =3D 0;
> +		wakeref =3D NULL;
>=20
>  		ret =3D wf->ops->get(wf);
>  		if (ret) {
> -			wakeref =3D xchg(&wf->wakeref, 0);
> +			wakeref =3D xchg(&wf->wakeref, NULL);
>  			wake_up_var(&wf->wakeref);
>  			goto unlock;
>  		}
> @@ -52,7 +52,7 @@ int __intel_wakeref_get_first(struct intel_wakeref *wf)
>=20
>  static void ____intel_wakeref_put_last(struct intel_wakeref *wf)  {
> -	intel_wakeref_t wakeref =3D 0;
> +	intel_wakeref_t wakeref =3D NULL;
>=20
>  	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <=3D 0);
>  	if (unlikely(!atomic_dec_and_test(&wf->count)))
> @@ -61,7 +61,7 @@ static void ____intel_wakeref_put_last(struct
> intel_wakeref *wf)
>  	/* ops->put() must reschedule its own release on error/deferral */
>  	if (likely(!wf->ops->put(wf))) {
>  		INTEL_WAKEREF_BUG_ON(!wf->wakeref);
> -		wakeref =3D xchg(&wf->wakeref, 0);
> +		wakeref =3D xchg(&wf->wakeref, NULL);
>  		wake_up_var(&wf->wakeref);
>  	}
>=20
> @@ -107,7 +107,7 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
>=20
>  	__mutex_init(&wf->mutex, "wakeref.mutex", &key->mutex);
>  	atomic_set(&wf->count, 0);
> -	wf->wakeref =3D 0;
> +	wf->wakeref =3D NULL;
>=20
>  	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
>  	lockdep_init_map(&wf->work.work.lockdep_map,
> @@ -142,7 +142,7 @@ static void wakeref_auto_timeout(struct timer_list *t=
)
>  	if (!refcount_dec_and_lock_irqsave(&wf->count, &wf->lock, &flags))
>  		return;
>=20
> -	wakeref =3D fetch_and_zero(&wf->wakeref);
> +	wakeref =3D xchg(&wf->wakeref, NULL);
>  	spin_unlock_irqrestore(&wf->lock, flags);
>=20
>  	intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref); @@ -
> 154,7 +154,7 @@ void intel_wakeref_auto_init(struct intel_wakeref_auto *w=
f,
>  	spin_lock_init(&wf->lock);
>  	timer_setup(&wf->timer, wakeref_auto_timeout, 0);
>  	refcount_set(&wf->count, 0);
> -	wf->wakeref =3D 0;
> +	wf->wakeref =3D NULL;
>  	wf->i915 =3D i915;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 3a40e4ece925..da3577149769 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -531,7 +531,7 @@ void intel_pxp_invalidate(struct intel_pxp *pxp)
>  		if (ctx->pxp_wakeref) {
>  			intel_runtime_pm_put(&i915->runtime_pm,
>  					     ctx->pxp_wakeref);
> -			ctx->pxp_wakeref =3D 0;
> +			ctx->pxp_wakeref =3D NULL;
>  		}
>=20
>  		spin_lock_irq(&i915->gem.contexts.lock);
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> index 380d25428bdb..cba587ceba1b 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> @@ -24,14 +24,14 @@ static inline intel_wakeref_t
> intel_runtime_pm_get(struct xe_runtime_pm *pm)  {
>  	struct xe_device *xe =3D container_of(pm, struct xe_device,
> runtime_pm);
>=20
> -	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF :
> 0;
> +	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF :
> NULL;
>  }
>=20
>  static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct
> xe_runtime_pm *pm)  {
>  	struct xe_device *xe =3D container_of(pm, struct xe_device,
> runtime_pm);
>=20
> -	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF : 0;
> +	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF :
> NULL;
>  }
>=20
>  static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct
> xe_runtime_pm *pm) @@ -63,6 +63,6 @@ static inline void
> intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_
>=20
>  #define with_intel_runtime_pm(rpm, wf) \
>  	for ((wf) =3D intel_runtime_pm_get(rpm); (wf); \
> -	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D 0)
> +	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D NULL)
>=20
>  #endif
> --
> 2.39.5

