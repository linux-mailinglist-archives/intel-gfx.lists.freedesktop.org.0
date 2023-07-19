Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FA9759E76
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 21:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0C110E054;
	Wed, 19 Jul 2023 19:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA8410E054
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 19:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689794577; x=1721330577;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=r/lNdqIq2yOEGDQF+ZI0m0DlASetsgovab0fIzxkcho=;
 b=IEmryaGI7ZuQOB7fhkufVc3qTuVJmGp647WDW88sHSoDxKxrvbZGVEaf
 I1sCUDmCBhDVh4pqLYwkhCt2ALUxgyTQ692jYDBg68Hqx6NsGD9JqfuWh
 /7Q+1EeRHQQFjYtSwMJC2DSMcLvYofSoWXI04+7NRTI+PbIz965Udx72p
 BDjRbNhi015VG09959t0AfTAmDeQFPlnv3dBMueaWyUBm5oC0qKsSCXmM
 +nSHp/98lgVt+sjiu2iMppxK0Ofj1f2GL3Z3t7ea5pQEE6Dv0M34tLLya
 N9ibC1jMnGLR3Et5j67rb2CB7RCV8Dz+UHhMeCYFohoQN+0Uf40PyJUcT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="364012752"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="364012752"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 12:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="837809515"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="837809515"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jul 2023 12:22:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 12:22:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 12:22:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 12:22:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 12:22:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AeP/l8ypTRG+/BrYUp7HVk2a56rVk6LbIp3KpPO+t0UvoGv4PBft39vR/vGl4svJZzjRAZAAgQ6OQ9zBia4y83kbNbZ9PZgpp+Gb8iTBCuLqcvawGllEt/McnevPQItpM/jwF2qWXe8i6qXTJoGc0ITjF9h45GDjxsuZ3QiHi/d+GFaWSzuXWkDoZEl+1dAYUac4VXv0AjpHX6SzilWvi7elcoH+Hg0bdF3+FhKdLxDjNSZh0WceWGvmdu3sdXqJIEvy7l2Xg5kgetX7Q1GfeeoD3VSdhA0J0JVd4nMEjNFAuuF5+J9fCVAIuHGaoQw8n8kw+Glm4Gt5b84hE3LQDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+G8/VQCguTMGvMbeB1K31GTb2ss4VnRBxOIe8Svils=;
 b=Ub0ts3QtQowxyP0uo+m5x6gAJiWKhUeel1vWptdjJ8qGjNznNfu9WZF5QTFDfBPsfxyVpmRfLKDiSCwSkyw3Bh/eAa0rQ0UO0kYYmCUX8Q7MWIQshfCCJ63LC5S6LyRVc1y8LbjO5nr5e/3NcSe8rNOh17gp+B35fSVEcnuxiz5+i9s6Xslm1aQ/PQ61TfmublTxUHtYGPn6Q1qSnPlvWlh80ITwELd0fhlTWM4x40CoLA1ulMWTbBGFJoi5UbCt9ypEtFOEOydoPHFEx541AUwByCEzZqdnkiE7MbMysz7Xellp3iPPgJ320ZRvY1dfEUcp+JBV3rcOZKUzmuBRcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Wed, 19 Jul
 2023 19:22:53 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 19:22:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230718222753.1075713-15-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-15-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 Jul 2023 16:22:46 -0300
