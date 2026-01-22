Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ObRBEZmcmmrjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 19:02:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB1D6BE34
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 19:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C56D10E0E7;
	Thu, 22 Jan 2026 18:02:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j8oq+BjI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A63B10E0E7;
 Thu, 22 Jan 2026 18:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769104962; x=1800640962;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=GgCHST+RbuHmZYCJqoZTMMOArAoicvSibtNWugmlCAc=;
 b=j8oq+BjIE8I9BrBssrBHjbkgm/SZl0N3sfY7+2nk2oAGhn1G2sT7SCKB
 euT5GqSWNn1aPDLTsQPOFNZRfcjgnZney2Q+MSZAhk/7b35c5VGeFieCk
 Cea8vMpyJYd8RjGzjkYC887JDFkkeS3+h0SGJpmo8I1kgLVPxBr0c05f0
 L3MI48xbqjVeonfSiK6I7/U5PNz/4bjtb3kdaKZeg8j1CCMak7+2e7z37
 YNjVkSr2o5zJ1otF2UU47HQebH08JuDGlCbeWRdPrP4x+CiAl97su0a1t
 IJcVsF0YMOlvebqEmptsEbcJf9Z2B2nNqsiJwPcQjU8/HtaF0BYR7k1GA Q==;
X-CSE-ConnectionGUID: Zcpxpi6gSUC2SBzJ2phKtg==
X-CSE-MsgGUID: tf/8CPtnS1qLqpL38SVbrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70403377"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="70403377"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 10:02:41 -0800
X-CSE-ConnectionGUID: kazMZVUlT62aBzQ8o/VqxQ==
X-CSE-MsgGUID: hkQPidmDQA6BHK6EVHcyVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="211307291"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 10:02:41 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 10:02:40 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 10:02:40 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.33)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 10:02:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OK3zGxqzEne4m2UAVmqqUN07ArPuZw9KTGEAmY2CBqNkZtHOFSq7I33HpaT1JEXc/DoxdgcSQmPgckk0EkQV8tWUJfzZrUSNyt0G1hSDP2WVrSiPR8V1rogq0hVAneAx5LJjxXJQKoxC2bhAlq+/d+nF4NkC+6mEHYXErc773CyFfb8zZ8vc33k8PNtgl7qvEW494INGkbSmmZtWlSg3SFHrmEabC8/zbaUFISYbR8ePcGC3YSzrDjP1KsTtXVPLQgmWuCbyLBbLXx4sMNgReg/iBHemu+t094ajIdtyOLIlymH1xEY1sQw112T4lQv9sZQLk9gZ3JW3Je8fosZ/RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YrI+8X5GQDnaCMMkl6rysOwO+s6h8czkqaFUf8/7soQ=;
 b=eDO6TjFBPSOyFyJ3gaN9o6Xxz7i40HKctStrZ9gIXFVksm6iyJDihNzHvHrOZAU0/fpV1175QVyxUDjrN/dCLn5Yxu/EY+h7cA74sHIBm5G2xZruc6atGzCjqtrLvQrl88RqZLOeoTthImk2G2GLs9ltQb5J9T8n9EyYTy9+7kZPNsN0jLOMD/yctNNRq/N5NJS0LKHFww22RMB1l1AXJ4GlLMZxAAu6jRtKpP/DC+jiDfQbP12AkbQwW9S/dIezE0FkpBLasHcdNAbxK9smoeHYDFQgr75xh++so2A7ksFnvgQmSG22GLg6MkVynoxf4UYThOEJDFd9E7qS+4bE9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH2PR11MB8834.namprd11.prod.outlook.com (2603:10b6:610:284::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 18:02:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 22 Jan 2026
 18:02:30 +0000
Date: Thu, 22 Jan 2026 20:02:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH v3 1/3] drm/i915/pps: Enable panel power earlier
Message-ID: <aXJmMOhMIcf0mrC5@ideak-desk>
References: <20260116085455.571766-1-suraj.kandpal@intel.com>
 <20260116085455.571766-2-suraj.kandpal@intel.com>
 <36f6ab153c13cf5bf0e4db6969a95db9c3eb6ddb@intel.com>
 <7c7b6afb4fdb0c4259a20a6fd847f66f5c9dbb17@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7c7b6afb4fdb0c4259a20a6fd847f66f5c9dbb17@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO2P123CA0001.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH2PR11MB8834:EE_
