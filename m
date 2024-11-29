Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE28F9DEC14
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 19:26:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B11210E56F;
	Fri, 29 Nov 2024 18:26:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bWCb82pQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F9C10E569;
 Fri, 29 Nov 2024 18:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732904763; x=1764440763;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IoQSOjgcuV411jObGqantBwwSQArqX1WfVqnTlOD5eI=;
 b=bWCb82pQk3ReJ1mso4uA9ql7w1eoMnm6kOgsc/npmJVyGLLDEFtGcgCG
 yNN77KHTcrWsnmTrLWnGRl4pSofEINE+8x1U0S8gzZzrf/CwLPCrovqOX
 3vfpCE3HYzYAp6LuOYsx14/BRbya2YnPcz9XA183L2x3s9jyzPd8+d9sT
 4ARLs7JxRaFy1351cLWT3wOon2IRbNu6V23ADM0vsvUMngpFA1bsU8NXN
 RlFjrX7LOPcGk3s26oocFqgchtfjZLhTHRqcL60gMX6nDUy7vW3J9cwnb
 xwPFxHjaDqOHoVv6sffXrc2yuxverkg5KWyKBLaDUqEjpt5MKl8TYSnLM g==;
X-CSE-ConnectionGUID: SsvX/4ecTii9oj3OjxvtVA==
X-CSE-MsgGUID: KCPmw6T1TZ2OlaYQBB2Upg==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="33007601"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="33007601"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 10:26:03 -0800
X-CSE-ConnectionGUID: eho+q2EYS9e/eA4VhacpEg==
X-CSE-MsgGUID: s/gYV+FTQh6UWp8LvRTXrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="123409526"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 10:26:02 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 10:26:02 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 10:26:02 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 10:26:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vUJEFRtmMT4q9JIhg/EV6Q5YfPp6HrJj3UU+ydbtHptDO56wwfhBqVBei1BPHQL0PHmt2XTISoYMDlRaAmoqp1BaCRgZbZ05vGL2eHr4Mzcxil7ymfUdQbAubpungMTT20sWNpSYL8XqhncDVUbsblfN+DdandyVgz5xjk2sW0B0YP8sepGe35lo7AN5sEl30fok/FAoIJ6wzpHW9TEBBWTz9oNf/onWjjAeenl85Qd6VfF+sDCHdy7FLFBQIaFHZxoyK1eU7CKkEvoYz7XqDzCbjdYBsx6ymS6LO0S7boordv/w+OeSkoYby62z+PHm1hE+QL7og/kXeNy+JhiUjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1UMq7X1rmsNfLcZS8jng5/aarYPHSL+PtP7OK7pW1dI=;
 b=xApwmHNxJoU1R/qAKbXrgGISwQgw1VPW6p7g6zN7IX5Kg/rqLUI8oS2Cb7Tv5QeJpJuAajo+qltX0e6KR00uZjuzC9SjocJFO/qqTv6j92bHdiNPO4QYBa0mICo1qxYp/EZGYnT7EEKFi8unCS+Ua5DBDnRYMj+d8FQj7rYOpd1PYRq9UXzjte8X9kd9024EOgwpQcmi77ImL0zk/VS8X9hqKbI45m4Zi/cKWD1P2x7u33HxV5ol1v6P6OJrMYA09KdhGT7bnyNnon5YrlqrExwqGzpkafUamD4yJ4zDgJz5zZ9zE4eWxoeLNe0MCaxFQ2aA+5YlhxGUpSCwrDqS3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 SJ0PR11MB6813.namprd11.prod.outlook.com (2603:10b6:a03:47f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.14; Fri, 29 Nov 2024 18:25:59 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 18:25:59 +0000
Date: Fri, 29 Nov 2024 13:25:53 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v2 2/3] drm/xe/display: Extract
 xe_display_pm_runtime_suspend_late()
