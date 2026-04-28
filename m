Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKjTFheu8GnrXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0345485412
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FF010EC2F;
	Tue, 28 Apr 2026 12:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S6IoU4u2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 735A310EC25;
 Tue, 28 Apr 2026 12:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380877; x=1808916877;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=qF7JbXsXW3Jnm6g9fyxqROtCrsejN2xHT12HtGiKVl8=;
 b=S6IoU4u2d9CQwo+DnPnDI35YK6/wM9Ctg7geLHviAl0W+/+FlYJf0pps
 X+XP98GDb/OKaQ0ssTa8UTN2HAa0uDN1t2a8NgIPCgbJAaB51Tyk57pVg
 CscR1FTJa57jaavHAR06v2cpLrJ5rSkYiD21YHl1jcO1WKGZTwtXAHUES
 tPM7VA/AE4vM45OJOD3zQ99QACQhTe2QNxirpXJy2l9VIXb1S2uJ3kZoQ
 N5fAov3JY/EOAqomLcYrA2hB4Fx36FcqSK1+sgWSZZZd/nlhcRx63dloC
 PGx1hn7otLBU2PnRq63M6VZL21dC8WEQ8/mr3my/7BOmHvT6ETDnsA/f7 Q==;
X-CSE-ConnectionGUID: kjDb2PjSS42s6qNH2En7iQ==
X-CSE-MsgGUID: UALpu1NVS7W7E7cgGhrnBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893788"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893788"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:37 -0700
X-CSE-ConnectionGUID: sR+F9YadRhOsDV+vIvPc5A==
X-CSE-MsgGUID: tB2J1IhSR5mJXNCtaG1pyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083532"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:35 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DG/B0B9KIswwU/OUIEH5JUJdXAk9p8oWGOHiVFsqzUH0YDE2AW9+VCwWh86l3elF2itZP400GX6qtT6X4h7m6FgRjwoQv6UuOLx0h9JlCfPQ5nF8T/mQQgemtWKAPwom7k0f4iez4sJCr78plY47/hIR9Aq+rhNHdUqJIFoUDL8iMbAV0sVfjo7rAtOYYBmXbcVdNWMCcC88qmw+Rw9bAZr29Vj3BW4nq6HD6nlvYRO7u/DWFMnezCp3aDu5HB9yixjNv6WZ8H+jcgAkISCx8K3UKBvhbS/XD5joFleNyPzUZaURSP9TxLSgm/Yt02+NfKR3y5zzKtkjimqg5rASQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1JeGxjrSKkUahzar7yz72K4XGpDpsDoB71fuCyeTM0w=;
 b=ifiy+DDx4QGLAqe9An9EfgvvZ8DCA8pOpJebIvZnisJWrUjQe7BKhtr/m5isEv47pJPhHzXLlGn45yU28WRvqj/uoigdQZy7G4yWrHz5cfijaw0FWWV4orXSR+tZO3bAFY16ypjOK/5JfhsoLrREmZDJRiISkYCKDarlruytIhiVTUrX+Zym+9zCiJpw6ISeMx+VWRkAGXzWuX8zjM2Qd9+LzlG+dBTEjMS0+GUsQOlYbTIt9yUOjgN8IRtAMgicjgBuyTcgLLroJKCJYyINicuZZhc/4F3ryUB+7If6dqD/Xf/TwkjXtPkDbGITEFtxi8DdQoXZG3bAhhtsrjqJAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 051/108] drm/i915/dp_link_caps: Validate max link limits
