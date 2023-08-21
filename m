Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC1F782B9A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 16:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D1410E0DC;
	Mon, 21 Aug 2023 14:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BC2F10E0DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 14:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692627755; x=1724163755;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=dy1oRpwmM3jAYObopb/rKzrCVQUTGvt/XfDLTNiXmmo=;
 b=WStzSBheQLLLQINdfxLJHhWvFl0BlMZJ0VkIMkVNJi14KPifhLueJEk5
 f7D2518frl/3F3XZYLSUhUmUc2+LEJAP6YB+dulJ/HFXIao11QO0rbPoZ
 wEU46bqhZn8ISxSqYLWpMfhqXJwGiQYZmkf+sb3H2GK4VKty18vCB67ud
 4ucJifyA0tTAlBEvHmkhcFo65fi4XmXVuw1RNVJgqBoCqtlePCBIhslsw
 TnIMpVLNncu0PrgbawzL5zpSzOila6sgfCkhnLH5ts3FNEKav4/T6yF+I
 J31cHYatkAUv0xMvW1zlEFtTEphlS9R5yXJ2AU2lzx0SGYanphGczU0G7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="376352021"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="376352021"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 07:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="770965867"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="770965867"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 21 Aug 2023 07:22:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 07:22:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 07:22:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 07:22:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jeo1JhgJollXVjh+oDWiBaji7T1GYTq0f48Fuz9yo+6cME7MTtob3jUGfV2bnX30//h3m2ijQEf3+f+IEmyNEYwSe6IfCmp45s02YYVAVkKoBeiDh9yFvKLwCME0JhQHfhshCc6fVi1pywP94Gt92ZW2znFak4Gi1FKeX9V9q7q1Ol1lhM+mMgusTJiYq8b+G4oikjCfN5k4Yt9sW8oEWJEJn3j+cSBRClUvIpegp9TnmIlahnEz88Ph8q2pCFiV36KyLYwVqUiwFtqezXRXFuZtn9JNyLdkrPsM/LGrpz/XW2n0x92qlpYXKyRdZtk+ymne8O7KQIeOE4dt4CHKgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CuqeW6I31DyO1bWmY3UPTGEneV7Gtr84IKUeFRji1c=;
 b=mM/aum18GaXysMOGHOJY2SYdJJ8nIvrVgTuRFN6thPZqssf6nMB17oAJJM1F6wtvI+2dQqlja/w9SQEi0+I2Bva++UMa6CU4byFhhyre2yUbrK1L6qKc6LINgqcen1HUVOP13VOX9QagLplVm48HtFFbIHyEg6fnxD/gMVgPe7nff7zBKkgpBRyRUcKHnFNg+gbJ8yRB8zJ82dGLysg0IzFFpn0Xjdv19PqboxRay37QlMnsWUxU5tuZb1RwXCqn+avECQc+L2Xn4/+jYSgqry8fYixZmsjCh5lG0eyyzfBADOVUgeugrMjIe4VV/o4EiN0nQNzn8w869ML5Ra55Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA3PR11MB7656.namprd11.prod.outlook.com (2603:10b6:806:320::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 14:21:59 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 14:21:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230814200632.56105-16-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-16-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 11:21:55 -0300
Message-ID: <169262771531.6257.6447899629254711214@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR08CA0042.namprd08.prod.outlook.com
 (2603:10b6:a03:117::19) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA3PR11MB7656:EE_
X-MS-Office365-Filtering-Correlation-Id: 55562572-3f69-4337-4c1b-08dba251fb1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1wKz2mrqk2fUBlqdACdied8iaOWEDaGXtlzvUMgtr3zLs/yzDKUPfPjVba+/sYHynA0uMbH1WrdjYpRt+9eKXEGVtrhmWa1EP8CELca858q/vkq+1DjLFuazuTmtUh+8C5RJ7UqtnfpJMYv2dZWAfVjzXcq45tEFpL17/q2Te+bf38VjltB/I96mNNPhFbPcUbf5LTUGkcxbFsM1Hi1RuNIOSrQUtW/P3aTAEROJQUhrSZl8+KpjgqcagP3E7VIMyXdiV+Vh0nQr6zLsFdZRG4FA2yptWp7trBJGI6PHlDKf2IX/VQ49yfcmX/KeuLVlYZnpXP2j4G+FMAVq8MkBo+AA0mZPTduwNMzgbp1az09AAZ0QDbEfSO3p1lWGpqK9ocsjasQBn5LvX8cgeYCtPKCrpVS7xqisla6ynFNp7PEmwM1by6clePQrDQrlbZMMdGdyCL3bN/mlly2EWfl7yHkhzOzS9BGkw9JxFGn5+E4WS+7PSNkmsKi6vlTFDmfzNsomWLILNHVVhJnN8BCVwu6hKVifOCIODKBiig3EwavgS96kvvnA9LBX8NLafgl2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(396003)(346002)(376002)(366004)(1800799009)(451199024)(186009)(66476007)(41300700001)(66946007)(6666004)(316002)(66556008)(6506007)(6486002)(82960400001)(38100700002)(26005)(8676002)(8936002)(4326008)(107886003)(44832011)(5660300002)(83380400001)(6512007)(2906002)(9686003)(33716001)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjJibS81REJoODUxYlZib1lvV3kwYnNRTVk5L0ZUd0lmZU9NVHBJOVNiSzlk?=
 =?utf-8?B?cEVzVXloMWtKeU9SVDBtaXlKdVllT3hGWndXZjY2dXF0S2JuNGFsUlRMSkpo?=
 =?utf-8?B?STl4dE5lTkRDNGV3SDBlMVJXb2VDYlRXMS9QbGNmc29COWJwS2ZlRGtPWldZ?=
 =?utf-8?B?Rnk3UFNBWlJIckNIdkt1WUFDUlQ0alE2cjQvR0VhbEFNbDlLMzNsWUE4bTI0?=
 =?utf-8?B?dzVKOVBxL2UyR1pRWXZEbkpVdEE3NWdtK0F3SUtsZUJkdmJuZWVURVArVTd3?=
 =?utf-8?B?Y3Z2djJvaWZqa0VOclNmK3NDbkoxMEVoRTZZbkQ0emY3ZEFkV0RSa015VzFZ?=
 =?utf-8?B?M0ltWVlDaUpTaUFqY1pBSVg0eHlTQUtKa2hlZjc0VGpmOEpLUzN2SzByT1Y2?=
 =?utf-8?B?QndpVkZiMitSTDhPWlRhcXRpT1hFSE12a0tIcUhZZUFBMTRDN3g4U2QyNFZT?=
 =?utf-8?B?MEVVaEVrbkNHV3M1MjVYNWtlT1hvbGlPWEpTenFnbXYwSVZRdkdjSEdGelBK?=
 =?utf-8?B?VzB3UVd2akRkQ2xqaXEya2lDYUhpK2dNSkw1K0FjTHRja1RVMnMvaEJBYUtl?=
 =?utf-8?B?eG1MS1dXdzdYMzJ5Nkd0MUhvUjBuU1dVbldJQWJabmc5OGNhVHVDTG9nbUxB?=
 =?utf-8?B?eWltT2RhWmQ1Z1NpZStRV0Y4QjZqRmdLL0psOVRWZUdCSmJNa1gvYjYvR2Zq?=
 =?utf-8?B?aWphNU84QTM2N0p2TmZFaHJkTCt1TWNyKzJzTmFOSWpLR1IwMEttOGJFOXBB?=
 =?utf-8?B?alRCUDZEYlkxb0NjMUF4NnlNQk5YU25SY0ljYTJpYzJ3SFdnUDVGTjEweUxZ?=
 =?utf-8?B?bHRILzQ4WmozMWxmeWsyK1JKRzFhV3FOdmhyc0tna3pUWXVhcDNwS2J3SWxh?=
 =?utf-8?B?dE5MQU5uNWVpMUdPbGd5VXVWMnBYczZHVDliSnZMb3NPUEdDM29tY2JldElt?=
 =?utf-8?B?bVRTOWt5cDIrUkFQdUVONmU4TTZFZ3BlSjUrZTRrZVA0Wm5UcGJSVldRMndF?=
 =?utf-8?B?V3N0R0t4dEJKT3MvTUxOZ1hEQkVITEprNVY2a3ZHa3VwUHBGU2NrejVIUU55?=
 =?utf-8?B?Q0JXdnNWallLK0dFb2wzVVV1Vk8zRDJtRWlPMTV2Qk0zVmovai9hYXlINDYw?=
 =?utf-8?B?UjU0SVphZXp5TjFUc2xnK3JzTFpZbXdJQXZKRXpMSVVPTi9kRVo5SlM5Rkgz?=
 =?utf-8?B?aVBUWXZoeTJpbjNCK2s0N21aTDB6UURtNmpTa1BRTDRMTFBtaEkyMTFjQzFk?=
 =?utf-8?B?YTdYOFY2U2RWZm42Z2lrL0tWQTh5MzJaeklQSmhOUFF2dnNTMzhhZjlyM1JT?=
 =?utf-8?B?UngyanJuZ3VkQWcrOWVqVmc5N3FBd1pyb0xNU2pKSWp6QTJGZ3NHd1hZZXVC?=
 =?utf-8?B?dVZ0RTQ1eUozTmF5M21HNjZKR1MrMFRteFdBd0NJWUVuMi91ZTNGQ3R3L3FY?=
 =?utf-8?B?YzlSZnZtSDdFZmN5ekw2eDdiQWFFYUlLbExBWU9iQ3NJTHpveitLK1QxalVy?=
 =?utf-8?B?eis2b1VWbHpNTVVjdzZZR1FMSVNGL2txTXRoV2d2b0g5OGJieE1UMFF4Yklj?=
 =?utf-8?B?dzBMemZneWhEenJPWitiTWs0ODV4M1lMZnFBNHNCUFBiZEsrTG1HdkFBekhH?=
 =?utf-8?B?ZitTVmJCbXNDaGlIbHRiRzlzU21paEhlTzZGaXdmeFM1K3ZtL2FlK1pVcGdC?=
 =?utf-8?B?cldhTktrZTRMMXhnYlZ5b1hwdkhlZk1TOXhKUTJRUmlXbHk5Tzc3eS9QVWZV?=
 =?utf-8?B?MkxOSTRZNmVTNThMWi81UGhsdUZoRWx3cUZKL1c3enJHZ3dvY00xWm1raWtS?=
 =?utf-8?B?azBJcG9CdkpaV1JVMmFuVjFjY1l3OThWYVdnOGw3MlRoMFVKNlJYWVVXSGZ5?=
 =?utf-8?B?RjJSeFdTeGVET1hWUDQwTVl2ZFNrMjc2MHZ2ZnBQMmRJV2RxajBUTHFKL2ho?=
 =?utf-8?B?VEgzaGV4djZESGVWWklmaUtuMnNSNEFpc3Fzei82Z0thcWhPQmNFNFVPNkoy?=
 =?utf-8?B?RzN5UitoaFZWZGd0UUdlQ0lJS2dCUDNMUFRiV2MwVkxEa2hLQUtJWXhhWmNH?=
 =?utf-8?B?KzhURVRHMWh0WFBjVXh0WjV6YmFueHUvNG40b2xPRUJray82cjZ3YzRWWGJZ?=
 =?utf-8?B?Z1NpdGNrOGJNcnRKd1NNY3lrdUNWOS9ZcjF2NngyUlJZUTU0WGJyeC9xMko3?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55562572-3f69-4337-4c1b-08dba251fb1e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 14:21:59.6030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EY1a0MC5wFMJzUTiUrPueMh1NkZdkxHLD8O4q0s0mnmvxvTxolPB6AsuPwSne9pwZyGeWq+5DeB0rouoXfscLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7656
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 5/9] drm/i915: Eliminate IS_MTL_MEDIA_STEP
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

