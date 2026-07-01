Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7JzQOq/vRGpo3goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:45:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A266EC542
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:45:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UHa6eqcQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 570AB10EEDD;
	Wed,  1 Jul 2026 10:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC5610EED4;
 Wed,  1 Jul 2026 10:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782902698; x=1814438698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=x5X0t6G4kTekVpgvX0cfYaxK+onzEGL1c/pmdGtmmr4=;
 b=UHa6eqcQqeRipTLs90Ba4ycKT2mUDLi/nAfuMWcmGWbz5QLM9lpcmqP0
 hV0UVRTb6sLCCnWn/tBfQ/XfVy7G3vr+uHNwIB9iUOOnLqfmdsZ/G6Ahe
 7L2Tl0/DhbSsvalDYvyYeryP+B/nYqU3vJDJQyGYUOrwDc+VkrU9CcpEp
 22vzcVKMsiNw4lrV/5UbGaR6uvdp0T0lEwJ1VhU7K52afOxc3LcQ9k6vu
 MEx5yiA1bT/MjQ68oY/azF19OJoyLIxWZ/7rCo8EmMpOYFMJEfPxTYzOi
 xMVjyN7Y8ZgfsFcYdkIGjgyz4Lk8d9awEzPK3FTdgkcOrfQ3mZbVMnvI2 A==;
X-CSE-ConnectionGUID: Td4HrORpQeSgnWCVkD/ErA==
X-CSE-MsgGUID: 34dMgHxWRI6hxvbSnEqXTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="87466830"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="87466830"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:58 -0700
X-CSE-ConnectionGUID: 0zMfUwc+StmCp08CqrHSXQ==
X-CSE-MsgGUID: UBQukwsCQy6RRprDtheNOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="250810976"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:58 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 03:44:57 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.42) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HT+xd95rLJIjy7/QE714T2nK3Cw8TWhn1Y8/qlm9vHSnfPO725irD3pRBxlAmyTzYtEuHWoUIPrKazx+YpuMc3djUqN0xlSHPJ9su2s5lAWywEy+f6mIEQhIykraHkX6uZ1QRvfse4QVPXAG4cN/K0mXL1kJyYGGngIhsbCOTMg8q5VnX3wh0owa9mfVWku6i2ETp+6Ph4ytFSEIp3M8X77j61OZKtf2STcKUHnjnVAYrdsaXoYdClnvnXYDQlO6bSrPqGrFIZppUiEaYK1B72TewwjJANw7VjuNh1m+thFuR5QFLWcwNoOXKjzW7aEQpSB+MjpEuRwroMzKU9F6Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=haTDongWlXvpTgXvbrsPu3j+9Ud4Cx7MjCuWYJ8VdPY=;
 b=IT/8iQ3fF4aZW4+qiEUkE2HgQk2hrdslk0TEub5Tny/N+rtocj4R9oeJ/k21iMbZpQubSQqHvT1ywBSNY5S+3wql4wosnVi1EYLsddirduTNugGs2xzJkdUaOmgkmRssVG5YIdrx1zvNemKYCksmRNBIS0K/EHuarJcYHzSRNlPKS6o9Dm1ZDLPTNe9MeUhsC8Nb20Yb4kC/XKyDWaxEfYojeqKxv0nTPElYz0L96KrVSuYh5mGXL5yk9WDZkFcrYTJ/8I7zNwtr983eyAWarpOcjumqzvYUcGrMOJ88m7QGlz6+yPegmuieIEDOLAnRFRCyK4So0VY0FJ69lGeBkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 10:44:55 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 10:44:54 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 3/3] drivers/iommu: Catch scatterlist length overflows
Date: Wed, 1 Jul 2026 10:44:37 +0000
Message-ID: <20260701104437.236979-4-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701104437.236979-1-krzysztof.karas@intel.com>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0087.eurprd04.prod.outlook.com
 (2603:10a6:10:232::32) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|PH7PR11MB5796:EE_