X-MS-Office365-Filtering-Correlation-Id: a879d3e4-485e-4339-23ad-08de59e068f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nRgEBwiGDvJTImRSEwdIRXz8cC2iJ8OXNyWiol9UOSKX9m2s+a80LiNczluc?=
 =?us-ascii?Q?Cjq08AwNalcVei2GtxJ7JqDseR/3rVmOTLLym0u2Fx57HBWKFF/94NHSmAg5?=
 =?us-ascii?Q?wl1tleuagjxRPWnMqsNLpyulvljIJjfp2Y8QKBzRgPtHn6veOEWLKe3LED00?=
 =?us-ascii?Q?I2lBa5NcHZfqYCCpXwNNkFuXctngH3krZ8gdrW1HrJcneSXuZlsd4BC5tRg5?=
 =?us-ascii?Q?uNBtfLgrmva79bO2dp7dmsCI8JHegTKj9Ati5rMDE3Tne/dcqRrlcW9HNwZb?=
 =?us-ascii?Q?eOQXVSsVPXBubisGjoDanGt0xzI2Rksbt3MvjeOkhs95IjaYyn84zQd8Y89I?=
 =?us-ascii?Q?1BQFGplpwE8ad7CxR+YThNfF70YLrfgDxdflnR4/N1M8gFOvBg/AIjDOYnvf?=
 =?us-ascii?Q?s+Wx0i6l8TEydPKPNcsOn6E3sC1x8UU9c4jKTvMWJphKCEJzQZbacYFgcmBX?=
 =?us-ascii?Q?IZjwyABGBTTTOQ1iNt4Ih3M2bzMa1FHDMHQU5B+JtVgQwtvvDTP+9CxXrnEt?=
 =?us-ascii?Q?r3jzBs9el7jESEB6JvqfHKuczN1Ecw9+V77NPmmebNK7D/gFefDTTZpD8m6R?=
 =?us-ascii?Q?M4GXvHDk6Ql+u8Si6+waF/W53oUr1P4JPVWkjoAjnVPpvbhcTp+fcvhs1VlJ?=
 =?us-ascii?Q?56GDYTWCq9WhIlXwyEVlK7AnO/HC8DHkATLklw5q3PzCZDRbh5BuSMsXZtEP?=
 =?us-ascii?Q?IpUxcLK75rEb0ajklCTSmSPe12nCmC2eoqFy2WJWHr06Zj4XjIsowyc5DK1j?=
 =?us-ascii?Q?sL+YHySjLdh6kl71aarJQ+x2E+lhcccIW88qmsk5KcavJ+r2GcFKpELKwYQq?=
 =?us-ascii?Q?4iEpUOX0TLLb00fEelImDi6wgQvrsJ/Sf09U9NjWDIzqNbUbTygC/vaYyKy/?=
 =?us-ascii?Q?AxicQMscGFbNEzqDRgvd96RRnid4KJMPb37P/CnHlI2b9Dp1Gthhj6OipL3s?=
 =?us-ascii?Q?5qZUqi7RA0Kqz3vuGUO/rLVyX/CYj1Fd8eIj6yOvf9iouU3OH7KzjZwjXkdF?=
 =?us-ascii?Q?2S3k40nx1JtnsBNwuM/uw70jrBNG3ZDgmN34lM8ZSlj/TAqzZekMqMknX45j?=
 =?us-ascii?Q?gS/NoNotHG3X3MXuIc2oePajKK2KcX62+ejnKq8dpN+LnfM+0H7wT2P/D6n5?=
 =?us-ascii?Q?AhhohaDxCJuRoZ5KQ7N6Wncr1kXt3116kjP0924Gyg4X2ww5Rnt9+dlVgr/p?=
 =?us-ascii?Q?RzELpzLSEktY49XwIo+A7yxZhjiwUrmu71F9+23yISPZSgOOsdQuloE/To0k?=
 =?us-ascii?Q?gc6qqN5dI9omJrWu1rE8jJTm/UQuTYDg+oCY7+vGXqc4jOAoPndVQ+MKerFt?=
 =?us-ascii?Q?aKF2eAKbNPSrYoAmBfEP+TXsG7vx1GTj5+qKe5ulX+Lqwmm5sjRo/zyTPeQT?=
 =?us-ascii?Q?jcQfOrsEOUdNHsqGG+Z0Kje7Vj7fpbpMDxKUzFyQuRfHVomVg9o0NUo45xBL?=
 =?us-ascii?Q?3lTzQodpZpO84Up5xjYJq+XlN1LXgdwyo2/12z1hYSIY7PK+SC0dU5j1urgM?=
 =?us-ascii?Q?gdw73e3JgR/7XHKKG0UxnxijSd7tzN7nyh2BubYajWqysxVB2Abt95soofvY?=
 =?us-ascii?Q?DkW7Cop0jNMMTcCFp5M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OV5kyMhO5QBn7XTeovunrlenlG9rP+HSx3EwV/othHgcyvOnO5bmbQRB9Y+6?=
 =?us-ascii?Q?d7dSj2dsJT19aNBV9f4XkfZz1d4nD65qFqmiKlCdCzfDW4YzwfkXmcKTbwfE?=
 =?us-ascii?Q?Z05ddJowgJ86D7aMj6e4k/VJYE9sqWoE0LspWi4hW2dmTtcUpEbwgEk+OzNf?=
 =?us-ascii?Q?YAkbaqSCOClcBzi7R+9ryFTT4QnS3J+JYNTlyfj4VVFCsHTU8OA57zCzkIhA?=
 =?us-ascii?Q?sVS90TOMakyez0uubShkn3+lBMQ7xgfJC2rNs1RWcmMH8cq7Azeww5Xl/A+D?=
 =?us-ascii?Q?Kfon5vxU2FSjLmLq8NMdvxhZozbhe+DdbbFsu0JKq/VqmfUX6otCKreofBSR?=
 =?us-ascii?Q?k1uFgi3ZEQDawteuOjjilaWd4epsVlsqycA+zfLmDslwhiZvob765zXiCb3M?=
 =?us-ascii?Q?pcl88+CINvXhiDQxiUMQGdibeZXI3UeiJzrtvXxFHzPX6Pwrgx3QniUm9u//?=
 =?us-ascii?Q?jpfC6/0XJQb2waflQFPXg4exOBzeHRx5U4i7lD9GBmICoB7R+mi7bTtcxAwX?=
 =?us-ascii?Q?HNjOlpFSTdnbRRyhRF2hkBPb64ASMBZaND5ZuBFF7XjUFtS0U4Qm6hCZXnpv?=
 =?us-ascii?Q?mefbHK/ZKxQcQgMKV7IS/fW3nGq49GjZMfFMPCavfAD2157/twOgScL3MHEU?=
 =?us-ascii?Q?eXpLurwqBFv5poXkbiMB3YVViSTuD46dfH+JH3mgXgIb8lh6Wi9asMDoygSl?=
 =?us-ascii?Q?vOtOYB3sGzDRzkUkuk7JLOulhSk8MZUSrudMIAQjJC2+rSYGXnfHRJHi9Q3G?=
 =?us-ascii?Q?7l2iNKcdWAfKhtN9LC/3LlNO/gln17VjEci1ljJ8kzxhkJ02o4U4L3hKcJm7?=
 =?us-ascii?Q?b+tRZlGCA1TGwzIrHIi9+jXDtSY/4wCf+IlnRsrPld4ljpkkXDpywgrVoOAU?=
 =?us-ascii?Q?ziXwpIPIZNnV5UPIR26QTiiW9B+RkuO+6Kcqrds9iR6Hikxwb3M+6Ck0Qnev?=
 =?us-ascii?Q?P+pvJgPvTldelB8gAs2kBlcyTPhic1F/UokPbsa4GPkfki2AH1HfHW17Ytlf?=
 =?us-ascii?Q?pYk+hPPhPKVgONqblaYHJ2gik7MHfG6IjyoGrbzOcm3dD5Js1/Lsc/WKEkT2?=
 =?us-ascii?Q?Jr6n0c1SRn8kpBkZ9VEjD5ivIWXsu4cw0FKvTdZbOGyEEn/QUcc1zENiDsnD?=
 =?us-ascii?Q?FJtAwRiZTsDbzmalxgbYJOZPXtyBV8Sqn4/wzbfSsMdQ/G0MxB1ZkdEaMZkv?=
 =?us-ascii?Q?XSbiMzPfClozqRSf6Vk0zPwezKr3rBkO/SwF8B3JBjlGtwHOHvlZgqplzPq5?=
 =?us-ascii?Q?Hyke/aodRTh799KowWJ/9mz1LZRV5jpRInmxXyJu2hrtu6I8VMZ4icy8qaJt?=
 =?us-ascii?Q?EG6lgzg4jp1r6eIZR6IQ7ikitF/NmBYKgowSvrIFmhXjPo2iM7a4FITMVlOR?=
 =?us-ascii?Q?t6ssxMlcUm6lcAPvsUcu4hDuLp7MOnk5L4KsIWN5FQfMBQYkK2tmYA89guD3?=
 =?us-ascii?Q?9S+vw/p/6AMyf2GVWL5OxPfAspFzOLOkrAfCv6x6ypQCiar1N6HyfQqmL+G3?=
 =?us-ascii?Q?RK++Ih56WHCSI9pKzd3FsgoFtkP4qT5ICOLvwjUaLd/ZexMRVBWUW0BWx3o8?=
 =?us-ascii?Q?pPxN9NCt16Y+VKDaHyzaZP+fw/rDS3H6I+7cKNt6h9yhQdiIY38mGdxGZx9C?=
 =?us-ascii?Q?qC5qDm0gTepGxsGdjN6Qwzv4ixid5MnEQJARtq7DXL4dvbo4VCeFykd8AQ3E?=
 =?us-ascii?Q?f3jIbAa0C9CiK6GhWsv0f1/DYYT6Qg9nzm5jI68BLiKEibtisFWcwMQL+8CX?=
 =?us-ascii?Q?llwlFxnX3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a879d3e4-485e-4339-23ad-08de59e068f8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 18:02:30.3821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BNIVshEGvQ8lEcyfx3aaG7D1dhK/ciwj3VYMjg6MPHbTpVOUOaxuk84/aaXqx/SGbKwjmoSTPk1PqevnsHTREQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8834
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
X-Spamd-Result: default: False [1.99 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.981];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2CB1D6BE34
X-Rspamd-Action: no action