Message-ID: <168979456681.1692803.931889784619201460@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:303:8f::26) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB7073:EE_
X-MS-Office365-Filtering-Correlation-Id: 943f1fbf-9e7d-44af-0cf4-08db888d8c62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qhMMaX3QUsKICqA0ZeVi56IwgpebPgmjVAmpKRNVTu6khMBFaF7h8tU3H7lJHxhUZFyTrPShyk4DFVesYXSsGJFcQjEvqV2LE97TKu+FqKMjXTGv5ju5huKQ/tFPG4eXKPfFXBEcp6ZD4SsGVPWT4KfRbCPaQUSiCuPSwiYhduP2ryA56An6lK0qaCgqvujjQ35Euc7VEOsYZqBYW8c65WTJgf5EfvZxZXP1I+/Q30FNmqkR+gvYtVp683cH2w4wQlg7v8QrU7/TCC60PTTsBAogw7SHrWfS3zFiYJ5j9NX94+wStKbxuwM2elv90Z7kKxlQ0fo3Kgz6byaP2L+huxGRuM7kwXkrQMSWHCwRl8k5QVJ4lF5cAluGqJaVN8K/r9bzST/hGGlQv/9DAjFHRB7mGj/CquJDBPgjUh7pm56TBKMFQ5/2t02tx5SG2C9vf0OEISyo9gKSD6K5/ouJ9YsuvS6SXgWFZyHB49mK6AP43NOT6Xa0fey817oeKBNSNUbz3Mv2nEARxmKKn0fOlwYXPES0M06ldZ6j7n214grRa+EDTu+8hFPeZSJ9n3BF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199021)(478600001)(6486002)(6512007)(6666004)(9686003)(83380400001)(86362001)(2906002)(316002)(6506007)(107886003)(33716001)(26005)(38100700002)(82960400001)(44832011)(186003)(5660300002)(66556008)(66476007)(4326008)(66946007)(41300700001)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDUrUW9uVmVqRnhkNDc3bGRyWVZRWEJMTGxaOUJseitOcnVZMkpaK1JVYVdD?=
 =?utf-8?B?d3RERVlVVVRNdDhRN04zMWw2d2FNS2Q5NXJBamwyblE4S0Znc2tBZkdjU1ZS?=
 =?utf-8?B?ekxiU0NkeFo5VWgwN09xcWY2QllFVlRtL2hmSTRrYmdIK0N3YjBqSlFyYzZr?=
 =?utf-8?B?a09JTVMyZCszc2wzZXJ3bzZsdnN2cEl3blBJYTZ0NHZGS21mdXBHWisyNjVh?=
 =?utf-8?B?Qk9LVXlpV292R0tycEVRZ3hRTzcrRkhvcndJdzJsbHdhdjJSNUtiSEt5U3Vq?=
 =?utf-8?B?NWRrcnFwV2cwT2J2cTFWY3J0NVl2QlFIQzV0UDdrb2NrZEsreEFiU2xudkxE?=
 =?utf-8?B?YVhpKzBSY1BxSDZpeFJocDc4aU5XQ0hiYWdlRHY4czhLSkYyOS83aUVsM2xs?=
 =?utf-8?B?YzFnUW1TS1pWMmg0cmxlOTF1ZGNnbkNkZWRwWHpsam1TZUlBUHBLREt4MEhR?=
 =?utf-8?B?QjFWdWdNdFJIUG1Ieitnd28xSXJFOGIzdEZ5dkpscDNJYzc2V045eUFENXZv?=
 =?utf-8?B?UHhXektIS01mVVc1MHdDVElUREN6MHVrRjdJWGxqNHBwbWpSa0VIamdjZnFa?=
 =?utf-8?B?WWdjZ3Vjd2R3NjFWMTkxODJnQ0c1WEEyTSt1RXgxOFlxcDhhaDNFSVpWb2o4?=
 =?utf-8?B?Qm16SWxoWHZ5VWhYL0RKb0tmT214OHErOVl4UjFPWkRhT2p4NHVQc0RtaXY3?=
 =?utf-8?B?Qk4yTGxrK0J0N2pMc2NkdzlvelYrRDNYRmdxVGdpTGNPRUFRLzBibnp5UGdi?=
 =?utf-8?B?aS93NzYrdi96anFMYVV3cm83Qmc2N1lZTWpIb2toM0k3QWVpSGw3YjMxYUhz?=
 =?utf-8?B?Y0l0TUt5Z0R0OVFBL2NzejFHSkFWTThVSEF0bzhnZ1c4d202U0VqeFNWcXB0?=
 =?utf-8?B?dnhTRmRLN2R2OCtDRGRvODFEbkQ2bUNRTWlPUzQ2dG1UTUdhcDNrUGtJQkNu?=
 =?utf-8?B?eDJYVUFoYS95N2ZLeHUwNFNpRXRRNi95VGw5SjhIQ3ZOb0t2aEJndmxxbGx2?=
 =?utf-8?B?cHp0M1VyRklOV21IbFNtQVVDcjUzdTFRVkgzZFkydUFMeVQxMldXNy91L3RG?=
 =?utf-8?B?WmtxalY5SWYvaXNDTmxZVWhaUVIraWVrdDJMRG41cnV6U3BNMEE1RTlvOGtm?=
 =?utf-8?B?VnJZWWJ3b2NZdUJkL1ZCME1ZL2xoeEtVNEJRaXlQdnZlNVZzNEZpVVJ5STJ1?=
 =?utf-8?B?U1E0VDl0Qk16MVRIN0thZ1B2alRkK3F2dFhhTmtLaWNhSmQ0dlh2SFBhTU5R?=
 =?utf-8?B?VUJJRUhJWmQvNkF1TWZxR1BaVTBJSlRXS1FzcG1sWndxT0NNbTN0dkFISWtU?=
 =?utf-8?B?eDNKeUQ0djBySWVXQ004TG9ONGQ5TlhZbVQvK2ppcStaMXpEdS9BRkdld240?=
 =?utf-8?B?V1F5S0praDJMdG0xbnYwK3J1dGR6VzcvbzB6d21OU1dVOUx0dVFXNnBFRnVi?=
 =?utf-8?B?enBEQ2hEQ0VITXRsSC9zWm4rRy83WldRb2FVTWdmY2VQYmRhSVpVUjlDalBV?=
 =?utf-8?B?cU9vNTg4b0JTVEZQczNnanBzTjlYWTJJZnhOY1YycGZ3UWVkbFh1OTNjWVNR?=
 =?utf-8?B?Ym1nWFVQdFRxS3d3bXR2TU41VXNwbGZidllnd05ZcFNySUs1UmsrZGRVOTNG?=
 =?utf-8?B?cGJ5K0FVamxaTmxkNVJ5S2cyRHZwYXNlY2RZUWN6cmhmSlA5YVY3V0FJYWZK?=
 =?utf-8?B?Z2N4TmxGYUtIU05wSGttSlBSNmRWT0Frck02Mzk4UERRZVJJNnhmU1NVQmUy?=
 =?utf-8?B?MnpFenE5OXUwc2ZUVGFoNjF3T3hyVWE3T21UTDQ1MHR6dGhYYmRkQTJXVkZD?=
 =?utf-8?B?aEpRdDVKNVB2N3gvSkhWcEpZRHFjOEJmelgzOXdyT0JwNTVLcUtJeFdDZ3JM?=
 =?utf-8?B?MW9KaEZ6K1QxSFF4eTh0bTlkR1ZWZ21LdEdPODIvSHNRbEVmQlpkWFM1ZGUv?=
 =?utf-8?B?TWF0OXFkMUZwdWEzNTZKSmkvamFMUFAvKzhVYnFLS3JQM2ZXS3lQa0I1ZUY4?=
 =?utf-8?B?cmxLVjMwem5XbFBXcVNDR0FRT3BYeUNRNE9zVll5YzFFaWNtMEZCUVNaN1lm?=
 =?utf-8?B?M0RnbjFRUFozMXhRaTB2WkZTbGZRR1orYlU2SUZSMm5VZ2YyVEJIL0tLSjlD?=
 =?utf-8?B?TGx3U2o3cytxWUZaTXM5Q04vM0FJV09FT081OXgrSE15RktiUnNzR21aUXZV?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 943f1fbf-9e7d-44af-0cf4-08db888d8c62
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 19:22:53.3436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AIHqyDidY8i2j3lFzjyaOmHibCL9BWCuMXfq73w2TjwQMrlmkxTbhnta0i5UJCKzuuqum1Z8tzskb5Cg/TmKIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7073
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Eliminate IS_MTL_DISPLAY_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-07-18 19:27:59-03:00)
>Stepping-specific display behavior shouldn't be tied to MTL as a
>platform, but rather specifically to the Xe_LPM+ IP.  Future non-MTL

