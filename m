Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC9BB00DB9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 23:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FF410E159;
	Thu, 10 Jul 2025 21:27:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bu6GqwEp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E091C10E0E6;
 Thu, 10 Jul 2025 21:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752182858; x=1783718858;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=erBZdAW2llkUbh0e8LUH1KqjJGV3JXmLxdp4b1JS1fE=;
 b=bu6GqwEpC6VjjyzlvjXcouIHBGLehQpcMZeSxeGxK/Gse5SP4QMDhIHd
 O/sXGci7oa+mD8DaZcnAgKnTWpYfGVQ961cs8b++3mN0vjPn856pgXWow
 RKCM5OykV26xFLYf1d5/w8piBmH1LT9KvmmF975MI0wNZ76zD6q6VesAN
 Zc5oHGf2851oBn8KOSdoW+lGSNwRn5XeCI4wgF2qC9rhWQWUFexQvhnT8
 aQm1RcZ3fQXiWpnJE4DJeOUAzAWXaVQnDPXa3/xdNYBYOJ6dD8Iu0wWHQ
 n6NKBxMDG8TfSEICvJRAd7ixIwKNaS2MYnYEfsrN+scBV1IEi314CTnFD w==;
X-CSE-ConnectionGUID: 78rH9LLpRjerzjd0pSlp7A==
X-CSE-MsgGUID: MAS5uoc5Tw+ZGXMw6W4sXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="58138452"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="58138452"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 14:27:38 -0700
X-CSE-ConnectionGUID: Kkvk1nZkRXq19FZULUXezQ==
X-CSE-MsgGUID: KZQZfM19SA6s+2FKm6RjXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="187205603"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 14:27:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 14:27:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 14:27:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 14:27:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a5cER3eZtHYeZo1pA+U4Hk8zsOXvl7PmDrAkesbaanf0611vgjA5miOkbepv8dAmKRy5XJwCoFvdoUeEL6Cmf3kbhFeYYI4Witi8O+xlbc1Z/H2gd730IAPID9rjHITqWwoxlWM7n6asWS1CA0OaAL9z83ZwROH6uB2T0yi3MMNLq+QjIE+6G0DrDOCgL8gT80w4lbM10kQj+CI/I4zt0mq9rRT69ik8W+k3ZfZiaDdYCSFKl+Qf6qxAPW4ev6LlzptX2zDdqUkUj7d0+RQQXCjgc9kqpeh1JtmdARYYbQ/zOkjbBBPqL+LAMjrbLHI0DkfVfymg3CPSi66S1i3O7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=neh3wZ+3OorfwJeknzdKGVmC0l+PV0XeXq3+mRvOoG4=;
 b=E+1Ufmo41piiZpmxhLE3s78rFACJ5/wvXFWnKB+3tDV8hDN2vXJGdPqyuM2Eofmgjr+FY0EZqFxqran8C2/1WA5PndKK/VjURuCRL0SRIMcgC6sHfBIqrENwxnVV5ocMzKDJtNifHunw/k7xIHFR7ZMkJXs/YpArBnAa6wzwJan1OMiQYgAtb0SKpEHTdGpTnvPAJxhZAYsKBG+sf/H5i+hOtSuLEIlNFqZ9i5ecoHDXN1gemOOr7YoEwnY4Yt57eTQauyj477KkSAhLrYLOkR8PJNVT7IddZRztgIrORIYG4H9iOkQ0a4a0QPBBGidgZ3GqdptsHMZ6LUwKh8WctA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS4PPF0084F97E3.namprd11.prod.outlook.com (2603:10b6:f:fc02::4)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Thu, 10 Jul
 2025 21:27:16 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8901.024; Thu, 10 Jul 2025
 21:27:16 +0000
Date: Thu, 10 Jul 2025 17:27:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Message-ID: <aHAwMfaR97nWqu5T@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
 <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
 <aG_ffKlueD_8fx2E@intel.com> <aHAeBsRCmkI6QZCv@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aHAeBsRCmkI6QZCv@intel.com>
X-ClientProxiedBy: SJ2PR07CA0006.namprd07.prod.outlook.com
 (2603:10b6:a03:505::18) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS4PPF0084F97E3:EE_
