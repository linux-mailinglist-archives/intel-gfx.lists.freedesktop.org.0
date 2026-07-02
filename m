Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cH8OGMYDRmqIHwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:23:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C36EB6F3C3D
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:23:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Q02cY0Gw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737AF10E457;
	Thu,  2 Jul 2026 06:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E429310E456;
 Thu,  2 Jul 2026 06:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782973376; x=1814509376;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ti02uM7XId2rhkf5k/vGXIS3kwYFuVQJk5C5ks0JO5g=;
 b=Q02cY0GwibiUY//popgFqdTKdV9o4xDcoSruIbMkDD99dP/bH90D0HZp
 +ooNXyTjZG6kgKNTgqKYjAIXpxmj2Xy8V9mr0VP+FC7X+d/hc9XSx6AJJ
 KzlQMrZymTsQqx1KXIj3oEMTRcj4jG6gLBRvVuFHNm4kD8FkGQ6yl8pVq
 v68Kx0ah2grGS8jicQD4UaoWMeAjUuowuSjqUbrnZJHwF8bK2E9w9p52p
 hCF09w6yvdpF9FQqmfMUJOcFIj5p75ADYkEfgmTUpD+8lS2nr1jih8wxd
 nsqJeA1K1TC3ohQ0l7rwTLFNcc95+vc38JHvvU/QQaPRAUkd5Rxy34TUS A==;
X-CSE-ConnectionGUID: Tv5E5IQsTFeQ8TrqBrZctA==
X-CSE-MsgGUID: YW6L6us0RSaeWNis90EeuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94313886"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94313886"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:22:55 -0700
X-CSE-ConnectionGUID: ISY7GNK5SMW2va6TRDkyxw==
X-CSE-MsgGUID: C8dwHLDhQy2B876OfpbD/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="257097406"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:22:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:22:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 23:22:54 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:22:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qai2VFIMb5xzxkG934S+BVlmw0YRTR3zHCzrc8jcqMaTpsuTDcbYEdh1RpI37gU0wD1GceuIUBkCgHz7NfAEqNnrkwtJ2t3Rk6/vmE6JCSiQGepkzuMuc16MIYEbTO35URwV6Xzm02IfgHJJG89wxiJCg0cztPK0WgJTU36ha4WrY2Y6qv+AteFDrEyz5XPrEo7T4o+2G3fHYCi8IbZ876Nq/AH137SGB408RhLLszSkK3Gr42tmXsxXMJ+ZtocpxeKWcsq/wZJdOHaYhlJejAkbdi/1Juyg2t1IGhuVQxknzc678ZpqDxgdul+TTywWIOSPNhC3Ta/jvL5l5SHPhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atqDRLYPL4k+axhgm+H/wPWh2zxrPkwejuuYYMKUu48=;
 b=jhMYUJbBdlCW6CTmnSzvvr9sAR9WR7/1OVthelQYDd40f/ihpOJto3pQcUqjAD2JhLnLMHcZN971o0e/JFwhc/xe/uRGU6Fr1ewWfYVO3xW0HXqO5+zxzyBYy9brPASFLt7eVdlxoN+UcIoIpIYIlOdanfKpFC1UdCIzJcqFs3nz0Jeto9jUiYOOpniBJsj1kQFMi5zM1UNEbcn3XA/nlqvjGkREYmzUlTHaHT7BwsnZTrDwBJ535wk5mHUxKX/EzTO+LpAb8l/s0E1h4gmCXlNTpUtO42RmRvkrkhj9wiC3wfmUgLlVRP8xTeJSeMmyJFUXKti3rtYUX6OZ8JgQyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by LV8PR11MB8535.namprd11.prod.outlook.com (2603:10b6:408:1ed::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 06:22:51 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 06:22:49 +0000
Date: Thu, 2 Jul 2026 06:22:38 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Robin Murphy <robin.murphy@arm.com>
CC: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>, Joerg Roedel <joro@8bytes.org>, Will Deacon
 <will@kernel.org>, Andi Shyti <andi.shyti@linux.intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2 3/3] drivers/iommu: Catch scatterlist length overflows
Message-ID: <bbh4gbq6eolkqwhcuou2fufcbpthxklb2nmawglhhxdzea6tpg@2j7xekrl64pj>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-4-krzysztof.karas@intel.com>
 <b65c0f9f-184e-42fb-85dd-aa6c06dc91d8@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <b65c0f9f-184e-42fb-85dd-aa6c06dc91d8@arm.com>
