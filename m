Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A168B58CB
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A95110FE65;
	Mon, 29 Apr 2024 12:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vq/WGgq5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F62410EB0A;
 Mon, 29 Apr 2024 12:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714394608; x=1745930608;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SHMyT8jjlAY+gwgdZ+2rO1CwRa/VmZkhNXIZY7LCe3g=;
 b=Vq/WGgq5QyvdTU6DdZDPl6SXcloybln63Ig/NuBm2CEYxymrdhobJN8R
 Dr6qDRDUrFJ5KdYt6qJxEgh8w7AxnmqmGcWCw9TlRmXKy8Zjp8Stw/MBi
 wsT1bQOUvAt+7zRAzPdL8QLRNCp228FvSBdSTdyJLQ2yn5H52JNkSmJFT
 txAU07SFIWMi1jD6vQ1VEyLCaQTcERh2dY1ZHy8s1wePGRPKY6OBT6F1s
 L/nFhYFmu0xFO/kIm0xleF8mn67mNELWXK9X8AKXKGR0ItEItaO7kIb0q
 i1uw2R5OyZ/VL+hUD9Gdp3+ugv98hPOI0LKtURF2Rjbubf3Cfu74pGr+m g==;
X-CSE-ConnectionGUID: lRbuVNatRMCpCemHLD0H1g==
X-CSE-MsgGUID: 6nBsqcbnS8C8GAU2T1ONNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="9927480"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; 
   d="scan'208";a="9927480"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:43:28 -0700
X-CSE-ConnectionGUID: +wEEKjThQSywisNj+pKiTQ==
X-CSE-MsgGUID: pCx3lOcOR4ayeIzMyN71bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26092813"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 05:43:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 05:43:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 05:43:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 05:43:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzQoeVckmLHE/uvEbmTgyeRNJGpj84ETzhwTB8qivsYfL4XPOz/1+7ch7n7VZqq1ZNLlwLFdkpybkv9iNDdxDjp8mArACTbWyI9KBBXwgoo8peb1tqNZdoGZj0AusdBVa5Ry/IyOpecUrtKgh+I8F6nY4fzYRXcxGO6PRGPKIz39siVV3R0UwalOemjPz8FYKQXsPPiqM8y1Ka94EMU4IAC6OCGCPOAXkdePIeDXXEHz5CBqsdCdkxTr7x2kNvVIcggAgfGvKSGKc6BcGnbSn2bfnXPmWKCx8jfwmaSCi8hV/C5q8CBQgtBQ/8Mk1VKsUcQdcp5Zb7YWXFMPQChSzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XDfXf8VfzPlSo3/CIy1gXzzfw34EN+1ayG1o7c7Ax4Q=;
 b=TTLJhxEVgvrUSUUqg0Yd6LSnIuprsHfp63PwqdPKWUEWx/TRt6swrz3cCDimwQtIqVAHLQCWctQAblEU+1aBnjvU76DcSUihHsDMgopRejKgvis5ZXu/xPX4NO+R2yAbgZTwG82dx5RsteV3eURA5nTbUlRMGgrcRjqlGExCynHYg7581Bkveelo6ow+wNwdzD/J9oPECUZ8xcD9c2qZQGVH+MTbdU07fffbyDDglxGo22l4/rqiB0GwDM3RiNnrzaYVr9h88z4o2I9Awr0Lom59iWGISz71/ttvZ9rpDLO/X6amwCrZzdrfxfUnf4p9+3pkzdc5/GldGgE334SPdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6144.namprd11.prod.outlook.com (2603:10b6:8:af::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 12:43:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 12:43:23 +0000
Date: Mon, 29 Apr 2024 08:43:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 000/123] drm/i915: remove implicit dev_priv local
 variable use
Message-ID: <Zi-V6EPHHnkG399m@intel.com>
References: <cover.1714136165.git.jani.nikula@intel.com>
 <87ttjo46ee.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87ttjo46ee.fsf@intel.com>