s/Xe_LPD+/Xe_LPDM+/ ?

The changes for this and the previous two patches look correct to me,
but I would also be more leaning toward having IP version and stepping
boundary checks as separated macros.

--
Gustavo Sousa

>platforms may re-use this IP and will need to follow the exact same
>logic and apply the same workarounds.  IS_MTL_DISPLAY_STEP() is dropped
>in favor of a new macro IS_DISPLAY_IPVER_STEP() that only checks the
>display IP version.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_device.h |  5 +++++
> drivers/gpu/drm/i915/display/intel_fbc.c            |  3 ++-
> drivers/gpu/drm/i915/display/intel_pmdemand.c       |  2 +-
> drivers/gpu/drm/i915/display/intel_psr.c            | 10 +++++-----
> drivers/gpu/drm/i915/i915_drv.h                     |  6 ++----
> 5 files changed, 15 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers=
/gpu/drm/i915/display/intel_display_device.h
>index 3324bd453ca7..d8dccf7f1b5f 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>@@ -71,6 +71,11 @@ struct drm_printer;
> #define OVERLAY_NEEDS_PHYSICAL(i915)        (DISPLAY_INFO(i915)->overlay_=
needs_physical)
> #define SUPPORTS_TV(i915)                (DISPLAY_INFO(i915)->supports_tv=
)
>=20
>+#define IS_DISPLAY_IPVER_STEP(__i915, ipver, since, until) \
>+        (BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
>+         DISPLAY_VER_FULL(__i915) =3D=3D ipver && \
>+         IS_DISPLAY_STEP(__i915, since, until))
>+
> struct intel_display_runtime_info {
>         struct {
>                 u16 ver;
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index 7f8b2d7713c7..a3a42e29b766 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -49,6 +49,7 @@
> #include "i915_vgpu.h"
> #include "intel_cdclk.h"
> #include "intel_de.h"
>+#include "intel_display_device.h"
> #include "intel_display_trace.h"
> #include "intel_display_types.h"
> #include "intel_fbc.h"
>@@ -1093,7 +1094,7 @@ static int intel_fbc_check_plane(struct intel_atomic=
_state *state,
>=20
>         /* Wa_14016291713 */
>         if ((IS_DISPLAY_VER(i915, 12, 13) ||
>-             IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>+             IS_DISPLAY_IPVER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)=
) &&
>             crtc_state->has_psr) {
>                 plane_state->no_fbc_reason =3D "PSR1 enabled (Wa_14016291=
713)";
>                 return 0;
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index f7608d363634..3b37beedc95c 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>                                      &pmdemand_state->base,
>                                      &intel_pmdemand_funcs);
>=20
>-        if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+        if (IS_DISPLAY_IPVER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
>                 /* Wa_14016740474 */
>                 intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i9=
15/display/intel_psr.c
>index 04ab034a8d57..5770cbfef435 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -1360,7 +1360,7 @@ static void wm_optimization_wa(struct intel_dp *inte=
l_dp,
>         bool set_wa_bit =3D false;
>=20
>         /* Wa_14015648006 */
>-        if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>+        if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_=
B0) ||
>             IS_DISPLAY_VER(dev_priv, 11, 13))
>                 set_wa_bit |=3D crtc_state->wm_level_disabled;
>=20
>@@ -1447,7 +1447,7 @@ static void intel_psr_enable_source(struct intel_dp =
*intel_dp,
>                  * All supported adlp panels have 1-based X granularity, =
this may
>                  * cause issues if non-supported panels are used.
>                  */
>-                if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>+                if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A=
0, STEP_B0))
>                         intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_tran=
scoder), 0,
>                                      ADLP_1_BASED_X_GRANULARITY);
>                 else if (IS_ALDERLAKE_P(dev_priv))
>@@ -1455,7 +1455,7 @@ static void intel_psr_enable_source(struct intel_dp =
*intel_dp,
>                                      ADLP_1_BASED_X_GRANULARITY);
>=20
>                 /* Wa_16012604467:adlp,mtl[a0,b0] */
>-                if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>+                if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A=
0, STEP_B0))
>                         intel_de_rmw(dev_priv,
>                                      MTL_CLKGATE_DIS_TRANS(cpu_transcoder=
), 0,
>                                      MTL_CLKGATE_DIS_TRANS_DMASC_GATING_D=
IS);
>@@ -1613,7 +1613,7 @@ static void intel_psr_disable_locked(struct intel_dp=
 *intel_dp)
