Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rnAjDRqu8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC7748544C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B0E10EC45;
	Tue, 28 Apr 2026 12:54:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/rrY57/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E9E10EC28;
 Tue, 28 Apr 2026 12:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380884; x=1808916884;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=zfSVA8BgKpJgJOLQ2aszUzIaTPHcxJJyhpvKJb317sc=;
 b=H/rrY57/u79NeXO9xflH27GNhMFNh38UYhnw36wHCbx4ZFyJ6BYwJVrn
 Qbrch3Kby4Bl4ANR8Mm9wy3d4U1ZDNHrcUzPhErpTq8B+5xILujpKocoQ
 ESlvEXBYbqdNodkgl7/p6AcllXAhSuMQPLPxgZsYFRTFJzWVVrztcqKWp
 frMsql3WI6ORm9PEUnvUd4NU6Qb668aYXx3fhVCN3bVPWObUzobg27Lxd
 yKJ3hUfOG5hFtq2Ero/JtpyJNPOOIhw1Cv+Ls6IMa9pFpzA3aCHLQq4O9
 gl+0Lmge717YVsiYYRqxwjBlRuYak7A3v2/AAxG/k5J07jiWiGqCIHYMj A==;
X-CSE-ConnectionGUID: jCdNiNykSgiNaOqngtrGbg==
X-CSE-MsgGUID: FX1kkahiRIyMbDIBGvE+9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945316"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945316"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:43 -0700
X-CSE-ConnectionGUID: MiYplvFrQd2bOG00apJ3HQ==
X-CSE-MsgGUID: SaiidfmiQiG+JayzdzRd6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377768"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:38 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IJADWWZWyQn/vcJgfgTQBaeo2xsEV6N5Sayu1+LVIkp1SKrO+/BFzuAs2l+paDXHEwJqbiKRKvFtn8T6n2lDqOXZkRL52RISy/WRw2om2V++JmZd9w3A7hV5xZsrI0E7XMSsj2jMj/V5YkwKlwkzcWrYBurAG5sizhoNeDnKkeO2rTRvW833I7VQ8COkshcsM6+joHtW7gGM9dSD2TKe96HRUQBUaoOKQf39HXnYm48dwoingZUz9CjB/xjz5UyPzl1Etg+jcOIlxPTrSqOfF6oQOMcKe9KCQEoR0llmC4FgPkevnAjJ9LDsrdM3+K5Gfol8GAOQHFsbYq5PpbGyvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zXBQK+6uA1XAnivB4ychbIoEgIFfUM5SrMV9chjyX2A=;
 b=SgKZ2XE/FPbCr5nnmIx9HZI0/S1Bf4ZSAfzvaWV4hyk9BpiV2kxDKKZOMVUfpL3wSZKb7rnOhNccEKlXdcBUXbu/bAJo2VhI1CUBHbmho+bgdnT90v6FyCqwvTNQNuCdnF+uoqN6RIGazSBx3BXxMvCpvJOJbSnrmrq6tp0ITHPAnjozcpwb2TW5Gjb1kXu3EWq7WWri/K8rc8msnmWbJhOJI2QoaexXyKTNM/sInOMlkPMApbQOVU3qXkGissp1dVxe3RqC0dJZagmfBByjyob9AQAF3lqWPH33d8H0QHg7VUpWx3+xn18Ub5vaajqf3/jDb9qeoZG1Dn85WuY9Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 053/108] drm/i915/dp_link_caps: Add helper to reset link_caps
 state
