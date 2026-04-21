Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMpyL1nB6Gm9PwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5696B4460DD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A25410E9EF;
	Wed, 22 Apr 2026 12:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="TTmS9/t8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013038.outbound.protection.outlook.com
 [40.107.201.38])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27F3B10E250;
 Tue, 21 Apr 2026 15:48:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bIKk2KyeLZEyTgjihCeepa+tY23UwL2zu0DvK8SUFflx+fpn2MfcgzN8IXomWZkWl/KNllAq1tRGcB8ZhVNXhs2wnS6Wa0WmqG8J4KQhutpEhO8I2imTDpGij39ti2akbclabWaS/kNbdx1PxeEzmVrvvQTUAd5oGWhd3rMz25RdWbcl0unDA4Rvy6wowVpS5Exm7IbpNYEE/G7b6xu4E4T+JHP0g9y8BRsjZ+QwPJ37M5a+Uf7liAJzL/mMZ091eSca6N83zUboKyggbqjkiDVdspa4rIeh3y6QleEzO6Hy02juv/D862XKLV+0LQ1onHc9zqrtF3sqVXMg0y5FKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oOsIPZib/PUVqiWuLFcyRSJWo5cM+HcPs0eKOCOWqcA=;
 b=IYaTiEn0P4lcJyk6JAOzuKPvXKtEQE9JyqkDCo9xdvyQke/uC8Phyof+a4pnPY0YzXb0te89Ne54aYjdyt3OgpNuqQAXWBcjYByVJ6aurLCEvGIgRjhiY+8xZb0+ROXJ2FDkAP9xL+hvQlCb6uxzici3I3ira8DCsTda73Fpl8Gqb+oBkf4DIamOUOgdWe+C1PPr/VXPssjwj+n4iWDsaEv/ZeRZsnnNNR0QN4lF4hosVIAGNbHqwQcPjUVaw/caqZ9BbX4K6wIsrCe4cqiPiufGYyjoUbJbPBgo50v9rf18l+8VbdGK5geswBa6xQRrLlaE8RKomTrTrt4oeiw6zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oOsIPZib/PUVqiWuLFcyRSJWo5cM+HcPs0eKOCOWqcA=;
 b=TTmS9/t8lE/QVxmWHGsMbWDVK0kqiQZ8MhgxIxcSdH46YZx9r2zLGzpqICHSwx6tRsbZlUZNvN8XAyHyRoHCgolbWsvqlYDReQ6pxcgPn4UkddcG7V1ZAIuWayRHRrtfSpI37KHX7TqZzCSEcU2EId8eLyOPm73arlzNWPpx3N0=
