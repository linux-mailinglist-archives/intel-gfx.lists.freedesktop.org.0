Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6960D892383
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 19:42:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7372E10F1C1;
	Fri, 29 Mar 2024 18:33:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilFenPPQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2E511282F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 18:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711737182; x=1743273182;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=2EmwgVhyKyp3aF+P2oEEeSWicDrcLKfDvI4p9XYJz5Q=;
 b=ilFenPPQQ3vuBWR/R8ep8fbGURS/YmY2cBxD3IvqRzeqYvi/XSAmvKfr
 KqimJcLdH/F+BAa794AV79VsZjmCvhHWFdetjVRWwNf6tYNF8fiBMWR7S
 NgvYJTSAtHTN/N8TWQmRbkCFI7eeVZKS5usjqqzsuB7e5LKUOK77OdA8t
 6GTUBcyuLpNOXowcPWA42UctwYvT5TkS4evW1rYfrBC/fprjGaM3PGsFI
 m+8FN2tx7R7ihQH53ZdhI4z3hAkg9dwIsnKZd+lCDKz/z66eZeGlwEhTE
 EzsVhwW8eYYx7cGdS3KcMkZsl7Kqx3z6oLe4ddecCiLJHQDj5zol+4pWX A==;
X-CSE-ConnectionGUID: 421t73JYQdqjD171D7gdQA==
X-CSE-MsgGUID: hnI0ipWIRGmanbg08yZ0qw==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="18375964"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="18375964"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 11:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="21756105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 11:33:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:33:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:33:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 11:33:00 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 11:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=StAS1wekxkv+lO5djsztgqm0XQHHWAdw1p1KvKqYmQI7HsMJSCKN/eLLeD9rppjEJehllKYNDnFkJB1LmSD7wn4XjVhefQOibTNTBtomnEoGmYqHQFyZD1XYT71yPrKfTM6DLfp/GK/q6TtFYmQWiDJ3zDGqXHqggJ5fH0qMI2ucmyjoJjnZnR0dImjIbpO8A+0fYh8NqmqZgRC+EuPPjd2/qBcCMSX6ysQaDgxMFpDf1fu0sdGojsyWTlVXHUKW7e64Ov/klFz72SS0/gPxKcGomcrSFHHw17Hb0sYiW/L8/QFFsnrrLXdk9JhOHW3MPLtS4KaOlRFPYZVKzTWKXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T2Bc4jwQ70fxWPhvI2dsve09WK8ZuYrh5C+BwsVxDIc=;
 b=gw7iWkAShDnUQDkjGaBpjaDaHfAKOHfG1yUefkidYEbzfTHXD9daVDOoEcLUCYyJbQEAlRn2ZwRi0evKKjKMFW/qtJeIuFBuyWNru5ByzyS1HABuvOWIZ6sZtm5sBAheKsfzi2VhTRroNIibt05IXe63BJOse86PzMJJatIAn9OvvI9ECqJBNpPimBjDhGtN77fxx1vYTsE9KFHDNFGfWImEuRZDt+cdfBkG1DvJSRwm87alNu3w8y7U8MOCgCJect2Pnu/p6p5QQS6KU2n92/SqPmjcqIvmrDg8vh+TRH9heBpiBOoatL7161P5oBB1wMnoHnb0N2rutdX1UefDPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6734.namprd11.prod.outlook.com (2603:10b6:806:25d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 29 Mar
 2024 18:32:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 18:32:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-10-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-10-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 09/13] drm/i915: Add debugs for mbus joining and dbuf
 ratio programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 15:32:53 -0300
