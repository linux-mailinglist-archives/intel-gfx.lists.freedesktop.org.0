Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F10DF94C1C7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA0510E77E;
	Thu,  8 Aug 2024 15:48:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UhKJY2ho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1A210E776;
 Thu,  8 Aug 2024 15:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723132111; x=1754668111;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=emRTofjWf5FG3yZKSgn+3fbeVirscxlY0jhqwy4B1lw=;
 b=UhKJY2hoCSbwwoCeK+fstMX1qEq7uY39wq9/Etrepy2YI74EbPpnPtXl
 KKWmF4+ljoUsWmci7k2RX71ZEKw/iGovCppPGYVwNcn5WQ7dO2ycFqly3
 +xGkbaMeehvB4pRAgSU4IJaTPGS2YQI2RjgLHVeuJLVGhZN4RicrJlc/a
 sLZqr1ZGFgCAnJ1tCTmNxJL8RY+Hxehr6ZZIDFTKT1x1o1SczDm472I3A
 bkw6diUtVPAiLH0ZR4dYWxBpI5oXrFUMszSn34WeXaYvS3GqZqR0nOG2g
 vSH4aqLuCXBTwa3ZaI4Jch+Y9+5r1JJQWQg419RsYUxIANuqYkzBg1ZHk Q==;
X-CSE-ConnectionGUID: fQMd6yTjTMqvI3gpd3wVUQ==
X-CSE-MsgGUID: UuosXM0FQ7C5uzXSM5zKPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="20836266"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="20836266"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:48:30 -0700
X-CSE-ConnectionGUID: BhA42B6vSxyqVibRrbi6lg==
X-CSE-MsgGUID: Ju8vhKIGTASGnh2XgfHUpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="57348633"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Aug 2024 08:48:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 08:48:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 08:48:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 8 Aug 2024 08:48:29 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 8 Aug 2024 08:48:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SZsEQ2cUm8U65RsERYB0u/b5Hae53SjLwSlPeS075S9DZSOKsO35PClEyGHH4mWrgJAndBgIdg+g1Fs8hFocyBUpMKXN5k/HXJpjSoaWnp789skjEhMOwIDYz4Nui/eXRs3JsO1DdHeGUGzRACsVN3wrYUbQNIl+xxEzog3tmdzrr3HMqVDv3Hb93UL3gSRL4MaSBf9VowrR6joglrvmqQBqqW6See337fVmCPKKmT6A4vobmf3Sfl/NxlODMm53fOC4oXzQkb6rA3GsUpUPsfXgAtZJHQugCWDGMfrHF+ivMnti9QqeYZTcHXgz1NzSns2qpTftEJZ3I6tB+lnm7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=emRTofjWf5FG3yZKSgn+3fbeVirscxlY0jhqwy4B1lw=;
 b=HPnlmSCWNXY1AsB9jV1Mwu8tD1Dk7aMTbq5AqH/QQ3CpSgXBOUTho5VNat6mJJ4RM8KNBvnCRwkD+6Gew0vZDotErcak1zkSbQEOPod+fYcrxZSsCBBiw+9bCMbBgsWPNg2QwSW9ExlOID/DRJuS3+/jYA8FGlkw+JwJJ8VdX3bvGGUUgJotM5m2d4wI0fX/e0wE78FRnxMg29kVVdhVYKCrJRKL48E70sfIMnIJIVmMvJHgduZP3MuhS89iRV3IWkMwm33iIeDUrrFsRprBvhR3WbqQ1JilRCd3rXdfxJbe89ozt69mpppiQSRDnRZkowZkrogGKmNkLaTQF5gRbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB6346.namprd11.prod.outlook.com (2603:10b6:208:38a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Thu, 8 Aug
 2024 15:48:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7828.023; Thu, 8 Aug 2024
 15:48:26 +0000
Date: Thu, 8 Aug 2024 10:48:22 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Gustavo Sousa <gustavo.sousa@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 00/10] drm/xe & drm/i915: drvdata usage changes
Message-ID: <2pep6oj5dd7ocei2a3egnm3agoa46nxad2e6e2riwby66khfpt@22g2ari2u4ps>
References: <cover.1723129920.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0007.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB6346:EE_
X-MS-Office365-Filtering-Correlation-Id: 55cefdfa-3e33-4204-f3e3-08dcb7c18a7d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eVOeLJrL3Ln7seRmxemaHIU4vqvUBUf42k9Vrs6ZEgKUzAakVaunutLyED86?=
 =?us-ascii?Q?6niyQEfnqhvXgC0zGbjeRgEBX2ZjuBBm2Jr7pTU/CMOXc1Chh7QLVODNIlWd?=
 =?us-ascii?Q?QQqjErAHYUAWREYHh1C+Ex4nabZiI79AVt5b/haYGb0YALotxsRetDm3QVUi?=
 =?us-ascii?Q?Ly0jE/3CcASxdyWj1o9KdL0lSoGn1BOLXRsmTj0OWZtzUTTRKqHoqBRCSJI6?=
 =?us-ascii?Q?P7QOeJkhl20s6x9dpjN7hri7eWRS96OGqbflrXd9U2a/FjG6+npGv0NcTNB6?=
 =?us-ascii?Q?eFGmxNulksczePuhRgahjsdopaBp+CznQPpTgz1hkjq7OXFIYrqUx63fUaui?=
 =?us-ascii?Q?u+NHjjbJ2x/c8X+R6P5tOYJHfDqota/WvCs4gvRNzeKD+NiUrqVDG0y64eRm?=
 =?us-ascii?Q?oj8o8sGkr+mXz/c0Wb4Gv6t0dGUyIkSYsX0AwUuurL35IlHViaJd8hJtiL7I?=
 =?us-ascii?Q?O3PhLbyI0H293yNo2HdbYl38aefvW61gnr9NuKssw3vU51FG/wwOrMTzsImF?=
 =?us-ascii?Q?Ej4uchOsixo9CoM/m7Oa0/nzvgO4msRLVrNQ83vIkciwbovtwk/eGxjyoszx?=
 =?us-ascii?Q?6fxrmc4khwC7eoW7KpEpSE/NYCz/ZLyOInN+lbBDRzBh/X+F5Akjp7orpgkH?=
 =?us-ascii?Q?Qk9ILe+JAhhTB8AB6PvMwasu3MexlZ5WwZNpuS05f02l2Xs2bWbxjkE67e4I?=
 =?us-ascii?Q?BKyuRDh42RD20Jcvxisdm67gOCRvXYjlFg2+/2rtz8YFj9fgjJYb3JJvgEKw?=
 =?us-ascii?Q?oWJdCL3snolqC9RgsfRQZEfFuDOPhd33MZ3uXPPQdU4QE0KbHlbvKNyhK1fN?=
 =?us-ascii?Q?X+froZd827VvKoDGTQOf03Qhm2DaDKDrRjwJPiiXLytYJXutIrMMBVYKlvB8?=
 =?us-ascii?Q?Biw87bkB9mK9HrV/UyXVlubzG6awg6Mtf1SRTZ2wqAUn1D+lwgE2NJSWo2ky?=
 =?us-ascii?Q?ir5BsMtVoXm5QNein8wLaZWs5i86qO+z8lpfwh3u+guyvMqOcFhFB546HqMt?=
 =?us-ascii?Q?H062H9wC+xvo17QttL6gy9Q1TOTWThC2IB6/a2eqLoNBBLEz+yz62LERor9d?=
 =?us-ascii?Q?GTFMO8UIj2nWs97IGK7gLG4+QzRxGT4G53esC1thLbzJ+OdXNmvou1YDJk+8?=
 =?us-ascii?Q?04knvFyCdbtDAExnLQGIvOumJR9/MEMSugu6gahGH2fP1T6OZqB/bDKOnkIv?=
 =?us-ascii?Q?MPloKMYvGb0gM2o3ak/ngUqCBs2EO7paf50KIt+zUw2JGPTFMHHAQxVp5if6?=
 =?us-ascii?Q?eKzZpRYRjVzHtppJW576or7du76dZhJSXa+tVNjl1t3diaAxWFaEvDIVWlUj?=
 =?us-ascii?Q?wWs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H18myDF7f75l7NlQdYBENpRq3YYSQKZ3H/GL9rOMXtf0NYvgJ8v+fsND7P2f?=
 =?us-ascii?Q?q19MKE616MCgt4hfcClgoLC7coWokL77DhVzNTNPlis5wt3sAA1b7XPccW9G?=
 =?us-ascii?Q?qWc5DT8SPG20kX1+UEhbcVrvMC2RywJohELO0wvWIrzr+I26l5BIIuihDJ2F?=
 =?us-ascii?Q?JBvg77h7O7tRzpwJcb21qBMNIKzsqrnbRceieKrpEjYpUfA3EGEeTmSN6mIk?=
 =?us-ascii?Q?fE6CUJszZiGX1wuQCcAAQRjtVDl766/Mr0AzAoprndaspJxcqL58usN9Tfa0?=
 =?us-ascii?Q?lVx/Q9OCVupMhfA2i+CopLIZMSSWU4wO95XcpAtmDAy55l/0kRRuzcsVWDfW?=
 =?us-ascii?Q?QmObNx6fvA3yDaTmQzw8H49LPwfsunYk02hrh6jlhHQSGRV+Y1VeM3pWkzsi?=
 =?us-ascii?Q?FKlqleu1Mb48NhdwfI1lek27ozgJ2BHdhSwvre+Nbn3mxfZdG+jrL5umLQyr?=
 =?us-ascii?Q?Bef0nqSRkE7Iig+4NagkRuDs5REtWUX7aaVvY2MFE5aFlIAcfecn4lk02CzD?=
 =?us-ascii?Q?1iM3/BLvposFXv0Q2ZaPMRLbdZCmFMe3a66FYhytyZkE8abJDdV68wA9xwOW?=
 =?us-ascii?Q?7wTYrOrjxS8Uk6g2cdmonc5VGoEzqOjG21GTS6FV4uU1vIF0iyE8+Yv5RYa6?=
 =?us-ascii?Q?R3nR7Y8QMyto7IF8fC4eeAyNy9SIOeXp6VwNs8HizyxJAqCi6O+KElcrcVkk?=
 =?us-ascii?Q?3g0cH++IG9VU0gchG4iNc+5HqbCDJ76md0z2fV3v19jbdFphKD1Ivb9fStPc?=
 =?us-ascii?Q?LxiX7AgoW0E7imhRiZxqt1VUanOOKpMOI9QNnqXROYJN7uYcIi7C6vy7kBLU?=
 =?us-ascii?Q?GYIZZy0C2MxspEwbTD5LrOzENFxSK1RbUppfgZOOI+IyucWJuC5a+TE4QWcG?=
 =?us-ascii?Q?CEMNRYMmNfZQJRjI+6PxLla6iUs3m8Tj76JmPPXMK7ldlN++/IibK5MDYmoQ?=
 =?us-ascii?Q?b8DyAuYc8UcZJGceElkVn41JPnN8j4DWIPZdxJ03h7nuYXtXtJZmOWWKdNAr?=
 =?us-ascii?Q?ZQ1YYJdnrAdA6Y5z4tTIGOYdiezmFSCGotI9Gk30a6P4DR2ya0yoDl8Bpgj4?=
 =?us-ascii?Q?RjAXdruw2zd6wsL46VKbyzOtPCpZfAYKGLMctA+eeQJjBtG9ST+T9ODQtw6V?=
 =?us-ascii?Q?aSQwO53cU5iv8oZ2alEX69sZIi+LTJ8lhlSxlXItA2/QfxXeM4SLHKjigzhd?=
 =?us-ascii?Q?wvoDBmxl3hYiIwR28jOMksdpEI+ga796/nvBkzZTNkaifiCZkwSzTiFFPcya?=
 =?us-ascii?Q?T86Jt9kTnAnKdMqPAvjT+o1WylWAgp+Xr4BKPVuO660tBJ1vFGjq3TfeMLKb?=
 =?us-ascii?Q?HQVOR2UF3MxZz2KS0Y04ZtBoM62EmFShxI4+f+KN4MY0yuXGgjnG6/YSh7w7?=
 =?us-ascii?Q?5ipLFIB+uckMbDAXmctYUXLT1B9xMCmO+DiMOiVrlRR0dXhuAoDdZKAV4qQo?=
 =?us-ascii?Q?MdPQHMtqr2buUjravdEdhOUaTuY09pu2FwyHyHpdgNqV4TNiPCnBmIb3YvNh?=
 =?us-ascii?Q?zJJgMerIebu2O8NGlE/lVSBM5w+U2tni+vGgfETAUri4bnArYVAAanCdH1RN?=
 =?us-ascii?Q?Fi1FtzC3d4R9wTIJ1zXAyKeXSdZEdeKtZRP1TyZUMOwzCWpCiR5S7cvFizUn?=
 =?us-ascii?Q?cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55cefdfa-3e33-4204-f3e3-08dcb7c18a7d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2024 15:48:26.0817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OA5o78RJQRb2cSy/YLFny4ILw/sfA3eRTEXNFwmkU/N9uvs6xG8HbA7yKU2ecmu+wsHHh4C6Ku1OCd+0OAV2Enz2bPLKPqVmzPIBeMj6QgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6346
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

On Thu, Aug 08, 2024 at 06:15:45PM GMT, Jani Nikula wrote:
>v2 of https://patchwork.freedesktop.org/series/136621/
>
>Removed "drm/xe/tests: fix drvdata usage" from v1 in favour of
>"drm/xe/tests: remove unused leftover xe_call_for_each_device()" here.
>
>Due to the display dependency, I think it would be best to merge the
>whole thing via drm-intel-next, and do the first drm-intel-next pull
>request and backmerge from drm-next to drm-xe-next in fairly quick
>succession.

I was waiting the drm-intel-next pull to do a backmerge as we started to
have some big divergences. I will try to review the missing patches to
expedite that. Are you planning a pull this week?

Lucas De Marchi
