Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBLCOfC082lB6QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 22:00:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636BE4A787D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 22:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A2F10F44E;
	Thu, 30 Apr 2026 20:00:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="grRqnM9p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36E510F44D;
 Thu, 30 Apr 2026 20:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777579245; x=1809115245;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=X3ZHcvhI2A+FDpL92YcAvebcjNOV73TFWHnvRuD/Aqo=;
 b=grRqnM9pqYseGefJ7JcGEPAHB6kytp+9M/3n2zDYCgVwn6A2iPgkMj9s
 UQxLJBEx5DJ4s+4xmjv/Qh8r/ISz0b29nsornRntz3lztfxRrEvYVC/qJ
 wUU8H2RYb0x3kpQ0dHd6gfPMtYYVaeChBF+Q6QC2z8JRM0Lse+QUC3TMD
 g89kbnbkT7HpjRFxb1BYTh1n7yu1H0htEQbC/AcRCpUzCDSnmiSU3Xc5r
 LHNfbEw6kauuK+8ccHkszXyqoidZGFqX5PhFrbvsw80Od1o6ocIQBRL5q
 kB4t7snTHBzbp5xeUrCrFIq6wO9BYaRLJDf/gGLmxucvzOyol7MjtR8Pi g==;
X-CSE-ConnectionGUID: OLq/YlecTJi0o/pq2WpBUA==
X-CSE-MsgGUID: XfxpvoYYRjmb0Ymh5/cRlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11772"; a="78597026"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78597026"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 13:00:45 -0700
X-CSE-ConnectionGUID: zi0ctYXyRDCv1xzBIkChhg==
X-CSE-MsgGUID: AXAaTSfVTNKMi2JisLanMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="258014168"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 13:00:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 13:00:44 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 13:00:44 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 13:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SlOKhwDLnKXt8hUyQEGA0fwPJkTLKmYY8yfyp/wv+oJHvQribuRiAfV6u68FnXVLtXYZ9UhRjayEn5VhJIb7GHE6u8QeNbQvzmCOPTMWiW/TMQdU43mBhGrsDQ2vgmjWvUTKx3alpk+xe4tm6lmDJ0kFFmTQKCiXCifhDqpOXucpgcxREh+x96nry0/m4sidZMeyijpFqq2Ch0uDI2r5RZnr8MWb1biW7DQs1yKY2iEOv1OhA+LyMt3uCy5dJtT38Xuw6BBlwhV2xwL6EmyUGZmw9ngUNafYKWpNHiMf2w1mqLP16YWI4y04S1K+veP/KU2MEmutYkzpHUkDzV55pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cTTqnL8HlVmxu9qsExFvIa5q7XsTphGHb/HZ0yoT98Y=;
 b=TRVyQQj+cbLXYzseA5fa5gOKtbpcAQqChMJODWuFbsLmqinD8nh1TpkWdbR9BEcnVmjG8o5G9/suqNdCG5z3q1QcFI20sAWpueRW4zdbyze7QXXiJYHsE7itPwQbccAbkgfq2BChaz+T5Gmej1PlXZtvk+kzatP3ZSgoRx6XRQgLljT+aWhRBrY0lAEAQcPBH5QsQgqoZFc7ZYNbupJlSd2lWcE7grHUFV53rSgWZP69mmGmrtzsmRBS1ZzG3oyOxmkTqkIQIZNfI2AgSAZvI9JuQEDfgKo7x/1NZP1viqqwplzxZZQPpHtxp43F+tBZKTQOZv+TpFgKThrmD1GcJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN2PR11MB4629.namprd11.prod.outlook.com (2603:10b6:208:264::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Thu, 30 Apr
 2026 20:00:41 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9870.016; Thu, 30 Apr 2026
 20:00:41 +0000
Date: Thu, 30 Apr 2026 16:00:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-fixes
Message-ID: <afO05KvmFMn_7qcY@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: SJ0PR05CA0041.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::16) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN2PR11MB4629:EE_
X-MS-Office365-Filtering-Correlation-Id: 384ab275-4504-4365-e1a6-08dea6f3281b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: V2NPju2FXCiTwufGcvlYk1xg3+4iXV9eT7mkWoxKXne6y9P0z2ywv2ORmHcAKr8yXU39GsYmuKpd0Qdd3efCdPy1X2bVOngX1Q+bgP+lJi5I5wzem958ErjJ3LfXJoZTbVBp+Pm40NTNOcgxzfdFTu41e5WimGvAgIQZ8JTUMD3XCJ9z+a2/SSatTFscMovazpvprTCWxj+NdmMAq2oY2TliE/XOOJOEAcj+CQbzuqJObkAcPdAne0epGJznCIATkzFPhWvrzDCmndf9P+7ANQg5cAxG5KV0piF+U5NAxzeb0vzHXdsvpP1vRhDRUFZMpH1evLecuZNtBWGnrh6oDSFXVbIMQhXzF2klqCoY6knk3x4JiUYYrgAEieQqznLgVn4soTA0BJc1LMzSLGG1NF22Cne3LVuyRTs6B/QvM+owNcFdt8cLqSFSoDWDYXjpBherUB89Km5CQOy90hrnFIs/BdlOWNAdpJa9+V3yiOaEqGtsTxn/b5m4R91p8WdPPh5VmBwXplrbsMBvwyMKMAS432jWqTZFESjVAEJdqv6JbkyPvq+S+nl3+qOOlK56yLn+JBSy5WakGX7OpzsuwIQPx4LRERt+W4L5Mre7oO8AgyzrHcnm7OjIjSPDKP/jnQlyWg9mBo+YPniIOuiq3w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/nzAioZp4nevFv0x8QtikttXwM1SBNBWZ9msTyooPDJz7RxNU+HFQK2KEN3k?=
 =?us-ascii?Q?IsNg+lWMfthdF2Avd9cQgOpwtTO116/hFXkEQRCTS7ypFwN4uFpP6VLVCwSc?=
 =?us-ascii?Q?R2R+QloDuX3YnpJQ+MMKZ2Mb+ACZtOrrBJYG8rg0XU0ukLpEZXzQDlxiM7DM?=
 =?us-ascii?Q?ReXjJRCB8onnJIvZMqFhmSAY+/WEEPtWoMTnBY49Uf4gt+hlOT7Wlblgx7yu?=
 =?us-ascii?Q?YKNWwDCJykk9LuV6O6Wo4fzHqAkGUDU72nbsr9kHLCskQ7E0d3um77cKWScY?=
 =?us-ascii?Q?SJPbwo/P0+9asT3WAsaPg3iFtLH/qZqG9lCsHVYpWIGN/ZXCk2KpJbyvFiTo?=
 =?us-ascii?Q?qUohZ7uF/NXZHn7S87Dq981GX9psfg3gM3LdTdvK2msVJRlZwBnCwdLBJXG0?=
 =?us-ascii?Q?wx6yskLaFdMLxJfhs5jf5X+P9++T8UiA24oHVDQ/fizk+osZsZsBPGcZk9LH?=
 =?us-ascii?Q?mC7x36ab2H95R29bKgUQG0VCj1kcrCwyxtEiIVN0Qkz/x8uOdyWprDJHFCzx?=
 =?us-ascii?Q?Ru/RTFjqwx+2DOd7iVgrl+OSXnP5Xd7+CJEjUgSPRDzzxcfiBYcRgsGXDZBr?=
 =?us-ascii?Q?BOWsgRnrk1qITACSlexAE29l6lF5d6d40njwroPnYGZf+z6A/707BWYzJpfQ?=
 =?us-ascii?Q?eCCzWC4gR1BYHPd86CnSrJ1IcVtzBo/c+NLA9GC3016UUWXycqCgicUMjBCi?=
 =?us-ascii?Q?/KLGOX8VVJuwuT1q7oFp9QEEqXlXnyZ75SPpoExp1aIkMYIlNeZkOpe2eMEf?=
 =?us-ascii?Q?i5bnGNVsBTU/MOOMrdIEVMmMebe384yagdDw/Pxpjott7wI/zEO+DppCoQZK?=
 =?us-ascii?Q?7Ja9QH9smcwiO9xi81hcqkFAM4I6I2o6ebMGojfKmvT1fscAiXmvcEr0cT8u?=
 =?us-ascii?Q?RelgOwT7qNuIsxSfecSQkpAqUdl6lodVVN1b4PS8KrZXFqEJKpss7fBf5g3d?=
 =?us-ascii?Q?XpEFi7Ldaad06CaAPIij/lJ+YF8KvHI9cloEGlw9d11j5YI3Tj88K+Hcj261?=
 =?us-ascii?Q?kRSPudYOpgKcUq/9hqPvXZcGHgActsk0xWaHOvSfvW9dH8A/eHWycWLm+FdH?=
 =?us-ascii?Q?T/tKf6i0QpyrFyVxGCpv+vOBl0jD5w1SclHWbzXqPjOE82lC6ILexmrQbWkI?=
 =?us-ascii?Q?PGJC5oiN19J3JT19KZKJgGnPSkfmCKQFekvpFGDB/HmCzIsb70fabVvcoenM?=
 =?us-ascii?Q?UTOlwxltgTqzNQY4VunpCklMZvOjA6mYOp7LyOLoOjqZaSjnhRu1jKJfq/RA?=
 =?us-ascii?Q?rDrMPbC8wzsmygSkEhAbzwvyHjSMJ6wL6ZVS+5b0lJyVtrRWyivfwNgugdG1?=
 =?us-ascii?Q?OejKNX1voqmQf1GrfIvCl3TzGj54tsiCVgq3i+4MmGnNsQYuqx5HYADb2nz5?=
 =?us-ascii?Q?0nff0quHP6+aFRVN9CDzWXPf3dfvx83P29afE4JFrvJN5u2/DOvmx04yiNlp?=
 =?us-ascii?Q?7BDKELSSniOxwa6Op+5BH5HtJcYYy5kVhWRbUJ3Dcj7xLJM3GI6QxokfSlzP?=
 =?us-ascii?Q?OsfWvv5TYJxok2kgf10FfiznqcrTheyIXpRnzKHzD16G3ldRbx4iDdyUySRt?=
 =?us-ascii?Q?uRN6zsoNJgfOFjuGmoD5Z1uwoRhQecEQhqkIKSq0/urDh7SaDlK7knq9qHK8?=
 =?us-ascii?Q?IXs+JgyTTolDvPNyLYxN9sAO0u/5FeaUNOaT+bykl2ZoZsNMh4HrZ62611G3?=
 =?us-ascii?Q?jnEwHr3AiQZ7bRPhVm/tAeszMp8P6pC6cY9deU1ymKKsTTBHrwJNfF2NMUET?=
 =?us-ascii?Q?sp7FiCFFCw=3D=3D?=
