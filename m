Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5227179D11D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CB210E19C;
	Tue, 12 Sep 2023 12:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF39510E19C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694521909; x=1726057909;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=X7L3xGO2PF3dKGuBAt6MVw/fz7hbSO3kqaH825ZGNPU=;
 b=QfiCixgm/sh19KbtgLSSM9Dm/+27Tefr+JubMDO5hM6cs1FMU72ynuqB
 3Y2PSwJ6RTWDOrg1J9cAtA0wdqNz6aCUnbB4Z66t+E3piFNSEhDL9R12B
 GSJsf94iK3apG40paTrI80Xt4yXZ735TMTt8R9sIBAtNsOpemIbxk1d6G
 0rSh8CLZsV8S0S/g5doD7LKoIXL/Is1C4dAP5ZCBjqWP4+LTnwr06slvl
 aZ4N3RmSKcY/SqeUWSk03IZIGWwabQMGRTstFhSYyDiWz+VGm0TqTep0L
 QQm+saMxQp480HJu7F/fbFDipLD/Mgvy3EfMK2Vb62KpioJjwS0sd9Tx9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="442374866"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="442374866"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:31:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="743707810"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743707810"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 05:31:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:31:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 05:31:48 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 05:31:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gFl0pVuuJlZvsT7JDhfgjlz/LReFV5+ZwdWhsxGuR6OdL7Ynf4Q+LglQ8WW3hY0EMMm9zoT3i9AKLVGuHJv7P5o+m56JEqLuFeht/GNS8rONtBT2MxqZ31+PHpCxU0gXNbPMoIMi5mXWrqheDVdpiTp1CnH6Z/+S6Yc0xGsbjn9YRdGTg1M4JOCpvxCSQY5r018hbhndK8zCFGIPHPo60tnqwlyCBmhUxCLRDghpIzdr6ZZpLwz9fQb3X2D+83ctMmsBVLPsFbKxu29BlPPt5ohqLayqwRKReoWNAY8xyF0qQQMeY/skTdL1r/dXtDmeqafhhjQSunNr3gy9R4TRcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1DILkmZzUMRVnSZiN1IdyLZvGSzG4PYtPep4ZzDR/I=;
 b=MVanYodzLNh6i0k2+VnSCAu1IH/sdY/mlsAhVo98GC9ERjt65W3TODn4RhNUu7QTkjnc85Rhn3RsM/NjJcRkzcb1Oprbs7Vh4hVuYm8JbnVJsWx/5hv82v0UlvuqKzZpAhS/UBKWxuEWbrW2L8bVEig+dcrgX9GRfJXgAWtKDf9mJApnkbwbgMVVcXRydDFiKpLptBrQLBERvn6DT9c0+LSTVMgPgoG93tm3Av09a8goFlQZOzQ13L7ainqRG3qVa4FU2cd21L4HdN3aEwD/q6oefZKJZLNSWHYpq38W1+Bphb/dsPMB5DDBcQraas/bijj72+Ke/FmxEP+fbvs48Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Tue, 12 Sep
 2023 12:31:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Tue, 12 Sep 2023
 12:31:47 +0000
Date: Tue, 12 Sep 2023 08:31:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQBaLpCzfz6Mqyqb@intel.com>
References: <20230912120537.2158209-1-jani.nikula@intel.com>
 <20230912120537.2158209-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912120537.2158209-2-jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0061.namprd04.prod.outlook.com
 (2603:10b6:303:6b::6) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7788:EE_
