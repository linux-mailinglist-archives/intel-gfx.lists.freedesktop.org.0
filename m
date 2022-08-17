Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EC2596824
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 06:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AA3A10E57D;
	Wed, 17 Aug 2022 04:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2900310E428
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660710304; x=1692246304;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bqLCwfgOEzGzvdTCdJpINVPxhE89fR72imHPwJW+/WE=;
 b=GkyflhG7q/u1FKhGt7trmMujSV8g3tmOYI6TISiatEq+d1LXIzkVClBg
 Pg3YMb4F4inoEtifGUs6HuCnnxgaOGhZPncY4jYdA9em47irdYK0Kr3VW
 q7VVelrzLPSVI8zT35YHkL2bov/wArM7BfktvuYckqKePsRkdDneEQywr
 Q8RD6wfOfuxa5tt8Uo2DaA9s46rkBCQ+3AXoA+PNmthpT+fhHMSAplJnw
 rGULhDqSOpG3RSLyFMpaxo/rNEIeEKarEp91ZLDb7ebCLlEqD2olL3l/1
 28c/Q6plL4XrKDrjn/R/JVD9f9eX7NraMbU7SIfOPJ94nvO6fh7Uy0vQB w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="356394263"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="356394263"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="675486403"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2022 21:25:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:25:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:24:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:24:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:24:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ds6EIfpREVHUw7BZI3THIuk2+et/f3I5SEDqckBIUx5+f7bdOmCZl9afEXi4S8IYxAa1+cWcGWpOM8CxPe/lgQhr7wKqOyaM+BF5vFRz7Ll9TYVd3yqFUEKVmjfOeBW/Ew/TtAMagyXrp6ZEVM6rZCAKELwC7fIhFbuBgSkLM/emPcrP8xqzB+bPL5IoAyIfJuV7DHTfK0VBI7YTeghLWQK+MAyB+Rn7vLqXjloNOiR1UTrGisckeqZYSGNsVGJsYKReJB+yElgsKPgf0pF48+nL1gZ+9JO/W7xS4xaEsZllSy8jMHwXYiJEc3x4azH3tGD0qNygWUPz8WYR4jFffw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8SmsnMWG+GuCDaciT+KR2SQzfJH4OPW/Ds6NgSLdbzE=;
 b=dX8yx0Y60cOdA3JCnMIBO68i90FjOqT8wML1RCt62fqq6axTTdVMrEr55TQEZgV8fHgHn+Rz4Ip7uHMU4WNMf3vAY5/Kc0HTQAtSJ8fqxljuM8x9cm15hanInM7HIef8asZyS02JKOasHcbrvwv1ILc4Gl2zDznzPtkxKTbS8LYYOhCNW40GmtBdS/XukIQnZo24jRT2tNspCDC0tcpUL2KEFVLhwi0IfPD4wlCO+wJJsl9VOVMJWrvPl7Vv+kJDbGDN4domZXOtY5Ozb1DzIGGRvcJhnyRxWI5PdI2fHhHvT4pMi8kYRng2oOn76cKjt5yQciolBuicUbQinF0KhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 04:24:55 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:24:55 +0000
