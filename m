Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4427DC6EEFC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 14:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DA210E60A;
	Wed, 19 Nov 2025 13:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QgP7bl5v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBFD10E60A;
 Wed, 19 Nov 2025 13:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763559411; x=1795095411;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=h7Jk4DhU7ujVbRxtJjvfMD+Y2WCkBj06hB7bsC9e/RU=;
 b=QgP7bl5vWv8GEQrjUYYWBZNkhBXv5QS+bTwxx9phKcf/WMpysmzn2k/2
 5MfY0T/8vW5473khlgH4Kpphrbvqq4P6yfr4L8zsT4bG29Ab1TEQBm4lS
 B6Y3XGeA5TcwIa+JvOXl63Ntszof4i2tnYMRj3g3R8XVuA/x0GLxthfcW
 tJivO+FScoA3OBGq4UrDtZoeU9Rag9ZejPxt1uz311HNrqPpUAoQIKNQA
 TLGNHVUvoVM7Yr3o3XiHqI4KSja9itzCPkWtbnk7ecN1ZWSMZjbsAD/Q8
 GIk7JKJDMid/v2CW/hiX2mjZ0nB5IAIq/iPBs6PTNtscw/dFjY1t1aQJU w==;
X-CSE-ConnectionGUID: hkJwbbPJTwWBCxrZ2esEaA==
X-CSE-MsgGUID: SvoZ7WuGRVWuARhpxEb69g==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="53169880"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="53169880"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:36:50 -0800
X-CSE-ConnectionGUID: DWTifmUHRUKdcLY7YNXByw==
X-CSE-MsgGUID: wLMY09+WQGKR0Lp2lSU9Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="190322157"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:36:50 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 05:36:49 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 05:36:49 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 05:36:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Iqugouqjugk6PVWNPcTS2KgdKWXgVuw2umgi1OT4L8pvoMMCgKcgJP97Lkexlje+ZnFvW63gBknGH5866NCXQ2XDdguERtBXmvTiOYOSaZLJ5cOnC/ZnrPwQNw16Vy07lCtNKShAEN0P3ffvgL633A7DwiVKYXlRmuV6VJwBirk6OTdoCucQdaBVuptjDRRPnrbXqg25JQchK0vtDk++dF+h4LzgP0o16CIq9baFLYfVaTtMP8Pj1OePn6M8n5yzM5h2ZfeGP5WAztZWwcTKxYbOBHrfrgBqWYwlJ07OVwji0XEydAjNs7PmtPxNtJWmm4Mqlp0SDhZ8qAlL2KkQzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/V/fgBeucFFOostn1uv/pu+t4yXizbi9zx4pUXakuD0=;
 b=PUtrb5pBiv6Dp5M1rvTCDlbUWzt3Ut0YKrOU+uSPe0p7nndjVVC7JojD/JQihyy6MON0wulDAYxmtSyCOcenNtEYcamrvfXuAnTK+/C+yQB4l/c80qhk2lvJRh6HdZOZxEs+Qx/+uauiHU4sMNPeFOkyIMhgIrMxCq2muW0TPYuWpwE0MZY8Gn71PZQXZmxTezRmchhVT4KfWMeoxxaC9uWwrPte5qiR1znkBu0dCHv3VfkpWZnpgoZ/jrVvfoCfglrHixtVJbSocFvVONnQDVTcVPcuVpDBusa1XQcLuS6Tx3i7WhWCiEcixO7d7UXvkkW7ssWMreTpC/P5uSYyGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7136.namprd11.prod.outlook.com (2603:10b6:930:60::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 13:36:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 13:36:47 +0000
Date: Wed, 19 Nov 2025 15:36:41 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 3/8] drm/i915/display: Handle dedicated external ports
 in intel_encoder_is_tc()
Message-ID: <aR3H6ZvLdGnbD6T-@ideak-desk>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
 <20251114-xe3p_lpd-basic-enabling-v5-3-c183388367f4@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-3-c183388367f4@intel.com>
