Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHcHLVaE6mn80AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 22:43:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA10645756F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 22:43:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96DFF10F26C;
	Thu, 23 Apr 2026 20:42:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b3+0XMlD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014CF10F26C;
 Thu, 23 Apr 2026 20:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776976978; x=1808512978;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=D1g0U0b7d8DGgyWY8o59zC/lJSCJylAGYf+We92d+JA=;
 b=b3+0XMlD0Box3aPuehjRIldoYbQCCnNEzTLquXTZdJpGq0+og0rYg6nN
 dRVtqMqtNSkaEwUnGy5O1IWalpbazpHCycvPFeugCqr/RDd0y9RKW0jBh
 miur4DiQSn09pVrwYckbzRKBW5/Ye/PVPrnreEqcyfGDqBUvsvG+2sfmp
 I8JWvNZGfzXhTXlD8iuXsmGbrJ5y/XaDuU0exvzht5d6ZRP51KJVk+IZM
 fvzi0t3m/2zSk5oJS55A/uYGDYgpyP0VxNicT07GxRBQ/mFJQPhxbN0eS
 D3qcia60cwwShjry/z0PTnN39fQBUhJZEHbLvvnOeqi0NZRR0G4Mz/fsW A==;
X-CSE-ConnectionGUID: go3zdIXvSMu31SbfL7wYXw==
X-CSE-MsgGUID: r9aJ2phLQQ2nYF/rD2qM9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77975297"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="77975297"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 13:42:57 -0700
X-CSE-ConnectionGUID: d4IIvNLuQZSRX1Ec/ja5YA==
X-CSE-MsgGUID: MyQdyMocSvKjdkdhdJNhrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="256062616"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 13:42:57 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 13:42:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 13:42:56 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 13:42:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YdQu7ZkeeF9jrxZlB2WPAlH3E4ycs/REK/6a/EkRviSL3vGfhfoD09JUe2tglbZ94W/9s1y9LQ2tqP45AI+z47pcynd5+WM4IA7oGIlLz2uQdvE2yocVBd5lfGPJfmDY5KsRT2r5bBAk8fakw4ISI1qh2ejnn+fXIUvBsVrVZS47iWiqxXloO0So6nOVZu3jEgxXz2zpgqqdxG1vj38ZAW6orUmsL2Dj4aV2uXoNGEE+Wm/TlKX+esT2LT9h6iHyfaK2Gxxl9Ifrm94X/9TXSbS+o382n4eZ8Kh9RepPQBaiFfpjq2MEb2WmtkvEQUZ1QkF87xu1iJ8aqf1fVXo9qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TD7KiF7w49akZ24RqflpTZtwmz4+DPX3k7/Sz/UQCQ=;
 b=BjoEjkIXuLVV1vTsRDu5L5fLhQ3Q/UqSeVxQk9xM74XkfZ3XVYwkzCAChtf0AwADIzTrws7RRtTOJMCljd7OjttAAB40n9VocuDeUpjbg26OZ2f0Ajottm148uK4WwRYS6O1k0f54fAOQgWuNi9d8NFf5jsu4KTjvYGJERlPr4PpozjspUWX663jOubA5LB4cTEPuWMG1wJbw2UUVSAZaBUuxuI+uXIgfnKDWpJ4FVMjYS3RWDQ5JyPiFbFs2nXzB4wxDBML+4yjftc3Xfis22l6m9K3oTti3Aeae78WAP0RzpUM2tICj0LE26x/24pbywmbQv4ZqEW8icyyOVHWJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS4PPFA424F92C2.namprd11.prod.outlook.com (2603:10b6:f:fc02::41) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Thu, 23 Apr
 2026 20:42:54 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 20:42:54 +0000
Date: Thu, 23 Apr 2026 13:42:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
CC: Jani Nikula <jani.nikula@intel.com>, Juha-Pekka Heikkila
 <juhapekka.heikkila@gmail.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: enable ccs modifiers on dg2
