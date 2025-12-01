Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8DBC96A57
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 11:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C6E10E351;
	Mon,  1 Dec 2025 10:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emq18fPG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C648410E237;
 Mon,  1 Dec 2025 10:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764584922; x=1796120922;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Rxz00AVLiABbD1ueLvP7O92sQvJccV5Xjw78QCHsStw=;
 b=emq18fPGUxAW9Pps8thWu7xipdO+28L621NFAT8W2NjmcSSQ8B9dfGVv
 jT4FNEPwNWQYh2sGffUfYp2iBYNNSzNvRmrKL4qr73C7mSQduBEdgs1DW
 lOn7RD2uuhzle4ZPCEAVxeXLM/cNfH1hTMGESjISkH9nYugT9OnRUHAue
 m2lzLHv+CimzKfPscwjAMT2ABSUPGAlzhaC1YapqJTOPG4nFYqpUSwHFw
 rkLr9O7ro6MMFW1VM1zfUBnQP54oKGL7QVyxINs7//rP662eGfjbLPFFI
 RrEXNAOFtH7DSZQsr0AgBjbFilO0W6QTIZEOBylGRmSfTVttRBZoEYvvl g==;
X-CSE-ConnectionGUID: XdQbLzsqSeG9y2WOSOxqpw==
X-CSE-MsgGUID: PLuf2yTiTNu+5tzOjJqZpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66591003"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66591003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:28:42 -0800
X-CSE-ConnectionGUID: rvKGFVOzRb21vM99sE5iDw==
X-CSE-MsgGUID: /4OH4FIVTbauwzpduhLFlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="194234006"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:28:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:28:42 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 02:28:42 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.70)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:28:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B2ox0gRPpc2Nk1wiB7ChGz7fTxs8g9FqWpwLbfl9HMQCUotjpxkrI90KBAkKhKDPSoZ2UOXmvmz7izv2eKeWBSPKh4Rh6ugAQAjcRAp95aO4Q0GA96OHRxekzDzFE09xqYnqsHFC63sL+3pKZ0kfTJrogDqGn0SIV1p7FovKGXvY1ct5eyVhaonKxsqKdW4JIIxi6kIqZ8AC3mAu+vdDE3nHV06YHiQX8aMRZlgQ+CyN2ukRrC1ZU2sH5pI3Hh9gTChxyzQUTn7prS8fRcnk0zgYKNURfu5A/xJFl0PqTWoK+ikzTbEcHnQvtOGZvxJ2Gc+H0WiaCXN5ngMPIfBnSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3b3gDlRTYCLQ3BUvBfdiefeTs6UIGY868ssddRSCsQ=;
 b=Qkd5bT6YCG8ME3T6Ho7N6m92S/vZVgEFq5vSS4wfDRbUTUerB+X91W2R9uJPzCSAh3rC0a9umBX55l3/1qvMcQyJiohWQ9vrHrij8Oi4TOAVqqDCbvrMXBxfj8X3AwXEtc3RpdfYAUVHqgn6CuzJXCR8HYRNoZtNg3qi3rQyTga2IqmfnVdJVmPHxx0t1dLka9FZqvw4wwQPWxHWs65bru9smLhMEv+idIJ6H6NKE1titx5BN8b4Kpsd3gvWgWylfaXKSERwMW7K+LpClanJOyEYvc8OXENHcB5D06AeffGTiAYd1wFrHKcSmWgnFz/EUhBg6OwonPC1ysuZQkjgcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB6125.namprd11.prod.outlook.com (2603:10b6:8:9f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 10:28:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 10:28:40 +0000
Date: Mon, 1 Dec 2025 12:28:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/8] drm/i915/psr: Compute Panel Replay/Adaptive
 coexistence behavior
