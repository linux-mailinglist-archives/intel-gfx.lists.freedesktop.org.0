Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 942718BB35B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 20:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F0731131E7;
	Fri,  3 May 2024 18:40:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UhcBSAnk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17161131F1;
 Fri,  3 May 2024 18:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714761658; x=1746297658;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Aa2kGqb9z/HeHKz5oGVKzkvyDNX1QJtpz35qka3ziME=;
 b=UhcBSAnkn/bNlsCHK+UlfE0wFzsbV0v3FBsrXWf3wE8gJ8Gdop0haFEu
 f5x7CSIfAUahUTrCeQg2Sq0j7Vu77SQjNUXKGRLBKFCtZOHcKvd86WNBp
 CIt7g6m15D62JbAtm/h0/8unjuE7Nlx2hrie4HVpZaA+DE6aQ1U41zg+o
 YemT3va6vzlxrUypIozoR0F6YANIeXRLwut4+sfoy1qTDkFdWCG7Zl3SU
 7gtfihOqb/StkGEaQ0tk6VCI4dVYMDM6k7NnB3FA1MBpgo69lH6wpXqtl
 aargFjhV4rB6nBBs6p1TTiJiLk0C1//LwhyuFnqFbAhccR48JpyzxG+J1 g==;
X-CSE-ConnectionGUID: nHCaMbiqQ8edVMXYUxj5OA==
X-CSE-MsgGUID: Pvmy1KwjQHSwN+w9ZgNcAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="10431329"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10431329"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 11:40:57 -0700
X-CSE-ConnectionGUID: vHRYIjXNSQChQvuc0c0k7g==
X-CSE-MsgGUID: KrTx6752S62nTdIagJUpgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="32338388"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 May 2024 11:40:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 3 May 2024 11:40:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 3 May 2024 11:40:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 3 May 2024 11:40:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 3 May 2024 11:40:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PtGPrF7YYRIjS1Po+23uhKCVooFtrXTpTT3xAVtukLcrG6OJkO8R968qbomnGMAHmUBC2f0X99OaGd6EFMTDeKEJYRYEmU1nuaPEZJJXKq5qA8iYezgm6NLtC6OM10v1eQhzgI8O14ZT+aP7G/VX+Bo0K2O5BZQrVBuW08s22O0UB6GDNID4V5zf05Oy+BZKOFkbwOW4JUEPa7uvKM7oGuFPMaVSSOvG4c1YR0uNQdTC3VQhylZLeYh657HRlReYDmm1Lvz/wVVkSa5WmeqbSsDkbaFd7qwMwFCmd67tmWvYI1fEydiRLEXhsXLdkcRCqn5KlmnQXmgwzsPvz084kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfhGQuy5kE5SfZV0JAe49uVjALN/GaT2YrjyyWY9ib4=;
 b=SKqkVkQW6mzW+pmIFVpjHyIoKpTiBdcWqk9K8ZnQhIukZlcg8aljsVcESdmGDTWGIzc8I8f+AqtXucy26cQFoMsgkPOyxRK3KGOdrE4EjIuMPQdUlvaQqsaqVbg+GsMJxh99NJugWVikVsqOGXaZ6R7nXdFFmfF4BjOPU/6seEgrNJEupDDrgZ8PVae7bqOqMR5NLyIeRc78ncUF0fIGadrLZYSogc4qlxq9H1dT4zWq3Am7wfLsxQ8f/aqy8tnrB6aTV/HT6fpjXJq31x2XjMa9TkZtTWNKqxRhAEgPi2E5TnmOVD5mx81a7T09V9A2dzvyMwmEy6TKm36a2ViWww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.34; Fri, 3 May
 2024 18:40:54 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711%6]) with mapi id 15.20.7519.031; Fri, 3 May 2024
 18:40:54 +0000
Date: Fri, 3 May 2024 13:40:51 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3 17/19] drm/xe/device: implement transient flush
Message-ID: <ul6vrrz3ufrmw47x27gtrkichx2sloqycf4wbl7v5h65bqkfwl@ogg63q7whwys>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
 <20240430172850.1881525-18-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240430172850.1881525-18-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: MW2PR2101CA0035.namprd21.prod.outlook.com
 (2603:10b6:302:1::48) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|LV3PR11MB8603:EE_
