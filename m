Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FF5597E4D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 08:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE16D95070;
	Thu, 18 Aug 2022 06:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08629B94F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 06:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660802414; x=1692338414;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ut+laPe2BVSAR9nmWYIQJ4AKKH7h3t+nv4zCKb3q6yI=;
 b=bPVntsZ02feOyaRSMkByfQIGCY+ng00f9uQnXvLfkvIoVNt+iC9ajbYC
 PrN78WPbJMuVgtgbJMW3oiB6ePahJcHkTzFOuBMaAVvIiOMwtPpyNx1o1
 oxiKc4dTfum25waCLr9r7kBsg5Hqu7s1rC3yUteYGUmMFoLz/uluMVWGC
 RfZevfdvIFuYrRAhD5/YHGBlLnF9Nv5qDHppedJbf/YKpYpBTDN02Nq7i
 2yt1Mk71Rdcc1GcKfYNb4MZ2ZqhOiVv/hapj4yWf83x76fLc3+enpz5fP
 U5Cu2IZLNBWdv13rMltKM8Ng3yVpb+QPSjov6PAWkna4GsPho8dPnbjBJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="279638911"
X-IronPort-AV: E=Sophos;i="5.93,245,1654585200"; d="scan'208";a="279638911"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 23:00:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,245,1654585200"; d="scan'208";a="610889747"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 17 Aug 2022 23:00:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 23:00:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 23:00:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 23:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YzYXmaJJOstpw8tx+nTovllEflAqgO8sDTUa/A63LtTv7aRMA8AWFLl5qkOFt43cWnHXAG3UGGnbpV9LkyUMadsnWvpa2reFY5YOchhrI23jht/unkYE1q/zrvSNbQQNEC9StFRlUA+LtbJt7AguHdpXKgzP08qSvZeUYUrfMA9v1zuHcIafgRcAiZv0icbTiz8Gt9awYxeWDWIN/b17k+VlkogNKp+F3XI6WorBgSrLqo61dS8cFQdqGoaFRvvoqwpU7MbPirnraiElf86TJGXIkJmCbH0p0XjXA42Tx2HaoY33MQba6LYFyQWB9tdxtNmArmLVn4DFHS2yFU/pGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3lLJQrJJYQ+rxsntehCFgub159p/oFxHqYa2ayp4Ut0=;
 b=JLzlGVz4AFQ7LfvcqGt54pqf8i0zpjZj4hp/Ax7B49Fd1p42g88ZpXZXwk5TAlhYLP4Gr0O3oFW2u61UA1bwm9z5UkTNf2KGw8wqAd1bLbOHshBkpqgCAiVdPo/asAxujC7kbSNpZDtxA9DcxSIqkOt/PjdPfRuzUZ+E2eKX+stSVgESADv9GF3VdL2EBZz/Sl1nnlmq9G1RlGtInKjFTopgNKZVflZE+MmmS0LTfZfjk9oo3Z2KBpqqFdEyC72QguqII1yrMTGfZwE6jTAVtrQ8qY6PJlDEXA6yikAFw8sKYhf58EQ/HDckUvXyy40g69aGPNXFralk1jODaK6jww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BL0PR11MB2963.namprd11.prod.outlook.com (2603:10b6:208:7b::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Thu, 18 Aug
 2022 06:00:06 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5525.019; Thu, 18 Aug
 2022 06:00:06 +0000
Date: Wed, 17 Aug 2022 23:00:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Yv3VY2agZffBJLut@mdroper-desk1.amr.corp.intel.com>
References: <20220817224304.255767-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220817224304.255767-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY5PR17CA0048.namprd17.prod.outlook.com
 (2603:10b6:a03:167::25) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0c68d98a-dfa8-43fc-5b90-08da80dee622
X-MS-TrafficTypeDiagnostic: BL0PR11MB2963:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 85UD3ZSYLzd079MvK6cshIEqS5LLRJlxl8Th7hvVqvEHLl8BOsS7BIjeVLz4H+wnBi5jW+fOBL8tjm1wtvDQwfr/JAB14cqgOecSpAkKQ5rWb2S9meX2jvKpm9zkGODcK7Gr1CY3Dcyq82jyr3Y3hUVuXlWlOtnDw3E1MNdU3fVWj7xfnsuC9tqXVtr0qsjyP7kA+axf57CrVASGQEvZn5V4TFWY9s38f6a1XNnUwN6+om3Fei31uRLLfRMGiRmIjBV50uZnjcPpGhUJnqs1lERmrG/uIiEQPemWvy+vnmM1fDggD7oplSdCWwKYszxV3zP+RkGXf+v6N25poI4YA9BbnrTWByTP6phmCXuaEXgmItSw+JWerQg9d5W0RJEalKSuWWeR8MxRyBxYNSa/yTucd/7GhAlOpulf45TKRtryhGBlFGDtDZh8ciMLBsFNRiMkMzrQTfoDghzTnnB1tHHGt0R+/iVHSoqWG5EpXjxWJzCGp5fEs9F7FvOX2yOl94yaZ5jH9RBOZPfSGp65YGkhk+b2m4vlj60zojHE9wbSrm22VK7uvXZ4L4o5fCKEQaP99Xw+nN/Bwp/mQXUkpGPGfP7mCgrEueIRje93w0gU8n1EZMIeaej60yD7+ld+mYxMIMDf2Mx8GwA7YTRwdZZizAX2FM5trpsiwu9OU/pmXdoX2hJ3q+b9wAe5OeGUv5aVfv+y35CqK1ggQI8veQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(136003)(396003)(346002)(39860400002)(6512007)(83380400001)(186003)(26005)(6666004)(6486002)(478600001)(41300700001)(6506007)(38100700002)(82960400001)(5660300002)(6636002)(4326008)(6862004)(8936002)(316002)(86362001)(8676002)(2906002)(66556008)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R46KSuKA1zmKSoB4PfJt4Sv/Bgz8IHz4irJ6owr5BWw8Cf4YITAinkW0arOT?=
 =?us-ascii?Q?C7p9Q+KIus6tlzLYcL4Vm62cCqganrg66mYt5+h3kElfDBWZ7RR9Y91EMilk?=
 =?us-ascii?Q?5veNAgBKj+R0FMZsoVNmFQlxAKcJpnCRWPRCB5ttw8jtrO0LGK7xyoP7f+rH?=
 =?us-ascii?Q?yZ1c2U/p23czFP8EuH0KZT279EHo579WTmLfws9gv5ehV4stfKFpln+Sf7en?=
 =?us-ascii?Q?TS50734rGwFQf000NPD90n+tnv9AYZarEnkrf3fPPbdTh+jEyXY6K0obrcZs?=
 =?us-ascii?Q?FkI33GfqCCi68iTj1QYLKIC2osyVDloUiG+xqeWI2IB9OFNf0gmajQ4B0yjy?=
 =?us-ascii?Q?ApWG21arYMByqnz3ewIn+SyFJ+zNlvt4vWM4sqcFg8TgAMCUnJ/AT+Q2PtsC?=
 =?us-ascii?Q?ChBX8pLuuNDxK0xFaCVI+3c0KDFoLHes93VWvh7LZgBdfHcJf+hcWZmZ2OXo?=
 =?us-ascii?Q?MbeVh6UJlob+jwiUi5eRC7OZ/oFs1lcyWWVpzov0hGiaZJf/a1h6sdjPUP2U?=
 =?us-ascii?Q?u6szubt3EAAZGatMr6XechJwgI6YbLVOW9g0l1zeZJSUbTPdOSiqT53UiAk7?=
 =?us-ascii?Q?9mia9HDeuhgEXl23zscexNYS5RS5BTyFvLpGPqr5hiwEzjmGSFClLjewWgVG?=
 =?us-ascii?Q?eJnoRxIr91hiIGQzu8FhqZm0KAdwdX19K2YUMeAocvGOUSnDDQ/D6//KVS72?=
 =?us-ascii?Q?ghSK2DZRt+5FGdS2Q6k5R6iiZOTV5uYulgU4CEO2bh+Pe2k1oM2yiRE2R0XU?=
 =?us-ascii?Q?gWzhOD81BNES2nvkE/Rvx2MYi46JeehHjzkDGxI+7vNm11sSpTrXOjZNZhrp?=
 =?us-ascii?Q?aHNPe2UUmpFchqq9DMP5imTZ4IPswpCiBXB0odnJZad8zl71i9XHzhPZ5FMX?=
 =?us-ascii?Q?8UkKsR/dx3sUguATJfydJnpKWd6/GSK7zxTuJI2dhHf5J/lD0zTq7yXzVt5r?=
 =?us-ascii?Q?RACdFKE7uPJVJSIJuJ1HQgkvbub0gwiUD5nZ90Db8e4jy78/qXOCHI263I6b?=
 =?us-ascii?Q?kTmEXZWlOVfFKN3pUWhA5dVqRsp/DZ4Z7HXUwRMWjATmI8LwebxN4rcqDs3C?=
 =?us-ascii?Q?SyNsdoN3kKEtgwu5bGA7Yj6o9CSDSjJfJ9rOJj4+b06VSFFpOQ/smYlH9MUF?=
 =?us-ascii?Q?DnD2wgQnaM5uJmSF5tMn+q6nil3XtkMqJiZqJ7WYcxAUwEzhRWzWEZlFUdNP?=
 =?us-ascii?Q?DJKZzZ/p0B5irc1D+rCno5YCzWGWkUxBB30kB5Swvr3FJjFcrzWmTyDlDNM0?=
 =?us-ascii?Q?Pn8/XjNwQczlS2TJSdTZUb5usovgtAc61ieq3tntKI9PfNfzUuRN5O7AUc25?=
 =?us-ascii?Q?tiRxsJBSwHCPX333Q6Sqi07WYzilnHxihVDIRRtGgSQRcFpq/aNecdHSE48P?=
 =?us-ascii?Q?ncW0ASUlJLjfGOq8LNwGup48cNqGuedjxaH/VYXPF4YQTOUWt5ANDL6c2ZPh?=
 =?us-ascii?Q?Vmhqv09XsRS4b2zTo9bQ7nSn37sK1zEhv3bJGzyP5C1WSmI0Ut/rYoaiNGv8?=
 =?us-ascii?Q?Zo8nkV0LVSBmrBhxTvdX04PwzU2A5GaSIQJvoLvGw137MLM8z9/uqYr0Ebe+?=
 =?us-ascii?Q?9Z2ryCmKYbSK6r0dM3w/xbnigGtqEwtfZEY6+6IMt7mFzpoHUOLddIPJ6L+v?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c68d98a-dfa8-43fc-5b90-08da80dee622
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 06:00:06.0171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bSm8vlmFr4BngXqXEXvQrlqxuMdYXA378LURWoh8u/SlTw3HmCWTeX/1cqg+6Zu3VbJaS8YtuNWMp6AUdYjDgNUuNfDG8Wp/NIsuOisekR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2963
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for
 gen12+
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

On Wed, Aug 17, 2022 at 03:43:04PM -0700, Radhakrishna Sripada wrote:
> Bit12 of the Forcewake request register should not be cleared post
> gen12. Do not touch this bit while clearing during fw domain reset.
> 
> Bspec: 52542
> 
> Signed-off-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index a852c471d1b3..c85e2b686c95 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -113,7 +113,10 @@ fw_domain_reset(const struct intel_uncore_forcewake_domain *d)
>  	 * off in ICL+), so no waiting for acks
>  	 */
>  	/* WaRsClearFWBitsAtReset:bdw,skl */

While we're at it, let's remove the "bdw,skl" from this comment since
it's misleading and doesn't match the code.  We do still apply this
workaround on other pre-gen12 platforms than just those two.

Aside from the comment tweak,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> -	fw_clear(d, 0xffff);
> +	if (GRAPHICS_VER(d->uncore->i915) >= 12)
> +		fw_clear(d, 0xefff);
> +	else
> +		fw_clear(d, 0xffff);
>  }
>  
>  static inline void
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
