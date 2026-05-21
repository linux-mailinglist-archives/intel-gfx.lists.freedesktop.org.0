Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAuUO49rD2qOLAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 22:31:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B20E5ABC83
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 22:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C29A310E650;
	Thu, 21 May 2026 20:31:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lrxaY7Uo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2C810E650;
 Thu, 21 May 2026 20:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779395468; x=1810931468;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ff8lh/9CjOSmeqk/W7WP/Jn5C/pKx29ednT3GncxYho=;
 b=lrxaY7Uoa3lt8x+dbxrz36x6QQZz4Z9OXlnc084SY5gOeJuSPCQrXvMQ
 OTcR5lnpqVO38VETlKXPuVuoLhVEAfigUY24TzCwkGk7mMTqA4KE1iHvN
 pIVMTIuKTC93ptDyP7OT2e+fDF103R6FfFIShil5ytnXCUA221zWbN01W
 KNhY7Py/ljAOfJNYTW9WAV5Rl6qLvvJXjA5bi3THAejM8He/bc8mV+3xa
 qZ4cq1fb2q/Xnf4pNpcm1eJuBh+DCGA2Dq7Aa+8MJVav1Chk69d4wdQKt
 PiEkhhTb0asJUPvaHm8YnXFYAGUbB+WzlyG3fF8+IBBpLgO2pSuH/0dLr Q==;
X-CSE-ConnectionGUID: NobThB+5QMia4bpis1kA5A==
X-CSE-MsgGUID: GHOvxPqeTEOPARLEjFUfPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="97897286"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="97897286"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 13:30:10 -0700
X-CSE-ConnectionGUID: T/2J54IXR/GWs5TbUlzxgg==
X-CSE-MsgGUID: vxUe02epRqe1VD1h/MgnnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245691295"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 13:30:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 13:30:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 13:30:08 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 13:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jlhk+ELYGN9oJuoj4ZCQCTqMBICxt/WVH49oJu/csFhzvZBYmpcBTRUYkW7RcxlodHnihhLPOGoeYzJ6/8MKfWHs+RuqVYpwkPXfjP+BodxyWYuh5RwskC/i1nG+PNCrhBnQ/VTX2PDoJPl/IfgftH5rU/JgnamSdZzEHaIPiLdOC0c7L/ZehO7oRIZvtXoAqraVDrO4AAbFUXSM26nLsiKORyDlOR7WTdluURbiP4p4KLOEeVNQ5PTz8G+/lzsehQ2CCQEe58JCwAcZHsPBwrjrMcxDYMjkB3x/m/yOKKRLZmG5nTSiq3j6D1E7A31AR1Im8+zFehPLO1YKRKI9Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tT3Fmb0LsBJFTVUHR1gGxgZVU81vdnW6mY4hzo6f7jo=;
 b=Y+UwdzIGB9VaacJa+QZkJNkH2TvDlNCiSeHItR2/qSZCKhwzhl3+QHd1FuRatn2lvk1sgP0R713xw8NB0nTdTNVt4HXQigkq/Z5vyk2nm0qGFY9MOxlvU7vytU5oY9kGbDRVoZHsD4xYHeAmD3N+AIosqkGyObBKeWLQbRl9wXlIiXbL3Id3aj3yhcL8NblC4HU3D27l97fOFgQ+yJQxu9J3e+5ktgnV2hP5x/9JrtEnAy36478w/1WdAvhZQPsy7mB6gyScVGH2p+jCFhBWJ3FAoV2WCxh0jC1KZ52kIaeKYDUbHTqtC9U3hFMXwScIWrLN/Qu9mif5GDEF+wu7zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DS4PPFEE549A404.namprd11.prod.outlook.com (2603:10b6:f:fc02::60)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 20:30:05 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0048.016; Thu, 21 May 2026
 20:30:05 +0000
