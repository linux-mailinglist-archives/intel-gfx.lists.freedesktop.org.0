Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vGIPFhau8GkGXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571694853EE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D39010EC24;
	Tue, 28 Apr 2026 12:54:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KG14Xyiv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE2610EC1E;
 Tue, 28 Apr 2026 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380874; x=1808916874;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=JYIp0K38bzbmHRcJlIaP5tFq1gozg0E9518wv+mPfis=;
 b=KG14XyivTo+bQDr+IxsbFbdg7M5lhkYhDPBCHd55Kybvmsq3BpWL9MVl
 TBvHRaIe1ClRNca2ibUFxDxh8TJ/Vm2JcT0slnEC2e/IsW3fM2UlzG+Iq
 MKzsbTRweKQKF3RYcZVdRe7ZTcctwIAeXx7Zr9DGmYfuEzblj4xoZ7E36
 IHzG6w1tP0Pa80e5ox7LBLwnH+lZ+Y++xxtFj81RlARktnFPyRwCbfM9B
 W7LarA/U5Nql+4yq6GVL7QYyPU8kH6J9SUdoBfWaktywZEflB1MxPZYdT
 og6Z4l5n1atSucPe5+Ke6tK/T7//Tt+pySs2UivPV8vANWNJl2y3qA0Fc Q==;
X-CSE-ConnectionGUID: pDCrysZAQCOjoyZEMSnSDA==
X-CSE-MsgGUID: 7CHsrr7WSau0khVtUp1yiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945232"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945232"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:33 -0700
X-CSE-ConnectionGUID: IXJ+HLKiRdSvhhv5Ujkq3w==
X-CSE-MsgGUID: Bgnb+9BMQwKRG14ElwRsmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377732"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:32 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LwfsYd5PHpqtm6gn0cXkRecpEv/atvNosLJPKHpTTUjpIolNx9m2eDqcb2tHCWvf0N6tvUOtz6qS4rXkLN1msSXFb1POSUtjrF/h37Vsr2BF/Ql+Xuimkcc8ygwMTdYa3aDSw8zRyYrkaZzWCQqTlbkBz8V3hPYX6CzUA+yVZnQve3ys7Dcar0kgOZTmzqO1o8xdEt+44Ux6/6s3K2Xoe8eY1/noFokA3kRc7n0V+Jw8+fpwccugOeLTpbptlyRIv5Fcj6YOGB6mkgRPhU61m7ommN8IrWCqGw6KxJb9Lqr5ely2yNaHmO5WwuYmxgRA8E5WeqgBfd82uFuOQTss2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQA/hwiA/vi9SEpwAe4RMP5F2ljG67QmNezg/JUL5xY=;
 b=Oj2u8+u5EUxdy/XbWQUk6LxmtLrBzB3pkiI69zLPC3y/IXoXGRku1qxO1i50mMiw72X8+sZvfxNhPXN6T4D6Gr/TE2Nv+Z8iBEqW0/ZivGh6QUzCUpfZo7hSqMekwR3nisuN7XpWUtZE8MgWOEj4fZiqPjGq3vDFAPis5fuorPfrAilbxkOgUjS2Ot7VFc642uSA/GPUbXJV9KPDGFKQw4i+IIRh3V8qZ7rT4HPYk12w1eo6QFvAfyWVTnPC7paY9I3K1UIwpxhRR0sV5CqN8NSUo/eFJmBfRYrxKWOndSdVwKez2cOjIvE0esKI3kH1pHC2n21329fHRD1yLWz4tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:22 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 048/108] drm/i915/dp_link_caps: Move updating max link limits
 to link_caps update
