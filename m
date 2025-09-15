Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DD7B57D93
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE3B10E4C3;
	Mon, 15 Sep 2025 13:40:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9Zn6i26";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551FB10E4C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 13:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757943639; x=1789479639;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=nisaeYXHGBznduStvXuOtUKzOtBhMunqQO0E+TUl7c8=;
 b=C9Zn6i26rYIMrp0WiTvBYDsWPS2GwTUh2C/rFijrlMim9enVAPbvOFxI
 IPx+hD4HFv1eFzxkZCwn26YHQXskKGwgStryeWSUEkfuYqST/9pu7h5wB
 MHIDlf8KlTkdOW+bgrBb8adiBoNGmMOlBLz2AyL2DmCRM8hoWfd5odYXa
 QvXXIiNqGHfD/4iUjx15GHzKHRHdW3BNDzHG0Akd0Ri3fPC7yjEgRxrNN
 Wxq38F04PrAAQMEOvaf+YAgN+ZO4jlb74uO5xq0Ue0YMBoRq8gZlty+cx
 cBpMA+iY5yaTjF6i/KQ4JEh5VGUim+WJuL3cdD/vHorHafosca72/kN6R g==;
X-CSE-ConnectionGUID: K7bqBXhqQgaAmZ7gRMIm9Q==
X-CSE-MsgGUID: 3HrwRFr0TtG9Rj5CS+mEeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59423496"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="59423496"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:40:39 -0700
X-CSE-ConnectionGUID: dckqUX9aR/KiVCwnEts/Lg==
X-CSE-MsgGUID: TwUUCczsSUu4I1PcwS+Y1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174250042"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:40:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:40:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 06:40:38 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ti2j5ESB6HclO4FOc+CEXsVJ9I7EiymLp9EYhyE+CyRUMORNzieSPbo0sw8Lxa1sG3ttSXmx+Y03zuOJf//e8NTdopwubBmTmVg5VM6uTzrMgMunkj4er6Sfu3nU+QaXElYq2xt6pHFbgiwHwuxAioH9VRLS6629j3hxs2aFXA6lPMCM2tExOA8JB+yzk7Y9AyNZv8j+ovO7niSJ66rDjOQ7lhnSD7YFk+9mCyBnvuDzCeQJl9YnWPcgT422e8iKn8CoyEhGcaW6DsAW6ycjGmhBDVpK2efgX5cLjI+2py9RMY99SPcfaqmxtUZp35cxSqtO37KnAwu+bcWqlHWIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PHwsMe64BY4XiNOpbDsDQcacb4tUBIxIdzd9s4T+fyM=;
 b=O0hr+SKwYEsyUPvGv5OkJqo19YD65+A8uqea/pbwJSetL5X99Vk0AuDnAaG+r+tQiEcKE08YJljkJG3DmLAGdBYXDxUqjOsMRfOtgEuAtml+rmM88Fs36vamdlj5eK5q3nVeYMcGw4tJ48a2ybPTFXGKM6b12QDFuECngRM9IA1sRzAZHkTAByX++ARCSvMHRyX0PsEyHPQ3CwY2ZzRwJ2FgS99O2AtmXFTHWkv9LD/yYmSoFDYEuouOVjRrT2Rg2Y413haPk9+hxXwSZfTF/ORhNeI8sz/Q9d+wjvg8GRpCHpP0rO6T8n+Eabh9Evry5uQ3iy837+IXWk2BcLerTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6218.namprd11.prod.outlook.com (2603:10b6:208:3ea::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Mon, 15 Sep
 2025 13:40:36 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 13:40:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 0/3] Add WCL as subplatform from PTL
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <matthew.s.atwood@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>
Date: Mon, 15 Sep 2025 10:40:31 -0300
Message-ID: <175794363121.1613.6250224933429429857@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR07CA0011.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6218:EE_
X-MS-Office365-Filtering-Correlation-Id: 529007c2-0743-4231-ecc6-08ddf45d72cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmdFUzJqN3U0aHU1UXlHQlM1Y2tWOFU5K2VRY2V5UW1SdS9xNkRDc29qc2Yz?=
 =?utf-8?B?VkJ1cjJxSzFyeThkMVo2eUw1ZTJ4Z1U5RFNsbHlGTndLVHdjQjg5NDI5cXhY?=
 =?utf-8?B?cDhMZmIwN3U4cEdrVmxFK0cvWFNBZjNNdDdhQWU3d2NTak5mMWxzZDdmV0Jp?=
 =?utf-8?B?S3UwZGxITzV0ZHFzY3RIbDlPc3BkczBLckRrT1BZOUpFamxKMWN5TTFJcmpP?=
 =?utf-8?B?N1dTdm1DRDBBRGhVa2pQRmVTSU1rcGZ2UklWdzg4MEx6ZmNkTk1KcFV0V2Vw?=
 =?utf-8?B?aGhsYnJQYjdnUlRuWGlhVmVkV3YzeWNqNXRqSUpHQVI5QVgwZzZISVVsRlAw?=
 =?utf-8?B?eGp6UWlTZzMxbWlKWGRFbkJ1R1l0cXlYOG1VajRkM1R2empkUVd2ZURUU2FJ?=
 =?utf-8?B?Zi9rZm8yRVdlYnJ4RHVETjNMUURqMlpReDdOVzZ0clVaVitjaU9OMThSeDdy?=
 =?utf-8?B?c3JPRm9KdE9hbHZsam1wRm53bjJsUDFUVExQV0g4Z1VScUlYcHJ0VTZScFdj?=
 =?utf-8?B?R1Y0MDRqL1llQXJtV0hKRDhuN0YxZytpSGQxYXpmcXMwRGtJRWx0ZDZwam84?=
 =?utf-8?B?OTRVTW5hL21PN3hlUmNJamUrQ1NDbGdKUmdvSDlBa1lKb3NpL0lqUUpIRE52?=
 =?utf-8?B?MlhLTjlPMEpyN21la0pMRjJHZVQ1ejhEMG9PU3F2Mm5TdXhpQ0ZyN3NobkRY?=
 =?utf-8?B?VGRqTjR0T3ZzNXVzTE5wQThwMGZGaXRtMlVUQ1BzK0F5MG5iZjFyNWZlenpn?=
 =?utf-8?B?NG0zeUZkMVd2eE94dWZPZUlNcnEwY3ZXQTUyVnNkMnA0RENLUk55cURtZ3pn?=
 =?utf-8?B?UjdZQU9JaHZBMFo1VTRiZ1RwWlZ3WFo5bXVNSytBcEpOUmptbmJFZWJPUE90?=
 =?utf-8?B?L1RTMGdyRnBlTXcxSDgzTEsrU2ZCcG41ZjcxekFNby80RmJaM2tXcWFxbkJ3?=
 =?utf-8?B?QSt6bERFWDRscFR4cWZwZnpDOWNmU3BRSXBsSDZ0ZEdUNTBUYlVSMkRoMEQ4?=
 =?utf-8?B?cVhDRFVyaXc3aXlsVSthZWF5eXJtUndhaVNoNzFxK3k1cEROZUo4eWJoaEY1?=
 =?utf-8?B?WHU4MWxDRjcyUmljK0hrSGhQa1JBUnRWRjh3NnRKVzJEblpwYWs2alpsN3pP?=
 =?utf-8?B?Sm1WY1pDUEFlL2NmaGdad3IxZTRPQ2ZqYURMLy80Zkw0c2F6WjV1U0lIMVg5?=
 =?utf-8?B?TkllUXlmSjVBbENXY3l4U3dobUlLVWNMc2FWazBqazNsNkM4dVppWmFMcGkv?=
 =?utf-8?B?S0Y1VnBuaklCOUM4VFNPMndvampSVzc1enpUa000Rk1HcHRHTUF6Y2RHUzhQ?=
 =?utf-8?B?NTZkTzZwRjZBajFyUmNKdGsySzVNb3A3VEJyRDBTdWUzSHJaMGxxci9PWVNn?=
 =?utf-8?B?L3JNZnZ5RnVYY0p3aHJpNmdOTTloMGRmQno5T2hyb0ZhZ1NuYjhTRlZSRFBo?=
 =?utf-8?B?VHNPd3dnQ29EYTQzaUxtYjJjQm5vczltdi9YdEQ5WlhIK3dnNXlndGRmSlox?=
 =?utf-8?B?RHpMVmdNdzE3dmFFU1NPb25TdUNuTlVaeGZkQytRNXlZTnQvdlNGWW1rNitr?=
 =?utf-8?B?Nkt5R1NQcWJqL1BXbE1xdnNOWnAyV3Q2MEx0SEk5KzY2SFRENG9zdExaVjNX?=
 =?utf-8?B?OUVZb0xFbkN0UXVCUmwyTTRITXZNYjExZHlma2RNcExydlEyT1l3dkpGck1o?=
 =?utf-8?B?cVFGd3p6alA4QllkWkJQTTdtcURHL1BXeTh4V2RkK0FrTXhNWkhnc2JFZHNk?=
 =?utf-8?B?WE9waWJGOEQ3aXAyTHRHcGFmWXBtQTA2aW1jdWxkNU4wMFlCK0RUejRzRytU?=
 =?utf-8?B?UVExeFF4Q2R2aTN3MnlsK3FCODdjalFxSzcwK2xta3JpTU5FZjN4ZkZtQzAx?=
 =?utf-8?B?RUtaUjM2b0IwWWp3VjJiOWJRWUpqcERuaW9pQTAwUnJSTGxzeFhYNENYVU9p?=
 =?utf-8?Q?QEuKmgh0yaA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTArQVEreEcxbXI2MnFEWGRtRWtJWjcwbWdsMnR1RzRsR0gwUE13RzhZa2Zl?=
 =?utf-8?B?cWt0b3ZKSGNJblo1cjY4RmszcmNWWHh6dmkvTFNiUmlhNmtBc29XSUxCYmF4?=
 =?utf-8?B?WnQwSm1wUmM3SHJoTkRLZ0RTcW1JQzI5aDIycUhveU12S1JHM0VaaXp1MmlY?=
 =?utf-8?B?NXlnd2VJck9WcWJNTW1tNG5kZ2RrbmVHZFpLdmpvbW9xZHNvd3ExSE05eFhj?=
 =?utf-8?B?VDltVmhSR0tjbnptMWNOQXR4eERjSk92YXNucjZ0YjlNN1p5NXY4WDFuV3cr?=
 =?utf-8?B?MUd3Q0JQZndaZnZSVXh3dE1sRFFMc1RObUFEQU1BNnJnbUpNMmMwN29iVXBY?=
 =?utf-8?B?bnhDUSt6bVQ4KzlNWkRPUk9JNjlLY3JvTlRySDlSb2xUb2ZIU3p5elIzaFIx?=
 =?utf-8?B?YjBwbDd5ekhXWjB6TllyV0Y2RUNSWXhMNXpUZ00yNE1UTDRZWWU3bUlUNEVD?=
 =?utf-8?B?MTBiOXZjMjRQMUc1VlYyN3oxK3ZnMDFlVFNaR3h0NEJxSmUrZ0hmVitTTkNR?=
 =?utf-8?B?dm5pN2x2YnR2TUxBK1djRXlDYWZMMStwMHN1b09USHZlVUQwdEZhZmxqOVBx?=
 =?utf-8?B?U3FVNTV4d041Y2IyY3pRMVE1d21sc3BZTDZkK2JpNnlpWnNtL1lxRUhKZmEw?=
 =?utf-8?B?aXpDOVpBcDA2UE4rQ1A5aXdBYVRPOGFaVUhveVpVL0ZNY20yQ3lNdUdDVTNJ?=
 =?utf-8?B?ZnFoaXQyWjJkM3dEUzdraHBxZmV2cEtqU09HTjYwZVZDb0I2M2wwYkYvcDhP?=
 =?utf-8?B?dGU5Zzc1ZUhxUmNhZ2Mxd0NmRnJhemtGbHF4aDY4Y3pJY3piQVB2M3NKRGhn?=
 =?utf-8?B?Uk1ULzVYZ1RyLzdaUXFRUE5IQ1R1NGlLeFkrR2NvNFdXZHp3MEs0S3RnekdO?=
 =?utf-8?B?ckM4Y2NqRENrQnFhaHZXQkFEWGpWeFozblhNTktiTTBUSUw4WVZVdWN4LzF6?=
 =?utf-8?B?ek80M1ljSEJwNGlwdjFjRmw0YU1UUUZEcGhKTXk1OHU0RGZWTnBTTm5KZWdz?=
 =?utf-8?B?V1BTSjJYbnRxMnlaTG9DN20rUlZqRis3QjdNUCtydXFsRU1vTEg5eXVCeHly?=
 =?utf-8?B?Z3NTaVVtMkE3UUhTeDlhd1FTRnBNNjNEU2RaVzRtT2ZkRHlsUGxHK29ZVTV0?=
 =?utf-8?B?QWd1R3E5eGI0RTBiV1Z6Q3VkUnJOY3dadkptQWk0V1ZJK202R1QxTFVNYnNz?=
 =?utf-8?B?bTlBbXF5N0MxQ2p0U21rOStSaHdiSWh2c3RYWVEwY3FxcGtXSkV4Q3pYZk9m?=
 =?utf-8?B?TGZKSW5tV09mZUNWcmVRa0hQQjl6WnNrenBWbU9aTi9DNkpJVWdoZjc1Q3Zy?=
 =?utf-8?B?dTRiNlFySDJmNFBqQlVDUnBkOVlGMHlMYUVaeDlORlhKczlZNFpjcDQ4QzBz?=
 =?utf-8?B?T09XREFnUFVLSHV1czljUnZUQXBYMU5zZkVhaXQvRDd2UWRmd0dNdkZNN2p5?=
 =?utf-8?B?bjJFU0ZPeHI5YlFpOEQ1UC9VV1huUE0zcGU1NEx4N1JCcXFQQkdlOVEwMWVx?=
 =?utf-8?B?U2VOM21qb2NSMFNSNnFienJHMFNrL1ZYU0cvNDhwQXNaTUJnKy9ZdFBCMFZv?=
 =?utf-8?B?OENMQ25qbzVNSXFTK0hUbHhha3N2NTRQMGpzRG0wRjlTMkNVRE5JSXRaUXFV?=
 =?utf-8?B?SlJnVmlYS1VZc1hrN0NGak43bmt0TEo2V3E4SmxuZXdpSDlIUXF6ekhpeDlC?=
 =?utf-8?B?VnRheURZeUhMSzBHQjBzWGxmUW81VWV2MXFLR1NGUlRhTWtLcVFKQUdCSTlm?=
 =?utf-8?B?eWtSUlFuSTNzZWxrK1hZQXNOd2h0VVZzYWx3YTFhekdsSmJIeDQ5SVk5Y3E5?=
 =?utf-8?B?SHV0elhIbVIyUGlsQUtqOEdrZnVSejR6dHhuZ0pVcWpZcEhOQnRxNXdKdjJk?=
 =?utf-8?B?NlQvblM3RjUyZS9teUJVNzQ3c1dDbnJCbEovNkhXUWJKelhEN0dlK21pT0px?=
 =?utf-8?B?MEdjRE1UdXU0aEZNcGlZSU56b0F6TUkybWJteGduR1AyaHlpcENZbC9Lc3Nu?=
 =?utf-8?B?YTZ4RUJadTFuZ2ZMM2ZLUWdCcFc1YlZqTlVhcWVVOHVzbjFzeW9Zd1JxK1Rr?=
 =?utf-8?B?RmRpWW1kdWVkUWhtUHRqZVlSemZCemIzcEV1OEIyaXBUK2I3SmRZVGpFbDFh?=
 =?utf-8?B?MWpERFVlbTF1eGRrU0FyS2JoVUJvVzNTZkd0YWlmRHBmZ29Ca3pSNm1EL3Yy?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 529007c2-0743-4231-ecc6-08ddf45d72cf
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 13:40:35.7240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 17HVh1Q8jZFDsucugVbR3GuKUoflRj1xSz07wvk9dGSU5+IhIrE8x/8kfHDvmV/7uv4E0PbhlN9vACALOAv2+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6218
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

Quoting Dnyaneshwar Bhadane (2025-09-11 17:55:39-03:00)
>- Add WCL as subplatform and update the definition struct.=20
>- Update condition required to distinguish WCL C10 PHY selection
>on port B.

I have added comments in individual patches. More general comments
below:

- The title of the series is a bit innacurate as it just refers to the
  prelimiary work for the final objective of the series. I would simply
  re-use the original patch's subject because (i) it would help people
  see this series as a next version (considering that you used v2) of
  the originally single-patch series; and (ii) it is more accurate
  regaring the final objective of this set of changes.

- This series should also be sent to intel-xe@lists.freedesktop.org,
  since we are touching stuff related to hardware enabled in the xe
  driver.

--
Gustavo Sousa

>
>Dnyaneshwar Bhadane (3):
>  drm/pcids: Split PTL pciids group to make wcl subplatform
>  drm/i915/display: Add definition for wcl as subplatform
>  drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A
>
> drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 11 ++++-------
> drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
> drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
> drivers/gpu/drm/xe/xe_pci.c                         |  1 +
> include/drm/intel/pciids.h                          |  4 +++-
> 5 files changed, 24 insertions(+), 9 deletions(-)
>
>--=20
>2.51.0
>