On Tue, Jan 20, 2026 at 03:57:56PM +0200, Jani Nikula wrote:
> On Tue, 20 Jan 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Fri, 16 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> From: Mika Kahola <mika.kahola@intel.com>
> >>
> >> Move intel_pps_on() to intel_dpll_mgr PLL enabling
> >> .enable function hook to enable panel power earlier.
> >> We need to do this to make sure we are following the
> >> modeset sequences of Bspec. This had changed when we
> >> moved the PLL PHY enablement for CX0 from .enable_clock
> >> to dpll.enable hook
> >
> > So I really hate this.
> >
> > Yeah, maybe it follows the spec now, but what connection does the DPLL
> > manager have with the panel power sequencing?
> >
> > Absolutely nothing.
> >
> > The DPLL manager has no business calling PPS functions.
> >
> > Currently only the g4x and DDI encoder code does PPS power calls, and
> > they're the only ones who should manage PPS.
> >
> >>
> >> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> ---
> >>
> >> v2 -> v3: 
> >> - Rather than splitting the PHY enablement sequence, enable PPS
> >> earlier (Imre)
> >
> > Please point me at the review comment. I couldn't find anything that
> > would suggest moving the PPS calls to the DPLL manager.
> >
> > Please let's not do this.
> 
> Cc: Imre