Date: Tue, 28 Apr 2026 15:51:29 +0300
Message-ID: <20260428125233.1664668-49-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 1b068c7e-088b-4667-5d24-08dea5253744
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: w8vDoZo9Gf9Ef2ipBa2gJN+4c5J1ONKEswihoCpYak9H0vEsuF/ZPwn7OQm1gIDKniDv7k/1LD1THIUa2niFOyGFiPeikXOqNLR4nr9YjEhLbVflk+AP0B7T3/4nHxfDqcG7sAPhO5136v7oJ1mxnSTAG9Al3gzSrkZqfBE96quCE0MD6w9f9FWWxUhG8OmigBCXBIQXmueeFKRgHGq/6HmZG6KlUhuuQWrEzqrljyrpVaQi0jTUV3dmyvwm8R2pOkt/nnTGVloYg9ei2gEqTxuI3A6Ot7o6u4VQK7sd6zyTrIEk0isWfP7iAK6yvet2Uy5IeQ21llvivQVRogLzTlQSJr9ILief0H1Y8S3ZVDH8ObZ4JshLShhp1mg1Iv6DxJab4ibHmOt6eGaa4rNJCu0SGbqAMurFevvY4nUulWdN33NuZxISCHAgHf7oqbWYLpEoqD6zD5H/8PoEJaZ5hMIG4Jce0CQL4+zNh7ewiNjazDTfZB1HUszeK4vwD6/pzVm0Uqir56Sybsa0H/YAH+fAh8z14w0B+5Q4W9iSTxdIlLMgeeuh8LXu1qg4uyzwgEtqlccXSn0l1p0oCekSAlQr61IaHPN4S6h9LTRZ06oZU0pD/1LcZ+eitnoU0mxV1kiPzYNADR62KPFY05JRSoW8a/i+/N9AaJGw5gcX/EYLngvk1CdCS94tjEKW2Mq2frdmPpHjLvBv8iZI1xWgG1bFUrcj2voawooz6M/wbNA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?URIOw5gZiFOLW843hKU5oNU44nGNTstqtXeW33QEDMK4bf0RV6F+2gmmquoY?=
 =?us-ascii?Q?Je4fTELOaaNn215Q+mfpEGgxhpaTK6GaIuaY2JQw7Mep6yA1xiw/vZr3/1td?=
 =?us-ascii?Q?Bs6xUmX2fPvs2YBr63krcmBBdvL2w1OSf2Of1fMehqZ0dVw1ZdTSNRtj9mV+?=
 =?us-ascii?Q?17XcK5Ccux+nys9Vzsk/J6GVc2l0uj4hDgqH2DtCcnfxI1RFSMK8qOBT5A77?=
 =?us-ascii?Q?QD/BY660ShO0bP3QhPnWO2wiYU17A6tv+QfZ4LXSv7BU77KOt1O3sX5saIiJ?=
 =?us-ascii?Q?1CDSfPXrPNpdOAyAS1f3+af4w7z7HB58G8x/LnyJS6FVbH26oEzkRHXOpQoW?=
 =?us-ascii?Q?Kj5E+4RUdo5PNvhS+AIIScaAt9ICKnREbPjEeu82xS7W9H7uTRs2H82ldOqW?=
 =?us-ascii?Q?BlS2NQfOdqQspHgJ6CKe6/4HmlyHv3miRu7huqtuYdiGIozLCJHpSb/glKdU?=
 =?us-ascii?Q?NvmlOibgNbTzfSTVY9BKyKjc5KWBkdVpdW2oOhiCbRRbVh+EWihVH8JNr5Xo?=
 =?us-ascii?Q?Xn0mtCQKspFnOKQbgPyTQdOlHXDT5CYyOOSzGCkZ765iSTWVawZW2rtFHTUI?=
 =?us-ascii?Q?cY5Ie35Uarx6p6DKL7sxh6aFDGhd5ZpsxEqhvKOOqHBZjDQgBEq2yrluMWk6?=
 =?us-ascii?Q?C+bS8AWzzlQ3w/lrLw4YNuIFGtmZIUut8FmKIZ123jj3dCxCYp+mHaGSttYd?=
 =?us-ascii?Q?fFSgbGYhwrbVVrZBwbynODyYBOTrTgsfm7gK+OhbI6QIIK3vqHSOYQ1rWUnr?=
 =?us-ascii?Q?mXRhzD+3oyG1YeTavnuIKkohOTH15/FidVXQbZBIPzwMDYJgtFsynbi931oD?=
 =?us-ascii?Q?GzjiNgTErX/LiutxWWQO6eT2w8f0m7xRJC0YskkmgNF90IMZ18AWkkc6EM/1?=
 =?us-ascii?Q?ZU4/U87vJVOuXGDxXVDuFktsZ6AtXH/ExgzXEXpTK4uAmiC2vQVG7rTCZpqx?=
 =?us-ascii?Q?o8pAKFwLyFhSUXJi3IoyIjSEyg38S6GNohtvhS1Fz13iXdnZvRomUlV0RH9F?=
 =?us-ascii?Q?kdQBOK02tiw2lXQzf5BnPfJ9sC7Q3lzOi9TNx/DR9u46G86dmiNqch5ydmzM?=
 =?us-ascii?Q?vrfgbMoQQw5xg2zkXR2SdWUDmalJsJh1Rvmx0Q1nBZef3JmS4mGo1yGMdcAr?=
 =?us-ascii?Q?weKmGxjtut6jpIU7RPRXpacCIGnpw8fJE9lk/a0O67llrdF1y5yTpm68QMup?=
 =?us-ascii?Q?j4Fhiqi+TYKw7DSC7AobrgBcmmSYq1rr9z8r0PZPsLv0JMh/oUSLboQfEpAX?=
 =?us-ascii?Q?y16W9D2HfIGIsf68SauSgzPO0k/TCXH8Q/XztvCJCxaYeIY4CilK5PACNSp0?=
 =?us-ascii?Q?+uDZyCTRvALf7v/8FnLwkBkIcUR/pobGiCOktjKuSbTD6CAOAoxt97W5gHLD?=
 =?us-ascii?Q?3u78Gl4w/UB7Go+PeZ2XPchLPsL+9nU7bIQt/43Jod/tpWlLGDwirte74J70?=
 =?us-ascii?Q?q6FYmrUmzTFJrr4ABuOA3CWrus9SWEiP2GeARiPLYO0YI0Ybefhe5Gr1yYgm?=
 =?us-ascii?Q?sVbTVxaEn9BrumGqMCpGZxhk7rRc/XU/U8b0v1JmeOv2ChVZX55JMEbx7VlW?=
 =?us-ascii?Q?ZMPGhGtVK0PvTemnm6BnttGK0fXSBY56WnA6nXbRwiVRK/P1iddMqFIfWT3B?=
 =?us-ascii?Q?88s3GhxHk+bunlUOFlL8Ae6oXQ/g13O9ATiHYyteYDymaELkog0ehMvi3qMl?=
 =?us-ascii?Q?JNCeBNRTwf4ZvAvONvv5YKQEDb7xtzUtJdQ8EwMKV54ndsVaFKO+EG+XibW8?=
 =?us-ascii?Q?K/xPBw+QGA=3D=3D?=
