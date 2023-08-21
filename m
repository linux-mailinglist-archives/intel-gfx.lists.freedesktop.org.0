Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E797830E8
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 21:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 714E510E175;
	Mon, 21 Aug 2023 19:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3018610E217
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 19:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692645662; x=1724181662;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=VK+S2nwLXGtCQQFcxaEmd5eytAQEPaI2X18p9M/hf5k=;
 b=Rhz4T/Q51+knYH7XInsuHqSrjUQ+qXdkVvIT83sNDi53MCwB+6p/WrD4
 yVpmrHa+gkRQBTaDPNZfHl2B+FE9aMcNowlLyBgQIPLtawabumThJx5Pa
 AEmFirD5Bt2xBKIKIr49F/XVZw1eWlwFdX88+UNF+b8nul/1kZJKNNAPq
 5L+sKUS6vwJB5NWqR07CcjAOlKVyCuWBgnjS1ZicgtbofGq464Ao/5gal
 FOx2XhM7UYMYHpcmGbYaOQg3Hi2yeKl609ktnhP7pPdI8kYoyhWxZW5bT
 0hl80ukJMdhF6baHsPUFUmGpeDpBZJUS4VHE/AxMhaJ7UhwQPH7ATu3+L g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373653974"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="373653974"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 12:21:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="712879916"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="712879916"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 21 Aug 2023 12:21:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 12:21:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 12:21:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 12:21:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 12:20:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ocKuh2iIKpHDQqMVhFKQ/aOnIVsRCDfa/XwvpGs8lXPT3tQiGPYj8f15nm+xLrc9zaBmrZ1rneftMm8teLCgh7bkaXHUdeqjrYpv40xL+oj+9oZmqoyZGQ9rMfiUZOIvHi3Ct5Ym5Xn8YoyRhEvcfsRuPD4WOnq0+OwHeEfWPdBrXS5O5FNbXoVxaYHWiBuaj18Exz7Wcxt5JucE+/gpykC5y+qDTCr0avguT1kXZMbfAHdCwj6Lz8iA/pYn99epoOE8lr62J5sDk7yH/dNjtw4ABY4o2tlI9XfimcUjlzKW50ztCDQuoFIrx7c6Up7Z8EjAnfcrm1b5jaDBbY0Yvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hazO8zPWfsWiLUV/xbjF6pFXVWjAjQRm12A2idkIhPM=;
 b=U3LLMx+TwhCjgJCFX0Zemd90uWAmUJULUwea4sm634hD0widQwEQbr3GPk712WXW4fqunnYnj0jmnq/bawIWnJDW41LgGg8ebS1iC4X9YCAEWMYXYf8auUgCBoIor1l5XF6ZwbtnCtTXRI3bJuwY4Hem6DOr5mk0EZ2nmLMZq1FzYTv6RR/zkjsuUEJRUsgm7fEaZWta4KJXjL6R+KQElnhL7YMDShHf8QwW4XhO3bqf+4gUxVmcr/XXO2Dh7nUsDzzrJ8RVPzhu/6CXyv+QQq9yjzSKMnAn1R0x6NGLf24CGcyeH1LSR4zajH9A4OGDJhkHe1jKQ0xxSBiZloICnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW3PR11MB4601.namprd11.prod.outlook.com (2603:10b6:303:59::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 19:20:56 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 19:20:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230821180619.650007-16-matthew.d.roper@intel.com>
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
 <20230821180619.650007-16-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 16:20:50 -0300
Message-ID: <169264565024.6257.3733516799185411463@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0300.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::35) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW3PR11MB4601:EE_
X-MS-Office365-Filtering-Correlation-Id: 940ec6b4-ed39-4f0a-3914-08dba27bbe37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6Dw3V6fTWfewBOFbUG7uIz5JvggGYaU6Wh+VtQVcV2iQ1q53RimJtE3jyQ6CjcDN88QSP59VyQ8y7GbeZXdod6A/O55oQtrG0CMkqtv8mArrBfsoQQ9udnNGtOxEoBUfP66QbyaEDpv1D5dKA5aYqY6JJ32qOZ0xtAbR1xQEW3ATpHWIy4USmCYaqY7IZEfvumaiHbr9l1qtMSdOvQHeHeRQt5ooqsQkzpb5/g3oHXxRNZr4D7h0VqcPUn3a/7MmUoHew8x/fVFJNE/ELW6ug9jPyCG9sxxavnsMo4bvOQvWgl87thZBdsxDifMq2AmS5HSyTFyZA40JKZATzgrnB83Y+O1i2an3YF754TlJtEfNjDIXhgur8j1CM5k0UzPfFH2m1JEgmMnicMVoPNYTQVbHzdniFgolqhfjKeJ2ZZcPY+QIC0AmjErHu5sj62yn6QdFADbUbNhIQoosOgwiQRBlDzS4TFrjljyx+J8aQLaFQSy8a0Pti8RvM4rb0YrisDdJMb4lsCU9xqBLJ33ssrVbCS22j9V7JYnCpPVk1P/2yKWddx8iShVC+OaRsSDG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199024)(1800799009)(186009)(2906002)(38100700002)(6486002)(6506007)(83380400001)(5660300002)(44832011)(26005)(86362001)(8676002)(8936002)(4326008)(316002)(66946007)(9686003)(6512007)(66556008)(66476007)(82960400001)(478600001)(6666004)(41300700001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjVSQlJJNm5SZ3U5eUpGQklaNmJib2VDZmw1aE1yRkp4dERQTHYvV01zZlNr?=
 =?utf-8?B?TU5oZ0xPaHNTRWJtQTA2SVR2NlVTKzlWWGlnZ241eVZPYTdoVkdEdm4ydENC?=
 =?utf-8?B?VXdPZlRTM2tiaXpZNDVWNTBGR2NkaXB6K29wVFFUbjhYOEU0cGpOb1JXMUtJ?=
 =?utf-8?B?VFlFVVlpTG1yZVlIa1FtVDUwK2x4KytEbTBoZ2ppRTdhbFZ3d3ZUN1h6Vitq?=
 =?utf-8?B?UE1sRHR5UXZIanVZdFBWZEhWNFEyZkwwcjJtb0Yzc284MEthYmVIOEg4bnFi?=
 =?utf-8?B?aG9uMXp5NnVVRktPNHdVSGpuSkY2cXRRaW1ENE40SlhOK0tKcnBnRkd6cTY3?=
 =?utf-8?B?QkVadUZjRFRKNnJPZ3NqVlBQYmM2TFdWY2M1NmxLOWhTQ2dBVTBmUVYxUU1o?=
 =?utf-8?B?UnozK3dtU0hjcktJYkpUSUJma0R2Q1lFNVYvUGlKTUZmWUt0K1N0bWZrL1Ba?=
 =?utf-8?B?VFZDVXlaalo0cFJFaitVVm1XaWZZY3lDWnp2NEtQcnVCb1VxV0V2OTYweXpa?=
 =?utf-8?B?aUsxc0RJU24xaGNGbnJoWWtqQkExWDYvOUg2UURBaDRMT1N2Q0NoUkFQUkVL?=
 =?utf-8?B?SkxJNlNLZ3kwWXJLY3Rta3RGK0xhWjVSU2dxZ3FtbTBaVGRJM1dxWnRjWlpk?=
 =?utf-8?B?UXBER3JtaStiT0wyU3VmbDZ0MlcrcXpVQUMzNEJxa0U3SmsyU0w2TVpmUzV1?=
 =?utf-8?B?Rmh2V2p6aGU1ZHRINTJmQ1FTWldodnZxeU9BMllvOVNsWm4xWFJtR3Zad0Vy?=
 =?utf-8?B?YUk1bWZIWEdEeHFieFpIWEtTNjBjM05GUSt4M0tsL1dqaGIyRi96UHhjbTJP?=
 =?utf-8?B?NHJXMUhMdHdhN3NhUnRtVGRqVE9yMExhczhvUmhxWkFSWUh3MkNMdmlLdkVp?=
 =?utf-8?B?elB1V25XWFFNWU9JN21ucjVhanU3TStuL0xUY3ZOVTNDWW9nTzJyRWtiWTgz?=
 =?utf-8?B?aEFaY1U0ZHVvSEZOM0hhdVFHYndWN253U2JQRkJIaVVXNGpQdnhQMllJVFNQ?=
 =?utf-8?B?a3NITVYyM0dCaDN1ZzNSZUlBMkk1a1pGVFJ0eG5sbEYwZEVPSSt5YjlLdFli?=
 =?utf-8?B?eisxNUw0Z0wzbXkrOU5NQlBsRDBUdjVzUjB4TllvQU93QmFTbmpqUmhCYndw?=
 =?utf-8?B?T041WVZnWXdPcUVac0NXdTVIN0RLeU80RTE1Wk5NbW8yanFiMGVSNUJmd0o1?=
 =?utf-8?B?Qk9JZWxUT1RNOEwvVEY3V1ZUK3FYNGNwaTRjbTdaQkpMMStEdU9wVndVMlRG?=
 =?utf-8?B?VUs2VWYvS1QrZGdRNi9HSnNVS1gvVTdHOFJqM2o0RWJuMkxaekRrUGJMamFJ?=
 =?utf-8?B?SHBtbDVoL1JZWFlpYjF5eFQ4VGRyK2h3eWg5SU5Sd3lHMStoRGg4SUN1Nmxp?=
 =?utf-8?B?QTF3OXpEY01XT3JIekxhY1MxRWJvaWpySzV3SndCb21RUDRMOHhwdFlQZDFr?=
 =?utf-8?B?dUJ4emQxby9aOE8wczZMdFNqSHJ6ZXBabmsrTUs0ak0vZVZKYjVpb2JTSUsr?=
 =?utf-8?B?cG8zVHZHbU92eGJ0Y25UbFpsSHloSWp5VFNheElYTW81NHZ5SnBaREFsSFJC?=
 =?utf-8?B?aXRrdHFNL29FMHQreVRvVktVdlJ3MktBZ1hRQWo5cjUwVG5mZFhQdGsyWGky?=
 =?utf-8?B?Qm12WVlkUzdMeWZ3bGpoTEllYjhsYUg2Ui9kc2taWlVDcnlQRHdHYXNRNE11?=
 =?utf-8?B?VmdOekJ0bHN2L0VXWVh2ekFNVitFRFZaa3BoQlJVb2hQbXlVb1ZiM3pnUEJ5?=
 =?utf-8?B?Y1JIWm5iSjVDTzNBVWY3NS9WeG01VTdNdVhLTlJVMmRDTS9nSkc2aDBjM0No?=
 =?utf-8?B?Y3Uxa0loSmhkakU5NFkvRGNoYkFiTVYrZFIyOWVEVTZEcEo4Q1dOc2pHOXFR?=
 =?utf-8?B?SVExb2xnV1hLdnR0R0dPU3o1VVM5R2gxaFZETzlFWXd6MDM4dm5WUklaSUp0?=
 =?utf-8?B?cGJnQUc4czNKbUFLdE1raS9OeG95U3paS2VYVGdhZGc1VTIyaU5ra3RueVZW?=
 =?utf-8?B?akMwSnpxS2VwZ25XaGNlUzRvQit2cUQwQXB5bGE1Y24zZDErc0NIcUZoaHhu?=
 =?utf-8?B?Sm1RRHNFNXNZZ3VJTndSYW81aDYveDBtVGd5SnlKVEpRYlFTTHExS0RtRjdE?=
 =?utf-8?B?TGJQL1dxN2M4YzZhRnU1N2RwRENITlhlZzVwbStPaUZTYUtzdnhVUWU3MDM3?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 940ec6b4-ed39-4f0a-3914-08dba27bbe37
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 19:20:56.2202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z3ZRvSRwtBVvI2SSzK15HQJpnRB+mHe6MZXWSskHzEeHD6sRXUrLG3o9znySXZE2YHN7VOr2iNkhFvKyOytDlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 5/9] drm/i915: Eliminate IS_MTL_MEDIA_STEP
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

