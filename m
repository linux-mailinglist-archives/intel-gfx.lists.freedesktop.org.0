Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGy5IaGY/Wn7gAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:02:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F211E4F3723
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C5910F3CD;
	Fri,  8 May 2026 08:02:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dho6T4CF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0A110F3CD
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 08:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778227358; x=1809763358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Dr6QLiBf3FLrqE2Kq253aYE4kYc5i8UHsAOV+jwHzlo=;
 b=dho6T4CF1kbC8elbFsRzLtEYewx9Nf/xalbWTEJMvcy/6DwZBUIoYAWG
 93vxecO21XamjnNN4FnUDzfjvquf0A36+ZqzBsfeAkEdEN1661KqMalL0
 YuDz/bLe+47/KX2x+t93UkjezXFgb4qR87uacZbnS96Cj37000rPMRxOu
 md2igcK00PQduhVS5OrLhDVb/OGxfyNUQEkwcStYJAUc9ec05vH9eb9Yg
 2C4Fe1ITT7s3Fnx83au9PvKfBpoipyCur3S8Dy8sPXq1WU9vGd20kHmTv
 aEH4gUbCnn/or13vEIuDj+tRob+MlMwXPT7JdSk+5DVHtpKMDkG3izJiI Q==;
X-CSE-ConnectionGUID: u0TIFmFdT9CgZyUuVKpFfQ==
X-CSE-MsgGUID: QtR13bMhTU6a9DNBwdSjaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="81756043"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81756043"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:02:32 -0700
X-CSE-ConnectionGUID: tpuBP5liQmKiFHppJcFzeA==
X-CSE-MsgGUID: L87x/pSQQaqXPWuSv5p/HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241674964"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:02:32 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:02:31 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 01:02:31 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:02:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kGNyxIEvTk7xVWlQ27fuQNnjFRUTjemCGLPUq6rQ5lvfk1Zq0dGf3iAyPcxb0/NXayJnBfbw4HxWDMCPh8SZnHdJjMZ8lZcNC6VZyScdZ++cubI/a7rIHkIqNzPn89XOeuLFkH/cD0rNnQ6w2JCBnKYHLCmWDiFxxEaOGkZVYIHXFmdYCt7+Cea4EIIOUzSpi0O0qoCOLsYip2R0+8JeWvgokP2jLE5svpbu8QWSex/y0L+suu6wwsrSgxQzfM2WTBw8+/1S65fECEBNzZstc6H148u3KWnL3UsHHkONYoT4gSwd8ErSApVmLyos/a7k0+0VHLXXie+Jhd0FdIMg/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPAf3bQ4D/BW5P6I2XFC63qEUKWVVIvH/zGCitUiZg0=;
 b=Y02vRNcP6kJti+ou/Um0JcAoi5mi9ttj6BIo4PBeGk++UZ1u9sNaqrRmBymZ9uBCqoGnMMTgXhuXY3APW7e83MghPvJNuZz8oHhZfwNbtGOa0qyAaf7fdWan+yjw1upm9jeCheIAMDz3sROIPFN9ZKGJkRT4YIZbAjN49HKJDIEJPnTDF6WyAba15LXTks9toop2kzpXleUMQmqZ+pzCbdKtatWn6/WWlEVeVCvkEnTiUSowDkKe7YOrdW6CASE2gSNrUkfVwDIBxsuuB6V5FTJdo9+HkHoQli5xz2sUEU8u16t3RMByyIaKRkDx9qYIUNr9sVCpZHECe+C04JGQdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB8149.namprd11.prod.outlook.com (2603:10b6:208:447::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 08:02:29 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 08:02:29 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v10 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Fri, 8 May 2026 08:02:13 +0000
Message-ID: <20260508080214.1979686-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260508080214.1979686-1-krzysztof.karas@intel.com>
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0001.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::10) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: dc259d80-1279-4228-c5f1-08deacd825ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: u61Y06j7dqHuJfVTsqZGb4ws5XWFEo+Kr6/ymeAXkvN7+GfgKGmbW4V8s13O9DjU5xkryEhuJ/HFYXUBjRW32IbMVoY7cV4gH4Eb3PwbViQ9YIccrjGAksrUUQSwURjxVJjLo58IvHTFkpzP0XZ2Nru0ceUaV0RLep2rp3tzk87ITe8L8A8z+hjF+bGmru4yxu7kRtALAN/aufLsMKT6acHB2+BwbyD5Eudnq36475v16XAYDb6fe84xUSj/9GmsEX/XvY7Ync6kmRQY4bdXQGdGxQaF5hCVLmtFFQf45QrznF6wG9jElLAaIfJ1nRSzXNLGCNhW97Kt/uorQ4DGXKUHY51abPg+pjlT60o8aifVd3hXLhFktplOIuDUCdDS87u9/VcPacku0D1vPbDCrgjNaE3xcg3/8q+brNX5tWaHJHzst9BBimcbWWoShni8yVUouiGBIaqFYcRaZBQTH+ovKkKoiZ89WYkZWpHWIKzUBChm3BxePyKHKra7Whe0Ktj6x7Znfsh7OnwLztBbWCs9MQbHhkDI1LmSurJDG3eKLMQWW7xth68ONsrwW6SuD3BKJnW9B/9uERt+oMXRSvude2HJZbovkGXXUYHvd7oRaMKEWsgHSsAUq+7RS/gbuG8eM2Ye+JFqMkT8zrh3ZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Nz6waeM9xCYkJHbxd/AHUIsmr0ALqNOrU+CpzheT4nfa4/oA2NfKAlSZ3rwF?=
 =?us-ascii?Q?wMHoF6VaCKiGYN9w8y7r38tTzdreshpG+Mdw9+/QlTgWwFfe1NX9K8mrUjnA?=
 =?us-ascii?Q?EsF2syY+wDbbCx423B4jv0XaPnQkeQpZSadvNLcgVaoieVRvho2aB0Zy2Lsd?=
 =?us-ascii?Q?FaWVfsT40er3jtssNE7sak8qxaiW+MdckxTdmjfzYNN+jI4C3WX57FyeNa0m?=
 =?us-ascii?Q?cP6PEmY5z1pT7vhGx4P6Ukyr+84UHfqcp/jMgJgu/rLHQqSN4TeUWDHGBj7D?=
 =?us-ascii?Q?QpHoNbxe3pNOYCRboUIEJ0Q3okXaIV/P4uwqP0Gm3VtqrLkexOnFHJOG6UlN?=
 =?us-ascii?Q?YDw6+6vHtPe9K3y8oO7XRsCzouvU2JuPchwwMIV8fIhOKmf0JvbqQahkI7Hv?=
 =?us-ascii?Q?eB87uVb3+ZhqBRMhu9HbYGjcNoDO1z5DuwTRctoREz5JTw8WHxiD61X7JzE/?=
 =?us-ascii?Q?iYzOwoBumQjz69fmIjQUKzASnKw9KmAHS4MiDE0woDhz9Z96yZkLwCV1fPf5?=
 =?us-ascii?Q?VOx8lW03nMh1RT+NxHlvEFeMvFU9UXckWpYB+jrK7UANh932vysUSID2qjUR?=
 =?us-ascii?Q?8FDHDAm2hYizJTwA9MsBaiBt42oq7lz+xBe4JljXFgqYIMs1edt0JmAD2jXc?=
 =?us-ascii?Q?6Jm+c6ufc1kDLT26Z3UImQhMJUZRzbs/LVmRyjJ5Kn1YgZLohra1slytBQEg?=
 =?us-ascii?Q?NBIjCXvNUACzR5NJIyyyx5Xdno487i/2E0g7EvwAONvq8AhODQKmnQCSHlEe?=
 =?us-ascii?Q?BDjTYZIebnPSe4m2lZtv3atgDHKJxFL+V/t4yBoPvd2dO31UBP2oQR3OYiLb?=
 =?us-ascii?Q?AcYO8uJNEOoXO0kt56TTzlPbqks+PD+06ybLcNIg3xC/1PtyWdSNWtG6U2Vt?=
 =?us-ascii?Q?olLVLOw9d7HO8miHfAVAyeiin9rBawu6HXf0qugdRL6q9iU2Q/9AScg8BEPF?=
 =?us-ascii?Q?NaDND5S/tIZaWahj9vWRT2qo4BGpJVMzWlduxgObTwkTLK+86Rrw9249E2QF?=
 =?us-ascii?Q?NmmPSKBurro7FOuGqLx+BHHOsZ45gpF0myqYIlMB8Z8H6Ft2ixbpTOZyo0Ao?=
 =?us-ascii?Q?K2yQ1p5DEbia4GasqiH1vXXEYyncr5ZJFGzAhSqccQO4v/2+4zYtWZCY8V2E?=
 =?us-ascii?Q?SayYcpMiUYVpQ+RpLM3+5ASUAE6kg9pr0ryS3JU3WP70uuX0d+Byq+3bXhQ8?=
 =?us-ascii?Q?mvF5W84J8oJhERw5r0P3IqL8Xi7GaZK/a7z6jvvU72JCzn0qDItzLUm18lkN?=
 =?us-ascii?Q?lVwzfUcfJT67bGNzgt7JnRcgm9JN8cH/We3MFZWu7sEvarl443PyY0SKBTD6?=
 =?us-ascii?Q?EGFfthecNYMWFVk932nIv5UOwvKX4GKbemYndoy2Uoc7HlaL9B9jXCM3G+cx?=
 =?us-ascii?Q?ZTyzIcp8XgDtgxnxEdHgyZ5A+O4dt18pNe7DV8Oh4UfgyGLkgqwbM1qGT15v?=
 =?us-ascii?Q?UAhy4QT1/fBOeMSDpfIRGNKBKE1MiuLlwzaz32SkBOBmQ6ZRfC+qvI4G1Wih?=
 =?us-ascii?Q?eYiUy5lTkfk7fGk5M0hOYEtEgauNxEInJRrUCOXyrem9R9wEI3BegmLxP5+J?=
 =?us-ascii?Q?NhJqPgP7NAt6mfl1XCHrTTtXFBKlrtjbxKrdBuzyvafz5FJKxlYSIeE8XGpX?=
 =?us-ascii?Q?dfibjtcxjEZfoxvCbF0mvYZ3dyWr9np1aeEgvPF8RPOqImfVfNAVHPPnBPug?=
 =?us-ascii?Q?9kmVismoZFOqmwRChoP9Ue2Rl3A26pyTa6f09nzfOKba1Ul+XXhUBMpSpsLS?=
 =?us-ascii?Q?o1erbcomHRsx5UpudB/8g5ZqF7Y1RJg=3D?=