Date: Tue, 16 Aug 2022 21:24:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817042452.h2l3s3xdjnoiwrnq@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d1df3b57f05685146514a94c11af26387dbd1fcc.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <d1df3b57f05685146514a94c11af26387dbd1fcc.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0047.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6435a61-06dc-419c-6bc3-08da80086fd6
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aC964+T6l08COaRV4ZihW0yx5DZ5eQhbuqwIoB1rM47VwcgOaKezvGMQpBSNH2amaeahX2FmOwKlE0dZaDWO02To0OZPE0mH6EIpofO9btV825AKbeA9xVaHWLlc6uqeetM3aiwsqMPOFVRNBupPzphw2PvQCRObdzHcNN+9DV0flYD047uyUviS5ZPMQS7lkCTR44SYajRYr6j0Ud1PsYQSr2e0WnWmXxizMjL/FuIdag+24tbveLRxTkwaUsaSuVsUS2OG9AvxaX/utmfanf8uqQ9V0roqlPm+ETDOk8xfiqmcqGNKeI+/1ShAGvrW+1NvcrOm0xpKcZf/GApUVUtsDGNFbsoE9NJ643kAtK3UlU+74sOPYe2i6JRQChLgZjPpTeW2MO00I16XNiWVbWFo0hL6/KaVPjqaCyjR9EeodKPr4/hBUjBK3PHF+otwmoO1xkhl5fV6jNnmeZv6HJKBwsMZqrwryqsttAy1v79AAQC0HIopInC879uNyAft/zOFAq72kYF1GSIulOSO7vc6LtvF+fbELH6/Uym2/XsNbmJ00pwe6xBDa9whEp1uchHfYbMYThJ0LL87Muv1m4p8XvVZla2YgpYrI0n6TLgzysndY+b87ywhTIPKHjAvphmj/Tq7ChJOIbZfOMXDyiZ8zoaL2H7Wq85ZcY5wRpjVAHwBsRQWog9jR0x59mKjVN2sD6EwtWpC3Bjg9pJ3YWxzEF5d0/qotyVsNnafgT7BxVCnsFIBgQybtUnaj72F
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(346002)(396003)(366004)(376002)(38100700002)(6486002)(4326008)(2906002)(30864003)(86362001)(8936002)(6862004)(5660300002)(66476007)(66556008)(26005)(83380400001)(82960400001)(6636002)(6506007)(8676002)(66946007)(36756003)(316002)(186003)(41300700001)(6666004)(1076003)(9686003)(478600001)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VR8Ncwts8JGzU372oKWsmkBwNABhJPun5S+LfPbHCsMv5VGdmXrWoC5afW5Z?=
 =?us-ascii?Q?dGG3+/knGiULBtQa7uxX/30g/N2I6YnDbzxMxI/sDNL/9VUGc0TfVNECWWKp?=
 =?us-ascii?Q?J//LmGK+iaJD+m7xxtE0IOqp1C2Veul+BJfviNBeFpvs4lleEtJqJ9hlwO99?=
 =?us-ascii?Q?3SPWWOkL8eXE3UBEjEDbLalh33S7I0CD/Tk8T3cTCLhA/Y81PXBculUiyWSh?=
 =?us-ascii?Q?iRfYYsHvbJMpTF5/iLJ+sdpVGsYZQr9JEwXdoHaQNzpEh6wOixzGcYz/XE0I?=
 =?us-ascii?Q?+OD0dWY2AJFXxrm0JHvclhyG9qBKtGsflaNtlITF1JZ5cLh468lIdWaWU7o8?=
 =?us-ascii?Q?J9whjOwmj8ZhPQNX1pAFaUbwI236/Feh6wlp+VxlKbC7A3LfryabWqvgm50f?=
 =?us-ascii?Q?60zkDIsLP6PfhoxNQk9WqlTqqmcAbVVwwoBIY+yu5kn/ySch7I/UCPf3oBti?=
 =?us-ascii?Q?P8B3lSxtpgwJNzZHN0/Dc/G0AngWud6xIcDyXRH9Nehb/zvTWAm3URyTMxWl?=
 =?us-ascii?Q?VtO9A6pEUQZBvTt8KQTfI2jVP+gxolOxlOgmho0EW1svXVHHOrNmQmn3JOy8?=
 =?us-ascii?Q?6SObqd6Cf3lKK4YgBumIb2XXhsMz1jeE+7fPSjQLPTAs93fCF7wZkGz5DN2a?=
 =?us-ascii?Q?5Oy3ecjKzWfpxMiv+mT+Gw6JltL9fzPvURcJAVX3/w1kOG44Pg7VWpOdLR0V?=
 =?us-ascii?Q?uwTc3miAetSUCpINIunme7Onc2CaUYCdaXbVyhP5ckjwsPVfY6QSOerrMkA9?=
 =?us-ascii?Q?7vFmCPUN1TRWO7qUTpGKBuZc5rDWMkugAC0P5kbo8RsZ2tB8s/HahBiqPepH?=
 =?us-ascii?Q?MHOVdEyi0vytzciAVojSl3ImDZCttONXzbA2KqrYlS10NkNmvqjb+E1gMJFo?=
 =?us-ascii?Q?eluhSkGMfUKvi+ZRMYdY6CGJTJKthwoW/XnntsN0EGG33TyUHz8L0ACVnMSL?=
 =?us-ascii?Q?paF6BGBQs6y57oJwwbYcyTI0FjAJkOB6yEAPIdIS+RHLbiVLxIPF3sN8/BUa?=
 =?us-ascii?Q?rG526Ktr9eCe2jEBx/wAnoXeiKFZ+m7OhRfUijUgyGvRaq+Gyoa2fjFz+C6I?=
 =?us-ascii?Q?PdDZVkn2VY8XzhriKfEvAN5j/xnWvrm9AxKhPs6sbFyAg0pIhnsXOSRmlpws?=
 =?us-ascii?Q?YbHB9CtZNANDYsSRqp5oH8fBrKxuEDNK8Zxeu06yDZxrFIZT6PD/w1+a9Dwv?=
 =?us-ascii?Q?jyP3md+nGTkq480iS8oxLiJwC5b5fmkrDpRLSRpwbSgYJB3N3c34/S7lYi7Z?=
 =?us-ascii?Q?hGF6Aj5kwSzozvoq+Ar7jSa9iBemqrq1OXgyN6s4YN6ObVoqFJmWlRwlPx89?=
 =?us-ascii?Q?bz+wQotapo5X38ggTN9DS2yAmvcchjMYvTPHS1YXbU6P+i9crz4BaZq7hSMU?=
 =?us-ascii?Q?heJRfQ2OtofHB+2wdB+bp/cPqDhxv+Sx5MWgtZQCmhzOxhlXU8T9jjUzLbqM?=
 =?us-ascii?Q?sIkaSh1KxoXK9jebd+xZ6fsZLMCsn2C5M8biJD4XplsNQBVuCTCB8XJpGnNt?=
 =?us-ascii?Q?1JxHCaCiHUsCHafqPZDPQ99vznfC6zZi/mCKlf1gi8yFTU4lHMj3LyZOd1+k?=
 =?us-ascii?Q?dbiAR6E7XnHQSJ2RG3L6I79BfenQJka3c8nAcmv36HQ4lARSLGJWQgaEW7So?=
 =?us-ascii?Q?aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6435a61-06dc-419c-6bc3-08da80086fd6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:24:55.4808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 58wWYjf9+R/fjhI2NldRZUqLGw+FNplw4UtsoFTjR+JvZ68xBoxddki8wXAGocowwHKGMSYZuGJKIbVra0VIv+SS2Ci7Enl2YjOhpNV+q/A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3674
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 17/39] drm/i915: move hotplug to
 display.hotplug
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 11, 2022 at 06:07:28PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.

missed the mention that i915_hotplug is now intel_hotplug.