X-MS-Office365-Filtering-Correlation-Id: 04c72f1e-110f-4335-6393-08dc6ba09099
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?y+KjXE40E5L6ECDTswGh+UbMLAUrxJbybHZvh8tWUHRNUruxzTOqhaANfvHg?=
 =?us-ascii?Q?/dJVHsc18KK60umFdh891KxWIs9q1gtyNU9ir7kWJKpWX24KK1x/tcswxPYw?=
 =?us-ascii?Q?pQ46ktxhld7/IivTtJookT+TSG8plvwtxwBQOmcSKnxLsgKBoBDg30UC5zXX?=
 =?us-ascii?Q?NVQj7u8+ZeM0wczWsxcRxdxCUb3WWKPcQimjjepJwWBtE9x4sEp2zKk7VhBh?=
 =?us-ascii?Q?9IEeLKS8t/hez+ACXd5sUcPgk7qr4YFbsZFaJDj/+fc/CdwvUYROiMZQeKBf?=
 =?us-ascii?Q?hjFADmEnW4YdnUfyaV0t9g+elDM2r+GjWFjhJgHdU/IskNoYeJ6E83n8ldJi?=
 =?us-ascii?Q?c7EM3kn+hpvS1OU/V+D/zphSVDdoAP57FEGgl5hV5IKzfj08h0tBNRzMWxxX?=
 =?us-ascii?Q?9zxiWrsqFXsiflipZuu+vtSjPnBHP83ZFK0wJOXt1DPlqajrg9e9qcu26Fgn?=
 =?us-ascii?Q?ekQY7Asx7XaIdZuge0EbK5LkGpdvITKR3EJZyFgkqWyIfIhQMy6V7HdvZ363?=
 =?us-ascii?Q?7jzCv4ESFKI6ntB7+xxYFMRf2iIUWE6TcjSb1nRXOtZWG8nqIZxb9Vognlj9?=
 =?us-ascii?Q?O5TeOJ/Zok/F7VGMycJtiv2R36BWGHLzmNbHBflzD5Ve5RxO66SaIxYQwOxB?=
 =?us-ascii?Q?X95euO+z2oJTJNlxHpCEbs3r1AAq4JYr7DBdFkh+Mi9yrIBrMMISfXoL3Kmu?=
 =?us-ascii?Q?TPBYLTuo2ek7UqPtxgUsLnyCwk28UAmSBS/cw5re/qcCe9NNpoYXPL4CG2I1?=
 =?us-ascii?Q?iSWM7JBQZFVMyzSGVvCh1vExukWuzUtotN6xslHVtzqfwfa/F71ExbLixqoa?=
 =?us-ascii?Q?VwSNOtE4L+8AVIW2PrGcWdtWvO1vsyDEbbPMQP2Z74uOUSj3/0DStoovJev9?=
 =?us-ascii?Q?GKhBUp1xCTXnvnGlnT/ZkQQbW3oWfpzFEO9RjTkUm7R/zybicn6/Lx+FAUN8?=
 =?us-ascii?Q?/SFaBAgh5mNEgMVw4J5ZRT/bLMy0in/hI4vlXRw0ezz4IQ64QurMKix3Gs7e?=
 =?us-ascii?Q?NaHKKROm5J1NaCOsP2gsj+cTVMmKFD9y6jVJRiCWJwYaW7DnIfTN6DbqQIzq?=
 =?us-ascii?Q?Gcjqnj+AlnEH8Rci8CSexEvb328N8IUSsxIWFGGVA9XfWGQyo1RJCUg+hC5d?=
 =?us-ascii?Q?K9wx1f37G5EhfVaWIebthSHGc+EzGgV3JnbEh2548z68xxAs0F1t7UN9WLUi?=
 =?us-ascii?Q?tH/z3LIhpBuW8nJxs7NlZYe8q48BTQbB609ppInkpxLAklm9euBvQE9lOdAd?=
 =?us-ascii?Q?lBkelp7pncaQVe9Jk+LRceAWQGQi4qv0z1hC0CB7yg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dcXiCAwKf4TOPreuhxMHpdTGpOcrKgOIyaJnfY5XEEWPm1VlSYnv1kD3b3/K?=
 =?us-ascii?Q?jdWp0FMem6TjGdZBNVM6zjoxHzfby7FOhqdX14jcpbLOEOtuj3oWL6DRkhqE?=
 =?us-ascii?Q?ODPtbvDS5MoJSNqi2/B7XKSnakacQ+J/2EH4x2Cl0bCCiaLoDR6CNonF1GZh?=
 =?us-ascii?Q?fAxgw9PVRhBTIh/EgFuWkXc4Sd5XKbUUeoKsZUTypcqthsYDjMIeRBFTVhBx?=
 =?us-ascii?Q?i3wbrS0iqF+94hjcqE4QYcVZ6zifaTRNo8liLu0uDhsIbN+3zL2ri32mL2Il?=
 =?us-ascii?Q?8qExEpQyAOgBbVPkkOQFuGu1jRZ/J1wVjVLddlicCueQN1WScwfa/umCWn62?=
 =?us-ascii?Q?guJUs8AOaQExTB8Kj+bnsmxWhw402RiquTM7HfHGvbwMfnDF74TNyP1NGWs8?=
 =?us-ascii?Q?Q7IDozJQBl7j/aCN2drtm3VnAxc4krFzQ4d2Ew9iQ4S7j4ayjXxFqIeRkj2l?=
 =?us-ascii?Q?q4Sr0l07AvalGtua7kO/bC7ct42h6ZkE7WvoE9jygvugWg6em+nRq2Tp3QhS?=
 =?us-ascii?Q?eIg/H1V57hupE3uRNZVE8uyGjjSmhxdEUzRXvfpca17P5fOy78/5e8PDdy+x?=
 =?us-ascii?Q?NHL+8C+E+SMboEv7wnwucpDk9p03GhE+RBNkc4bymedzsA2iqMCSzCpJ1rYs?=
 =?us-ascii?Q?4O0QZikilS68h4wuuEaVev2/EseiDedmL7vLu66dt4AGW8AUI3OpRddI9YTz?=
 =?us-ascii?Q?JKa0R/d14b3Q3/7GLOXheYRzEPDTg2kN+qTIoQqth2SgYea5NnZFtwA3NxG7?=
 =?us-ascii?Q?RY6ifv8Q9IloDA6e0jnbhfeLZO2QI68edSXXmibdffhporMD0du43q/3uiyH?=
 =?us-ascii?Q?WbeJpKb4WZBqXRjPhxjkE0C458mVIpMMBy2uUKtOpwobzM3BTGyVuLdQcWTc?=
 =?us-ascii?Q?Hj+HCjAYPCD8Lc7mVMf4v6R3GapjAW3+94ndWQIs6MkFDBIPb3Oh2HkWfHTb?=
 =?us-ascii?Q?dm0cLUEQ1J/McsA4QXhRy2OWWH3w+Ss0zwMr8TVRrcSgwk3BdzJUviFkmJhe?=
 =?us-ascii?Q?sJ9RNF+WsG8J9k0Q6ClUP+Y+jolr5BT/1lmZL9LhOqnhG9lQ3SiA1d4ejO8E?=
 =?us-ascii?Q?nfLLQfLIgCcf/ZJa6lNFn0boDqwH0x2z9i/RtZqSEL+CvpzbXmJI2ty73pvC?=
 =?us-ascii?Q?F31Xnmvqta/7dUnL/BxipVDMptY7aBTR1/AkiNScYGn4bZL15BcKRnJ5imUq?=
 =?us-ascii?Q?i0GSCPa3Td908IrcJvfWQtkWkEe2tCpE0wHfAqx3IaX63fiMj+uJwOuJ8dd3?=
 =?us-ascii?Q?N+LNcMCTaCSb3kWq8pG4ONB5C+EwAHIsqE5U6CsX09tcFfMuZbtK/nH894PB?=
 =?us-ascii?Q?eD/M8EUDE6hRydslXOtKe99HPSGzsE6ui4p470g7JD1yOK3ljfngOq/EG9aO?=
 =?us-ascii?Q?ewrZBreXL6oSmJZgay6kZiREBdPlXENiTmd9DAwgaVB0aFmMxWrQZVOSeYDB?=
 =?us-ascii?Q?+NwCXb+t4R1rw8VkIJbwuErjgd5nfD+rMg7oMzDpanwjplXazXMepjyLhB5i?=
 =?us-ascii?Q?puoL7p/q76q3ETbqTqlUtitXdZS8+dtbqmIQcaZAxm4qEWsmvKD/ga8houWn?=
 =?us-ascii?Q?hYN+s8OqQ0pJ/zzXPd02YZG2RrkIL8k54/lyuAHMord+Po3Sm58DqCyTFmHi?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c72f1e-110f-4335-6393-08dc6ba09099
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2024 18:40:54.6643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tmX6kOPTmmY8Aj+WfWYWo5jepcxYuAVZZj25p0ZE+MWO1eUNyq10M46wfu0PraicOyLlLiDS3mltufgdRuAuOMoEv1gCxCKuIRVJaZER77Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8603
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