X-ClientProxiedBy: DU2PR04CA0004.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::9) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|LV8PR11MB8535:EE_
X-MS-Office365-Filtering-Correlation-Id: dbe09f06-e742-41f2-a73e-08ded8025712
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|4143699003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: tQTc2AFkWI8XSZp18ardqzw46V2HRay1RMFVT1F0z8hhlbXVDBeoycMOfQJp31TudOSDpw2jcUHczK5l14FNLQk0oX+pJLULnqNqSEYg/cVGtyEgyzReYAnSK/z+HymzeYywyPMby2J+NLp7hwLw7B/IPzLimzeu7M7vqT0scvTr0qu6zxGQ/TqilH8wJ8jeYSNqobvdeMUdAxiVLrm73xOQQOB+KyM2+5+8W++X+NA3apZF31D1ky85ELpZikCaOaDVYwzINkgWJBSUjbo7NUJp1d95GMsGQhxt+HJYCumsdExyGzN11Toe3yeRlcEO//pqb2iQuoIk02KhEO70ZBeW+X0yOJ7SeaiQAZGR5kuWrTmBtCXRJT3JLSZ3x/qZNYgy80EWAOzJ82RNeybUROgOmsKOaMCCxb8bflKhwcOE+wfp98R1W/+6J/3X3EiLS4HyZXPlEYJI/nGWDyLNiwgBb09GBs00mABjQUNdkfLLyMX3MdGbQSa2tg3uCwNz+UjbMvc6FV3Tqf8dux1L3nS2tA4HIA7XmFVbse5K57aMMjDJqhQTLJ6C7GO9UOz6BVhXm60G5UQ7gi1CSPKRs92JI4jtqUElV9hVwAiOHXVxLB9hxkcTChzMskfw0PmN014dZkBigcBLFV1mUXkmZXiIe9W6o3d8j8LVU6q2LiY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(4143699003)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUl4VnhYelFWUFR5QW5nU205VlhoUkNlWTQ4Qjh2eGFESmp1YVFjV0R1Nlc3?=
 =?utf-8?B?TUpSQWZ5dm9BbGhTN3QvRTZaNlBreUFXblZlMFBEUmpFM3AwaThUdDBKSnhx?=
 =?utf-8?B?WkduT3NlYjlnVXpzNWdUQ0YzaU1NVnl3N0hZZG4wWnJQZjFkS0pWVDVhbmRa?=
 =?utf-8?B?dTJlcGY2ZXRWWkJ3UWxpRjZDcU1lZFUvU09nZmUybnRHMy9PKzBTSjFaN1pL?=
 =?utf-8?B?cEdwYXY4d0pQM0Q3bmF4Y20zTExnR25QcXpUYk9YU0NrTC93em1xekxyV0JI?=
 =?utf-8?B?Kzg3d3BldWFPUDBYS0NOMHoydy9uL3YwV0VqS1hSOE9teUlDSS9nUUV5V0Za?=
 =?utf-8?B?cUlCRmIwZGpzZSs4SEEzcE9pYU5RMGNxUFlOMFg3dUJxZDUxSkVNcEN1ZnZO?=
 =?utf-8?B?Z1UrZ0dBNHpNQW9sanFNTUw2VmdHQWFjR0JGQ2lyTzYwTFNobCtOS0p6VFQ5?=
 =?utf-8?B?SVluK3NQVURUOTFGZ2M1aE94TU9kV0pNU0w3SzJWQnB2R1p1N3RRaWdXV3dt?=
 =?utf-8?B?WVdzbmNZTXlsMkJYR29sdmxkdXlHL0JEYVJjVmlQUmRRbTdOcjhEaFIrVGpT?=
 =?utf-8?B?UGF3QkJ5OC9IRVA5U0NidGw0UWxCT3FvdElhM3Z6bGtnNTBvQ3YyWnIzVHo3?=
 =?utf-8?B?cEl5RFRla0xtS2dOc3Z1SmJQU1BuQ2ZyR0xGa1hibWozaWRvYjl6cHdnWGpt?=
 =?utf-8?B?a3N5VWZMNFlYay9jNy9VUFhYYUpEWXhBU3JnSVNRdTk5aWcreFNZL1NzVHZL?=
 =?utf-8?B?Q2ZiNXQvWTlETVQzNzR4RDZPby85UVc3UlpSR1FZaHJ5cm53Y0NoS1NVOGt5?=
 =?utf-8?B?d0RJeHg5SzAxUlVVODhydllvNTk2b01nbU5VOW92bzBUbjVzTG5DSVQrYnlP?=
 =?utf-8?B?Q2VKZVhLSmo0Y0YzaVViZkFtd2ZrZm56MHJaa3dtUlhabzJuRFkvS05TOXFB?=
 =?utf-8?B?OWhDVFcyeFh3ZU9TZVJhQlpJcGN4TU1Fd3R5MzRtbnY5b2Q0cDJHR1A0RGh3?=
 =?utf-8?B?cUYvYUJBRWtwQlpEa3FNdWlqRjRIbXFpaytDYjIrVFhNd09OalhONDRBZFpz?=
 =?utf-8?B?ai8vQ21zN3BiTjc2NmlMblcvZVFzaWVMaGdWUnUvWVdZbGNIajlWQjRaaE9q?=
 =?utf-8?B?MnJyRTUzbEVZaDFwNGllOTFkU1JoRDZNbWVxNDI1WkJYTVgrTTNad1g0c29O?=
 =?utf-8?B?Z1Z4OTNIV0Y5Qzc0UHUrTFp5aGNZRDlLSkF5NnllYkw4NTVJS2pxZXExZkxW?=
 =?utf-8?B?dUlkck5sQitYblhlK3NoQUwxa0M3dFZsQkhwckxUN0ErMXkzRVo3MlBPMXAw?=
 =?utf-8?B?WlB5cFZpVk1xSE9DQ3pEUWRSVEtJRkVMb2NRcTFCNDhVUGVENTNKSm5NTU1s?=
 =?utf-8?B?TkFSWElYWGJ4LzlRZm1uRThDWGtkMTZFOHlBeitJMnlRSHJ2bjVKVWJMZk5O?=
 =?utf-8?B?OTRUaEtZTFBmaGJ2a0pha1N1K2NBTk1hbXdFMUFoVnQ1VnNDYlQ5YVZJeDk2?=
 =?utf-8?B?T1JlWEJhYk9TTW81eVVBVFU1ZS9rV01UVXpxWnprL0NBM0hOT1FJL3dKOGZx?=
 =?utf-8?B?WXV1N3g1UlFtdWwwRCtmVnJoRjZ4dmpRbUp4RmdBK2t1MDg1UlNZTVNqNXI5?=
 =?utf-8?B?WHRxVFcrd2dZV0tkUGtBU3kwdGhJSkJ6TkhQaHBwT211NEIyT01paC8wUm4x?=
 =?utf-8?B?aS83azQ5UmZWSmtQcytxMG94d2xhazMva0JQYnhZN25xbVlQQ0wwazVwTUlW?=
 =?utf-8?B?Q2ZEaXpBL3l2cVJiNm5YS1BwelZ4Y0pSL1QvOWdSUklRUGdLelJwVjMxVndX?=
 =?utf-8?B?R0tGMExxcVF2YWVITElUd285UEE4c2NlSVpyc0hsWGgveFFWaisvYnRBSHQv?=
 =?utf-8?B?eTdCaHJZMk1sMzQwZlluV0dKaGxBZVB5QVh6TlFVcENiWGZPT0lZRGlrYXEx?=
 =?utf-8?B?NjBnaHozY1Nsb091d2pjazRhcjRXVkJDRlB4UEtSc0Z4K1lVeE5qeldDcDF4?=
 =?utf-8?B?V253NGdRL3hETzdCd1owRjIrTm5XclppbnMwWWR0OUFPNjdxemdSdzFIckVB?=
 =?utf-8?B?V0NDTnNRQ3FzMjJKeTJqTitUdVBEZFFJdnk5SVhRczhYZjEvUGY2SEpVclV6?=
 =?utf-8?B?RmMyMzd0SkhjcXlPY2NXUE1QcGlLQzVyM3BDblFyTGQ4NFNMMHBHM1NtR2V6?=
 =?utf-8?B?UXZjclhvejFVSWxTYTF1OVM2dWIzZ1hoR2lUZSsvbCs4Z1dLQVZQZU5NMU5Y?=
 =?utf-8?B?Ym1JM3RUYlB2OXE0N0Rwd0RGenRuUG9UdU81em1DOEUzb2JjQ0F5T0NkRVJa?=
 =?utf-8?B?UWtuWXVNbWlUUjZxVjQ3d0NPTHNjK2dxbVQzZ0xvVSsvd1VmT1BhZ0o0aWtV?=
 =?utf-8?Q?PmAub6C81L8zzjTE=3D?=