Message-ID: <20260423204250.GF2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260423101739.2772745-1-juhapekka.heikkila@gmail.com>
 <efeef92c230d81764e1fada17c2a81012548cead@intel.com>
 <fc60cf57-0662-4c40-8d70-190910d780ad@igalia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fc60cf57-0662-4c40-8d70-190910d780ad@igalia.com>
X-ClientProxiedBy: SJ0PR03CA0208.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS4PPFA424F92C2:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c900eab-d7b5-47e6-8a7a-08dea178e4b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: V7d/kRwypVPtxGfpwhL9Su2RaZUa6OcbBlQqOY+5zdN89dnX1vV7lUeHrIoOvTLATAhIpIvuObm71PwXtPz2HL8+zClXOwPuGbODUsmhlIwfOvWbnfOheh/HEnkmlqrJ2AkMCTmCPmPzbEs2+482sDLzQUNkBWgXURjoLjkrAXKZ365Qj6/AqCVJz1VPOmpkk6N5Szu/z97p9+hZA+P0n6FXZDmMRNl4MXU6AgXLvbGn2dp5sfj+jmEuD1oywLP7bLwjbEtNftbTKodZUuDsF4WAG343fl055x7NU5ik6eXr/qh+tXKvZw91VLbl2S/bX1wHmBXnhO6z5kSMqeIpj0TV6nY7oKf/xgLMfVMEv8apxFct0wWfIDONE9ClGdO5gi35ittG7yIdwdlFNslQVJRUSzJTv9T7viCYcm3gjzUn0KvlnXiTk+jjg0IcV10zl5bT95YS8cAVejFzcTfY6BW7n4kCmGAm7bwXEBz2stQN9946Heti4XqNs8zFXvSXJry/YwB4Z417qCUV7C6GlBHCz87t6F6N6Bsy0pKcDt0qGFL3wyf41A8/7bC9VZ+8KEhXYnGTpg2yCHOgh/iL8xdfpLz6YIrH4kDvYI8ZO4wpwJZnozRsIVr00OjTuQ1sWlS5dlMqqb2taQJgWsZA3HusA2Zo+1eBds3JhXjuerUUPc1932XB9D1ssQ/L/m2nJA1PLKXxn8mk1ppEhlXmzjFMJ8SPpjVzLt6mKEiD6zE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HMUH6H0Bz2TVYk9iQEHe0s96lJNXmWuQIu0G86DdX0Md9LFSgGJCYp6lRVvu?=
 =?us-ascii?Q?Y5aBE96chOLfzJD50wZG/Euf368SFFEgXrL086x1brKcuPyqH/WOmCcXEiMl?=
 =?us-ascii?Q?XqOnAmx5hF06Uo65XeJBSVxXydQO70cdUaDzzUTAoSsMgbGxV8kLttbX2sZU?=
 =?us-ascii?Q?JmVaAjniMhUPH+YCzj/XPuTyAHa+f+c8AHAqqvmMXZ7LYw4W9Nk6N4HLolyZ?=
 =?us-ascii?Q?l+bT6sK4mRpBn+3ZKZH7Yzuf0sLbA8x0joGTaBQWpCIaHO+sCK7xhN0rBzIr?=
 =?us-ascii?Q?TdFdrbSD/W1l6igEiBV7ENeK3Pzo3j9kR2tfvhTV2qG5x1gMoiob9SpRcYrN?=
 =?us-ascii?Q?hNrmpxhlhOAionadmZEA750mH+WKj0YTTHO7DJ4KJaoxVcHbQzenyKSwaaPf?=
 =?us-ascii?Q?KvuxgcSCCyQ+qmUNNl/NAIj802sz22orZnfYLCUopkVD0ZhcoctNsRA8v8t/?=
 =?us-ascii?Q?tq7l1twymEIC349XprWYrLt3dbtNYD6x8SWZcXn1oGbVCsWWFBVB7BKfLs/p?=
 =?us-ascii?Q?Yb6tvH46jVWHQHM90EYrOoAsvoJXV+LzLOSec1tzNOZhSs/IqooJONDdIhuk?=
 =?us-ascii?Q?/0n+EnKuWXgMcBB7Zh99TCBNcGZMaqSWgmlPtT1QfguxAueslZHIL8wdTc6V?=
 =?us-ascii?Q?JSQg4gk4RsUGp817GJKy0UGa49cLfAfbcll+0d8gELexMahlr8T1gLGDgPid?=
 =?us-ascii?Q?cB2Q8ekSzKB7pU5gsFNdr75ynfRFzRtXllo4NA1rl5TfXfFGL6ZUnZuE/ctb?=
 =?us-ascii?Q?Okp9L3tSm5aei5E8soImtwOBpj2wzDFlU6joBSeK5KvzqrO0UaHx77g2Fdhi?=
 =?us-ascii?Q?p2kx7Tk/nstLu7dBtSbmxMCcvHDMgM4EeH2eyutV3zRpQdM6xYX8wkihzdNO?=
 =?us-ascii?Q?e1wKNVVUOtI9jYov6OR7kX6gwjNQ5cqhxSkFhzB2hxR2LVWNNUx8VGQnxPP/?=
 =?us-ascii?Q?Phxkv4xPUrsPI9eYzH3f5/KyTc93T/oTvMeWvS33SfNcYkWDmHd7KRGibh9m?=
 =?us-ascii?Q?3M1rMH4Way1Bm0zOZV8L0P27DmFUi0spU7aSueiMixTptnKkThZZUfwPpqm/?=
 =?us-ascii?Q?Sn/p11Yqvdws/J4qs83DCtUBfadH7GzOM0htc6GzwAy7/gc7tX/XOdLTXd8k?=
 =?us-ascii?Q?g3T/N5w08M4UVmc8CKboxk35bm+eNmfmfzwokEN6Kok41ghgQcYSr6zVLkd9?=
 =?us-ascii?Q?O+FFR8lnuYmJEKFhHvom2Glw9ulBfUrHaXat83ipQpbs3kMWJmDNNkbasQwK?=
 =?us-ascii?Q?Bse6FqR6E35ChPexGd/Zc3k0+Z6bkYw+AF9uho5DeCbuu+vSsknZU0382UHs?=
 =?us-ascii?Q?46CTL0X81Q8NPYStgaV7+eYc107fSPW4adCqe4DBQ5N4exBLmfgBis4pCLiA?=
 =?us-ascii?Q?G/aTUw6KZ0EJbl2K8FFTqXrTjCSRS11gRUkHG4NpNA5RWHuBHkef7/gkaPJM?=
 =?us-ascii?Q?Axh8SCSD9k8TN02DJ+7keHVssIPEcEb+lhWVv+HJDts+CovXkmdcjmBMVgPe?=
 =?us-ascii?Q?EHFpiJgKfG/fTzr9+sH5FZgxjxFpDpYAcNplJQwzNqZwbicl92BnbwzSOb8w?=
 =?us-ascii?Q?BlReZXjdwQikj8NsJdr6w1lWZVM/SbHaYTtluVGdMws8RGQnTLvZulm+PuKV?=
 =?us-ascii?Q?zbQ323cD34UlCra1AWbkNQBSY8iAiKZ+qZvyeuvJLJCI/20MPqr9E8eGDy3l?=
 =?us-ascii?Q?gt8yhjo88l6Ivr4//jKwpziXYuSVxtHKmwdTx9l6E9IxLTR0OLk+M6BVs5tA?=
 =?us-ascii?Q?xlc7OEEi+bJbM3IwiRohbK3SzuflGhs=3D?=
