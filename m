Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAfPJlrB6Gm9PwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6814460E7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C9310E9F0;
	Wed, 22 Apr 2026 12:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="Y6PrLxOm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010012.outbound.protection.outlook.com [52.101.201.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 301D210E29C;
 Wed, 22 Apr 2026 12:07:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BlSz9/zZcqKiKQo/gMIC9l8x7ufFXpo/xtDVoxOd5ef/KnZ1sqTjyagoim7VX7WmAy7m3pz4147Twb4mKVDVfvjYpLwXwKDYsNLBHhYaRadWJ15Ne81LPFTYapXSNV0ecgQlMD8IVJp6wX3Mzcfp5l/pxBht8tS4iHoJGwp7hrvopOsbI1Jf6TSLM15QKizNj+LH87aueO/5vfmZZDAjtZw4CFTV6nGUUsVSsHAHjbfoQtV/mO+fFR9EA7TI826vNFDmTa+e+JS+wwJ8HS+mvuLqDliHLZ+qU8Z5SupivYiT+a9vO5jC/ujWR28/FX6VEyTzNNZp2iov1KTVP+8EqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+zwUj+MxAPzbcrZMPgEwWVb1SqvQByWtgAqItxjXHWQ=;
 b=vlk49/MkYEegXGaKd/IijkmxzNpeuMiwuM/4IoSeEOVmo6LPl4FCJ45RKjWdxoe0RvsulEzDQ43ewjCMah2UbSmR+4LcWXNCjmjpOTxlZkT981yXalLUgZ/QSs/kN2pRkF9iPO7rsAvcfs82uid0sijWVJq7I2EteOVOogTFaOGVSbnV/zf2m3UoPUjqdWfnPvO7eeLGqnPwIpJN559jkj/zE0IpvHRWFB4PsgdfP+YimyewSuW9rceKGRwPQe0w7JVec/94tG0ts67Bfq3BH7qqnbEISZc/+5MvMfC57E3kxGOktuH2WoMcsH/U0hRXnbiWDSxzarD6+XNWP0/d9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+zwUj+MxAPzbcrZMPgEwWVb1SqvQByWtgAqItxjXHWQ=;
 b=Y6PrLxOmMWBLLZzYwZkO1KUPGLlEQrN9xmUkhVgzLoSNFhZX4q8HEHA8xVehrqT3S5QtiNlMjHPN6r/8FvfWBWel6CGfSb7TUZuyGsdie6hsjsbgE+3gRcbVhYr5XrNsIDWn1iOlm5AX4+wMVebRx97oOaixRD4+rHxFjwIpu0Q=