X-Exchange-RoutingPolicyChecked: saqG7FICQdpPP8ruWSbmhWjPAQeCZ7OscN11WpzS9DDgnRXyK6GHS83c78DLxfcPeM2ZiQW9a0LyHM/lpBoMDEiA2ju4JZKTvHx7rnxpn/ytf022WGNsFbJqm/C4N1htkl+NcSPVxOnHzGaCZqtiftpWfYL0csakInUCufOyOsRPMsw7N25NYOg66+MlLx+YwfrwCfJlO4BNwggVKuPUgC1u3i4h6HqdJzIMhSKeF2QLEq0bhVXR4Q2BZ9WXTj2uey4udtacVPJg98FST1Rc0X/ue8TlzmZwozLL3mR/D9ttFFeoKI1TbQxeo4GpGwVQ7ILYy4sCE6qoensj7V8XMw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b068c7e-088b-4667-5d24-08dea5253744
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:59.4583 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GtmEr53KW0EUGCHR2B55bDiOmFSm4P71n2wPnOsPE/WzR7uqMQTqOKTtXIFXYvN7gA/+9dyp0x3CQo8lTDg/hQ==
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
X-Rspamd-Queue-Id: 571694853EE
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Move updating the maximum link rate limit to intel_dp_link_caps_update(),
together with the supported link rates and maximum lane count.