X-Exchange-RoutingPolicyChecked: CUtmyhh9bKtwbljifxqyom1g1k43XjAqQ03+gFLo7Fa8s/51VUkv/HrxrIoGjATI6lcUYfWnzsWItMteZ9TfhcLbTDOHRNW15rLFeX+rZnhdpb+vnKlkh6noOQjEM7YH8vYLgJiA8UcmHjZWeWY5BByOXvBJaHsPxvPOJMRll9tOOIW2W8l+ZvXl4LQokqkfzRkZKK9f7R9Y7VXGYOF8Om/HCLi9wI6pkWVkzmb3PLehAfD4LNruligLPl31YBTRsezURHhyBjB5evcF0lOFVDWUNWKkqWFpJmuMac1s4HMF0M4D5+VjYiNp7CEvcpcWAczqjwm5SsF1CgDwsrQZZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: dc259d80-1279-4228-c5f1-08deacd825ea
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 08:02:28.9207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UB4hO0dmUgMHnRZOpGWpLNA0VzgVeRqFDu2sKoevpJYMfMloqf/VHqsb+s5pXP2dqdlsnxZCJZjx3i7Z47AO4IQjzuS8M/1A94ghCqtBSVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8149
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
X-Rspamd-Queue-Id: F211E4F3723
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Migration testing in i915 assumes current task's address space
to allocate new userspace mapping and uses it without
registering real user for that address space in mm_struct.
On single NUMA node setups PCI probe executes in the same
context as userspace process calling the test (i915_selftest
from IGT), but when multiple nodes are available, the PCI code
puts probe into a kernel workqueue. This switches execution to
a kworker, which does not have its own address space in
userspace and must borrow such memory from another process, so
"current->active_mm" is unknown at the start of the test.

