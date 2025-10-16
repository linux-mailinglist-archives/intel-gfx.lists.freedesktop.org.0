Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 330EEBE1B44
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 08:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E3F10E949;
	Thu, 16 Oct 2025 06:24:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B2NcUTG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D920810E949;
 Thu, 16 Oct 2025 06:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760595873; x=1792131873;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1qNFGnVhsdzAAEdofOW9udAxm0RM/d6dMmCsxNlHxDY=;
 b=B2NcUTG+pk7RU8C/IhSjeQd9b/KPK1G30QvH7uGyOHEgz4HwUHoV75+t
 1bLCnSrucGBAQCW70SLCAxp/Na2l1WkxAutt25Ws63rKtCLT2e1FHfony
 bDYjewCsG7i404q0avly8jb8LBavC2via94xcu0g3QgahdqQrw+tEF1+1
 9s24k2zn+211ZL/TJ9EuXxQ/h1P/8fo1x5njHHkj6tuon9gn8KeDlkxmL
 Kym76N1vvzBN76UW9Pcs+DcRryspKm6sHQTDLYLNNJUGZ9oFya3iuEKUR
 NFvRUHRabZFCIFn+7u1l+uYLp3vYloxKgjE8WzZWa3hRhNomNrzcNLwot Q==;
X-CSE-ConnectionGUID: 4IVjSnxcTbqMUEp81BjHYA==
X-CSE-MsgGUID: kQom0V6cTiS+0527YSLtkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73063232"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="73063232"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:24:32 -0700
X-CSE-ConnectionGUID: ZGwaErq7QhCVDNA6+FqGww==
X-CSE-MsgGUID: BkLthrCtQFqgchQF3BUh1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="186772433"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 23:24:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:24:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 23:24:31 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.14) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 23:24:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jUXmu6aBujN6UoyFFEGiPiMSb+JtIU/afbCHi9TzK+HWeFH3L7wuq4khoSecdFs1Z6u9poB9geIpikg6JO0qTjia+iBuEyr5l6CIjOzyHAAJoLTlwhCBTPPNV3D48yT71FJB65ALMATp3pbSv0qsUOfX1hhiMtLSpPEe3pyvQQetEdsrqvezjkSgW/WVAgCndLPvrShXCaihlx6vSJcHu/8dEulrRE5TWlxlHmE/pmZyzUgctWRf8F3YLeDl7zwbrhNfku3YVtXBuuNa/HxruPT35dDt09cyaVyj7pwbDcwSlPfTF9frqvMaBm0zdRz0NTw1a/LmENCUDSEaORrm9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1L8vJ5SMKz4NvzQSYIUSUKjrMi4s0NA1a+08HyyuNHw=;
 b=xs89Yo0GCsq4fmCxIdu+N/dpHhsVPZFqaLBuVv6HSRIRDtao7UfvTZoe02THc6pIanskjcdBA6X1kdIWk84FDYPcCdcxfrhcccfB2CKNpEfQMjfYxZPAVxk5+aUI/E4Xrx8tgJKGH0pp1Rrl2UoId/07vel+KMfFAI5P6JYYbxzbcySrx3AXHRqDNX6k2hLB3nYnXdBT0/8P1HK9/hTHigbnK4LRXyxDMVk/RTlG76SwrUqf4Cj364zb1a/JzS3vqRX4b83bPCy+Op+R3YP1Fpdl7b8xLQ8w5zEVFSK9Du4W7fhLjtc/ZnsCgDC16NVZzriQGdxOToHSSSlMWB6cZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by DS7PR11MB9474.namprd11.prod.outlook.com (2603:10b6:8:265::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Thu, 16 Oct
 2025 06:24:23 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 06:24:23 +0000
Date: Thu, 16 Oct 2025 06:24:10 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t v3 2/6] tests/gem_eio: Try harder to measure median
 resume time
Message-ID: <oag6w5mbzn7wyhxsfyermn7klr642qth5ckgyswymd6iwvqkjm@p4hl2z2srvkk>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
 <20251015124419.66460-10-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015124419.66460-10-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TL0P290CA0013.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::20) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|DS7PR11MB9474:EE_