Date: Tue, 28 Apr 2026 15:51:34 +0300
Message-ID: <20260428125233.1664668-54-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 631159d4-e6b0-48b8-792b-08dea5253c01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: d5pc99cWL0ts7hH3F3amzy4sFAvejLoH0Ue9rM8KVS5XVAG9QrJA3o/SSJ9aDDCrtQHLXQBNoEbS2tK5G+RGO+2nwKWKfvMY24DKDHnVbWxPb0FV85IK1mSMHqhCJ7l655a0O16M9dbfpgAfHVDkBWivitPsNVpBRjaLAcwotHrb+uxQ6jcYZKWBrvY9XtmDY+b4uMCfB2st34YolByaMZOAnC700IrChCX0SNCR6Gg5qfysdcpojMwWo2y3RGRuJU0SuHojV3HlXkzSjwnw4zZfJQmG1n6+47L69pVIzFuvk4GLf/8ah23XokK3vw6saNrudHU+cX6fwOyV304mhk/PygPhuZ5ocae3jLnLXoHtjK1KfJRLpzBgr/6xDcRFlMDlw8G8tsxZ+PiijbFUgtS3XpCfXGe8aZj3m+yhhL3LPRWySuZgQBenUKd2UjiB0Jehi3TRDErGokWgPDpQ65zYINA/3rr3lavJEyLiaYS9GlnHO0S0+9KrxvKjyxYbf23h07AgvBf1f5YhZEUdYgr4I/po+2COjbePaEpuCkXDT0CLP9Q5PvmAxAYDP0RlEtQUnQTWsnOtKldNnopQuE83YKk1LnaHws/jsX81WVekGhsvbE28X/qNnJJkUiatuKY9YIlTk37BJb11MUtU3J1KPQG7NPqEbWJMOIP1I1ocpJtedEuI6UV6NvLNKmZx4DPxA7ZMPnb3/RebRfPQw/Wz3ZNFdmqzPiU8qZWhEjs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TAMokPfnMu2q8pDDcxdGmCkPR6qdkdL8hPFU7OWHxvjRLjpAyUeGr+5lKUQK?=
 =?us-ascii?Q?hK1o0eOs7ddWWhofcLZxbmqouCmVLcShfCnibFC7TGhjjC50OlW60W+8+2Bx?=
 =?us-ascii?Q?GdpWpvg7Ehx/P5Z+9+b6OdUNbqi3SxkIRovmjA3CmE7aTt0zilV+Mof1zZ18?=
 =?us-ascii?Q?D2jgNfG38+8iihiyQYxYgN/Au1LZbafxEkxnZGFbHVPxjwM4GR46pIVF1KQU?=
 =?us-ascii?Q?TlLaunKUVrp4i3g6qp/k/KVQ1PVzurSRR6yf1ODnBwX/OvGPAOU6w5CPif3J?=
 =?us-ascii?Q?x15QawMBzVwmuvXCeE7oW8A2iw3ZVMjtjCD02TKIcNgEvAWSCy0kMkrYvUc9?=
 =?us-ascii?Q?uvQkYkSbQzv2RlQHS0fBOmI3HtKJjL8tC1X5ijLdPk6c3RbMejgUh5yAHFK2?=
 =?us-ascii?Q?qcoC7pBLXpA9hSqBOjiMFLFxUE28IQsPGBho6C7AAqg2X/48RXKvH1Ojzufq?=
 =?us-ascii?Q?dU8/beFw9mT+JYgpqdPJ26XuFcPwImDD9+0Q6827osR5oQ7AWh42dJIPYIcb?=
 =?us-ascii?Q?dqoxKv3lTUsLLdnH05F4rpEnIs14cZjFQbC4cztKOhJxxdUHJ3zXsGiEDkUO?=
 =?us-ascii?Q?t9Z0z7R37i/QBmkWGxOKrM39FVqNF31dGT+iMHICYHn04NiGksRFAvJTNWQq?=
 =?us-ascii?Q?l++wl8iMF1d866cE8dMxchlM3d5J+Vh4petGs0XJXzMw+QB3W0xEpFjMWWd2?=
 =?us-ascii?Q?st1S6FsIb2HeIn5par4KDhhTOHUdwlLRSJqP/gZY38p0GFSnt7MXRn+stzCz?=
 =?us-ascii?Q?9zrbt41HZgQLKeTawHD/1c1oMTIjc2pFialJgD8fK+lFNthd88x4VsF3qMpM?=
 =?us-ascii?Q?mWyzFDKuy9QascCziw7SxZFpN2g3F1K0NH0rIBKo+JtU4ck1ml4b+4n4s+7A?=
 =?us-ascii?Q?byPgp/7VBjLTZZiHpgCWuj4s4L2vC4OXoZqcP8FBuqfKc3oUfVmf5Wtc4zwg?=
 =?us-ascii?Q?yCm9YH4FpiymB6Xvv1skCWq/5EVFPHFh7rZngawjCb3AzOn+8MFzEvHYkVfB?=
 =?us-ascii?Q?O5e3kNl9w98Sde00cNxMKCDQzGC2wyBYjdk9CsPnwqPoNW0L06hBXIWxhazz?=
 =?us-ascii?Q?WTd2DKdqQ6edSmc14E75zBVbfgzk5OG8tZQWYH0zJDnlSVj2Q5338vMsoFES?=
 =?us-ascii?Q?1C0uxIuMXCZkunRwr6QuZOTErNKllTJ7n0xWvFes456giQm03hlKZhSmGvF6?=
 =?us-ascii?Q?zKivDLop9FILs/182CB2a7xIzCvt6hknU4djOBD/M6xOi1m0O6GW+8toNZuK?=
 =?us-ascii?Q?+YrCbJN2jmeJ1CCyOLSk3yG7YF2kl6qvo6hvCAqVC+BuTqtk/TQf8ysRbrN2?=
 =?us-ascii?Q?sfZ90aPe32vzi7Zer7YFZsUheQIjorFMtiLFxDbzmjIIgr9CLJHliMzsLpCu?=
 =?us-ascii?Q?N5yqu1kN9jv3ORv/geUSjYXZXq2B7aZ7NyyzG7LLkbrhiIkT3sKslOFvB1pR?=
 =?us-ascii?Q?Et43464jgumfUJY8OOQqzMl05BOQMKR2cq1zpk7XACYlBpeh4p2PYz/c7VTJ?=
 =?us-ascii?Q?3vNBpuaCXgQwcPn/ZirmvRoHyrjlnneW1yFQRsj2jEYohHYl/ElRYpqbGipx?=
 =?us-ascii?Q?GFjF0RAE4/8ZxwesAfIlARrWjs2i7Kcs//9Shz3VlooyuiojYv4P2K5g1REf?=
 =?us-ascii?Q?OSPQC6ICF0EfWbtAFvcPe9mU5Y7lYCMpSC9yGuxuGLzJowiDUN7faoNJVusk?=
 =?us-ascii?Q?0pOZZRCpJQQ+TfrOiN8/MX2LgEf172jz0ESR6KouT48LzxKkpr7fTYowLJm7?=
 =?us-ascii?Q?Z0rQpcp6vA=3D=3D?=