X-Exchange-RoutingPolicyChecked: ZqABq9K9Otrtgf3+nidTRQFEED7jaNXwvfiIpBCrLhFJlbmojF+3k5n9ZAlu3WgjJbmRTyCopFuLmiMS5pO0GbyaehiawRR6hdED4h130EwzOyXfisuDPVSClW7/fDVCRRA79qlSEqNFwlwLd9JMWWAo3fJy/wrUEhhDa4uw+IVeQuHS24oEk/oZmS5N6VcPwTLuXsbJbfy7QpXKNEVDdEhUrBbyHAAEACB+Chql4pHtpSt51CWh7dt92l4GjZCgMSqrRBcnOLdl+UB9HFOSwE2Hd2mCI6aeb6ZIHGH1DZuHc+dC+GvjjB8JWT7X3pIAlajxvtLoxNPRkEK+Zta7zw==
X-MS-Exchange-CrossTenant-Network-Message-Id: dbe09f06-e742-41f2-a73e-08ded8025712
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 06:22:49.6956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZVXviiw+HkLUuQT4c2BGm/S5GYjqaYopJFC/LOkIMt9AdqEIjW83FrBtBUm3YtP6ANVy44kzUWLr6PMkudZRIAYkh6fHshTxon+hXV+USkY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8535
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C36EB6F3C3D

