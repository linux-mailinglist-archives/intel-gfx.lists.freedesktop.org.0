Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAJzMtqt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAE14852C1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F54310EBD6;
	Tue, 28 Apr 2026 12:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OUoCH4cC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E0310EBD0;
 Tue, 28 Apr 2026 12:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380822; x=1808916822;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=/X3yy1XqPKFcu5+VkOWEhi0Wso3MTV4yJRpsHb7K3hQ=;
 b=OUoCH4cCdKELISkNcev1Ii8UWceLRCNa0hD3RJ3dkPfCUuL7Ga1l4mZb
 KLNpV5J/21ChXkp06wZhW0iOAbfui5z+VZxFvaJUbTdHnzYHvlH45nNC/
 a1WL7iAYWQdrn5jMl1u3YVbI/8Vql+uE/dRjFYuJ9Wn7cE8vu0RQRdkIX
 KRuBDh7LySIAbEx2Eu+hVonEDK0p54J1HWB6ctgPIvWbMtMWn2GcCNWIv
 N7bT+i8XMWI0n1VxMsSLMMcEX9vvwhTzk43NbfIGoyapHoUOoW5q/56O6
 CS7qrj1OB+7t04BQjPuSKkXNcLyJrFM5U5gaJNxcFiYaAbGV7eNvNzR6i A==;
X-CSE-ConnectionGUID: AYl7C1g8Q8S5M1rNor9GSw==
X-CSE-MsgGUID: haSTmKrcT7qfEuhD8GOt+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398656"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398656"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:42 -0700
X-CSE-ConnectionGUID: IVa/2DFvRh2VxpUc0pC0TQ==
X-CSE-MsgGUID: XgAml1xFRrO9hhmsT6X8Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911391"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:41 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:41 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gnvf1Xb6CAzAob5WDGBKZrNfrlsfBq8iDl+/kYGxi2cJxbgaNgdEDtyoVgHMr1/iu0rqt5Tdiqn+RuV4qiAfIvqms1xkmUyKRdJppieySHehjAWnmCwCt6seybIVKxqDLV/4mPgB1IRPQaWXbrFyuwtzcJKdFBTFhR4dPSq4fKMRSmJgiBVgSLZDOdpprZDivd+/svsOnqY7/Qwq6KHysdkUmp4Z9sAAwZ64sawasuFkcfVNGKnGJhVjDkZhfGcszPELy3njgdgv5C9EZvWcOFsgvQQMpHpJ0sYHokGNBX/c1naIxKblNz4btR7hir34FVly7Z6KP+r06HZev7P59g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G73j+8XpfFL+P0R1U5+rMba24F42b48P+noVR9q+gbQ=;
 b=kP28UgIhnUG5qjEDzeBBgJxCEWQCjG2XIVow29qsZqSgVYfEtTQ7JS3R2wTy1YZjePQ/udGN5IcpCnJmBTEZkAR+n2F4AgRRTW4NqJ1ErYmpGiUvbstWatEcg/bCp+zmdgcK1asEgEvsW93Jv69lAF5eBPjgyyzDnFULRjFkn+4LkP+s+rM3F1AxV9gLbTzUO9oG4IR/ncsxRnJ4QF/uM4k8MjZbIJlP2MWM5DKGEZqnqQ+ZTugPoOLaWqr6VQYcZT9eG/xoYOkr5HEgtXOz39lQYfXIFcjmRgxeWELiMMaWuUDthnj+WEnvk2EksC5j+IBMMmG7PgSk3e60RMxV6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:38 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 035/108] drm/i915/dp_link_caps: Move forced link params to
 link_caps