X-MS-Office365-Filtering-Correlation-Id: 558a996e-7dc4-4cf6-aee5-08ddbff88b3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?EnWGS15+yAm/B5PKKlu17svJWTmHnZL1jP8whIsB/gMKaV2K9x7qkYazQ+?=
 =?iso-8859-1?Q?2AqDO32JsoH5ASdgKLQZfzFO0O/plR9mnAAHuibx5+nZsGgX3pCbIlw+38?=
 =?iso-8859-1?Q?nMpCsQALMhkljtpLo4kGJGK//BK+oswxjUu+4U+sk+sGvATNtHrtx6uvIk?=
 =?iso-8859-1?Q?GO2a/E3v9YokfdN4UQ9rqTgGJY4IkDKCHMLFdzpo1MnO2i0DGVx47iDU+F?=
 =?iso-8859-1?Q?Pu/yBAQygC2iESP7NTnmENH3QLqJ5ujHmNhkaUvD2PcyVDEkRMKelTBdgH?=
 =?iso-8859-1?Q?UNzc3Yr+VkEqRlYOM14NPvzwp0k05tW+R+UyhSQ+8vF9nfPQcsQJF4sQR/?=
 =?iso-8859-1?Q?ExuVzZWcLNoFT504cRArDf7ta3khQUFr9GB5mUhnHHRVHFkzIAdiTEt181?=
 =?iso-8859-1?Q?MZJXmJDTF1Np6NWXNO5wAcmrQ+fHcHSuGRWNa5ssd2dC+2uR6tNJrkpKY5?=
 =?iso-8859-1?Q?yVaFlGIfVwbGftq6KRIuHf2AgiooDg91kDXaoCdGC+kt3AbW57Av6/UjS0?=
 =?iso-8859-1?Q?MUwkoKN7QYhx+Y93+E8iu6+uk/p7KRNqO48LkmDGt49Hc2kaHYb8v2OZ1U?=
 =?iso-8859-1?Q?0n2tAhBmboeiSGgVcbf468kjK28ehuAVhS4NHNMk3uYzSEiCrDDhj14iI4?=
 =?iso-8859-1?Q?OJCfG0ghu8U1RzehuRpOzZAONWkR2NX3xS7mVLnkWqYVMCwI53LfiXQyZc?=
 =?iso-8859-1?Q?x4Ude9q8BBrLNwpCjAkQZ+SUuVG399vvaoAqozufucTxIUlxYY2yjMGw3D?=
 =?iso-8859-1?Q?SBdcGL0tSVZBbq27Mi8ZuuLNdWfIH1/LGstxNi/F+LJ9bQVJcxNoFlpSbc?=
 =?iso-8859-1?Q?4CMZR+xZfkfeDWi78z1AJtZse49skkF8E/mzl+51fJ+4iAgSb6YeHp0x3/?=
 =?iso-8859-1?Q?Qi0zgWUu6zr6BHFw03lNbZ6NsF088ngMNcWVhP01XNZI7ESTKGARjCmBAz?=
 =?iso-8859-1?Q?74DY/Obr9PUE+j+K2Yg6JcFaEBpI8QPaNLIu5TzUB4QpRxAsaYEHADEOaF?=
 =?iso-8859-1?Q?/VL3t9EMpE0/v1kiQ0B4OWr7yarrz2WhBmltdZ23sOLyxliDQbftjHl+RM?=
 =?iso-8859-1?Q?LoSsaWJwoB+5/cSjq3hLEQJiSo3v929HKo+vRUqMq0UibBLQl9KfsEEtGY?=
 =?iso-8859-1?Q?zvU2F5vFgU9bNY9fQZaRYpCx1TXNVmfIVl81u6rlZYg9q5RzKDgY2mQuYy?=
 =?iso-8859-1?Q?fplQBAPSpseA4bSW6TUu5Pgl2qoROCeGbdJi35/aH+YheGzhM5oh/8UHM7?=
 =?iso-8859-1?Q?9oLnxBDzzODsQ+dsZzwKM27yMo7S0JqcSQ1k5DX22+ApYjMqc5NvP+750p?=
 =?iso-8859-1?Q?rTRvxid8dRRItw/CXfuOmkJUIm8TGYipqvYWqg5warrTV5reZ115BIbRkE?=
 =?iso-8859-1?Q?nlskZMEZjcruZEpd17YjdGB3RI2HBx3Dl+I1jxGXhMqlAAcZeinvJ+sLkO?=
 =?iso-8859-1?Q?Z1gyfm0G2kJjx0vMru7HmMiBGz/yjU7iEA4J8NGuIh+eJQI1IgsFDxRAzw?=
 =?iso-8859-1?Q?A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?n12Y4en1FfPxIlpqr3FFNuN3drHWcrmdhOdyXrgA8idpNqb6RP22xq3cz1?=
 =?iso-8859-1?Q?rZYazHwBj/zQkDDkKMNJxc9XH0JveZkswjxFm/PkymA+MvgPfjUO5FSPvV?=
 =?iso-8859-1?Q?FZSd5xgMrkgsa1p+W2W/GIUkdKYJkk4dxEmgDjwzckiil0aHMfAhlwooJy?=
 =?iso-8859-1?Q?TeJzzM05AyeLr8lglL5EdSfKc62VTAm02ltEGYrZvu8sEHaBKfwJBUUxWK?=
 =?iso-8859-1?Q?qobS8+jg4Ey6gLP+o6ssNYppn7KBavedl3ja6KroE4GV+Z3TyMOLOVTJZi?=
 =?iso-8859-1?Q?tuI8aX6g9EvlX1XxC/DpVHahXlD7nN45Ty7CScqeYDzdSPxGxAK7pqFlRa?=
 =?iso-8859-1?Q?UPjKlOy/sW4BVne034DGsLqmO8a/7CCsAt/AwVFofz2s1Yb5TzTlDj9iNC?=
 =?iso-8859-1?Q?tRrxw4TfijZ0VpgBO1yk6VKNb5XxhU0JsoTs/DvWuG7a4mU3BzPiFJtOrw?=
 =?iso-8859-1?Q?y7DBOzxqm6qRxOZsOxeQDivhAFp/sYPIklgE85QggetBozCdjWjVhv95VT?=
 =?iso-8859-1?Q?PEwJjzfv1tRrrbNVwya0dTzLk0twvUNxmx0nbvIBMhgeLbf17FEer4CSf5?=
 =?iso-8859-1?Q?pBIVnU6x7oQkycaw4Ox3n/9zfxNcRR8Is2MmDxCibq7LJsQ+Sw7P0VE4Lp?=
 =?iso-8859-1?Q?H6Mlr7GAMdIBnlnW3Se0ocSn8Z5Mx+qHuX6s6GNzQAfvPUoj0k3xKSVj/C?=
 =?iso-8859-1?Q?+PjpOi+Y7zEDTudkOwO4VS7366tNYBnT7Hbxpw5Jeiqsd+BRce8pNEkdxx?=
 =?iso-8859-1?Q?G4Ki4T4LFHQ3lyNok9mK6dqfdcTU1SyowNXlGJpgUFCUi0WfJd3R+QD2Wm?=
 =?iso-8859-1?Q?CpnRTxrHm0IgqmQRXg3JDi62qkUh0NvR7h8hePhxoRsqqztzf1JYbDE/lb?=
 =?iso-8859-1?Q?MT2UGqmsaTJ3VzEKVuJd2PeoDjrtriouav4NRyg9lL1VK0ffiKvsZbTWr3?=
 =?iso-8859-1?Q?A7EY3hPo3LpjJ+JIzM5HaPTduV2CqphU9G0uuCu0rZ+IkCo5HhgG3QP/nC?=
 =?iso-8859-1?Q?n5oPBDZJiMTUg9etWNyMk0ii012fJf9pvauRELaoOSB5q5vbSrBL0RAeO9?=
 =?iso-8859-1?Q?5kGRudHLQPpEdN3M234Apl12oioZBFgDf5NEXq2EAEz0aO+9vTIvAY6jde?=
 =?iso-8859-1?Q?U1t2jIrrtz95eQUlHPKsk5tZiReuQBAVj6BQvc7RLZevoHtBOCTcDV5Pw0?=
 =?iso-8859-1?Q?5iDsyVo9ccuWTEjz6J6H2JU342fHiL49KzgXoP7Z8ERUN6QaYrpEy2Soo+?=
 =?iso-8859-1?Q?JOj3SE3rGp0V3B1AxwGt49E2Tkvq111HMKsdiQfzeMN114vF7bcyukFPcU?=
 =?iso-8859-1?Q?gZXZF51Z+Kz516HDjqDs4ZXZf+km/SSAvgby/Uti7EWpV6cWkLpLOmpQn5?=
 =?iso-8859-1?Q?ogV3BmVPKRXEKdV07SN9jWW1Mk2U5HB8Xrw1cZSo9Nwi8IW9Pqn9fe5Uvs?=
 =?iso-8859-1?Q?GVJ+qK8Jcw5ZGVggk//zO1e6TQtWXmgNqLMv0QekO9RndvJLNNg9hSAfE1?=
 =?iso-8859-1?Q?8nfwDa6uIj97VtYcT8VjIxYmwo92AZXDSk4SK2+jasCppkFXF+LIZErYVk?=
 =?iso-8859-1?Q?438slcMVJ+bUiROBX5x7Ndhi06jfY+ALvlBIMTLxQD+5WRcrlRW74J+HLc?=
 =?iso-8859-1?Q?4L+sz3C0yj1CG96u5VPsV8MCXgJ83wKyCJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 558a996e-7dc4-4cf6-aee5-08ddbff88b3a
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2025 21:27:16.7037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 96bFeDyCAIkzLpj/GGvpHVJs7ewgewE+FfFtqe1OmTkwYcQJ6h43abKVF9AZ7b+eG290ZW/pDEOA436+04rSQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF0084F97E3
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