Date: Tue, 28 Apr 2026 15:51:32 +0300
Message-ID: <20260428125233.1664668-52-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d858aef-56f5-4a43-1d2e-08dea5253a1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 5BE8mhNN4phU5WSe6v8lC/shfxHluNWVUDl01p/Dcof1F9K/Vva8YQXHKnDPSbQ9HWSJF4e5QVV+vtoS7fkskKo6JHwl+6XZxPo/nAdxPDbAMa8Iei+RDeSqojmXgc9QsN/EmEaVL57SRFd45j10+awrQIquebWkd+nxnsjP0eXV8w7BtcRKqw0F9RtYdyjmGyTf2YNiAJAWuiINC94SvDS5bGb693FkNnao+yOzMFbqtmk4BYdJG5rpxBH7f/P2xOr4RB366SfYpLuafel5yYxE/52nZgMSA7jZq5z8qpCQrbt/8bc1vHkF2MiAFKZaPeJLJfvt+IKneQqHOrvAOBwqdEloXhrjHFYd44jGwGUtnDhs1ksFJd66o0JFaXkcF/VYd5E7QnY9t+JT3QwkOklapPDa17ihNVHGG62NjOHhZHRcE786ZH5pJHWm5GCCsbTfdOSsrSQqTfWallu0gD3ZLn/AAMHnuZvK9eqExIiEzt6dkItRrJt8IFR3aK8Mm19urEqGS5YVcp89rMOZZ9dlBjEifxwaZMXbErnYmzOTZIAaUzJvuskbkgdQwB9VUbb5PKjbG5DYWrU9X4Cp5k9IX9Tw39aQ+4Hp3sAE0Fkn7vXQtdS5BpPAqWFox7NhJnum6wyxZUoNj/S58KIOxqgEB+yGu2k+KXBQv8tREci47EIGQRZVUsGvek1n3n1zexLNI8Q/Fa2iODEzr0jIoPjIb5S56mkkzF/0ShRUSKk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1YYjL00ZE9VU19hpF3EO9pN7tpZubWNOIsZi7L+va36xMsyhZwCswt/xsTS2?=
 =?us-ascii?Q?X3T1w5yuPRqMbGQQMF7XdzQA4BHTP0FWEwVoie+U5iX7NCTs0zUsjRjWc7B2?=
 =?us-ascii?Q?luHNcDYjIFZgXwCvQ3uKyaStMH3hnBleLCFedFEDGcb350MfLO8iid1xUiGr?=
 =?us-ascii?Q?kv7I5WzStmXbQfD/7VR71CaLfjP4gZ1LaatBLyzsFZQqXF+LLCUTWWYzvTRs?=
 =?us-ascii?Q?XDajLdMPNpAeETseM7z39MTwo/bY9isiPF2mC/envdUEFJ1PI0DIoFmEeesO?=
 =?us-ascii?Q?Jj01dsu4cx8prLitRbbfd7/f6FJh9PE9PKFZye6lXr9WRtGNVAVTmKJODL4C?=
 =?us-ascii?Q?/O/9Tk/mYtHVXk8tv0xlxVDhcRRiXXCOb/8lfBozQ2UsT2HSs8OdiFXUCBe8?=
 =?us-ascii?Q?7foVCTXg2BSrf4vtdCgLTXJTq/em0s1HuirLTIO/GvKjZahVZScX6R5QMxrh?=
 =?us-ascii?Q?OQLl7W9zmkvrJkkBQaZkVtvYzAhqLfXuZXZcvYwmVYMyyXTPXA5q2kryhZfP?=
 =?us-ascii?Q?X/+XC1ERc/5xE75+rq90OEsrMn/G5c1ln9ZwY/k3W1PKbcik4IvNqe2f/b6P?=
 =?us-ascii?Q?IjjWuTQ4I8d12DL4j4F6UQ/7Y6t5f5WHQ+7nuFiD2PUBywcxWUd3xOfp28y2?=
 =?us-ascii?Q?ZBlWE6I21011q/oLx6CA/t1OTiUKIcPWQwspYTOdsj1x2ZGT18cd7sfsXfaU?=
 =?us-ascii?Q?eYcR6onAKsPPtg9chNgEvhOtceG6e9HS2knbDGkrTq5k7hzIh7pmu2qDBxBA?=
 =?us-ascii?Q?SJIgKoA1pqqu+4WvUwas+f2c5qrlt8kC2w5RZxuwIw40jwmDngvF4OP1rJqi?=
 =?us-ascii?Q?3ix3TRiH/Aqa3KGHz7n1gc6avq1vBWcX0N/z2uNiTEtv29qlFKL0i1iz9tP3?=
 =?us-ascii?Q?AREI7CjUQ1pTPigcDMDO87Ax/rEpkyRLwlxs74np0Bd3ocdAZiWUisomFXJV?=
 =?us-ascii?Q?RS1tCb8wgzSyXKmCs+0h9uGW6G/B9wKl12yWgnQhPe/joV8+RmmY9DHN3kvk?=
 =?us-ascii?Q?i7PtnKkgflYDVGx0wpF547rGrev0nvqrGPL3vRYp9SPMc8LvJ1U3+d3P9G8N?=
 =?us-ascii?Q?PdurqndKLtcRYZ3C1bJfTCIqP9YII4zDhpUeQ92+X4bqIJ7X0JDk1JW9XCea?=
 =?us-ascii?Q?TccOe7WReQIMQMRCZ99uGuJpDUIVqabKQvxMEkHmwt/7G5aJCypEDjQogw4Z?=
 =?us-ascii?Q?g2lBloVe0FzZ/fnwj2+P/IRvWzOx3Ap55jEU+AkQjG8pN0X+tQbx7q2K+7E8?=
 =?us-ascii?Q?kCovIMSGFMVB7HpX7Y82ZrtlqJaN5PJdSG6V3AsWtAIXHyR6lsVG3qbh6VAs?=
 =?us-ascii?Q?r18iS13BLr40S0oKCjTl8btklEs6VOV7zFzoQmr0ifNuET1bUo00ENwihLCr?=
 =?us-ascii?Q?MBjWWpoyg/YcCheYDGQbj0rTBP5qKyC45Bmw4DaoSTS1ZK6pRLNdx2RnzhvG?=
 =?us-ascii?Q?eD6lOECJ7o4HS2zPN351a7APWqUATueLJ0nDra2Xi5wUar1jXtKBG+b824gg?=
 =?us-ascii?Q?qnOKTYfB9oya1EtL0QtGxZhGkFK3iqiZcSPHyJKGa4pB6TS7PvpQpQl7T4rL?=
 =?us-ascii?Q?NockbeHbmftpECWnZ0S565XypVy3pJeL+11fJ71QKtF56hoOYmyZ/agf07UJ?=
 =?us-ascii?Q?9yHYhvRuJlgQhdHDGC6+QgRtyOY614IAQc63MDJSKa3+5eZBH7RlMAwtLe2A?=
 =?us-ascii?Q?uLoecMCBs8BuuyJj6BGW48zV1uN4k1piMY3Jtb/29lCJjoVbX/ezeIaaEzRP?=
 =?us-ascii?Q?Gm0TVf+xZg=3D=3D?=