X-MS-Office365-Filtering-Correlation-Id: 12ff14c1-28aa-4aae-fb07-08de0c7ca5aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFJBcTkxWkpGUkJwTnFraDNhZkRrWVZYTHpiZytIMWZxVUsyWnpHWWN3ckIy?=
 =?utf-8?B?SzRyN1hVL1JNMnBrdWVxZG1JYkdjamFPRFJzYWU3UTBHL1MyTi9qSG5sNUgv?=
 =?utf-8?B?dTR3ZkZVQUo4N2dxb20yc0djRVNTd0w3UUJjaGF5MTVVNjEzVjRFak9KdGFu?=
 =?utf-8?B?VWZXS0dqVnRKYWkzSlJKZ3NxcDNrbDFLeWlFbm9mTlNvK1huRFNCZXdSOW9W?=
 =?utf-8?B?V3FKejkwSEl2VWVIc0pZMytCd0xMMjU2RndQSHF0b3o2d3FHc2xQQStOMzZz?=
 =?utf-8?B?REhzYy9ZK0JvWnVWMkpybGowWU5UNTQxQjF4anNRVjkveW1wQ3puYUxrdnNy?=
 =?utf-8?B?MUR4RDJGcFB2dU8zZ3RCZllWZGl3VTNVeSswUmZXRXlueTlkTnk2Z2VQN2dP?=
 =?utf-8?B?VzQ4eUthVko4dzd1SmxWbjFqbzYxSXo1aDBCZEh2L3BTYVJ5bnl0STd1ZDVD?=
 =?utf-8?B?Tk56ZlZMZHJ2RThZU2F2RjI1d0U3cllQUGluNXpkb3JocjR2S1ByZEV6UVdH?=
 =?utf-8?B?c3U4MXoyeVdlZVg3Mnhxa2dDK3gzRUVLaGRteS90YWViWEJyNFIzeE5POE10?=
 =?utf-8?B?MW92QlY5bW02UU9GSDJYTWpyOU9sNkNObDhtMHphN1JRdW9nZTcxNGtnRi9O?=
 =?utf-8?B?amdzNkxDUHl0a3E1L0xkUFFQM3h3cWN4aFcyYWNzMng2TmoyWnBWWm5EREpa?=
 =?utf-8?B?allleDVMUWl4Q1UxTCtpa1J5Rm96OWl6djJKN1dhV29rVlJYU3pNOU1TbHR3?=
 =?utf-8?B?NmIrc01hQkZ2TWhvcHpVRUVVQ00vakh6MXAwQ3J3U3NuOU12ZkZycEUyZHFW?=
 =?utf-8?B?UCsvUVZ1c25vYytnVGl5V0hLQXhXUWJaMUpRMkJYSzF5SE9WNm9QQm90ZWhv?=
 =?utf-8?B?bzFoTzI0WXN0K2NkMFB6ZUR2dFllN2hFdjVpWFZ0TlgvT2VhQTQxRjRESGpr?=
 =?utf-8?B?SzZSR0t4T0wreTk2WmJPOXdIOFVaanpVZk8zbmRlUElyUDFoMERTajc2TnpE?=
 =?utf-8?B?UldqN0lmbTE1QjFjeEFwaWFDelN6VU10TmdGT3cvMWtpTkdqcXRXeFlScUJz?=
 =?utf-8?B?b3lCUmpRVWxDWlMrRE9OT0NtckU0dUNobEtRM0E0SEN3dzVJbVJnZ3UycSt6?=
 =?utf-8?B?SWVMUkcyOVFaMWV5RGxVMm5VZ1lnZnV4ZGRMZ1dNQjlmYVhqSFFrMy9ON3Ry?=
 =?utf-8?B?eU5rR3RVOE1veW9CMThDYUlzbUdFNG9uZXd2N0c4WGpndlNpZEtnSmFpZTJl?=
 =?utf-8?B?cnZHc1hac3A1OXRGVm9pQ1NaRHg2SVErMy9PZ3NWWUMycWFSSmR1TzVhNG9Q?=
 =?utf-8?B?YTRFbS9ZY1dEUEJnMmMxSHZJWUtNWnoyZ3FMZnNlSzl2R0VpbXY3Mi9ibHZK?=
 =?utf-8?B?WFMzQmoyZFhZVkNNcmxxYmZBWmRuTE9XYlE4UFFiWWtFY21KeERpY0ZrSmNq?=
 =?utf-8?B?VDcrVTUybWpnMWZucjdzd2VHTFJ2KytmWEgxSEhLcXJUbWhVUXBYdW9NcDhi?=
 =?utf-8?B?MExtRTZITWlQWkp5L2V5ZUdNTktPMzA4NDhnR2VIMjdLUFJOV3RPb3N5N25x?=
 =?utf-8?B?dTJuQlhrc3RsaFY5VTd6MnU5ZHVCZVpVRUdiV3R0L0NrMHZvTVhpRXUzQVo3?=
 =?utf-8?B?a0d5WXBHbWJLclZJNTIrZ0szUTNJeVBOTHlOeEdRQ1l5eHp2ZHJmMVU2VXBs?=
 =?utf-8?B?cGhXdDhoN2VONWR6VjFweUQ0Z0hCdjU4MGd2NkxIU1E4NDdxaWJDdGxoS1Ja?=
 =?utf-8?B?WjZ5VURlRG00VTRGcFV1UzdnbkhYR1dRVkl2UWlZbm4wSmI5NUErUG5tY29j?=
 =?utf-8?B?dFdyMHVORmZBakxmUHhqdkRXTWlwWXBENUdMOGhqN09xWWtabzBHSnZjSndY?=
 =?utf-8?B?NUhNNG9UQTJ6UmtiLzJWWi82OXhnMGVjZlNPU0FZVk9aWXc0dzEySW04cTVM?=
 =?utf-8?Q?Np2QU3Nbv4sYDkwNEr+etTezDRqpChWJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDFLbVhsaGJEYjZuaXNHajFybnFwL0FHaGRBUWlZZm9LMEI4ZHM4Y0Y0UUFm?=
 =?utf-8?B?bkxwckx4VE5JOWhyWksyR1dwNkVEUHF2NGVxZDVBbU9uWjU4SjVrbjJPa2cv?=
 =?utf-8?B?SldCem44WnErRnN4TkhlQmw4RHJzbStDYVVpN202YjFVOFF2V2NxTE41T0hh?=
 =?utf-8?B?dDkzNENPblQxckMwWkJHbS8wRm5sOUxQVVBuOGJWTFRsK2FQM1BaTElRbFdP?=
 =?utf-8?B?SHl3MGlXY3ZWRnlYR0YyN1Rvc3pJSEhwcDdtZ09TbEZLTlZtekFVSGxVZytN?=
 =?utf-8?B?Qmw2dGpuNkwxNVQ0QTlFOXlzWUR1RkVBdFdReDIvR3Uxc2tqMFh0YzJCSnNl?=
 =?utf-8?B?WmgvYyt3WnRMeEc3MzNoQVdlMEkrZGVWSDRGcVkwSG05S1lUNG1mSDVOWklG?=
 =?utf-8?B?RWZUNk5ZSmVYQnIreG1uNHNGUndOcEZJa29XSzNjcTVYOHA1L0UwbUZoUndC?=
 =?utf-8?B?MVZGYk4vY3lWWkFtVitwbFRhVTFuc1VFaFVTMlZBVTVITUVMbjQycUFLa0Jv?=
 =?utf-8?B?SkFlRmhoaThzTHloSVdSb0VFTUs0MEtmVnh6VE5aaGU4Wk9mdGo5NTh5aUZY?=
 =?utf-8?B?R1pPYmkyLzVxWWY1OUtMM2RlQ2dLVVN4T0FSeVBoYkt1a1hhanNLWVpIR1FB?=
 =?utf-8?B?VXFrNVNqci91aEYwZXUwdWg2a250QUVSWlcxQlU1Vy9ldVRkQnoyakZKeml1?=
 =?utf-8?B?VGpEQURrSTRNMll1cGFWZkYwVjZuTkJpT2dXcVc5ZG10c2ZkTDlFazUzUUJk?=
 =?utf-8?B?Qm1ZaVJhRXBSM2tVc2plK1VvbldkK1JmbytGcVlxekhBSDR6NkdYWXJkQzV6?=
 =?utf-8?B?TVlNVVEzdmc2cmFqM2c2bk9Ma0ZxTWJ3d1o1MzRVMVNIRlZraGFacW1Bakg0?=
 =?utf-8?B?clZHdU1MSWNCMFd2SWFNNUl0R3BFVXg1MVdCYmFPblc2VlFrS0I5eEtDUzZL?=
 =?utf-8?B?em9VNEdUaG1pODBPRDQ1WGJnYUdHYnRQYVpkQ1c5V3NHRnBlVzMvYUVYbmUx?=
 =?utf-8?B?Q2tuNDRqQTQrRG9kd0FXZ3F2R0JlVjRTNngraWdkem5oMzNweVlIUEhGcDQ2?=
 =?utf-8?B?NG1KQVMrWEM1cis5Z3B5bjBLZUZzcS9NUnNPSzBwbE9KeUtuR05zMEV3NSti?=
 =?utf-8?B?ck1neFJ5MStXQXBFQk1TQUhNMHpzZDlTNkd4SXBZQjhkYzdBUTI5bUlCaFJS?=
 =?utf-8?B?Mkx6NGdiQklZVVJYREpoVFhvOXFRVWJMd213RVVvVEYwZTRpOGRrSDlQODE2?=
 =?utf-8?B?VjJ6a09iTnpqVkhlaDdrZUxCTlVsTVpFYmlPMjZlWlRwMmo3bW93SUduUU1Z?=
 =?utf-8?B?VFRNN1htMllMVk8yc0svVHJEWFR0UUZXRXFVdEdqRnd6L0xkTHE5UXp0U0tv?=
 =?utf-8?B?U0lsMmdVVS9BMzJmVXBRaFozczJxeEh6RWFFMmVqRHBrbHNHMFl4WlhxdWR4?=
 =?utf-8?B?RDJmeE9yMXNEb01NUEZva0o0SjVYRXJuWFE5T3p0V2Z5Wnl1WTFMSFlkSCt0?=
 =?utf-8?B?Mmx4bDFhZTYzeFlYZDU5cUxRVzZkY3RvQVU3Y0dBTFhCOVNlT1N1ZmFXMGZZ?=
 =?utf-8?B?TmwwYk0yeVhaTEwvNlUwQklac0kzTGNZNVpMdWZ1dm94TWFxSll0bWxzRTJw?=
 =?utf-8?B?T3RqNVVRdUlvTWJMd3NHRkFRTHZvelg2VUE0eWd5NDU3VllRUlZIblN1bkJn?=
 =?utf-8?B?M3ZuNzNzcFZpd3cxTkhOOGRRQTQ2aGluaDVlRWF0Z2dqc0NLTVY0Mk5kakZK?=
 =?utf-8?B?ZWNsVHcwbm1UZndJeVJXWUtBWXFGRUs5NU83WHI5TFI4SkFhbGc0NlJ6VUoz?=
 =?utf-8?B?c005U0hIZDZtcDdxZE00NDRQUzNOSWQ1OE1HTExsOFpkdGlmbXpZWE1Ld2R4?=
 =?utf-8?B?T3ROSG90NjVyOFpzeWUxbDRBdnB4ZWVabE51VjVTVXE1cHBGazVhWDdHWDVz?=
 =?utf-8?B?YVV5VjNhQkVwUXNYMUJEbDRWQlJUQ2tZU1pmQW5NYU95ajExYW8xbTUzZktv?=
 =?utf-8?B?Y1dhVzA1Nlljd05XVTZ0TDl0cStZVFArNFhhRTQxTk1zUXFlMjhLQjdVQVlW?=
 =?utf-8?B?eW9ZZ3RQTEFiOFpsamp2ZWdlSkkxVU9kNUlxMTZSSTRocGJLekVVNGZ1VXhF?=
 =?utf-8?B?NkFDcHVDQTQyS0JxbU9CVzNnVFgzYU14aDNoZnRNcENyL04zUCtPQTNtcDRY?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12ff14c1-28aa-4aae-fb07-08de0c7ca5aa
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 06:24:22.9523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4aLAYGSdc+9kfLNj4JOvTcvOF4f6TuyMLq8aEyMOfLLUfVGmI10Pf+mHlT9GXZ8nB4109AJ89rgA0owjoUXiAshsRQeYRgcWNpl4aI0Bmfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9474
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

Hi Janusz,

> Subtests that measure time of resume after engine reset require results
> from at least 9 reset-resume cycles for reasonable calculation of a median
> value to be compared against a presumed limit.  On most Gen12+ platforms,
> as well as on some older ones like JSL, CHV, ILK or ELK, the current limit
> of 5 seconds for collecting those results occurs too short.
> 
> Raise the limit to an empirically determined value of 20 seconds and break
> the loop as soon as 9 results are collected.
> 
> v3: Use NUMER_OF_MEASURED_CYCLES_NEEDED symbol (Kamil).
> v2: Split out a change in handling of not enough measurements to a
>     separate patch (Kamil),
>   - reword commit message to be more distinct from other patches in
>     series (Kamil),
>   - reword commit message and description so they no longer state the
>     scope of the issue is limited to Gen12+, and list other (non-Gen12+)
>     platforms found also affected.
> 
> Cc: Krzysztof Karas <krzysztof.karas@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
