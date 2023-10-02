Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D68C7B5539
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 16:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF49B10E2C8;
	Mon,  2 Oct 2023 14:33:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0917710E2C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 14:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696257215; x=1727793215;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7/a/rhxxQ8xfgr+R/KzoHAWLe4gWO0jZQvj8jIzAb1g=;
 b=kIwdw9bihfwcfKbZZ91cl35y+pa4o+v0D4CpvpyF9F5a5uSrerW1+8wf
 EDjnySYSRPkZ8vc4Bb5yoTl6ivbvritpRgVWx7SJCq69U2XqIlHxVXC7d
 esDDIvD68VZRU+9msgg8+mYC1MzDScyOC6fRY5VHhQitFwTDHRxeyyBb2
 LdW+ZWQagYqc6K0JztFEVVe1b6GoPia1nmjczKn/SRXSQCWHItFzjUH2B
 rfWgqxDBxeoBp9vErBly8F6I3NeufBKP/4bRoUHpSa7UWyFE4EQ+rLIjN
 siyxqE+m3gjSCA2OQLjVo0DApoeePTaM3kuFqgzGdfK1aFRVHSeFg9hGm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="385472569"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="385472569"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:33:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="779940863"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="779940863"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 07:33:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 07:33:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 07:33:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 07:33:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CEy7pxjXJh4ilLFwAmMxwpdekMRhUx98ESdN1zWlZhfJ4KUmeKke706JY9yCMlUvUAI38wSoxnTIc6ljE5l6AUw7MYFQSEQVmpVJlgVo+Afd0T4I4GiPSS3PYcBgu/lbc/R7vw+3fIJL9ReVXLN/LJ5sQSf0bfEHjVMXxKBJ4SzobPt/16/6qCAQkLqQ1lqwLu9xg7gCQZ6IEulKoDyxXy7vKL50fz68g5MPsyaTC54WXBMXDtFR4Jwhiaab+MLf21fTm/oZ85leuKz7zni1dJ+5wbZIBY05mp1stGGRq77Vrw3H6+JSPIbGDKzZhSPSHarUXN5U9bNiSP3Src77wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MZRnbg8Bv8mRtkLHqhaCIafrYKyi+ObAdgeUKs/uoR4=;
 b=VM2nxJXAmZjgOd/Fk45DXGkFl4XvOFZArvQDoPbhC9Yg3DDqtpTGYCFkQ9pCTLKN2sLLQ7fdTojo8fert3iAX6NwzLcyF38OFOcICI0+V43w2KoPHi72cte+5t8sjRWzdpCF+b9MdZA6kZxDOiFAMeDqXmVjzBsw52r0JsxDNdSAM8stuIEPWJl+wB6hvu5z8vUZZCysPhKiy/H2Z4QmQMYR8L6BaUx0wDtoG9/OS0hjHpyRY5g02fCxul470sqRdGaQBWPx/DxFj+Wqbk65pL/gQxVBdo1MmcXghxhPnckc/Sj/HH4Rz3rFjJ+OPsSkNYPr6iD6WqtvqPuCjrgckw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB7168.namprd11.prod.outlook.com (2603:10b6:510:1e9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.21; Mon, 2 Oct
 2023 14:33:31 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.038; Mon, 2 Oct 2023
 14:33:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5319364f4c9416fed218382d020a57c5b0a17bee.1696236329.git.jani.nikula@intel.com>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <5319364f4c9416fed218382d020a57c5b0a17bee.1696236329.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 2 Oct 2023 11:33:26 -0300
Message-ID: <169625720683.2047.190738289576454829@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0070.namprd07.prod.outlook.com
 (2603:10b6:a03:60::47) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB7168:EE_
X-MS-Office365-Filtering-Correlation-Id: 74afefc4-134e-4bcf-a040-08dbc3548ca8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 557p85ebtkpOAv2PACXV+gigPLw8WyQz7BLMlgYqA2jsCqU/QN6Kna7xpEDG6asxOOtAxnspDT4naBSFuGflTQf8tW6Pzag2CsbQK9jnAzLg1SqR5D2w8CdWEQIj47Tgy2aHRZ9hyFFFqAPYzVcHlYY9PpL+LHGm4++xFKi9DYNrb/XeDwf9po03h9iC8gvpJ4hirJcTRkguG2+4mcfmX0mS05pDsHL1TAUv2Si/s0ggg+v/qimRYbrJs2q/kRxfgl8+yIIJc1U1Sm9ZftejRiS70RSgOHIZzco8NnS1LlKtvY1DgkIPEeLRopEO5nUxzSpDHYaqb4M8By1yhWUwtMRc/UtNpKF72L4gzxg7zG+/ddN4ON7+i3wv0YZeHfzqj5Ltnw1pEV2W7uGFUu1bXUy1GFxJk6B3WM9dv2FaDX06BnuHpf6M3NMtNsE+2D2licXMQkti4fULx8wgrZHz5aCfw5xftJAA6ru4ZZs29Lgl+6XgcYhzHJFKyxV/QWV6P5fGZmzzwdHxCbp/LPUSbOZEfZhVmVD9vlK82Pz7zG2jJ73+bcyEzor51SRSD7It
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(136003)(39860400002)(366004)(346002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(478600001)(6486002)(86362001)(82960400001)(2906002)(9686003)(5660300002)(6666004)(6512007)(38100700002)(316002)(107886003)(41300700001)(44832011)(66946007)(6506007)(66556008)(66476007)(26005)(4326008)(8936002)(83380400001)(8676002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0pOSkY1Z3JZR2lXWnVJTzBYaEwxN0U5cHdGMVZkUkQ1TGwzdzhEVDlrdnZm?=
 =?utf-8?B?U2ZNYTJvMWhadFAxYm4vdEJFQm8zaVk1QWhUbGd6OEF5Q1I5UU5MeHBqcTZi?=
 =?utf-8?B?RGZ2YjNxOU5jTzk2VnZrKzlucFlORnZDVVV5cUZJb1VxVW1nNXBFRTdnOGgv?=
 =?utf-8?B?aTAwcisrS1lyRnpCbFh6bXUxTXNWKzV1S0dtM2psSjJpNS84UDJlV0pocC9h?=
 =?utf-8?B?K0Z2c3hKM0xWakdxdVFoTEErNXIyVVMycnkrZzlnOFR3UGo3VWlUL3Y4eVVB?=
 =?utf-8?B?MDBRNjBBQXVCd3FmaU40YSszb005L0hmVmFBMXcybm1kRUZrR2dUUlUzM0dM?=
 =?utf-8?B?eDJtK3U2QkVzVEE5clZRV0pLWVh2azlVNlBnQXNZcUtYd2wyTXAwc25ZeDg4?=
 =?utf-8?B?cmZzc01KRlFqTFZwekIzaGs4N0gwYk5vRWdyQlRaTk0yRjM0VWVOM01zQ2tr?=
 =?utf-8?B?cmh3dFdrd2xhZ09Gd1RQODhaVDFQWi9icVUwZW5FVEF5eXAyVEREelg1TWVP?=
 =?utf-8?B?N1FiRnpjdk1XWUtIRkdFYktpK1R4QnZJcERvRWZYaVdRSmtMZGtjajR1V0hK?=
 =?utf-8?B?L08xdElSejg3aUpSMS91Wm9nenE0QlZPQmgyeUdSK1Y5WWo3MENGSEQzZjBj?=
 =?utf-8?B?NUZjK2FGMCtiQTY0RXZpM1JTbDVmSXNqVi83aTF0YnVTeExzMThXeU5jT281?=
 =?utf-8?B?N3dXWjk4dm83U0pNS0ZPSHU3SWRxOURvblNaaDJyK0FHb3ZVOURnUzFVMi9Q?=
 =?utf-8?B?ejlQOHBaTENQYjB6Z1RMd1huTnZDa2h6OGU0UnRDaFhtQVhaaVZwM09qNnAy?=
 =?utf-8?B?RmNDaTV4YWM0cElhdVRpRUswMFlWVnBsMWpYWXFoblNYZFpnM0tOTmNWOGVT?=
 =?utf-8?B?bTJBSVNkTDFzNmFCSDg0dFFJdFJQcUZmSUdWTnJEMVNxeFFiazFJb2lHYllj?=
 =?utf-8?B?QnRKNlp4SVRSc0o3SU9HMGwyZXFvSHJYZkMvOHRDUkg3RkFxSWdIS3U3UmFv?=
 =?utf-8?B?VnlrSXpqQ0oyUmt4djg5Q3d2VFhqUDN1REpIWDUzRUduUnhHcGY2ZWYvb25O?=
 =?utf-8?B?L3JWTzBDb29Bb2tiSXV4VEtDOEVzOW9VaGJObitacDVMdVF5U0g5QmNBVld6?=
 =?utf-8?B?NzRqYXF2UEowOTZkSE1XaVB2SmN1azkrU1RuMUFUQ1lUY0dNYWo5M05KWm5I?=
 =?utf-8?B?ZGRKbG5rd2lnZXMvZ0tYekZScXhscm5BMmlVaEJ0dGN6eEE4U0kyMWJUT014?=
 =?utf-8?B?b2ZiSy9tSUV2cTgxMW9JbldKWFZoMUwxWm05ZkdSRk16bTBXdjNyeHBlaXJY?=
 =?utf-8?B?QmVtcmQvV0E2ZEZNam83dUs3Ukl4WDhCTWl6ZEJvSUEraStVbzl2T2J2Nytr?=
 =?utf-8?B?My9nQmhxSlBNdXU4RmNUdnFxZjVjZEpMM2hWV24wVURkcVBiWEpHVEwweW1W?=
 =?utf-8?B?YkRRdlQ0ZG9oSXU1cENzQ2tMRERzUEVmc3h2RVpTVlJsNzl5cEtHTUY5TU53?=
 =?utf-8?B?c1Nackswd3E1RUgxaEdDbytsL3ZxclI2eVNFSmg5dmhJYy8vNXl1cnpMclFa?=
 =?utf-8?B?dlp3amFyV1ovUUVwNTk3SHZaVGNtZ2tTWGRGTXVCcWUrTXA5eERjQXZic3pJ?=
 =?utf-8?B?L1RmSkNabVQ3V1RyYlVZSEh4bElDZjRWZCtwS1U3dDNMMWhteUdvVVhFNDJq?=
 =?utf-8?B?MmVRb0dLMCt0NWxVeTJ6aUNnWUxVdUIrSGRjeHZsb0V3Nm5XdkJ0dmE1b2dj?=
 =?utf-8?B?ODJKOTQyZDF3S0JHRElQdmE0WnpZcHR2bHNRV2REamdnV1d2cnVLdDBka0c0?=
 =?utf-8?B?Sm9JdzF5NkJTcnd2aUR1RUQ0cy9GWDRDdHhpRWhPSXgxN0ppTDV3QkNyNXpz?=
 =?utf-8?B?ZEdHWnBXVVRkOFVDNlpLSDlZUk9nTlRLUzkrNndIQ2t0czlOeUM2alErWUZj?=
 =?utf-8?B?Qmw4UWhmSUpLNlFkcVNxSWpXNmFYTlU1enlQYnRVSkRsUHRVbUJRWnVoQnNE?=
 =?utf-8?B?bHJsY3RycXU0M1V0dmpIMXNiRW02SnpsUEg1b3N4TTBYTEQzY3JOQys5eW9B?=
 =?utf-8?B?WXVIbmRUUFF0dVk4OUVLdWUyeEN2RE4wUGNLQ0dOaFMzTk1KUUhhbFBLMXY1?=
 =?utf-8?B?dzI1SmNwc2JPY1BxanhEaDVWVGo2VmhLL3FCdzV5QkpoWUhpZ21YcjJHUjlJ?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74afefc4-134e-4bcf-a040-08dbc3548ca8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 14:33:30.9466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nGE48Y94WmKQRNn0dxpprZE2FnaF5R9ccCDDhKaCkdOc0YlrMODN9YoikadHerbJNBOhVJnQS9KPZ6EC65knuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7168
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: remove i915->gt0 in favour
 of i915->gt[0]
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-10-02 05:47:04-03:00)
>Since gt0 =3D=3D i915->gt[0], just drop the former.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_gt.c               | 4 +---
> drivers/gpu/drm/i915/i915_drv.h                  | 8 +-------
> drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
> 3 files changed, 2 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/=
intel_gt.c
>index b293ace6745d..ed32bf5b1546 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>@@ -68,7 +68,7 @@ int intel_root_gt_init_early(struct drm_i915_private *i9=
15)
>         if (!gt)
>                 return -ENOMEM;
>=20
>-        i915->gt0 =3D gt;
>+        i915->gt[0] =3D gt;
>=20
>         gt->i915 =3D i915;
>         gt->uncore =3D &i915->uncore;
>@@ -928,8 +928,6 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
>         if (ret)
>                 return ret;
>=20
>-        i915->gt[0] =3D gt;
>-
>         if (!HAS_EXTRA_GT_LIST(i915))
>                 return 0;
>=20
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index a1cb16afa46d..d04a9c32c44f 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -317,12 +317,6 @@ struct drm_i915_private {
>=20
>         struct i915_hwmon *hwmon;
>=20
>-        /* Abstract the submission mechanism (legacy ringbuffer or execli=
sts) away */
>-        struct intel_gt *gt0;
>-
>-        /*
>-         * i915->gt[0] =3D=3D i915->gt0
>-         */
>         struct intel_gt *gt[I915_MAX_GT];
>=20
>         struct kobject *sysfs_gt;
>@@ -384,7 +378,7 @@ static inline struct drm_i915_private *pdev_to_i915(st=
ruct pci_dev *pdev)
>=20
> static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
> {
>-        return i915->gt0;
>+        return i915->gt[0];
> }
>=20
> /* Simple iterator over all initialised engines */
>diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gp=
u/drm/i915/selftests/mock_gem_device.c
>index 7de6477803f8..af349fd9abc2 100644
>--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>@@ -114,7 +114,6 @@ static struct dev_pm_domain pm_domain =3D {
>=20
> static void mock_gt_probe(struct drm_i915_private *i915)
> {
>-        i915->gt[0] =3D to_gt(i915);
>         i915->gt[0]->name =3D "Mock GT";
> }
>=20
>--=20
>2.39.2
>
