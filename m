Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EB9BFDA6D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 19:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA6010E81D;
	Wed, 22 Oct 2025 17:42:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QExi9XFx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839F910E81D;
 Wed, 22 Oct 2025 17:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761154972; x=1792690972;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=4HSLc6ZOHJYFCN2fPYTlppN+Bn5sRxjyHLiGQSpmLCk=;
 b=QExi9XFx9Ih8RsgINMkBbCPQby7/kVem1BuyjdZ/swClr8Fi0oYo1ZvD
 3YdETiYgYJYNeSrvgSf61L1mPfHfIlhw2VXak16PqFS/bQNbke27hlVSl
 Et7U1OX//iX+BA1L1TBj/98PO3QkubLog/nNoJa2Fo6KLnYrV4tn81b3F
 DlHwoLoGGrBXSiqLSqSZ6WbTerYoyAExER7cobTmqnKcun0TO1BN31J++
 5iIM3G0/HyLizQjiHZq2Ju1cWcbGOUZwkaC8+I2Iul6lJPF3UAVN1tu2M
 1U+WiTmMehry8gZKiiHc+DHaJSqaDGpVIhJtmOfet2I4+jjfHEhN1s3cf Q==;
X-CSE-ConnectionGUID: jRZe1xtnSWKxHFZxF8xGBQ==
X-CSE-MsgGUID: eLfCkuW/SFKurdjNOkUWCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63350949"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63350949"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 10:42:51 -0700
X-CSE-ConnectionGUID: EMAtZMWpStypNaTilqZGjA==
X-CSE-MsgGUID: g62lOJeyRQCg4OMzhwhFAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="214590361"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 10:42:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 10:42:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 10:42:50 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 10:42:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YRMDMdEPqTMXoulb2vyo7494gRqlVcH7WUW67Sa2QfYidVYPWUc2COJzaW9A07tZJK07qMcbWLe/FUW8xsGE0JTNyVslVnqfTvc8DMjaSlh4WWtBHBppb14dOSQhUsUmSNT/peXZwPiuoeixLLagsYQUoTXJMc9ilXvjqphpOw4r/C8zBW6hiCTuoeJIrHAlR9ZhsMt99WhsPROQZ8TevrxGm16uOP+Fe2k5iPlvPn8xkVwUB3ZJNZO3fSyaSWZcjL1JbGQ9JVN5olF6ks5fA8OlnBnx0+I6LCsMqNfTKgiigPm2b7jgTI5VmyTgDdzr4quyziZbLkyNLDgqv1bYYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UgvVqD6IKzPTe56Uxzza9hw4QGArMXlbLXj2vFJIY4M=;
 b=LD4QmW3rQHxQSMFmYU+I5X4EzhmycuJJBm/ODOSPFOD0IDCSTi+9QTkcSrcq2G1jxPj6VKACjjZdLl3Q58GmRnbvb4QTznQGoAvu3PSpQ2SBc2T2BsreVTZW8D551ZTwHGOohZLud17tGDYXH5f+5Jix+L7MsVva0SLyLA1sm0B86U+GUCCi9ykNkWKbAd5MefhFPBRaPhgPRmsM/mKJ3/5hxssbBkb8vHSOzxmZWAGG/B6ovPvtwfzXNBlwM16dE3Ua4Tbu2NTO6GQ7PyM8doK9sV1Wrk4UyIu7fUHZ7SRj4f9zVcNqHDYRqzw10ulk54fhIriGjXfqrCQyv0Bjkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB7703.namprd11.prod.outlook.com (2603:10b6:a03:4e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 17:42:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 17:42:39 +0000
Date: Wed, 22 Oct 2025 20:42:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>,
 <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 drm/i915/dp: Simplify intel_dp_needs_8b10b_fec()
Message-ID: <aPkXihQioaZYlkfM@ideak-desk>
References: <20251020154438.416761-1-imre.deak@intel.com>
 <176105852225.36825.16857524279700698627@97596180aaec>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176105852225.36825.16857524279700698627@97596180aaec>
X-ClientProxiedBy: DU7P191CA0018.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:54e::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB7703:EE_
X-MS-Office365-Filtering-Correlation-Id: b3746bf6-9985-4734-6dcd-08de119264af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jfMz2u8CuDxtoEUSkWPq3YLu6mU+lto1BRQfmutmlKJLKMx+hrSBx7PwtiLJ?=
 =?us-ascii?Q?fBDyT0oFP9Gy/nsYa+mSDj3DqalVt2Czj0kvbUAfGgGUuCrHSDA/vEfkaeJg?=
 =?us-ascii?Q?q/HMeUJMKCGdtJkOn4IH1mAWA055YN4kspjWTGhbOFV2Vd9X7ek4OZOMEljC?=
 =?us-ascii?Q?ngSAc5UrYbRKl0hmvQVNmdAa1Iw2teA2yHCcOyyhiqczWhwfnkUb/oJTCQZy?=
 =?us-ascii?Q?2oYvP/lVPJb6yFPjYgk+BD8LFGA+ck/UaO/hx6Ik8o7EgGZ8cJVUwiU1NcDR?=
 =?us-ascii?Q?r7SlXR9Zrg+2+j4Het9/uZsZEZyfKn/sPJY9U+gDKLoSvZJ+cScXRF+qyw8v?=
 =?us-ascii?Q?EvsE6c+eZyEXGD0q88KczQwUPu4u2T3yd8ms+N+UV52bTFSdSEYc7tKPbP7R?=
 =?us-ascii?Q?0IGPJmBPOztOImAfENGpbyIEztHaqS28ueY5Ib7srvJWB8FDVkGPngDiPJ7c?=
 =?us-ascii?Q?HZVngfrZYMo47Hywz+v4frRYYZPy8zXMA89tgaNgYQd4cJVhnIbchMJbTQFr?=
 =?us-ascii?Q?eXQWQ3ewi7JyF9WBx1TgnqpYgujEch7aTYaZ3b5FldZU69xOtkuB9KeOJy8f?=
 =?us-ascii?Q?VhwvSFPLfUrJPjjeepl3gfecmGOsBilf+7j4eI2wwW2F2XzrotxZeOXD7viK?=
 =?us-ascii?Q?yc3pq5gbSkgBUUJ+ueA2ZzJOc876xunRcqsGUlix3YW8omV6r+I8lFZtVqPP?=
 =?us-ascii?Q?RO6DB4/RXrLmZWFthQOHUY9SsGSBhdD916J62ma4poE0hJKZ3BMKuK7h+hiB?=
 =?us-ascii?Q?YaFPNpDnmpthcsAoG1m7v1SlHQoqCuJUUPGT0jFpc3Dj5Nkj94fukzuYQoQb?=
 =?us-ascii?Q?SgutknIQTnBlHwdqTMlG3jq43yYsc6pDJD9hU2xTefqFtc07RY33eo6RZW+p?=
 =?us-ascii?Q?Z7n3IeCAtP5YFpbUbDbfyGwTU9LuU3j4QCRFQTI/WKtYQkkPnWVwqLlXM4Oa?=
 =?us-ascii?Q?u8Z2c7QrLmswLeJlQBOMHOhWQb9kRAGTWxG5RGubLyipQvol1DjJv6DjdkIE?=
 =?us-ascii?Q?QErp7t7q4bCdcsLBNHw1b98vHLBSzDtqcunUJRRSHXjUIISYYP/nW6+2Jf9l?=
 =?us-ascii?Q?Hi2Xb5DRwFfn/ap3iqOX0qWIeI9slIcbKCoW9Yae6LDfV12lEdolrkRitWAD?=
 =?us-ascii?Q?RkAa0mI7c1aabSzk0bke+aJG4cpXw48gkwhnY9NMZKfrzlxuH4keyYnR5IZL?=
 =?us-ascii?Q?Z5WMTfjccHarxYA1aiFB1RfQxJoOF5sksghK0Exr9O999pjOJi9buIxzOJLI?=
 =?us-ascii?Q?Ap8oaS3v8rCk7zFfsW16mMa0vMQbOCz9nb/Dx2KjRx5wfI1kkTYtc5x61UXl?=
 =?us-ascii?Q?o723nQ3O20byFI65qbllaNm2yum16AJRZYB5VZDKNmZEpcD9X9FHZg9fsJER?=
 =?us-ascii?Q?0Wx/8a+UBDllE3eldxOEulKmBkpGiw688z9TzOBitlFqdnDUEw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Nl3QHajAvZegbo3bd7cx4l/co1PbupmQBKjrnM2WiiDNyUVefMBxqELf0Xmv?=
 =?us-ascii?Q?ZzqNegx20u70cxAHE8GLcXioL1HOkYr/8hCnI8QObwbfOUz4nrVH/Iv6Ikmh?=
 =?us-ascii?Q?3nbQczyE8M+OSRR8JsMMke8oOBQEK8PPb9y8w9riR3B4IrSQ2pAM8wbUcPsS?=
 =?us-ascii?Q?TBGNqEs71F3G/CH4vim/luo+/cWT5xKLmiD1PQ86l6a+Uk1jm9sokRM3VsYj?=
 =?us-ascii?Q?Bl96mMhmOTZlneoSPsOao5JOyf/o77Jg/R2uUPtrzfCH5vHim0k1XN8vRxzm?=
 =?us-ascii?Q?PyTdGVkK9k9aMHtZkQr+pk1dX8qpaxRZd8krcOba5Qf9YZPp8i1nAT2aXt2N?=
 =?us-ascii?Q?6qCs0Cr29HOxPZlzDKcOSqjrqsrS7WQb8sIGwwvkUGi9jHU4hg33z3RweEWa?=
 =?us-ascii?Q?Y0ZitLi5S+GrPoL8A5Rmf8ElufHh7ZOhhrZWSfPMZKk7D1TnSXH+qsoCo4Y1?=
 =?us-ascii?Q?sAI+nHmHK8h8+rU7NXOuBsKuZYoHe0qXZ4ZKl2qNYf3+++zAiKvMhaABk+qH?=
 =?us-ascii?Q?0yG1QEuZKJMbkCn5nLc2a55ZuANg5JsonSVvY3QcZwzusyqb5HLG+pQxsEQj?=
 =?us-ascii?Q?gidmR1N9NCtAjXDPThcYLv+lQ/0HvEyw/VysARlQ2c+5lifayuy4ZLgo0LOv?=
 =?us-ascii?Q?+Du3RFu3+QSNCfbIqueHyrlsbhkt1TeQAsE9z/wO9X188veb5OM+VGUJG6aH?=
 =?us-ascii?Q?FmMuZoptrnXz7b6yQnD+D+TJy6f/GedaAPI4LRAF8ZoTpiJjzdjtLcMdndT7?=
 =?us-ascii?Q?rgyWI53sS85L415rJpWYVOJUUXvELOJT/e2Afj18YrwjOA5BKZIhrAMN9yYD?=
 =?us-ascii?Q?QYZidfSlJdLgX5BAz8KJrNjTWApOKQG+oBrNdgNRMhReZTcfETZh0DgSHOxM?=
 =?us-ascii?Q?6569ub5jdg46zY/O9X9dYR+Gcvzwn3T4xKbjKZ01k6hHyEyBIHNqqqPvkcJX?=
 =?us-ascii?Q?1erBhjRNclBrlwrAckCrKiaI9noiFQWlhk8sZf3KOwHDbxGbxk6Ui7qHMrDd?=
 =?us-ascii?Q?Q1xt24CEPTXnv98dwvnXktOMX+dKvhKvUwMwumX5JYslDgZJ5UTP7YPnw6d6?=
 =?us-ascii?Q?8GNZt0llg0Qmk2FYN1J9+eEOZaUx11T+F3hxx+Hjqt0vVQrxfq2j749CU5k7?=
 =?us-ascii?Q?dWwk87K/adMNsCyfdnT3HTD0xAm2IotysfhLa7IwmT9SuJ/fTue2uGAqgpM/?=
 =?us-ascii?Q?hEsttL4xAE/xAIg9xoOk6KgX89EB3ETRT6R4SiRdFmGWdv5mnVmITrmPFrLH?=
 =?us-ascii?Q?MTeUAP66bFLb070njgATfptotNQjb5juwji9Hsmue9x6KjWWBwzD0d6XMdpu?=
 =?us-ascii?Q?RnT3F2WrOwXWRvgOtdwxVXyIp5GauP1j1cXB3zDIcSnBJldhtySVFUFKTYiu?=
 =?us-ascii?Q?4sFMZBMknvhhLCnY/NKTT7QCR3qATyMf7awFw190I66NvaUuhwKPYXq6Dx/i?=
 =?us-ascii?Q?Vhq2M33gyoDktYvi3GZPV4BmFMJ8o5pkLIcl0pN6O1HL07DJ8NNw3PIHziEb?=
 =?us-ascii?Q?JmyJ35fjI1aS4M/23262WVRSwJpn/DGm1jVHz8B7mn8dwvB3LwhUnumGGm2x?=
 =?us-ascii?Q?YlMM4xRcCzIAg0bqMEh/H6sQw5x3wfawT4LTCIbtY9US4yuSTiMIloPWyZFd?=
 =?us-ascii?Q?XTlgQUl/E+5TF4joOJG+c85j+Cn7NrIm71zUS5ISRvq2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3746bf6-9985-4734-6dcd-08de119264af
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 17:42:39.1748 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wHXcFPtHnb8X6feRmU4y5JeyO/Fwu4yCy5wWy4f7Hy2wu3UdO9xLk96lT0CH20NCTblBoLwJV9hx+N+E/liC4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7703
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

On Tue, Oct 21, 2025 at 02:55:22PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Simplify intel_dp_needs_8b10b_fec()
> URL   : https://patchwork.freedesktop.org/series/156213/
> State : failure

Thanks for the review, patch is pushed to drm-intel-next.

The failures are unrelated see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17393_full -> Patchwork_156213v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_156213v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_156213v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_156213v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-rkl:          [PASS][1] -> [ABORT][2] +2 other tests abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@gem_exec_suspend@basic-s0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-4/igt@gem_exec_suspend@basic-s0.html

Only an HDMI output is connected, so the DP specific changes don't have
an effect on this host. It's some ethernet adapter issue during
suspend/resume:

<3> [66.092021] igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register

> 
>   * igt@kms_cursor_crc@cursor-sliding-128x128@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-128x128@pipe-d-edp-1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-128x128@pipe-d-edp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x128:
>     - shard-mtlp:         [FAIL][5] ([i915#13566]) -> [DMESG-FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-128x128.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-128x128.html

Both of the above are on a host with only an eDP output, without DSC
getting enabled. On eDP FEC is never enabled in any case. The DSC/FEC
specific changes don't have an effect on this host.

The issue is:
<3> [522.175034] [drm:drm_crtc_add_crc_entry] *ERROR* Overflow of CRC buffer, userspace reads too slow.

and looks similar to:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14843

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17393_full and Patchwork_156213v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-1:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [1.91] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_156213v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8411]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@fbdev@nullptr:
>     - shard-rkl:          [PASS][8] -> [SKIP][9] ([i915#14544] / [i915#2582]) +1 other test skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@fbdev@nullptr.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@fbdev@nullptr.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2-9:        NOTRUN -> [INCOMPLETE][12] ([i915#13356])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
>     - shard-dg2-9:        NOTRUN -> [INCOMPLETE][13] ([i915#12392] / [i915#13356])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#7697])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2-9:        NOTRUN -> [INCOMPLETE][15] ([i915#13427])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#6335])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@gem_create@create-ext-cpu-access-sanity-check.html
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#6335])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#4525])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@gem_exec_balancer@parallel-out-fence.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#4525])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#6334]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4812]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#3281]) +4 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3281]) +10 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281]) +4 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg2-9:        NOTRUN -> [SKIP][28] ([i915#4537] / [i915#4812])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][29] -> [INCOMPLETE][30] ([i915#13356]) +1 other test incomplete
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][31] ([i915#13356]) +1 other test incomplete
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#14544] / [i915#4613] / [i915#7582])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#4613]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][34] ([i915#4613])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4613]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#4613])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_mmap@bad-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#4083])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_mmap@bad-size.html
> 
>   * igt@gem_mmap_gtt@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4077]) +6 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@gem_mmap_gtt@basic.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4083])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3282]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][41] ([i915#2658])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk6/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][42] ([i915#14702] / [i915#2658])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          [PASS][43] -> [TIMEOUT][44] ([i915#12917] / [i915#12964])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_pxp@display-protected-crc.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [PASS][45] -> [TIMEOUT][46] ([i915#12964])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-dg2-9:        NOTRUN -> [SKIP][47] ([i915#4270])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4270]) +3 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][49] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          [PASS][50] -> [SKIP][51] ([i915#14544] / [i915#4270])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_readwrite@read-write:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3282])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gem_readwrite@read-write.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#5190] / [i915#8428])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4079]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][56] ([i915#13809])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk9/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-dg2-9:        NOTRUN -> [SKIP][57] ([i915#4077])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#4079])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3297] / [i915#4880])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3297]) +2 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][61] ([i915#3297]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#2856])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          NOTRUN -> [ABORT][63] ([i915#5566])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#2527] / [i915#2856])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#2527] / [i915#2856])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#2856]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#2527]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#14544] / [i915#2527])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_drm_fdinfo@all-busy-check-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][69] ([i915#14123])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@i915_drm_fdinfo@all-busy-check-all.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#14118])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@i915_drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@i915_fb_tiling@basic-x-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#13786])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@i915_fb_tiling@basic-x-tiling.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-snb:          [PASS][72] -> [DMESG-WARN][73] ([i915#14545])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-snb1/igt@i915_module_load@reload-no-display.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-snb4/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg2:          [PASS][74] -> [DMESG-WARN][75] ([i915#14545])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg2-8/igt@i915_module_load@resize-bar.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-3/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#8399])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-accuracy:
>     - shard-rkl:          NOTRUN -> [FAIL][77] ([i915#12964]) +1 other test fail
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-accuracy.html
> 
>   * igt@i915_pm_rpm@debugfs-forcewake-user:
>     - shard-dg1:          [PASS][78] -> [DMESG-WARN][79] ([i915#4423]) +3 other tests dmesg-warn
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-18/igt@i915_pm_rpm@debugfs-forcewake-user.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-12/igt@i915_pm_rpm@debugfs-forcewake-user.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type:
>     - shard-rkl:          [PASS][80] -> [SKIP][81] ([i915#13328])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@i915_pm_rpm@gem-mmap-type.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#11681] / [i915#6621])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#4387])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#4387])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#6245])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][86] ([i915#4817])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk5/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#7707])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@intel_hwmon@hwmon-read.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#7707])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4212]) +2 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#1769] / [i915#3555])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#5286]) +3 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#5286])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#5286]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3638]) +3 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][95] +7 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2-9:        NOTRUN -> [SKIP][96] ([i915#5190])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][98] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#12313])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#12313])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#6095]) +171 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][102] +252 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][103] ([i915#10307] / [i915#6095]) +9 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#6095]) +39 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#12313]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#6095]) +9 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][108] ([i915#12796]) +1 other test incomplete
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#6095]) +29 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#10307] / [i915#6095]) +113 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#6095]) +39 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#14544]) +11 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#14098] / [i915#6095]) +34 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#13783]) +3 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-dg2-9:        NOTRUN -> [SKIP][115] +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_chamelium_color@ctm-negative.html
> 
>   * igt@kms_chamelium_edid@vga-edid-read:
>     - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_chamelium_edid@vga-edid-read.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][119] ([i915#11151] / [i915#7828]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#11151] / [i915#14544] / [i915#7828])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#12655] / [i915#3555])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_color@deep-color.html
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3555] / [i915#9979])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_color@deep-color.html
> 
>   * igt@kms_color@degamma:
>     - shard-rkl:          [PASS][124] -> [SKIP][125] ([i915#12655] / [i915#14544]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_color@degamma.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_color@degamma.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][126] ([i915#7118] / [i915#9424])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#3116] / [i915#3299])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#7118] / [i915#9424])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_content_protection@legacy.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#9424]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42:
>     - shard-tglu:         NOTRUN -> [FAIL][131] ([i915#13566]) +3 other tests fail
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][132] ([i915#13566]) +1 other test fail
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
>     - shard-tglu-1:       NOTRUN -> [FAIL][133] ([i915#13566]) +1 other test fail
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3555]) +2 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#13049]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][136] ([i915#12358] / [i915#14152] / [i915#7882])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk9/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][137] ([i915#12358] / [i915#14152])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk9/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#4103])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#4103])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#11190] / [i915#14544])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
>     - shard-rkl:          [PASS][141] -> [SKIP][142] ([i915#11190] / [i915#14544])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][143] ([i915#9878])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][144] ([i915#13046] / [i915#5354])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][145] +13 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#13046] / [i915#5354]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#9833])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#9723])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#13691])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3804])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#13749])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_dp_link_training@non-uhbr-sst.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#13749])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#13748])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#13707])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3840] / [i915#9688])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#3555] / [i915#3840])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#3840])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-rkl:          [PASS][158] -> [SKIP][159] ([i915#14544] / [i915#14561])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#3469])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-1x:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#14544] / [i915#9738])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_feature_discovery@display-1x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#658])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#4881])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#8381])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#8381])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#9934]) +5 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][167] ([i915#9934]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#3637] / [i915#9934]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#9934]) +4 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_flip@2x-wf_vblank-ts-check.html
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#3637] / [i915#9934]) +3 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          [PASS][171] -> [SKIP][172] ([i915#14544] / [i915#3637]) +5 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-dpms-on-nop:
>     - shard-rkl:          [PASS][173] -> [SKIP][174] ([i915#14544] / [i915#14553])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_flip@flip-vs-dpms-on-nop.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@flip-vs-rmfb:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#14544] / [i915#3637]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_flip@flip-vs-rmfb.html
> 
>   * igt@kms_flip@flip-vs-suspend@d-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][176] ([i915#4423])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend@d-hdmi-a4.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#2672] / [i915#3555]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#2672]) +6 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#2587] / [i915#2672]) +1 other test skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#14544] / [i915#3555])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#2672] / [i915#3555])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-rkl:          [PASS][183] -> [SKIP][184] ([i915#14544] / [i915#3555]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][185] ([i915#2672] / [i915#3555] / [i915#5190])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#2672] / [i915#3555] / [i915#5190])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#2672]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#2672] / [i915#3555])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#2587] / [i915#2672])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][190] ([i915#2672] / [i915#3555])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][191] ([i915#2672]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#15104]) +2 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [PASS][193] -> [SKIP][194] ([i915#14544] / [i915#1849] / [i915#5354]) +12 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#8708]) +11 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#1825]) +16 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][197] +28 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#5354]) +19 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][199] ([i915#15104])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#15102]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#15102] / [i915#3458]) +10 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][202] +28 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][203] ([i915#8708]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][204] ([i915#5354]) +4 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#15102]) +11 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#15102]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#15102]) +10 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#14544] / [i915#1849] / [i915#5354]) +8 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][210] ([i915#15102] / [i915#3458]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-glk10:        NOTRUN -> [SKIP][211] +66 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#12713])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#3555] / [i915#8228])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_invalid_mode@bad-vsync-end:
>     - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#10656])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#13688])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#13522])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#14712])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#14712])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-xtiled:
>     - shard-rkl:          [PASS][221] -> [SKIP][222] ([i915#14544]) +59 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
> 
>   * igt@kms_plane@pixel-format:
>     - shard-rkl:          [PASS][223] -> [SKIP][224] ([i915#14544] / [i915#8825]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_plane@pixel-format.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane@pixel-format.html
> 
>   * igt@kms_plane_alpha_blend@alpha-7efc:
>     - shard-rkl:          [PASS][225] -> [SKIP][226] ([i915#14544] / [i915#7294]) +1 other test skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-7efc.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#14544] / [i915#7294])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][228] ([i915#10647] / [i915#12169])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][229] ([i915#10647]) +1 other test fail
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#13958])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#13958])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_scaling@invalid-parameters:
>     - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#14544] / [i915#8152])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@invalid-parameters.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a:
>     - shard-rkl:          [PASS][233] -> [SKIP][234] ([i915#12247] / [i915#14544]) +6 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#12247]) +3 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
>     - shard-rkl:          [PASS][236] -> [SKIP][237] ([i915#14544] / [i915#8152]) +2 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
>     - shard-rkl:          [PASS][238] -> [SKIP][239] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>     - shard-rkl:          [PASS][240] -> [SKIP][241] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [PASS][242] -> [SKIP][243] ([i915#12247] / [i915#14544] / [i915#8152]) +8 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#12343])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#9812])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-tglu:         NOTRUN -> [SKIP][246] ([i915#9685])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#3828])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#3828])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@cursor:
>     - shard-rkl:          [PASS][249] -> [SKIP][250] ([i915#14544] / [i915#1849])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_pm_rpm@cursor.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_pm_rpm@cursor.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [PASS][251] -> [SKIP][252] ([i915#14544] / [i915#15073])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][253] ([i915#15073])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2-9:        NOTRUN -> [SKIP][254] ([i915#15073])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#15073])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>     - shard-rkl:          [PASS][256] -> [SKIP][257] ([i915#15073]) +1 other test skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][258] -> [SKIP][259] ([i915#15073])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#6524]) +1 other test skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-rkl:          [PASS][261] -> [SKIP][262] ([i915#14544] / [i915#6524])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_prime@basic-crc-vgem.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#6524])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][264] ([i915#11520]) +3 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][265] ([i915#11520]) +4 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#11520]) +5 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#11520]) +5 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][268] ([i915#11520]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#11520]) +3 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#11520] / [i915#14544]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-glk10:        NOTRUN -> [SKIP][271] ([i915#11520]) +2 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk10/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#9683])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-sprite-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][273] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_psr@fbc-pr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_psr@fbc-psr-basic.html
> 
>   * igt@kms_psr@psr-primary-render:
>     - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#1072] / [i915#14544] / [i915#9732])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_psr@psr-primary-render.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#9732]) +9 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][278] ([i915#9732]) +10 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#5289])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#12755])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#5289]) +2 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][282] ([i915#5289]) +1 other test skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#12755] / [i915#5190])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#3555]) +2 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options:
>     - shard-dg2-9:        NOTRUN -> [FAIL][285] ([i915#15119]) +2 other tests fail
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
> 
>   * igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888:
>     - shard-glk:          NOTRUN -> [FAIL][286] ([i915#15119]) +17 other tests fail
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb888.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-glk10:        NOTRUN -> [ABORT][287] ([i915#13179]) +1 other test abort
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk10/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_check_src_coords:
>     - shard-glk10:        NOTRUN -> [FAIL][288] ([i915#15119]) +1 other test fail
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk10/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_check_src_coords.html
> 
>   * igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state:
>     - shard-dg2:          NOTRUN -> [FAIL][289] ([i915#15119]) +2 other tests fail
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk:          NOTRUN -> [FAIL][290] ([i915#10959])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk5/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-1 (NEW):
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][291] ([i915#12276]) +1 other test incomplete
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk10/igt@kms_vblank@ts-continuation-suspend@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][292] ([i915#3555])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#9906])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#9906])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-virtual.html
>     - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#9906])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-2/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][296] ([i915#2437]) +1 other test skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-glk1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglu:         NOTRUN -> [SKIP][297] ([i915#2437])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][298] ([i915#2437] / [i915#9412])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#2436])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-rkl:          [PASS][300] -> [FAIL][301] ([i915#14550])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@perf@polling-small-buf.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@idle:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][302] ([i915#12964]) +17 other tests dmesg-warn
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@perf_pmu@idle.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][303] ([i915#14433])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@perf_pmu@module-unload.html
>     - shard-tglu-1:       NOTRUN -> [FAIL][304] ([i915#14433])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-1/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all:
>     - shard-rkl:          [PASS][305] -> [FAIL][306] ([i915#4349]) +1 other test fail
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@perf_pmu@most-busy-idle-check-all.html
> 
>   * igt@perf_pmu@rc6:
>     - shard-rkl:          [PASS][307] -> [DMESG-WARN][308] ([i915#12964]) +24 other tests dmesg-warn
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@perf_pmu@rc6.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@perf_pmu@rc6.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][309] ([i915#3291] / [i915#3708])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#3708])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-5/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#9917])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-6/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg2-9:        NOTRUN -> [SKIP][312] ([i915#9917])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@unaligned-read:
>     - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#2582]) -> [PASS][314]
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@fbdev@unaligned-read.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-rkl:          [SKIP][315] ([i915#4270]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@gem_pxp@create-regular-context-1.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          [TIMEOUT][317] ([i915#12917] / [i915#12964]) -> [PASS][318]
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-on.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_softpin@allocator-evict:
>     - shard-rkl:          [DMESG-WARN][319] ([i915#12964]) -> [PASS][320] +6 other tests pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@gem_softpin@allocator-evict.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gem_softpin@allocator-evict.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][321] ([i915#7984]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-mtlp-2/igt@i915_power@sanity.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-mtlp-7/igt@i915_power@sanity.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [DMESG-FAIL][323] ([i915#12061]) -> [PASS][324] +1 other test pass
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg2-3/igt@i915_selftest@live@workarounds.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-4/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][325] ([i915#4817]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-3/igt@i915_suspend@forcewake.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@i915_suspend@forcewake.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-rkl:          [ABORT][327] -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-4/igt@i915_suspend@sysfs-reader.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_addfb_basic@bad-pitch-65536:
>     - shard-dg1:          [DMESG-WARN][329] ([i915#4423]) -> [PASS][330] +1 other test pass
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-14/igt@kms_addfb_basic@bad-pitch-65536.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-16/igt@kms_addfb_basic@bad-pitch-65536.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [FAIL][331] ([i915#5138]) -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][333] ([i915#14544]) -> [PASS][334] +67 other tests pass
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_busy@basic:
>     - shard-rkl:          [SKIP][335] ([i915#11190] / [i915#14544]) -> [PASS][336] +3 other tests pass
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_busy@basic.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_busy@basic.html
> 
>   * igt@kms_color@gamma:
>     - shard-rkl:          [SKIP][337] ([i915#12655] / [i915#14544]) -> [PASS][338]
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_color@gamma.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_color@gamma.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [INCOMPLETE][339] ([i915#9878]) -> [PASS][340]
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#3637]) -> [PASS][342] +7 other tests pass
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#3555]) -> [PASS][344] +3 other tests pass
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][346] +12 other tests pass
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_invalid_mode@uint-max-clock:
>     - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][348] +1 other test pass
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_invalid_mode@uint-max-clock.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
>     - shard-rkl:          [ABORT][349] ([i915#15132]) -> [PASS][350] +1 other test pass
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
> 
>   * igt@kms_plane@plane-position-hole-dpms:
>     - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#8825]) -> [PASS][352] +1 other test pass
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_plane@plane-position-hole-dpms.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>     - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#7294]) -> [PASS][354] +1 other test pass
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#8152]) -> [PASS][356] +1 other test pass
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [SKIP][357] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][358] +6 other tests pass
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][360] +1 other test pass
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>     - shard-rkl:          [SKIP][361] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][362]
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
>     - shard-rkl:          [SKIP][363] ([i915#12247] / [i915#14544]) -> [PASS][364] +5 other tests pass
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
> 
>   * igt@kms_pm_rpm@fences-dpms:
>     - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#1849]) -> [PASS][366]
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_pm_rpm@fences-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][367] ([i915#15073]) -> [PASS][368] +1 other test pass
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [SKIP][369] ([i915#11521] / [i915#14544]) -> [PASS][370]
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglu:         [FAIL][371] ([i915#15106]) -> [PASS][372] +2 other tests pass
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-tglu-8/igt@kms_setmode@basic.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-9/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][373] ([i915#14544] / [i915#8411]) -> [SKIP][374] ([i915#8411]) +2 other tests skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          [SKIP][375] ([i915#6230]) -> [SKIP][376] ([i915#14544] / [i915#6230])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@api_intel_bb@crc32.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          [SKIP][377] ([i915#8411]) -> [SKIP][378] ([i915#14544] / [i915#8411])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@api_intel_bb@object-reloc-keep-cache.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          [SKIP][379] ([i915#11078] / [i915#14544]) -> [SKIP][380] ([i915#11078])
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#3281]) -> [SKIP][382] ([i915#3281]) +16 other tests skip
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][383] ([i915#3555] / [i915#9323]) -> [SKIP][384] ([i915#14544] / [i915#3555] / [i915#9323])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_ccs@block-multicopy-inplace.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][386] ([i915#3555] / [i915#9323])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-rkl:          [SKIP][387] ([i915#13008]) -> [SKIP][388] ([i915#13008] / [i915#14544])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][389] ([i915#9323]) -> [SKIP][390] ([i915#14544] / [i915#9323])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@gem_ccs@suspend-resume.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          [SKIP][391] ([i915#14544] / [i915#7697]) -> [SKIP][392] ([i915#7697])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          [SKIP][393] ([i915#6335]) -> [SKIP][394] ([i915#14544] / [i915#6335])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          [SKIP][395] ([i915#8562]) -> [SKIP][396] ([i915#14544] / [i915#8562])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_create@create-ext-set-pat.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          [SKIP][397] ([i915#280]) -> [SKIP][398] ([i915#14544] / [i915#280])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_ctx_sseu@engines.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#4525]) -> [SKIP][400] ([i915#4525]) +1 other test skip
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          [SKIP][401] ([i915#4525]) -> [SKIP][402] ([i915#14544] / [i915#4525])
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_exec_balancer@parallel-ordering.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#6334]) -> [SKIP][404] ([i915#6334]) +1 other test skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          [SKIP][405] ([i915#14544] / [i915#6344]) -> [SKIP][406] ([i915#6344])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [SKIP][407] ([i915#3281]) -> [SKIP][408] ([i915#14544] / [i915#3281]) +12 other tests skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][409] ([i915#7276]) -> [SKIP][410] ([i915#14544] / [i915#7276])
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_exec_schedule@semaphore-power.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#4613]) -> [SKIP][412] ([i915#4613]) +5 other tests skip
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][413] ([i915#4613]) -> [SKIP][414] ([i915#14544] / [i915#4613]) +1 other test skip
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_madvise@dontneed-before-pwrite:
>     - shard-rkl:          [SKIP][415] ([i915#3282]) -> [SKIP][416] ([i915#14544] / [i915#3282]) +5 other tests skip
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_madvise@dontneed-before-pwrite.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_madvise@dontneed-before-pwrite.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [SKIP][417] ([i915#4270]) -> [TIMEOUT][418] ([i915#12964])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@gem_pxp@fail-invalid-protected-context.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [FAIL][419] ([i915#15138]) -> [TIMEOUT][420] ([i915#12917] / [i915#12964])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#4270]) -> [TIMEOUT][422] ([i915#12964])
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_pxp@regular-baseline-src-copy-readible.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-rkl:          [SKIP][423] ([i915#14544] / [i915#3282]) -> [SKIP][424] ([i915#3282]) +5 other tests skip
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-rkl:          [SKIP][425] -> [SKIP][426] ([i915#14544]) +22 other tests skip
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_softpin@evict-snoop.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          [SKIP][427] ([i915#14544] / [i915#3297]) -> [SKIP][428] ([i915#3297]) +1 other test skip
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-rkl:          [SKIP][429] ([i915#3297]) -> [SKIP][430] ([i915#14544] / [i915#3297]) +1 other test skip
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@gem_userptr_blits@unsync-overlap.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-rkl:          [SKIP][431] ([i915#2527]) -> [SKIP][432] ([i915#14544] / [i915#2527]) +3 other tests skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@gen9_exec_parse@allowed-all.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          [SKIP][433] ([i915#14544] / [i915#2527]) -> [SKIP][434] ([i915#2527]) +4 other tests skip
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          [SKIP][435] ([i915#14544] / [i915#6412]) -> [SKIP][436] ([i915#6412])
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@i915_module_load@resize-bar.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          [SKIP][437] ([i915#14544] / [i915#8399]) -> [SKIP][438] ([i915#8399]) +1 other test skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          [SKIP][439] ([i915#14498] / [i915#14544]) -> [SKIP][440] ([i915#14498])
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-rkl:          [ABORT][441] -> [INCOMPLETE][442] ([i915#13356])
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-4/igt@i915_pm_rpm@system-suspend.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-3/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [SKIP][443] ([i915#7984]) -> [SKIP][444] ([i915#14544] / [i915#7984])
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@i915_power@sanity.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][445] ([i915#14544] / [i915#5723]) -> [SKIP][446] ([i915#5723])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          [SKIP][447] ([i915#7707]) -> [SKIP][448] ([i915#14544] / [i915#7707])
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@intel_hwmon@hwmon-write.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          [SKIP][449] ([i915#9531]) -> [SKIP][450] ([i915#14544])
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          [SKIP][451] ([i915#14544]) -> [SKIP][452] ([i915#1769] / [i915#3555])
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][453] ([i915#5286]) -> [SKIP][454] ([i915#14544]) +6 other tests skip
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-rkl:          [SKIP][455] ([i915#14544]) -> [SKIP][456] ([i915#5286]) +5 other tests skip
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][457] ([i915#14544]) -> [SKIP][458] ([i915#3638]) +2 other tests skip
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][459] ([i915#3638]) -> [SKIP][460] ([i915#14544]) +2 other tests skip
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg1:          [SKIP][461] ([i915#4423]) -> [SKIP][462]
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-18/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][463] ([i915#14098] / [i915#6095]) -> [SKIP][464] ([i915#14544]) +17 other tests skip
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][465] ([i915#14544]) -> [SKIP][466] ([i915#12313]) +4 other tests skip
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][467] ([i915#6095]) -> [SKIP][468] ([i915#14098] / [i915#6095]) +2 other tests skip
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          [SKIP][469] ([i915#14544]) -> [SKIP][470] ([i915#14098] / [i915#6095]) +16 other tests skip
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][471] ([i915#14544] / [i915#3742]) -> [SKIP][472] ([i915#3742])
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_cdclk@mode-transition.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          [SKIP][473] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][474] ([i915#11151] / [i915#7828]) +8 other tests skip
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          [SKIP][475] ([i915#11151] / [i915#7828]) -> [SKIP][476] ([i915#11151] / [i915#14544] / [i915#7828]) +8 other tests skip
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color@ctm-0-50:
>     - shard-rkl:          [SKIP][477] ([i915#12655] / [i915#14544]) -> [DMESG-WARN][478] ([i915#12964])
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_color@ctm-0-50.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_color@ctm-0-50.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          [SKIP][479] ([i915#7118] / [i915#9424]) -> [SKIP][480] ([i915#14544])
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_content_protection@atomic.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          [SKIP][481] ([i915#3116]) -> [SKIP][482] ([i915#14544])
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          [SKIP][483] ([i915#14544]) -> [SKIP][484] ([i915#3116])
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg1:          [SKIP][485] ([i915#9424]) -> [SKIP][486] ([i915#4423] / [i915#9424])
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-16/igt@kms_content_protection@lic-type-0.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-19/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          [SKIP][487] ([i915#14544]) -> [SKIP][488] ([i915#9424]) +2 other tests skip
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_content_protection@mei-interface.html
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_content_protection@mei-interface.html
>     - shard-dg1:          [SKIP][489] ([i915#9433]) -> [SKIP][490] ([i915#9424])
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-18/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          [SKIP][491] ([i915#14544]) -> [SKIP][492] ([i915#7118] / [i915#9424])
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_content_protection@uevent.html
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          [SKIP][493] ([i915#13049]) -> [SKIP][494] ([i915#14544]) +2 other tests skip
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x170.html
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][495] ([i915#14544]) -> [SKIP][496] ([i915#13049]) +1 other test skip
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-rkl:          [INCOMPLETE][497] ([i915#12358] / [i915#14152]) -> [SKIP][498] ([i915#14544])
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_cursor_crc@cursor-suspend.html
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][499] ([i915#4103]) -> [SKIP][500] ([i915#14544])
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][501] ([i915#14544]) -> [SKIP][502] +21 other tests skip
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          [SKIP][503] ([i915#9067]) -> [SKIP][504] ([i915#14544])
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][505] ([i915#14544]) -> [SKIP][506] ([i915#4103]) +2 other tests skip
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][507] ([i915#9723]) -> [SKIP][508] ([i915#14544])
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          [SKIP][509] ([i915#14544]) -> [SKIP][510] ([i915#3555] / [i915#3804])
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          [SKIP][511] ([i915#1257]) -> [SKIP][512] ([i915#1257] / [i915#14544])
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_dp_aux_dev.html
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-rkl:          [SKIP][513] ([i915#14544]) -> [SKIP][514] ([i915#13749])
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          [SKIP][515] ([i915#14544]) -> [SKIP][516] ([i915#13748])
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          [SKIP][517] ([i915#14544]) -> [SKIP][518] ([i915#13707])
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          [SKIP][519] ([i915#3555] / [i915#3840]) -> [SKIP][520] ([i915#11190] / [i915#14544])
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_dsc@dsc-basic.html
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][521] ([i915#14544]) -> [SKIP][522] ([i915#3840]) +1 other test skip
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-rkl:          [SKIP][523] ([i915#3555] / [i915#3840]) -> [SKIP][524] ([i915#14544]) +1 other test skip
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][525] ([i915#4854]) -> [SKIP][526] ([i915#14544] / [i915#4854])
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_feature_discovery@chamelium.html
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          [SKIP][527] ([i915#14544] / [i915#1839]) -> [SKIP][528] ([i915#1839])
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          [SKIP][529] ([i915#14544] / [i915#658]) -> [SKIP][530] ([i915#658])
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_feature_discovery@psr1.html
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg1:          [SKIP][531] ([i915#8381]) -> [SKIP][532] ([i915#4423] / [i915#8381])
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-16/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-19/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][533] ([i915#14544] / [i915#9934]) -> [SKIP][534] ([i915#9934]) +12 other tests skip
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          [SKIP][535] ([i915#9934]) -> [SKIP][536] ([i915#14544] / [i915#9934]) +9 other tests skip
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_flip@2x-plain-flip.html
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-rkl:          [SKIP][537] ([i915#14544] / [i915#3555]) -> [SKIP][538] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][539] ([i915#2672] / [i915#3555]) -> [SKIP][540] ([i915#14544] / [i915#3555]) +5 other tests skip
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
>     - shard-rkl:          [SKIP][541] ([i915#14544] / [i915#1849] / [i915#5354]) -> [DMESG-WARN][542] ([i915#12964])
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          [SKIP][543] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][544] ([i915#5439]) +1 other test skip
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][545] ([i915#15102]) -> [SKIP][546] ([i915#14544]) +2 other tests skip
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][547] ([i915#15102] / [i915#3023]) -> [SKIP][548] ([i915#14544] / [i915#1849] / [i915#5354]) +20 other tests skip
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2:          [SKIP][549] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][550] ([i915#15102] / [i915#3458])
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          [SKIP][551] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][552] ([i915#1825]) +40 other tests skip
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          [SKIP][553] ([i915#1825]) -> [SKIP][554] ([i915#14544] / [i915#1849] / [i915#5354]) +36 other tests skip
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][555] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][556]
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][557] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][558] ([i915#15102] / [i915#3023]) +20 other tests skip
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          [SKIP][559] ([i915#9766]) -> [SKIP][560] ([i915#14544] / [i915#1849] / [i915#5354])
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][561] ([i915#14544]) -> [SKIP][562] ([i915#15102]) +3 other tests skip
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][563] ([i915#15102] / [i915#3458]) -> [SKIP][564] ([i915#10433] / [i915#15102] / [i915#3458]) +4 other tests skip
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          [SKIP][565] ([i915#12713] / [i915#4423]) -> [SKIP][566] ([i915#12713])
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-12/igt@kms_hdr@brightness-with-hdr.html
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-17/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-rkl:          [SKIP][567] ([i915#3555] / [i915#8228]) -> [SKIP][568] ([i915#14544]) +1 other test skip
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          [SKIP][569] ([i915#12394] / [i915#14544]) -> [SKIP][570] ([i915#12394])
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-rkl:          [SKIP][571] ([i915#13688] / [i915#14544]) -> [SKIP][572] ([i915#13688])
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          [SKIP][573] ([i915#12339] / [i915#14544]) -> [SKIP][574] ([i915#12339]) +1 other test skip
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-rkl:          [SKIP][575] ([i915#10656]) -> [SKIP][576] ([i915#10656] / [i915#14544])
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_joiner@invalid-modeset-big-joiner.html
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][577] ([i915#6301]) -> [SKIP][578] ([i915#14544])
>    [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_panel_fitting@legacy.html
>    [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          [SKIP][579] ([i915#14544]) -> [SKIP][580] ([i915#13958])
>    [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
>    [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          [SKIP][581] ([i915#13958]) -> [SKIP][582] ([i915#14544])
>    [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-yf.html
>    [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          [SKIP][583] ([i915#14544]) -> [SKIP][584] ([i915#14259])
>    [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
>    [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [SKIP][585] ([i915#14544] / [i915#6953] / [i915#8152]) -> [SKIP][586] ([i915#6953])
>    [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
>    [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][587] ([i915#12247] / [i915#14544]) -> [SKIP][588] ([i915#12247])
>    [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
>    [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][589] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][590] ([i915#12247]) +1 other test skip
>    [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
>    [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][591] ([i915#12247]) -> [SKIP][592] ([i915#12247] / [i915#14544])
>    [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
>    [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][593] ([i915#12247]) -> [SKIP][594] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
>    [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
>    [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          [SKIP][595] ([i915#5354]) -> [SKIP][596] ([i915#14544] / [i915#5354])
>    [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_pm_backlight@bad-brightness.html
>    [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          [SKIP][597] ([i915#14544] / [i915#5354]) -> [SKIP][598] ([i915#5354])
>    [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
>    [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          [SKIP][599] ([i915#3828]) -> [SKIP][600] ([i915#14544] / [i915#3828])
>    [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_pm_dc@dc5-retention-flops.html
>    [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][601] ([i915#9295]) -> [SKIP][602] ([i915#15128])
>    [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html
>    [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          [SKIP][603] ([i915#9685]) -> [SKIP][604] ([i915#14544] / [i915#9685])
>    [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_pm_dc@dc6-psr.html
>    [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][605] ([i915#14544] / [i915#4281]) -> [SKIP][606] ([i915#4281])
>    [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
>    [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][607] ([i915#14544] / [i915#15073]) -> [SKIP][608] ([i915#15073]) +2 other tests skip
>    [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html
>    [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][609] ([i915#15073]) -> [SKIP][610] ([i915#14544] / [i915#15073])
>    [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-rkl:          [SKIP][611] ([i915#14544]) -> [SKIP][612] ([i915#12916])
>    [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_pm_rpm@pm-tiling.html
>    [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][613] ([i915#11520] / [i915#14544]) -> [SKIP][614] ([i915#11520]) +9 other tests skip
>    [613]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>    [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][615] ([i915#11520]) -> [SKIP][616] ([i915#11520] / [i915#14544]) +7 other tests skip
>    [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
>    [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][617] ([i915#9683]) -> [SKIP][618] ([i915#14544] / [i915#9683]) +1 other test skip
>    [617]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          [SKIP][619] ([i915#14544] / [i915#9683]) -> [SKIP][620] ([i915#9683])
>    [619]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html
>    [620]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][621] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][622] ([i915#1072] / [i915#9732]) +25 other tests skip
>    [621]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
>    [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-sprite-blt:
>     - shard-dg1:          [SKIP][623] ([i915#1072] / [i915#9732]) -> [SKIP][624] ([i915#1072] / [i915#4423] / [i915#9732])
>    [623]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-dg1-16/igt@kms_psr@pr-sprite-blt.html
>    [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-dg1-19/igt@kms_psr@pr-sprite-blt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          [SKIP][625] ([i915#1072] / [i915#9732]) -> [SKIP][626] ([i915#1072] / [i915#14544] / [i915#9732]) +22 other tests skip
>    [625]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-cpu.html
>    [626]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          [SKIP][627] ([i915#14544]) -> [SKIP][628] ([i915#5289]) +2 other tests skip
>    [627]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [628]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_selftest@drm_cmdline_parser:
>     - shard-rkl:          [FAIL][629] ([i915#15119]) -> [DMESG-FAIL][630] ([i915#12964])
>    [629]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_selftest@drm_cmdline_parser.html
>    [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_selftest@drm_cmdline_parser.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-rkl:          [SKIP][631] ([i915#3555]) -> [SKIP][632] ([i915#14544] / [i915#3555])
>    [631]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_setmode@basic-clone-single-crtc.html
>    [632]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-rkl:          [SKIP][633] ([i915#14544] / [i915#3555]) -> [SKIP][634] ([i915#3555])
>    [633]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
>    [634]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_universal_plane@universal-plane-functional:
>     - shard-rkl:          [SKIP][635] ([i915#14544]) -> [DMESG-WARN][636] ([i915#12964])
>    [635]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_universal_plane@universal-plane-functional.html
>    [636]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_universal_plane@universal-plane-functional.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-rkl:          [SKIP][637] ([i915#3555]) -> [SKIP][638] ([i915#14544]) +4 other tests skip
>    [637]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-7/igt@kms_vrr@flip-basic.html
>    [638]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][639] ([i915#14544]) -> [SKIP][640] ([i915#3555]) +3 other tests skip
>    [639]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_vrr@flip-dpms.html
>    [640]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          [SKIP][641] ([i915#11920]) -> [SKIP][642] ([i915#14544])
>    [641]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-2/igt@kms_vrr@lobf.html
>    [642]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-rkl:          [SKIP][643] ([i915#14544]) -> [SKIP][644] ([i915#9906])
>    [643]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_vrr@max-min.html
>    [644]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][645] ([i915#9906]) -> [SKIP][646] ([i915#14544])
>    [645]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [646]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          [SKIP][647] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][648] ([i915#2437] / [i915#9412]) +1 other test skip
>    [647]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>    [648]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-rkl:          [SKIP][649] ([i915#2437] / [i915#9412]) -> [SKIP][650] ([i915#14544] / [i915#2437] / [i915#9412])
>    [649]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@kms_writeback@writeback-pixel-formats.html
>    [650]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][651] ([i915#14544] / [i915#2436]) -> [SKIP][652] ([i915#2436])
>    [651]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [652]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          [SKIP][653] ([i915#14544] / [i915#2435]) -> [SKIP][654] ([i915#2435])
>    [653]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
>    [654]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-2/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          [SKIP][655] ([i915#14544] / [i915#8516]) -> [SKIP][656] ([i915#8516])
>    [655]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
>    [656]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          [SKIP][657] ([i915#3291] / [i915#3708]) -> [SKIP][658] ([i915#14544] / [i915#3291] / [i915#3708])
>    [657]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@prime_vgem@basic-write.html
>    [658]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][659] ([i915#3708]) -> [SKIP][660] ([i915#14544] / [i915#3708]) +1 other test skip
>    [659]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-8/igt@prime_vgem@coherency-gtt.html
>    [660]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          [SKIP][661] ([i915#14544] / [i915#9917]) -> [SKIP][662] ([i915#9917])
>    [661]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
>    [662]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          [SKIP][663] ([i915#9917]) -> [SKIP][664] ([i915#14544] / [i915#9917])
>    [663]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17393/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>    [664]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13427]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786
>   [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14550
>   [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
>   [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
>   [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
>   [i915#15119]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15119
>   [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15138
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9738
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
>   [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17393 -> Patchwork_156213v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17393: bee2d9e4308e4b888e2524014a246793233f75e8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8593: 8593
>   Patchwork_156213v1: bee2d9e4308e4b888e2524014a246793233f75e8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_156213v1/index.html