Message-ID: <171173717384.2604.7493201514806708071@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0280.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6734:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pnPMMBKkA2pTmPnYmxRkE4edkZPckxlCEvWkHpWF9AGXSVz2EtcifBRbkQTTvgDxDv+gGvAZpfVEmXeQElsMTksvOFE9JVPEharQUn5foV5lDHM9h86BhUMJmm5CIWWCIeE2qGL93imno6O5ha6IvcD4NY7RNHO+DTuNWjIH6t2mrI/k5bRY+YCDTiHJZGNab5/R28higD2nlc6GQ4ma6j2BMq1TVpmxBf3MefPg5qMeOHI973SpGNlh/lN816rzZksgiC3Gn2Id1WbtA4fbMjs5/HhpV8XAAmG8JVgun9cdiql0RaKzgznzBjtONws73MV24ISsgP9wmes4MOBmc1dizgACcVIJL7Q123h0Xmf5ziTh3VPc/2dSqmjx0M3/7n0d+3nVrxig/Uk4R4HGOQDVngXPR9Ncxm6nsPv5v/9TpoU/SamqhIzUSiiXfhW6AkvzDnnWhcFf3BIkxPHDtUhOYS+9VSSxsbp3gYBbfM3MMIIrrk37UeUwInOBXT+jL6f9f5lTi7m+bOOZ+xC6qxuzWVWyfOrxqetCRLQXUE/iMkfIq13T0O67fgoq157csQlHGtMUQdtBzh/Q5LU48+tZt+9KaYevBFvRsIY0yHg5sy5DEUGszgUvM6j/SDgSm8U+OTmQ291dlMMoGgzlxUgq4+XYWkcpStVZOQG4KSw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SG5CQ1ViVkRKYkFwTFZ0azVkWmxobUpQS1Vjd1R5YzRaNUo4WTJBdmZUalQy?=
 =?utf-8?B?a1pHdUxzK2NFczBkSTVLMjJTY2YwWjhSUUN4bFNSZVZ6azA1a29TOEZqbjBJ?=
 =?utf-8?B?dXFvU3g5S3FpaVRjYmZOZWgrVCtsRHByVlFGY0NEY1kvYzdoZmJIeTJkUTR0?=
 =?utf-8?B?Z2VEMGJFT1AyTEtMM3FieXJuc1Q2T2U0UXB0bElvZEhXZDJybHVIeVczL1Zu?=
 =?utf-8?B?bHpDSUNBNHZRb2I2eSt6V1pDOU04NTJpVm04cG81Z2lJbU9NRXJCZUZndkFJ?=
 =?utf-8?B?cThFcnVoTDVvZDlwU1VrZ1E2U2pjdGNOcmg2cG1ZT1FpOUxIMkVKd1RkZklW?=
 =?utf-8?B?UExOR2MyMnI3ZlphbkxPSHh3RURnS3dKSm9qTGYvU0VCa3B6aVQvTnMwd0xM?=
 =?utf-8?B?MHRIdEJWVVRRMVg2OUxUWDRhQjN2cnR1d3FmWWFka3haUzRyaENVMko3Uzkw?=
 =?utf-8?B?NEZBNldOYmphTDRnTSs2aHhiQzdFYTIzcUErVTc3Uit0SCtzNnR3VTRvNkZu?=
 =?utf-8?B?UVRiZjZvV2xVMndGTHdYMUd4L28yNGI2cDBIUGpobkpLSCtMbXUzK1I1UkYw?=
 =?utf-8?B?RFhRYXpmNFhrNkNwUTBKWTNNYXFXMVV1WHNicG0ydGV0a2s1bEFnSUVmc1BY?=
 =?utf-8?B?ZDQ5Tk45ckc3OXhEUUZ6elhEK2JhQy9UU1Y5dHpRUWpsRnRmYzYxVmRxTGRJ?=
 =?utf-8?B?UG9qUEEvNlJYQ1Z0OElyYjRWckliZFJKcGd0dVVLVWxYYVVGc1NabHhzLzNu?=
 =?utf-8?B?cU9kRG8rNVBDZm5wdWxYNEM1QTBPU2NXYStlY29ISDBINC9CcDVLaEQzT0w1?=
 =?utf-8?B?VWFCaHpJcStPQjJyWkVzUFdRU09QMXRhSzZWeE00SzNaOWVGSHBmMGNxcmNI?=
 =?utf-8?B?Qis4c29tYUwza1N0RkFSN3NxREhWYkJnUGVqQnZ1NFhBaG1DMlJicXpLbDdq?=
 =?utf-8?B?TjhRTWlBRnAyM09HMkFOeFo0aUhsQnBwaGZhbDJUY0VZbFV5RW0zT1pMSllv?=
 =?utf-8?B?VGRBODV1aUhXdVZtUmdjMWdqQ0xzR3VacTlBaGZUV09SenVDZlc3RmdFb05S?=
 =?utf-8?B?d1Z5b1ZuTWcyWjJVbW93bjdIbGJObE1ONWFXbjh5TVg3SXJ1MUc5TnU1ZDdC?=
 =?utf-8?B?TEw4aE9DeGd2Mmt1TE1VbmJPZDRHaVNwWFRJY2dlYmJFenlqcFdKeXYwUWd6?=
 =?utf-8?B?bC95WlB3NUxtcGVwQXY2T0FkQ2gzM2N4Q0w1N1BEaFJzRUJwQ2xwcXJuSkR0?=
 =?utf-8?B?RWN5NnZnVkVTK2VQR3EwNXlzWU1ncGJCZU1MaS8yT09ZTURmNjl4TGVuUHcz?=
 =?utf-8?B?RXVJMWtDbFU5WTFjYnlmTUFKUHdWeWlmSjRXdkoxRVlJb3orNzVDbkM1VjZE?=
 =?utf-8?B?VjdzRlFCMlorZkJlUXk2MDdyRkFNUXB0OENtT1N4eGs2ekNEYi9wNGZoZXRi?=
 =?utf-8?B?RFlRQ2YxQ05pVjV4Ni90VVpnUlptUEl0YUZ1TnQxMzhNUmpRQTFKcHROOW4z?=
 =?utf-8?B?N1FzSzU3RlcrSlIyQ2RyRndTcWhkVDBwSEN2WnJvNnpvSTR2bnQ4QUEvTDFp?=
 =?utf-8?B?VTM1djNlU3p5dngvNE9VcTFiYXpQVnY1L1dYVlQrbGxhbWk1OUZ6dE5YYnJO?=
 =?utf-8?B?Sm5iQ1ZzWUcxMFdSa2V6QXViQnJRK3ptNHZkOGswZm1nYlJBa1RpZzlNNXpw?=
 =?utf-8?B?OFFxNmowVkVwWTFSeDJJS0RzclNFRSszL2lPTFVxaXlDa2R2MnM1c3dadWpF?=
 =?utf-8?B?OU01TUlmM0tPOVpMK3BDUStYdXhraTJSSnpHUW9IVVUvejM1N1VmdUF3Y2pQ?=
 =?utf-8?B?NUFVSDB2QkpBbFlpS0x6bGZERkdyL2JiMkR6MGQyelJhM3JUU2luV1VBLzEx?=
 =?utf-8?B?bWFVRUVZa2g2Y2N0M0NPTGp6M1c3ODZRVTJDQmFvQ1VuZEt6cUZsWVUySkU3?=
 =?utf-8?B?WU5mQlFJaE5yelVFdmtsQ3RJb2JpVHFNRFJ5UFdmSWxOUkhBQWFRSEJiaXM1?=
 =?utf-8?B?aXNUWmwwU2ZOOWZBMzVycTBMcWhFc0gwa3pZUEw2VHE2QWlZQWtIcjBocUVX?=
 =?utf-8?B?SUJQN002ZjR0Y1ZpU1BDVHg4Z1BiUWkzVEJoeFZtTExIZ1d5eDYxay8zSE5r?=
 =?utf-8?B?Z05oeHpMVE05cHJNZlFMT0h3S2FQcU84UTYwWmRRWXBGZWxEdGZQTnpCTHgr?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25f4e72a-f6b6-4a6b-c9e1-08dc501ea7ee
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 18:32:57.8763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: STcP7CPycuHLsEL+TyFhkX7ckkBtLnRb2bENozgMBNQph2EBKwf95T8UIh6tuJ8kLaLosF4VD2KynaRRfnEJSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6734
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