X-MS-Office365-Filtering-Correlation-Id: 49397b9b-f74d-42f1-055f-08dbb38c3af3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mydtlkNuDH8wnsZGOmLjitAHLQi1uwmYYa/Oc4wyPirAy3zShxU7DlrGIwdMtpLCf0LC6bLvB3dFY4GopYCxeh48XuGxdDSUBKfHOPyO/Tk0PIyGSaCzYb7nCyAQn9/rvfAHWGKtFp7oqEzUY4ZIXO57tlkqPTS9q2UYk1vfDQfutx/0VU/ndA6PpD9eEUrv3BqxiXX1f7za2pYHBwpiaUvxdVfvTZkOxW13vn9w9junpvi+FPiKjHSGbpmOrSTKoy2ggY9cNFfhdCq4kwqsqg2tQ0vGJnVO+BDjjITMqHO4y9KDchxrf1lat/Ru/aF7YHBrqJSkdFzXUFKNc4dPyqz9fhvqgKIWWycLap/ngIKCyPuDlY0jWKbvQ5aO/m7/y3wTwK6YEs1r/Z9jvD8A1Xb8GfPDTJ6ZuLSqFmjHV3OS7OEc+04SK0ZQKX6rlU+WHiYVo5cBRCtooDJrPEeorYOrd+CLUT0aNK9RuF6CH5Yg4lNSdgJoWVwpNna2iznv1CcLhwV6IMuVmLNpGoFC3UiDatJNrG96M9CCFQIi54ZNhAnTvRNgpSlcptAw7DIl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(39860400002)(346002)(451199024)(1800799009)(186009)(8936002)(4326008)(26005)(6862004)(8676002)(107886003)(5660300002)(2616005)(83380400001)(44832011)(6512007)(41300700001)(6506007)(6486002)(66476007)(66556008)(37006003)(6636002)(66946007)(82960400001)(6666004)(38100700002)(316002)(86362001)(36756003)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ixjMzD+2tg0uklGJMKTA2lwQZROh4uvolDcM8kc9z/i+L6JXqGHVVgWQy3bc?=
 =?us-ascii?Q?7tJfBU3b33UKE+gaB/2qVXVmFp0M7jdZJMez9tok2/Pn86JaRwzlmBh+KWlw?=
 =?us-ascii?Q?HW2/2bOWc7PS9GjAqbgBNZgoe5Ofh0jqvEjfZIYQMITCM8/ttcbNRhtqNE0X?=
 =?us-ascii?Q?n0vtmI5BFqr0Goa14IMIrM5EuAGlj4hgPWDJ4OLt8Jsxx7cAF2qv/OjrMn+U?=
 =?us-ascii?Q?Kn2zBMOIgIdpzoP9PmwvDesH0D1PyoVz0Zdl8hBJNQVQT4vVV0eV0yyC+nYk?=
 =?us-ascii?Q?vbm49bXcDH5BSf0mVkuAJAtMaN0YYlDKlrg0XDM2Z+NU8Oih3MvDfaYlJQSx?=
 =?us-ascii?Q?UlK3zJ9S5YAhlQqZUXkWDi5oOLfwZEoqHCTRQa61+dAJLPkExdtbbXryGsmG?=
 =?us-ascii?Q?688SscuB4JFaNHF7OVheAESTEukCOltuntnB+oJ1xkQkXhWd2fIg8GSdeYfo?=
 =?us-ascii?Q?7cHn1i+4mGqtEN9zpvIb3QMJP76x1MSOhInKqgXgjMer9cYk5zknx5POV98U?=
 =?us-ascii?Q?S3n/yiU5NDNLEYKRNqccMkViErQem+EW4GMNtgZ79VA/LflQMb24iaz7dBJE?=
 =?us-ascii?Q?3aebTLiYDK/7hDXhQK9jEJa9FotGBv84eeUFcC0iVnowrDtPCPGVs7QRDd4v?=
 =?us-ascii?Q?6MCj+CWQ4BlZAq4k76U3ehIgcRoAejR/ZqrCi0rod4RaU5PDb7DoDRPIr+bl?=
 =?us-ascii?Q?KaAvRyyXAQ9WMgEpdLDpodI6Q167d9/BRLCGGSYCjQxOgGB9xSrPzXfUqtmn?=
 =?us-ascii?Q?k1zCjA1u9Nlvx0HdKvWWPyU6MB0s6QaXyuMnv7IWeXCqEPVgCrJmYpcKIwvn?=
 =?us-ascii?Q?yd70sO0Vny8Hj/XfygO7Vd4XQXrypLZbzMkdVorCuEGbqMP4Dp7qIoywbDRH?=
 =?us-ascii?Q?lsdQVsdjcwJnSYwXImlEzhqVgOdoU9CeJs5rhzS8FhSFKF8nlL8AJIwMnIIw?=
 =?us-ascii?Q?tDsXf59WGG5zO3q9lpPSZE0KuxV9OLHNBGiND2v+UJF+vQX6e3UmZ/j7PMBn?=
 =?us-ascii?Q?xM4OzUu+Q+ZLo/huCcgHE9z37kfEDj0dQQAM2wZNfDV0wiI7hlhUURQcymEB?=
 =?us-ascii?Q?f8Fozv9rZOq20QRDsBBAu3kdozUvM1fKXnvlDouM9ZOWRaMId2IpedokaN5R?=
 =?us-ascii?Q?Ii/oFXFWskVflOQiPGRZbFsykOG+KL1eJfeYEMUldhbHWlmPJBORl86V9B+4?=
 =?us-ascii?Q?ZIu2zryndCitLpEYan6Db2Jx87MUeZxNTwkaUuFHik8oqB9HSti/adtMPkOp?=
 =?us-ascii?Q?T0pUY+Tu3DYIL/xJL8G9xoYD6AHXx5KJ8iHbzufSrUQPLWBS3/5sB6uXlgFr?=
 =?us-ascii?Q?Fru8moofo/lv7JD9IOpAVvEnyGrXmuPGqqi62//ZqK6r3s+h4+TahC5blGgp?=
 =?us-ascii?Q?gmJysuNYDfupFM//rqo1EGTyPcoqi3TqlxirAd8Y4YjCvqiytBAIYL/T7EkD?=
 =?us-ascii?Q?uyzbYBKl9lCIq/O/NBUq6AAmzBCZExJIf2ULoDvOKXzyPCeqVwXBLSmvyxlI?=
 =?us-ascii?Q?q9oRf2TFc4VxsVygWU9i34L0Fi/2ZVEdeYZ+kmh4yIFkheKDvsBIm7zIaQ+7?=
 =?us-ascii?Q?7/JkuE1reedZSeePZ9YzDwy2VNfHRgiVjdyO7Rz0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49397b9b-f74d-42f1-055f-08dbb38c3af3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 12:31:47.2367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ncB/r9tMp+zphpUuztqPQScNGzAKnbPemdHIjt3RnvCQhyKU3uIBzWiDqqI7OvS0Ammv0Lj0jJwufVR7eIAWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: call gmdid display
 probe at a higher level
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 12, 2023 at 03:05:36PM +0300, Jani Nikula wrote:
> Move gmdid selection one abstraction level higher.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_device.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index ed564566e31b..4a6c4ee503b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -851,15 +851,11 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
>  }
>  
>  static const struct intel_display_device_info *
> -probe_display(struct drm_i915_private *i915, bool has_gmdid,
> -	      u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
> +probe_display(struct drm_i915_private *i915)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	int i;
>  
> -	if (has_gmdid)
> -		return probe_gmdid_display(i915, gmdid_ver, gmdid_rel, gmdid_step);
> -
>  	if (has_no_display(pdev)) {
>  		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
>  		return &no_display;
> @@ -878,11 +874,16 @@ probe_display(struct drm_i915_private *i915, bool has_gmdid,
>  
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
> +	const struct intel_display_device_info *info;
>  	u16 ver, rel, step;
>  
> -	/* Probe display support */
> -	i915->display.info.__device_info = probe_display(i915, HAS_GMD_ID(i915),
> -							 &ver, &rel, &step);
> +	if (HAS_GMD_ID(i915))
> +		info = probe_gmdid_display(i915, &ver, &rel, &step);
> +	else
> +		info = probe_display(i915);
> +
> +	i915->display.info.__device_info = info;
> +
>  	memcpy(DISPLAY_RUNTIME_INFO(i915),
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
> -- 
> 2.39.2
> 