On Tue, Apr 30, 2024 at 10:28:48AM GMT, Radhakrishna Sripada wrote:
>From: Nirmoy Das <nirmoy.das@intel.com>
>
>Display surfaces can be tagged as transient by mapping it using one of
>the various L3:XD PAT index modes on Xe2. The expectation is that KMD
>needs to request transient data flush at the start of flip sequence to
>ensure all transient data in L3 cache is flushed to memory. Add a
>routine for this which we can then call from the display code.
>
>v2: rebase(RK)
>
>Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>Co-developed-by: Matthew Auld <matthew.auld@intel.com>
>Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for merging this through drm-intel-next.

Lucas De Marchi

>---
> drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 ++
> drivers/gpu/drm/xe/xe_device.c       | 49 ++++++++++++++++++++++++++++
> drivers/gpu/drm/xe/xe_device.h       |  1 +
> 3 files changed, 53 insertions(+)
>
>diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
>index 83847f2da72a..b4f1a3264e8c 100644
>--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
>+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
>@@ -334,6 +334,9 @@
>
> #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
>
>+#define XE2_TDF_CTRL				XE_REG(0xb418)
>+#define   TRANSIENT_FLUSH_REQUEST		REG_BIT(0)
>+
> #define XEHP_MERT_MOD_CTRL			XE_REG_MCR(0xcf28)
> #define RENDER_MOD_CTRL				XE_REG_MCR(0xcf2c)
> #define COMP_MOD_CTRL				XE_REG_MCR(0xcf30)
>diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
>index b61f8356e23e..05c28314b748 100644
>--- a/drivers/gpu/drm/xe/xe_device.c
>+++ b/drivers/gpu/drm/xe/xe_device.c
>@@ -719,6 +719,55 @@ void xe_device_wmb(struct xe_device *xe)
> 		xe_mmio_write32(gt, SOFTWARE_FLAGS_SPR33, 0);
> }
>
>+/**
>+ * xe_device_td_flush() - Flush transient L3 cache entries
>+ * @xe: The device
>+ *
>+ * Display engine has direct access to memory and is never coherent with L3/L4
>+ * caches (or CPU caches), however KMD is responsible for specifically flushing
>+ * transient L3 GPU cache entries prior to the flip sequence to ensure scanout
>+ * can happen from such a surface without seeing corruption.
>+ *
>+ * Display surfaces can be tagged as transient by mapping it using one of the
>+ * various L3:XD PAT index modes on Xe2.
>+ *
>+ * Note: On non-discrete xe2 platforms, like LNL, the entire L3 cache is flushed
>+ * at the end of each submission via PIPE_CONTROL for compute/render, since SA
>+ * Media is not coherent with L3 and we want to support render-vs-media
>+ * usescases. For other engines like copy/blt the HW internally forces uncached
>+ * behaviour, hence why we can skip the TDF on such platforms.
>+ */
>+void xe_device_td_flush(struct xe_device *xe)
>+{
>+	struct xe_gt *gt;
>+	u8 id;
>+
>+	if (!IS_DGFX(xe) || GRAPHICS_VER(xe) < 20)
>+		return;
>+
>+	for_each_gt(gt, xe, id) {
>+		if (xe_gt_is_media_type(gt))
>+			continue;
>+
>+		if (xe_force_wake_get(gt_to_fw(gt), XE_FW_GT))
>+			return;
>+
>+		xe_mmio_write32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST);
>+		/*
>+		 * FIXME: We can likely do better here with our choice of
>+		 * timeout. Currently we just assume the worst case, i.e. 150us,
>+		 * which is believed to be sufficient to cover the worst case
>+		 * scenario on current platforms if all cache entries are
>+		 * transient and need to be flushed..
>+		 */
>+		if (xe_mmio_wait32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST, 0,
>+				   150, NULL, false))
>+			xe_gt_err_once(gt, "TD flush timeout\n");
>+
>+		xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
>+	}
>+}
>+
> u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
> {
> 	return xe_device_has_flat_ccs(xe) ?
>diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
>index 82317580f4bf..f2a78b6a9bff 100644
>--- a/drivers/gpu/drm/xe/xe_device.h
>+++ b/drivers/gpu/drm/xe/xe_device.h
>@@ -173,5 +173,6 @@ static inline bool xe_device_wedged(struct xe_device *xe)
> }
>
> void xe_device_declare_wedged(struct xe_device *xe);
>+void xe_device_td_flush(struct xe_device *xe);
>
> #endif
>-- 
>2.34.1
>