X-ClientProxiedBy: BYAPR21CA0016.namprd21.prod.outlook.com
 (2603:10b6:a03:114::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6144:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d4c6efb-1462-4db2-7b6c-08dc6849f535
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jTCoAHHk7uiddBrRdtTd0PjD+V1jsWAbk4mytAQXtpRy4hRJZhLTzRU5NgwX?=
 =?us-ascii?Q?q4+Ex5/Ut6pvsczQgi7iTIdR5GoE9nVTk72di9mEgBPb1Bs7Kfa8HixRGZDc?=
 =?us-ascii?Q?XQv6uUJtp8saS7t/BjUa5Wh8w/6P6k1WZm5b2HPI0EymNBGzR7acxJVFO6Mv?=
 =?us-ascii?Q?i4q1AVXYddIs0bB9KuiW4Piu7O0xgYtft0U5LFxIrLP43KsUWSBAHY04rTOI?=
 =?us-ascii?Q?vWkDDnMBjNMplqXS17Hq9mNrTOyWrO7XC02azattPlv5tVVIzAK3/4WtegKB?=
 =?us-ascii?Q?7MNKo2d7QvrR0shQfG13EhVncd1MG9KWLH3JCjqgtVijJXlzEYfoNuO8q2Tm?=
 =?us-ascii?Q?MNxfiWemc0tOcFgjV1RkiV5XA4Ad0Ke0qt7yWJ2CIoDn6mWCCvoz3NoLfDhr?=
 =?us-ascii?Q?RhD1ABX52Dwyv9OJnlhm76zF3USoSxvpx1iAdhGNrvk45F6z75aP8SvYK41D?=
 =?us-ascii?Q?oqQ08B+h2JSIGDVO+w7QnLiHP1qTDgUwX0W3XjSZQM3fqJptNdqKJpBXwNAR?=
 =?us-ascii?Q?MeN4w+uarqoTt1W6ojGvjqwNpYRqt1J114M75raS77qjLp5djwH8n7U+OvtH?=
 =?us-ascii?Q?81oDpunpeMqJNPe7OACskcLoUYVRIeBAkCzHUPJKgX3eua4YS8igLt2y30OA?=
 =?us-ascii?Q?8QhvsCiRnC2Ma1oAV5U6vE6G7W8IOmm6XW4B/tsMxqCcK9em9yIxUJFY8Prt?=
 =?us-ascii?Q?SsEOb5wroOgYiS5OEnhWVL/eGoUaZ2AfnRTSpKDfGZmqB6AdKVYALbTPHmU9?=
 =?us-ascii?Q?0GM5KlKjqvmH70Xkw/FH31CKYUcVaGVdyUF8uiu06mQb0jlJUWl6Gz783bLN?=
 =?us-ascii?Q?jL5npziUvGOSe5u+FDBfAgNl1a/ncAZ3wLiEEJquakTDWtH8UDrlSj5XX10W?=
 =?us-ascii?Q?ohTe334NkaERZcWWM9KRh4hVCvaegGejDa54an5p268emmH+mDvKA8Fg0NTC?=
 =?us-ascii?Q?5ql9XYB41VR1rI3600qxon7RhzwcbbouE/ZLEkZaoPMwaluA5M/SzXl2Utsn?=
 =?us-ascii?Q?DgVQ2ET/LCwQHXW4hDXamE/KL1MT6qALgrzlAv4xdlYWFOYsEICwvq0+66jq?=
 =?us-ascii?Q?hAcHFCZeoPimVxpnbTnn5GD1duLZHrzyoC5AiF7MwkbINs0K50OjYRNqABuJ?=
 =?us-ascii?Q?IyHF8WkN35TEGUfoLw6aJ3MqIYqPuRB29BkCwcS8lKrWg5MMhkIosHiFkBwe?=
 =?us-ascii?Q?t110iffLJUqTW0TjRTdipojSYhlsOzu4ZwilIgzfJoKImaTiN+crA8q+w7k?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l1Hl/Hr84aaaRWzIwlS1GCas29XWjqSLFMOHHAfjUrWogflMwWrNFr2AtXMq?=
 =?us-ascii?Q?0n0qyBYzjqL3THJ2QuQwX7qxzhs4I5mjrXxkUbWAnYlPg+zMZQ2pE35UalOA?=
 =?us-ascii?Q?BkTddGWGCcIVjr3DpXBsvX9owVyQPLHywZQ0sX/fnU1SUPZcAVb/w7/0Lipc?=
 =?us-ascii?Q?embH2nBnKARzftsDFj3w8oureboolZFzEYzpqh7lzpBg/HVHtgtRu/qyy2oA?=
 =?us-ascii?Q?hOlxbxUffa1Bty8B+FsIJXlZob9HdQsiCMxFEyi6q5ERiHqIaPhxEtVVTPMD?=
 =?us-ascii?Q?M4zps5rxPKEtB6nSyrmg6OEdOIxHB+vjZTYUIh6zwFZTsb3KIZI1ni/46DEd?=
 =?us-ascii?Q?LcFNf40cAux5dl6h6dRdGCwP9CwMyxHy6kD8QQY+a84VUVwrLy/IYsaQhBrW?=
 =?us-ascii?Q?XtHeen4Zvoym61LltfP215j1gL1djpaBHoqFJfj0grdTLNh8tMmFSfgBKQgf?=
 =?us-ascii?Q?fUKyn++j4vERVF9bpwjb99Pjh/aFQ6dueLuDDUJOsyRNMFQiH+HXffjbYZQw?=
 =?us-ascii?Q?tNyGqrehlVpIMZhxBtAWge33JBhgbr0qpxZiXa3Gn03L3k+JuRiEOrPLIpz6?=
 =?us-ascii?Q?cZi6frLsqvgcpilOsbWOQMruYmctIhRefnjEx8luFVjrLogRDzfZKiTp8h9/?=
 =?us-ascii?Q?9ifeRRpVRqvOR5os33vTi/xvSjkjCh1jjlyof0frFNIuT0hwiesKfQa7hzXg?=
 =?us-ascii?Q?dOOHjZ2B+qz7nMV3Xe3M/fsPugrfneSWBDwFi5uWmsEyVYS+0CYsTUj6hrqF?=
 =?us-ascii?Q?TTZbfyb6TUnIptIt+WP4ojrxEbANRBIfW06vHMo7nQdq1r/mmcvCu1V2Oka6?=
 =?us-ascii?Q?fv9ySQz//LmxO0/KcsXp0AU0c3G9PEYSllZruPyvr5Lr+awspTBewGf2N/h4?=
 =?us-ascii?Q?1FcC0fQtZupQlzqNzeyfYkrmCykEs6CrmrMNiNf7irg7h4RuWCk/AHjB6SMu?=
 =?us-ascii?Q?IrnQHx20yg2DFfeVNR+euzBo2/umObG5jVNfh2ROug4YklaptZUaBIkuFmwg?=
 =?us-ascii?Q?8/0tJneCUhPDuw3l2GUk2t5b+027AbAuai9sWZJij/7JzOq2zhziLwV3urER?=
 =?us-ascii?Q?YtkrHSsT12eat/RZ4TJgPlyhPj/yTg0ixEB1ZRTKTjvBju1ZZm+dw+7hMF+k?=
 =?us-ascii?Q?o63sLACKpCOUOKmMiCjyfmcoXNtYtHH1cFQPScLihcU++AP5ZZiD2N+C8QFR?=
 =?us-ascii?Q?ZYwUzyi9035oZawIfXvmp+irJK+SaVO5nPnrDIsFTeiENZhzDxw4os1YbVML?=
 =?us-ascii?Q?oKpAa6Euzf+Mi42jV1EUd4fltwltVl4j3yGGr5bnbDAmFl20H9zIQAT51xZy?=
 =?us-ascii?Q?m2cADWBT8EdXLR+E2Nfir3Zzfnvh2u2Do2DnklvI4DWVQbtviE+zsX0J38Oz?=
 =?us-ascii?Q?L0DKuxPeJrLJupHItoPFPZHfrC+rJaB8Xyh/10zA4MIcLPgnb3ltAyIHWbEe?=
 =?us-ascii?Q?PHLT3hdqY9pswCebmVbI8ES9lcaZ1wNclrux18/8QKLoBKNwuUvt/UH3frT2?=
 =?us-ascii?Q?hNN53KhO3pYFQVyUgHAOi83U3f0vgOGrD/Ig4Rzmy3QULC7mmhQK9TTzymmg?=
 =?us-ascii?Q?izqWTnr7rsmvjajKtMNGB2p+oK4Krb3dE0RHtEVr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d4c6efb-1462-4db2-7b6c-08dc6849f535
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 12:43:23.8503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BAi8DKsdSWcUzVrkwljPvXUH3eC56fb7CDZYJlO8zMtjj0erO9HmA76H3Qnc/Jxq217VqFXrCGyAU3CZthaSmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6144
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

On Fri, Apr 26, 2024 at 04:09:45PM +0300, Jani Nikula wrote:
> On Fri, 26 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> > Hey all, it's time to stop using the implicit dev_priv local variable in
> > register macros. Yes, this is huge. It's also (almost) completely
> > scripted.
> 
> Okay, I was first going to send the entire series, but chickened out and
> hit ^C when git send-email was going though the patches. You get the
> idea with what's here. It's just more of the same. Plus I pushed the lot
> to [1].

now it makes sense. I was wondering why I was only seeing a few patches
when the series was telling over a hundred.

> 
> I think we'll need to do this. 

Agreed. Let's do this.

> The question is how to handle this
> churn. Do we want this many patches? If not, how much to squash?

From a glance on these initial patches, it sounds really organized in
individual patches and easy to review.
Perhaps if we take this path we might just split the series in blocks
and merge these initial 17, and we continue over the next weeks.

However, if this is automated like you mentioned in the cover letter,
perhaps we can do one patch per directory? (display vs gvt vs gem? vs drm/i915/{.c,.h})

> 
> 
> BR,
> Jani.
> 
> 
> [1] https://gitlab.freedesktop.org/jani/linux/-/commits/regs-mass-dev-priv-removal/?ref_type=heads
> 
> 
> -- 
> Jani Nikula, Intel