Quoting Matt Roper (2023-08-14 17:06:38-03:00)
>Stepping-specific media behavior shouldn't be tied to MTL as a platform,
>but rather specifically to the Xe_LPM+ IP.  Future non-MTL platforms may
>re-use this IP and will need to follow the exact same logic and apply
>the same workarounds.  IS_MTL_MEDIA_STEP() is dropped in favor of
>IS_MEDIA_GT_IP_STEP, which checks the media IP version associated with a
>specific IP and also ensures that we're operating on the media GT, not
>the primary GT.
>
>v2:
> - Switch to the IS_GT_IP_STEP macro.
>v3:
> - Switch back to long-form IS_MEDIA_GT_IP_STEP.  (Jani)
>v4:
> - Build IS_MEDIA_GT_IP_STEP on top of IS_MEDIA_GT_IP_RANGE and
>   IS_MEDIA_STEP building blocks and name the parameters from/until
>   rather than begin/fixed..  (Jani)
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt.h  | 30 +++++++++++++++++++++++++++++
> drivers/gpu/drm/i915/gt/intel_rc6.c |  3 +--
> drivers/gpu/drm/i915/i915_drv.h     |  4 ----
> drivers/gpu/drm/i915/i915_perf.c    | 15 ++++-----------
> 4 files changed, 35 insertions(+), 17 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/=
intel_gt.h
>index 636fd651b8b2..abe9fe4a3bd9 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>@@ -25,6 +25,20 @@ struct drm_printer;
>          GRAPHICS_VER_FULL((gt)->i915) >=3D (from) && \
>          GRAPHICS_VER_FULL((gt)->i915) <=3D (until)))
>=20
>+/*
>+ * Check that the GT is a media GT and has an IP version within the
>+ * specified range (inclusive).
>+ *
>+ * Only usable on platforms with a standalone media design (i.e., IP vers=
ion 13
>+ * and higher).
>+ */
>+#define IS_MEDIA_GT_IP_RANGE(gt, from, until) ( \
>+        BUILD_BUG_ON_ZERO((from) < IP_VER(13, 0)) + \
>+        BUILD_BUG_ON_ZERO((until) < (from)) + \
>+        ((gt)->type =3D=3D GT_MEDIA && \
>+         MEDIA_VER_FULL((gt)->i915) >=3D (from) && \
>+         MEDIA_VER_FULL((gt)->i915) <=3D (until)))
>+
> /*
>  * Check that the GT is a graphics GT with a specific IP version and has
>  * a stepping in the range [begin, fixed).  The lower stepping bound is
>@@ -42,6 +56,22 @@ struct drm_printer;
>         (IS_GFX_GT_IP_RANGE((gt), (ipver), (ipver)) && \
>          IS_GRAPHICS_STEP((gt)->i915, (from), (until))))
>=20
>+/*
>+ * Check that the GT is a media GT with a specific IP version and has
>+ * a stepping in the range [begin, fixed).  The lower stepping bound is
>+ * inclusive, the upper bound is exclusive (corresponding to the first ha=
rdware
>+ * stepping at which the workaround is no longer needed).
>+ * "STEP_FOREVER" can be passed as the upper stepping bound for workaroun=
ds
>+ * that have no "fixed" version for the specified IP version.

I think the same comments from patch #4 apply here as well.

>+ *
>+ * This macro may only be used to match on platforms that have a standalo=
ne
>+ * media design (i.e., media version 13 or higher).
>+ */
>+#define IS_MEDIA_GT_IP_STEP(gt, ipver, from, until) ( \
>+        BUILD_BUG_ON_ZERO((until) <=3D (from)) + \
>+        (IS_MEDIA_GT_IP_RANGE((gt), (ipver), (ipver)) && \
>+         IS_MEDIA_STEP((gt)->i915, (from), (until))))
>+
> #define GT_TRACE(gt, fmt, ...) do {                                      =
  \