Message-ID: <aS1t1OLLTzmCWukt@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-4-jouni.hogander@intel.com>
X-ClientProxiedBy: LO2P123CA0098.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:139::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB6125:EE_
X-MS-Office365-Filtering-Correlation-Id: 55d7f490-54c9-4bb1-cc11-08de30c4657b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?CBTEzDMYd0N4SLIBjS3Xu+kOyaTL4bkbJtv9WqtskUeZo0A94fLsfaSxAF?=
 =?iso-8859-1?Q?xeH7tJi/D+LhLrstnSGlgS2aTEi9NBll9VPCw0pEJsmy78GR/c/y3uaQ/G?=
 =?iso-8859-1?Q?OlJp2yj0b+AB8/eSk5Jejmt2n91+Tw7SOF+bF7CcyvA57aEzLaqhOiLyOo?=
 =?iso-8859-1?Q?KTnn4nKb/fbLR2+Le7xhi0Kk2rqa/GI4M3sOcPM1cpswg4bqSY2J/OX6gF?=
 =?iso-8859-1?Q?7KFxxFvvdwawsNRwxbebI/VGX12RmEEDBuEuzizUOR75GzXkbWvvIv3PqL?=
 =?iso-8859-1?Q?0mQJF+ZrXQOBlYzS6GvhwglJAVvTVL47+XTNajH6Vfm8RuDUjcLxy+pAJq?=
 =?iso-8859-1?Q?LmsavRuTzry0TQ2dLFMKVdSW4bL+s8xd8V+GJIAwDNp1coylNkMKtnx1hY?=
 =?iso-8859-1?Q?JXJngAAqSVM6rWeYY6gYq20tLEn2suLNpfOa25dVcTDSfrLXmpw+2mXZ1q?=
 =?iso-8859-1?Q?sfv1zQh/Rax5hFjrKGYEE3nWzQcOY/V6Xyz5ZYKcAxX/oYCvOQHkP4w20O?=
 =?iso-8859-1?Q?LxE8gtz7/zqU0ahlOyBaVof0f9LP/XZtmi4Ke4wtAuOOGxQdgmrYvmzB7B?=
 =?iso-8859-1?Q?XBEhBQUW6BtiRSaNoi7hT9cCEOTBrVs9oQu2tgz6r4BbXipZItZTL72gyR?=
 =?iso-8859-1?Q?2akzhSynQrHdJT5IXtgkr5V4bwURdj5aI1yLReJLf9E/EfU5GNYIEDUCMG?=
 =?iso-8859-1?Q?AGGQ/OytMHipm3RnPU7tpiPvJA73LZy7KGsM2vCXGc9pgcQ694bWzLj8wh?=
 =?iso-8859-1?Q?1GS0uAL6JLNMWnbn2EVmfWtUAIqarySiDjErtoGOKV+gMTxwIYpArB/gAe?=
 =?iso-8859-1?Q?eJlrSWLx9R/zin4WGPp3EamYvyAWALGHXqRaFay82Nyc9NjVc10dSr508Y?=
 =?iso-8859-1?Q?xhoSYOClL9dCW0HYzzQ11CQNffLgZkR8AbiPOwMb6X16gOFDm/YZdgfs4Q?=
 =?iso-8859-1?Q?yGk45iScwoMPnRuA62buX1pJLxdbrr5N0w4tkwC3JwErL6/bSXqPleCSaS?=
 =?iso-8859-1?Q?HC75iH/6D5j5kt3vIAkqDvsnkhP6ZDbGenMxfMdKGyomwt1pUIRkYRBG4p?=
 =?iso-8859-1?Q?lQwSpGIKh3hnNekpM2XmX9Kv5/FCwcJABCAceHJCsgKOLOu5amGy43F6LP?=
 =?iso-8859-1?Q?5hUTbEQxvjowow6hsoJeJVAFQwrxkrcKetbYQvakYNs42xBTlzMD1adt2C?=
 =?iso-8859-1?Q?Fa8+ssYgUcZZJs61wveW+0Rg9rnbnd5ttPcjVjQT9papGBF6Z7nox058Fz?=
 =?iso-8859-1?Q?3zzioDVPpMgNP8322k9NwPiNjubfGqCXK3f6VROJz+hBgDXjvYSocUTWBE?=
 =?iso-8859-1?Q?yekYzMWiAKW7axVvfSGam2hBvgmXFar0mQe2YXed8Q3e7qYRif0vDOsrt2?=
 =?iso-8859-1?Q?wBjza1/HeXUv8ueXEWsxvaiVHlqmxwVkmklQt+Gi4PlHvys9Sss61Z0aPb?=
 =?iso-8859-1?Q?bH9l+ztdM5vGFGofrOvRdlcpgllTgM3xXNsDSnsIWhxYEmI1eqdgzTvPRt?=
 =?iso-8859-1?Q?qQXYSw+pV6TPlBTr40/rok?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?K/fWpK8s/94XRwY8TokWeX6faIKQgdB2aQVnlVS3tVDIRfEA8DRpmitinf?=
 =?iso-8859-1?Q?ev0Hd0jrePmKnUax7o1ksFqXfsXxdnzm/hih5l03yASWDS0qg+yR4BDFwe?=
 =?iso-8859-1?Q?Pxw7S8ol/el4UmiodS+J9os6fpVnAQSjhxUz8T5ypWmgBIQV476vbFPODE?=
 =?iso-8859-1?Q?XedfeRX/Xa2OYVQBJJJZrLnz1Qx0Nuod4NKSb/pGhRPT2A9UDF4mvqiKRg?=
 =?iso-8859-1?Q?V7XC/DWrB51wWhlZKVPy2Y53WgMMIFOAbleEfgJGNq4x6w2gPGKSuQHdnP?=
 =?iso-8859-1?Q?7SOSUfMo3j715Cx1ILucY619UXe1c1fpguNrqf+Of3Iw5Oh/QGmD4dHor5?=
 =?iso-8859-1?Q?ZK1lzz10sYE1pEKM2ujAxdlwIH30DXwF4ivTyb6T16yZPVECcPcHRr8zVd?=
 =?iso-8859-1?Q?OwbWbZFb+wswiOPrZfYyvo2ibzxYcVzGav/fpT1qOCiwXDsJVxfBM7QeK0?=
 =?iso-8859-1?Q?uEHZlxg1JumFH0P189nuIZrLCal4wSt9iPjA5wL45gG0iBkrSUJ4ZqGF8B?=
 =?iso-8859-1?Q?jSX3RiAGcqmZlLJ22Zt+CwmTTMw8iu6uICT9VfvjM+9XyjQhxkYTGL3DB9?=
 =?iso-8859-1?Q?KHTRmp2iEJbBugUvfxu+747rRFr8SF/NF6SqpovpzMrmHEkW5ddvoqvs08?=
 =?iso-8859-1?Q?ztfrmfwTQyC8XfvUXtbbujgj/ZmWXjpQlnazTWpSWME+h+RtRlyPbkN4Fh?=
 =?iso-8859-1?Q?ZTOTZhwwhzyDr2jKL+lJUcjxQ7us6l3OgMpn1MVFbylJJ7z7zxa41AxlSq?=
 =?iso-8859-1?Q?4vL26j/qFUIMbICCKMTE71YJaFXUbu3dI2v2yeBO65gUTh+U0N+cc3CEsj?=
 =?iso-8859-1?Q?UnzMwhF7go+BPp50+6ozaV2mYmVJvlANmJLoaKXhZbvaMMRzdrieyoeQFZ?=
 =?iso-8859-1?Q?lvIfOJYuPzU+R+TiCgYgX34yT3rNxi8N6swsbFV/vILUtL5cABnay6UvdU?=
 =?iso-8859-1?Q?PeuRs2H/XeKu7cgmzyD7yR+/b0CkADUbD8puxerSNvRHBz5ONL658CD+ql?=
 =?iso-8859-1?Q?0rvbn465OWp6wajRg+N0vLiKf1gIvyTjFcsU7V7aNLpK619xJkNsee9ZAk?=
 =?iso-8859-1?Q?tiXQROfI0rrywAeSWFI67erWDBg3RjyB0QJ5ms69E5VX5nbskG+4teuORv?=
 =?iso-8859-1?Q?ZW1SaD9jHwoxN+w4VNqIJ4uLfm9JEfhFlhxwEz15Be5D18z1j8SStxx7Bg?=
 =?iso-8859-1?Q?BJPiNJgqR+vMdKcSetdh2BBRLcZCPq9khDb/PKJ+XtVIjNi6tVejDjAcOJ?=
 =?iso-8859-1?Q?F2Fkq0VwqTj2HU8skpkABlaHixQvSN/NNIhHp3C1SIbWFq2ojejIrzNiN4?=
 =?iso-8859-1?Q?kWWZ2loKFFDa7Dhd667CH+4L2nqU65M3VFw/CU3jyb/+6gyD2WTbCCpeSQ?=
 =?iso-8859-1?Q?NqGmrHuI6UrBQLRC7AXfHqkoWSOmvG88rnLiv8YZCL3SzqiOEnzvpe1MS6?=
 =?iso-8859-1?Q?8GVZ5S8IJzrx6WadPVk86Z1fD5vwDKX7IxEwqr/pK+c20f3EsQNb+rzINs?=
 =?iso-8859-1?Q?9E+x4JSbjKFMjXj+8msHHVXiIWATZ0qrMmluuygfGM2EXZXUuFmM8GMeJK?=
 =?iso-8859-1?Q?+hhfNIzhDIsPffmnuNzlzNGhb7Jii4+wzuK3hPyz4S7OPoioir+Ssrb0ku?=
 =?iso-8859-1?Q?vklrOZvld10kv0RMYFPaLy4K3KxMboQhgsvLN2tGGiJtIeVqjrm0ePxAKB?=
 =?iso-8859-1?Q?+MynytNPo9niZgoxRtzeEW9DQs/IN8TtaWmAqsub?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55d7f490-54c9-4bb1-cc11-08de30c4657b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 10:28:40.9169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lZnoiCsKc3i9oMUq18NcgzImjq0WPO3XCKFH6BILsGLDq2OLU4ysqlbdo/14B7J/siDZaiOuRhnd/lLSomF6OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6125
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