X-Exchange-RoutingPolicyChecked: EIjHWhGSPaW1AeaAXzVcdjG66I5Gs/cAFtoOMvI6Wp6g3brhMJ+AiyquLDk/aP82PDSO0lYMt1fRF+3O4IL1+FYkuUcBS3thZ/z7Qki/XBlplu48NxIyEhh/Mk6nJ5HQZ01duqQdRPCTDEI3Lnrq5wl1+q9fbdT280wtBeDaIkpVnI8qaJnh1ZcN4bXOid7r3303xQQXyMQyaHe4kdvLDSbOB9UJIfJ172jRRn2jvopgpzs74TqFztp1QhSaa6NeI+GL3TfVcriRlc+FaawrsGVYAQlCwl9IzS/7R4JVSkoVwrkUq4h7QP4M0DETFHFf2a4t71epCghxrTgvmE5GHw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 631159d4-e6b0-48b8-792b-08dea5253c01
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:07.4867 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6a9n5/rvVeTh/uAg6WddK8yLplmzvM2caWwDfTiBU1eQUui7b9QMaVj3mQyumPoW7w2kPFktoppZQepDfP9gpw==
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
X-Rspamd-Queue-Id: CFC7748544C
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

Add a helper to reset the link_caps state, removing all restrictions
except user-forced parameters, re-allowing all supported
configurations. Currently this only resets the maximum link limits,
but follow-up changes will also re-enable configurations previously
disabled on a per-configuration basis by fallback or other logic.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c        |  3 +--
 .../gpu/drm/i915/display/intel_dp_link_caps.c  | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h  |  1 +
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e26f6000b711..dd4c03893a69f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3571,8 +3571,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 
 void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp->link.max_lane_count = intel_dp_link_caps_max_common_lane_count(intel_dp->link.caps);
-	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp_link_caps_reset(intel_dp->link.caps);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
 	intel_dp_link_training_reset(intel_dp->link.training);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e23793ffde58c..bdb0d31b0cf03 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -482,6 +482,24 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	return -1;
 }
 
+/**
+ * intel_dp_link_caps_reset - reset link capability restrictions
+ * @link_caps: link capabilities state
+ *
+ * Reset all current restrictions except for the user requested forced
+ * parameters, thus updating the set of allowed configurations and the
+ * derived maximum link information accordingly.
+ *
+ * This function is regularly called after a sink is connected, either
+ * for the first time to the connector or after a previous sink was
+ * disconnected from it, and intel_dp_link_caps_update() was called.
+ */
+void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps)
+{
+	/* TODO: Update the limits to account for forced params. */
+	reset_max_link_limits_no_update(link_caps);
+}
+
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index c7ea40b1714d1..fed8b0ca72ff2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -33,6 +33,7 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
+void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.49.1