>         const struct intel_gt *gt__ __maybe_unused =3D (gt);             =
   \
>         GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),              =
  \
>diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt=
/intel_rc6.c
>index 58bb1c55294c..748b0c695072 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>@@ -526,8 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>                 return false;
>         }
>=20
>-        if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
>-            gt->type =3D=3D GT_MEDIA) {
>+        if (IS_MEDIA_GT_IP_STEP(gt, IP_VER(13, 0), STEP_A0, STEP_B0)) {
>                 drm_notice(&i915->drm,
>                            "Media RC6 disabled on A step\n");
>                 return false;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index e0e0493d6c1f..42a86483c694 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -662,10 +662,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>         (IS_METEORLAKE(__i915) && \
>          IS_DISPLAY_STEP(__i915, since, until))
>=20
>-#define IS_MTL_MEDIA_STEP(__i915, since, until) \
>-        (IS_METEORLAKE(__i915) && \
>-         IS_MEDIA_STEP(__i915, since, until))
>-
> /*
>  * DG2 hardware steppings are a bit unusual.  The hardware design was for=
ked to
>  * create three variants (G10, G11, and G12) which each have distinct
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_=
perf.c
>index 04bc1f4a1115..2ef8addb0cfd 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -4223,7 +4223,7 @@ static int read_properties_unlocked(struct i915_perf=
 *perf,
>          * C6 disable in BIOS. Fail if Media C6 is enabled on steppings w=
here OAM
>          * does not work as expected.
>          */
>-        if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
>+        if (IS_MEDIA_GT_IP_STEP(props->engine->gt, IP_VER(13, 0), STEP_A0=
, STEP_C0) &&
>             props->engine->oa_group->type =3D=3D TYPE_OAM &&
>             intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
>                 drm_dbg(&perf->i915->drm,
>@@ -5332,16 +5332,9 @@ int i915_perf_ioctl_version(struct drm_i915_private=
 *i915)
>          * C6 disable in BIOS. If Media C6 is enabled in BIOS, return ver=
sion 6
>          * to indicate that OA media is not supported.
>          */
>-        if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
>-                struct intel_gt *gt;
>-                int i;
>-
>-                for_each_gt(gt, i915, i) {
>-                        if (gt->type =3D=3D GT_MEDIA &&
>-                            intel_check_bios_c6_setup(&gt->rc6))
>-                                return 6;
>-                }
>-        }
>+        if (IS_MEDIA_GT_IP_STEP(i915->media_gt, IP_VER(13, 0), STEP_A0, S=
TEP_C0) &&

Hm... i915->media_gt could be NULL, right? We should probably add a NULL ch=
eck in
IS_MEDIA_GT_IP_STEP().

>+            intel_check_bios_c6_setup(&i915->media_gt->rc6))
>+                return 6;
>=20
>         return 7;
> }
>--=20
>2.41.0
>