On Fri, Nov 21, 2025 at 01:16:50PM +0200, Jouni Högander wrote:
> Currently we are checking Panel Replay capability DPCD register in
> intel_alpm.c and writing PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU
> and PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE in PR_ALPM_CTL
> register base on the informaion. Instead of directly accessing
> intel_dp->pr_dpcd compute the behavior during psr_compute_config and store
> it in intel_crtc_state.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     |  6 ++---
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c      | 22 +++++++++++++++----
>  3 files changed, 22 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 6372f533f65b5..7ce8c674bb030 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -326,11 +326,9 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  		if (intel_dp->as_sdp_supported) {
>  			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>  
> -			if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> -			    DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP)
> +			if (crtc_state->link_off_after_as_sdp_when_pr_active)
>  				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
> -			if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> -						DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))
> +			if (crtc_state->disable_as_sdp_when_pr_active)
>  				pr_alpm_ctl |= PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
>  
>  			intel_de_write(display, PR_ALPM_CTL(display, cpu_transcoder),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index f39d62aa99246..d8a222689a35b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1161,6 +1161,8 @@ struct intel_crtc_state {
>  	bool enable_psr2_su_region_et;
>  	bool req_psr2_sdp_prior_scanline;
>  	bool has_panel_replay;
> +	bool link_off_after_as_sdp_when_pr_active;
> +	bool disable_as_sdp_when_pr_active;

I agree with Jani that moving the PSR/Panel Replay fields to a substruct
would make things clearer. That's a bigger change, so I presume it could
be also a follow-up.

>  	bool wm_level_disabled;
>  	bool pkg_c_latency_used;
>  	/* Only used for state verification. */
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4c5883bed612b..9d2ba39423826 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1715,10 +1715,21 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static bool
> -_panel_replay_compute_config(struct intel_dp *intel_dp,
> -			     struct intel_crtc_state *crtc_state,
> -			     const struct drm_connector_state *conn_state)
> +static bool compute_link_off_after_as_sdp_when_pr_active(struct intel_dp *intel_dp)
> +{
> +	return (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> +		DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP);
> +}
> +
> +static bool compute_disable_as_sdp_when_pr_active(struct intel_dp *intel_dp)
> +{
> +	return !(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> +		 DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR);
> +}

Nit: Aren't the above functions simple enough to inline them? Or do they
get more complicated later?

> +
> +static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
> +					 struct intel_crtc_state *crtc_state,
> +					 const struct drm_connector_state *conn_state)

Nit: I'd drop intel_dp as mentioned earlier.

Regardless, the patch looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>


>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_connector *connector =
> @@ -1747,6 +1758,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> +	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(intel_dp);
> +	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(intel_dp);
> +
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
>  
> -- 
> 2.43.0
> 
