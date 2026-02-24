Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBPWK2RZnWlzOgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 08:55:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D993D183560
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 08:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81D210E4D4;
	Tue, 24 Feb 2026 07:55:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UqAcRrmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE1910E4D2;
 Tue, 24 Feb 2026 07:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771919713; x=1803455713;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ON6dEXXwFFSDPNzgGuOXxCOizj/eQnbfR0ShZoW/Cj0=;
 b=UqAcRrmpi5dm/sjoMU+LKqjkf0SGe+b0GQw9etUWstxRU8+mUC0osj4X
 8VI8AXwwt9zHFLzm1DbDkSMBg0jv8NtHokUUpk1679MqrUgTVu0i2Jy6E
 SmyHKwZZJytw8kOky8lqr4Ot4wjqYv5T8gCcg1QXvKlpImduDuujVSUQK
 gHQNqe+KArgabIzyQcyvbv3Pre/KQ1lvHwO5vwJsIoS9QIhkZ9eSa96+P
 cM6gakpuG9obna3kVG11idQAcqe9oPZP2/9ItLqWO3cJ8VQ3OhNzNGKou
 ywCo5XoeNcQiz+6X35LKEo8XkGna6tYEVWqMeklC3nAjRpfW6HUh31Nhd Q==;
X-CSE-ConnectionGUID: YRyhpubTR3qq7hqWmnCChw==
X-CSE-MsgGUID: KiAHQtUJSmG/fU4CSoptFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72901049"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72901049"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:55:12 -0800
X-CSE-ConnectionGUID: N5inIKEUS5KJMmLsnw3B7w==
X-CSE-MsgGUID: feRP2Ia7QfiO3LUSFkZNMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215843085"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:55:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:55:12 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:55:12 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:55:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mtnk7k2qyYFV/9jz1dTVXDkEf2sncKak/TCX4AX6marGDtLO/EFlWG86LWoVT9nZmuX4bOVC1syI2u30fw1pnyaDL2IaVcR/wPOpBvFZQLsfw4OWLopVCT+pklTENra+ZPtv9rUQV0bY1qjSFPIOfaluTuC1WfB/ubtOPT1ZFEMfuwyjkks4oBk0uWuPwxLRNSi0sijBivQsWqAoSZVard6QoArbBHJI//ypd/BMvhcOnyTk64lWgA5l1IG6wzdEMsOR0A6jv/y/62sO66naWgqstFelsEMxcoO5cq/M9k8Htmr1tYLmz134OfPb2WL8jxno3bjXC/WBNUZNVTFRiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tJpAhL9FxKG4JjYalO3Nh37LYNq6zQrj6R5CFsHV1yo=;
 b=uQc551UglKkQwZt0e9qNHo0K/Ot3v9cPRNXuFlzC8TZjfvez0Z9Qp9bCh6E8jffLl1JiqfAFYHyllemIT90eD5FIsFZGrE1mI4bR0GqWmqGDMVN1CtPHxgZJjTflYE/mBi/dfofTuWHRamWuENSzw9Ds27SLmoQUc3QZz4VMfgp+Vka7JiYB69mSOBvLxu0yv2P9DlU/HDZOC6idCE4n5Gzg5aoc3f9qjyhW0rkVoS31kITv70l1gncAWoCKRqwFHSPZCmaZnpJY9ZhUiRsKsmwZUugJPcIQjnEuQoGeIF5GRdZ/BoCV3LwRV1kB7hvrldV6dsL6GEOmJe9BoY7teA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8772.namprd11.prod.outlook.com (2603:10b6:408:200::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 07:55:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:55:09 +0000
Date: Tue, 24 Feb 2026 09:55:05 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Message-ID: <aZ1ZWd3_KhEajgwy@ideak-desk.lan>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-5-imre.deak@intel.com>
 <IA0PR11MB7307ED11D322F4B53B76988FBA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZyEJdyNxEgazSSF@ideak-desk.lan>
 <IA0PR11MB730753D5A4BA17347FAF1D9DBA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB730753D5A4BA17347FAF1D9DBA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBA8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6e6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8772:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ed250bf-71f9-4996-a9c3-08de737a0800
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dF91De6f3SWrYibfs4rae3X22imk+gBVNZ/M5ayFhsI/NKphFkW3WhmOOmCD?=
 =?us-ascii?Q?nq79vjyr97BswtPPcvqo3yVivS3N/b1yBvByrzdeGN5UPgfZ+IKD0OWkoTeG?=
 =?us-ascii?Q?QxqjWKpYJfQ2UIdslq13Tl95vzRNMQCCNxc0Zcjh0n216We/EOlTZ0vPHzVt?=
 =?us-ascii?Q?qba95xl7dyNaTvf6TjdszWhsYqO+4QrdXQVoCnzoIK5jcnBT9uTw4Z5r5w90?=
 =?us-ascii?Q?1P/3UneQsJiopSt9bNX+k2dt+qNlP0A8O3BQDJwtKdLZCOs6Uq6GfDXm3dyM?=
 =?us-ascii?Q?2GEXi3hoK9CbMwcacrby5PDTLuMtCJaCWMZe2+wvWwpRmawCJ2J+AzQwYCjK?=
 =?us-ascii?Q?+AISdF+2g10b1lilPy+JTCM9GVUEzT5j3O3UhJhTTsZQq1nUS6Dh8fc4NDEL?=
 =?us-ascii?Q?UPYMSNUX8q4wkVgqALMpnYGDB2VagiXz/dvefeF4Wr5Dg7rPxeIMwjYQrZk0?=
 =?us-ascii?Q?x8HYeysaqe+ssMDaGPqgdu2OK63qp0QS9oxTWl0S7iZMjPR/RhG4QDDENZfw?=
 =?us-ascii?Q?f71uFR5La/CglMaBuunibSlwgj//o63qUBlPyFksHLkINCin2XMCx8y1SA2r?=
 =?us-ascii?Q?a5LoZtvTD8ogp4yCKfzlMZOuQhU1rS3IVLWbuj7FDGSnQEs+WAeLT2P7gdTN?=
 =?us-ascii?Q?AekvQBSClkEpmtVK7lTd2jP/rpzZvE3Myy9b2H1Uw6e+aqc98P1CzR3yhtA/?=
 =?us-ascii?Q?FD6w3o/ytT1WNLG/DajBVpRoEqKRaat9gLbDAYqiQKu9FWgsWCBk5kXLKeRw?=
 =?us-ascii?Q?L2bUOZRIQ72IygA4BNohaP4+YUnF0V9K+tIMRzZqD6dLD4yqFhww59v6QhnE?=
 =?us-ascii?Q?dTATtTN8Z5NwI6i16xe5hN9i4Pzf65rIwoKcJacAPPVyPCll3ZcUx9dtjM1q?=
 =?us-ascii?Q?kmrO5qgGj2/SZdsNPJBYJhoqcJYxg0qhVX8Kj4HLkIXYr1N5bEJbUg/1efXg?=
 =?us-ascii?Q?eLBxZzGhmQn5PGQ8yJ0xJNGxWzwb6QV1cy4bvtvdSVFvU4iemT2k62h3ARMp?=
 =?us-ascii?Q?A11S+Gj7micc1Moa4jeShVnj2DFkmlUSHQUESzpdPkyKv53a0hFcBSSzLX3o?=
 =?us-ascii?Q?og0TOInd0IxYPzhVcFm7eigniS7blu7fuYFL3q+QEK/uR6qjdvTRTylhBGj4?=
 =?us-ascii?Q?zGB9Gpor0q3aLVUwQoLXQu6XvsD6Bd4sZlIf3KVlp0MUlrrj+nbsNFAtOHfT?=
 =?us-ascii?Q?iH43cTZMwJnRmxJADgDVhM50oqQEotf8oKrfOhu9kKh7zKN4a4g7Q+46nkCU?=
 =?us-ascii?Q?FCDVVdL285qJvCyR3fDq55NrUOjksyErUQsjS0x9wb2uvxzISKyTgIJRoZT7?=
 =?us-ascii?Q?Ql/60b//Rj0bwUk8KqeeCA8C1isVOQ3UU7kVbKNQ45VBRAUt9LopMI3IemVp?=
 =?us-ascii?Q?xjB4Z+gHrGmK6MC0Ynu/CPCiXHt2hqAHaUsPO4AZr7q9uCAs23eaZTRAOZS/?=
 =?us-ascii?Q?aqXsA3879Bq+09XOMd8KgdisS4fBD+4KHUsMEiqAGzRWgr9C8qaF2StQGJ03?=
 =?us-ascii?Q?/TxcI0QwR6sOYF/hII97ackzEowUHa5A2H5fKRf4aI8qLchTHjGntr/njArD?=
 =?us-ascii?Q?BDUX5Sr+PC8hsbhHHpI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kq0k266uct041JWeeImvd2woZg2yFz5cO5IxuHI24vXeQxZvtMj7ilEVwT90?=
 =?us-ascii?Q?imu01MBfUCL5zx4SSL6cHey0a1fZUUGIdjAuCOR2ede8skItFsG6uNFSi3Gg?=
 =?us-ascii?Q?5l8g02nCcbtlDk4gNmHrD+QySM+6jQDp1yYlc6GyxozwgjyQUvMDrzkZMkyZ?=
 =?us-ascii?Q?EV79k3KcefRR46YVwEgGJtJtmbiaONoSq0Lp4q+535LdLmngdOyI6RTP+Bcp?=
 =?us-ascii?Q?G2zzYi7STBekS4FKI5kEksTzldJOK9cQuGzvubpJ71VY0fZHbogdrbfmSL7C?=
 =?us-ascii?Q?5ianDo+vsGF/rJ3fosuz/GCJeru/Bsfa8AQexi4r5e6G6a5CvHRQUUp3evzd?=
 =?us-ascii?Q?khnM/BQiBo4NqtwR/e37b5I5AWDUkCuOHnU2Nh6FaaAvNw+ZX4Pp7E+bRP6Y?=
 =?us-ascii?Q?cdN/t0l+RmyJU/yTrw8sAsOdxO1g5/ajUaPUJa2oF9DI/rrGg/P9ntLJkEBP?=
 =?us-ascii?Q?7sRes+biWnHkXE7XjxorR/UdTHkR6ZvCdDX/21ZUQQZevsz9ukM666ld8+26?=
 =?us-ascii?Q?/uOh9Ntso4JSdw9CdT3RoXrDEUaTilkhMriEOt+szMmsYJZnBCfiKxp5nVOK?=
 =?us-ascii?Q?7DddL+fxeyKZzdrIEdM+KkmtpC+DJL99sE51Fu5indneEFq/a4kO56myFSrH?=
 =?us-ascii?Q?u+uaxf/z16zhWLL7qfAyuYcBpT/Cg+wz0Ug9JRXgM7FpIJSdxjuL/h5CPEY5?=
 =?us-ascii?Q?XM7dTJIYplVDKUNXVH9TsNUsQYWLU05wu+ctO9o1DZFIWFIlp6mXnmMNnpkS?=
 =?us-ascii?Q?nSBJr9pdOJBQYliBq0EEcmtQDkSy3nKlUEkbX+S9jkjmFJQdEfejQ4nwW683?=
 =?us-ascii?Q?q0Hx0yrGJ9PX4cITkRFVSsaeU5f5d9xFgnfuYz9EKTIfypMKRWDLeTyu3aDt?=
 =?us-ascii?Q?ZitTbrQyxlZbb7rRznpbtktusRjsq6+DTsvjRyyS/NNNeTPstr2Qwp2AEf1Y?=
 =?us-ascii?Q?KZWs0wp0InSPRdtpwONgscSbC4PcWj+M/N1/LZ47u2pLBX2NiDlNXxNJayHh?=
 =?us-ascii?Q?Gzt+6jRMAJWXgurVE6WAtb51yDjZPHe//xyqaB6SSRtXSrPfvn56Mg6wKVVe?=
 =?us-ascii?Q?F2PoshzzY+/CiLRNS1n4YQ+MPTydb6z9NC1mdrWoaH+WCAxkAxlFQKMSe5jd?=
 =?us-ascii?Q?xIeHnFPqHGHy796idrRNeuoExc7Tyy2he4Y8lP6GfxmzMcY8uaKWkUl3rtSY?=
 =?us-ascii?Q?REpklQaV6IDtpaFOMopjiBl0sd+ljiaRYxnLQyt3ZsXLfzR2dNBC6nvjPDK6?=
 =?us-ascii?Q?yHo97OlenfnZ85L2pCfFJ49EigJ9bc39c9L9BqVUsLQqq0GDp2kYrCfAKnDz?=
 =?us-ascii?Q?2HA35DGtBfoWvTgFnD2E02aJiV6362d7D74F8eV88rsIM8+lt8w4M7MW4Ywq?=
 =?us-ascii?Q?YUj6ZrkXYwgwOQ8MITozDJCsy+c/mYqMB2VCk50Z3cdn7DQDrcSilmtbcC9l?=
 =?us-ascii?Q?ojiNGeLz9rRwKKECnv0pudyONek5R6V4wwucKuCyDgYdMkyAXbmYwtJ/ZTlI?=
 =?us-ascii?Q?0B4urt2SqP+JcZf1UpREaKTyeUOQ323XLmd2F7oK8UvksGqTdYKT3ELcynfm?=
 =?us-ascii?Q?Ju06jT3Kx1zMrOBHLnfkaeMW/LLGJjP7I0qlNZ0TdC6h437RqV0aBm2sxzip?=
 =?us-ascii?Q?3eDLsp10vWsbu0nGHjKda0mmoqqFjN0njVj0UPwxcw9muVX1ZARkA4UhdmVv?=
 =?us-ascii?Q?6hN8hRBGWTwyum9jge+BvlETvNB4yI7zU/OZoqs62DngTXJ4qXPVjVaTW260?=
 =?us-ascii?Q?/3al+6pJPQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ed250bf-71f9-4996-a9c3-08de737a0800
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 07:55:09.8060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xXKb4c4H/cy9iP1M/casYxtRnStl8ToqjzNq4vj5Y9Uo6CK4RxYklctsAH3rIsSJ04LsOjzMVfThQDCJ8yUE2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8772
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D993D183560
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 04:36:41AM +0200, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Monday, February 23, 2026 10:15 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: Re: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
> > intel_dp_tunnel_detect()
> > 
> > On Mon, Feb 23, 2026 at 06:12:23PM +0200, Murthy, Arun R wrote:
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Imre Deak
> > > > Sent: Thursday, February 19, 2026 11:58 PM
> > > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > > Subject: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
> > > > intel_dp_tunnel_detect()
> > > >
> > > > Clarify the documentation of detect_new_tunnel() return values,
> > > > including the failure case.
> > > >
> > >
> > > Can this change be merged with the previous patch as the previous
> > > patch makes this change.
> > 
> > There is no functional change. This patch merely clarifies the formatting of the
> > return value documentation and documents the failure case, which was already
> > possible before this patchset. Therefore, I think this is a separate change that
> > should be submitted as a separate patch.
> > 
> This change in the return value was introduced in the previous patch,
> so updating the function header documentation  in the same patch would
> be better.

There is no change in the return value of the function, either in the
previous patch or in any other patch of the patchset; the function's
return value remains the same as it was before the patchset, this change
only clarifies the function documentation.

> Thanks and Regards,
> Arun R Murthy
> --------------------
> > > Thanks and Regards,
> > > Arun R Murthy
> > > -------------------
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 9 ++++++---
> > > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > index 5840b92dace19..1c552a7091897 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > @@ -241,9 +241,12 @@ static int detect_new_tunnel(struct intel_dp
> > > > *intel_dp, struct drm_modeset_acqui
> > > >   * tunnel. If the tunnel's state change requires this - for instance the
> > > >   * tunnel's group ID has changed - the tunnel will be dropped and
> > recreated.
> > > >   *
> > > > - * Return 0 in case of success - after any tunnel detected and
> > > > added to
> > > > - * @intel_dp - 1 in case the BW on an already existing tunnel has
> > > > changed in a
> > > > - * way that requires notifying user space.
> > > > + * Returns:
> > > > + * - 0 in case of success - after any tunnel detected and added to
> > > > + @intel_dp
> > > > + * - 1 in case the link BW via the new or an already existing
> > > > + tunnel has
> > > > changed
> > > > + *   in a way that requires notifying user space
> > > > + * - Negative error code, if creating a new tunnel or updating the tunnel
> > > > + *   state failed
> > > >   */
> > > >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct
> > > > drm_modeset_acquire_ctx *ctx)  {
> > > > --
> > > > 2.49.1
> > >