X-Exchange-RoutingPolicyChecked: NgLaJkhSV5bRpAAurK6EmwHPi/ne7Yz2KovPoeaTnpTyAqEiZYm6diUFaiYDQ6RjfewpymbNhzwXPDWdiiDj7VFyF+7q+YqA/WctRDPJYKP/PePB20CmN1KlwJQvrsU4MgcxwTnDy9mwKBUm5lpZLN6KAP+FN2xHYe8lxjTSgoFC7Xkci5mKe8Fu8RjgqtrCX3sZmDnzkdX/SptFNTPhuOyFnOKDcL6+4Xv+QLroSOYc+39t8WDQN0riVfGv6qGue3gGbBxHSws6ktpOSoPl9h1tjpNpEZxM2KnTeOmCPVVJ6UHkLaBB21zD4gqsdnGQUxRtMEHRouEQ9B+DS54Z/A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 384ab275-4504-4365-e1a6-08dea6f3281b
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 20:00:41.5716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v/U0TaJJkBynbNjmPprNIHom75ECbOljaUMUw8tLgCHGcQZoklqC9XiwGCRG2r+HvBhcj++iMRy8EUDjZTaXSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4629
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
X-Rspamd-Queue-Id: 636BE4A787D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Dave and Sima,

Here goes our first drm-xe-fixes of this 7.1-rc cycle.