>=20
>         if (intel_dp->psr.psr2_enabled) {
>                 /* Wa_16012604467:adlp,mtl[a0,b0] */
>-                if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>+                if (IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A=
0, STEP_B0))
>                         intel_de_rmw(dev_priv,
>                                      MTL_CLKGATE_DIS_TRANS(cpu_transcoder=
),
>                                      MTL_CLKGATE_DIS_TRANS_DMASC_GATING_D=
IS, 0);
>@@ -2087,7 +2087,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_=
state *state,
>                 goto skip_sel_fetch_set_loop;
>=20
>         /* Wa_14014971492 */
>-        if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>+        if ((IS_DISPLAY_IPVER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP=
_B0) ||
>              IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>             crtc_state->splitter.enable)
>                 pipe_clip.y1 =3D 0;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 10741177b654..cf72c34bca10 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -443,6 +443,8 @@ static inline struct intel_gt *to_gt(struct drm_i915_p=
rivate *i915)
>         (MEDIA_VER(i915) >=3D (from) && MEDIA_VER(i915) <=3D (until))
>=20
> #define DISPLAY_VER(i915)        (DISPLAY_RUNTIME_INFO(i915)->ip.ver)
>+#define DISPLAY_VER_FULL(i915)        IP_VER(DISPLAY_RUNTIME_INFO(i915)->=
ip.ver, \
>+                                       DISPLAY_RUNTIME_INFO(i915)->ip.rel=
)
> #define IS_DISPLAY_VER(i915, from, until) \
>         (DISPLAY_VER(i915) >=3D (from) && DISPLAY_VER(i915) <=3D (until))
>=20
>@@ -704,10 +706,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>           MEDIA_VER_FULL(__gt->i915) =3D=3D ipver && \
>           IS_MEDIA_STEP(__gt->i915, since, until)))
>=20
>-#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>-        (IS_METEORLAKE(__i915) && \
>-         IS_DISPLAY_STEP(__i915, since, until))
>-
> /*
>  * DG2 hardware steppings are a bit unusual.  The hardware design was for=
ked to
>  * create three variants (G10, G11, and G12) which each have distinct
>--=20
>2.41.0
>