X-Exchange-RoutingPolicyChecked: EO93s1YMuMjOONHpdVt4lS5d/CzHjSFHLc2EKR1IHtho+HIryMRUsz+x6JBbSC8d8CZ2knVWWTlDIh2ewfJKPIQ5DuqbMT/JOlYpSrk16Ca/mfpUoHMCFsVeP8gb+Eh+/S5oWTV56W8TyJAmvizHthSs6u3YGP9sr1tlqc8/SCpuNgNOcSntZjxjp+3tmWCp2OHJbNj29QNsrIXNk7T7hkALzAeJXYohvdJAeB2efeIIX+X66Ng+MoSKEZLcWPDyvvSQ2VQ4oIE0mjimApIiij9O/HWKblcAzSvrzPWi0blkjzdBgvi7EkR8mEDdL6hQzL7dvdDVT4iWk0LLRhiuVg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c900eab-d7b5-47e6-8a7a-08dea178e4b7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 20:42:54.0584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1t/E3Pwlp4uo7ykwcoFou9ukX+bOAFvNq+X6HLzU6A5Xe8bjx20oyNKAq6c3OnNwCzB8YTD6HztLmr4FJTefrQdQpY3Zc6ZmgogPQtNRxs4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFA424F92C2
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DA10645756F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23, 2026 at 12:15:14PM +0100, Tvrtko Ursulin wrote:
> 
> On 23/04/2026 11:28, Jani Nikula wrote:
> > On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> > > Since Xe driver aux ccs enablement dg2 ccs modifiers have been
> > > disabled on both Xe and i915 drivers. Here allow dg2 to use
> > > ccs again for framebuffers.
> > > 
> > > Fixes: 6a99e91 ("drm/i915/display: Detect AuxCCS support via display parent interface")
> > > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > > ---
> > >   drivers/gpu/drm/i915/i915_driver.c | 5 ++++-
> > >   1 file changed, 4 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index d31819758f3d..7a73461d398a 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -54,9 +54,11 @@
> > >   #include "display/intel_bw.h"
> > >   #include "display/intel_cdclk.h"
> > >   #include "display/intel_crtc.h"
> > > +#include "display/intel_display_core.h"
> > >   #include "display/intel_display_device.h"
> > >   #include "display/intel_display_driver.h"
> > >   #include "display/intel_display_power.h"
> > > +#include "display/intel_display_types.h"
> > >   #include "display/intel_dmc.h"
> > >   #include "display/intel_dp.h"
> > >   #include "display/intel_dpt.h"
> > > @@ -749,8 +751,9 @@ static void fence_priority_display(struct dma_fence *fence)
> > >   static bool has_auxccs(struct drm_device *drm)
> > >   {
> > >   	struct drm_i915_private *i915 = to_i915(drm);
> > > +	struct intel_display *display = i915->display;
> > > -	return IS_GRAPHICS_VER(i915, 9, 12) ||
> > > +	return IS_DISPLAY_VER(display, 9, 12) ||
> > 
> > Sorry, can't do this in i915 core.
> 
> Was DG2 never Gen12? I totally forgot.. my bad.. Adding IS_DG2 to the checks
> below should work, no?

"Gen" isn't really a thing anymore --- graphics, media, and display all
have completely independent numbers now (and sometimes fractional
numbers that make a big difference).  For example, MTL/ARL platforms
have graphics version 12.7x, media version 13.00, and display version
14.00.

Internally we've been told that we're not allowed to use the "GenXX"
terminology anymore from DG2 onward because it causes confusion/mistakes
like this.  For the old platforms that were already upstream using "gen"
terminology, it's okay to leave them as is since those were the old
platforms where there was a single platform-wide version (with just a
couple oddball exceptions like GLK), but going forward we're supposed to
be strictly referring to "graphics version," "media version," or
"display version" when talking about them in code/comments/commit
messages to avoid any ambiguity.  That also means that the places where
you see the term "gen12" used now, it's probably referring to just the
old Xe_LP platforms (TGL/RKL/DG1/ADL-S) that were grandfathered in to
that term and have version 12's across the board.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> > 
> > BR,
> > Jani.
> > 
> > >   	       IS_ALDERLAKE_P(i915) ||
> > >   	       IS_METEORLAKE(i915);
> > >   }
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
