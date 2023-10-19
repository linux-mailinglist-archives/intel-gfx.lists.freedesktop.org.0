Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D737CFEE2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 17:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E0410E525;
	Thu, 19 Oct 2023 15:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734F510E525
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 15:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697731117; x=1729267117;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=1j/pymJ25aw4tYcVoqXdqzLjcHv4MtyO1o6FlcGJq8I=;
 b=e3I5LtHabgQJg5maebhNstA60Jl1AR0MsA6+LmoQlmIbnmDWTbZpzYyq
 sW2YSznUVhLWCTMY9/1Y8sUT3XlzcbmuiM8Y9Pr53GMp0TeVnWSo19kAa
 yR7o4PQ7wvYAInssjxUJsVaMMk+vz+oSU3IggXt8jWlcuDJtMZjDdX92i
 9QsDcgiL4MTqhrAyhS7vFhrJ2etnhJnIc1vLsVmh3gm3QpRw8V9Idjt4f
 1JBwdTP/NeYJVFuiERC2AF5jOP8Eoc3VAamHBZN2FVrsnp5OdUbXajkNJ
 5swx/5RvCIvoO3SGQSpR1EzYtUw7/SX1jr2EakTg0R6XS7hQhD9EucSfs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="366529871"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="366529871"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 08:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="760681476"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="760681476"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 08:58:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 08:58:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 08:58:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 08:58:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IClBIJBRQ3f/AH2C8DPRuMo260ye6f7dUdONoqW9zDG5eP7Tn9/HmzJ+Tnwbxr1MfzRN24LVN0GXmKAaJjNjJnAsglEPF4a2CBpB8FYqUe8R8vnFRHKtw4srcUEcdtQu0q/NoOlG4mxLjKeBtoC8l6MW7iZmK1CprACu8Cc46qhQG9DG+3wsR7rnFnbeUSc4/mqJbXFmjZNmAqqt1AMtdblkUMNbZVxIEFwzSuaouNe/w+9M0bwC++EPUXGJ/7N+B9hD22q0nz7SwB9vXSJ03iOn2yGcrinJSZzdeeUgisMIk9nLvWA4AFAQ2C5+P/wJZz5nnzHrwGD2bgH3db0Uhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p0RlVcv+ZR+NbElP8IUE77zaDQIvPKt6TlrgQJemtPI=;
 b=ltVqN83fwnmWHVmiVbxi55lubrdHfh7d5VeOlabQiq0GLna7IZv0tRxzW/HXjHcN+zEdhvnS6XVcpeubNWxAFWYGS/qyhdWglyiD5QLCcPpWClu9Rpdgq0WjC7BXdN28rhK17mrwc4OU1/Glyn/5+70e19gEkX5CyrlsQ1EjNr1As+Is0/Hv4dR98BsKG0Vb5ULobNr473Kp6rkcjkQjAVwKWd2sgW1CKA5N7wV7YXQnOEjVIWgffxuMy1ogXO3ZGudIszfRuSy+urELARp+NQM8y7OAHJ4QNCMoci+nCFIIXxjoOeCN683I8UQPW6/j9UKRmZG4Gnhz7YPFuK4gtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS7PR11MB7885.namprd11.prod.outlook.com (2603:10b6:8:d8::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Thu, 19 Oct
 2023 15:58:34 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6886.034; Thu, 19 Oct 2023
 15:58:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231018222441.4131237-2-lucas.demarchi@intel.com>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
 <20231018222441.4131237-2-lucas.demarchi@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 19 Oct 2023 12:58:27 -0300
Message-ID: <169773110757.1959.6812497930987545664@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0116.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS7PR11MB7885:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b750fb1-fd4d-481c-da13-08dbd0bc3ed8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ik/is2NG+441AnDUQ1rJSV/eUWGURCweLCyhyQ7XpOyTkvXamBhXGor01Q1ZvCb4HdGoPdIYR2ZRJJ20jYoZSLlH3q+ViGuecqQTfH78ILJrFuJJadB/Fc4BwaZ7G8B5Ejt3eC9R1r78J/dRolusEJaeFmxFUXhNKIfpF7Dp0ofgHpkmVmbJx8H7LquhIJS/0caV4SISwEyWhrkZcb5FxnsyWb5Lewf7vK+RxnFnRtCV16Vgzu9PKn4EFyADUtFvFPnhLSZ0G1w5KwSE9XAprWhdhZtI8sfkzPRSUN7jn8SUYU0YABMF5qszFDkyTtej4TCxlgK080cjgFLThpjE++flEdJA947kThbzzywuLSe69tJdaIIQk2l0aXE8F3euS8lCyTo/pBkAPEjrtEita66jSN21//gNQ5erNU/6MqVc8k2O4GzJW4NNEpImwiRqgivt5gg51kGVL0qoth1fpOSphIRCdKu1U2oLITac+16II3qQZY5WerqHZXB7FLN8sqp66zUR2zDi4Q8iKoxLxlb/DFtzqeqipLWR6woAj+JjRIaJxgkwzRAGoviNYfPe2lHJOnvnIs/GKeG6NC7rq9ZzvIU2hauSCSMD3fm8Qwo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(396003)(346002)(136003)(366004)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(44832011)(83380400001)(33716001)(82960400001)(316002)(4326008)(8676002)(8936002)(6506007)(478600001)(66946007)(9686003)(26005)(54906003)(66556008)(6512007)(107886003)(66476007)(38100700002)(4001150100001)(2906002)(41300700001)(6486002)(86362001)(5660300002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THlOV0gyZStUT0diU3NqZEliZEE0dHpJd29COFhlcDRwU1F2VDgvOEJ1ZHJl?=
 =?utf-8?B?dkMzLzFzRjU4NzhkS2dwbU9wQlZ4MTBDYVJuQk1LYzkvdTJTcFdYQWNhb0wx?=
 =?utf-8?B?eHlFbnZ6VTVNU3VQMFByTVRCWWZlcDlvOVIwci9vdXB6dk1hay94VTA1VnQ4?=
 =?utf-8?B?cHl6L0FvSzVURksyRWM1bkZYaG8xc2k5WWE0UGNqandYRjd2WVF4Tzd2K2Zl?=
 =?utf-8?B?c1RWeUx1MXBEV0c5bitxSC9rQitIWWkydkNBclRic3NxeDR2YnQ4ckVlQ2dQ?=
 =?utf-8?B?Qzk1NG82MkovV0JuMU5PNUxEaTcxRFFkbXpUK3B1b2ZobGpPN3YxRDBmQzhK?=
 =?utf-8?B?V0lJYUhoeWxScVhhajgwVVdtM2xNc2s3MkxNZVF1ZVRpam9mdEVZN1g4Q3p3?=
 =?utf-8?B?UjRxSnkxV2tnS0R5ZWZHYlREM1kxRG9IZ2hNYWpZUkx3T1llWmt2U2kyaDhX?=
 =?utf-8?B?aTJuZ1R0UU1Gdk1PZjFNZ3lJTlp2MU9GbFdNSkpici9DSzNnTjNFSlpTRDlR?=
 =?utf-8?B?R21ENWZsOVZvRkJ2bGF2UEorT1g1T3UwUUsrL0tncTF4Wk9BUWE2QUVYMm9T?=
 =?utf-8?B?RWJuZ1ppZUJ0a2d3ODNOZlpndDlSMDNkZWJ4Q3d5NkVWNmRacVRndStaQVZG?=
 =?utf-8?B?akpJK1VKSFQvUW1kbXhweWdJWEJBVFE3Zjl1cm5xb1pKUHFaN3M4VjhHaHFZ?=
 =?utf-8?B?b1BxdzZCY2dBa2s1YzhESG9YNFBSWGlFWlpKRlFzOVpGRGFrdjJueXZmMEpI?=
 =?utf-8?B?K2RRaHVZUmQ0aFRhcWZobFZpL1dCZk5PU2pwMWc1TkhFZ2NxNkNHTUF5VEww?=
 =?utf-8?B?RjUwZlNWWVN5MmQ3Qjl6bEQwWDM4ZStPUzhRUk9NN3NxN012UEhCdlU2VWhx?=
 =?utf-8?B?ZkVpeGpyaEtESTdlZ3plTnBUSUxEbG55N1J6QXF6RDJGRXhWTVBGZEdBcldW?=
 =?utf-8?B?R1o5ZUlRdjFud2hmc3BsUkJEMm00cHo0VC81RTA5eXI2RHpWVml0U2ZYU2Vq?=
 =?utf-8?B?VmNRSk8wRGdpamdYUnZqa3hHUjJMajlJRVlZZmtBKzVDb0hqTDJSdUdEa0xh?=
 =?utf-8?B?TlBFaDQzS1pKTFYvdVhXRTVvd3puZk94ZHdBSVdsbDBIc3dkaUZiSVkxc0hy?=
 =?utf-8?B?bVFUVG9ZWDNNU0tZSE9FQ0h3aEJkcTdtdWIyUzE5WVA4M1lyMlJYNW10SUQx?=
 =?utf-8?B?bVhtWUQ3bWFxRk53UitoZ2Q1TUJubmp0L2ljWXRWVjJySlpkZGV4Ykpzd0pw?=
 =?utf-8?B?ZTh1L0QvVlAwK0JaQnFsUERPRGZ1OTJKTWFsTWQ4d2hCUWd4R1JaZ25Qc0Rt?=
 =?utf-8?B?ZHZZZnlFUE1YNGhSYUVrdDdWYjFzUXZLZUZZdFBhbDQ5MHZSRU5EclF4VEg2?=
 =?utf-8?B?Um83bjBNZ2tHckVZUkxYZmxJRWF0eDdQSFlQZmdCa0dCNWc4NEluTVJlcWts?=
 =?utf-8?B?QWN2WUxYbGVFVGt2QjlTRWNQVTBCcW5PcS9YQldPMWRvTzNJSXNaUTZid2dm?=
 =?utf-8?B?d0piMUZxcUdaN0FUTXMvR2ozMVhhNnRHTzZCUzNqRTc4WkxmREtPbFdEYkRS?=
 =?utf-8?B?eTJ6K3hXdi9nU1dIY2FGcXpXd1c0QU5kM1lWS3M2bG5lSmp6cU5tN0JId1Vz?=
 =?utf-8?B?V3Urdi9tM2R1UkJnM2tYRmE2ZjJhWmQxa3ExalVUbW4vY1djY3gwRm0rdTE5?=
 =?utf-8?B?ZUhjVTk0WVVqMG1JQThWQ0hzNzVwMlJRclZXbkVtMlhGdXB6aXlPc1FBVlNT?=
 =?utf-8?B?cU5yWE1taWMrUk9VS1hJNkd3cnNxc3V0Qm45WlV4a1dTUHBEUVhGemZOTUt3?=
 =?utf-8?B?aTFFdmRJcWllTTBVMkRmRDdwbVBDbkx0R0dtVmlIUXNBL1IwNWlzd29vSlp0?=
 =?utf-8?B?cjVNbGZaZUw2WVg0aHpsSDVpUS8xTXBVcVhsK1lwWWlhTzd1YjRxYUpxUzlG?=
 =?utf-8?B?czlFZ1VNd2trZk1hN2hZek04SThtYmpWTkc4ZDB3YmFwSVBINkt4ejBGS2RE?=
 =?utf-8?B?elhsWWRMK1QwQVovV3g4QnB6Vk0yR3E4RXEwSHdzRWpxT1hGYjdqaGdyNFEr?=
 =?utf-8?B?Ri9ORzZaZWVVN0xPMElraWFtUmdxSkRVNGRSeTh5T2FzaDJGNGlJaXNpQmg4?=
 =?utf-8?B?dmxCS1RnMlpPYzcwRWh4cVRjTzJ0MXJFQjhVdzNZQmpZWVJjdUxFVkVBWWZV?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b750fb1-fd4d-481c-da13-08dbd0bc3ed8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 15:58:33.9047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: btJ+mlQqpe27MlXIyiJvv74x9y+y9AnXmm6/8wgv3dEx6YXQ9TW9t9whE/pHdae+30Yq1AcYHMlNMPghkDTnVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7885
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/lnl: Extend C10/C20 phy
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-10-18 19:24:40-03:00)
>For Lunar Lake, DDI-A is connected to C10 PHY, while TC1-TC3 are connected
>to C20 phy, like in Meteor Lake. Update the check in intel_is_c10phy()
>accordingly.
>
>This reverts the change in commit e388ae97e225 ("drm/i915/display:
>Eliminate IS_METEORLAKE checks") that turned that into a display engine
>version check. The phy <-> port connection is very SoC-specific and not
>related to that version.
>
>IS_LUNARLAKE() is defined to 0 in i915 as it's expected that the
>(upcoming) xe driver is the one defining the platform, with i915 only
>driving the display side.
>
>Bspec: 70818
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
> drivers/gpu/drm/i915/i915_drv.h              | 1 +
> 2 files changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index d414f6b7f993..e775f4721158 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -31,7 +31,7 @@
>=20
> bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
> {
>-        if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy < PHY_C)
>+        if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
>                 return true;
>=20
>         return false;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 6a2a78c61f21..259884b10d9a 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -575,6 +575,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_DG2(i915)        IS_PLATFORM(i915, INTEL_DG2)
> #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
> #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
>+#define IS_LUNARLAKE(i915) 0
>=20
> #define IS_DG2_G10(i915) \
>         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
>--=20
>2.40.1
>