X-ClientProxiedBy: LO4P265CA0104.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c3::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7136:EE_
X-MS-Office365-Filtering-Correlation-Id: ae7b3958-c453-417a-1721-08de2770aff0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gfy9ytz5HGvDWaTRhnfzeUH+MXSYvvrrPFi+681Mkn/H1umo03YsSNPX8N9g?=
 =?us-ascii?Q?5aDP9YOUh0InhEh5o6/by7uhiimgd+iIuMFQdS1/MwldZKHZJiIYnGeCvRM5?=
 =?us-ascii?Q?4NWi2O4QNbsUWHr5oXVSUEVtm4kyyWevQdwOJJQ9TQ+/u0SHbVbY2nPqBg3K?=
 =?us-ascii?Q?R2OJaVH/L3G65zFrfdVYlhC8obkaITbyybRaNJcMVUbUgj/TeP4nEb3tFmb7?=
 =?us-ascii?Q?tC+twAVwLGwRtUqIER4+gFQm+Qvy1a6SzbKJKRLwh1eEoKgxymylNEwbHjtv?=
 =?us-ascii?Q?DpK2X2pmamtXxCFJTslOcTwNPw2fyQolttqjYFHoZueRLD81Shl5qzEUj//r?=
 =?us-ascii?Q?RxtH/62WMW3wqmaVFantqNYRg4AKFY7pqtlYpDxKhUhretNAYajpnZpcHYtY?=
 =?us-ascii?Q?Y3LzeINbHYlPsK0LBKeuLjSoeCDfajy1ts4hFZhIYlEBkpFh6XULYcfoakA6?=
 =?us-ascii?Q?sXLbzfr3P0r+T4HRlfNFsTQjni284mKhdFU99gBEyTNv/C3BGWQFl7wxU5DC?=
 =?us-ascii?Q?bg6QPxiLyKu4OG4JZ5lvKKwAGXboz7SFlUML77OvF6Rgut9mTwJn/kNdYPts?=
 =?us-ascii?Q?c4r1+vBJwKwlDhrYXg49vrbxO7yDRHJBAkSdYxm3WQiyW53pzcgUtCZ/Z1ar?=
 =?us-ascii?Q?uRFIlI2mgYQ5cU73SL6lfmDA2+7Lv/PclL7ZKXPb8LitpPI54IBdVBZinDYd?=
 =?us-ascii?Q?PEdLF1w9vZ7foIx7y/KEbJibR1inDTZS/sHN8HjhFGJuNHks8c4nY3s2eczZ?=
 =?us-ascii?Q?YyVM+SbId28zGPBj3uvkKQstsSRHSsX2iygg1932Jp8p1VxDwZGtXvVkv/IT?=
 =?us-ascii?Q?VwwjLI1K1lPhqtmLXkzLAMouMuiOMbA0hpVNmD8xdOxr8UEP92KrKDTdEjiv?=
 =?us-ascii?Q?2RxN2ppnJXP81k90Vr9TCYZMAAbSX20kFsDbJXvAGKdw3rj5v67lxAfWKUZ4?=
 =?us-ascii?Q?9fPn2WFAA8Njl64jNeizKpQV5pBPdx0EikEreSRNhKz6JW3R/vsfRv7OIAIf?=
 =?us-ascii?Q?/fGoFFNjWKeUWAky76crw4T4T0IY1j2TBZTXqPM//TGoNctI3hCuNFos5GcZ?=
 =?us-ascii?Q?Q5DPYnHokqo4AKQ4iMF4rtUROOg3E7kQHvd/rHUzXQPfDlG8WokWiaWzdzZt?=
 =?us-ascii?Q?DbQlnErOEvqhCyhuvbb3lnYMYaqZxvaFbohkXY4I40F7ubh7DXx6iG/sH6vS?=
 =?us-ascii?Q?RlYs5FQB4gWGts3EBc/yDGUVvmIuWe/UYpF9aOGHN6OvJIK5KpFnI/q05Hnj?=
 =?us-ascii?Q?rf3/zyL8BMgMud7rhQ+2RcDIW3SuYjS/efU9GDV2hlsyiBTFWLmyD1KqiA1c?=
 =?us-ascii?Q?mFkEEHz16ELg5YUo44+SmCCVLOFJwyiKXq397h6eiT+gXpTWQlBgdnR0OH2t?=
 =?us-ascii?Q?neXij/F36gdptq0PE3EBaOTEIh+C3evTNdY9RMb5Z9K7llgXFiEinY5QhEpi?=
 =?us-ascii?Q?a7pL0z2Bd7E003mZU/d60QUtzWyniz+u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6wm9u4G+s5NuMQZ0SSk/hrsZ3N2F5ZjTO7RSlk5KExA7pxMYkBJQjr7C9aYo?=
 =?us-ascii?Q?IuZW7xH1PGrS5zIAD8PQ+vxuRepOABmZkp07Wt5Sz8krrERMjMc7MfWUrAVF?=
 =?us-ascii?Q?mAMIWeToaWTXmA+3i5t4akw+QEXRUPu+dPAm7ms0HeGCq3zqF8YoDLN+1n3F?=
 =?us-ascii?Q?XVv9Iwnxkh3Q8EfnmC7Ryhu5iKN8IuWXEoMronmWUMAmfFhjmIE+kaAYH0Md?=
 =?us-ascii?Q?el6oda7GeMLWdRyPOGybStRt5YDKc9JVh1hRGJMStOdoYO4/ngVcwRvGvIsK?=
 =?us-ascii?Q?aOOpYXhhQ3mK5j62wkXF3M1LFr4BvL1HgSCoP3uaD/585lenGiGHRfoNqy4+?=
 =?us-ascii?Q?vt6noXtxsCky+Az1zhiSODY8UqS1evbmx5r3UY1R5fktoh7p0t2KNpozN5SF?=
 =?us-ascii?Q?16Q3YPP5i3KbJ5jEg4eGdFQF4P45KJpKpbMpkMNYrn13M5JKuu7+hxaIe5uN?=
 =?us-ascii?Q?5FhUzax3W0Y/cOSSeZJe5CbLnBKdOXhV/IDSGDn+RTDyK2bv9HKVE66XMTUS?=
 =?us-ascii?Q?YxUO9NqU0OdUPl5HoUFk7OXW37mXNkO6MI8EpA58CREp2amqce9vxI3z4fyZ?=
 =?us-ascii?Q?zi46wMnokzjWksTTwPUGfjvPl6I9jz3ze247q7xp9b3oXeRxw2LUI13mLTDg?=
 =?us-ascii?Q?EipEWz670Oluve2eCIjB5aq6d+bj5fFr2fAIW/shLy+Mnll2Oga3gf1w0kwk?=
 =?us-ascii?Q?n23/tL9nwWRBXEamO12iPm8ks7SftQt7JP4ObG9LOgB/6TVfvOHcHSkkw2oA?=
 =?us-ascii?Q?XSoRqBckq71/O9QdQJGrkWpuIjf/ZqSFIef4UgHfwVXNDgHemIeMf1iKDi7n?=
 =?us-ascii?Q?UuOMy56OvaK3NrfOhij+Wd7t60qym701ik+/cXuyuq4lDYx6V5JzlPo/2eFG?=
 =?us-ascii?Q?OhGLkb2SjAWbbal/5MIrk16eaQykvx+zhDxw8Ldt3P83Ll8sq6bEdJhKTwDC?=
 =?us-ascii?Q?J2OVbw9oxLXbCgs28XwMQWiBpzKpNxj8erCYIm2oNvIgHfw9ygkInMmVdioU?=
 =?us-ascii?Q?Kk0/3W5hqYAliG8VMms0F/IgOPGDvkXtri34IRAS62UChyAKtq7dlfxq84+D?=
 =?us-ascii?Q?TlibwekAnpq2DOu5fTaspbuMbPXduIoSEVDTWEOAyrAxm8Xlz6ROZ3YrYQ72?=
 =?us-ascii?Q?eGUGiOEMQfrTj8KSEdU+HSJKDZyqCiRAKe75Xo+i1vxM36LDUyykAebX1Nkf?=
 =?us-ascii?Q?SF+W5XM904UTnxYfZXXTEcDRFBF7Wax8Ri+nA8WELOtXUXZywiINBp5JR5FV?=
 =?us-ascii?Q?XTtmOkCgoWycCuKMnHuNkovLl0yJhh6nV4o22bK3Zyt5PWdoBHFV9/k/jLQu?=
 =?us-ascii?Q?eSaGOLEKlz17cPyv7X7yqr3rw6aq/9Gl5wompckuXblms9K1qyEbt26FEGBN?=
 =?us-ascii?Q?4LgVwtHPOgcsF99Vs2py+NCWZEe4INVh0mx86FuTyrmX6NpUlQAbH9I32jQo?=
 =?us-ascii?Q?a1ImQw0GHbgUQBWW5FGQYl/Yo3w/OOrTvMXmzTEogNkfP2vL8MxHLjUqd8QC?=
 =?us-ascii?Q?4HSMJGguGu16AjYk/KX75JLCHmNsDrm9qHF80hPOs6XkOmFQMk0gLE3M4qy5?=
 =?us-ascii?Q?dl4wQiEJG2h8m5qWjAi82UIPOkHArsKFG4NGRhjgtHUaPcbX9gpu8TixThod?=
 =?us-ascii?Q?AQGtjT37NyCO5mN7fn/L2XHRHz91Zm81Qp3nDiKomMb4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae7b3958-c453-417a-1721-08de2770aff0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 13:36:47.6880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zO6dEGhbEYHUfjrwei9XCOl04t5oFCisjc3qHPmy0ZZ4XF+ARnhjREJE70vMOdHbLfkqnLAxDyWCZm5YPO85TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7136
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

