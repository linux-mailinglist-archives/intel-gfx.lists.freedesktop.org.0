Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE52762BD8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 08:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93AC210E418;
	Wed, 26 Jul 2023 06:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3B210E418
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690353993; x=1721889993;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2XC6i4fjhw7kOKfKCpwaNbga/2X+oolPCxh0k+3btrg=;
 b=c/NojSvDPn7hz8PGicTJ0TqNRAsbxuTWLrTUREQhL5dJgWoXapijUn2g
 LqgB4eXMu7h7xg7h1VXwGKG2EaEyKmbxZNdrEoa5VP9IM+1uOOcT2WnfB
 udamezGg7aokFvCy/bi1XEs1SQLMUDj9A6QEgrO/fwtHyFgoQ1o4uSq5u
 fgUWmclEkh/k5nzN6+ERvTZfPE9mgY1APVCUghsNxdHDEDFqQy9J4g3bd
 DcNWCCLDHWtoCaienOUe1qU/iL+BPmPc0aTFVnrd5DYbHx4iTFNa/qm5f
 QXCa5XKQeIBbezIw/RmCgxsI215LjWS9TYDpkXNpzyocHq3w5Nt+QMCRP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="348205847"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="348205847"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 23:46:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="900283291"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="900283291"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 25 Jul 2023 23:46:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 23:46:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 23:46:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 23:46:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 23:46:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+L28J6oCbB/Refh+WlxyfZ7wWN90IKfbhio8kKIxzcZoLRKbiIxY3HjWAts5YqQzqAdYip3l/Yac8nWVipj4ktmJVk5sNCEm4ev+DRsHWNqrKgw393K2EoVPmeIsom2NIvTP3/tAlUKL77k6QquuBPYMN4yOeuLJNeshfbZAEHC0XrbV18H5zbAAWQ1uqpBxRzSF605T/XVPpKov8ZI30lcNlB/ZsV9wdkuO7hUemvVRuT8ZPh6Zu5tp5xTO0Vw5gXaeHudrvUEOlX6IA8b0IgxqCRFqAHQYmR45ijavZMUFKb7dW96GJWZro/sHUZq2QJGbX30t+X5oiRz4ZffkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4Zp/wNPn4DIxwqnwhFfyvkjqHPTfsLn8IZorsA1y2o=;
 b=Q4LGJydtIhsJlddWTO1SlbAWyOR6KnyDS/4DIBy03GTEM2eGiSMncgoYMRxjLy4r4aTj6xrIUGmXAo8I0L2kN4STrQATyaC9r0/zWMEqsDtKB8OsNcCKzFF3aS1cTDCSgiJfTvcEfXBKWq1O9EQ/adi0X8BDXuL6qyoB32Yznta8ZM4c8+yw0tiC8/aBzr1xkD9wMhmy55XzYzynQZBGyViyYPGbdP9i68eSz1k62272YYibLrulV2J1lsyo/fHEUjC/YqtX77YXqMc959E1MegY6ZbPYSkcm/7OfAjpsYycWNT23p058yULDCqr/wurVTYcFHqL3JaxhS916Fwy+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2574.namprd11.prod.outlook.com (2603:10b6:805:59::14)
 by SA2PR11MB4793.namprd11.prod.outlook.com (2603:10b6:806:fa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Wed, 26 Jul
 2023 06:46:29 +0000
Received: from SN6PR11MB2574.namprd11.prod.outlook.com
 ([fe80::1eb5:786d:f6a8:4d9c]) by SN6PR11MB2574.namprd11.prod.outlook.com
 ([fe80::1eb5:786d:f6a8:4d9c%4]) with mapi id 15.20.6609.032; Wed, 26 Jul 2023
 06:46:29 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH dii-client 2/2] drm/i915/gt: Apply workaround 22016122933
 correctly
Thread-Index: AQHZvxJXYScJNZIENEKNSMdqxYXnBq/Lmkcw
Date: Wed, 26 Jul 2023 06:46:29 +0000
Message-ID: <SN6PR11MB25745001F29441CE1BA33DAD9A00A@SN6PR11MB2574.namprd11.prod.outlook.com>
References: <20230725160145.1486613-1-jonathan.cavitt@intel.com>
 <20230725160145.1486613-2-jonathan.cavitt@intel.com>
