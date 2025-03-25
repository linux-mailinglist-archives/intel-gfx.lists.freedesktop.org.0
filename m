Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BA5A6FBAA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408E710E22A;
	Tue, 25 Mar 2025 12:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UmSEE0x+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED1A10E22A;
 Tue, 25 Mar 2025 12:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742905752; x=1774441752;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=my7Vh6GAWpc2tqI6B1+x50nIlk8LFpKrcTW7N2gT9cA=;
 b=UmSEE0x+i8PHbf6f71rptuazpTf5+5cwYI7Gpnnm0PRPZWFgvzQXqCmG
 OTx1M35i94tHRHP23lsJ5pMT3IJBBh98wu1DV4HkSolRpCO1O9kkCfmX5
 1tdLi2k6FEdnr6259N2gduiLoVO8o5rRx+o6nFix3C1+Nowi+rs8KBvSM
 6y3pMmcNZZYLyHFyTXJtBHPbQ25/sDRCLYkujEktgGANwOomKrf7KoonE
 ij0XhryiqI1oGINoURD7K9BuXn1fJngXXtXIO3TqXP52pz1e9XnpPU6Xz
 K0gkjpAu1ulXAjJAX9Nip3LqdsCEg1PUzH0/7dO4gzfE9HO8s5gJmiUs9 A==;
