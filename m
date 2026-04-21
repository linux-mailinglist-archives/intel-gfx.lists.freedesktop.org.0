Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDQmBlnB6Gm9PwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C9D4460D0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 14:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E4D10E9EE;
	Wed, 22 Apr 2026 12:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="yg4YLWil";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011044.outbound.protection.outlook.com [52.101.52.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0CAC10E1AE;
 Tue, 21 Apr 2026 12:54:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U/1vr9H6M9Vo+Spi3f9Ip4zGl2wAH7JYAxZUy8VSQ+UyhxmSVhH7soiTiOj03dB7+hCLlXPyRT7psJcmrCSORpLzY9L7KrdwwgHaTLSGRLZHSp9LnQvf5nTmnujfx43FJLPiy/bfEoIwoK/fWgldKB8zat6L0v3SY2UQCSo44Bcs19yJaYIZKQwgQ1MQ7c3R4OC1RMja5sD3RWLruHwWdYVShL5VeRHvj2C8X4cLqB+0qTWOdeDGEfUYgldcJjY1qYOTWxy+eRNB0YjHECTXiMECXiNkqDcN/O32h4cl8zR5I8QFO0l9DJb6Q0EfQ7OMo2brS7FAr0gf6J7HAZp7yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9MjcZLKJUSfEu3tQm6++rzLxgiJQpEKY+G0NIPkQNg=;
 b=Bm3xw4T3nYd3O98x78K5QrcQMMuNd3B0Gkb94MOS4M5MUnmtGEmB7uw+mqvetpCQh7iu0GpdHZNrJZdfiH70BUoSCbUxrTCmgLlQMC8eqYF+C3Ao/Qjxfw1uLcia3J20YsBSH799wVNwFPu4cU0X33TDGe97/EvYGOaNmHTyc4wvQlIS3xY7f078jT6TjNrfRr5DJvDoz36e/rXz6oSYqWpMrA11W+XHA64M+THQsz71Jc1ecYCnSUZFo/yrbOMukbVHyHOYrZJ+MrwPj0HwGpBig6DIvYonT2GwNRMEamxH6f567SKyYHC20WI+thf049Rv6nYRICfjnGr3aSnpAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r9MjcZLKJUSfEu3tQm6++rzLxgiJQpEKY+G0NIPkQNg=;
 b=yg4YLWilG+r7D/yngvJMxtm2YP/s2oiIPDEdaltsLUEBUHTUu7i5PCVZiAM0hZrF1rQYfbnATzif5WkmIyQHUtlt7aXRbqmLk+DInEYDmqZoiewJ8pp6c1sGGYvNKiiZZFglv1YyJzLfHzvzilnJwEyH6Hsqe4AThbYwaTZdKkg=
Received: from DS7PR03CA0350.namprd03.prod.outlook.com (2603:10b6:8:55::27) by
 PH0PR12MB8798.namprd12.prod.outlook.com (2603:10b6:510:28d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 12:54:25 +0000
Received: from DS1PEPF0001709C.namprd05.prod.outlook.com
 (2603:10b6:8:55:cafe::de) by DS7PR03CA0350.outlook.office365.com
 (2603:10b6:8:55::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9791.48 via Frontend Transport; Tue,
 21 Apr 2026 12:54:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 DS1PEPF0001709C.mail.protection.outlook.com (10.167.18.106) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.18 via Frontend Transport; Tue, 21 Apr 2026 12:54:24 +0000
Received: from satlexmb10.amd.com (10.181.42.219) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Tue, 21 Apr
 2026 07:54:24 -0500
Received: from satlexmb08.amd.com (10.181.42.217) by satlexmb10.amd.com
 (10.181.42.219) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Tue, 21 Apr
 2026 07:54:23 -0500
Received: from [172.31.184.125] (10.180.168.240) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Tue, 21 Apr 2026 07:54:21 -0500
Message-ID: <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
Date: Tue, 21 Apr 2026 18:24:20 +0530
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
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
Content-Language: en-US
From: K Prateek Nayak <kprateek.nayak@amd.com>
In-Reply-To: <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF0001709C:EE_|PH0PR12MB8798:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a6698e4-f8c9-4cdb-188d-08de9fa51d66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700016|1800799024|376014|7416014|82310400026|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: uoF1hin8r5t+QvkgB5ie5QXJLHZCZZUjUqkkOEL/Ah2rfD4TJ6iYE6cMumHnbRfdQUyA6Bao1+25iFCHGXWVQ9XPSIdPo2KZu0+6BvdhOPfE5cnsUouFQ4Qng+4Ac0SM/HH9MyWOn31RUP/iLeL4xSaY0RMt4Njw7maoLws4lK2TgsUeJizv3+MZgcLxSqr4D/ycXN9IW9QVUuJeUdpur881le8e2YQC3VA7oOgtjFjEkDlFTQT3Ys10v6hYV0gAf9Z6byBy5kgQhV16qa4tLHNWjCJP0wkGfoMJVdhtX6pvwk3NAdOd29a1KjEd/yhBasIw1dOwFkgXWc+qdtQ8/Pp0gHDgkeqgaJPnP1J9sbCWsxJn+V8FF08vjBD5aegm/3cTJDWFwT+lqMmQifcoWvkT9OaPtBMT0wpNI5SBvnNIogXuwGNV55HzZSpklxOuo35MWxcBWlaGC7CTOMAitTqjupxx4irXfYkHMeeIdNlld8GvqjceFwYGW55IVCphbj1omjOA3/Q+JlYTC5BScxvrjI7T13bAE6TmCRpseag1FeuQU3z/u6uTzIdF3psZgk8EZ+FqIqQiQ7zu7EvSV9T2csSpO2oGb3G/6hSgKpQBSnAhrrx1csUeoRg6uleb6II7uGX3eaVE8ZA0TA0YoSvnAcG6hNomVBNPymHAC/olND+8ah00KSOMpJEGmqYiN81gGarrZo07uM1wLDzkf1exlMqED4Jg/scG95fgGoPYWkKgcINXzqMEurWsANjR1EvxHL+xb3YOJzDW0m85PQ==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:satlexmb08.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230040)(36860700016)(1800799024)(376014)(7416014)(82310400026)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: B5ByM9tT6jYl97G7a9LTJAIs4GQNmmP6IrJ3WMshafIw5ecXlQ2xYeItk5OYXMTcAKF50JQ6/m0zIMCEKzkVC1aAgrnfw1kL7LLDVMoWdLy0a/MwhlEqYJURXCxtFpbC5c14ZoQtSSfVblQWug/DUCjhhAj+Oz9m1rPs04jgKkL7X6hqnvmgSbwVmKiKdRxiA+ua//kYohO1apJU0vSi6gD43RErtsSlfBfzy+dZqBS1gY1t1ECeB8dl4qV0JHvCBZaEBxXDTB0t1MrJqXOLPvVlwGMhO6dqTkQPg+ABjCMr6dvnZXDYirNJsUeEIq8Vl6/U46xnxgRIKyPon6oqGKEl7tdlwC6dx2frZitwZc3bMbDCrmK+Ow9jxJreIACrIYWUMK3N7sFiZkgHKNkhN3c8PXxoQRY93ELEc6jea9UKHmSpJM4RXLy7FyF+J2pw
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 12:54:24.4044 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a6698e4-f8c9-4cdb-188d-08de9fa51d66
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF0001709C.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8798
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kprateek.nayak@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 81C9D4460D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/21/2026 3:45 PM, Peter Zijlstra wrote:
> On Mon, Apr 20, 2026 at 11:45:12PM -0700, John Stultz wrote:
> 
>> So I tripped over this in my own testing today preping proxy patches,
>> bisecting it down to the same problematic commit 25500ba7e77c
>> ("locking/mutex: Remove the list_head from struct mutex").
>>
>> Inteed it does seem related to ww_mutexes, as I can pretty easily
>> reproduce it with defconfig + CONFIG_WW_MUTEX_SELFTEST=y  using
>> qemu-system-x86
>>
>> Where the test will basically hang on bootup.
> 
> *groan* indeed. This of course means no CI is running this thing :-(
> 
> Anyway, yay for deterministic reproducer. Let me go prod at this.

So I managed to unblock the ww-mutext_test with:

diff --git a/kernel/locking/mutex.c b/kernel/locking/mutex.c
index 186b463fe326..623c892c3742 100644
--- a/kernel/locking/mutex.c
+++ b/kernel/locking/mutex.c
@@ -209,8 +209,13 @@ __mutex_add_waiter(struct mutex *lock, struct mutex_waiter *waiter,
 	hung_task_set_blocker(lock, BLOCKER_TYPE_MUTEX);
 	debug_mutex_add_waiter(lock, waiter, current);
 
-	if (!first)
+	if (!first) {
 		first = lock->first_waiter;
+	} else if (first == lock->first_waiter) {
+		list_add_tail(&waiter->list, &first->list);
+		lock->first_waiter = waiter;
+		return;
+	}
 
 	if (first) {
 		list_add_tail(&waiter->list, &first->list);
diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
index 016f0db892a5..2fcd6221fc64 100644
--- a/kernel/locking/ww_mutex.h
+++ b/kernel/locking/ww_mutex.h
@@ -28,10 +28,9 @@ static inline struct mutex_waiter *
 __ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
 	__must_hold(&lock->wait_lock)
 {
-	w = list_prev_entry(w, list);
 	if (lock->first_waiter == w)
 		return NULL;
-
+	w = list_prev_entry(w, list);
 	return w;
 }
 
---

First hunk orders the first_waiter if we are attaching to the
tail of current first_waiter which would have previously ended
up next to list_head.

The second hunk deals with __ww_waiter_prev() - since we are
traversing back from w, I guess we must first check if we are
at the first_waiter already or not.

I'll let you stare and see if it is correct or not.

-- 
Thanks and Regards,
Prateek

