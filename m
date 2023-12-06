Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6D180707C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 14:03:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D129810E73A;
	Wed,  6 Dec 2023 13:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A6910E729
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 13:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701867802; x=1733403802;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=VRzuf7v9wbSgtZSR0xTXvs4oFuzbKTlfoUsPADUocJc=;
 b=OVSzHX6TDAcPwY5sSLpihVHChQVQalDmVdENodjgoJg2zy0E4ZpqqxgP
 79PBSVpwSpO3/Euy1KSIGO4DIX2u6DbSm4A8xj8jgJW05sHrnBvYk35Rz
 AUJrVyNhf7DKjZZS/6pYXZiZK4sRr/QOsD0+wHcdSSznBNuFllF5PtKmN
 IVbhvwW4jWS8irJKOJRAwabs9DiTSMMEsqBNvyg/+ppLOJ89y4R/DFr4i
 H5LA7Dv+PvwbyZENsvE9DM2TxgAsKZKvEjGX92pNNHiuC+WfqPaetAeQx
 r0h1aB1ID6QHpvqNbBgkwcAeJeu/fDAM5lv8q9WiPrXMdnapXNzUOn/2Z g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1124741"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; 
   d="scan'208";a="1124741"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 05:03:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1018565763"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="1018565763"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 05:03:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 05:03:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 05:03:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 05:03:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 05:03:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Va0TkUzmg7Pb97m8v6db3GkExokdyLdAxp5I7+KnpfMGnXm5YHQDjScgJ2tlLPs4KSlmF8LeK5arwrnJvgsOiw3lLemTMtJy3wnQRDu0UqiGfb88+L8CoFSbu9YO9VkZwW9hq8hnW138WxT2r0/OzEulRYFvPNykqj/YCKl+mCJxwiZszEZhSUD3uIxqYFAqw8W/mDPOxcBqhXwDRDgKcKljrGhfldTu73b7sLsLfZdNA9zB8n3ZAV8WkLgPC6c+BkiXdJZB6aM96lxJDLMTgp2mlhjqG4IzqjAu8jfEJnhLFMAm/hlBPwoMstbt6oamytQzZ3QwpqGEncJYMB0fQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OwObXcCI6jRK78Xv1O05EL58K9Um0WZrs+qzhTwNlJo=;
 b=QRCa1b++f7YgnmGnPsg1VD7pUS7PKRV5NdSqaN8qIHJGSXL5MmnF+/CLRQXyVORXhVKUXWfX8VGuxgTX1s5DsYmMZRMfg7EQEUXiKftSbL3IfqPon9TrXf0H4TTqCazqpl0m+3AxznACakjXbm4hTrKOQbYEEK13+EJkW3no2qXov7zYEKB+LnR9kp826uFwYN5AWKfoOVYoKa7NKrhLsWKGE8GYOvqqlX3ucxq0Xkm7DHuyWOpy6rfRkGAv3CiuFvKQxaHWX2TucjpKk9y+XXzs9HlJX5n42wEII/K04NpgVghc8B0cLcBHvyXRSypzt5Hc9ANDIkWHdc1VCYVRbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MN0PR11MB6278.namprd11.prod.outlook.com (2603:10b6:208:3c2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 13:03:12 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 13:03:12 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231205121545.2338665-1-jani.nikula@intel.com>
References: <20231205121545.2338665-1-jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 6 Dec 2023 10:03:07 -0300
Message-ID: <170186778710.27709.8587555962086417246@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::13) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MN0PR11MB6278:EE_
X-MS-Office365-Filtering-Correlation-Id: 873d53e0-df59-4633-44eb-08dbf65bb3c6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5HHMrnADEQfaMHeaZ2V50MBnDI6/36Ze3tLelSf5caVQZdSuvIb4TBpeSppUHjYELOEpG4K53VMC9VRZhOV/C0Am4sNa1luM8SDGu35E3NgAKYdwnyDORfvpt0QwRz547GeMUhZ5NQ6B+FJVVhSfu4xkk837JHqv+so3/NQJEHr1SB9EnRkeH3EQPR+R+uKeSoIMOFbN44k/mcp4emBu7MRQKmUpqDumm05LH/mw7u8hSnh6jE+2Y8vW3L8vqQugatD+FeVzxn0/+7UHZ0eFEVFo0RVLVy9ccDzoFxvIkLdLV9NtIpCM32+Hflq41FoMIEItoB0b0GgLmPcDRwC7dw56nZut3ShYb1xzkg6GWR2LhWF2M2ZZYIicvsrkZ4kmMXQxqBa70/F0zqerv2AH8aYAYI9InirXgDZAZ6UhS/58++LyNIWWtoNjtqm0FS2KcoU9jzmlNMea1bg+O16HqMDhgKBIW+ptlH80XFgwo8n6/ZT5bA993PceD97yIz8Lihch1714M9evXAKsdWQYUd3yYvswNkufgt2z2HJtMtovNuVctjuymzsh9Btzm1wC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(366004)(136003)(396003)(39860400002)(346002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(86362001)(6486002)(44832011)(478600001)(6506007)(9686003)(6512007)(6666004)(66556008)(66476007)(316002)(66946007)(8676002)(8936002)(4326008)(83380400001)(2906002)(82960400001)(107886003)(5660300002)(33716001)(38100700002)(41300700001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eG9NTHdNVWptMWUwTE42bzJVVzdsNU9GcXlGcUFPQUpVTExBNlpoc3VET0po?=
 =?utf-8?B?YzZmVnN0YjM4N1ljY1dER3VMZnZSTWNCNEFVZ1FiWGR3WXlYa09odzZKMUdG?=
 =?utf-8?B?d2g0SlJPUmdBbDMxS1ZNZ1MwZHpMN3RqUXAyU01DVjhLSGxpbzhYSTkxSlFM?=
 =?utf-8?B?bGtvVzJJZkJON2xXWUc0VjR5TS9kZjFOSFNLVEtubVNwVXFKL3lTSzNJamhj?=
 =?utf-8?B?RVZCb2t4a0UxSkV6NHdadFN5RHJyU1NuSnlteHdiOU5qb3lLdEdDMEE5Z3ho?=
 =?utf-8?B?WDVLS2RtcEZDL1dXTk9hY2RlQ2EzNWVSYVU3M1dJeVRkMlhOOFJ4TkNvUDhu?=
 =?utf-8?B?RVdBenFSbnNYMzZKL1UxZk1QSWNDN0U4MERDTGhrUFBMcU9RVVRaaUxmZmVl?=
 =?utf-8?B?Z2R6U3FwSFpiZGpIdHdKVTBKbXk1R3FsaFdrdjZiYVRVekdVMFBVMTNSODZl?=
 =?utf-8?B?MnRxOW1EU251NGc1WEliTk43eXUzVjMyY0Q4N08rRngwQy9UY3E4eG9IU3ZG?=
 =?utf-8?B?N2g2MEw0NEdvVFAxMnZOWE1BR0VRa3Zzb2k3eUV5MEhnaFNRSUpFdllWcGZR?=
 =?utf-8?B?N2F1Qkt2eGJsUzNYRk5IMkhKemh2Umx6TW1McGRDR2djK2EwNFFtcXNSdVlI?=
 =?utf-8?B?YWF6V21uM2ZTK3Z5Y3NoWHgrS0JsY01PSGptWU1SREZEUTF1K2dvRTZKLzFu?=
 =?utf-8?B?c2hJR0Y4TVlmSnlmNlhnODRRNXlMeXhJeVNvSUxCc3dqU01vaGpyK2Y3WEcw?=
 =?utf-8?B?TVJ4Q2hnb0x1R0VBZTBLWnFGTDk2MkRDUjliZk5JYTJVQzNMNnJBVm1WWnZE?=
 =?utf-8?B?b2ZtR2tVMzc1WTBUS29pT1ZSRnFvc0t2Wmh4RWhNUkRNeTVDVldOd3RnMDFJ?=
 =?utf-8?B?N2ZEYi9MM212RlF6UmZhYWR5NHloTkppeEx3RXMwRmRDQTQ1UERyVDdkYTA2?=
 =?utf-8?B?WXVMUkQzbFBwY1VGdEJFZTdWMHcyVHhZL1pjUTM4WFhEdGxkKzg2Rlp1c1p2?=
 =?utf-8?B?TkxyUWZFV1JwajNVbkVpN21wT1JFVmhDbXp6WWNSd1RoT2tmck5XTmwyM3J2?=
 =?utf-8?B?ZFlDQStOa0JuSWFCaVNkaWk5dWNXeWxxQ05DS21ndTR3UnY2clJZZk9NK3VB?=
 =?utf-8?B?dHRaNkxmTytmenRpVFNnR1dwOS9WYk1QUmhhRVBZTUpOekt2TTcyQVdKcHk2?=
 =?utf-8?B?d2V6M2pvYmVCRHZzcDZwRjZlZ0tjUkFyblE2aVNvbUJZWHJKUGt2bXBCOVZx?=
 =?utf-8?B?aVJnTFh1cnJQS2twaExrNG9PU0VZN010YTJUWmRvMndFUzdwMGFpYUZRd1hV?=
 =?utf-8?B?S0ZWdzFCZ042NFlJVGFzeTEzRHJjalJMdmhod1h1WEZXbEtpNm5BcWtnVitU?=
 =?utf-8?B?T0w3ZTQ2SFVWYWdHZStiSzlSRUJ1MVg3TXB3anlQSXhrVW0rak1UcGpwdFhw?=
 =?utf-8?B?M1lpQmxxQS9uWjlQVklQM3k5Ky9MQmU5ZHBNUEMvSmxWbWxHYlp6OG1lRmds?=
 =?utf-8?B?c1MvTDJORXpmbDUxaU80VTd1Rm1oOElob3Q3RlZGWkdNRHVmSnM5QUdlSzk2?=
 =?utf-8?B?S0tMZEowVURZK0RVMy8vNTVmSEZZb3pnWE5Ha1gwUlo1ZmQ1aG1DSWxXMjAw?=
 =?utf-8?B?SWZuVHBtOHZ0T1REdW52d054WWdycTg4TUhIeHFlcXE0b2lxRWUzWlc3VjdX?=
 =?utf-8?B?QW5YTm1ONVdLOUNhTjdlVDFXSDZRQ1RlUW40MzBuN0RTQmRzdEF0K3Y2M3pp?=
 =?utf-8?B?bTc0aUR3aGY2MmptcTlIc3NPZ01BUlNRbSswcTgwQTRxajk3RXpnMmFqNm9l?=
 =?utf-8?B?aFVldXE3VkpFcDhtMU41T001bGw1NmVBVzQ2K1lzQXJ0OElGcVhCZWp3VHFs?=
 =?utf-8?B?Y2JSRlBUaGlOZGkvSzJwL2pHMVcrakVaQmN2UlUwdFZxTmtMbGtaVGtGdEc5?=
 =?utf-8?B?N1YrNXpaeUowWmU3eExFaUtZTTl6QWRiOThFUzFSLzN5dWU3ZXYraFFmVk9K?=
 =?utf-8?B?ci81TmhYSmZ5QTZXNjhuTkcxMEdpZDk1SGJaUmhFL3dLc2EwUW9kK0pjSDdF?=
 =?utf-8?B?MDVUYm8vejNLQlBxL2F4NCtzNld5OGZJYndqZ0lWQ2I0cnVBb2VXUHhxakM0?=
 =?utf-8?B?OFFrbTNNNlB4ak9JcEtXMUU5V2lkWUQ4dkRDRG9KYngram5KZWdLd1Z5TDdN?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 873d53e0-df59-4633-44eb-08dbf65bb3c6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 13:03:12.3548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CAvUNnH1AgORJk8xlMgHUMp/H4lHC1uql0o8/pJRdXODt5DHikXqQ+FN+l9d8QlZTsWncLBXE9vVUhfSWgD+8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6278
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpm: add rpm_to_i915() helper
 around container_of()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-12-05 09:15:45-03:00)
>Reduce the duplication.

By the way, is it too ambitious to dream of a to_i915() using generics?

--
Gustavo Sousa

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/intel_runtime_pm.c | 24 ++++++++++--------------
> 1 file changed, 10 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i91=
5/intel_runtime_pm.c
>index 91491111dbd5..860b51b56a92 100644
>--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
>+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
>@@ -50,6 +50,11 @@
>  * present for a given platform.
>  */
>=20
>+static struct drm_i915_private *rpm_to_i915(struct intel_runtime_pm *rpm)
>+{
>+        return container_of(rpm, struct drm_i915_private, runtime_pm);
>+}
>+
> #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>=20
> static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>@@ -158,9 +163,7 @@ intel_runtime_pm_release(struct intel_runtime_pm *rpm,=
 int wakelock)
> static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rp=
m,
>                                               bool wakelock)
> {
>-        struct drm_i915_private *i915 =3D container_of(rpm,
>-                                                     struct drm_i915_priv=
ate,
>-                                                     runtime_pm);
>+        struct drm_i915_private *i915 =3D rpm_to_i915(rpm);
>         int ret;
>=20
>         ret =3D pm_runtime_get_sync(rpm->kdev);
>@@ -365,9 +368,7 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm=
, intel_wakeref_t wref)
>  */
> void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> {
>-        struct drm_i915_private *i915 =3D container_of(rpm,
>-                                                     struct drm_i915_priv=
ate,
>-                                                     runtime_pm);
>+        struct drm_i915_private *i915 =3D rpm_to_i915(rpm);
>         struct device *kdev =3D rpm->kdev;
>=20
>         /*
>@@ -420,9 +421,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *=
rpm)
>=20
> void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
> {
>-        struct drm_i915_private *i915 =3D container_of(rpm,
>-                                                     struct drm_i915_priv=
ate,
>-                                                     runtime_pm);
>+        struct drm_i915_private *i915 =3D rpm_to_i915(rpm);
>         struct device *kdev =3D rpm->kdev;
>=20
>         /* Transfer rpm ownership back to core */
>@@ -437,9 +436,7 @@ void intel_runtime_pm_disable(struct intel_runtime_pm =
*rpm)
>=20
> void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
> {
>-        struct drm_i915_private *i915 =3D container_of(rpm,
>-                                                     struct drm_i915_priv=
ate,
>-                                                     runtime_pm);
>+        struct drm_i915_private *i915 =3D rpm_to_i915(rpm);
>         int count =3D atomic_read(&rpm->wakeref_count);
>=20
>         intel_wakeref_auto_fini(&rpm->userfault_wakeref);
>@@ -458,8 +455,7 @@ void intel_runtime_pm_driver_last_release(struct intel=
_runtime_pm *rpm)
>=20
> void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
> {
>-        struct drm_i915_private *i915 =3D
>-                        container_of(rpm, struct drm_i915_private, runtim=
e_pm);
>+        struct drm_i915_private *i915 =3D rpm_to_i915(rpm);
>         struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>         struct device *kdev =3D &pdev->dev;
>=20
>--=20
>2.39.2
>
