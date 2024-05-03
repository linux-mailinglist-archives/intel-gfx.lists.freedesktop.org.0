Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 285AC8BB343
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 20:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09F610EBC1;
	Fri,  3 May 2024 18:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9Ei1LGn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4927010EBC1;
 Fri,  3 May 2024 18:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714761261; x=1746297261;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/e/cQegDf1jyTxqVIUxkaydXk/MMVzUVPQnYCx35958=;
 b=j9Ei1LGnAe2t45WpIq4nEtD9Q+t4nek9oH9J/R8yFItFbDds+5HK7rFV
 9L9OyS+AFr+F59rUcz26bhxCzS+O5D+BaOEWBzPu5B0Z7ld24yWc0iciX
 PUS6sAIPJr+SB3p2DmEVy5Vd7rQqfaIBLOOB+Y77OMnayGyd9VY+kooPy
 Jbm6ICl48jNN4a5Sg+5EChot3PoL/T51Q/qruttSAdEGeLJi652LBLUsz
 a+rHb2ZqctfS9sZzP2a/y/AApPTBexIpqHInZT6FuuVaXYeHKBQ/doEsi
 K+g9qzOQtYXOij4uM8knM62FllnZE2atPpZXigIrnS2liIGo4INDrJMhx w==;
X-CSE-ConnectionGUID: Eb29JcguQD+f1vwK/pxzhA==
X-CSE-MsgGUID: /coV4Pi3Suy7PqAeEiTFLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="11115414"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="11115414"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 11:34:20 -0700
X-CSE-ConnectionGUID: B0I/SifwQu2uwC1NoajARA==
X-CSE-MsgGUID: KPqohcJFSBOWlRjmfgPo6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27552737"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 May 2024 11:34:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 3 May 2024 11:34:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 3 May 2024 11:34:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 3 May 2024 11:34:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HabQeWktHTczL8SGZZx2Q7AmTi2SGic+0TkY8S+7mbsqaIunMl1aOU11RuG3HbgTPKAKtbLuJiuDuCI8wHYbhJZGeuuY3bOk+yIHLIsYOwfl58zdfI7lnLJfTVhNLH4m+X53sZf5OfgJjMxxrEDv73PshWPSjwLU48J7LB5xuu33vYNewCkXO8Pz+ZLYw2FPQo210IgPmKTA/VKBUVMear0Pbi1cnAneFYSqGJsqRJQCQ3ZwdCcKAMVisAQl00HXnHwnPGL6dSVkLXyl+gzs4bKWxqr1BPBd60/RSQK0nzkDpMn4sIdaEf01P7TH31JBC66nW37mMV/rykd7u45T0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fAi9wEFqiiTPsvapOmxCSnSYHV5uw6aL4UNMaHAuTwc=;
 b=XS+uq01v1suZpNX7QjpJZVrkCUqGVxbsTamU1TpD5qZdtJPhg3k9sbfiYdv5nasrJqKGDZNQEfUZvN4WMyxUD8ivp20X9DNH51AFe/fdcAkLTp0V1Gi2/DgTDnL8YqNSbpiI3swKZaHCL7FqaPF+k6aTAxUGmL7TlNUfEkmSAn2MAIACYPzNap/jvlZaiwlEcSQfCmQ4VqWK72Or7vJBkmtrOAUmD9DcN0LT9B2g5/6/2iZUwx1gHzRSCIF2oh8Pjkun67Ee7jyTOP3guO7MDsuZPWakzP8A0UO0fSgrnOtkextkmknMcj/BBGlH5dd5bfn4pzlpMx00TJH2guoOPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB7495.namprd11.prod.outlook.com (2603:10b6:510:289::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.29; Fri, 3 May
 2024 18:34:18 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711%6]) with mapi id 15.20.7519.031; Fri, 3 May 2024
 18:34:18 +0000
Date: Fri, 3 May 2024 13:34:15 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Balasubramani Vivekanandan
 <balasubramani.vivekanandan@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH v3 16/19] drm/xe/gt_print: add xe_gt_err_once()