Message-ID: <Z0oHMXwLIPaqGsGa@intel.com>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
 <20241129164010.29887-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241129164010.29887-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: MW2PR16CA0004.namprd16.prod.outlook.com (2603:10b6:907::17)
 To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|SJ0PR11MB6813:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ff1d620-1573-4d6b-68d8-08dd10a345c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wKidGgOkyo1ViHrgUXJhraG0ZcxdbAkGzkzl8L/kg1V2OsKJlEYQ++61V56J?=
 =?us-ascii?Q?vme91ydAjzV4HdVAhgPNkpdC6OEFL8yc83Dp8sLpKdKLeMxzu+0u6z2XIKgk?=
 =?us-ascii?Q?DPMaU5mrJIEPof1Glw1Kj934Ce7oJ2u+GYA17BmsqKKEmLH7Lm9xIt9A66Ux?=
 =?us-ascii?Q?gy2S01O1HIi2EzCOT8P1Izw8/LtDALmzjmpBiig5VkKUPkOLnbjbg5zC7h6w?=
 =?us-ascii?Q?sSaMz9RlElNzGG6RhBpfFW4cltd4E8UubFdUPobCPAnQ787gi/I4CYAq4ErW?=
 =?us-ascii?Q?OS4DKIjbA6P3GwUVPntzMHOW+JW6ITIiY+m8nwM2to7QIU0bg+8K6AtzDhAg?=
 =?us-ascii?Q?FIdlbogK8/E74Ur00u8tQPPCf3K1ajcGpvhFPY03f8atJ/U3kc/6A5Kqrn0C?=
 =?us-ascii?Q?fL9AOy52Un8BoyOtZOI7WgP/JIZn2wiYr/k0TpVab2ECyvNjiZJjL3+CPIxA?=
 =?us-ascii?Q?jIbfQvFzLErFOCCLPDouiyPHq+F9k00lxwoRNMX67gtguibRQEWj6lyQKVLf?=
 =?us-ascii?Q?myfF/wRK1IAwJkki0D5qzGPHcB1uM13x+J1oFA2QuCYkuxPxUm8YOL2iMh32?=
 =?us-ascii?Q?m9MCpxdVc5Z2k9fNShuCX/H0dMJCQddRePeGEv3D/DkWCm/BTzeAImmQr3Ha?=
 =?us-ascii?Q?iTEmgkjzr75F8QrM+VRyiOUAGapXWfnAhwVvAPc53AQIiYpR3SJe5fjVShYi?=
 =?us-ascii?Q?qywZ9zSrsAj7Ye2bJr7zWPyPtiWvXPGiwk85HQzP1Ffi7IU0fESsOm2hj10x?=
 =?us-ascii?Q?M6piwdZFkXM9vVvn0kjkrtlIzaI3uPcFy4WaXhPlxsTNIDK+KKld+ZPYKc9m?=
 =?us-ascii?Q?d/NEAY4yERpHfEXz1rzTrucYghD1ljosLBoAAl8VoiCaVugEq3033poxSlf+?=
 =?us-ascii?Q?zkGUXuJFHK8c4ZhiPT9VvBRdj7Tpe0aNyBIdK4RRHF7EbEYHzVue9CDi9z7+?=
 =?us-ascii?Q?85o7EMkLm6BC9WQczePmVt/jEWkDKx5Ug65zI5H127UVGFoVYFoMVaEX0zQw?=
 =?us-ascii?Q?i/xoMnjWN/SS/gQLuRGJoiClJddhfYTEqrverdp6mDyGLvz0pwIE0jYk7KRK?=
 =?us-ascii?Q?HM5ZEC3XcX2FgjlLlFP+JrVHxYpZzYB4+l3CS7F53vO7fakiPtJIc4cV7eUe?=
 =?us-ascii?Q?I0IihAkr5LwadDl4f1zsU9Hl0lxqRaRnHl4JRcMjyIho2kzT1uCx1pHduN6s?=
 =?us-ascii?Q?3DT3MKd2q/pCHSk5WcjpmbbDceHMCZZTZ+xDfG0VDMkBx8hlu/fbjrmYREbA?=
 =?us-ascii?Q?0PVNKS5ODB4AQj5x/tMOtswdaH3nze0oKjw9le68Gs6jF1GxDNnzGnYB9FFY?=
 =?us-ascii?Q?w2s5Gpq1BL27gSK3asrur+Z8mW+DBYCJo5QHvqmUyd+shw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t66v7wWahvWTxEgkWCKp/FOji7wed3fezGogmEkqbCNrye3PeWBEGhAJ3Ru6?=
 =?us-ascii?Q?3Lp4QUXDOvsylZQ6DTAcEKebRB9gPOTA6gVOqUFr6VrO438Hl82smec8y0ih?=
 =?us-ascii?Q?wqusPwCMHZWdZBxR600ZrCLQb9/JBA8+E1+M3kYiP2xRIz4WBNfDSfct4H/M?=
 =?us-ascii?Q?YClrejFZIg4GhNciEla1+JoahURFPjKX7K+C+D6E+g1KPQHTBFNfvYB3FPnw?=
 =?us-ascii?Q?szwf5qSxv3cyKEczdvEeQC63+tVeEspHz2wlYTd0KsQK3KcdcwRFg4eTRa2F?=
 =?us-ascii?Q?c/9ICIgNTok+TRp2OJY1bA/dRWxsFNI3+1ureiOJYQe0R0IQCTgDstfztNlP?=
 =?us-ascii?Q?2zFTKViiJtIRXiUq+npadlkMeB2vPvhwGROUAiIm+dZqWGNhf5mRJLtPbx1/?=
 =?us-ascii?Q?ytxEupaCkIUd8Z3vd9xwVuiClaYkJ0Bjc7jZxqJVnIE2XBpkZpbAVOuyp28B?=
 =?us-ascii?Q?s90u2tCcSi7I+6tH8EHOI9X32HLPUFZDZhOQ7LlA1hE6hiuuV0IJJhSVQ0TF?=
 =?us-ascii?Q?AHOtVz2FWetkmpwVXc6VCPA0Yn2NxQzgKxLskW1Nnscp0AsBcGqQrSKOfrXA?=
 =?us-ascii?Q?gYZlnRo28g88kaexF0lbfxmVh+56jG74Ol0QBmfNBWmwiU9kirPjtNefqFgP?=
 =?us-ascii?Q?FynigQzl1cgMxXHCJT1uuD/XwZboje/5+AFV438fWr06aR6s3UTjLyiLlG6v?=
 =?us-ascii?Q?e6xMSl3l+9KyuGoXbZtRc+30zJhX3aCVU9GaZcjTQCP1pXwCisHIBtR/S+R8?=
 =?us-ascii?Q?ArjJcZkyiDs8Wdb+889PsfnwaFhI7J9NkF8O98k968rqGDk5PIzpuK5BmkLg?=
 =?us-ascii?Q?t3v2uElvLsk/MPoSicMgOqUpCP3RxGkBQUYAnlqe5eC9B1S9fECuWBvRSXiF?=
 =?us-ascii?Q?tzPJsbSv2Y3mhnMQrir0alLEZjbu9QWIN6fsmMl6sN2aQcM4Q2gLQsZ8Uy2t?=
 =?us-ascii?Q?UHRzBknTocZ2r62L7gLMr4ukhnwE14+fLVqYAX36rs/UnHogJSPocCXdf4jB?=
 =?us-ascii?Q?51fp3H7TZY86coei3vA4RPslOaswOp7BxPX9fir+mHKc1m+6oCJy92CIHat0?=
 =?us-ascii?Q?X6lRqy6XtQUDOhAhln2JQuiviItccLdz0cYJ1FK6qSDQLyShIaAszd1ta+RA?=
 =?us-ascii?Q?OYXMO6FTvpN9WjuiwWwbA7I/6AB7QhlQtzWTWumqMyD8bhUhMO/15TjayEGk?=
 =?us-ascii?Q?IXksVfAjeEYUbELCRfpZzutWY9MJCUy39PCPPqZlqXGF3gVMumNiLyfe3RsZ?=
 =?us-ascii?Q?GCjnZinQFeQofJ48l2iq3JkcjTcaKjb2rH08YDv420OSyFrz8jipoGgpKnm+?=
 =?us-ascii?Q?k5rVSXv9bovCvJUvIglct+bB0KGluR6aIT29bJHJx7FQUs7QLXQMqn0LY/dc?=
 =?us-ascii?Q?Jst/ErXWWVz6PYa4zW+Vu3EMW6K/jONESj/I6JkzDFfBXewFJtES9FQHCjqW?=
 =?us-ascii?Q?nbcKLC279rk6HscYwLfK/W0q0xg7mhlHu+a5GdkCudCfDugG9P2Cg5kXvXs+?=
 =?us-ascii?Q?WQqN0cZdy53UnAtklKgPZqKVH/jg97+AVMF/X09oOk3rGfG5aracGl09Mrzm?=
 =?us-ascii?Q?GtUBUOc7lypb1IKQwxPy3DzgWvtu9L/+oj2jEo1TAAltRgxKgR5h8UyELloy?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ff1d620-1573-4d6b-68d8-08dd10a345c6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 18:25:59.6406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P6nhhShU7t+i1OVWLzIOFnSJFsMqNEchaz/RVTswLucpspNRJLz16SFQgnw2mC2TzPyFeHh8RKs8FNS7cWzRgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6813
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

