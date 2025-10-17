Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 469A2BEC5CB
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Oct 2025 04:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9333110E350;
	Sat, 18 Oct 2025 02:45:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a08x7zfr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4AD10E2E9;
 Sat, 18 Oct 2025 02:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760755543; x=1792291543;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=q4khKwEQY81N6fr3mFdWfwDnx1jeabfseyTSGFnxFpc=;
 b=a08x7zfr/hjrFBLl0QSweKk8F4NwGZxGIlPaR9mWON37iLx52kHt68Fl
 qzsuwZ6TEZaOxSyA0cRqpf1gcFHPRyM54JyFDqsonM+tMIBzRQ1GLsNTC
 oWM1O8txSnErnhAjOVFfh94fhgklKD3xKidwkdbMIfDnz2LDgPT1bNNSL
 O7Wsq+J0Wkea9/Z4sxx7C5TxvpxtVFfSO2HOjM86OIpLGa7P24NzeKi6r
 et9jGEtxW2DPWPPDzbj7X5X8eFkqLDfAytBPYYuKMxHvEIO9Rk89Pma9S
 ZkK9dJF4JrA7tAd/Yhvn7MOLMhVGwr31h9UtFNfBp4YiWkqMfltONBUPL w==;
X-CSE-ConnectionGUID: gxNhM5KDS0apLiVkpdiJzg==
X-CSE-MsgGUID: Yix7+810T0KqEBr/uBefqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="66801882"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="66801882"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:45:42 -0700
X-CSE-ConnectionGUID: XA1v3DxXTRiGAhqWBx1sBg==
X-CSE-MsgGUID: lYeE1lkYQtqgQ9aUU30FtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,238,1754982000"; d="scan'208";a="187287579"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 19:45:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 11:58:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 11:58:41 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 11:58:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xTH381bAnVjugGIs5UHi9omhVcahDze90IOXH7tA4kpUpb5LWxiEnv4TkKonUO4+95E9hsykkGZbwjhhd5gKS6QqjX5nChN02KYEuakVhZ5ESEmqk6Rsq5Y/wrTUXURovgRv0TVS4Kor4Zm8Y9ytuNXqyzj4Ze4PRnnAtPZPAJklzswC3dWoEPcq6Qxpqz9nD6TfSKZaeEcRU59ckANQFWWEzuIEFb4SpdthBHPhpmPrG6CBIj2ok/p54yU+pEGreFG6Vz/Gpqe6DoIYgZuWxGEwh7szHic9XaqJ8Wj/7C9+dTz/4Qa2nME3XRc1Z78KZ6nLkQEMB9NPx4LSanVhtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0BSatyWYyPlKeAKK+HuTmTNMfblJ9ZdVNhIHWEv31E4=;
 b=B1hhUnyGCocRSAbKAjhXEvwu8JOBnCUgSBnueyGe9nNhGJNh1Wzan/f4EPODDPeRVn2aUNuXlvt9hFH6/Sb3V5e5SQzV3d12fcv4CwTHIl3T/KZzOb+IptRsel7ZGjL2688rtZbTr6gmsVn6SoR4xH69tvoOwonaCBM/OPMow478kT14bfHgTXe5Y/c3Qan+PYkB6F6HmyfwI8Qn7ckyDCyAY5BDusD3kxfdLFNvWQd+SWK5DyTjMigPGwjl0p1EEyWMulRBhfWzxYqJSon0t1SRplwoYFyfEPrKp3aH2MWen/WW4nxjtulJnIvkj+OIHbM2i/AUpG8tHtSf9mnNCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA2PR11MB4955.namprd11.prod.outlook.com (2603:10b6:806:fa::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 18:58:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 18:58:37 +0000
Date: Fri, 17 Oct 2025 21:58:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>,
 <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 drm/i915/dp: Fix panel replay in DSC mode (rev2)
Message-ID: <aPKR2DrXbvynhwom@ideak-desk>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <176072382588.28223.12011327936549626423@97596180aaec>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176072382588.28223.12011327936549626423@97596180aaec>
X-ClientProxiedBy: DU2PR04CA0211.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA2PR11MB4955:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dcf94fb-be43-4b6b-3ff7-08de0daf2dbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3x8dGeRqKt0yvhCEzZPZZWT3NE6fUSz4bbJvoXLo1k6hOfMa+Z/tR6jTQ5Fc?=
 =?us-ascii?Q?JrcsBIhHNItCSJv1+h91qFmskQcgdFhotMDcVzFaNFVETSQLyw09/B8ZBF6k?=
 =?us-ascii?Q?t11d3QYxR4wfY7FhVZk7RbY4Ng26ySc+nJF65nRT9Y7NPeVQFhsnBRQJx45H?=
 =?us-ascii?Q?xVKDT1v39/Ykjse7hJt2NR7N4iSh3LbbJHi+ZJfIisnpyelrvd1qee/vlnxe?=
 =?us-ascii?Q?jXrgjssW811YRTrOCp7VR/sY9V31snyzYbd75/ufZbSVNVRVAKt9p8UvHJ5m?=
 =?us-ascii?Q?/0yYZcxqM3cvkIayzg/I1vsRywvKDi2f3CsJzI36x8kcCMV28iqEL8avjpJk?=
 =?us-ascii?Q?LjmTnFT99avUF4Sx/tIqWAdf+huVP0L5iyy1ISO72OB2OqI8GC7rlt8RhexO?=
 =?us-ascii?Q?BrrerPQF08l/cqf4zTafhTKDiZnC8XhE8WuWPJLbtJYGLJjFn0B8xW6UZAa0?=
 =?us-ascii?Q?2+R2hX/O/zqeDNSRUS0ka0RUzcs0qBvWnCEZjHXkvTw24zYVw08p0+gngTXT?=
 =?us-ascii?Q?MryTm7M5NdDErSlOsxqwmmdkQjecs5SJcqL4VeHJVVGXL/keLrjHXZaIXWKy?=
 =?us-ascii?Q?Bs+q2JYNWYeuQgMy/YN+vdEGi5xv6rbv6jSNKBbUgwF1VF4i+vO1UmXbVzdF?=
 =?us-ascii?Q?ym8KhuCtveDxZNNOycBXfQKD2IFIW+Ym6GII9FYbhyIulgvPX6feIXtXK2PQ?=
 =?us-ascii?Q?VY9YWIPGNNvu7U+HzpJeQYHw910j2hmpoAyh0v7/NeYK/nfNfp6ukm/nGixq?=
 =?us-ascii?Q?TPSLOkWXmR7DEcIpLN7bjz8Vk0/nV1uoigrMUjFC5Q2iHpp3MdUdKhYEc6gC?=
 =?us-ascii?Q?FB+S7AaAYzRbBEaBmCa9ajOjaTMrtZq2T9pDIdTxl1hVGon3YggjvrNYB9r/?=
 =?us-ascii?Q?S6MXaua6cT5TRix1nLYzio3PkdaFZIH+ImJbeGB5y/MDL1Fea7UjFo1N7Pbu?=
 =?us-ascii?Q?CqSUWjOulH49qGBu7tGSKSIRnGuiXrBhwsmXLHypWrUEJ89W7ec+zWFLlEiu?=
 =?us-ascii?Q?KtdEqBPTEYLOmTI52LusbkLY1FYCTcYXI3llANkmXyFCXrwLHTL11Gnd9c08?=
 =?us-ascii?Q?RT+mFw5FW7C91Y95tAZ97+rFWSYpy9z2eyrzaooITIWZd4xEX1t/DN9mIOpl?=
 =?us-ascii?Q?p4Znhh2AP5ONnM0uRdJiPTPbzoUlbN6lMvaOlqy4v2HuzNTqOAqr6dfuINps?=
 =?us-ascii?Q?eXI/VFJXwi+am8eC8B30R3MM4KFqN9maPan0l0RgKmzHhQO9qTrKJ1mLKf4B?=
 =?us-ascii?Q?JfCeP6tXiCPUz/qA+AKv4zjRzO77kK5lDtI38P2mGm/I1vX9O9bg3dStVqSY?=
 =?us-ascii?Q?/bI/pHyUJ4kVm+I7cK1yNfMdCxjaa4+oW5sycQhttx7OFoDG1+FQYbTDk3eN?=
 =?us-ascii?Q?5JtpTsBoJCsBL6s+YLPJRmOo534cPevdlexstgkyKQ8ReFrROA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?21E4KCxv6fJBlOPEEj9CTd3nvrZ5C/zPkNiO8ZQxPHbDGYRZNyHMDs9+GW5+?=
 =?us-ascii?Q?1iR26+FNsD+iLDWRckIaGfayZQQUUIKBXUk6SqAgZ+LBLdT1pIbsK16Slelx?=
 =?us-ascii?Q?P2hrGsAPXd8wUY56oIDpc9FkvL3plOhtNMp2M2ZTSvH7HjZLUaSaOHbgSxcE?=
 =?us-ascii?Q?np9U7pOnLbr9cDPV00L0SlmtEwRhYf/i6bvv3f1kyZ7VWzGEO6u7ZW7UL9n+?=
 =?us-ascii?Q?5lor//Dd7BAhNraZqYQgeY6JIba/9jBJQSHMOqolMxbxlGOdXpfWnzfruxWD?=
 =?us-ascii?Q?X/ZIi4MpUNIjna/wbTN7i2csqiEsOV4YmTbhzqJzcDqEXte10SWKNP79df9Q?=
 =?us-ascii?Q?+YJofld+VuZcBpzBfSVnGA9LSs2fPjsM2wbApNz+RCViZsYiSPz1shvNgYPB?=
 =?us-ascii?Q?qmXFdOCzVm0SH8XdKg2orFXI6SKMPHjkQ8OnfRTT/KQa+GEabsAZ+QbghV82?=
 =?us-ascii?Q?j+L14oXyvj2RkJ+gz3iC3YtXjJDxey/mlVRwHWn4KEAZEUNKXUyYgAVIV4SK?=
 =?us-ascii?Q?XU80gfWoih0lpqEGb13mcFq1aUGhGXqGXnZQUdc3N8LfAXLDJ+1w0AEhzGTq?=
 =?us-ascii?Q?WldQGNLRVB7w3BkjPWTzfXg9I9rZ11FXuxzK/ttbDKXgORndZYXSGFYTvDTW?=
 =?us-ascii?Q?l9n+6oswyTvMzgOyqd4mQRQ79RRdI0QVVgzgZCN750E8iA6i2Lk5eYREEwHo?=
 =?us-ascii?Q?stX6NXbSHk4FIHUN2DV2VomLyCLjbDkUXFjdkFn/ByMh6wsoJmlogPZogjhP?=
 =?us-ascii?Q?zaj5R944Verq1fexjEhXmH9IVEqqE2mXzfEwbQfkD/BIkpg2tbEztlrLG6T6?=
 =?us-ascii?Q?KQ1ELpRhzxCZqJIvckX5cYsHC3ZG6UNWCbiQIO6nXiJmt1aI4bBnETNelhLl?=
 =?us-ascii?Q?pV2KSZFyw5mJPBOlnMO1NpH/D4mLBwXfVJjAbuP0d4KtEcNZTXrLsPqoTq9I?=
 =?us-ascii?Q?jQoIPNRmTW+2dfb/n+OT6yXyD8KQIHRoYlDMVIVISCb8C84Eyx0R8nEhIg9u?=
 =?us-ascii?Q?k0AJVXDQ9vlsz3cz2ZoYZUj1HRtBP452ps+/Jj+ZxQtw+V3/Ct8OIjtiIaDc?=
 =?us-ascii?Q?jcaP0+vOfwM/EKyQs3VaIGUAI0JzmECsyV/67jyeK1YJnaSt4EEbbFE02bqu?=
 =?us-ascii?Q?ycaUI13kMrYmEQUxANhpcnI4xUzNgXqNREG0MOgWUADL/1S9UPieBqZPatmo?=
 =?us-ascii?Q?9wf8Xc7pw3QHamc3Wxuhdks6CViUHXTBO7JkV0D6Y79DJF/o+ycVoIj728VN?=
 =?us-ascii?Q?QJutNHuOvu8zqltjOhepEXONN8BVML7wMtCpe5LaNRG6IxTDOrTPfCnfZR1J?=
 =?us-ascii?Q?+1x2YuDHx+6aRvkmoejfPXVtTbF2tjTZG8xiVTHYiKnigcIz3u1Xpihyupwq?=
 =?us-ascii?Q?dQJiz+IE6TDtnmzCH/NQjfwPSg1PCRraIyEJHGKTYJ3M8tSP+uQWoOxJ3j4r?=
 =?us-ascii?Q?OyV7kS4KDlmk+BRMlYrlLgr0IF92qFhBprfWj8gmhuUo9YvoCS0HhbEtS1TQ?=
 =?us-ascii?Q?mGBnPZZr0M02gnYVthdC07Oip98et2TTjaj1ogpWYVK7p6lFvxVJpBaM5OxF?=
 =?us-ascii?Q?IMB4XDNfFGZNXCVVM5SSxTISSCRMXnivL7oa8xpH4fgySRbN1UWWBwYAZqjf?=
 =?us-ascii?Q?b8YKUsuftvDtPiOT2KhpopipL71hgPSOoGahhdoePLiJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dcf94fb-be43-4b6b-3ff7-08de0daf2dbc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 18:58:37.6321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oZ70xnx2zdWRP/9Gc5cXzaP2kAT/XUQC97NZQ3tIFQlCtIs60Wsd/p+Id3vYr3Gy/x5QpaJ1hc8VwNedR1/2Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4955
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 17, 2025 at 05:57:05PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix panel replay in DSC mode (rev2)
> URL   : https://patchwork.freedesktop.org/series/155587/
> State : failure

Patchset is pushed, thanks Jouni for the quick review.

The failure is unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17368_full -> Patchwork_155587v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_155587v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155587v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_155587v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-glk10:        NOTRUN -> [FAIL][1] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk10/igt@gem_exec_suspend@basic-s4-devices.html

There isn't any display connected to this glk, so the display specific
changes are unrelated to the failure.

It looks like random tasks getting stuck during S4 suspend/resume,
happened already a few times in a similar way on the same host, in the
same test:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155741v2/shard-glk10/igt@gem_exec_suspend@basic-s4-devices.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155329v2/shard-glk10/igt@gem_exec_suspend@basic-s4-devices.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156005v1/shard-glk10/igt@gem_exec_suspend@basic-s4-devices.html

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17368_full and Patchwork_155587v2_full:
> 
> ### New IGT tests (12) ###
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.20] s
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-b-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.19] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-a-vga-1-linear-to-linear:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-a-vga-1-linear-to-x:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-a-vga-1-x-to-linear:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-a-vga-1-x-to-x:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.30] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-b-vga-1-linear-to-linear:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-b-vga-1-linear-to-x:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-b-vga-1-x-to-linear:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@kms_flip_tiling@flip-change-tiling@pipe-b-vga-1-x-to-x:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.30] s
> 
>   * igt@kms_plane_lowres@tiling-x@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.10] s
> 
>   * igt@kms_plane_lowres@tiling-x@pipe-b-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_155587v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2-9:        NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-tglu:         NOTRUN -> [SKIP][4] ([i915#11078])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@device_reset@unbind-cold-reset-rebind.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][5] ([i915#11078])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][6] ([i915#15095])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk6/igt@drm_buddy@drm_buddy.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#7697]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#3936])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8555])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2-9:        NOTRUN -> [SKIP][10] ([i915#8555])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_ctx_sseu@invalid-sseu.html
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#280])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#4812])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_exec_balancer@bonded-semaphore.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#4525])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu-1:       NOTRUN -> [SKIP][15] ([i915#4525])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-glk:          NOTRUN -> [SKIP][16] ([i915#6334]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][17] ([i915#3539] / [i915#4852])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#3281]) +4 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3281]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-noreloc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][22] ([i915#3281]) +3 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_exec_reloc@basic-write-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#7276])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4537] / [i915#4812])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-dg2:          NOTRUN -> [FAIL][26] ([i915#15136]) +2 other tests fail
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4860])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][28] ([i915#4860])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][29] ([i915#4613]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-tglu-1:       NOTRUN -> [SKIP][30] ([i915#4613]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_madvise@dontneed-before-exec:
>     - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#3282])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_madvise@dontneed-before-exec.html
> 
>   * igt@gem_mmap@bad-object:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#4083])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_mmap@bad-object.html
> 
>   * igt@gem_mmap_gtt@bad-object:
>     - shard-dg2-9:        NOTRUN -> [SKIP][33] ([i915#4077]) +2 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_mmap_gtt@bad-object.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4077]) +5 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4077]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@read-write-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4083]) +2 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_mmap_wc@read-write-distinct.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3282]) +3 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3282])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][40] ([i915#14702] / [i915#2658])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk9/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-dg2-9:        NOTRUN -> [SKIP][41] ([i915#4270])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#13398])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4270])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-rkl:          [PASS][44] -> [TIMEOUT][45] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#5190] / [i915#8428])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4079]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#3297])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#3297] / [i915#3323])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3282] / [i915#3297])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#3297] / [i915#4880])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3297] / [i915#4880])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#3297])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#3297]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3297]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#2856])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@gen9_exec_parse@basic-rejected.html
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#2527])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#2527])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@gen9_exec_parse@cmd-crossing-page.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#2856]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_drm_fdinfo@busy-check-all@vecs0:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#11527]) +7 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@i915_drm_fdinfo@busy-check-all@vecs0.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#14118])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@i915_drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#8399])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#8399])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         NOTRUN -> [WARN][67] ([i915#13790] / [i915#2681]) +1 other test warn
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#11681] / [i915#6621])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [PASS][69] -> [INCOMPLETE][70] ([i915#13729] / [i915#13821])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-snb6/igt@i915_pm_rps@reset.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-snb5/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#11681])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#11681])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][73] ([i915#4817])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk5/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4212]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-rkl:          [PASS][75] -> [SKIP][76] ([i915#14544]) +38 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_async_flips@crc.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_async_flips@crc.html
> 
>   * igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][77] ([i915#12964]) +6 other tests dmesg-warn
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [PASS][78] -> [FAIL][79] ([i915#5956])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][80] ([i915#1769])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#1769] / [i915#3555])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][82] ([i915#1769] / [i915#3555])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][83] ([i915#5956])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1:
>     - shard-mtlp:         [PASS][84] -> [FAIL][85] ([i915#5956]) +1 other test fail
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-mtlp-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@pipe-a-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#5286])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#5286]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#5286]) +3 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4538] / [i915#5286])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][90] ([i915#4538] / [i915#5190]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#3638]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-glk10:        NOTRUN -> [SKIP][93] +516 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk10/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#5190]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][95] +47 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4538])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#6095]) +122 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6095]) +49 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#6095]) +24 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#6095]) +55 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][101] +357 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#10307] / [i915#6095]) +109 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#14098] / [i915#6095]) +47 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#12805])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#6095]) +4 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#6095]) +20 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][107] ([i915#10307] / [i915#6095]) +19 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#13784])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][109] +7 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#11151] / [i915#7828]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][114] ([i915#11151] / [i915#7828]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#11151] / [i915#7828])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html
> 
>   * igt@kms_color@legacy-gamma-reset:
>     - shard-rkl:          [PASS][116] -> [SKIP][117] ([i915#12655] / [i915#14544]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_color@legacy-gamma-reset.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_color@legacy-gamma-reset.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#6944] / [i915#9424])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#7118] / [i915#9424])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][121] ([i915#13566]) +1 other test fail
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#13049])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_cursor_crc@cursor-random-512x170.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][123] ([i915#13049])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3555]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3555])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#13049]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][127] ([i915#13566]) +1 other test fail
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#13049]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#13046] / [i915#5354]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - shard-rkl:          [PASS][130] -> [SKIP][131] ([i915#11190] / [i915#14544]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][132] ([i915#13046] / [i915#5354])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#4103])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#13749])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#8812])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][136] ([i915#8812])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#3840])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#3555] / [i915#3840])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#3555] / [i915#3840]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#9934]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#9934])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop:
>     - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#9934])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#8381]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][144] ([i915#9934])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-panning-interruptible.html
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#3637] / [i915#9934]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][146] ([i915#12314] / [i915#12745] / [i915#4839])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][147] ([i915#12314] / [i915#4839])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#9934]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#14544] / [i915#3637]) +3 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
>     - shard-snb:          [PASS][152] -> [FAIL][153] ([i915#14600]) +1 other test fail
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#8381])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
>     - shard-rkl:          [PASS][155] -> [SKIP][156] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#2672] / [i915#3555]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][158] ([i915#2672] / [i915#3555])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#2587] / [i915#2672]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#2672] / [i915#3555])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#2587] / [i915#2672])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#2672] / [i915#3555]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#2672] / [i915#3555])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#2672]) +2 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#2672]) +2 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2672] / [i915#3555] / [i915#5190])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][169] ([i915#2672] / [i915#3555] / [i915#5190])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][170] ([i915#2672]) +1 other test skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8708]) +10 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [PASS][172] -> [SKIP][173] ([i915#14544] / [i915#1849] / [i915#5354]) +6 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][174] +11 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-snb:          [PASS][175] -> [SKIP][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#15102] / [i915#3458]) +3 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#15102]) +10 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#1825]) +4 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#8708]) +2 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#15102] / [i915#3458]) +7 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#15102] / [i915#3023])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#5439])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#15102] / [i915#3458]) +9 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#5354]) +18 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][186] +21 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#5354]) +6 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#8708]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#15102]) +14 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#12713])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#3555] / [i915#8228])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-rkl:          [PASS][192] -> [SKIP][193] ([i915#14544] / [i915#3555] / [i915#8826])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_invalid_mode@bad-hsync-end.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#13688])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg2-9:        NOTRUN -> [SKIP][195] ([i915#4816])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>     - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#1839])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - shard-glk10:        NOTRUN -> [SKIP][197] ([i915#11190]) +8 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk10/igt@kms_pipe_crc_basic@nonblocking-crc.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-rkl:          [PASS][198] -> [SKIP][199] ([i915#14544] / [i915#7294])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_plane_alpha_blend@alpha-basic.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#14259])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#6953])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#12247]) +4 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#12247])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>     - shard-rkl:          [PASS][204] -> [SKIP][205] ([i915#14544] / [i915#6953] / [i915#8152])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
>     - shard-rkl:          [PASS][206] -> [SKIP][207] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [PASS][208] -> [SKIP][209] ([i915#12247] / [i915#14544] / [i915#8152]) +6 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
>     - shard-rkl:          [PASS][210] -> [SKIP][211] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:
>     - shard-rkl:          [PASS][212] -> [SKIP][213] ([i915#12247] / [i915#14544]) +4 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#5354])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#3828])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html
>     - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#3828])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#9685])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][218] ([i915#8430])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-rkl:          [PASS][219] -> [SKIP][220] ([i915#14544] / [i915#1849]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_pm_rpm@cursor-dpms.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#15073]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][222] -> [DMESG-WARN][223] ([i915#4423])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-14/igt@kms_pm_rpm@i2c.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-15/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [PASS][224] -> [SKIP][225] ([i915#15073]) +2 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#15073]) +1 other test skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#15073])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][228] -> [SKIP][229] ([i915#15073])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-pc8-residency-stress:
>     - shard-rkl:          NOTRUN -> [SKIP][230] +3 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#6524] / [i915#6805])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_prime@d3hot.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [PASS][232] -> [SKIP][233] ([i915#11521] / [i915#14544])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_properties@plane-properties-legacy.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#11520])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#11520]) +5 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#11520]) +3 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][237] ([i915#11520]) +1 other test skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-glk10:        NOTRUN -> [SKIP][238] ([i915#11520]) +13 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][239] ([i915#11520]) +9 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#11520]) +5 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
>     - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#11520]) +1 other test skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu-1:       NOTRUN -> [SKIP][242] ([i915#9683])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#9732]) +10 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_psr@fbc-pr-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr-sprite-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][244] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-blt.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_psr@psr-cursor-mmap-cpu.html
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][247] ([i915#9732]) +14 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_psr@psr-cursor-plane-onoff.html
>     - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@kms_psr@psr-cursor-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#12755] / [i915#5190])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#5289])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][251] ([i915#12755])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#3555])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_scaling_modes@scaling-mode-full.html
> 
>   * igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_calc_pbn_div:
>     - shard-tglu:         NOTRUN -> [FAIL][253] ([i915#15119]) +3 other tests fail
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_calc_pbn_div.html
> 
>   * igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode:
>     - shard-glk:          NOTRUN -> [FAIL][254] ([i915#15119]) +3 other tests fail
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk3/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab:
>     - shard-dg2:          NOTRUN -> [FAIL][255] ([i915#15119]) +17 other tests fail
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_swab.html
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb1555:
>     - shard-glk10:        NOTRUN -> [FAIL][256] ([i915#15119]) +22 other tests fail
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk10/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_argb1555.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu-1:       NOTRUN -> [ABORT][257] ([i915#13179]) +1 other test abort
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_selftest@drm_framebuffer.html
>     - shard-glk10:        NOTRUN -> [ABORT][258] ([i915#13179]) +1 other test abort
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk10/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_check_src_coords:
>     - shard-tglu-1:       NOTRUN -> [FAIL][259] ([i915#15119]) +1 other test fail
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_check_src_coords.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#3555]) +1 other test skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#3555]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_setmode@invalid-clone-single-crtc.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][262] ([i915#3555])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#8623])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-9/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-glk:          NOTRUN -> [FAIL][264] ([i915#10959])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk3/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#8623])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#8623])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#9906])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-4/igt@kms_vrr@flip-basic-fastset.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][268] ([i915#9906])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#2437] / [i915#9412])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][270] ([i915#2437])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][271] ([i915#2437] / [i915#9412])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling:
>     - shard-dg2:          NOTRUN -> [FAIL][272] ([i915#10538]) +1 other test fail
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@perf@polling.html
> 
>   * igt@perf_pmu@busy-hang@rcs0:
>     - shard-rkl:          [PASS][273] -> [DMESG-WARN][274] ([i915#12964]) +12 other tests dmesg-warn
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@perf_pmu@busy-hang@rcs0.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@perf_pmu@busy-hang@rcs0.html
> 
>   * igt@prime_busy@hang:
>     - shard-rkl:          [PASS][275] -> [DMESG-WARN][276] ([i915#12917] / [i915#12964]) +2 other tests dmesg-warn
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-8/igt@prime_busy@hang.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@prime_busy@hang.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3291] / [i915#3708])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-3/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][278] ([i915#3708])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#9917])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-12/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][280] ([i915#12910]) +9 other tests fail
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][281] ([i915#13356]) -> [PASS][282]
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-7/igt@gem_ccs@suspend-resume.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][283] ([i915#12392] / [i915#13356]) -> [PASS][284]
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [FAIL][285] ([i915#9561]) -> [PASS][286] +1 other test pass
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [FAIL][287] ([i915#5784]) -> [PASS][288]
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-17/igt@gem_eio@unwedge-stress.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-13/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_store@cachelines:
>     - shard-rkl:          [DMESG-WARN][289] ([i915#12964]) -> [PASS][290] +18 other tests pass
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_exec_store@cachelines.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@gem_exec_store@cachelines.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2-9:        [INCOMPLETE][291] ([i915#13356]) -> [PASS][292] +1 other test pass
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-rkl:          [TIMEOUT][293] ([i915#12964]) -> [PASS][294]
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@gem_pxp@create-protected-buffer.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-rkl:          [TIMEOUT][295] ([i915#12917] / [i915#12964]) -> [PASS][296]
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-buf-execution.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-snb:          [DMESG-WARN][297] ([i915#14545]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-snb7/igt@i915_module_load@reload-no-display.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-snb1/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-rkl:          [DMESG-FAIL][299] ([i915#12942]) -> [PASS][300] +1 other test pass
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-4/igt@i915_selftest@live@gt_pm.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-dg1:          [DMESG-WARN][301] ([i915#4423]) -> [PASS][302] +2 other tests pass
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-12/igt@kms_async_flips@async-flip-suspend-resume.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-16/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][303] ([i915#14857]) -> [PASS][304] +1 other test pass
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][305] ([i915#5138]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_color@degamma:
>     - shard-rkl:          [SKIP][307] ([i915#12655] / [i915#14544]) -> [PASS][308] +1 other test pass
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_color@degamma.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_color@degamma.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-rkl:          [FAIL][309] ([i915#13566]) -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-64x21.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_flip@flip-vs-dpms-on-nop:
>     - shard-rkl:          [SKIP][311] ([i915#14544] / [i915#14553]) -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@plain-flip-interruptible:
>     - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#3637]) -> [PASS][314] +3 other tests pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_flip@plain-flip-interruptible.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_flip@plain-flip-interruptible.html
> 
>   * igt@kms_flip_tiling@flip-change-tiling:
>     - shard-rkl:          [SKIP][315] ([i915#14544] / [i915#3555]) -> [PASS][316] +1 other test pass
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_flip_tiling@flip-change-tiling.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_flip_tiling@flip-change-tiling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
>     - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][318] +4 other tests pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-snb:          [SKIP][319] -> [PASS][320] +1 other test pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-snb4/igt@kms_hdmi_inject@inject-audio.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-snb1/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_invalid_mode@int-max-clock:
>     - shard-rkl:          [SKIP][321] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html
> 
>   * igt@kms_lease@lease-invalid-plane:
>     - shard-rkl:          [SKIP][323] ([i915#14544]) -> [PASS][324] +38 other tests pass
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_lease@lease-invalid-plane.html
> 
>   * igt@kms_plane@planar-pixel-format-settings:
>     - shard-rkl:          [SKIP][325] ([i915#14544] / [i915#9581]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_plane@planar-pixel-format-settings.html
> 
>   * igt@kms_plane@plane-position-hole:
>     - shard-rkl:          [SKIP][327] ([i915#14544] / [i915#8825]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane@plane-position-hole.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_plane@plane-position-hole.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-rkl:          [SKIP][329] ([i915#14544] / [i915#7294]) -> [PASS][330] +1 other test pass
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
>     - shard-rkl:          [SKIP][331] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
>     - shard-rkl:          [SKIP][333] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][334] +4 other tests pass
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
>     - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#8152]) -> [PASS][336]
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][338]
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20@pipe-a:
>     - shard-rkl:          [SKIP][339] ([i915#12247] / [i915#14544]) -> [PASS][340] +3 other tests pass
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20@pipe-a.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20@pipe-a.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [SKIP][341] ([i915#15073]) -> [PASS][342]
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#15073]) -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [SKIP][345] ([i915#15073]) -> [PASS][346]
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][347] ([i915#12916]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * {igt@kms_pm_rpm@system-suspend-idle}:
>     - shard-dg2:          [INCOMPLETE][349] ([i915#14419]) -> [PASS][350]
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-4/igt@kms_pm_rpm@system-suspend-idle.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-rkl:          [ABORT][351] ([i915#15132]) -> [PASS][352]
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-3/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-rkl:          [FAIL][353] ([i915#14550]) -> [PASS][354]
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@perf@polling-small-buf.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@busy@rcs0:
>     - shard-mtlp:         [FAIL][355] ([i915#4349]) -> [PASS][356] +1 other test pass
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-mtlp-4/igt@perf_pmu@busy@rcs0.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-mtlp-5/igt@perf_pmu@busy@rcs0.html
> 
>   * igt@perf_pmu@most-busy-check-all:
>     - shard-rkl:          [FAIL][357] ([i915#4349]) -> [PASS][358] +1 other test pass
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@perf_pmu@most-busy-check-all.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@perf_pmu@most-busy-check-all.html
> 
>   * igt@perf_pmu@rc6@runtime-pm-gt0:
>     - shard-rkl:          [SKIP][359] ([i915#12964]) -> [PASS][360]
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@perf_pmu@rc6@runtime-pm-gt0.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@perf_pmu@rc6@runtime-pm-gt0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          [SKIP][361] ([i915#14544] / [i915#7697]) -> [SKIP][362] ([i915#7697])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          [SKIP][363] ([i915#9323]) -> [SKIP][364] ([i915#14544] / [i915#9323])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][365] ([i915#3555] / [i915#9323]) -> [SKIP][366] ([i915#14544] / [i915#3555] / [i915#9323])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][368] ([i915#3555] / [i915#9323])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-rkl:          [SKIP][369] ([i915#13008]) -> [SKIP][370] ([i915#13008] / [i915#14544])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#9323]) -> [SKIP][372] ([i915#9323])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_ccs@suspend-resume.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          [SKIP][373] ([i915#6335]) -> [SKIP][374] ([i915#14544] / [i915#6335])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          [SKIP][375] ([i915#8562]) -> [SKIP][376] ([i915#14544] / [i915#8562])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@gem_create@create-ext-set-pat.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          [SKIP][377] ([i915#4525]) -> [SKIP][378] ([i915#14544] / [i915#4525]) +1 other test skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@gem_exec_balancer@parallel-ordering.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-rkl:          [SKIP][379] ([i915#3281]) -> [SKIP][380] ([i915#14544] / [i915#3281]) +7 other tests skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu-active.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#3281]) -> [SKIP][382] ([i915#3281]) +2 other tests skip
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-rkl:          [INCOMPLETE][383] ([i915#13356]) -> [ABORT][384] ([i915#15131]) +1 other test abort
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-rkl:          [SKIP][385] ([i915#4613]) -> [SKIP][386] ([i915#14544] / [i915#4613]) +2 other tests skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-rkl:          [SKIP][387] ([i915#14544] / [i915#4613]) -> [SKIP][388] ([i915#4613]) +2 other tests skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_lmem_swapping@massive.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [TIMEOUT][389] ([i915#12917] / [i915#12964]) -> [SKIP][390] ([i915#13717])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          [SKIP][391] ([i915#14544] / [i915#4270]) -> [TIMEOUT][392] ([i915#12917] / [i915#12964])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-3.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-rkl:          [SKIP][393] ([i915#3282]) -> [SKIP][394] ([i915#14544] / [i915#3282]) +2 other tests skip
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@gem_readwrite@beyond-eob.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#3282]) -> [SKIP][396] ([i915#3282]) +2 other tests skip
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          [SKIP][397] ([i915#14544] / [i915#8411]) -> [SKIP][398] ([i915#8411])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#3282] / [i915#3297]) -> [SKIP][400] ([i915#3282] / [i915#3297])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-rkl:          [SKIP][401] ([i915#3297]) -> [SKIP][402] ([i915#14544] / [i915#3297]) +1 other test skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#3297]) -> [SKIP][404] ([i915#3297]) +2 other tests skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          [SKIP][405] ([i915#2527]) -> [SKIP][406] ([i915#14544] / [i915#2527]) +1 other test skip
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@gen9_exec_parse@batch-invalid-length.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#8399]) -> [SKIP][408] ([i915#8399])
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@rc6-accuracy:
>     - shard-dg2:          [FAIL][409] ([i915#12942]) -> [FAIL][410] ([i915#12964]) +1 other test fail
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-8/igt@i915_pm_rc6_residency@rc6-accuracy.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#7984]) -> [SKIP][412] ([i915#7984])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@i915_power@sanity.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][413] ([i915#5723]) -> [SKIP][414] ([i915#14544] / [i915#5723])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg1:          [SKIP][415] ([i915#4212]) -> [SKIP][416] ([i915#4212] / [i915#4423])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-13/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-19/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          [SKIP][417] ([i915#12454] / [i915#12712]) -> [SKIP][418] ([i915#12454] / [i915#12712] / [i915#14544])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          [SKIP][419] ([i915#9531]) -> [SKIP][420] ([i915#14544])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][421] ([i915#5286]) -> [SKIP][422] ([i915#14544]) +3 other tests skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][423] ([i915#14544]) -> [SKIP][424] ([i915#5286]) +2 other tests skip
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][425] ([i915#3638]) -> [SKIP][426] ([i915#14544]) +2 other tests skip
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][427] ([i915#14544]) -> [DMESG-WARN][428] ([i915#12964]) +1 other test dmesg-warn
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][429] ([i915#14544]) -> [SKIP][430] ([i915#3638]) +1 other test skip
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          [SKIP][431] ([i915#14544]) -> [SKIP][432] +11 other tests skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][433] ([i915#12313]) -> [SKIP][434] ([i915#14544])
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
>     - shard-rkl:          [SKIP][435] ([i915#14544]) -> [SKIP][436] ([i915#14098] / [i915#6095]) +4 other tests skip
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][437] ([i915#14544]) -> [SKIP][438] ([i915#12313]) +1 other test skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][439] ([i915#6095]) -> [SKIP][440] ([i915#14098] / [i915#6095]) +2 other tests skip
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-rkl:          [ABORT][441] ([i915#15142]) -> [ABORT][442] ([i915#15132] / [i915#15142])
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][443] ([i915#14098] / [i915#6095]) -> [SKIP][444] ([i915#14544]) +10 other tests skip
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          [SKIP][445] ([i915#14544] / [i915#3742]) -> [SKIP][446] ([i915#3742])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-rkl:          [SKIP][447] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][448] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-storm.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          [SKIP][449] ([i915#11151] / [i915#7828]) -> [SKIP][450] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          [SKIP][451] ([i915#14544]) -> [SKIP][452] ([i915#9424])
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_content_protection@lic-type-0.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          [SKIP][453] ([i915#7118] / [i915#9424]) -> [SKIP][454] ([i915#14544]) +1 other test skip
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_content_protection@type1.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-rkl:          [FAIL][455] ([i915#13566]) -> [SKIP][456] ([i915#14544])
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          [SKIP][457] ([i915#13049]) -> [SKIP][458] ([i915#14544]) +1 other test skip
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x64:
>     - shard-rkl:          [DMESG-WARN][459] ([i915#12964]) -> [SKIP][460] ([i915#14544]) +2 other tests skip
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x64.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-64x64.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          [SKIP][461] ([i915#14544]) -> [SKIP][462] ([i915#13049]) +3 other tests skip
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][463] -> [SKIP][464] ([i915#14544]) +13 other tests skip
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-rkl:          [SKIP][465] ([i915#14544]) -> [FAIL][466] ([i915#14001] / [i915#2346])
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          [SKIP][467] ([i915#14544]) -> [SKIP][468] ([i915#13691])
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-rkl:          [SKIP][469] ([i915#13748]) -> [SKIP][470] ([i915#14544])
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_dp_link_training@uhbr-sst.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          [SKIP][471] ([i915#13707]) -> [SKIP][472] ([i915#14544])
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          [SKIP][473] ([i915#3555] / [i915#3840]) -> [SKIP][474] ([i915#11190] / [i915#14544])
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_dsc@dsc-basic.html
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          [SKIP][475] ([i915#1839]) -> [SKIP][476] ([i915#14544] / [i915#1839])
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_feature_discovery@display-4x.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          [SKIP][477] ([i915#9337]) -> [SKIP][478] ([i915#14544] / [i915#9337])
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_feature_discovery@dp-mst.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          [SKIP][479] ([i915#658]) -> [SKIP][480] ([i915#14544] / [i915#658])
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_feature_discovery@psr1.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-rkl:          [SKIP][481] ([i915#9934]) -> [SKIP][482] ([i915#14544] / [i915#9934]) +4 other tests skip
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_flip@2x-blocking-wf_vblank.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-rkl:          [SKIP][483] ([i915#14544] / [i915#9934]) -> [SKIP][484] ([i915#9934]) +4 other tests skip
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_flip@2x-flip-vs-fences.html
>     - shard-dg1:          [SKIP][485] ([i915#8381]) -> [SKIP][486] ([i915#4423] / [i915#8381])
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-13/igt@kms_flip@2x-flip-vs-fences.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-19/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-glk:          [INCOMPLETE][487] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][488] ([i915#12745] / [i915#4839] / [i915#6113])
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-glk5/igt@kms_flip@2x-flip-vs-suspend.html
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk1/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][489] ([i915#12314] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][490] ([i915#4839] / [i915#6113])
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-glk1/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-rkl:          [SKIP][491] ([i915#14544] / [i915#3637]) -> [DMESG-WARN][492] ([i915#12964])
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][493] ([i915#2672] / [i915#3555]) -> [SKIP][494] ([i915#14544] / [i915#3555]) +1 other test skip
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-rkl:          [SKIP][495] ([i915#14544] / [i915#3555]) -> [SKIP][496] ([i915#2672] / [i915#3555]) +1 other test skip
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][497] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][498]
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-rkl:          [SKIP][499] ([i915#14544] / [i915#1849] / [i915#5354]) -> [ABORT][500] ([i915#15132])
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>     - shard-dg2:          [SKIP][501] ([i915#15102] / [i915#3458]) -> [SKIP][502] ([i915#10433] / [i915#15102] / [i915#3458])
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][503] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][504] ([i915#1825]) +19 other tests skip
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
>     - shard-dg1:          [SKIP][505] ([i915#8708]) -> [SKIP][506] ([i915#4423] / [i915#8708]) +1 other test skip
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][507] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][508] ([i915#15102] / [i915#3023]) +14 other tests skip
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - shard-dg2:          [SKIP][509] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][510] ([i915#15102] / [i915#3458]) +1 other test skip
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][511] ([i915#1825]) -> [SKIP][512] ([i915#14544] / [i915#1849] / [i915#5354]) +27 other tests skip
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - shard-rkl:          [SKIP][513] ([i915#15102] / [i915#3023]) -> [SKIP][514] ([i915#14544] / [i915#1849] / [i915#5354]) +14 other tests skip
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          [SKIP][515] ([i915#3555] / [i915#8228]) -> [SKIP][516] ([i915#14544])
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend.html
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          [SKIP][517] ([i915#12713]) -> [SKIP][518] ([i915#1187] / [i915#12713])
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-14/igt@kms_hdr@brightness-with-hdr.html
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
>     - shard-tglu:         [SKIP][519] ([i915#12713]) -> [SKIP][520] ([i915#1187] / [i915#12713])
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-tglu-3/igt@kms_hdr@brightness-with-hdr.html
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          [SKIP][521] ([i915#14544]) -> [SKIP][522] ([i915#3555] / [i915#8228])
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_hdr@static-toggle.html
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          [SKIP][523] ([i915#12388]) -> [SKIP][524] ([i915#12388] / [i915#14544])
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_joiner@basic-force-big-joiner.html
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          [SKIP][525] ([i915#12394]) -> [SKIP][526] ([i915#12394] / [i915#14544])
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_joiner@basic-force-ultra-joiner.html
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][527] ([i915#4816]) -> [SKIP][528] ([i915#1839] / [i915#4816])
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][529] ([i915#3555]) -> [SKIP][530] ([i915#14544]) +1 other test skip
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-3/igt@kms_plane_lowres@tiling-yf.html
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-rkl:          [SKIP][531] ([i915#14544] / [i915#8152]) -> [SKIP][532]
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][533] ([i915#12247]) -> [SKIP][534] ([i915#12247] / [i915#14544])
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][535] ([i915#12247]) -> [SKIP][536] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          [SKIP][537] ([i915#14544] / [i915#5354]) -> [SKIP][538] ([i915#5354])
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_pm_backlight@fade.html
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          [SKIP][539] ([i915#14544] / [i915#9685]) -> [SKIP][540] ([i915#9685])
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][541] ([i915#3361]) -> [SKIP][542] ([i915#4281])
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][543] ([i915#15073]) -> [SKIP][544] ([i915#14544] / [i915#15073])
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          [SKIP][545] ([i915#14544] / [i915#6524]) -> [SKIP][546] ([i915#6524])
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_prime@d3hot.html
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][547] ([i915#11520] / [i915#14544]) -> [SKIP][548] ([i915#11520]) +5 other tests skip
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][549] ([i915#11520]) -> [SKIP][550] ([i915#11520] / [i915#14544]) +5 other tests skip
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          [SKIP][551] ([i915#9683]) -> [SKIP][552] ([i915#14544] / [i915#9683])
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.html
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          [SKIP][553] ([i915#14544] / [i915#9683]) -> [SKIP][554] ([i915#9683])
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-render:
>     - shard-rkl:          [SKIP][555] ([i915#1072] / [i915#9732]) -> [SKIP][556] ([i915#1072] / [i915#14544] / [i915#9732]) +14 other tests skip
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-2/igt@kms_psr@fbc-pr-cursor-render.html
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-render.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          [SKIP][557] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][558] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg1:          [SKIP][559] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][560] ([i915#1072] / [i915#9732])
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-14/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-15/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][561] ([i915#5289]) -> [SKIP][562] ([i915#14544])
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][563] ([i915#14544]) -> [SKIP][564] ([i915#5289])
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-rkl:          [SKIP][565] ([i915#14544] / [i915#3555]) -> [SKIP][566] ([i915#3555])
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-rkl:          [SKIP][567] ([i915#14544]) -> [SKIP][568] ([i915#3555])
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_vrr@flip-suspend.html
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          [SKIP][569] ([i915#14544]) -> [SKIP][570] ([i915#11920])
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_vrr@lobf.html
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-2/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg1:          [SKIP][571] ([i915#4423] / [i915#9906]) -> [SKIP][572] ([i915#9906])
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-dg1-14/igt@kms_vrr@max-min.html
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-dg1-15/igt@kms_vrr@max-min.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          [SKIP][573] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][574] ([i915#2437] / [i915#9412])
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          [SKIP][575] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][576] ([i915#3291] / [i915#3708]) +1 other test skip
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17368/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/shard-rkl-4/igt@prime_vgem@basic-fence-read.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12942]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#14001]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14001
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14550
>   [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
>   [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
>   [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14857]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15095
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15119]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15119
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15136]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15136
>   [i915#15142]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15142
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17368 -> Patchwork_155587v2
> 
>   CI-20190529: 20190529
>   CI_DRM_17368: 69ca30df000b382e7657f300148be505083377f2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8585: 8585
>   Patchwork_155587v2: 69ca30df000b382e7657f300148be505083377f2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155587v2/index.html