Received: from PH8PR02CA0002.namprd02.prod.outlook.com (2603:10b6:510:2d0::11)
 by SA3PR12MB8762.namprd12.prod.outlook.com (2603:10b6:806:31f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.8; Wed, 22 Apr
 2026 12:07:23 +0000
Received: from CY4PEPF0000E9DB.namprd05.prod.outlook.com
 (2603:10b6:510:2d0:cafe::1) by PH8PR02CA0002.outlook.office365.com
 (2603:10b6:510:2d0::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9791.48 via Frontend Transport; Wed,
 22 Apr 2026 12:07:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 CY4PEPF0000E9DB.mail.protection.outlook.com (10.167.241.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.18 via Frontend Transport; Wed, 22 Apr 2026 12:07:23 +0000
Received: from SATLEXMB04.amd.com (10.181.40.145) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.17; Wed, 22 Apr
 2026 07:07:22 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Wed, 22 Apr
 2026 07:07:22 -0500
Received: from [10.136.34.119] (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Wed, 22 Apr 2026 07:07:19 -0500
Message-ID: <a4715a46-1580-45fe-b374-1b433a3494e9@amd.com>
Date: Wed, 22 Apr 2026 17:37:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20260324 )
To: Peter Zijlstra <peterz@infradead.org>, John Stultz <jstultz@google.com>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 <willy@infradead.org>, <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, <ravitejax.veesam@intel.com>
References: <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
 <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
 <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
 <bc5e8c5c-fc9c-4efc-b1a9-98c43c6a8762@amd.com>
 <CANDhNCr-+x8pTLhXZW=ATHaKTYEmXMPukz4+t8P-FeJ11Jrz9Q@mail.gmail.com>
 <20260421205647.GL3126523@noisy.programming.kicks-ass.net>
 <20260422092335.GH3102924@noisy.programming.kicks-ass.net>
Content-Language: en-US
From: K Prateek Nayak <kprateek.nayak@amd.com>
In-Reply-To: <20260422092335.GH3102924@noisy.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Received-SPF: None (SATLEXMB04.amd.com: kprateek.nayak@amd.com does not
 designate permitted sender hosts)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9DB:EE_|SA3PR12MB8762:EE_
X-MS-Office365-Filtering-Correlation-Id: 47ed942a-554e-4e02-b7e7-08dea067b625
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|36860700016|82310400026|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 3MeYO9uaaqPdBN90p6uAQ1JWyF/ChcmQg+rzl+ycWUtnKQ7M/SAjMTlrgfj826SRm2Cw8XYpjY364QG3Gb2Wjkj8R4WQRHtFHVgQQfwUC2wRGQqDkDGThjf6fJMdKNsEpK3z6+AdzUxP/XUSAs2TC9D7BRH2PA2cBE01rKTxLsZ3nIXNZliyGnXaf2+uagkAQ9i9uddtDqRSBg60kWgJiUsEZy1G4GYq+9CzMTwVD74NRnSdneGr7IXWPvMuvXq4O4u8+ARgDa4dRjceSmcZjrLkug20aQh92yqxXZfaFEOcplIOJDa9QpcLEigV0y0/BKVwUslH9G/2rqjUKivVGzX5dCwjzt+o9mPIR0L8mfJ5txSiAleSnKkIsBM0g2cuI8hCUqomaGfpv8+A9GtFP4/pls4r80yUpfhDbRfPPgfhg9WRzWoAS5ryTJWxv6hZiihk5d2B1HSC0i/tsbfT8q1662bNqtcYdg9JlrWLi5b3sm039FFiltCSY/pMxfEv5+WHRich1dX9UEYvv/Y6Xc+FkQDPTW/47sMIDeHILN8m4RHlTbBwLN2f2ggZ9pOiaplchKfmG3S+45lzxnpS5G+5dRr/iyHPgnF4kWhGttZzPXklMxx4NjmieM6EvSrQrA9ivsCz0ZVHgTVoBjZCA920sKXSxIkAgULkWmqmI7ddA/lbdy0OrZtdvH1aIhPa1VJp8lYi7SJPuqxnzS+wlZPQ8maaVaDOIxKosjmsj5s=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb07.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(36860700016)(82310400026)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 4TrhnnT/jU2F9olBKcE9HXvCEyhHZ87UBi5sgMNWhZ7IDRO702K/37uOPKcPGPW2BR/GVtb+u61VwfhfDMNdp4tFUh3hSES2fpi1IdTg1CAsk7ogB+xJFtkQC1PYxBHosUx3K61obtRumiQ4cBUxNDJrfr5NJVnGA5p5fvw6Bd/ZuaWbIwVoNIwYnUXA+o89anNoD+4uCnY4bfeWDMekPL510AO/2DzIqXif48zUm13CIlZ/+TQw5AhMuHtzUGNuH5/ssqyWetay09ODOl7S+G1+9JLK1ynNff9PFXj/G1Z10llZwVt5gmLaH61hu+kPrH92xuO9SUlTk+s3PUGJNkLeLDW8FIGATUIiKxIM5OtoVFXpLAUGSoAvKz9rYtNJBfzL26BkTai6GcCdSA/EIoXD/1VGCV5NRgmdW5gmQIl28vgC+tasIxeKYKZ+KQMf
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 12:07:23.0344 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 47ed942a-554e-4e02-b7e7-08dea067b625
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CY4PEPF0000E9DB.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8762
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,amd.com:email,amd.com:dkim,amd.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,infradead.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kprateek.nayak@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0F6814460E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Peter,

On 4/22/2026 2:53 PM, Peter Zijlstra wrote:
> On Tue, Apr 21, 2026 at 10:56:48PM +0200, Peter Zijlstra wrote:
>> Excellent, I'll write it up tomorrow.
> 
> How's this? It 'passes' the ww_mutex selftest thing in so far as that I
> get the same:
> 
> [    2.312369] Beginning ww (wound) mutex selftests
> [    4.853240] stress (stress_inorder_work) failed with -35
> [    9.379572] Beginning ww (die) mutex selftests
> [   16.435831] All ww mutex selftests passed
> 
> before the offending commit and after this patch.

Yup I see pretty much the same. I think 4k ww-mutexes being fought
for by #CPUs threads with a short timeout doesn't sit too well with
stress_inorder_work but it does make some forward progress until
that timeout hits like before ;-)

> 
> ---
> Subject: Subject: locking/mutex: Fix ww_mutex wait_list operations
> From: Peter Zijlstra <peterz@infradead.org>
> Date: Wed Apr 22 10:38:41 CEST 2026
> 
> Chaitanya and John reported commit 25500ba7e77c ("locking/mutex: Remove the
> list_head from struct mutex") wrecked ww_mutex.
> 
> Specifically there were 2 issues:
> 
>  - __ww_waiter_prev() had the termination condition wrong; it would terminate
>    when the previous entry was the first, which results in a truncated
>    iteration: W3, W2, (no W1).
> 
>  - __mutex_add_waiter(@pos != NULL), as used by __ww_waiter_add() /
>    __ww_mutex_add_waiter(); this inserts @waiter before @pos (which is what
>    list_add_tail() does). But this should then also update lock->first_waiter.
> 
> Much thanks to Prateek for spotting the __mutex_add_waiter() issue!
> 
> Fixes: 25500ba7e77c ("locking/mutex: Remove the list_head from struct mutex")
> Reported-by: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
> Closes: https://lore.kernel.org/r/af005996-05e9-4336-8450-d14ca652ba5d%40intel.com
> Reported-by: John Stultz <jstultz@google.com>
> Closes: https://lore.kernel.org/r/CANDhNCq%3Doizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ%40mail.gmail.com
> Debugged-by: K Prateek Nayak <kprateek.nayak@amd.com>
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Still runs as expected! Feel free to include:

Tested-by: K Prateek Nayak <kprateek.nayak@amd.com>

-- 
Thanks and Regards,
Prateek