It was observed that mm->mm_users would occasionally be 0
or drop to 0 during the test due to short delay between
scheduling and executing work in forked process, which reaped
userspace mappings, further leading to failures upon reading
from userland memory.

Prevent this by adding a PID parameter to a trusted task, so its
mm struct may be used if needed.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v8:
 * Keep reference to mm open for the duration of test for
 readability. (Sebastian)
 * Be paranoic and explicit about keeping the mm reference,
 so we are **really** sure about userspace mappings not
 diappearing.

v9:
 * Drop "Fixes" tag. (Andi)
 * Revert to using a separate function for mm acquisition. (Andi)
 * Keep kthread_use/unuse and mmget/mmput calls symmetric. (Janusz)

v10:
 * Initialize PID variable to a negative value and check for
 user provided value. (Janusz)

 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 75 ++++++++++++++++++-
 2 files changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index 72922028f4ba..e29ca298e7eb 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -35,6 +35,7 @@ struct i915_selftest {
 	unsigned long timeout_jiffies;
 	unsigned int timeout_ms;
 	unsigned int random_seed;
+	unsigned int userspace_pid;
 	char *filter;
 	int mock;
 	int live;
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 8460f0a70d04..036328072e38 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -181,13 +181,57 @@ __wait_gsc_huc_load_completed(struct drm_i915_private *i915)
 		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
 }
 