Received: from BL1PR13CA0293.namprd13.prod.outlook.com (2603:10b6:208:2bc::28)
 by CY8PR12MB7539.namprd12.prod.outlook.com (2603:10b6:930:96::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 15:48:44 +0000
Received: from BL6PEPF0002256F.namprd02.prod.outlook.com
 (2603:10b6:208:2bc:cafe::6c) by BL1PR13CA0293.outlook.office365.com
 (2603:10b6:208:2bc::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9791.48 via Frontend Transport; Tue,
 21 Apr 2026 15:48:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BL6PEPF0002256F.mail.protection.outlook.com (10.167.249.37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.18 via Frontend Transport; Tue, 21 Apr 2026 15:48:42 +0000
Received: from satlexmb10.amd.com (10.181.42.219) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Tue, 21 Apr
 2026 10:48:40 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb10.amd.com
 (10.181.42.219) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Tue, 21 Apr
 2026 10:48:40 -0500
Received: from [172.31.184.125] (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Tue, 21 Apr 2026 10:48:38 -0500
Message-ID: <bc5e8c5c-fc9c-4efc-b1a9-98c43c6a8762@amd.com>
Date: Tue, 21 Apr 2026 21:18:37 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20260324 )
To: Peter Zijlstra <peterz@infradead.org>
CC: John Stultz <jstultz@google.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, <willy@infradead.org>,
 <linux-kernel@vger.kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <ravitejax.veesam@intel.com>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
 <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
 <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
Content-Language: en-US
From: K Prateek Nayak <kprateek.nayak@amd.com>
In-Reply-To: <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0002256F:EE_|CY8PR12MB7539:EE_
X-MS-Office365-Filtering-Correlation-Id: f88a5f68-2b84-42c7-2bd8-08de9fbd76dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|36860700016|82310400026|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: TI9kleDHsXE1Of2TXGadql/l5NcLxpx5psfri719PrnWMiRttS+kBdelPZx5/t7oaY+V5HEAmpbZjEobPMQHAU4zljQoCw+kuzrluuzLhD5VDX7aHun8D64/jrkeCqg45HUQmx9uKFUxCyo5iM0HwgbN28Wofri6QsGUKMrmszy6RqEFUlxgytAEAWE1Bf/JJjhMhj2dfx9OvRQjTCNrs7sZlbUtw5xYjREVm8ipz/tN4cRMmeB17q/rJiYJhovNNNNJrVpaqE+7sOAllgJDrX7pmovWijyeilvpV69yWAiYDv00HXEhBEIIfZQG28gtU/Gg7tnvAxm8eqqnGB83ggeFw2aPWqdsXXuHKKIytPtYCCQKfk6qlTemNzviE36OWserycQ6K77vkphT3MgMhrr2ZVmYFze7iTavxwZSbZ+eKH+qVjkbboIJvKcRCPuZn7IvGqe2R9Qe3s5dIyYoGp6tddu4jPtTWUYnK5iN+gggJhH6GPoSa2Z+jeO1pxG8K49o/hpq/MvHbIP4AlD+1b6zeikllocN3s0zsfhI0G09I8TrfYxjz5BIcVkKiOxzt6uD+mOsSm75+QK/J7Ya0Wmbj5BKv7BUjBP2EFrAFzgl46sVK4Y8toejnka5QJVpIPATINfHHr3+9UU+zDnf+dmhPDwKkn/7beCpNQwZaZ8cAAZJ0uviUeE2e8GBQsRW2TgcS52x8TYOnrGkm4pCPX9Y5BX3IV/nwrWXJC//+D0hxye18ZDEdB1O2yk9reihOAg0NgXPItDHfp9DbC1lnA==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(36860700016)(82310400026)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 48dboG7pcoxN5xGMzrWbBZqTP7CLXEPezX/W0TGt54+jpzZpmu0J73ggXcVzbVWheeJV6aV9QUE0rnPwYO05uNFSH3IrPDnlAImxHwyrqO5xO7DlQqK+KJYeLzo4GHCFrHRZQgKWjgxB5aUYNBzxqHe538yxuIYaOO33nQZxqcGyr+YQdoM3siPEETi7xBm2vpea3B+Kkva3rcFwuLpvhRuo/xnNzeVBHEeU15iyfEPneazRBOCTKpI+UGh6n5zESoNxN4nPwwj3s7OEb0NKeoMds3IfQ6rigUFOM/IripLp++vy6nrY9GqVol2TwFkDV6bWD3i6bfrXqwQzf6IynODjcW2mTQtst45Jbm5dr4iErXvhreAPWhzc5MGcDcb4t5IkIbIGFFpdpCsQ/rvFDugJ7R/Za8JRu5hFmRqYGXS17S17by810IzD1GbHWt34
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 15:48:42.4519 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f88a5f68-2b84-42c7-2bd8-08de9fbd76dc
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0002256F.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7539
X-Mailman-Approved-At: Wed, 22 Apr 2026 12:38:45 +0000
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email,amd.com:dkim,amd.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kprateek.nayak@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5696B4460DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Peter,

On 4/21/2026 8:07 PM, Peter Zijlstra wrote:
>> First hunk orders the first_waiter if we are attaching to the
>> tail of current first_waiter which would have previously ended
>> up next to list_head.
> 
> This is the case in __ww_mutex_add_waiter() where pos == first, right?
> 
> Argh, I see... yes. Perhaps something like the below though?

Neat! Thank you for cleaning it up. Those, along with the changes in
ww_mutex.h fix the issue of ww-mutex_test hanging in my case. Feel free
to include:

Tested-by: K Prateek Nayak <kprateek.nayak@amd.com>

-- 
Thanks and Regards,
Prateek