For this and all previous patches (except patch 5, for
clock_gating_funcs):

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/g4x_dp.c         |   4 +-
> drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
> .../gpu/drm/i915/display/intel_display_core.h |  40 ++++++
> .../drm/i915/display/intel_display_debugfs.c  |  16 +--
> drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
> drivers/gpu/drm/i915/display/intel_hotplug.c  | 116 +++++++++---------
> drivers/gpu/drm/i915/display/intel_tc.c       |   4 +-
> drivers/gpu/drm/i915/i915_driver.c            |   6 +-
> drivers/gpu/drm/i915/i915_drv.h               |  40 ------
> drivers/gpu/drm/i915/i915_irq.c               |  52 ++++----
> 10 files changed, 144 insertions(+), 144 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
>index 82ad8fe7440c..e3e3d27ffb53 100644
>--- a/drivers/gpu/drm/i915/display/g4x_dp.c
>+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>@@ -1169,7 +1169,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
> static bool ibx_digital_port_connected(struct intel_encoder *encoder)
> {
> 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>-	u32 bit = dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
>+	u32 bit = dev_priv->display.hotplug.pch_hpd[encoder->hpd_pin];
>
> 	return intel_de_read(dev_priv, SDEISR) & bit;
> }
>@@ -1223,7 +1223,7 @@ static bool gm45_digital_port_connected(struct intel_encoder *encoder)
> static bool ilk_digital_port_connected(struct intel_encoder *encoder)
> {
> 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>-	u32 bit = dev_priv->hotplug.hpd[encoder->hpd_pin];
>+	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
>
> 	return intel_de_read(dev_priv, DEISR) & bit;
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>index 23c8287b0262..320304809ed6 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -4032,7 +4032,7 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
> static bool lpt_digital_port_connected(struct intel_encoder *encoder)
> {
> 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>-	u32 bit = dev_priv->hotplug.pch_hpd[encoder->hpd_pin];
>+	u32 bit = dev_priv->display.hotplug.pch_hpd[encoder->hpd_pin];
>
> 	return intel_de_read(dev_priv, SDEISR) & bit;
> }
>@@ -4040,7 +4040,7 @@ static bool lpt_digital_port_connected(struct intel_encoder *encoder)
> static bool hsw_digital_port_connected(struct intel_encoder *encoder)
> {
> 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>-	u32 bit = dev_priv->hotplug.hpd[encoder->hpd_pin];
>+	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
>
> 	return intel_de_read(dev_priv, DEISR) & bit;
> }
>@@ -4048,7 +4048,7 @@ static bool hsw_digital_port_connected(struct intel_encoder *encoder)
> static bool bdw_digital_port_connected(struct intel_encoder *encoder)
> {
> 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>-	u32 bit = dev_priv->hotplug.hpd[encoder->hpd_pin];
>+	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
>
> 	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index 8ac63352b27b..cf31ad0c9593 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -102,6 +102,45 @@ struct intel_dpll {
> 	} ref_clks;
> };
>
>+struct intel_hotplug {
>+	struct delayed_work hotplug_work;
>+
>+	const u32 *hpd, *pch_hpd;
>+
>+	struct {
>+		unsigned long last_jiffies;
>+		int count;
>+		enum {
>+			HPD_ENABLED = 0,
>+			HPD_DISABLED = 1,
>+			HPD_MARK_DISABLED = 2
>+		} state;
>+	} stats[HPD_NUM_PINS];
>+	u32 event_bits;
>+	u32 retry_bits;
>+	struct delayed_work reenable_work;
>+
>+	u32 long_port_mask;
>+	u32 short_port_mask;
>+	struct work_struct dig_port_work;
>+
>+	struct work_struct poll_init_work;
>+	bool poll_enabled;
>+
>+	unsigned int hpd_storm_threshold;
>+	/* Whether or not to count short HPD IRQs in HPD storms */
>+	u8 hpd_short_storm_enabled;
>+
>+	/*
>+	 * if we get a HPD irq from DP and a HPD irq from non-DP
>+	 * the non-DP HPD could block the workqueue on a mode config
>+	 * mutex getting, that userspace may have taken. However
>+	 * userspace is waiting on the DP workqueue to run which is
>+	 * blocked behind the non-DP one.
>+	 */
>+	struct workqueue_struct *dp_wq;
>+};
>+
> struct intel_wm {
> 	/*
> 	 * Raw watermark latency values:
>@@ -213,6 +252,7 @@ struct intel_display {
> 	struct intel_audio audio;
> 	struct intel_dmc dmc;
> 	struct intel_dpll dpll;
>+	struct intel_hotplug hotplug;
> 	struct intel_wm wm;
> };
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>index 395facf6c1aa..13c855b59f7d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>@@ -1618,14 +1618,14 @@ static const struct file_operations i915_cur_wm_latency_fops = {
> static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
> {
> 	struct drm_i915_private *dev_priv = m->private;
>-	struct i915_hotplug *hotplug = &dev_priv->hotplug;
>+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
>
> 	/* Synchronize with everything first in case there's been an HPD
> 	 * storm, but we haven't finished handling it in the kernel yet
> 	 */
> 	intel_synchronize_irq(dev_priv);
>-	flush_work(&dev_priv->hotplug.dig_port_work);
>-	flush_delayed_work(&dev_priv->hotplug.hotplug_work);
>+	flush_work(&dev_priv->display.hotplug.dig_port_work);
>+	flush_delayed_work(&dev_priv->display.hotplug.hotplug_work);
>
> 	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
> 	seq_printf(m, "Detected: %s\n",
>@@ -1640,7 +1640,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
> {
> 	struct seq_file *m = file->private_data;
> 	struct drm_i915_private *dev_priv = m->private;
>-	struct i915_hotplug *hotplug = &dev_priv->hotplug;
>+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
> 	unsigned int new_threshold;
> 	int i;
> 	char *newline;
>@@ -1679,7 +1679,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
> 	spin_unlock_irq(&dev_priv->irq_lock);
>
> 	/* Re-enable hpd immediately if we were in an irq storm */
>-	flush_delayed_work(&dev_priv->hotplug.reenable_work);
>+	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
>
> 	return len;
> }
>@@ -1703,7 +1703,7 @@ static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
> 	struct drm_i915_private *dev_priv = m->private;
>
> 	seq_printf(m, "Enabled: %s\n",
>-		   str_yes_no(dev_priv->hotplug.hpd_short_storm_enabled));
>+		   str_yes_no(dev_priv->display.hotplug.hpd_short_storm_enabled));
>
> 	return 0;
> }
>@@ -1721,7 +1721,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
> {
> 	struct seq_file *m = file->private_data;
> 	struct drm_i915_private *dev_priv = m->private;
>-	struct i915_hotplug *hotplug = &dev_priv->hotplug;
>+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
> 	char *newline;
> 	char tmp[16];
> 	int i;
>@@ -1757,7 +1757,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
> 	spin_unlock_irq(&dev_priv->irq_lock);
>
> 	/* Re-enable hpd immediately if we were in an irq storm */
>-	flush_delayed_work(&dev_priv->hotplug.reenable_work);
>+	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
>
> 	return len;
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>index 32292c0be2bd..8d9c3af8443d 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -5023,9 +5023,9 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *connector)
> 	struct drm_i915_private *i915 = to_i915(connector->dev);
>
> 	spin_lock_irq(&i915->irq_lock);
>-	i915->hotplug.event_bits |= BIT(encoder->hpd_pin);
>+	i915->display.hotplug.event_bits |= BIT(encoder->hpd_pin);
> 	spin_unlock_irq(&i915->irq_lock);
>-	queue_delayed_work(system_wq, &i915->hotplug.hotplug_work, 0);
>+	queue_delayed_work(system_wq, &i915->display.hotplug.hotplug_work, 0);
> }
>
> static const struct drm_connector_funcs intel_dp_connector_funcs = {
>diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>index 5f8b4f481cff..f7a2f485b177 100644
>--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>@@ -119,13 +119,13 @@ intel_connector_hpd_pin(struct intel_connector *connector)
>  * responsible for further action.
>  *
>  * The number of IRQs that are allowed within @HPD_STORM_DETECT_PERIOD is
>- * stored in @dev_priv->hotplug.hpd_storm_threshold which defaults to
>+ * stored in @dev_priv->display.hotplug.hpd_storm_threshold which defaults to
>  * @HPD_STORM_DEFAULT_THRESHOLD. Long IRQs count as +10 to this threshold, and
>  * short IRQs count as +1. If this threshold is exceeded, it's considered an
>  * IRQ storm and the IRQ state is set to @HPD_MARK_DISABLED.
>  *
>  * By default, most systems will only count long IRQs towards
>- * &dev_priv->hotplug.hpd_storm_threshold. However, some older systems also
>+ * &dev_priv->display.hotplug.hpd_storm_threshold. However, some older systems also
>  * suffer from short IRQ storms and must also track these. Because short IRQ
>  * storms are naturally caused by sideband interactions with DP MST devices,
>  * short IRQ detection is only enabled for systems without DP MST support.
>@@ -140,7 +140,7 @@ intel_connector_hpd_pin(struct intel_connector *connector)
> static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
> 				       enum hpd_pin pin, bool long_hpd)
> {
>-	struct i915_hotplug *hpd = &dev_priv->hotplug;
>+	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
> 	unsigned long start = hpd->stats[pin].last_jiffies;
> 	unsigned long end = start + msecs_to_jiffies(HPD_STORM_DETECT_PERIOD);
> 	const int increment = long_hpd ? 10 : 1;
>@@ -148,7 +148,7 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
> 	bool storm = false;
>
> 	if (!threshold ||
>-	    (!long_hpd && !dev_priv->hotplug.hpd_short_storm_enabled))
>+	    (!long_hpd && !dev_priv->display.hotplug.hpd_short_storm_enabled))
> 		return false;
>
> 	if (!time_in_range(jiffies, start, end)) {
>@@ -191,7 +191,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
>
> 		pin = intel_connector_hpd_pin(connector);
> 		if (pin == HPD_NONE ||
>-		    dev_priv->hotplug.stats[pin].state != HPD_MARK_DISABLED)
>+		    dev_priv->display.hotplug.stats[pin].state != HPD_MARK_DISABLED)
> 			continue;
>
> 		drm_info(&dev_priv->drm,
>@@ -199,7 +199,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
> 			 "switching from hotplug detection to polling\n",
> 			 connector->base.name);
>
>-		dev_priv->hotplug.stats[pin].state = HPD_DISABLED;
>+		dev_priv->display.hotplug.stats[pin].state = HPD_DISABLED;
> 		connector->base.polled = DRM_CONNECTOR_POLL_CONNECT |
> 			DRM_CONNECTOR_POLL_DISCONNECT;
> 		hpd_disabled = true;
>@@ -209,7 +209,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
> 	/* Enable polling and queue hotplug re-enabling. */
> 	if (hpd_disabled) {
> 		drm_kms_helper_poll_enable(dev);
>-		mod_delayed_work(system_wq, &dev_priv->hotplug.reenable_work,
>+		mod_delayed_work(system_wq, &dev_priv->display.hotplug.reenable_work,
> 				 msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
> 	}
> }
>@@ -218,7 +218,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
> {
> 	struct drm_i915_private *dev_priv =
> 		container_of(work, typeof(*dev_priv),
>-			     hotplug.reenable_work.work);
>+			     display.hotplug.reenable_work.work);
> 	struct drm_device *dev = &dev_priv->drm;
> 	struct drm_connector_list_iter conn_iter;
> 	struct intel_connector *connector;
>@@ -233,7 +233,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
> 	for_each_intel_connector_iter(connector, &conn_iter) {
> 		pin = intel_connector_hpd_pin(connector);
> 		if (pin == HPD_NONE ||
>-		    dev_priv->hotplug.stats[pin].state != HPD_DISABLED)
>+		    dev_priv->display.hotplug.stats[pin].state != HPD_DISABLED)
> 			continue;
>
> 		if (connector->base.polled != connector->polled)
>@@ -245,8 +245,8 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
> 	drm_connector_list_iter_end(&conn_iter);
>
> 	for_each_hpd_pin(pin) {
>-		if (dev_priv->hotplug.stats[pin].state == HPD_DISABLED)
>-			dev_priv->hotplug.stats[pin].state = HPD_ENABLED;
>+		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED)
>+			dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
> 	}
>
> 	intel_hpd_irq_setup(dev_priv);
>@@ -297,16 +297,16 @@ static bool intel_encoder_has_hpd_pulse(struct intel_encoder *encoder)
> static void i915_digport_work_func(struct work_struct *work)
> {
> 	struct drm_i915_private *dev_priv =
>-		container_of(work, struct drm_i915_private, hotplug.dig_port_work);
>+		container_of(work, struct drm_i915_private, display.hotplug.dig_port_work);
> 	u32 long_port_mask, short_port_mask;
> 	struct intel_encoder *encoder;
> 	u32 old_bits = 0;
>
> 	spin_lock_irq(&dev_priv->irq_lock);
>-	long_port_mask = dev_priv->hotplug.long_port_mask;
>-	dev_priv->hotplug.long_port_mask = 0;
>-	short_port_mask = dev_priv->hotplug.short_port_mask;
>-	dev_priv->hotplug.short_port_mask = 0;
>+	long_port_mask = dev_priv->display.hotplug.long_port_mask;
>+	dev_priv->display.hotplug.long_port_mask = 0;
>+	short_port_mask = dev_priv->display.hotplug.short_port_mask;
>+	dev_priv->display.hotplug.short_port_mask = 0;
> 	spin_unlock_irq(&dev_priv->irq_lock);
>
> 	for_each_intel_encoder(&dev_priv->drm, encoder) {
>@@ -335,9 +335,9 @@ static void i915_digport_work_func(struct work_struct *work)
>
> 	if (old_bits) {
> 		spin_lock_irq(&dev_priv->irq_lock);
>-		dev_priv->hotplug.event_bits |= old_bits;
>+		dev_priv->display.hotplug.event_bits |= old_bits;
> 		spin_unlock_irq(&dev_priv->irq_lock);
>-		queue_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work, 0);
>+		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work, 0);
> 	}
> }
>
>@@ -353,10 +353,10 @@ void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
> 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>
> 	spin_lock_irq(&i915->irq_lock);
>-	i915->hotplug.short_port_mask |= BIT(dig_port->base.port);
>+	i915->display.hotplug.short_port_mask |= BIT(dig_port->base.port);
> 	spin_unlock_irq(&i915->irq_lock);
>
>-	queue_work(i915->hotplug.dp_wq, &i915->hotplug.dig_port_work);
>+	queue_work(i915->display.hotplug.dp_wq, &i915->display.hotplug.dig_port_work);
> }
>
> /*
>@@ -366,7 +366,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
> {
> 	struct drm_i915_private *dev_priv =
> 		container_of(work, struct drm_i915_private,
>-			     hotplug.hotplug_work.work);
>+			     display.hotplug.hotplug_work.work);
> 	struct drm_device *dev = &dev_priv->drm;
> 	struct drm_connector_list_iter conn_iter;
> 	struct intel_connector *connector;
>@@ -379,10 +379,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
>
> 	spin_lock_irq(&dev_priv->irq_lock);
>
>-	hpd_event_bits = dev_priv->hotplug.event_bits;
>-	dev_priv->hotplug.event_bits = 0;
>-	hpd_retry_bits = dev_priv->hotplug.retry_bits;
>-	dev_priv->hotplug.retry_bits = 0;
>+	hpd_event_bits = dev_priv->display.hotplug.event_bits;
>+	dev_priv->display.hotplug.event_bits = 0;
>+	hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
>+	dev_priv->display.hotplug.retry_bits = 0;
>
> 	/* Enable polling for connectors which had HPD IRQ storms */
> 	intel_hpd_irq_storm_switch_to_polling(dev_priv);
>@@ -435,10 +435,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
> 	retry &= ~changed;
> 	if (retry) {
> 		spin_lock_irq(&dev_priv->irq_lock);
>-		dev_priv->hotplug.retry_bits |= retry;
>+		dev_priv->display.hotplug.retry_bits |= retry;
> 		spin_unlock_irq(&dev_priv->irq_lock);
>
>-		mod_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work,
>+		mod_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work,
> 				 msecs_to_jiffies(HPD_RETRY_DELAY));
> 	}
> }
>@@ -502,10 +502,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
>
> 		if (long_hpd) {
> 			long_hpd_pulse_mask |= BIT(pin);
>-			dev_priv->hotplug.long_port_mask |= BIT(port);
>+			dev_priv->display.hotplug.long_port_mask |= BIT(port);
> 		} else {
> 			short_hpd_pulse_mask |= BIT(pin);
>-			dev_priv->hotplug.short_port_mask |= BIT(port);
>+			dev_priv->display.hotplug.short_port_mask |= BIT(port);
> 		}
> 	}
>
>@@ -516,7 +516,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
> 		if (!(BIT(pin) & pin_mask))
> 			continue;
>
>-		if (dev_priv->hotplug.stats[pin].state == HPD_DISABLED) {
>+		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED) {
> 			/*
> 			 * On GMCH platforms the interrupt mask bits only
> 			 * prevent irq generation, not the setting of the
>@@ -529,7 +529,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
> 			continue;
> 		}
>
>-		if (dev_priv->hotplug.stats[pin].state != HPD_ENABLED)
>+		if (dev_priv->display.hotplug.stats[pin].state != HPD_ENABLED)
> 			continue;
>
> 		/*
>@@ -540,13 +540,13 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
> 		if (((short_hpd_pulse_mask | long_hpd_pulse_mask) & BIT(pin))) {
> 			long_hpd = long_hpd_pulse_mask & BIT(pin);
> 		} else {
>-			dev_priv->hotplug.event_bits |= BIT(pin);
>+			dev_priv->display.hotplug.event_bits |= BIT(pin);
> 			long_hpd = true;
> 			queue_hp = true;
> 		}
>
> 		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
>-			dev_priv->hotplug.event_bits &= ~BIT(pin);
>+			dev_priv->display.hotplug.event_bits &= ~BIT(pin);
> 			storm_detected = true;
> 			queue_hp = true;
> 		}
>@@ -567,9 +567,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
> 	 * deadlock.
> 	 */
> 	if (queue_dig)
>-		queue_work(dev_priv->hotplug.dp_wq, &dev_priv->hotplug.dig_port_work);
>+		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);
> 	if (queue_hp)
>-		queue_delayed_work(system_wq, &dev_priv->hotplug.hotplug_work, 0);
>+		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work, 0);
> }
>
> /**
>@@ -594,8 +594,8 @@ void intel_hpd_init(struct drm_i915_private *dev_priv)
> 		return;
>
> 	for_each_hpd_pin(i) {
>-		dev_priv->hotplug.stats[i].count = 0;
>-		dev_priv->hotplug.stats[i].state = HPD_ENABLED;
>+		dev_priv->display.hotplug.stats[i].count = 0;
>+		dev_priv->display.hotplug.stats[i].state = HPD_ENABLED;
> 	}
>
> 	/*
>@@ -611,7 +611,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
> {
> 	struct drm_i915_private *dev_priv =
> 		container_of(work, struct drm_i915_private,
>-			     hotplug.poll_init_work);
>+			     display.hotplug.poll_init_work);
> 	struct drm_device *dev = &dev_priv->drm;
> 	struct drm_connector_list_iter conn_iter;
> 	struct intel_connector *connector;
>@@ -619,7 +619,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
>
> 	mutex_lock(&dev->mode_config.mutex);
>
>-	enabled = READ_ONCE(dev_priv->hotplug.poll_enabled);
>+	enabled = READ_ONCE(dev_priv->display.hotplug.poll_enabled);
>
> 	drm_connector_list_iter_begin(dev, &conn_iter);
> 	for_each_intel_connector_iter(connector, &conn_iter) {
>@@ -672,7 +672,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
> 	    !INTEL_DISPLAY_ENABLED(dev_priv))
> 		return;
>
>-	WRITE_ONCE(dev_priv->hotplug.poll_enabled, true);
>+	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, true);
>
> 	/*
> 	 * We might already be holding dev->mode_config.mutex, so do this in a
>@@ -680,7 +680,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
> 	 * As well, there's no issue if we race here since we always reschedule
> 	 * this worker anyway
> 	 */
>-	schedule_work(&dev_priv->hotplug.poll_init_work);
>+	schedule_work(&dev_priv->display.hotplug.poll_init_work);
> }
>
> /**
>@@ -707,17 +707,17 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
> 	if (!HAS_DISPLAY(dev_priv))
> 		return;
>
>-	WRITE_ONCE(dev_priv->hotplug.poll_enabled, false);
>-	schedule_work(&dev_priv->hotplug.poll_init_work);
>+	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
>+	schedule_work(&dev_priv->display.hotplug.poll_init_work);
> }
>
> void intel_hpd_init_work(struct drm_i915_private *dev_priv)
> {
>-	INIT_DELAYED_WORK(&dev_priv->hotplug.hotplug_work,
>+	INIT_DELAYED_WORK(&dev_priv->display.hotplug.hotplug_work,
> 			  i915_hotplug_work_func);
>-	INIT_WORK(&dev_priv->hotplug.dig_port_work, i915_digport_work_func);
>-	INIT_WORK(&dev_priv->hotplug.poll_init_work, i915_hpd_poll_init_work);
>-	INIT_DELAYED_WORK(&dev_priv->hotplug.reenable_work,
>+	INIT_WORK(&dev_priv->display.hotplug.dig_port_work, i915_digport_work_func);
>+	INIT_WORK(&dev_priv->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
>+	INIT_DELAYED_WORK(&dev_priv->display.hotplug.reenable_work,
> 			  intel_hpd_irq_storm_reenable_work);
> }
>
>@@ -728,17 +728,17 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
>
> 	spin_lock_irq(&dev_priv->irq_lock);
>
>-	dev_priv->hotplug.long_port_mask = 0;
>-	dev_priv->hotplug.short_port_mask = 0;
>-	dev_priv->hotplug.event_bits = 0;
>-	dev_priv->hotplug.retry_bits = 0;
>+	dev_priv->display.hotplug.long_port_mask = 0;
>+	dev_priv->display.hotplug.short_port_mask = 0;
>+	dev_priv->display.hotplug.event_bits = 0;
>+	dev_priv->display.hotplug.retry_bits = 0;
>
> 	spin_unlock_irq(&dev_priv->irq_lock);
>
>-	cancel_work_sync(&dev_priv->hotplug.dig_port_work);
>-	cancel_delayed_work_sync(&dev_priv->hotplug.hotplug_work);
>-	cancel_work_sync(&dev_priv->hotplug.poll_init_work);
>-	cancel_delayed_work_sync(&dev_priv->hotplug.reenable_work);
>+	cancel_work_sync(&dev_priv->display.hotplug.dig_port_work);
>+	cancel_delayed_work_sync(&dev_priv->display.hotplug.hotplug_work);
>+	cancel_work_sync(&dev_priv->display.hotplug.poll_init_work);
>+	cancel_delayed_work_sync(&dev_priv->display.hotplug.reenable_work);
> }
>
> bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
>@@ -749,8 +749,8 @@ bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
> 		return false;
>
> 	spin_lock_irq(&dev_priv->irq_lock);
>-	if (dev_priv->hotplug.stats[pin].state == HPD_ENABLED) {
>-		dev_priv->hotplug.stats[pin].state = HPD_DISABLED;
>+	if (dev_priv->display.hotplug.stats[pin].state == HPD_ENABLED) {
>+		dev_priv->display.hotplug.stats[pin].state = HPD_DISABLED;
> 		ret = true;
> 	}
> 	spin_unlock_irq(&dev_priv->irq_lock);
>@@ -764,6 +764,6 @@ void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
> 		return;
>
> 	spin_lock_irq(&dev_priv->irq_lock);
>-	dev_priv->hotplug.stats[pin].state = HPD_ENABLED;
>+	dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
> 	spin_unlock_irq(&dev_priv->irq_lock);
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
>index 6773840f6cc7..e5af955b5600 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -246,7 +246,7 @@ static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
> {
> 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> 	struct intel_uncore *uncore = &i915->uncore;
>-	u32 isr_bit = i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
>+	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
> 	u32 mask = 0;
> 	u32 val;
>
>@@ -279,7 +279,7 @@ static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
> {
> 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
>-	u32 isr_bit = i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
>+	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
> 	struct intel_uncore *uncore = &i915->uncore;
> 	u32 val, mask = 0;
>
>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>index 8841ec398b07..6607ed250531 100644
>--- a/drivers/gpu/drm/i915/i915_driver.c
>+++ b/drivers/gpu/drm/i915/i915_driver.c
>@@ -252,8 +252,8 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
> 	if (dev_priv->wq == NULL)
> 		goto out_err;
>
>-	dev_priv->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
>-	if (dev_priv->hotplug.dp_wq == NULL)
>+	dev_priv->display.hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
>+	if (dev_priv->display.hotplug.dp_wq == NULL)
> 		goto out_free_wq;
>
> 	return 0;
>@@ -268,7 +268,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>
> static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
> {
>-	destroy_workqueue(dev_priv->hotplug.dp_wq);
>+	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
> 	destroy_workqueue(dev_priv->wq);
> }
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index a0af8190ed87..ef67a5322c2d 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -89,45 +89,6 @@ struct vlv_s0ix_state;
> /* Threshold == 5 for long IRQs, 50 for short */
> #define HPD_STORM_DEFAULT_THRESHOLD 50
>
>-struct i915_hotplug {
>-	struct delayed_work hotplug_work;
>-
>-	const u32 *hpd, *pch_hpd;
>-
>-	struct {
>-		unsigned long last_jiffies;
>-		int count;
>-		enum {
>-			HPD_ENABLED = 0,
>-			HPD_DISABLED = 1,
>-			HPD_MARK_DISABLED = 2
>-		} state;
>-	} stats[HPD_NUM_PINS];
>-	u32 event_bits;
>-	u32 retry_bits;
>-	struct delayed_work reenable_work;
>-
>-	u32 long_port_mask;
>-	u32 short_port_mask;
>-	struct work_struct dig_port_work;
>-
>-	struct work_struct poll_init_work;
>-	bool poll_enabled;
>-
>-	unsigned int hpd_storm_threshold;
>-	/* Whether or not to count short HPD IRQs in HPD storms */
>-	u8 hpd_short_storm_enabled;
>-
>-	/*
>-	 * if we get a HPD irq from DP and a HPD irq from non-DP
>-	 * the non-DP HPD could block the workqueue on a mode config
>-	 * mutex getting, that userspace may have taken. However
>-	 * userspace is waiting on the DP workqueue to run which is
>-	 * blocked behind the non-DP one.
>-	 */
>-	struct workqueue_struct *dp_wq;
>-};
>-
> #define I915_GEM_GPU_DOMAINS \
> 	(I915_GEM_DOMAIN_RENDER | \
> 	 I915_GEM_DOMAIN_SAMPLER | \
>@@ -375,7 +336,6 @@ struct drm_i915_private {
> 	};
> 	u32 pipestat_irq_mask[I915_MAX_PIPES];
>
>-	struct i915_hotplug hotplug;
> 	struct intel_fbc *fbc[I915_MAX_FBCS];
> 	struct intel_opregion opregion;
> 	struct intel_vbt_data vbt;
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index b0095b289a79..c2f2d7b8d964 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -185,7 +185,7 @@ static const u32 hpd_sde_dg1[HPD_NUM_PINS] = {
>
> static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
> {
>-	struct i915_hotplug *hpd = &dev_priv->hotplug;
>+	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
>
> 	if (HAS_GMCH(dev_priv)) {
> 		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
>@@ -1272,7 +1272,7 @@ static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
> 	u32 enabled_irqs = 0;
>
> 	for_each_intel_encoder(&dev_priv->drm, encoder)
>-		if (dev_priv->hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
>+		if (dev_priv->display.hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
> 			enabled_irqs |= hpd[encoder->hpd_pin];
>
> 	return enabled_irqs;
>@@ -1637,7 +1637,7 @@ static void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv,
> 	if (hotplug_trigger) {
> 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 				   hotplug_trigger, hotplug_trigger,
>-				   dev_priv->hotplug.hpd,
>+				   dev_priv->display.hotplug.hpd,
> 				   i9xx_port_hotplug_long_detect);
>
> 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
>@@ -1841,7 +1841,7 @@ static void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv,
>
> 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 			   hotplug_trigger, dig_hotplug_reg,
>-			   dev_priv->hotplug.pch_hpd,
>+			   dev_priv->display.hotplug.pch_hpd,
> 			   pch_port_hotplug_long_detect);
>
> 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
>@@ -1986,7 +1986,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>
> 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 				   ddi_hotplug_trigger, dig_hotplug_reg,
>-				   dev_priv->hotplug.pch_hpd,
>+				   dev_priv->display.hotplug.pch_hpd,
> 				   icp_ddi_port_hotplug_long_detect);
> 	}
>
>@@ -1998,7 +1998,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>
> 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 				   tc_hotplug_trigger, dig_hotplug_reg,
>-				   dev_priv->hotplug.pch_hpd,
>+				   dev_priv->display.hotplug.pch_hpd,
> 				   icp_tc_port_hotplug_long_detect);
> 	}
>
>@@ -2024,7 +2024,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>
> 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 				   hotplug_trigger, dig_hotplug_reg,
>-				   dev_priv->hotplug.pch_hpd,
>+				   dev_priv->display.hotplug.pch_hpd,
> 				   spt_port_hotplug_long_detect);
> 	}
>
>@@ -2036,7 +2036,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>
> 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 				   hotplug2_trigger, dig_hotplug_reg,
>-				   dev_priv->hotplug.pch_hpd,
>+				   dev_priv->display.hotplug.pch_hpd,
> 				   spt_port_hotplug2_long_detect);
> 	}
>
>@@ -2057,7 +2057,7 @@ static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
>
> 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 			   hotplug_trigger, dig_hotplug_reg,
>-			   dev_priv->hotplug.hpd,
>+			   dev_priv->display.hotplug.hpd,
> 			   ilk_port_hotplug_long_detect);
>
> 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
>@@ -2237,7 +2237,7 @@ static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
>
> 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 			   hotplug_trigger, dig_hotplug_reg,
>-			   dev_priv->hotplug.hpd,
>+			   dev_priv->display.hotplug.hpd,
> 			   bxt_port_hotplug_long_detect);
>
> 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
>@@ -2257,7 +2257,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>
> 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 				   trigger_tc, dig_hotplug_reg,
>-				   dev_priv->hotplug.hpd,
>+				   dev_priv->display.hotplug.hpd,
> 				   gen11_port_hotplug_long_detect);
> 	}
>
>@@ -2269,7 +2269,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>
> 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> 				   trigger_tbt, dig_hotplug_reg,
>-				   dev_priv->hotplug.hpd,
>+				   dev_priv->display.hotplug.hpd,
> 				   gen11_port_hotplug_long_detect);
> 	}
>
>@@ -3313,8 +3313,8 @@ static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug_irqs, enabled_irqs;
>
>-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
>-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
>+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>
> 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>
>@@ -3383,8 +3383,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug_irqs, enabled_irqs;
>
>-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
>-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
>+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>
> 	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
> 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
>@@ -3460,8 +3460,8 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
> 	u32 hotplug_irqs, enabled_irqs;
> 	u32 val;
>
>-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
>-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
>+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>
> 	val = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
> 	val &= ~hotplug_irqs;
>@@ -3538,8 +3538,8 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
> 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
>
>-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
>-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.pch_hpd);
>+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>
> 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>
>@@ -3578,8 +3578,8 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug_irqs, enabled_irqs;
>
>-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
>-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
>+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>
> 	if (DISPLAY_VER(dev_priv) >= 8)
> 		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
>@@ -3636,8 +3636,8 @@ static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
> 	u32 hotplug_irqs, enabled_irqs;
>
>-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->hotplug.hpd);
>-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->hotplug.hpd);
>+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>
> 	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
>
>@@ -4413,14 +4413,14 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
> 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> 		dev_priv->display_irqs_enabled = false;
>
>-	dev_priv->hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
>+	dev_priv->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
> 	/* If we have MST support, we want to avoid doing short HPD IRQ storm
> 	 * detection, as short HPD storms will occur as a natural part of
> 	 * sideband messaging with MST.
> 	 * On older platforms however, IRQ storms can occur with both long and
> 	 * short pulses, as seen on some G4x systems.
> 	 */
>-	dev_priv->hotplug.hpd_short_storm_enabled = !HAS_DP_MST(dev_priv);
>+	dev_priv->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(dev_priv);
>
> 	if (HAS_GMCH(dev_priv)) {
> 		if (I915_HAS_HOTPLUG(dev_priv))
>-- 
>2.34.1
>