X-Exchange-RoutingPolicyChecked: sOnOx5ps2Dy+Ew5ilggqN+1dSVl7juV1xZlAJHpNUrBxXy7M5auti3sn4oQzt9B2mSm8ZG0jdAbZ+S0y+EBz1m6pbodaqcmM07hmyeRhzfqOq171TNVQXyDi82rmuDBhSPDXIlA/ZS3FE/OY0JxicszqWnc5rgo9N6oLK4IipRq1BS1+ZX2C1tqCHVs4AkY+p16HlIr4SiC0G5hwSqlyxALFTlO7SvL+65NDC516jb3MEHaDRzufnayeKS7hurOmdFBXWbi7LYfdQMPUDOpOOMGHKjhUOKRgCv1mEL8qkO732CTkqJfczEK77UnpdG6GaFan+c1pC66RGxNTUTel+w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d858aef-56f5-4a43-1d2e-08dea5253a1d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:04.2523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oD1Yp2U5UN0dLC2YmIVowSPrf1kA2+Lntxwj0JluI15+Aebv9qgYlUCyAT0k7qB9VQJU/hogey2m9WODdAzDMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: F0345485412
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add validation in intel_dp_link_caps_set_max_limits() to ensure that
the new maximum rate and lane count leave at least one allowed
configuration.

The validation takes disabled configurations, active forced parameters
and previously set max limits into account. Disabled configurations are
not supported yet, so that part has no effect for now.

At the moment this validation is also performed by the link training
fallback code, but that will be removed later, leaving only the link
caps module to perform the validation added in this patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 70 ++++++++++++++++++-
 1 file changed, 69 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fa8d3a140414f..90cbbe32f180b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -175,6 +175,54 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
+static void
+to_intel_dp_link_config(struct intel_dp_link_caps *link_caps,
+			const struct intel_dp_link_config_entry *lc,
+			struct intel_dp_link_config *config)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	config->rate = intel_dp_link_config_rate(intel_dp, lc);
+	config->lane_count = intel_dp_link_config_lane_count(lc);
+}
+
+static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
+				    u32 disabled_config_mask,
+				    const struct intel_dp_link_config *max_limits,
+				    const struct intel_dp_link_config *forced_params)
+{
+	struct intel_dp_link_config config;
+	u32 allowed_mask = 0;
+	int config_idx;
+
+	for (config_idx = 0; config_idx < link_caps->num_configs; config_idx++) {
+		const struct intel_dp_link_config_entry *lc = &link_caps->configs[config_idx];
+
+		if (BIT(config_idx) & disabled_config_mask)
+			continue;
+
+		to_intel_dp_link_config(link_caps, lc, &config);
+
+		if (forced_params->rate &&
+		    forced_params->rate != config.rate)
+			continue;
+
+		if (forced_params->lane_count &&
+		    forced_params->lane_count != config.lane_count)
+			continue;
+
+		if (config.rate > max_limits->rate)
+			continue;
+
+		if (config.lane_count > max_limits->lane_count)
+			continue;
+
+		allowed_mask |= BIT(config_idx);
+	}
+
+	return allowed_mask;
+}
+
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
@@ -214,6 +262,20 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 	max_link_limits->lane_count = intel_dp->link.max_lane_count;
 }
 
+static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
+				  const struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp_link_config forced_params;
+	u32 disabled_mask = 0;	/* get the mask from link_caps. */
+	u32 allowed_mask;
+
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+	allowed_mask = calc_allowed_config_mask(link_caps, disabled_mask,
+						max_link_limits, &forced_params);
+
+	return allowed_mask != 0;
+}
+
 /**
  * intel_dp_link_caps_set_max_limits - set the current maximum link limits
  * @link_caps: link capabilities state
@@ -222,6 +284,10 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
  * Set the current maximum rate and lane count limits to @max_link_limits,
  * constraining the set of allowed configurations.
  *
+ * The new limits must leave at least one configuration allowed: the limits
+ * must not be below the currently active forced parameters or below all the
+ * configurations that remain after disabled configurations are excluded.
+ *
  * Unlike intel_dp_link_caps_get_max_limits(), the caller must serialize
  * this call against concurrent queries and updates to @link_caps, in line
  * with the rest of the API.
@@ -234,9 +300,11 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits)
 {
+	if (!max_link_limits_valid(link_caps, max_link_limits))
+		return false;
+
 	set_max_link_limits_no_update(link_caps, max_link_limits);
 
-	/* TODO: validate max_link_limits */
 	return true;
 }
 
-- 
2.49.1