Date: Tue, 28 Apr 2026 15:51:16 +0300
Message-ID: <20260428125233.1664668-36-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 9b5e305f-c29b-4576-6834-08dea5252a98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: RZ9bYSDzMRq+WdCx4wiSi6rNhv5zd+4w88KUECljVd5TPn8s+QbRkimYABok5PEdiGkr280HN743sg1+cOEzi0SCswmxAAS9nl3SKQYEltEfLVxH7FWJFMYwa2XQaWNP2fnHdbvt1UyaR7bP0cMvXRrpcaCkzMVumKGPS+n/R3GtXJaZo13SXV7QeW025yUZgmH2MG09NxenVOrcw/ZJ8LbwIrEyDft7k9mMpe8UH9bYtNI6CzJpmjtVeHjgy7RgRzhUlZsg2kEZMYGr/Kh+9/5W/n/3pMCA+8G9jQVqn1Xf8wErt9Vmz8XgXuBG2kkfdt7cciMk/g81s0zLSzNPS6yaw4puChjf76POJuktv46tGyX0KBgK0HPj/1H/aOjzK0iT598PmXb8vwRPetwCKayzszjYIRlQuY8efhyhEB46UfFA0xx6F7dPQTVsKJ5he5pTJLBrGfURUT13hjM9DAV/L5TIwsPWWfW0Wa1kKBJNqiEuozul3mBcQzqskt3IythsImjl5dnzdcLrVceZn/bdHexcZDJF7U0WZF4Kmum4A4XJU2cVwxDOgJojKnu+jsZWHOe0wJWvRda0wl4pMEGrpqM4VgcVTEGdjJEfMyqEgvSmNAwmesHzRK7hMLxVcb09zySThhChcuF9KkYLzTelLQZUMrU7Rzvr3Mk5txdKM+48L/b/lUPn0TaCcV5vGZMzML5cI0efWrpyWlCEMFd6JeXRLkjS4ac6oqWsKEM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u5BVVmhuj6wXh4XriOAC1kTkIijG8h876k7luo4efQV9QkUvLS99G9NZt90l?=
 =?us-ascii?Q?Q0E0Y8nWgva3380T1ifp/MbWlf4FDEeG+tdmnGE9Y/Om8LkW5h9QEv+D0L25?=
 =?us-ascii?Q?JV0/1b7ze32pA4oclSt3fxO58XzLvqMTrvKd+GNxN96nXfOT/i7/I4Fy5gP8?=
 =?us-ascii?Q?DozS6T7SMraQRJQ6QDeDVdkWTKyjKhS375szhDgBTQo2Jt9YXNn+yAccaF2a?=
 =?us-ascii?Q?VLb1/X8NGPoB6wI5Q2p6h61TGYiTpK5C32UW06JTnjNUV+06L86IqAFXTusv?=
 =?us-ascii?Q?qb6FVOHFMxU3QGCTREAYn3+P8tlZTp+DP9NQ5Wwsb/UWIfaKCEDGtwRQwaMs?=
 =?us-ascii?Q?UjsE0Z869863vyrrRlqpc7ulCc2RIODRd5SAg9yMOhEMhO9GUbIQm68XEVd6?=
 =?us-ascii?Q?jJ5d24Ko7DAB5pNrYyVsVo1nfXDtgH4PW+pa9BZFb64X8qiUWJxkAoNU0L/z?=
 =?us-ascii?Q?yZ5oHUgdfuFH4SfD7igfVoPzMQYHK/kYCfhPcKaLgX++aVJWdJcfyQiEcmi4?=
 =?us-ascii?Q?aI4EY2wIOkp6W5M7lvJ0hRbl9ORW0DH/ZFjXy+KrJ2Wi7fQ29xzT86etA/sd?=
 =?us-ascii?Q?Fr0xxQJDd2j5+9BI7Wsr3ZFqDs+Emo/80t/TRVXFEgctu5r86GZolSE9cmjM?=
 =?us-ascii?Q?jO5RszxRbF317dPTOiOamM1nkRY/ABOGFKBsZm3peN0tUv9gWKQwgjXboEO2?=
 =?us-ascii?Q?j+g7MfmrX/SQZpSBvYPDvYlmr+mfsrxjMiAFKawUejXoqHMe2U8qv+g10n3a?=
 =?us-ascii?Q?M5PbFTkrJhOgDIHldTbJwRlnBdTF0+f+tU9XxOo2K5iBR3Zux/vsYsXwZMwu?=
 =?us-ascii?Q?NbOqR2g3psJljAxj30sqLaUZhvOCQNp+3cvijMCDCxkYg0hbxMtR2cabiqVj?=
 =?us-ascii?Q?zIP0IqhDe1NvTmTJTw7OXRvR2poGrjL9kTWpgWxnfzl+Y8iZEAuuFL1eHoRn?=
 =?us-ascii?Q?TuMQZ1d67cdTaFhsLl2DH9m9sj9WPPwfLBP3ePqI0yyyjYPWiMo8VBQWgO3u?=
 =?us-ascii?Q?ygB/hGy7cKe5S/Qo0g4nrklr7JIHfg7w3AgjwKfVrlIr8hfUsBsDm2b1PdUD?=
 =?us-ascii?Q?k8rp2qNoaeS08nLWAWNimTR2VQyIPp/ZTlhqy6+RqRPnNLXL7pzJV6BUeopC?=
 =?us-ascii?Q?3HNViTcPZTz4xcBa44oO3J9+HQU1dRykkFxYVZvAlw8/n+0MEid5pF4kPFTu?=
 =?us-ascii?Q?kLxIYSYQqkKV8F5N57RhsmYHtFJ+lQY+vEB3b2R2BDRga0SGDxp5aT4F1Ujm?=
 =?us-ascii?Q?rzezhSnSMRBl+1BPcykYm5XjZIFZvqsAvuoAXSVXhW2FwPasg30fJMSWVFy/?=
 =?us-ascii?Q?fdsSDUZu0Fd4lC8BO3VBjfg88RQE35g+qEhJin7UAl2kV2TAkaZikL0ePNyd?=
 =?us-ascii?Q?cTy+Tw5eompSsqoaifQA9zcui8bCmnLiq3iDv7fAdClLEDTIFXgzSOXNG8bF?=
 =?us-ascii?Q?OYcivL+cXMoR046kASzIrrsQr/gVY92KNRnaKs5VeDGDYLDFootNpYylTc11?=
 =?us-ascii?Q?uhxCKVwFtTjslN2/DjtAcj3xZuPD3i1lLWhDngFbM3HbwyJxSZ2oSWVo2SzZ?=
 =?us-ascii?Q?PxNfcOiaNLefaWXRYg5US67zVkhCvCUigEXdZ/jflBYntHxBJ2KzDryrOR+c?=
 =?us-ascii?Q?4AFJKpS805HDeLjMhKamCevDcjSGnnqwwZBfXHR492v7l7erFlbHxM6e3Fg9?=
 =?us-ascii?Q?uBlsl7mXi7DYxQqXklJ4YER2cljD6IxNaUFk+gapeG4wLuijcSl25k6isTrm?=
 =?us-ascii?Q?hbMmHH4QOg=3D=3D?=