On Fri, Nov 14, 2025 at 05:52:10PM -0300, Gustavo Sousa wrote:
> Starting with Xe3p_LPD, the VBT has a new field, called in the driver
> "dedicated_external", which tells that a Type-C capable port is
> physically connected to a PHY outside of the Type-C subsystem.  When
> that's the case, the driver must not do the extra Type-C programming for
> that port.  Update intel_encoder_is_tc() to check for that case.
> 
> While at it, add a note to intel_phy_is_tc() to remind us that it is
> about whether the respective port is a Type-C capable port rather than
> the PHY itself.
> 
> (Maybe it would be a nice idea to rename intel_phy_is_tc()?)
> 
> Note that this was handled with a new bool member added to struct
> intel_digital_port instead of having querying the VBT directly because
> VBT memory is freed (intel_bios_driver_remove) before encoder cleanup
> (intel_ddi_encoder_destroy), which would cause an oops to happen when
> the latter calls intel_encoder_is_tc().  This could be fixed by keeping
> VBT data around longer, but that's left for a follow-up work, if deemed
> necessary.
> 
> v2:
>   - Drop printing info about dedicated external, now that we are doing
>     it when parsing the VBT. (Jani)
>   - Add a FIXME comment on the code explaining why we need to store
>     dedicated_external in struct intel_digital_port. (Jani)
> v3:
>   - Simplify the code by using NULL check for dig_port to avoid using
>     intel_encoder_is_dig_port(). (Imre)
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c           | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c       | 16 +++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  3 files changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 002ccd47856d..11ceb9355b75 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5372,6 +5372,17 @@ void intel_ddi_init(struct intel_display *display,
>  			goto err;
>  	}
>  
> +	/*
> +	 * FIXME: We currently need to store dedicated_external because devdata
> +	 * does not live long enough for when intel_encoder_is_tc() is called on
> +	 * the unbind path.  This needs to be fixed by making sure that the VBT
> +	 * data is kept long enough, so that
> +	 * intel_bios_encoder_is_dedicated_external() can be called directly
> +	 * from intel_encoder_is_tc().
> +	 */
> +	if (intel_bios_encoder_is_dedicated_external(devdata))
> +		dig_port->dedicated_external = true;
> +
>  	if (intel_encoder_is_tc(encoder)) {
>  		bool is_legacy =
>  			!intel_bios_encoder_supports_typec_usb(devdata) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 069967114bd9..5071a0ae5235 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1810,7 +1810,17 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
>  		return false;
>  }
>  
> -/* Prefer intel_encoder_is_tc() */
> +/*
> + * This function returns true if the DDI port respective to the PHY enumeration
> + * is a Type-C capable port.
> + *
> + * Depending on the VBT, the port might be configured
> + * as a "dedicated external" port, meaning that actual physical PHY is outside
> + * of the Type-C subsystem and, as such, not really a "Type-C PHY".
> + *
> + * Prefer intel_encoder_is_tc(), especially if you really need to know if we
> + * are dealing with Type-C connections.
> + */
>  bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
>  {
>  	/*
> @@ -1894,6 +1904,10 @@ bool intel_encoder_is_snps(struct intel_encoder *encoder)
>  bool intel_encoder_is_tc(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (dig_port && dig_port->dedicated_external)
> +		return false;
>  
>  	return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 38702a9e0f50..7b08d618776c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1936,6 +1936,7 @@ struct intel_digital_port {
>  	bool lane_reversal;
>  	bool ddi_a_4_lanes;
>  	bool release_cl2_override;
> +	bool dedicated_external;
>  	u8 max_lanes;
>  	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>  	enum aux_ch aux_ch;
> 
> -- 
> 2.51.0
> 