In-Reply-To: <20230725160145.1486613-2-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2574:EE_|SA2PR11MB4793:EE_
x-ms-office365-filtering-correlation-id: 131ee845-9ca7-4de3-a9e4-08db8da40a66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M4QM0bn2iyQ5iZZMWm6S0yEh2also/PwriAvBA1g9085FE1cZD125ldmVdAZBommnxwWzIcJYoCPyf6qDiFF3yb1bY5sAIWFfEqmBey68YTVFsu8NucroSAilS9zlWLiEmOsYyZLIfspQp17SQWT95YkpVscFxutTVBDl3HzaN09dGRenvFWhTWLQz5FJ80AkzrRc68TVdfR9lOtfX52SNoGuFFit7tnhciqozuyOo+90Ridyx9u/ZS/2DigsJM/NkhVkmrad6hYvSvpg0NPRIBHnu2qTl2mv3/p0v7HKwpGD16QxRJ0HcOWI0I7MMlXaD4lKMdyI9ZUJ7qH9xKQA4bAt6nUvx5VRsXrvtRpIpcdmpahCSQiOwl3ZccC8sGSPalmf/m2B8D+eud0uYaB0N0jtXFwhIIOtmd8gVD3AxgEMR6HDhMUwW6dGkjliULpRpmIR6AaVz3oNVoujZ7Po5gDHX7n9jY85tX35Uuvciwp4TC4xPjEN8J7VxeqHuCVrwg3ETM23hzh6Oa+oWWDYfch8cgFOX7ekxnbq/0Mh6SBCMaiEck62PYSoxkgdytgHbTZ0F4oPP3bm65ykc31CNyHpbX0LOeCnUEcfqH7qiiyMjViesi4/T6I+FTdBQjS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2574.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199021)(41300700001)(316002)(8936002)(38070700005)(8676002)(52536014)(2906002)(33656002)(86362001)(55016003)(5660300002)(26005)(6506007)(9686003)(478600001)(7696005)(82960400001)(71200400001)(83380400001)(186003)(76116006)(122000001)(38100700002)(66946007)(54906003)(4326008)(110136005)(66476007)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1puoolGO9WG1/3+KYMQHqprJYROsqD4sguxbwuMYGyj48VhEQ1VnObRvt5wq?=
 =?us-ascii?Q?fE0RX7k76pshBQjrQfY9S7K1YClHqIV88ZrabzIYeXRNHoGd1JYW3y2Z57oP?=
 =?us-ascii?Q?U0phvibDgLCV1p+vHJcMnh4MXNg7KA08I/Vjv+zquLCj30kQ8wTcFq6E6u8n?=
 =?us-ascii?Q?sq00pVyfNm6QDoQbl26b5X8xBgd/8/te8EkQ6OhdYVZEcz0q3ZwmouYzQGOQ?=
 =?us-ascii?Q?2UECEfoPN5fTOZGMu1l/UHHDhD7itzvxa7R4rjd8SKigroPQmncp0rOS0D0H?=
 =?us-ascii?Q?SB3O7OQLtT7WyjXym/6J3wrHXz63uzqCACpTi76PZsMM49VxHc74gy5XiSuW?=
 =?us-ascii?Q?owi+8HfR93TMxlatR1U4prUmlwi8spk/gLBiV9umMy6lmKu5osT/UeIvnnKs?=
 =?us-ascii?Q?sgCZr0abplhFbM1L/JyH5z933DuV0D8ZfeLFdrvpdtNWe7wshPLDgkC0px5r?=
 =?us-ascii?Q?rNqfIj8m8NqHcz7IRMHqwHZYHKo2YQR1jAz2xbQW4y6B+ty5tVoRrOaRF2a8?=
 =?us-ascii?Q?E6yWxkR7DpeQqOSH+QAKsdx3AWn2vHfhU27WZTlWxn17XSF+5bXzXo4dzsFO?=
 =?us-ascii?Q?8AhJIM45WQGUip+y1SI3ejZ+noYsJ0DkKe6YVXb4Cp6ChJbw8VMSlF/riTj1?=
 =?us-ascii?Q?MNnTRs3NRNGlnG7XK4/PPHkaqMGEUaEPARD1d+sAVoN6VVeWM1I2YfVJ15i+?=
 =?us-ascii?Q?p0MeMOXoNslZzo7X6AfRMCvrUxaDzjhoWpJJhN193DaskyY4TekDOQ3HavwS?=
 =?us-ascii?Q?xXxICDUG6amt2GYNbtfowYT23su7y8HOSHd3428YURSXil15z/d9yv3B03eU?=
 =?us-ascii?Q?QiMVGmfH4nJRrpJRIpTrSgCPo5437OT6li4fjYn5vHWqrx6+sxmmLuzKnaMW?=
 =?us-ascii?Q?8RywOxmKu1a3WjSh5nIFfsZMhNb0KxiYzOOW4sT8AFknL7/2j6ppM18A8gKh?=
 =?us-ascii?Q?h/Pzqig81bW5ZO08f457joAI3NPy9X72tYdEZ4XC+fiEJUF6Bwjotpi9sASf?=
 =?us-ascii?Q?SeX8biG2fO3JtKxBYt7KJfnxUSwn1fJkqYXxc090J73OEUlXOyfz7jpterDH?=
 =?us-ascii?Q?I4VHxlPrmuemmJrtq3cNdlu7Q/IfwABzvd4jz69q+piK9IMKPgLacW3r7XJ/?=
 =?us-ascii?Q?2ee/jqYroaeaxiuRBHCDVJgKgmBphCC5tpAFngKrLKQe6vYexTvtBXFxLBoX?=
 =?us-ascii?Q?HE1PF2LhnypJ5N5oGs8/MODGS1oDb9ddnJ2EbjhUfwUh0b2yneM5wQBCc00R?=
 =?us-ascii?Q?WAm5GyGxdAJFrqglYnteiDoTpeSY3wCTwbMw+2VejDxI4uMMQRyLZcgzJ0q6?=
 =?us-ascii?Q?CseosNSFvZbyLCto6Q9KNsbGWU0DUfKtsC0drffvNaKNuSPj73YJ2wY81F6Y?=
 =?us-ascii?Q?dtgQM/OF1O1n8EKrskjJlx4F+fLNcJCGwsrANlmLo2dHrT86wVpaMscE1meH?=
 =?us-ascii?Q?Z+gwCKG2FJPKy5SrZLnrUsTXw/WjSgZhJO0SiHSD2y4Gq09TqEzYQcER5Uz9?=
 =?us-ascii?Q?wJquJS2tOJr5UTHWNBqolNBLRO6C7kQzSTTsBeiatwN1yKKBfliAh6g/W7U/?=
 =?us-ascii?Q?TPrwh1LoddMryYvHcX4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2574.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 131ee845-9ca7-4de3-a9e4-08db8da40a66
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 06:46:29.1515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O9kbkUZ3UM7N6We3AXKm7adSvr80CxioFYDBZByREbJ9ISlSu4OVAgcFMDgYSBllGFPrXrKPkexCif6FufDxQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 2/2] drm/i915/gt: Apply
 workaround 22016122933 correctly
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Subject: [PATCH dii-client 2/2] drm/i915/gt: Apply workaround 22016122933=
 correctly