X-Exchange-RoutingPolicyChecked: AjRWDG2HdavPeByqvk1FU2fH6pH9EdRFGgbFBvg+/K/0MUdF25rC+1OONawshMbzG90aD8N5DT5au4wIq4CNXzFCPnc+AdevFcZHnTdvOP/R+lLEyzEAODNNLaef0ei6aezyowpNPotvIKIZbo+ely0zZ++YXEA9FUVz9G0QCfwoCLydjUgZJSkQhTrp2JBUQp7qL0Z5YXa2PpX/NQD+0Req6nTyrNuP2yL/8FwDFw/CqqAgh2fbmPK8kG+/iPtQtO+Qg5rH5FLJhIWFdttkcxNxUgFo96vYmryWP6+BbUWkFFo9AhuV7plhzYD/stzPCYDvF14rEVB7HRsfLgNv6A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5e305f-c29b-4576-6834-08dea5252a98
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:38.2395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rg5wrgAG0ng1ytXhlctJRX61eCWNAnofS88go7eOHfDXMWEq1sHi9Po5Hd/iSgawbQ03kaqq2U83rXkSB7Jx5Q==
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
X-Rspamd-Queue-Id: 6FAE14852C1
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

Move tracking of the forced link parameters from struct intel_dp to
struct intel_dp_link_caps.

Previous changes made all users access these parameters through the link
caps helpers, so the state can now be kept internal to the link caps
module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 30 ++++++++++++++-----
 2 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d11686ce2963d..1fae80c8c241b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1856,8 +1856,6 @@ struct intel_dp {
 		 */
 		int mst_probed_lane_count;
 		int mst_probed_rate;
-		int force_lane_count;
-		int force_rate;
 		struct intel_dp_link_training *training;
 		struct intel_dp_link_caps *caps;
 	} link;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index ed05a8597fc01..e11a36ea2d178 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -15,6 +15,12 @@
 
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
+
+	/*
+	 * Forced parameters requested via debugfs. Remains set across sink
+	 * disconnects.
+	 */
+	struct intel_dp_link_config forced_params;
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
@@ -44,20 +50,24 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
-	if (!intel_dp->link.force_lane_count)
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	if (!link_caps->forced_params.lane_count)
 		return 0;
 
-	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
+	return clamp(link_caps->forced_params.lane_count,
+		     1, intel_dp_max_common_lane_count(intel_dp));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int len;
 
-	if (!intel_dp->link.force_rate)
+	if (!link_caps->forced_params.rate)
 		return 0;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->forced_params.rate);
 	if (len == 0)
 		return intel_dp_common_rate(intel_dp, 0);
 
@@ -76,6 +86,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int current_rate = -1;
 	int force_rate;
 	int err;
@@ -90,7 +101,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	if (intel_dp->link.active)
 		current_rate = intel_dp->link_rate;
 
-	force_rate = intel_dp->link.force_rate;
+	force_rate = link_caps->forced_params.rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -150,6 +161,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int rate;
 	int err;
 
@@ -164,7 +176,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	intel_dp_flush_connector_commits(connector);
 
 	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_rate = rate;
+	link_caps->forced_params.rate = rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -179,6 +191,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int current_lane_count = -1;
 	int force_lane_count;
 	int err;
@@ -192,7 +205,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 
 	if (intel_dp->link.active)
 		current_lane_count = intel_dp->lane_count;
-	force_lane_count = intel_dp->link.force_lane_count;
+	force_lane_count = link_caps->forced_params.lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -256,6 +269,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int lane_count;
 	int err;
 
@@ -270,7 +284,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	intel_dp_flush_connector_commits(connector);
 
 	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_lane_count = lane_count;
+	link_caps->forced_params.lane_count = lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
-- 
2.49.1

