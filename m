Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E4ACF1FB2
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5515010E260;
	Mon,  5 Jan 2026 05:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXonhCAv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2103010E138;
 Mon,  5 Jan 2026 05:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767591022; x=1799127022;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hnyYhT6bxc5cuKuVTNk2uTh6AZkM1YGUD9fkcrH7J/w=;
 b=EXonhCAv5kxuELp5zaucDvlqOJ7kfN2N+rkGxt0HqqR80PcpOVVu/rQY
 x3zL/GZ1sVZwvb4B1Ur4JnsmUy0+WOuWVl7AekKiT4SpvcsLXdRqDEey4
 f13dkGy4RMU6D5lHQ2OiDDavYiyBice4F2qwOlRjTUFTLbBkafLv4ujij
 PUYJcFzzu1WUsTb6P36UplU8wnuMv2gqd1TMoffWkRnrtxSVFo7UC2mv8
 rKVrgcsP7DBxjm+b0xM/G70Pdz3/YTleGDnUHGpTv6SD368QZCxTJKf9J
 Obc7W58eTDglVNoXjbr4JH43ucM3hPruUaDAFXjZ0HSb77478WXgB/zNW w==;
X-CSE-ConnectionGUID: UDUtiz7VQnuPFEKeYj/B6Q==
X-CSE-MsgGUID: lD4oOQzsQoKkkmdIaEWWTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="72803649"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="72803649"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:30:21 -0800
X-CSE-ConnectionGUID: qW0fKKVWQrutP5JDiBLwOA==
X-CSE-MsgGUID: BMrKrqeRTwa6GMqcJbWUWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="201944146"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:30:22 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 21:30:21 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 4 Jan 2026 21:30:21 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 21:30:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rwOij6BYXmfvxD8GmKgopeqnM2hBMbk7kYEN+3IcgCL6aaf2Jh2Q3N7Ln5UY/5LCt6KkYwh8r/qtF5GvIZXr+A4uveOBKDQYyNFtpbyJ5gKPlJkMIsevpheGQ3COTgSltUnToG4MErVy4kNEcI++Jj0rMPE1HtZsh879lzSJMDxFKjqtwqO3ADXzkY+9N05gFwF/L7bn2OWazSIL39HbPjOCLWH8ybAxD34joTiP99VELTwiNPuYOo7Z6S/VE6Jae0Wjm+wxcrJcso4GyRwpo3RUmvet9Pcf/B0jnZZcZxbW+S6mtMEUmgUnW1nELvvQqVsATmiXya9UXydL+gjjVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7M1bi2/Ek6xW5aWpRi3+xp5xFuqhMShaL9biPTQgQ6s=;
 b=tafeRroLEPTNa5baA8t+87V+sr7gQBbTqeqF9d/M/zYQ9cewYICuIp16oZidjmTYbK3r480RrKBSHrEpmkIl3xj6RaRCc5nHu2P/0d6PDBPRVLc2PQwjP5JX7oe2HTxdNzPIne+tkglOnjhX7xKERMMaSFFS/5CU2Z1ngDIDobHYn94I3Sbq2weX4V/cC8uGT28tQA68eVm2MVJqVr+8zZiklDiL7Ut6uALAzOGSyWnPwXcSk/xZ7I537Aor1npUL19w5v/bk4CeI2Rs2pix/Isr7BTzfX+s7XT/SM2buecr39lC345UGo4w5VlVeEGIhfdaF3WU4rC76sMucI7JRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7087.namprd11.prod.outlook.com (2603:10b6:806:2b5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 05:30:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 05:30:19 +0000
Message-ID: <f0a09d5c-f34a-4af5-9d3d-84a390afb82a@intel.com>
Date: Mon, 5 Jan 2026 11:00:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915/ltphy: Provide protection against
 unsupported modes
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251231052315.77828-1-suraj.kandpal@intel.com>
 <20251231052315.77828-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251231052315.77828-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0202.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7087:EE_
X-MS-Office365-Filtering-Correlation-Id: 713f6f89-8492-49ed-45b9-08de4c1b8392
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUlCZXpjaXkyeG0wZUZSQllGZmxtZXZvcXdqZm5BQlFDNW10UHVWYjU0bXpq?=
 =?utf-8?B?ckNLZWxRUmxkTTVOY3ZrQ3JJM2RlejAra3JvMG9BVHJWUkFUdFdYaytEeWZ1?=
 =?utf-8?B?cmhna1phU1EzUTE2VkxCTGdnQnhsZ2VscFk3SmVOeHF0Sk15WE5RVnF3bGlq?=
 =?utf-8?B?L0NGL3ZWNGsvcS9tUkp3aHdJVm9hYnV6M2JvWGdpeEJvdERGQkhIUWJsOURq?=
 =?utf-8?B?Ym83NVR1dmlWKzNpeTdqdkt1NVpDbG9Ha21Gc1JHTGp5cHU1ZWJSS1pGL1V6?=
 =?utf-8?B?STk2cW5qNTExLzVzZzUwdDNMcUNFN1BERHZEdk5KbkZWYklYTTYzcEZITjFM?=
 =?utf-8?B?RWpOc3NMNUVUTHFQVGNCNUhPZUw5V0pJQWpwSW9nVnlhUVlGK1BKYWZkNk1M?=
 =?utf-8?B?d3U2b3JHdXpCazBqYnF0OUN4SEtacG5rTU5tQXRraDVMQjhURmltdU53UFky?=
 =?utf-8?B?Z2VBMUxBMnFYUlVKRFFLeXF1OXkrVFhnUk5VdUM1VmZyZ3F6Ri9UVDdjS2xw?=
 =?utf-8?B?QWpxblMraXh6ZGRxdVQ0RFVjSGp0TzVXcGtJTEErMzB2Z3MzQmlRcTYyN3BO?=
 =?utf-8?B?SjlhNmxBYVJ0UGhzY2NCU2RzRmg0VVAxQithK1J0dUVteWFXOTlwZTcxOW1G?=
 =?utf-8?B?dTNzdUE3SmpjV0xIM3RUQXRXNjQvTVd6MEIzeU5EUEJVaVo2Y3l0cEhSWGtZ?=
 =?utf-8?B?K3c3VndWS09UOU4xOTlDKytJNUpjK3o0NGhLdE9JQVo2UWQvTkdmbi9ydXRK?=
 =?utf-8?B?L1VOTUhzKzVHajFUT1p1VDZuRXZyQnF3N2REcUJkaWFZQzdjRW8reTk5UUoy?=
 =?utf-8?B?SDgyVlkwSHFYTDhoQVlxMDUraC8rVkcxTE5zcDMyOHVUTjZJaU4vV09oSjM4?=
 =?utf-8?B?OVhkZzlWNjRpSzhtY2ZxS3lleGJOM1JQclU1Ym8yaTFBODlSMTE3TWNlMkUz?=
 =?utf-8?B?VTNZNndEV2V5TDBOb1JybVZYWWM5YTlEeTJ4Y1dNWGJZTGhlblY4YkVLYWVk?=
 =?utf-8?B?RFlscTlwOTRHQWx1a0IzZTRReHhUdUs1cnVwWS9UVGJVRUJHbkxTY0d0UUJT?=
 =?utf-8?B?LzBUT1BscG5FQm1TeDQxbDRHSEZWRVY1ODJYd2dqd2JvbHZ6TXpyem9PRHNo?=
 =?utf-8?B?bVdNdFc0Wm1rMzlVM3M2Mk1Wdnc4Y1pJL25zUkVKS2lvQktTZnJvc2lqOVBm?=
 =?utf-8?B?SVRmb0p0Vk11Z3V4ejlLK2d3S0EzaXhpM1o4M08weE5yNHkrQ2pSRUdWM3J2?=
 =?utf-8?B?UkI1N1hHSnVjTGo1NjJlWnQ5VXY3SWRKRDRyRXNzNW5LVUJ1MnFwRTlWVlAr?=
 =?utf-8?B?TXIyb2RESGozZDEwdW1tUnZSQUVNbXVMT2JsanVpanJjY0ZqSlNibVV2MXpp?=
 =?utf-8?B?N2FreGRuRzJxR1dwR2QzQjRISzlrMFUwTzhoS0xBWTZkNy9zcGtrbVVzK3Bo?=
 =?utf-8?B?dzFtVG9FUzF2ZTV2azFXNU51SU5oTDFTdjdJTjlWNVdpaGVLZHU0MjBYaDZo?=
 =?utf-8?B?b3RHd0VDc1Y3YmZQUTJUb2VjSTlYUnhJQzhJZFl3M1E4elowWXQzNjUzcEVz?=
 =?utf-8?B?K0tjR2dpSk1rcGxsU1dpSHFVbjlGV21VUmd0TGk3K0Y1S3ZpR0tXN0RFSmlI?=
 =?utf-8?B?WEZneURJZ1crSm5vamtRMFR5ci9qbXNYREk4ZFRvbld3MTNTY3h5cm5MTktr?=
 =?utf-8?B?ZUdHZWJhMEV4b0s3NG4zU3oxZXl5RXBHclhlRXlPUkVOY3B2OTR4YVVSMlh4?=
 =?utf-8?B?cUREL1RaZncxS3AwRURyNlRvSmkxaVRhWktiSEwyMXFIZG01em51NzFIM2hE?=
 =?utf-8?B?eUQ0V1FXSEZsQzVDU0hZcEllZHRRbVFzMjI5bm1FTjBjQkRaMlFqVDZOOHly?=
 =?utf-8?B?d01UbWJsSnpSVXFiWFoyM2FvS1hyUk52Y3gxM3Y3aHlaamJrenowNHVBc09V?=
 =?utf-8?Q?0djh2SXF5TYh/OxlWWyc2rqXb3cZwxVQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkNMYUVqeDhJWE15UkZOWmY2RWhWMXN1OWJVMHRLbVZpRk9vaHRHTVFWTC9l?=
 =?utf-8?B?VmZXZVRCZ29pMDdiQnVsT1JOUFVaMTgrVDdUTE9Hd3JWUXJyam9BdTAwY1BC?=
 =?utf-8?B?VmxuY2xBN3JVWG9jMmpoV3d6S2NyMXBOTzIrbkdNRk1tOXdaRmhWUFdwelcw?=
 =?utf-8?B?dE5GQmhRN3ZYOEU0WW1aVnh3L3NKNnRUOENLNFZOOHc5VUFDL1ZDTVAzQ0wy?=
 =?utf-8?B?YnFFVjllc1ArQmh2SlpWY3l1WWpIdlpaSkEzTkpxcTdQNmxLY3Ftbi8zb2dm?=
 =?utf-8?B?dzZJTndYZzBrM1Rya3BqTXQ4anljWnNWTXRtSlFIRW5wRk5Ed3ZUajFRaWxE?=
 =?utf-8?B?ZXF3MkNucVJja3BPQ3FqWEZVT0M1YnlQRUE3cmFjMm1pQjJ0OTZ1TEE5azNj?=
 =?utf-8?B?ZEhNQjB1UG5DcDd6b1dONlowdi9uUWFQcTdGZmYxK1N2L3plTDhHVjNndkpH?=
 =?utf-8?B?bjRpa1FCd1p3VFZIM290dURTalNlNHJ3eExPcUxXWG1QNDlCcll2UHRrUGpx?=
 =?utf-8?B?RVA3K1YwV3gzWFFYSlFlVy81SHJod2hXK1dZOE5hRjNPcjNOUEQ3ZEI1NDdv?=
 =?utf-8?B?cFNkR0FDTDdhcWJaN0cvMWNSYnQrOXVydHRaMVYrV2lGWDJZc01xNlFzQXcv?=
 =?utf-8?B?c2EyYnZDbGN1MU91MnMxVU1Na0w3aXdTWnhhYzQ2ZEkzVjF1Yy9Xb1J3OWFN?=
 =?utf-8?B?c0E2MWxJV2xQQk5KbkgwRG1LYmpnd3g2VWFoTmV5c0RxUmxFVzdpb2g0c0gz?=
 =?utf-8?B?Mm41YkExVmkvY2VMSlF3Q21manA2NzhRTjdkdEM1NWlNUkRRZmtQYXVoSjJU?=
 =?utf-8?B?Y3pCQjRWNHBMcmNKdElWc1hXeHlxdUJWWnZUUXptMmNqVGJuZ1c0ZVExVXhJ?=
 =?utf-8?B?T1A4M1FjOCtzRytZZW14L3NVL2U5SXFEelFlalAzd2tqMU9nM2NDNUtlYWt6?=
 =?utf-8?B?V2VkOXRhVHpWbnpDQ2xjVHJOMnAzZm5RVCtYU2pVQUI4ZnlPYkJLWVg5UHBq?=
 =?utf-8?B?UHVqeGhBWHBORGlOUnAzTzBvSHdjZTdubk5va3VkNHk5cGVYWHYvaGNvN2tD?=
 =?utf-8?B?UkN0c20yVzVLQ1NmdEJHNkczQkF2OHJ2VGJEcFYxNXlPKzhMOGNoRjdlSVpL?=
 =?utf-8?B?SDdqWG01aWxUS3ZoWGYwckFNRDNQZjRaZ3RES09Cc3ErNzRrY0ZqWkN4RnF6?=
 =?utf-8?B?RzdqOWxsdjNCYzVuS1diV0hFdEtTR1FvTDBBcUF6M0Jxc3JUOVEyTnk1Z2hh?=
 =?utf-8?B?dks5R2ZncnE1aGUrVEVBU0VBSFhQaDJTY3NpYTFZejlmTjVvL213Zk12WHVs?=
 =?utf-8?B?S3dGL2lySmFIY29kQzdWenY0d1FpaFZndFI3czdDQk5rMWtjUFZuRjNVUkwv?=
 =?utf-8?B?TzJOQ2loR0lTOVZSOHpuemwzNm1GV21ncjVGRE9PNWhGR3lXTHRHVGtCYmhQ?=
 =?utf-8?B?bkJ4V1VLeEZxK2xIM1ZqdUlIZnlRNGIwVzhtSjg1dHhtYTcxbC9RbkgwZDRM?=
 =?utf-8?B?Z1p2QnNFc0t4cFowUVh4SWRpWStOT0lmbDRFdXQwdWoyZVQ0TEFDbk8xVno0?=
 =?utf-8?B?WU5rMXZ5NU5yUGFoR1VkSGNGRFptd1dlN1ZmcHZaTG1XUzVjYmc3NHpMNTNH?=
 =?utf-8?B?VUVrTDczbFZnYjFBR09yYlpWcUVlQ2J0UTlmaXB3QUJBcW44dVhFWnRXRXlD?=
 =?utf-8?B?MVFEcmVQZCtiNkJhUW8zT0dxcXlpb2o5bUF2UmJtak9OSkZ5SkRTRjF0Q0tI?=
 =?utf-8?B?ZnVMa2V6b0tGd1BXc0E5UDVkZXlOWE1sUDk4VUtsNG9jaSszTVp5QWMvM01I?=
 =?utf-8?B?Qm9WUUp6VitmWEZPeWxUYWROZG8zQzJGUURmOURTby84Y3NURFl1NGFPUUpR?=
 =?utf-8?B?d3RzcmdrKzVHczVXZzlWWW5MWXVUaElVeWNFTDRkTEtTZUp1c0tqUXlQNlpu?=
 =?utf-8?B?QjhBSzJ1TXV2eWFsRkZhNnQwc1hXSWZSUTdWdUtiWlFyMysvMzZNNWV6TUVo?=
 =?utf-8?B?dXdzS3pqekIxMW5rTFRCTTVmdkJGWG9TOW82enFDb0Q4MUtUOWRTMUIzd3Ji?=
 =?utf-8?B?OWJTUndDbHZieFl1Z0F5ZFliSUFaazlpc0hQNHFyejgxaEU5a3FhVjlVUnJW?=
 =?utf-8?B?dlJIbHVzVFp0dXYwTEova3NoNTJFTVNPVmE5MzdVeWFlYVo1Q2M0TjZqbUdY?=
 =?utf-8?B?cEdqTDRXWTVzMEN0NUMzVWtPVWdxNFVMcVBZMTU2N2NMcStzeDVVY0l0MG9t?=
 =?utf-8?B?K0dXTDFDY1JBR3k4NGZTY0w4MWprZklPaUwyYlJZbkV6b3NsdjVtdW5keVZC?=
 =?utf-8?B?Y1l2UUFrdjV6N05zWGtqaHBLMk93eWNEczJrYW14VUJDeG44U1hoM1FxNW9O?=
 =?utf-8?Q?itBViLM5zp8ZN+8k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 713f6f89-8492-49ed-45b9-08de4c1b8392
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 05:30:19.1382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uV+Xc/yZWSe7rcqiZg2oylt85athqw13OlgS0GQM/bF21Oam1v9eLzPCcKAVjSmqtVZ2pTabKkgK42+TqjNq/+kai9zgPTBRjv31UhIiIZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7087
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


On 12/31/2025 10:53 AM, Suraj Kandpal wrote:
> We need to make sure we return some port clock in case we have
> unsupported LT PHY modes or if we were not able to read the LT PHY state
> for whatever reason and the mode ends up being 0.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index cc85818c2b7e..54d1c68cf83a 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -31,6 +31,7 @@
>   #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
>   					 INTEL_LT_PHY_LANE0)
>   #define MODE_DP				3
> +#define MODE_HDMI_20			4
>   #define Q32_TO_INT(x)	((x) >> 32)
>   #define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
>   #define DCO_MIN_FREQ_MHZ	11850
> @@ -1751,6 +1752,7 @@ int
>   intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_display *display = to_intel_display(encoder);
>   	int clk;
>   	const struct intel_lt_phy_pll_state *lt_state =
>   		&crtc_state->dpll_hw_state.ltpll;
> @@ -1768,8 +1770,11 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
>   		rate = REG_FIELD_GET8(LT_PHY_VDR_RATE_ENCODING_MASK,
>   				      lt_state->config[0]);
>   		clk = intel_lt_phy_get_dp_clock(rate);
> -	} else {
> +	} else if (mode == MODE_HDMI_20) {
>   		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
> +	} else {
> +		drm_WARN_ON(display->drm, "Unsupported LT PHY Mode!\n");
> +		clk = xe3plpd_lt_hdmi_252.clock;
>   	}
>   
>   	return clk;