Date: Thu, 21 May 2026 16:29:59 -0400
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
Message-ID: <ag9rR5VwCdkA0lzI@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: SJ0PR03CA0288.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::23) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DS4PPFEE549A404:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a33d400-900e-427e-7f09-08deb777bdfd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|11063799006|6133799003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: W/OwVodO7oMJupiVKfu1fxe0Obz2e5/8GwPPN/DRZ73GdQRX6Cq5OFEoCeM69Oj+2qTsrGKZDUA7xtrJA2W/65bOEGJf4BZ4acH3brgH07xChMbcGr9kjpuC/cSWmHlH98hJtUPI62Co7IBr+FffEGHReAhB8SIuxPs5SfVxbAn2LqnHiK7aibk9W/IK+K6IQsJlSCiC5WVviIhHn2GEghO5DMYg6MdHK8DOPCmBb629UUQsFtCXOPvKrkQLY5nxvnavfUF4z2lJ3EanfPhgiGnZvi6gWaX2O4vAMckO57fl4p1VelQp80MQ6HmHWE3MDhRBZ+h4zQIv89nsYYDzHtmsuwJKSPVHhII9v1p+sV4Jjte4eRNKhzL2bL32e9BcrNcEmSF5ahDBs+oE3YoFJdGdcIdpcu5tv+r+vw1jc78jbLfdlG6ZLpjIW4dtEwNhz39Nc/FqrXZ3Ch7diKPXXQLJZnbaAj7xpA8Ms6KicV2V63OjVvXYNDCRwHA2rGpzEGtAFXZY39x4TNAQBj1pPtCNioqYed3TC3SaP5dpKZWl8x5JZgE1XpvZrUo8kwABP7k3VssnijfkEZinjR3V6jI3ByE4iRzVURoWz7adb1jbgrnlQNVAIG+3d59LiEiJHCjZf/ar7f0BLjqK3EiuRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(11063799006)(6133799003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?41fu829odYPlH3m8K958DobL9+gd2JJ3+0B9bFFUEZuW3hVeZ6rSGp5hHjrl?=
 =?us-ascii?Q?x7V9lACU0YH7vp/+7zztSSnfPPevMg5ioPbWQCrTzzzG48UShD5v+p30537/?=
 =?us-ascii?Q?tlEN5shPHinzBHNrPuLB44hSpyH0vJbb5X41pGzkzG5E8gPaYhOQceUBCeZy?=
 =?us-ascii?Q?azY8LvzEyNEaFiBPe0G20ybUVqZkCcP9fYCSqc1OpYBzlzNYMzRKfPXYQIJw?=
 =?us-ascii?Q?GgSL86Wo76WYVgsnCSOt71yx/+DttNkZaF/0W0B/cnfZNfkmVZ2fIRnSR/9c?=
 =?us-ascii?Q?pNSKW1B+pz9khKZUvrGgFm+scuUtv6f1wtk8nTQIvXf1r78xkJERD6uiEhU6?=
 =?us-ascii?Q?ykfMBXFLjIuOY1Kk/b0l2bZKjrg2d7sismn03amZAr27D0Qgv2NfYVuiRPi2?=
 =?us-ascii?Q?P9QKduAlPXaFkwsugWWUYAlxyGH/4V/PHx18kFz9/pNpEDIyMd9PMJbagBde?=
 =?us-ascii?Q?2t2fzp8Cmh3icaJcaDpHVVuXWLCEqMdaMTM9e+JYcZwjVbLPnIUwg+ZhFWTn?=
 =?us-ascii?Q?qGV63rWwupXu7Ak4tBRDdn9trECeoEsssAHCEPa5z+rklUO5ooU9SLRJLeve?=
 =?us-ascii?Q?FCBK9bHXIroOGIGMTwF4g6oxX6Vp8mM+0sbsk+sMaoC1Hu2tBW3StpylPPal?=
 =?us-ascii?Q?6lGSgwToVQUrADcQ6nVWbuAR4IXGIY4MTtp637i0+vl4+TiJgo0mfBgB854H?=
 =?us-ascii?Q?yGtm8Uo7LfEUkR1qND+Nc945PUNk4FUgT7Za/FtAov3ic9b47F23fIH7aMfU?=
 =?us-ascii?Q?s6WTgPF60IDsub5SxZ1RauaTolXe6pB0/TOuAdIqFN9yUUsNgI/Znl+8w3JT?=
 =?us-ascii?Q?ev0CMw/jwV/Lgv+1BTeM55CT9V7e3rTnUzZ9i7FAqa9o5I0L8tLB/XDcnXIO?=
 =?us-ascii?Q?2wRppTZTrCksAyAcfD67GFJlcmZF9tfwgYwSJ64WsrH4KeSauDdAbxyjToqw?=
 =?us-ascii?Q?QxDblhEPX2XNYl52mITJT2XueVR3tXgWtl8MierZxWEybp+urZqPPaK5px1c?=
 =?us-ascii?Q?auvTAHjR2z6mtk6IYJVm6UdLsnQ0c5clYZyBJ2iUHRxrruC7VYN7446adGPa?=
 =?us-ascii?Q?puHlD8IMygiQmsEeRsUGfsGsrK+sbgS+aoksv69VFEfeBDzAkM/uhrNSNIaj?=
 =?us-ascii?Q?Jm+fIz9F85+W1bvb8B99sCp37KczHUYRPGTPzkyHFpzL9lIT/gXi4GMZ2rVr?=
 =?us-ascii?Q?ZD7lXIgo3IY3dB/akjqqwjSZF/QT4p7ruJ/xRhZ19MC9avLVrxY5jedc73EF?=
 =?us-ascii?Q?xu4J1ymFEOtLjk9RpuN01Xlunz/8K0DSlFdkXNcfiAR/A0w4u0nArV3I0PtS?=
 =?us-ascii?Q?rSgEccE9dsyVPhInlvO0sAJK7G+XAJLAf89WxOt0ie8AndwwBET/cPjkUrHP?=
 =?us-ascii?Q?n0nz9kJVCFiwsO56KInpEiJCJtAsPzv8Jbd4ZBnFsyvlGinnTC5UvJepxJiA?=
 =?us-ascii?Q?Jil+2wnkWsQCTq1V+iKrwtNK/DQ9MvDtmYHIzsWEbWIyoCp/SbuxMGziByrY?=
 =?us-ascii?Q?QTMucIBFVtKycdOS37ymDKp2Ch83GZ/ZQmxjPrml6ak5ACIqJUAPnVFWwPaT?=
 =?us-ascii?Q?pObXLk4DpQIaBUzfjUBseq7oPGoMhFHHXpWiwUAXlw1HFtJeAfOSEAgoy1fj?=
 =?us-ascii?Q?/7qJPC1gJB6Vu49B+hw/qyD2iIV5O7yskTGd/F+9YRebecEY7oAxG5BvRxT7?=
 =?us-ascii?Q?iR4p+AY4rNZEyEypgsawY1+9kJkA9JZjsC8f1rHsHyZ30BAcjSQpkMgUY5kM?=
 =?us-ascii?Q?Tx1ElQUM8Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: N/P7dZwVuzqrO5M2N5E1otsjJa03PDHA8F1fwgjxeljEUl91xOwAmdHRsJCdqalw48LiznxL6AOdtdR1AVGeiSw0i8bHXaJ2hKCkSt9iDPkASJEvJ0kvf8q2jnV72QJsdOdhPffT7l9qSOkT/ngfIm8XfVv+U1Vzi3UCxU7a5unTNJEOPQmyjIYrsp2/njolPFsunciSOm+lG61lcjUcPcKLtcNwtc3RJNmso2Ohk/VcwNS92H4AFS5Bj3gU7ey7KwotpJPu+RyYAgrdTA1gI9b2DK+XdpB2EE6FTxj8x/baJDKhGC7WCnvtAoe+N62Bd72ExT9hSxIWbHw3yquSqw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a33d400-900e-427e-7f09-08deb777bdfd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 20:30:05.1682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YH7Do35cEbTnL9oq501nmm2TN6O4HFIqCHswo4zpiJ08qHGmq1IccuPpZlFIj4VzkTiSqFSmG7Jlg5RA1zDIOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFEE549A404
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
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
X-Rspamd-Queue-Id: 5B20E5ABC83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Here goes our drm-xe-fixes for this round.

Thanks,
Rodrigo.

drm-xe-fixes-2026-05-21:
- SRIOV related fixes (Wajdeczko, Mohanram)
- Fix leak and double-free (Lin)
- Multi-cast register fixes (Gustavo)
- Multi-queue fix (Niranjana)
The following changes since commit 5200f5f493f79f14bbdc349e402a40dfb32f23c8:

  Linux 7.1-rc4 (2026-05-17 13:59:58 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-05-21

for you to fetch changes up to 4d25342543c01310fc4e0cba7cb17c775e2421e2:

  drm/xe/oa: Fix exec_queue leak on width check in stream open (2026-05-21 09:56:49 -0400)

----------------------------------------------------------------
- SRIOV related fixes (Wajdeczko, Mohanram)
- Fix leak and double-free (Lin)
- Multi-cast register fixes (Gustavo)
- Multi-queue fix (Niranjana)

----------------------------------------------------------------
Gustavo Sousa (3):
      drm/xe: Define CACHE_MODE_1 as MCR register
      drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN1
      drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN4

Michal Wajdeczko (2):
      drm/xe/memirq: Update interrupt handler logic
      drm/xe/vf: Fix signature of print functions

Mohanram Meenakshisundaram (1):
      drm/xe/pf: Fix CFI failure in debugfs access

Niranjana Vishwanathapura (1):
      drm/xe/multi_queue: Fix secondary queue error case

Shuicheng Lin (2):
      drm/xe/gsc: Fix double-free of managed BO in error path
      drm/xe/oa: Fix exec_queue leak on width check in stream open

 drivers/gpu/drm/xe/regs/xe_gt_regs.h        |  4 +++-
 drivers/gpu/drm/xe/xe_gsc.c                 |  5 +----
 drivers/gpu/drm/xe/xe_gt_sriov_pf_monitor.c |  6 +++++-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_monitor.h |  2 +-
 drivers/gpu/drm/xe/xe_gt_sriov_vf.c         | 24 ++++++++++++++++++------
 drivers/gpu/drm/xe/xe_gt_sriov_vf.h         |  6 +++---
 drivers/gpu/drm/xe/xe_guc_submit.c          | 16 ++++++++--------
 drivers/gpu/drm/xe/xe_memirq.c              | 26 ++++++++++++++++++++++----
 drivers/gpu/drm/xe/xe_oa.c                  |  6 ++++--
 drivers/gpu/drm/xe/xe_tuning.c              |  2 +-
 drivers/gpu/drm/xe/xe_wa.c                  |  6 +++---
 11 files changed, 69 insertions(+), 34 deletions(-)