On Thu, Jul 10, 2025 at 11:09:42PM +0300, Ville Syrjälä wrote:
> On Thu, Jul 10, 2025 at 11:42:52AM -0400, Rodrigo Vivi wrote:
> > On Wed, Jul 09, 2025 at 06:11:17PM +0000, Hogander, Jouni wrote:
> > > On Wed, 2025-07-09 at 20:03 +0300, Ville Syrjälä wrote:
> > > > On Wed, Jul 09, 2025 at 10:57:58AM +0300, Jouni Högander wrote:
> > > > > Currently disabling PSR2 via enable_psr module parameter causes
> > > > > Panel
> > > > > Replay being disabled as well. This patch changes this by still
> > > > > allowing
> > > > > Panel Replay even if PSR2 is disabled.
> > > > > 
> > > > > After this patch enable_psr module parameter values are:
> > > > > 
> > > > > -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
> > > > >  0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
> > > > >  1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
> > > > >  2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
> > > > >  3 = PSR1 : yes, PSR2 = no,  Panel Replay : no
> > > > > 
> > > > > I.e. values different than -1 and 0 are handled as bitmasks where
> > > > > BIT0
> > > > > disables PSR2 and BIT1 disables Panel Replay.
> > > > > 
> > > > > v2:
> > > > >   - make it more clear that enable_psr is bitmask for disabling
> > > > > different
> > > > >     PSR modes
> > > > > 
> > > > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > > > ---
> > > > >  .../drm/i915/display/intel_display_params.c   |  6 ++---
> > > > >  drivers/gpu/drm/i915/display/intel_psr.c      | 22 ++++++++++++++-
> > > > > ----
> > > > >  2 files changed, 19 insertions(+), 9 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > index 75316247ee8a..195af19ece5f 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > @@ -116,9 +116,9 @@ intel_display_param_named_unsafe(enable_fbc,
> > > > > int, 0400,
> > > > >  	"(default: -1 (use per-chip default))");
> > > > >  
> > > > >  intel_display_param_named_unsafe(enable_psr, int, 0400,
> > > > > -	"Enable PSR "
> > > > > -	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
> > > > > -	"Default: -1 (use per-chip default)");
> > > > > +	"Enable PSR (0=disabled, 1=disable PSR2 (BIT0), 2=disable
> > > > > Panel Replay (BIT1))."
> > > > > +	"Values different from 0 and -1 are handled as bitmask to
> > > > > disable different PSR modes."
> > > > > +	"E.g. value 3 disables both PSR2 and Panel Replay.
> > > > > Default: -1 (use per-chip default)");
> > > > 
> > > > This thing is very unintuitive. Why don't we just get replace it
> > > > with a new disable_psr modparam that is clearly just a bitmask of
> > > > what to disable?
> > > 
> > > I was thinkinig we should keep it backward compatible. I know this
> > > parameter is in use.
> > 
> > I agree on keeping this backward compatible.
> 
> IMO it's an unusable mess so I wouldn't bother trying to preserve it.
> The only value that seems to make any sense currently is =0. 