The unusual high number of patches is only because we have
missed the drm-xe-next-fixes cycle. Mostly due to some issues with
Matt's permissions to push on fixes branches. Fixed now.

Anyway, I'm also covering for him during this first week.

Thanks,
Rodrigo.

drm-xe-fixes-2026-04-30:
API Fixes:
 - Add missing pad and extensions check (Jonathan)
 - Reject unsafe PAT indices for CPU cached memory (Jia)

 Driver Fixes:
 - Drop registration of guc_submit_wedged_fini from xe_guc_submit_wedge (Brost)
 - Xe3p tuning and workaround fixes (Roper, Gustavo)
 - USE drm mm instead of drm SA for CCS read/write (Satya)
 - Fix leaks and null derefs (Shuicheng)
 - Fix Wa_18022495364 (Tvrtko)
The following changes since commit 254f49634ee16a731174d2ae34bc50bd5f45e731:

  Linux 7.1-rc1 (2026-04-26 14:19:00 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-04-30

for you to fetch changes up to 662f9ddc8077792129440d05cbef2f944a07777a:

  drm/xe/uapi: Reject coh_none PAT index for CPU_ADDR_MIRROR (2026-04-29 12:51:21 -0400)

----------------------------------------------------------------
API Fixes:
 - Add missing pad and extensions check (Jonathan)
 - Reject unsafe PAT indices for CPU cached memory (Jia)

 Driver Fixes:
 - Drop registration of guc_submit_wedged_fini from xe_guc_submit_wedge (Brost)
 - Xe3p tuning and workaround fixes (Roper, Gustavo)
 - USE drm mm instead of drm SA for CCS read/write (Satya)
 - Fix leaks and null derefs (Shuicheng)
 - Fix Wa_18022495364 (Tvrtko)

----------------------------------------------------------------
Gustavo Sousa (1):
      drm/xe/xe3p_lpg: Add missing indirect ring state feature flag

Jia Yao (2):
      drm/xe/uapi: Reject coh_none PAT index for CPU cached memory in madvise
      drm/xe/uapi: Reject coh_none PAT index for CPU_ADDR_MIRROR

Jonathan Cavitt (1):
      drm/xe/vm: Add missing pad and extensions check

Matt Roper (4):
      drm/xe: Drop redundant rtp entries for Wa_14019988906 & Wa_14019877138
      drm/xe/tuning: Use proper register offset for GAMSTLB_CTRL
      drm/xe: Mark ROW_CHICKEN5 as a masked register
      drm/xe/debugfs: Correct printing of register whitelist ranges

Matthew Brost (1):
      drm/xe: Drop registration of guc_submit_wedged_fini from xe_guc_submit_wedge()

Satyanarayana K V P (2):
      drm/xe: Add memory pool with shadow support
      drm/xe/vf: Use drm mm instead of drm sa for CCS read/write

Shuicheng Lin (8):
      drm/xe: Fix potential NULL deref in xe_exec_queue_tlb_inval_last_fence_put_unlocked
      drm/xe/bo: Fix bo leak on unaligned size validation in xe_bo_init_locked()
      drm/xe/bo: Fix bo leak on GGTT flag validation in xe_bo_init_locked()
      drm/xe: Fix bo leak in xe_dma_buf_init_obj() on allocation failure
      drm/xe: Fix dma-buf attachment leak in xe_gem_prime_import()
      drm/xe: Fix error cleanup in xe_exec_queue_create_ioctl()
      drm/xe/eustall: Fix drm_dev_put called before stream disable in close
      drm/xe/gsc: Fix BO leak on error in query_compatibility_version()

Tvrtko Ursulin (1):
      drm/xe/xelp: Fix Wa_18022495364

 drivers/gpu/drm/xe/Makefile                |   1 +
 drivers/gpu/drm/xe/regs/xe_gt_regs.h       |   2 +-
 drivers/gpu/drm/xe/xe_bo.c                 |   8 +-
 drivers/gpu/drm/xe/xe_bo_types.h           |   3 +-
 drivers/gpu/drm/xe/xe_dma_buf.c            |  23 +-
 drivers/gpu/drm/xe/xe_eu_stall.c           |   4 +-
 drivers/gpu/drm/xe/xe_exec_queue.c         |   9 +-
 drivers/gpu/drm/xe/xe_gsc.c                |   2 +-
 drivers/gpu/drm/xe/xe_guc_submit.c         |  33 +--
 drivers/gpu/drm/xe/xe_lrc.c                |   2 +-
 drivers/gpu/drm/xe/xe_mem_pool.c           | 403 +++++++++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_mem_pool.h           |  35 +++
 drivers/gpu/drm/xe/xe_mem_pool_types.h     |  21 ++
 drivers/gpu/drm/xe/xe_migrate.c            |  56 ++--
 drivers/gpu/drm/xe/xe_pci.c                |   1 +
 drivers/gpu/drm/xe/xe_reg_whitelist.c      |   2 +-
 drivers/gpu/drm/xe/xe_sriov_vf_ccs.c       |  54 ++--
 drivers/gpu/drm/xe/xe_sriov_vf_ccs_types.h |   5 +-
 drivers/gpu/drm/xe/xe_tuning.c             |   2 +-
 drivers/gpu/drm/xe/xe_vm.c                 |   5 +-
 drivers/gpu/drm/xe/xe_vm_madvise.c         |  47 ++++
 drivers/gpu/drm/xe/xe_wa.c                 |   8 -
 22 files changed, 621 insertions(+), 105 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool.c
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool.h
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool_types.h