+static struct mm_struct *
+get_mm(int u_pid_nr)
+{
+	struct task_struct *task = NULL;
+	struct mm_struct *mm = NULL;
+	struct pid *u_pid = NULL;
+
+	if (u_pid_nr < 1)
+		return NULL;
+
+	u_pid = find_get_pid(u_pid_nr);
+	if (!u_pid) {
+		pr_warn("Could not find PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	task = get_pid_task(u_pid, PIDTYPE_PID);
+	put_pid(u_pid);
+	if (!task) {
+		pr_warn("Could not find task for PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	if (task->flags & PF_KTHREAD) {
+		pr_warn("Task not in userspace: %d\n", u_pid_nr);
+		put_task_struct(task);
+		return NULL;
+	}
+
+	mm = get_task_mm(task);
+	put_task_struct(task);
+	if (!mm) {
+		pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	return mm;
+}
+
 static int __run_selftests(const char *name,
 			   struct selftest *st,
 			   unsigned int count,
 			   void *data)
 {
+	struct mm_struct *mm = NULL;
+	int u_pid_nr = -1;
 	int err = 0;
 
+	if (i915_selftest.userspace_pid)
+		u_pid_nr = i915_selftest.userspace_pid;
+
 	while (!i915_selftest.random_seed)
 		i915_selftest.random_seed = get_random_u32();
 
@@ -201,14 +245,36 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/*
+	 * If we are running in a kthread on a multi NUMA system and the user passed
+	 * a valid PID of a userspace task, then we may borrow its address space
+	 * to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm && u_pid_nr > 0) {
+		mm = get_mm(u_pid_nr);
+		if (mm) {
+			kthread_use_mm(mm);
+			if (unlikely(!current->mm)) {
+				mmput(mm);
+				mm = NULL;
+				pr_warn("Could not set mm as current->mm\n");
+			}
+		}
+	}
+
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
 			continue;
 
 		cond_resched();
-		if (signal_pending(current))
+		if (signal_pending(current)) {
+			if (mm) {
+				kthread_unuse_mm(mm);
+				mmput_async(mm);
+			}
 			return -EINTR;
+		}
 
 		pr_info(DRIVER_NAME ": Running %s\n", st->name);
 		if (data)
@@ -226,6 +292,11 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm) {
+		kthread_unuse_mm(mm);
+		mmput_async(mm);
+	}
+
 	return err;
 }
 
@@ -507,6 +578,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.34.1