Quoting Matt Roper (2023-08-21 15:06:25-03:00)
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
>v5:
> - Tweak macro comment wording.  (Gustavo)
> - Add a check to catch NULL gt in IS_MEDIA_GT_IP_RANGE; this allows it
>   to be used safely on i915->media_gt, which may be NULL on some
>   platforms.  (Gustavo)
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_gt.h  | 32 +++++++++++++++++++++++++++++
> drivers/gpu/drm/i915/gt/intel_rc6.c |  3 +--
> drivers/gpu/drm/i915/i915_drv.h     |  4 ----
> drivers/gpu/drm/i915/i915_perf.c    | 15 ++++----------
> 4 files changed, 37 insertions(+), 17 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/=
intel_gt.h
>index 6e63b46682f7..239848bcb2a4 100644
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
>+        ((gt) && (gt)->type =3D=3D GT_MEDIA && \
>+         MEDIA_VER_FULL((gt)->i915) >=3D (from) && \
>+         MEDIA_VER_FULL((gt)->i915) <=3D (until)))
>+
> /*
>  * Check that the GT is a graphics GT with a specific IP version and has
>  * a stepping in the range [from, until).  The lower stepping bound is
>@@ -45,6 +59,24 @@ struct drm_printer;
>         (IS_GFX_GT_IP_RANGE((gt), (ipver), (ipver)) && \
>          IS_GRAPHICS_STEP((gt)->i915, (from), (until))))
>=20
>+/*
>+ * Check that the GT is a media GT with a specific IP version and has
>+ * a stepping in the range [from, until).  The lower stepping bound is
>+ * inclusive, the upper bound is exclusive.  The most common use-case of =
this
>+ * macro is for checking bounds for workarounds, which usually have a ste=
pping
>+ * ("from") at which the hardware issue is first present and another step=
ping
>+ * ("until") at which a hardware fix is present and the software workarou=
nd is
>+ * no longer necessary.  "STEP_FOREVER" can be passed as "until" for
>+ * workarounds that have no upper stepping bound for the specified IP ver=
sion.
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
>index 90933fb8cb97..86df42cb5823 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>@@ -524,8 +524,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
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
>index 3bb216d55c3e..b0894e7de403 100644
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
> #define IS_PVC_BD_STEP(__i915, since, until) \
>         (IS_PONTEVECCHIO(__i915) && \
>          IS_BASEDIE_STEP(__i915, since, until))
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_=
perf.c
>index dfe7eff7d1a1..605e6e4fedf1 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -4191,7 +4191,7 @@ static int read_properties_unlocked(struct i915_perf=
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
>@@ -5300,16 +5300,9 @@ int i915_perf_ioctl_version(struct drm_i915_private=
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
>+            intel_check_bios_c6_setup(&i915->media_gt->rc6))
>+                return 6;
>=20
>         return 7;
> }
>--=20
>2.41.0
>