On Fri, Nov 29, 2024 at 01:37:55PM -0300, Gustavo Sousa wrote:
> The current behavior for the runtime suspend case is that
> xe_display_pm_suspend_late() is only called when D3cold is allowed.
> Let's incorporate that behavior into a function specific to runtime PM
> and call it xe_display_pm_runtime_suspend_late().
> 
> With that, we keep stuff a bit more self-contained and allow having a
> place for adding more "late display runtime suspend"-related logic that
> isn't dependent on the "D3cold allowed" state.
> 
> v2:
>   - Fix typo in that caused xe_display_pm_runtime_suspend_late() to call
>     itself instead of xe_display_pm_suspend_late().
>   - Add the empty version of xe_display_pm_runtime_suspend_late() for
>     the !CONFIG_DRM_XE_DISPLAY case.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 9 +++++++++
>  drivers/gpu/drm/xe/display/xe_display.h | 2 ++
>  drivers/gpu/drm/xe/xe_pm.c              | 4 ++--
>  3 files changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 69c828f38cb6..739db5b7b01f 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -407,6 +407,15 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
>  	intel_display_power_suspend_late(xe, s2idle);
>  }
>  
> +void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> +
> +	if (xe->d3cold.allowed)
> +		xe_display_pm_suspend_late(xe);
> +}
> +
>  void xe_display_pm_shutdown_late(struct xe_device *xe)
>  {
>  	if (!xe->info.probe_display)
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> index 17afa537aee5..233f81a26c25 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -41,6 +41,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe);
>  void xe_display_pm_resume_early(struct xe_device *xe);
>  void xe_display_pm_resume(struct xe_device *xe);
>  void xe_display_pm_runtime_suspend(struct xe_device *xe);
> +void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
>  void xe_display_pm_runtime_resume(struct xe_device *xe);
>  
>  #else
> @@ -74,6 +75,7 @@ static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
>  static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
>  static inline void xe_display_pm_resume(struct xe_device *xe) {}
>  static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
> +static inline void xe_display_pm_runtime_suspend_late(struct xe_device *xe) {}
>  static inline void xe_display_pm_runtime_resume(struct xe_device *xe) {}
>  
>  #endif /* CONFIG_DRM_XE_DISPLAY */
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index 80699dbeb2e9..a6761cb769b2 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -414,8 +414,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
>  
>  	xe_irq_suspend(xe);
>  
> -	if (xe->d3cold.allowed)
> -		xe_display_pm_suspend_late(xe);
> +	xe_display_pm_runtime_suspend_late(xe);
> +
>  out:
>  	if (err)
>  		xe_display_pm_runtime_resume(xe);
> -- 
> 2.47.0
> 