Quoting Ville Syrjala (2024-03-27 14:45:40-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Add some debugs so that we can actually observe what is
>actually happening during the mbus/dbuf programming steps.
>We can just shove them into fairly low level functions as
>none of them are called during any critical sections/etc.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/skl_watermark.c | 9 +++++++++
> 1 file changed, 9 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index 7767c5eada36..a118ecf9e532 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -3647,6 +3647,9 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_=
i915_private *i915, u8 ratio
>         if (joined_mbus)
>                 ratio *=3D 2;
>=20
>+        drm_dbg_kms(&i915->drm, "Updating dbuf ratio to %d (mbus joined: =
%s)\n",
>+                    ratio, str_yes_no(joined_mbus));
>+
>         for_each_dbuf_slice(i915, slice)
>                 intel_de_rmw(i915, DBUF_CTL_S(slice),
>                              DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
>@@ -3680,10 +3683,16 @@ static void intel_dbuf_mdclk_min_tracker_update(st=
ruct intel_atomic_state *state
> static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
> {
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_dbuf_state *old_dbuf_state =3D
>+                intel_atomic_get_old_dbuf_state(state);
>         const struct intel_dbuf_state *new_dbuf_state =3D
>                 intel_atomic_get_new_dbuf_state(state);
>         u32 mbus_ctl;
>=20
>+        drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s\n",
>+                    str_yes_no(old_dbuf_state->joined_mbus),
>+                    str_yes_no(new_dbuf_state->joined_mbus));
>+
>         /*
>          * TODO: Implement vblank synchronized MBUS joining changes.
>          * Must be properly coordinated with dbuf reprogramming.
>--=20
>2.43.2
>