Hi Robin,

thanks for a quick response!

On 2026-07-01 at 12:59:29 +0100, Robin Murphy wrote:
> On 01/07/2026 11:44 am, Krzysztof Karas wrote:
> > It is possible, when a very large mapping uses a single
> > scatterlist, that padding overflows scatterlist's length field.
> > This results in:
> >   1) silently wrapping the value
> >   2) smaller than desired mappings produced by iommu_map_sg
> >   3) leaving mapped bytes in memory (no iommu_unmap)
> > 
> > Address this issue by adding overflow detection for previous
> > scatterlist length field.
> 
> Awesome, thanks for figuring it out! Looks like this must date all the way
> back:
> 
> Fixes: 809eac54cdd6 ("iommu/dma: Implement scatterlist segment merging")
Okay, thanks for pinpointing this commit, I'll add the tag in
the next version of this series.

> 
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > ---
> > v2:
> >   * Address overflows instead of unmapping erroneously mapped
> >   memory (Robin).
> >   * Put this patch last for easier reproduction of the issue.
> > 
> >   drivers/iommu/dma-iommu.c | 14 ++++++++++++--
> >   1 file changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> > index 9abaec0703ef..c403057577df 100644
> > --- a/drivers/iommu/dma-iommu.c
> > +++ b/drivers/iommu/dma-iommu.c
> > @@ -1493,8 +1493,18 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
> >   		 *   time through here (i.e. before it has a meaningful value).
> >   		 */
> >   		if (pad_len && pad_len < s_length - 1) {
> > -			prev->length += pad_len;
> > -			iova_len += pad_len;
> > +			if (overflows_type(prev->length + pad_len, prev->length)) {
> > +				/*
> > +				 * For large mappings spanning multiple GBs we
> > +				 * may not be able to fit all needed padding into
> > +				 * sg->length.
> > +				 */
> > +				ret = -EOVERFLOW;
> > +				goto out_restore_sg;
> > +			} else {
> 
> Nit: we don't really need an "else" after a goto, but it's hardly a big deal
> (however if you did want to respin, note also that the preferred title tag
> here is "iommu/dma: ...").
I'll be making another version anyway, so I can remove the
"else" and change the title :)

> Either way,
> 
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Thanks!

would this r-b still hold after above minor changes, or would
you prefer to have one final look at the finished change and
then decide whether you give your r-b?

> 
> I'd imagine Joerg can take this as an IOMMU fix, but FWIW if you did want an
> ack to take it through drm-fixes to keep it with the i915 patches, I
> wouldn't foresee any significant risk of conflicts.
> 
> Thanks,
> Robin.
> 
> > +				prev->length += pad_len;
> > +				iova_len += pad_len;
> > +			}
> >   		}
> >   		iova_len += s_length;
> 

-- 
Best Regards,
Krzysztof