X-CSE-ConnectionGUID: ho6XPWqaQBWSMLfpXUfDSg==
X-CSE-MsgGUID: BU3OlQk5TTqsAMhmDijIvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44072347"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44072347"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:29:12 -0700
X-CSE-ConnectionGUID: YVMKQpOUSiul4mwz+w722Q==
X-CSE-MsgGUID: y1N8+NCdTAmCCZ5oH7isuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="147542378"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2025 05:29:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Mar 2025 05:29:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Mar 2025 05:29:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Mar 2025 05:29:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sDNlPafb0p7LJZCSC2JUGZoijB56l80j31uxUeTSqj2g6BEiSQ6HDBWftDkPdU2ZezaG/7V73Y4R7nX3LOb7/+y4HQWUM6LMed5u+yzI79ovrJc4P6x3vWw3Z6e7MxHlAurf1/q4G3BXSwMmfwAJue6P2MiLbCDMf+qpQk6WAoBIuCLIYFp8XrMKYMhI4akvPbyYqYKX24A83sc5I5AeyK+0Ra0iRYv64kKzyyPT+lcGhnaqBhoBqcv9cNUCzWvgyqIQ623QDxRtd8NWHcSpZ/t7B/o1XeU+RwHsBwiwao2DKYRAAV816bNeY1YQWYtsz+nPIvEZuCbCZjnjUQ38JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sociytrY6Jztmb4t+HYMZdcrS+tm3BEUBlXdnU0zW/k=;
 b=nvwl8CKYDlLsNVQIwR/EsZMICHO63zBrh9Pucx8Wt5H7k0ANFHPuKEASfS8ZhCIJ5XLulpym3hxEoaGOWvB87DO8smJnMd7ZUc0LlAqwEc35v6OlgcG5TIAxHl7kxBNxyi7t3NRCgY4ByLGMn28ZCv4Ewzq/wbSBvq+AOKFhnE796kaoPfPzOZB0WwwD9QxxZwryNrzIn5phTURwPf6VleH3HEivKaf8O7nAre+dOHPpmaHYiGQzPFh+I3ZJ+svMDn7JEG8L/+0Nt9cPKqfeS2bsS9zE6DWwBeg11CN62EoBcssv9+Vx4huLaRjVDLmtfx8uDANx3HhyoiBe4axJLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB6396.namprd11.prod.outlook.com (2603:10b6:208:3ab::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 12:29:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 12:29:04 +0000
Date: Tue, 25 Mar 2025 14:29:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
CC: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure_fo?=
 =?utf-8?Q?r?= drm/i915: Fix DP MST DB message timeouts due to PPS delays
Message-ID: <Z-KhjmPhMiBh8FyM@ideak-desk.fi.intel.com>
References: <20250324180145.142884-1-imre.deak@intel.com>
 <174285700806.75091.7982901296370240968@18a75f3d1eae>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174285700806.75091.7982901296370240968@18a75f3d1eae>
X-ClientProxiedBy: DU7P195CA0011.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB6396:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ee4a340-b1d5-4acb-0c36-08dd6b98a0d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jXXio0qt5KQymtlE31EbzgS4e0otRTaV5PpP4wsyjBiVoHhr2sHNynjM3e2h?=
 =?us-ascii?Q?IOpyxDR2QZjh2Hz28cMhNaDI1Bnyq1um6Lq2+ibemxirA1TqcLt+ukZLGH9U?=
 =?us-ascii?Q?efHRO77+EAEgfxvPLD0DO7hW+IyPjSuojDTixM/RrZsh2HNE8u61jNrhvCj6?=
 =?us-ascii?Q?CXANfRNbweUHXSVEQHi5raUUXHWWTfY10wkwOsklSQntqurG3GfPc5EeDYnh?=
 =?us-ascii?Q?P2xGrhqTrzgCWXlzCoyqmqPvTICpIfpuzaDWMX/OvQt8Rhs8mBcrCrCPAFRI?=
 =?us-ascii?Q?75nm/Zm0fa7BrR23AJ105dQhXSVaCtpaglcpeoeyknu7Iy7oVS1999KCevVs?=
 =?us-ascii?Q?/8ctrZ4pQ1tjJ0Yn0MwtGsvSyUv86bARdgv5sb+dYENgfh6fyjSSL9Evy6JK?=
 =?us-ascii?Q?NUQDPiUbOGSRfNXx5yBELH3GwGeDArNXcPkZoQk/Npd76VNpY0rNnXJ+LLOC?=
 =?us-ascii?Q?ra36kuGen9WbVz+heIhpcXTqIyzjRfiSW8vimtpwuZf2HNR4LpDDdggK67ea?=
 =?us-ascii?Q?/04xJDLqk0Ti+yG5kSWNptyKo6VevXDB6hohpEVTtzCSOIP+O4bfFY1ZoTvw?=
 =?us-ascii?Q?DNGCbae4Izccy5gXLVs61qGDzD1cbAcHB8R4QlUfGoqvZkLoyyYlS5+YAkoH?=
 =?us-ascii?Q?xzGn6C+HyYMQpkiFZmS6rG+o6cdl+SxMHQjxUNOv2Hmh6jCIpsitxEay3WWE?=
 =?us-ascii?Q?+5UwfnYn9aORVypPmUV/Kkszat6OU6RrEJBBdYgNa1nJkXPpTVIkaV2fbs1l?=
 =?us-ascii?Q?oHKjBpawz5VwjD05EvRyrmqLtz7juL0hwZ4tqj8dh7F+I6GwU2Gwf4r2st0b?=
 =?us-ascii?Q?kyau5KSB5jSnu6s4bVNxmlWVwZXr5vda6jxmZ4UDSIYh6ukW+NO3ZS1N0tSF?=
 =?us-ascii?Q?Ja9ZfBv5iXMpO9+oG0s1uN8UNEmeP7tjkPa5cAwAVgciqB9poMqRX4TQH4Oj?=
 =?us-ascii?Q?UxMsZZ1lTpTWM3XcLwzF412Q8nMmXVfvRgLu/QZCZIZxR9tOu1rJ2f+WtC1F?=
 =?us-ascii?Q?KoYBn5KZLets3/sOq+rS4Wg2UUCzMgMu6wofNrfrWssQlozToZYewzEahWsJ?=
 =?us-ascii?Q?NZgPXTtQ60LjLbN5xNEajdHtBJXtBz0vmswB9hOTYfN9fqiq8Br4JkCm+h3d?=
 =?us-ascii?Q?MstngMHnAX58x7nzMIQQ03UT9LW/wMFwTRDP17odB2EK5C6PBKMukNgmm07N?=
 =?us-ascii?Q?jyzH8CJz4QCjsAn8W3pK8qisQr5uf5OT9qtAjvkeUYjgP/nokFAJbKrZbwAt?=
 =?us-ascii?Q?PJDFwgAyS30HLoIqd/IhSZfapeMfBZeyEdxG7HPb2IjTK0Bt1gEn3XIWBNsM?=
 =?us-ascii?Q?XdiFRWAEF9DKGur68lP5b2dK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cYok5vMA7c6Kdpord1DcGYH2fT8wAxKL1b8gV49W35CI2IwAvvmo898CT5jD?=
 =?us-ascii?Q?B34ZrlEWqYq9+CP+Tf9JvcMWOmjBQs4TLW6NIhf9o48IuUYOe3Fns0HjzV+p?=
 =?us-ascii?Q?1OgFXUwtjehq2Ye9tW1sHpJQyepl+INnDBBhAUJ3EpMcrcthIMzVrHtJyNPz?=
 =?us-ascii?Q?1gRuzyqSuUe5zHzeByhn2wt1AxSDdEUo9u3oEeMuJJ3ByNjzXMpuv2YByaO0?=
 =?us-ascii?Q?uqXgdxGqiBXsIoS2eDIxpWQ+vLs9Tq/1pwAkUeQEISQZ0HqfB3cSt3ErVd5j?=
 =?us-ascii?Q?7BaVit4/ik8yN0CfzZTgcOoydXHFtGm/CYwdrRKlZFI5s9eD/DOQNYHfIXmU?=
 =?us-ascii?Q?hDQEOdpqGaG4d77iz+7abSTb3v7xn3oyOZRAYaUkEaxmUqOnrd6puDhvgA96?=
 =?us-ascii?Q?Z9C5Lzi/aebdZQFPB7Sx6GxPyoiqGyOuNkTAZni77LFSJ0K/e91W6EppCEEu?=
 =?us-ascii?Q?6vF6DB+o1VpvOwq4nf4zWZaIST256nWtbtcDsWiPB7d4NrCi0XEZbhLm+iAH?=
 =?us-ascii?Q?vwr6hyhhNxag5NX80XD/ZdShGvBGKlWkyccfH2J7uRZpb9U9eyKaQCRvsILc?=
 =?us-ascii?Q?8PGWLEtcTBKUwnoBtdkRQKF5OZ4/125QxUJUXg9W61bFq4kIJp+dOUaaXi55?=
 =?us-ascii?Q?A4TQAMB6gTCrberxm79QQLkkg1LDV+ayA9dEgFW8j2JqrMDUY98OeAcJZgWj?=
 =?us-ascii?Q?1p8SENLzLohEZLIUO5x1NrRe/kP8YVMJPjXI79z9AxLiAjsVx6pJRIQ/P9tJ?=
 =?us-ascii?Q?ReQlMk8TFOGHx6J/g2K/VIWZyvTEGTkL1axPYVxKxkhBw2qQ6J0b1O2BIy7w?=
 =?us-ascii?Q?cn3fMDrhwOORr9fQ56lXZm2S7NcM8dUqAxsvI915Zu7tJas8fZTQTDT/K45+?=
 =?us-ascii?Q?uCNpmDCLRDnYDZGMaqmNuYMIojbm5AM/H9b55LlBmln11AhOyS2Z6IyeStQp?=
 =?us-ascii?Q?0ErJv9YVOO3bp7bFDjwHGhodDPzAeIaFyM/O4yx3gHlIALYLADRqYcR5/26D?=
 =?us-ascii?Q?sAwCJC7yJA5nX8H19otYxrF9gY+Q09mIoHts7szw8+64vT4oEpgc86m8A980?=
 =?us-ascii?Q?XZmymLCLC9wzXp1fLC+GUO3p9DbGClMCB3LNXoIXE3ceZbgwQrdAGXyUBIId?=
 =?us-ascii?Q?XifXzNPE6l+apzGgkvq64XeDRbb5oPQyCwQvnxllY5ypaVyZhJAvj8HKE9Vr?=
 =?us-ascii?Q?CC+b12pB8RwkQ9dp4TjWW7cqsw3Xq96OgBcwCDOig9qRW9kft/OiasBgZ3sX?=
 =?us-ascii?Q?VRXz2Q8nBkJ0ciCyUUkcq6p2BN9aYscn2wzCa+oXRwZzUy/MO8f3IkBP0Tac?=
 =?us-ascii?Q?1Q01OL0cFFWBW4NU6w8cx2BnydVAF2Iffelye/JCM9/JXFTlorOjJdo7WPR7?=
 =?us-ascii?Q?T6UyNIDGc7m/hjIs9qVKuPmyjxr81vo+IsE5przWugMiy2/5Wqm1rUCwtidw?=
 =?us-ascii?Q?o3I764cRUpjbaitgYILRLDBXAytFXeCvlLw35OdsegM54SZUUqpw6RTi7RF6?=
 =?us-ascii?Q?gWDZXLcuk3FiWYLNGA7nKCHJkudIL6hsLXIOs22nxf16D00HZuoPDZkt8qPS?=
 =?us-ascii?Q?otTI1c45rhBC+bDQ9aymaKl+yu3xv7c6gqFYqAT1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ee4a340-b1d5-4acb-0c36-08dd6b98a0d8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 12:29:03.9041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MBok+qj4aU+FgxPnqr4u9TlZ2rSabquSHdQhXtmhB/7KDTZmoURGM3hc/qYuBFthvxWGQrNZWoqYezGVyDuwEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
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

On Mon, Mar 24, 2025 at 10:56:48PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix DP MST DB message timeouts due to PPS delays
> URL   : https://patchwork.freedesktop.org/series/146680/
> State : failure

Thanks for the reviews, patchset is pushed to drm-intel-next.

The failures are unrelated see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16309_full -> Patchwork_146680v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_146680v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_146680v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_146680v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-snb6/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-snb1/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html

The above host has only an HDMI connector, so the failure is not related
to the patchset containing only DP AUX changes.

>   * igt@kms_flip@blocking-wf_vblank:
>     - shard-mtlp:         [PASS][3] -> [FAIL][4] +3 other tests fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-3/igt@kms_flip@blocking-wf_vblank.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-8/igt@kms_flip@blocking-wf_vblank.html

This host has only an eDP output connected, where the patchset doesn't
change the functionality, so the failure is unrelated.

>   * igt@kms_flip@blocking-wf_vblank@b-hdmi-a4:
>     - shard-dg1:          [PASS][5] -> [FAIL][6] +3 other tests fail
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-14/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_flip@blocking-wf_vblank@b-hdmi-a4.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-tglu:         [PASS][7] -> [FAIL][8] +6 other tests fail
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-tglu-3/igt@kms_flip@plain-flip-ts-check.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-2/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2:
>     - shard-rkl:          [PASS][9] -> [FAIL][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-1/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2.html

All the above hosts have only an HDMI output, so the failures are not
related to the changes.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_146680v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#8411])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@api_intel_bb@blit-reloc-keep-cache.html
>     - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#8411])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#6230])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#11078])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#8414]) +5 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][16] ([i915#8414]) +7 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#8414]) +8 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#3281]) +11 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#7697]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9323])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@gem_ccs@block-copy-compressed.html
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3555] / [i915#9323])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#13008])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#9323]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][24] -> [INCOMPLETE][25] ([i915#13356])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#7697])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#7697])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#6335])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html
>     - shard-dg2-9:        NOTRUN -> [ABORT][29] ([i915#13427])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#8562])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#8555]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#8555])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-many.html
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#8555])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][34] ([i915#1099])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#280]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@gem_ctx_sseu@engines.html
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#280])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#280])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_ctx_sseu@mmap-args.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#280])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg1:          [PASS][39] -> [DMESG-WARN][40] ([i915#4391] / [i915#4423])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-15/igt@gem_eio@in-flight-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-19/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4812]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4771])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@gem_exec_balancer@bonded-sync.html
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4771])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@hog:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4812]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@gem_exec_balancer@hog.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#4525]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#4525]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu:         NOTRUN -> [ABORT][47] ([i915#11713])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][48] ([i915#6334]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#6334]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#6344])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3539] / [i915#4852])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#3539] / [i915#4852])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#3539] / [i915#4852]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-dg2-9:        NOTRUN -> [SKIP][54] +4 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3281]) +7 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3281])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@gem_exec_reloc@basic-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#3281]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gem_exec_reloc@basic-gtt.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#3281]) +3 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4537] / [i915#4812]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_schedule@wide:
>     - shard-tglu:         [PASS][60] -> [INCOMPLETE][61] ([i915#13391]) +1 other test incomplete
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-tglu-7/igt@gem_exec_schedule@wide.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-5/igt@gem_exec_schedule@wide.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4860])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html
>     - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#4860])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gem_fence_thrash@bo-write-verify-none.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#4860])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4860])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#4613]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#4613]) +2 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#4613]) +6 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][69] ([i915#4613]) +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk1/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#284])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@gem_media_vme.html
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#284])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][72] ([i915#4077]) +8 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_gtt@pf-nonblock:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#4077])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@gem_mmap_gtt@pf-nonblock.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4083])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_mmap_wc@read-write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#4083]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_mmap_wc@read-write.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4083]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@gem_mmap_wc@write-prefaulted.html
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#4083]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3282]) +10 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pread@display:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3282]) +4 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@gem_pread@display.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu-1:       NOTRUN -> [WARN][80] ([i915#2658])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4270]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [PASS][82] -> [TIMEOUT][83] ([i915#12964])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#13398])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4270]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#4270])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_pxp@regular-baseline-src-copy-readible.html
>     - shard-rkl:          NOTRUN -> [TIMEOUT][87] ([i915#12964])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-rkl:          [PASS][88] -> [SKIP][89] ([i915#4270])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][90] ([i915#12917] / [i915#12964])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2-9:        NOTRUN -> [SKIP][91] ([i915#3282]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#5190] / [i915#8428]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_render_copy@yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#8428])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#4079])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#8411]) +2 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4077]) +5 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@gem_tiled_swapping@non-threaded.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3297]) +1 other test skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#3297])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3282] / [i915#3297])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][101] ([i915#3282] / [i915#3297])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#3297] / [i915#4880])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3281] / [i915#3297])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3297])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@gem_userptr_blits@unsync-unmap.html
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#3297])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#3297])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_vm_create@invalid-create:
>     - shard-snb:          NOTRUN -> [SKIP][107] +77 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-snb1/igt@gem_vm_create@invalid-create.html
> 
>   * igt@gem_workarounds@reset:
>     - shard-mtlp:         [PASS][108] -> [ABORT][109] ([i915#13193]) +2 other tests abort
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-1/igt@gem_workarounds@reset.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-7/igt@gem_workarounds@reset.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#2856]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#2527])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@gen9_exec_parse@batch-invalid-length.html
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#2856])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#2527]) +6 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#2527] / [i915#2856]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#2527] / [i915#2856]) +3 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#2856])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_fb_tiling@basic-x-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#13786])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@i915_fb_tiling@basic-x-tiling.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#8399])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#8399])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#6590]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#11681] / [i915#6621])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#4387])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@i915_pm_sseu@full-enable.html
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#4387])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [PASS][124] -> [DMESG-FAIL][125] ([i915#12061]) +1 other test dmesg-fail
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#7707])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][127] ([i915#4212]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#12454] / [i915#12712])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#8709]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#8709]) +3 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#8709]) +3 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#12967] / [i915#6228])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_async_flips@invalid-async-flip-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][133] ([i915#12967])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip-atomic.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2-9:        NOTRUN -> [SKIP][134] ([i915#9531])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#9531])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#5286]) +2 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#5286]) +11 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#5286]) +4 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#3638])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3638]) +6 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
>     - shard-glk:          [PASS][141] -> [DMESG-WARN][142] ([i915#118])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-glk4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#4538]) +2 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] +2 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#12313]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#6095]) +54 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
>     - shard-dg1:          [PASS][150] -> [DMESG-WARN][151] ([i915#4423]) +3 other tests dmesg-warn
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-19/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-12/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#10307] / [i915#6095]) +157 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#12313])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#6095]) +114 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#6095]) +134 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#12805])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#6095]) +34 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
>     - shard-glk:          NOTRUN -> [SKIP][158] +185 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][159] ([i915#12796]) +1 other test incomplete
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#6095]) +23 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][161] ([i915#10307] / [i915#6095]) +39 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#12313])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3742])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_cdclk@mode-transition-all-outputs.html
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3742])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#13781]) +3 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][166] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#11151] / [i915#7828]) +7 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_edid@hdmi-mode-timings:
>     - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_chamelium_edid@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#11151] / [i915#7828])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#11151] / [i915#7828]) +11 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2-9:        NOTRUN -> [SKIP][173] ([i915#3555]) +2 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2-9:        NOTRUN -> [SKIP][174] ([i915#7118] / [i915#9424])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3116])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#3116] / [i915#3299])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#3299])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#6944] / [i915#9424]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_content_protection@lic-type-0.html
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9424])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][180] ([i915#7173])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#9424])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#6944] / [i915#7116] / [i915#7118])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#7118] / [i915#9424]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-256x85:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][184] ([i915#12964]) +11 other tests dmesg-warn
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#3555]) +2 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3555]) +11 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-tglu-1:       NOTRUN -> [FAIL][187] ([i915#13566]) +1 other test fail
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][188] ([i915#13566])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x64@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [DMESG-FAIL][189] ([i915#118]) +1 other test dmesg-fail
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@kms_cursor_crc@cursor-random-64x64@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#13049])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#3555])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#13049]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][193] ([i915#13049])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][194] ([i915#12358] / [i915#7882])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk1/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][195] ([i915#12358])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk1/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][196] +33 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][197] ([i915#13046] / [i915#5354]) +3 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#4103])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-snb:          [PASS][199] -> [SKIP][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#13046] / [i915#5354]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#9067])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#9067])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#9723])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#13691])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html
>     - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#13691])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#13749]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#13748])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][209] -> [SKIP][210] ([i915#13707])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
>     - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#13707])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#13707])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>     - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#13707])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#3840])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][215] ([i915#3840] / [i915#9688])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#3555] / [i915#3840])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#3555] / [i915#3840])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-dg2-9:        NOTRUN -> [SKIP][218] ([i915#3469])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_fbcon_fbt@psr.html
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3955])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#3469])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#2065] / [i915#4854])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#1839])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#1839]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#9337])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#658])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_feature_discovery@psr2.html
>     - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#658])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][227] ([i915#3637]) +4 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#9934]) +2 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#9934]) +11 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#3637]) +9 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][231] ([i915#9934]) +5 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@blocking-wf_vblank:
>     - shard-glk:          NOTRUN -> [FAIL][232] ([i915#13734]) +3 other tests fail
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@kms_flip@blocking-wf_vblank.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race@a-edp1:
>     - shard-mtlp:         [PASS][233] -> [FAIL][234] ([i915#10826]) +1 other test fail
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-6/igt@kms_flip@modeset-vs-vblank-race@a-edp1.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-8/igt@kms_flip@modeset-vs-vblank-race@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][235] ([i915#11832])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-rkl:          [PASS][236] -> [FAIL][237] ([i915#11832]) +2 other tests fail
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-1/igt@kms_flip@wf_vblank-ts-check.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#2587] / [i915#2672] / [i915#3555])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#2672] / [i915#3555]) +5 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#2672] / [i915#3555])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#2587] / [i915#2672]) +1 other test skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][242] ([i915#2672] / [i915#3555]) +1 other test skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#2672]) +5 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#2587] / [i915#2672]) +1 other test skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>     - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#2672] / [i915#3555] / [i915#8813])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#2672] / [i915#8813])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#2672] / [i915#3555]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_tiling@flip-change-tiling:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][250] ([i915#12917] / [i915#12964])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@kms_flip_tiling@flip-change-tiling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#8708]) +4 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#8708])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][253] ([i915#8708]) +10 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][254] +5 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][255] +60 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][256] ([i915#10056] / [i915#13353])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#5439])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#10055])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][259] ([i915#3458]) +8 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#3458]) +9 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#1825]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][262] ([i915#3458]) +3 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#1825]) +63 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff:
>     - shard-dg2-9:        NOTRUN -> [SKIP][264] ([i915#5354]) +11 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][265] +53 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#5354]) +21 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#3023]) +41 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#8708]) +10 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#3555] / [i915#8228])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2-9:        NOTRUN -> [SKIP][270] ([i915#12713])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_hdr@brightness-with-hdr.html
>     - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#12713])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2-9:        NOTRUN -> [SKIP][272] ([i915#3555] / [i915#8228])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_hdr@invalid-metadata-sizes.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#3555] / [i915#8228])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglu:         NOTRUN -> [SKIP][274] ([i915#3555] / [i915#8228])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [PASS][275] -> [SKIP][276] ([i915#3555] / [i915#8228])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-10/igt@kms_hdr@static-toggle.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-4/igt@kms_hdr@static-toggle.html
>     - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#3555] / [i915#8228]) +1 other test skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_invalid_mode@zero-hdisplay:
>     - shard-rkl:          [PASS][278] -> [DMESG-WARN][279] ([i915#12964]) +11 other tests dmesg-warn
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-1/igt@kms_invalid_mode@zero-hdisplay.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_invalid_mode@zero-hdisplay.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#10656])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#12388])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#12394])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#12394])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][284] +7 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][285] ([i915#8806])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#12247] / [i915#9423])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#12247]) +3 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#12247]) +13 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#12247]) +4 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:
>     - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#12247]) +4 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
>     - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#12247]) +4 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#12247] / [i915#6953])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#12247] / [i915#3555])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#12247]) +6 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#9812])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][296] ([i915#5354]) +1 other test skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-tglu:         NOTRUN -> [SKIP][297] ([i915#9685])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-dg2-9:        NOTRUN -> [SKIP][298] ([i915#3828])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_pm_dc@dc5-retention-flops.html
>     - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#3828])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#9340])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][301] ([i915#9519])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html
>     - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#9519])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][303] -> [SKIP][304] ([i915#9519])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [PASS][305] -> [SKIP][306] ([i915#9519]) +1 other test skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][307] ([i915#9519])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#6524] / [i915#6805])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_prime@basic-crc-hybrid.html
>     - shard-dg1:          NOTRUN -> [SKIP][309] ([i915#6524])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#6524]) +1 other test skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][311] ([i915#11520]) +5 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][312] ([i915#11520]) +2 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
>     - shard-mtlp:         NOTRUN -> [SKIP][313] ([i915#12316])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#11520]) +14 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][315] ([i915#11520]) +7 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][316] ([i915#11520]) +4 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][317] ([i915#11520]) +5 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][318] ([i915#11520]) +6 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-snb:          NOTRUN -> [SKIP][319] ([i915#11520]) +1 other test skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-snb1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#9683])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-tglu:         NOTRUN -> [SKIP][321] ([i915#9683])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_psr@fbc-psr-cursor-plane-move.html
>     - shard-dg1:          NOTRUN -> [SKIP][323] ([i915#1072] / [i915#9732]) +6 other tests skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][324] ([i915#9732]) +14 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_psr@fbc-psr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@pr-cursor-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][325] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_psr@pr-cursor-render.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][326] ([i915#9732]) +14 other tests skip
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr2-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][327] ([i915#1072] / [i915#9732]) +36 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-7/igt@kms_psr@psr2-suspend.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#9685]) +3 other tests skip
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#9685])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][330] ([i915#12755])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][331] ([i915#5190])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>     - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#5190])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][333] ([i915#12755] / [i915#5190])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][334] ([i915#12755])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][335] ([i915#12755] / [i915#5190])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>     - shard-rkl:          NOTRUN -> [SKIP][336] ([i915#5289])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][337] ([i915#5289]) +1 other test skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg1:          NOTRUN -> [ABORT][338] ([i915#13179]) +1 other test abort
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@kms_selftest@drm_framebuffer.html
>     - shard-mtlp:         NOTRUN -> [ABORT][339] ([i915#13179]) +1 other test abort
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic@pipe-b-edp-1:
>     - shard-mtlp:         [PASS][340] -> [FAIL][341] ([i915#5465]) +2 other tests fail
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-3/igt@kms_setmode@basic@pipe-b-edp-1.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-8/igt@kms_setmode@basic@pipe-b-edp-1.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][342] ([i915#8623])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][343] ([i915#3555]) +4 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-8/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-dg2:          NOTRUN -> [SKIP][344] ([i915#3555]) +2 other tests skip
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          NOTRUN -> [SKIP][345] ([i915#11920])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-rkl:          NOTRUN -> [SKIP][346] ([i915#9906])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][347] ([i915#3555] / [i915#9906])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@kms_vrr@negative-basic.html
>     - shard-dg1:          NOTRUN -> [SKIP][348] ([i915#3555] / [i915#9906])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-tglu-1:       NOTRUN -> [SKIP][349] ([i915#9906]) +1 other test skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2-9:        NOTRUN -> [SKIP][350] ([i915#2437])
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@kms_writeback@writeback-check-output.html
>     - shard-rkl:          NOTRUN -> [SKIP][351] ([i915#2437])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@kms_writeback@writeback-check-output.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][352] ([i915#2437])
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@kms_writeback@writeback-check-output.html
>     - shard-glk:          NOTRUN -> [SKIP][353] ([i915#2437])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#2434])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@perf@mi-rpc.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][355] ([i915#2433])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@invalid-init:
>     - shard-rkl:          NOTRUN -> [FAIL][356] ([i915#13663])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@perf_pmu@invalid-init.html
>     - shard-glk:          NOTRUN -> [FAIL][357] ([i915#13663])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@perf_pmu@invalid-init.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all:
>     - shard-dg2:          NOTRUN -> [FAIL][358] ([i915#11943]) +1 other test fail
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@perf_pmu@most-busy-idle-check-all.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-tglu:         NOTRUN -> [SKIP][359] ([i915#8516])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][360] ([i915#8516])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html
>     - shard-dg1:          NOTRUN -> [SKIP][361] ([i915#8516])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2-9:        NOTRUN -> [INCOMPLETE][362] ([i915#5493]) +1 other test incomplete
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][363] ([i915#3291] / [i915#3708])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][364] ([i915#3708])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][365] ([i915#12910]) +18 other tests fail
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1:
>     - shard-tglu:         NOTRUN -> [FAIL][366] ([i915#12910]) +9 other tests fail
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-3/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg2-9:        NOTRUN -> [SKIP][367] ([i915#9917])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>     - shard-rkl:          NOTRUN -> [SKIP][368] ([i915#9917])
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
>     - shard-mtlp:         [ABORT][369] ([i915#13193]) -> [PASS][370] +1 other test pass
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
> 
>   * igt@gem_exec_endless@dispatch:
>     - shard-dg2:          [TIMEOUT][371] ([i915#3778] / [i915#7016]) -> [PASS][372]
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-5/igt@gem_exec_endless@dispatch.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-4/igt@gem_exec_endless@dispatch.html
> 
>   * igt@gem_exec_endless@dispatch@vecs1:
>     - shard-dg2:          [TIMEOUT][373] ([i915#7016]) -> [PASS][374]
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-5/igt@gem_exec_endless@dispatch@vecs1.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-4/igt@gem_exec_endless@dispatch@vecs1.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][375] ([i915#11441] / [i915#13304]) -> [PASS][376] +1 other test pass
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-4/igt@gem_exec_suspend@basic-s0@smem.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [TIMEOUT][377] ([i915#12964]) -> [PASS][378]
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][379] ([i915#5566]) -> [PASS][380]
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-dg1:          [DMESG-WARN][381] ([i915#4423]) -> [PASS][382] +1 other test pass
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-15/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-12/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          [DMESG-WARN][383] ([i915#12964]) -> [PASS][384] +5 other tests pass
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][385] ([i915#12796]) -> [PASS][386] +1 other test pass
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-rkl:          [FAIL][387] ([i915#13566]) -> [PASS][388]
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][389] ([i915#1257]) -> [PASS][390]
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-2/igt@kms_dp_aux_dev.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-11/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          [FAIL][391] -> [PASS][392]
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-10/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-snb:          [FAIL][393] ([i915#11832]) -> [PASS][394] +1 other test pass
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-snb6/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-edp1:
>     - shard-mtlp:         [FAIL][395] -> [PASS][396]
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-7/igt@kms_flip@wf_vblank-ts-check@b-edp1.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-check@b-edp1.html
> 
>   * igt@kms_force_connector_basic@force-edid:
>     - shard-dg1:          [ABORT][397] ([i915#4391] / [i915#4423]) -> [PASS][398]
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-12/igt@kms_force_connector_basic@force-edid.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-15/igt@kms_force_connector_basic@force-edid.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          [FAIL][399] ([i915#6880]) -> [PASS][400]
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][401] ([i915#9295]) -> [PASS][402]
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          [SKIP][403] ([i915#9519]) -> [PASS][404] +1 other test pass
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [SKIP][405] ([i915#9519]) -> [PASS][406]
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg1:          [INCOMPLETE][407] ([i915#13520]) -> [PASS][408]
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-15/igt@perf_pmu@module-unload.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-16/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-mtlp:         [ABORT][409] ([i915#7975]) -> [ABORT][410] ([i915#13193] / [i915#7975]) +2 other tests abort
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-mtlp-6/igt@gem_exec_suspend@basic-s4-devices.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-mtlp-7/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-dg1:          [SKIP][411] ([i915#4538] / [i915#5286]) -> [SKIP][412] ([i915#4423] / [i915#4538] / [i915#5286])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-19/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-12/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][413] ([i915#9424]) -> [FAIL][414] ([i915#7173])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-snb:          [INCOMPLETE][415] ([i915#8816]) -> [SKIP][416]
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-snb5/igt@kms_content_protection@lic-type-1.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-snb6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][417] ([i915#9433]) -> [SKIP][418] ([i915#9424])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [FAIL][419] ([i915#7173]) -> [SKIP][420] ([i915#7118])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-11/igt@kms_content_protection@srm.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][421] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][422] ([i915#7118] / [i915#9424])
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-10/igt@kms_content_protection@type1.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-7/igt@kms_content_protection@type1.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg1:          [SKIP][423] ([i915#4423] / [i915#8381]) -> [SKIP][424] ([i915#8381])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-18/igt@kms_flip@flip-vs-fences-interruptible.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-14/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][425] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][426] ([i915#12745] / [i915#4839])
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-tglu:         [FAIL][427] -> [FAIL][428] ([i915#11832])
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-tglu-10/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][429] ([i915#4423] / [i915#8708]) -> [SKIP][430] ([i915#8708])
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-dg1:          [SKIP][431] -> [SKIP][432] ([i915#4423]) +1 other test skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][433] ([i915#8708]) -> [SKIP][434] ([i915#4423] / [i915#8708])
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          [SKIP][435] ([i915#10433] / [i915#3458]) -> [SKIP][436] ([i915#3458]) +3 other tests skip
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          [SKIP][437] ([i915#3458]) -> [SKIP][438] ([i915#10433] / [i915#3458]) +1 other test skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [DMESG-WARN][439] ([i915#12964]) -> [SKIP][440] ([i915#9519])
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16309/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11943]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11943
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13353
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13391
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13427]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13663]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13663
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
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
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16309 -> Patchwork_146680v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16309: 9be2a7099019ef52d17cbc2b3e6ba15cd638ec2c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8280: 8280
>   Patchwork_146680v1: 9be2a7099019ef52d17cbc2b3e6ba15cd638ec2c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146680v1/index.html