This allows updating the max rate and lane count limit - the maximum
bounds over the currently allowed link configurations - alongside both
sink capability changes and link training fallback reductions of the
allowed configuration set.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 ---------------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 --
 3 files changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 18b06e5402611..7326f6d09f186 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -690,11 +690,9 @@ static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
 /* Return %true if any supported or maximum link param changed. */
 static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
-	int old_max_rate_limit = intel_dp->link.max_rate;
 	int num_common_rates;
 	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool link_params_changed = false;
-	int len;
 
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
 	if (intel_dp_link_caps_update(intel_dp,
@@ -702,13 +700,6 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 				      intel_dp_max_common_lane_count(intel_dp)))
 		link_params_changed = true;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
-	if (len > 0)
-		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, len - 1);
-
-	if (intel_dp->link.max_rate != old_max_rate_limit)
-		link_params_changed = true;
-
 	return link_params_changed;
 }
 
@@ -4738,8 +4729,6 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
-	int old_max_lane_count_limit = intel_dp->link.max_lane_count;
-	int current_max_common_lane_count;
 	bool link_params_changed = false;
 
 	intel_dp_set_sink_rates(intel_dp);
@@ -4747,13 +4736,6 @@ void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 	if (intel_dp_set_common_link_params(intel_dp))
 		link_params_changed = true;
 
-	current_max_common_lane_count = intel_dp_max_common_lane_count(intel_dp);
-	intel_dp->link.max_lane_count = min(intel_dp->link.max_lane_count,
-					    current_max_common_lane_count);
-
-	if (intel_dp->link.max_lane_count != old_max_lane_count_limit)
-		link_params_changed = true;
-
 	if (link_params_changed)
 		connector->base.epoch_counter++;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 5d41e6d9b07df..e514103654fde 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -48,8 +48,8 @@ struct intel_dp_link_caps {
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
-int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
-				   int max_rate)
+static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+					  int max_rate)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 
@@ -223,12 +223,15 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
+	int old_max_lane_count_limit = intel_dp->link.max_lane_count;
+	int old_max_rate_limit = intel_dp->link.max_rate;
 	int old_rates[DP_MAX_SUPPORTED_RATES];
 	struct intel_dp_link_config_entry *lc;
 	bool link_params_changed = false;
 	int num_common_lane_configs;
 	int old_max_lane_count;
 	int num_old_rates;
+	int len;
 	int i;
 	int j;
 
@@ -273,7 +276,20 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 				       old_max_lane_count))
 		link_params_changed = true;
 
-	/* TODO: Also detect a change in the max link limits. */
+	/* TODO: Update these as part of the rest of max param updates. */
+	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
+	if (len > 0)
+		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, len - 1);
+
+	if (intel_dp->link.max_rate != old_max_rate_limit)
+		link_params_changed = true;
+
+	intel_dp->link.max_lane_count = min(intel_dp->link.max_lane_count,
+					    max_lane_count);
+
+	if (intel_dp->link.max_lane_count != old_max_lane_count_limit)
+		link_params_changed = true;
+
 	return link_params_changed;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 0283c27b71a8c..9f5bc9b7715fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -11,8 +11,6 @@ struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
 
-int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
-				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
-- 
2.49.1