X-MS-Office365-Filtering-Correlation-Id: 556fec66-b8a5-457e-33de-08ded75dc996
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: iSh/vMRzGo/U7HRu9vuAiQalSgPUZhXccckf6ai84ZA2vwffuLen3ef06CXOBbP840MfvuA0JQau+6ZC5modq/A5jHidwqVCeF/Fy5PVzKKfM4BeahdT9Am08gI868DpPfkVwfYLrkAd6EakAp0iqlcLYtWdYxR1sMOv0Sdh9uMJcK7olgB8U8QxAnMrVLY1qhj9ooPyMF7ev2ZyXQHiZpRRpkkRUIrxyQ8XCP2IbCkuBFcM3rdDVM/dxVsmYh8N285kyUfN7kbeaoveFQeOfO16JFoRzDcG/CmCkovyrug+ZqZdb+Ouau3fnfifd+iLLENsVlgiijWOw6vTk/dfhM797J728OzhRkfcRRCSdcS1jVUiFEaH7xMvmhafpMR0SNgxjh0Ghus3bLTNv6ikUfQBVsSW6XTreetGWx47l6uO9RtKVcduU/tjUzPCqGX5pHsTEKMOppcDSttWRI3HUFFZJm02p0DFbTXlP5cMcs22ivcGulRDhvr6KFCfYsX2RC4IpEiwaBU2cqjNxsWRmwczE+akhL/STB4kMt7/La7ukTZhJq6IKEk+pfHUu/PVsWbY5AGstcxxc/7XKpRKtyieBotnEKWMJYODz/I+8WJDxnKyyowKycBa5T4c96ie5KYgVc12FnczVtdGScEBNm9nM/sxSgwkaOecWmjP2y0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qljcsNY6WsVYvamcKjCClM2ZBSj68SsOYh8NkfvrKjGEgX58aHtLxVJnRSM+?=
 =?us-ascii?Q?3Xc2Uo/dARbtcRU9W+X+UweAdHtQPZnLmfzMLgQr/V8jKNWuxRPdAvgdrR9q?=
 =?us-ascii?Q?C/xaexOcD4c6h4fv0faSpANpz0bHiTFa4uMXcIU1nfzYvp8XQSjenTyr9T94?=
 =?us-ascii?Q?+h6Adt9Xex6ly82Cuaxf2NM5ZfF49V+AJk6/ZUvcJWP5u5YOm7Y31kxtr3Zc?=
 =?us-ascii?Q?IyMN8S91gYfGoBGGu5K5SQO+yOEwT7wYkcKJE86DIeUMq7y0ju9NcE35dnKx?=
 =?us-ascii?Q?j+GUemSPmqQTrElTEZgv27yqwE2Bhsrxe/0L6gnhKMAThVtYmSCLRBIzCDc6?=
 =?us-ascii?Q?qJTrWzotmDNphnWleV50cT2vRpmSoJZXzf4m+JL83gHmn5NLaZGxvn8uXdLl?=
 =?us-ascii?Q?tCyqOqQ2q+Xq48JUFuknGzAcN4RpQOAbO4U+H4tnaEsq7Hv0Dab18lVhLdoU?=
 =?us-ascii?Q?GtLfwXJIGQ+O5Fu6Ark5gB2k6Z0IpQ/sik67IG4ihmPgYbVzLGVdPqrPmdhC?=
 =?us-ascii?Q?Sw+OWB4rW+R69oXPDuZAjpDsgf3dLq41UTUqkp7S++xybAuE6kh9UbEg+MyV?=
 =?us-ascii?Q?DxgWoSg2X/eme4yjX/U16Z3Z9sVm3EappkDlnMvJFGpN129f2rq5/zHRFlx7?=
 =?us-ascii?Q?hA6UZpULw4e9bQ7CeYO6t5uGg0aE1URLOQzLFyFdGUMVZxZTi8f5h31B4I+n?=
 =?us-ascii?Q?Dco0bNKWJpxOAGvNaEMKLQQ0ihx91Qpuut4l//jrVP3828kLuOHy+URkWrfL?=
 =?us-ascii?Q?vevciLpLwcwaC2l3IkxR4df6lIk+DrvrjcF88sLS3357us7ABy2XSGw52WvR?=
 =?us-ascii?Q?OOBOAnMhHYNC9WzCZqlA/zSDEv7kR6pYP1OcU7xwpQJ04O6YhZgmaLIWZn44?=
 =?us-ascii?Q?Wpd6d/0SBuP6YWZaO0Adh1jn5pYGA3XoHmoQBAL+JAVIVrEEM8/ltzDcEmVO?=
 =?us-ascii?Q?26cVb7dV4RyK3foRVOSXrCSAoAWwvfUG6Wv3xek/sRFdc89Q7h+Mmgec7UWd?=
 =?us-ascii?Q?q2knrB4MotwtopO9mH3Fl0HGYvLShGnJhNFZLSFlgu0ptZZALI8Emc4F6wed?=
 =?us-ascii?Q?fMGZocgwPHQJz5cZRrPa/X4okjmefjIn6ncqrL2XAa0vkqcbe29vk82+KjGw?=
 =?us-ascii?Q?01LyX2ot0ej5GGNRQWs4QlE/aYb06V+uwdqjOsKBLWwwvL9TXsfM3PYOfUE0?=
 =?us-ascii?Q?HFfFJ7UCWfklx65dZscwGpCLFfWnVd/Fp+f53fL/+w9pGU6QLLqWHa21dWIk?=
 =?us-ascii?Q?L2O82z93jOQEZSSsb+fI6jkhp8+rMf/5nVpjigslIKSEcpxXzsxMBcfj69SB?=
 =?us-ascii?Q?3T0MFFA5U+UChoSk9soLTmLgMOzWo9OUUwNWl2oDaPBECCpSgMiRqHTTT6L9?=
 =?us-ascii?Q?DmZjhCES1g9JYSkRatsj+nwrk/LwwOF/iCKR7jTjmzsqtxLbNIVie7Z4Uoku?=
 =?us-ascii?Q?CZs79D1VZR8+O++BwLYW+0dRM8G+xxZdjreSpBh4+hIbg1EuAJ6YPNPe5End?=
 =?us-ascii?Q?aZEJI8vh2Rs/AL5ATKT2q9VH5If+1Ncc0rmVWeoq4IYWxwFsocUtvxThPt66?=
 =?us-ascii?Q?7SlTT5nLILa0xTw5czCxOqjCRcouSzQgj37VyfaaCX+PzgjZr0b0x++3Y8S8?=
 =?us-ascii?Q?QZ9sRK7Iq/+TXfnLuwmWLiqoTF5wHeAOxn0jKUacmZMMxy80ESUwW45ncIql?=
 =?us-ascii?Q?lAzNv9v+GcvYeokGBB+svPZTf7vuHQ+y4VDASevMFy1/eNOFd1OPfcPL399c?=
 =?us-ascii?Q?tck2Fk2MCSECMFvrlBQwHVbJzzjUOD0=3D?=