Yes, moving the intel_pps_on() call from the DDI code to PLL code is not
correct and it's not what I suggested (offline). Based on Suraj's and
Mika's testing the ordering of intel_pps_on() vs. enabling the PLL did
make a difference, avoiding a PLL enabling timeout. This rationale for
the change should've been also added to the commit log, as I requested
in an earlier version of the patchset addressing the same issue in:

https://lore.kernel.org/all/aWeybp1JaC99Rf8L@ideak-desk

If bspec is actually correct and PPS must be enabled before enabling the
PLL, then the correct way to do that would be moving intel_pps_on() to
intel_ddi_pre_pll_enable(). But I have doubt that bspec is correct and
this ordering must be followed. As I pointed out in my earlier review
comment above, I'm not sure what happens then if the PLL must be in an
enabled state already (due to CMTG) before a DDI output using the same
PLL is enabled. So I'd prefer more evidence that following the bspec
order is actually a requirement (for instance a confirmation about that
from HW folks).

> > BR,
> > Jani.
> >
> >
> >>   
> >>  drivers/gpu/drm/i915/display/intel_ddi.c      | 6 ++++--
> >>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 5 +++++
> >>  2 files changed, 9 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> index cb91d07cdaa6..1784fa687c03 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> @@ -2653,8 +2653,10 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >>  	/* 3. Select Thunderbolt */
> >>  	mtl_port_buf_ctl_io_selection(encoder);
> >>  
> >> -	/* 4. Enable Panel Power if PPS is required */
> >> -	intel_pps_on(intel_dp);
> >> +	/*
> >> +	 * 4. Enable Panel Power if PPS is required
> >> +	 *    moved to intel_dpll_mgr .enable hook
> >> +	 */
> >>  
> >>  	/* 5. Enable the port PLL */
> >>  	intel_ddi_enable_clock(encoder, crtc_state);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> index 9aa84a430f09..b5655c734c53 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> >> @@ -40,6 +40,7 @@
> >>  #include "intel_hti.h"
> >>  #include "intel_mg_phy_regs.h"
> >>  #include "intel_pch_refclk.h"
> >> +#include "intel_pps.h"
> >>  #include "intel_step.h"
> >>  #include "intel_tc.h"
> >>  
> >> @@ -4401,6 +4402,10 @@ static void mtl_pll_enable(struct intel_display *display,
> >>  	if (drm_WARN_ON(display->drm, !encoder))
> >>  		return;
> >>  
> >> +	/* Enable Panel Power if PPS is required */
> >> +	if (intel_encoder_is_dp(encoder))
> >> +		intel_pps_on(enc_to_intel_dp(encoder));
> >> +
> >>  	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
> >>  }
> 
> -- 
> Jani Nikula, Intel
