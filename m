Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9191A759EDA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 21:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC8410E11F;
	Wed, 19 Jul 2023 19:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A246E10E11F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 19:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689795606; x=1721331606;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Oj/2bjEGzR+L0NT7LuUUujVekoKo1ySt+UerEDpcJdY=;
 b=m6+MAoPLT/GRl5CyF0tookBVDldKWGUNKEC7bpmVt4COYwZb6OkmwlGc
 ay3GFmMRy+unlrZzghMzfrNSkiBBBUY5HX/OYs9LFoazZBWcOhyG0zJFY
 edvv1sRqWpR0E1AyaHzC0SAe5k6SZ4O3oWQaKVui6cJUELe5tA0U7P2Gu
 5QlqxQ6X3O3t7pJ+YUoiXEQmDGyrvsFcQd+1SSAdTOCMAfA1O1uOO5G3I
 crzSi0I3nQRSjccYkFLLeIO5VXbGeG7iCcGmNIIoZFvW7AgWWlHSlA8Pt
 h8tcIAe9mnwStQQosZj1eGf4avkFai8pBgMKzpqENeB4djP6x1EYXzwN9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="452930192"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="452930192"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 12:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="727428750"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="727428750"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jul 2023 12:39:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 12:39:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 12:39:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 12:39:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jAaIQ+5h00MUMnQmmYHSppiO8hO8dTqClNyOgYXKhveDA1LK5OXVDhrw46KXBRhtFFJBLlRR3hdktRaQSOvQV95IDNQ3X5MpVu28zT1z8DXxvnlMQ+vRPc8RUXRjXizYZPi9gTiaZzszXrFOKXGkqbn8EHuIcrBQbXpsS9IfDFiIHpnwVYBeVx7ooumVmW9Np2RDkwTcM7TDVmL3xJnTFOPuCKQxt2AImfHI9pHc3CWrHofsMAc9LDsBrld4LSbzXAkkP+6xJIjekg5nhy9e9PYxJ8xEZRG+M9beMQZ9Gag38G0vYYICjEH/QrrlsD6C03oBy2EsaM5Nsc47vIG3YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zah9B3NpBiITIgMADnInL0qtrO3mAGxgEmOcoOjbNds=;
 b=kTA0jbsnEC9DvjpSOQsPDmCbBIifyC+K2SoKnWEmkt6likNdBhTQs9HGwOcyzVEbk7RT+Qmr5lBrDXX7nhCxIdaCbmEEdBdkHXLFkBfA+ixnMirQlV6FoP7Oc6PHrh3we/7enmqUsPNh3JBJVZ4BQ0nQrBn6tboc+e2XYdNEDEyrhzPAxfGj0lEtUNitNTPKEUR8P+XnFYuZBgaDcePewdTE7Nl8NmSHeJAAwaREc4QYrDksUlRZ+CUbdBXCeaJetjz3U8qHHdUamumLSQQ9Yr2WKlj+TR8d46Q0tPF0LY2/xpKEH/A1ScDH9IHwwoc/L+NPrtINRrFL8HhRpUu+eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH0PR11MB5362.namprd11.prod.outlook.com (2603:10b6:610:b9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 19:39:37 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 19:39:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230718222753.1075713-17-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-17-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 Jul 2023 16:39:25 -0300
Message-ID: <168979556510.1692803.8355036886759470368@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:303:b8::28) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH0PR11MB5362:EE_
X-MS-Office365-Filtering-Correlation-Id: 10c280ef-9831-4267-7ce0-08db888fe281
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q4cm0Jj3ntDG1xXt7h5bcIPwXyJ/BAtEYRa40Nn2ZHf/DNBxpyiuUgMHGPfwBEtYrbbn//NaKGbqf1ydsnVI1E2GhcX46VpbIJ2A1S9dgaTuVOaMc9y6NYb+7TK965bAQ6s5lCf/x5MG6A33vVU6L7PF9wgcQYMRw5oexMZCcSp+u+mS3B6xZTLABJGfxwuHpUuQTQnagyRn6GSF7ZMsni/hKN92L4B4vpJs3N0byAjeOuRgM+AegedD4+UsuDefX3iOVwahNXRPx21cx3/4i8P6s0SKra2LLK65xYGzfPvT6SEIOJ+uaJh0Yq+B05hfYA+g6C4+4B3MFZJq/2vwX7S4+ogTI6rGm7pVwlrdHN+FuEL8ladKd40+yBKR1opVo0RWOtEVva2PjOsxxiTMU93vkac6LPYScqO3pF6vOmBcuTZ0G+0y/e/Bs5aTNjucxn7jCC6Telbkhv5TPkVfynmivmwvVDyeCJdV9Vo5z/BzP/eROltYnqY/Ur/72a80gQ68hZlo6L5c4v0ybb6RyI4L0NN2bE6jpHL6nHT2tYr4XJYvhN8Dq3sCpmpD0wmz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199021)(66946007)(44832011)(6512007)(66556008)(9686003)(6666004)(6486002)(66476007)(107886003)(33716001)(2906002)(316002)(8676002)(8936002)(4326008)(5660300002)(82960400001)(6506007)(38100700002)(186003)(26005)(41300700001)(86362001)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWhmUnV6ekZJZStRNjUvTjZOSVRsb3lZOGgrSGVQQlUvdHh1U01iWWZGR1NV?=
 =?utf-8?B?S2IzZ09lcE1oTDJqY0lMalkxYXVFNkkxT1JZL25SVzNZSlYraVFHWVRSUGxY?=
 =?utf-8?B?akgxb0Z0OHhsUzJ0ZE9ZTGR5YUVSaXpORlRIU3lQeW54c2dDdkZyK0FYaktX?=
 =?utf-8?B?aElpalZvMDVsZ3dUSDdoU1Bwai9DTTRXYlgyc1VUNEdmam5EVTZLRFVBOVky?=
 =?utf-8?B?a1JtU2E1cDFnL2JGRk8wV3VtSTcrL3JoSWtuaENhV0VRK1R6U1l0UHNrNnFY?=
 =?utf-8?B?QzNCMGRlYjV2RlFleVh1YzlqS0lHSlRsUFFnSmFSOTRycjd5SllsOTZLZDNy?=
 =?utf-8?B?Yjdmb3ZPYmdGakRhdlREM0tJUHJ2TzYvcFBBanIvMkdGVGg0N1FJR1g0N3hF?=
 =?utf-8?B?REhqTDFsbGc4S0pEbnBzTndDSHp0WFNrVWNYVWx3aFhVWnJkMTc1ZTRUVXNm?=
 =?utf-8?B?d2FZMW5XNjFyS3Y2NFdFQ2hXSmF5QWJrOVZPbktWcCtVb1FoV1JLcGxkUVJp?=
 =?utf-8?B?a0dqam5uR1JSejB5YlpQSXlFenRmTk0vajNUbDVZako2cEdyaS9uRWUyd1BT?=
 =?utf-8?B?ZDljZ1RUSnNwM2xQRDZyd3ZtK0k1YXdnTjUyMWE1VFB1eFNWU1UyZDhxUERT?=
 =?utf-8?B?TDdCemZ2aFdDaHY2T2RVS0JHdFE3cDlSdzhuZUhwSTNONmg3bnRLY3QxcEpI?=
 =?utf-8?B?WHNTUGdyKzJDbXdUSmhHRS95SXdSRHlJUEU5K1E3bFFCZUd2SDJsRU5nWGQz?=
 =?utf-8?B?eEc0ZWs2b2ZSVExPVzIxVmJ6UE1WY3FlWlRBdytQcld4Z1FPMGFUcEtCRm1G?=
 =?utf-8?B?OXJlTld2SkcxSCtrZlROeURGZTU4RVF2Q0ppbENBTXozb05GVFAxenB4YXNF?=
 =?utf-8?B?Y2cyZWo5b2lRYldBMTJQaWJQcENlRUNFczFoWjZ4eDZ2UVF0aW54Q0dDMTBh?=
 =?utf-8?B?aUQvVkxLeHZVK21OZG5uOUM2d2NmWmljRDFySC9iTG9YTzFnMTdzNnlvZG5I?=
 =?utf-8?B?U2RSWDI0Z1FpRnB1RGpoaDU1Z3FPWlRWbVpudFRsRmVxZTRLWlpob25GWTBN?=
 =?utf-8?B?U25RZzlPei96QmIvNjF3eWN1eU1ZT1dZYm80dk9vWFNnM3JHM0czMlBwTVZ4?=
 =?utf-8?B?U3Z0U25Nc29Qa0xRSkNTd2l6a1N1THdzbCs1K1pFTzliMkw3WHZ3SFM2YlNN?=
 =?utf-8?B?YktzS2p0RGQwY1ZlOVNzaFRWYjF1ZnFVVVQ2YURSRDR2RVJKalIwdWJwNVdk?=
 =?utf-8?B?aFMzeWtSYWFMTUtNZWJkQjFjdGZKQ2JUL2FXakNBOXRnaExkQmVLM0pBd0ZV?=
 =?utf-8?B?R0wxbjdMNEpoNlp0Z2daRk1jTFY0QWhMWXRJcG96TEpZVGlidWs1aGxFZ0Iw?=
 =?utf-8?B?R0pUZ2R3NHJyUGtBdXRRVGVLTnJkK2FTOStuYVF3RkpnWUprMExBOElidjhD?=
 =?utf-8?B?MzJaUEs1V1NHKzdaa0VsaFNZMVkxeGNsTXRBeGRiUTg5RVh4NUVJbTVsWlRI?=
 =?utf-8?B?ck9WS1FyYzl2NDNXWXF1K01XVkJJQmQ1a3cvOEZIdzZubDhTdE05empWUkQ4?=
 =?utf-8?B?RTI1ZUhiTThaU3p6aldsVVRBRkM4cEtIK3c0K0RjMTk0ZFdmM2F1NUtLaEVP?=
 =?utf-8?B?dmtFR3NZUktHSkhrM0VWYUxmdzMrNWNHNnU5R05vUlRFSHhIcHA4OGh2TXQ0?=
 =?utf-8?B?N25BQllBZ1lFNUxTb0g2ZjhSdzFmYmwyWCs3NDRxUFg3NEJpYW1SekM2aE9U?=
 =?utf-8?B?Nk9QV0RyOGZabU9XaWcxNmx5V0VNRTkwZmpBaU9kOC9CTm50cHJLWjE5RE9a?=
 =?utf-8?B?Ny9MaHM0SVUzclo4RWlMcC85d2dBcVMzNlpZazZpUWlieE01aktwaFQzbDQx?=
 =?utf-8?B?Q0JheU1GaDhwVHFkdUxxUHhMdDdNWUcyeDNJTDZxYWFtTTVvYXo1T00rNzcx?=
 =?utf-8?B?ODZWUDJ6U1B2ME9OYStyNk1iRWRsSWdIVjNIWFE2amp3Mm1WeFFCWVcwSmk4?=
 =?utf-8?B?MHdzblhxbS85UjNvTTM5MFlvUXltdmQ2UHlPUGEvY3Q1YVQ1TG1qUitaUXZo?=
 =?utf-8?B?citSUTRHWnpwWTBqbkhuQXo4TlZ1djU5R3RHL1JaU3dOMityTER6WTJtcTZn?=
 =?utf-8?B?cHpKdjhjSmlLZ1o1UFZTUXRYVytCalNzQ1RhT0NwRDlGM2VJUHNRS2FZYW1r?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10c280ef-9831-4267-7ce0-08db888fe281
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 19:39:37.1786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GHBk8INBIM9KBZSLirX1mg4K30UtjImbaVVA4J9+amtMQknXCb64zmbU+Z2ywdTDkbPetbjyUhto2Rs2erRxFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5362
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/display: Eliminate
 IS_METEORLAKE checks
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