Remove dii-client from the subject.
Otherwise LGTM.

Acked-by: Fei Yang <fei.yang@intel.com>

> WA_22016122933 was recently applied to all MeteorLake engines,
> which is simultaneously too broad (should only apply to Media
> engines) and too specific (should apply to all platforms that
> use the same media engine as MeteorLake). Correct this in cases
> where coherency settings are modified.
>
> There were also two additional places where the workaround was
> applied unconditionally. The change was confirmed as necessary
> for all platforms, so the workaround label was removed.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c        | 5 +++--
>  drivers/gpu/drm/i915/gt/intel_gt.h        | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_lrc.c       | 7 ++++---
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 4 ----
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c    | 7 ++++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 4 ----
>  6 files changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt=
/intel_gt.c
> index 6faf1dae965f..207bfc0ff939 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1139,9 +1139,10 @@ enum i915_map_type intel_gt_coherent_map_type(stru=
ct intel_gt *gt,
>                                             bool always_coherent)
>  {
>       /*
> -      * Wa_22016122933: always return I915_MAP_WC for MTL
> +      * Wa_22016122933: always return I915_MAP_WC for Media
> +      * version 13.0 when the object is on the Media GT
>        */
> -     if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
> +     if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(g=
t))
>               return I915_MAP_WC;
>       if (HAS_LLC(gt->i915) || always_coherent)
>               return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt=
/intel_gt.h
> index adb442aaa522..2444ceb42b1b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_GT__
>  #define __INTEL_GT__
>
> +#include "i915_drv.h"
>  #include "intel_engine_types.h"
>  #include "intel_gt_types.h"
>  #include "intel_reset.h"
> @@ -24,6 +25,11 @@ static inline bool gt_is_root(struct intel_gt *gt)
>       return !gt->info.id;
>  }
>
> +static inline bool intel_gt_needs_wa_22016122933(struct intel_gt *gt) {
> +     return MEDIA_VER_FULL(gt->i915) =3D=3D IP_VER(13, 0) && gt->type =
=3D=3D
> +GT_MEDIA; }
> +
>  static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)  {
>       return container_of(uc, struct intel_gt, uc); diff --git a/drivers/=
gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e5a83d4932c8..9f0a2d828a2a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1095,10 +1095,11 @@ __lrc_alloc_state(struct intel_context *ce, struc=
t intel_engine_cs *engine)
>       if (IS_ERR(obj)) {
>               obj =3D i915_gem_object_create_shmem(engine->i915, context_=
size);
>               /*
> -              * Wa_22016122933: For MTL the shared memory needs to be ma=
pped
> -              * as WC on CPU side and UC (PAT index 2) on GPU side
> +              * Wa_22016122933: For Media version 13.0, all Media GT sha=
red
> +              * memory needs to be mapped as WC on CPU side and UC (PAT
> +              * index 2) on GPU side.
>                */
> -             if (IS_METEORLAKE(engine->i915))
> +             if (intel_gt_needs_wa_22016122933(engine->gt))
>                       i915_gem_object_set_cache_coherency(obj, I915_CACHE=
_NONE);
>       }
>       if (IS_ERR(obj))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/=
i915/gt/uc/intel_gsc_fw.c
> index 6efb86c93bfc..52652a0350c6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -284,10 +284,6 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *=
gsc)
>       memcpy_toio(gsc->local_vaddr, src, gsc->fw.size);
>       memset_io(gsc->local_vaddr + gsc->fw.size, 0, gsc->local->size - gs=
c->fw.size);
>
> -     /*
> -      * Wa_22016122933: Making sure the data in dst is
> -      * visible to GSC right away
> -      */
>       intel_guc_write_barrier(&gt->uc.guc);
>
>       i915_gem_object_unpin_map(gsc->fw.obj);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i91=
5/gt/uc/intel_guc.c
> index c0fa9d232205..63bdc000d76b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -745,10 +745,11 @@ struct i915_vma *intel_guc_allocate_vma(struct inte=
l_guc *guc, u32 size)
>               return ERR_CAST(obj);
>
>       /*
> -      * Wa_22016122933: For MTL the shared memory needs to be mapped
> -      * as WC on CPU side and UC (PAT index 2) on GPU side
> +      * Wa_22016122933: For Media version 13.0, all Media GT shared
> +      * memory needs to be mapped as WC on CPU side and UC (PAT
> +      * index 2) on GPU side.
>        */
> -     if (IS_METEORLAKE(gt->i915))
> +     if (intel_gt_needs_wa_22016122933(gt))
>               i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>
>       vma =3D i915_vma_instance(obj, &gt->ggtt->vm, NULL); diff --git a/d=
rivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel=
_guc_ct.c
> index f28a3a83742d..97eadd08181d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -960,10 +960,6 @@ static int ct_read(struct intel_guc_ct *ct, struct c=
t_incoming_msg **msg)
>       /* now update descriptor */
>       WRITE_ONCE(desc->head, head);
>
> -     /*
> -      * Wa_22016122933: Making sure the head update is
> -      * visible to GuC right away
> -      */
>       intel_guc_write_barrier(ct_to_guc(ct));
>
>       return available - len;
> --
> 2.25.1