fair enough. what about simply removing all the options entirely?
enable_psr=0 keeps disabling it, otherwise enabled it. And we reduce
all the knobs option. Afterall, this should be our end goal anyway.

> If I
> need to use any other value I always give up immediately and just
> hack the code instead.

Well, the param actually exists for us to request reporters to try
different config. The devs can always modify the code.

Question now is, are all these variants useful for collecting debug
information of some sort?

If so, as long as it is documented and we can ask different values,
we should be good.

> 
> If we keep calling it 'enable_psr' then it should clearly be a
> bitmask of things to *enable*, not things to *disable*.
> 
> > 
> > Also our experience with disable_power_well shows that negative
> > name in the parameter can be much more unintuitive and confusing.
> 
> That one is rather different because it doesn't "disable power wells"
> but rather it "disables power well disabling". But yes, it is a very
> poor name as well.
> 
> Calling it "enable_power_wells" wouldn't really help though.
> It should perhaps be something more like 'dont_disable_power_wells'
> or 'keep_power_wells_on'.

okay, fair enough, disable power well is another level of complication.

back to disable_psr idea:

disable_psr=0 == enable PSR? to me this is already uninituitive anyway.
disable_psr=1 == disable PSR1?
disable_psr=2 == disable PSR2? and keep only PSR=1?

I still don't see a clean obvious intuitive way of handling it.
Perhaps what I had suggested another day:

PSR1 = BIT0
PSR2 = BIT1 (PSR2 infers PSR1 enabled)
PANEL_REPLAY = BIT2 (also infers PSR1(and 2?) enabled)

(Peraps even bit3 for early transport?)

This is backwards compatible because

0 = disabled,
1 = up to psr1,
2 = up to psr2, (no panel replay)
3 = up to psr2, (same as 2)
4 = panel replay on
...

> 
> -- 
> Ville Syrjälä
> Intel