Quoting Matt Roper (2023-07-18 19:28:01-03:00)
>Most of the IS_METEORLAKE checks in the display code shouldn't actually
>be tied to MTL as a platform, but rather to the Xe_LPD+ display IP
>(which is used in MTL, but may show up again in future platforms).  In
>cases where we're trying to match that specific IP, use a version check
>against IP_VER(14, 0).  For cases where we're just handling new behavior
>introduced by this IP (but which may also be inherited by future IP as
>well), use a ver >=3D 14 check.
>
>The one exception here is the stolen memory workaround Wa_13010847436
>(which is mislabelled as "Wa_22018444074" in the code).  That's truly a
>MTL-specific issue rather than being tied to any of the IP blocks, so
>leaving the condition as IS_METEORLAKE is correct there.

I grepped and also saw usage for IS_METEORLAKE() for RC6-related code
and around clock gating as well. I'm yet not familiar with those to be
able to tell if they are platform-specific or rather specific to sub
IP(s). Just thought it would be worth noting here, just in case.

>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c   | 4 ++--
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
> drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> drivers/gpu/drm/i915/display/intel_dmc.c     | 2 +-
> 4 files changed, 5 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index dcc1f6941b60..4cb1dc397b62 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1840,7 +1840,7 @@ static bool cdclk_compute_crawl_and_squash_midpoint(=
struct drm_i915_private *i91
>=20
> static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
> {
>-        return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv)) &&
>+        return ((IS_DG2(dev_priv) || DISPLAY_VER_FULL(dev_priv) =3D=3D IP=
_VER(14, 0)) &&
>                 dev_priv->display.cdclk.hw.vco > 0 &&
>                 HAS_CDCLK_SQUASH(dev_priv));
> }
>@@ -3559,7 +3559,7 @@ static const struct intel_cdclk_funcs i830_cdclk_fun=
cs =3D {
>  */
> void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
> {
>-        if (IS_METEORLAKE(dev_priv)) {
>+        if (DISPLAY_VER(dev_priv) > 14) {

I think you missed the equality part here, should be DISPLAY_VER(dev_priv) =
>=3D
14, right?

--
Gustavo Sousa

>                 dev_priv->display.funcs.cdclk =3D &mtl_cdclk_funcs;
>                 dev_priv->display.cdclk.table =3D mtl_cdclk_table;
>         } else if (IS_DG2(dev_priv)) {
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 1b00ef2c6185..025c80b9fece 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -31,7 +31,7 @@
>=20
> bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
> {
>-        if (IS_METEORLAKE(i915) && (phy < PHY_C))
>+        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && (phy < PHY_C))
>                 return true;
>=20
>         return false;
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 43cba98f7753..85efd77f491b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1767,7 +1767,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_pr=
iv, enum phy phy)
>         if (IS_DG2(dev_priv))
>                 /* DG2's "TC1" output uses a SNPS PHY */
>                 return false;
>-        else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
>+        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) =
=3D=3D IP_VER(14, 0))
>                 return phy >=3D PHY_F && phy <=3D PHY_I;
>         else if (IS_TIGERLAKE(dev_priv))
>                 return phy >=3D PHY_D && phy <=3D PHY_I;
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index 5f479f3828bb..1623c0c5e8a1 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -998,7 +998,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
>=20
>         INIT_WORK(&dmc->work, dmc_load_work_fn);
>=20
>-        if (IS_METEORLAKE(i915)) {
>+        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>                 dmc->fw_path =3D MTL_DMC_PATH;
>                 dmc->max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>         } else if (IS_DG2(i915)) {
>--=20
>2.41.0
>