X-Exchange-RoutingPolicyChecked: sEIHkbH5g69Dqc0y/sbfv6N001JEKhqUw9euMJme7PifA4pYjd0TN2I92T4/kIVwfzDO9yiGJkx0hTvr/ZJLxFrL89Lryi17nQAYKXw32zXXCPcmUJCd7oqFtxDLgdoNy7Y1Vyt97JDLdulX8VPSY3VyoCz5ZRgRAENSPhSYNKmCf5fP91loz+6JosOHT+rjdWSK+102953JTRLjn2PQkUPKa5nlIy4MUgAbzomNSwwTXIWdoIrjDwIR9D15mHAWQnO55Qy3qYJRq1gTTAGRDUJafDYAQSDKTz8cgxMbohAIKQLrOISiQ24lhqz+/LtmIDSNAAO2xMiaat2HO0lcUg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 556fec66-b8a5-457e-33de-08ded75dc996
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 10:44:54.8659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EzFX5qQ6keTUFAk1a1JmQFnfWzAb4KANxcGOYa/ImcrewfqyLJuGGQ/771ORdPaRvwfiYZkRoztrxYiFHpwNZzPaTQa6VJgPqIlBLP6I9Sg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95A266EC542

It is possible, when a very large mapping uses a single
scatterlist, that padding overflows scatterlist's length field.
This results in:
 1) silently wrapping the value
 2) smaller than desired mappings produced by iommu_map_sg
 3) leaving mapped bytes in memory (no iommu_unmap)

Address this issue by adding overflow detection for previous
scatterlist length field.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v2:
 * Address overflows instead of unmapping erroneously mapped
 memory (Robin).
 * Put this patch last for easier reproduction of the issue.

 drivers/iommu/dma-iommu.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 9abaec0703ef..c403057577df 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -1493,8 +1493,18 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 		 *   time through here (i.e. before it has a meaningful value).
 		 */
 		if (pad_len && pad_len < s_length - 1) {
-			prev->length += pad_len;
-			iova_len += pad_len;
+			if (overflows_type(prev->length + pad_len, prev->length)) {
+				/*
+				 * For large mappings spanning multiple GBs we
+				 * may not be able to fit all needed padding into
+				 * sg->length.
+				 */
+				ret = -EOVERFLOW;
+				goto out_restore_sg;
+			} else {
+				prev->length += pad_len;
+				iova_len += pad_len;
+			}
 		}
 
 		iova_len += s_length;
-- 
2.34.1