Message-ID: <gnswhzqswwru2p3uzfpbq2zzbixljcfx4jtoxqb7h73jtigtpi@7sf5lsmrqhrf>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
 <20240430172850.1881525-17-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240430172850.1881525-17-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: MW4PR04CA0281.namprd04.prod.outlook.com
 (2603:10b6:303:89::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB7495:EE_
X-MS-Office365-Filtering-Correlation-Id: 52d9cf74-f1e8-415e-cd01-08dc6b9fa431
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?P9JFNnb1KWz1lo2EtrmkY1FXifpz5jeUX2pAiiPwzc9+cRkezmIXiN0o00LZ?=
 =?us-ascii?Q?MS2bGr0ZrYeHdigzwNOj3JrMZtMgjDVjHFhkqbD2yDg/J1ISzuIL1kI+nwhU?=
 =?us-ascii?Q?cGhfdhKz8PM3CPIruzE6zPI4hnVUH1Iw1UpA60OLQHGHV3bImhRmeQ/p03Pd?=
 =?us-ascii?Q?3OsMJIqm6KyJp/RilyJXtqk5AJzClQ0RBtmVZnWsckCi6BNNQqV9kTVCTWuk?=
 =?us-ascii?Q?le3qh2tuFBcWlSj1ILLVaBzqTDpmynYiaUMr9wk/dScPhucRGBZJ7qIAckNz?=
 =?us-ascii?Q?FAjyxMWDIe49AOxCy6TQI5dSIrMsYDdeMboKeyGUF80UadK+4oziMQRK0uI1?=
 =?us-ascii?Q?Rui/k2CKd2Z5cn2XCq5NlrVLP7VskuuTmxjsk+/cBL5GTYbhqN3Fq2ajGBpw?=
 =?us-ascii?Q?nT8mwCOtWe0E/i5Qfw1Ga4Z6WJrJ6NBZbk1VtL1KikP5q8Hvx7CEqn8P3ga8?=
 =?us-ascii?Q?PAuKIJGCXAIpmZm20YjZSGiF3DW+V5rM1qSitlF/xuxTzUuFH5+DbAQ1bFfr?=
 =?us-ascii?Q?84aMobt0cdvY1Au1enaM8EcOSE+EhZx5DKlpo6Hwk+0GB/pDhXslJp3my5Pn?=
 =?us-ascii?Q?ur7m77Ny6jlLGHg/oQrp3VYToCDB98J67VLExJjMtV7aFr3ZcV1BG1FlvlSP?=
 =?us-ascii?Q?2TguF31m6/10E5gtwh/v+IwDNa12wMKOF6mEbUHTkopKd11S+Qa2CE8kRdnL?=
 =?us-ascii?Q?LCYaXD6e50+KLUXm1QD3HFiZTI7U+kUs4CMmen+2/CswlwAwhsX0ilaZHkuv?=
 =?us-ascii?Q?70mymYaZoyrGC8cvoQew7l71ARZc5WWB8O9wFKa+v97Q4yWfOUERyaRstPQj?=
 =?us-ascii?Q?cyR0xKV1u+EJyLkRgBLwpdS4TuMJEHh5Tex8JDxrPiWNIXpFQ0q4ALuICdJl?=
 =?us-ascii?Q?bVERmI4uQV2umXvFLoDJ1seotMYHnetShhVKvZdBBWyltaGL3ERisesu2Sam?=
 =?us-ascii?Q?gk8w99yk04EYuEBmEjXhJwLMqNmfTp2sZJ6FVU8pvi8BGXXKItfG5hGTWB7Y?=
 =?us-ascii?Q?gPg0Y+2uYygWGGECcxujMFw6KJpIFXBRri4AKAY8te7tu+pbnt9ZicLiKnns?=
 =?us-ascii?Q?aG4OInNmhQfJCu3Ds7U5Q0KCr3J1ZFCMrKqQFsIXU5X39QkXqyhlr4rEyT/5?=
 =?us-ascii?Q?+HpYY69RKFeR3DXZtN6qtVMFjwxuQTinO9OBh+jhKyT0Qcc0abC7LSMKY2nt?=
 =?us-ascii?Q?vrVdO+ueEZ4djXCLU592EDO1ZPFp8YJY48EmaekjMbG//XDdm9kiCdcWyGIU?=
 =?us-ascii?Q?boxBEoJ5MKvODT1CkuYhkxS7I/Wx+6kq4VJYJwkgeQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ex2j1lHG9cj1Gae5ixWw+SuelMQKKqmfXiaG52i/YDm8Vc5nZxLN9A9j5qIx?=
 =?us-ascii?Q?DDQ42hHmsVt8onvTQo6LVLr0Z2OazN+fBwW0jaUPQijKv1CIfzt+jSgMNgBK?=
 =?us-ascii?Q?QEkwN6wwjkPQyZg2dS8VWmDyBCkT7ySENfhuAv4X+Wxvnl0gyf29Tx5JITWY?=
 =?us-ascii?Q?pkSAkQ0MLA6yvgyEjdF047Sk6m/wMFtB96PBwPhweYQcfrwZaTN2mwsUgLVc?=
 =?us-ascii?Q?5oZiHh586csUXHdbtZ1FExkKkwWbMwKiQxJ+hkol9H7qGg/0DzOp2iQyXmGq?=
 =?us-ascii?Q?AWLO8qkaM0pfMKeBG/dKLtMqbvYwf/AuYWlbWCLz9eiTgUFR02ON6cohRwHd?=
 =?us-ascii?Q?6r1t0cWmHLy2oFGB3Y8X0RCj9moVMASz45jOf1cJlZkpYh1Yf3UDQ8lGLS5E?=
 =?us-ascii?Q?FQqk0RAcRIR+AQxMylw7SC2xRFgvFRfmmd+j21fHLG+JHB5MzOfal84i8NrN?=
 =?us-ascii?Q?K16EErJgVFRYvNjiGL5BJyery7JV+0khEvm4pz1g2zVlnnIZfTe8QzyjeWCF?=
 =?us-ascii?Q?KPvuCVtwp4tHKp1px+x4ukdFAcMF17AFvUserwTUONWbpdBlt3mECck6Vtv0?=
 =?us-ascii?Q?Tf7Ya1p0Gci6oAAdqbZHrBSpW7iF5e5jy33rTjvsnAH20DQTnQ9wdXuuwpeh?=
 =?us-ascii?Q?RmOaXfqcFhKxxHszZovqKjUFRa36jF3JOYieWBb33uE0FKUKJovy/y86Hwad?=
 =?us-ascii?Q?eJGBPEx66AyrGSO8miViULo89D1/4ewnTjU5qLtdYdq3t7qwc6J7eM8e1vb4?=
 =?us-ascii?Q?BfL9S6GWbLpWrIR7Lm8FVzmi4r+NpsDEDORXJGbvj7ryJr6KA1R2aulMvEu/?=
 =?us-ascii?Q?9HaK8fzpgBKoehahAClq4ZTn8jtJa92RfRxT0nPAMMKrVoyJCJ71sYyTymil?=
 =?us-ascii?Q?TFA3Zvv2sTldgK64w+MLW6HWnEo3vQbua98YEU2fKDojraGdaQkhQSIEaiO9?=
 =?us-ascii?Q?1G0RSY94IgiNmfkCh3xZXajMuzWCfrvlQ35Bfugtv1qVWIN1lIyYf4oLrQIa?=
 =?us-ascii?Q?XJoK0FGH11n+7QZFZiByqfRI05HjkB9YwlzAsgIswRk/KY2TsPVCptjEiONT?=
 =?us-ascii?Q?QqkQzk0Uc2MCPzWVHQXeqzuamblDgi5m+gnDSkhYwAe7QhpmMD2ovJErgT/5?=
 =?us-ascii?Q?dp6vgGVThAluNZmHVt/0LZgb+cuarf4gabAXP+daxwsDU2gU5KULVXvtGoUa?=
 =?us-ascii?Q?N/jnUOTvu8bvue6TZGswsA1MFwxck8ch6L4QJxLQ94bTN87jxMGm+3D+Xd6x?=
 =?us-ascii?Q?8Hqnh8bIKrKLIMHCPPQj10XK2osENwEZcKI15IqAjB7X/T54GAQpzpzQINiE?=
 =?us-ascii?Q?DexcKsf9PATgxKxpbzZZGBpexrhDegG7m6Ip65wexzVvagf9+YtUXQwB71qo?=
 =?us-ascii?Q?TQwzjxeTm7eJTsjrFkgBdaNOOljqe2GX7JE8VU5RRYMXHZ+PN72NVTXP71RV?=
 =?us-ascii?Q?+Bb2tkBr8SWeaFWGF4GPDo4Tfzb6Jdx7Wu/HpR9yzMgIZi1PAULu2pbbFI1U?=
 =?us-ascii?Q?0W7i+bL7cwfNkprLyqYUaE6Mgr1jXTT8p/9ueWTfhYR29/MguSnmI9gA+2Io?=
 =?us-ascii?Q?n8vRfbj7uDoEtqrkUY57QEdtKmHgF1UrE226jcayODJOkgGOejF6rV2hNqkt?=
 =?us-ascii?Q?8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52d9cf74-f1e8-415e-cd01-08dc6b9fa431
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2024 18:34:18.0718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: shqtFiQSmva6dGJuef7yWsAzks9H5uTLAe4PcQlt1DnMF3iHKyedRu1xXw9DhDHtqeR9TX6ZVB94TyUlByPN6NbBuzRzLHPk+TcAtjwo6qw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7495
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

On Tue, Apr 30, 2024 at 10:28:47AM GMT, Radhakrishna Sripada wrote:
>From: Matthew Auld <matthew.auld@intel.com>
>
>Needed in an upcoming patch, where we want GT level print, but only
>which to trigger once to avoid flooding dmesg.
>
>Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for merging this through drm-intel-next since right now only display
needs it.

Lucas De Marchi

>---
> drivers/gpu/drm/xe/xe_gt_printk.h | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/xe/xe_gt_printk.h b/drivers/gpu/drm/xe/xe_gt_printk.h
>index c2b004d3f48e..d6228baaff1e 100644
>--- a/drivers/gpu/drm/xe/xe_gt_printk.h
>+++ b/drivers/gpu/drm/xe/xe_gt_printk.h
>@@ -13,6 +13,9 @@
> #define xe_gt_printk(_gt, _level, _fmt, ...) \
> 	drm_##_level(&gt_to_xe(_gt)->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)
>
>+#define xe_gt_err_once(_gt, _fmt, ...) \
>+	xe_gt_printk((_gt), err_once, _fmt, ##__VA_ARGS__)
>+
> #define xe_gt_err(_gt, _fmt, ...) \
> 	xe_gt_printk((_gt), err, _fmt, ##__VA_ARGS__)
>
>-- 
>2.34.1
>
