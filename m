Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AAQJnb6pmk7bgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 16:12:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BAD1F229C
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 16:12:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471CD10E82B;
	Tue,  3 Mar 2026 15:12:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6Bqxg3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6B110E829;
 Tue,  3 Mar 2026 15:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772550769; x=1804086769;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QO5BVRQELeobX9ADgPJQircUIOUth61FcNUvV7pnG6I=;
 b=M6Bqxg3DgmWnPs+eaCYmzI21CJ0dPse+nw8eFMHj6MLZrl+hKXvMTXGP
 XLLvXdkxTxTTO6H70Uv/t0TYYZHcqD0NqEQtkpQJCGWP3TS1cZgew4A+O
 qD1I4rN2d8SUvdxCKIcKwnShhKrlmov8cq69gPbwsl/6BE1u7abSgBCWQ
 wwqeZjRPthj6eYh8bbY5ObfNA/1qDal1rQXlItnVe54GS1Ff+I7/C3lh7
 zPz6S8bLntTb7OnN50A40FsBNhHhqjiY3vP2WqVCQfTHQBp2qx+HDbqfG
 0LoVueIbJuY+kQgRQRsPZM67zekxrcYnM/1PmFooLzd86cSy7+0d5/lF6 A==;
X-CSE-ConnectionGUID: dnILjv39Tf+GFF/UwROLLg==
X-CSE-MsgGUID: cFLbVjhCTjOYXyOHTD46BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73710920"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="73710920"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 07:12:48 -0800
X-CSE-ConnectionGUID: W5+Rcb6KQGi/13PHh3/unw==
X-CSE-MsgGUID: vdpEpTnaTNC79ComiGr8Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="244863526"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 07:12:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 07:12:47 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 07:12:47 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 07:12:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mYDX5lf/bFvtmOLosYTkLQCmrEDeFwcLUDiH2krSxex4n3mb5tdIs5dT5NgL+3o6aHS1EY3mMLvsftu3wPIt83zE/bktuV3B7LXuAVF2LyE7yTQY2VXJwyj8naucQSn70zy8YBPWHvLJeg87abKxsELeEANdGGsgbvAFrvCfgvVnTmoo0akWK1zTXkdT2Fm2anho7r8A81uwDczp4iPFM/lSK79t3I7kRTnC2bagN3ujpJ4ZQlTn1/z2+A9WBxcstczDfdx82lAFR0OTjRuhVcJKb1NefI6GThvqjalz/+1+lFw3CzyZNg6pU/Dvbm5kwLCUWmkNBELVADWM5A2ANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i16aiYMQfs1g8jABBQzUJaW1RUKg9WYVIMF5fp7FTPQ=;
 b=lGHJyIAOWq1NB3/ku4GgHInmdGa9t57BLjfW5MvxtB9WKygQsKANFCeIdrNU7VSbVyp+6rrequ8nwQE4s6ActBU8Ogfa1Vp3glSwr3h1zefoZ+gTcotT+fkEls8gN7Sr/XE0+Ub9ypLb1r/ltnb0o/m213lNCGiEbM3UDMcNxur0bW7bToSBa03VxE4UItQimv5QNv2y3iwFRDzR1Ri8Qx0he/FBblWIGvfzhxeBSe5o/qRPx1IxnzVdzSZ/k4sx3syXkhaR5cz1H0MwpPhBDcunsxc7ohejBZQscMJgcNJQAlC6LeO0EFNC9qYxBCX4U2/jlu4xra6Qy8F/4GDLQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA1PR11MB7111.namprd11.prod.outlook.com (2603:10b6:806:2b5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 15:12:41 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9654.020; Tue, 3 Mar 2026
 15:12:41 +0000
Date: Tue, 3 Mar 2026 10:12:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/8] drm/{i915,xe}: refactor register helpers
Message-ID: <aab6Y_u1dZjWrwWj@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0075.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::20) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA1PR11MB7111:EE_
X-MS-Office365-Filtering-Correlation-Id: 5da37016-86de-4181-c019-08de79375030
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: VIvMrFZPBJxoRVgMtdNxW0CROArrDPgn3wg06u+UQiuciKVJ84ksPzXwbsImotPLYyKxcO0no3J1iFvLm15epNo+7sdpzDdo4mS/vqiNKAlvxrkPj8Fd5hZ1EOUOZ2A00ycLxmbWONTJ8WoufOwdCD26alFGkuezfZCvRoMahMRT5yh3khliCeluzyXHWe9R+PHXrh+tL6XQw4Z5DyS8Mv/aZwIgYKecyOBSE97qoVCrD7TVmhwwsmmCpBl9ttHo1dypnkNuhU6ALpcCxHyMNLOi5isEV7eS1d1eCqnwJTCU0kIoFlNA/DVaEMalDnRMWTfQeN9f18JOiX/1ewtIa0SKqOmb7P35uwdFbFcvqJeCN76oDWqElRL5V179Jso4cRiqlBAfvjFLtJzWij8TVILFDDrvDbsMMBeol3j6XTGVf/WaDus5wq2E+HHHrUURkWp34xn16qoQehAJANCAQ3IHHx6msgrwp/W3gL/Wu5YvIvmMXy0LZteex0BhfNK8vfoZqu4lrKzG5cstbhYcC4TSxHOn4i8MtGV5WrsHm0rflV4R2JhrEuby9Q2+lkvp3xyDYzxmLnobfTZCO3GegXpUkv9/aYwOMCpSM5EpY/+3epyDuLsKAelbLjblKnhtDqWLUM7dO5d+Z70fAdhFnTSO8JsB6tcDBFJxpSXQeVysQKrULGD6htd31JzyBArOWMBjiOtNToY24tjM1s7yBGVKhON07cN2cmOe568q4zc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6HLQ6eNOJYEnBxAnxKMUdm2TmRY4ITuyOGJiw/A1Xgg/nsZa1kuoDJdJqeX9?=
 =?us-ascii?Q?jz29gPSpZoUNFcw4BfYt77xZ1x2JtnYjozv9+sy0Pyx/0scQWeBKClLZGQBV?=
 =?us-ascii?Q?uaCDj3+lf+YKy/x+aeukd7b/lHcCb3/+qHk9q+8VfaO+MMioPKcaL+VDR2yg?=
 =?us-ascii?Q?ZqK5kpFb8dsjm1UW8hkFrUHXA8ZVlYgSNzVdSxJoIk6puu3YlPP7lMvWa6u8?=
 =?us-ascii?Q?OQrEWC8fngWLAsuZS5KwYl4EQbibONMMbLCo+w3iVk/Xfjhk7bTPdaYHSByq?=
 =?us-ascii?Q?3XuiMo6hD+rVQ06OPoW+t6FIO1Zj/oyHJZGBr3ZMl6jDvk4U3qirxUXEf1uS?=
 =?us-ascii?Q?v+QCiHS3JUTVo0v00lDT8G0wZm+Mb0M68pdBJFF2ZYMp9howOMbldqCAqonP?=
 =?us-ascii?Q?+z6DSG5ACV6ShABmuWOJ64B1STqHpOWBQIYHsdv9ijst3j87VF0v9drXQazr?=
 =?us-ascii?Q?I1CkeSN3QifmzSDN+J/Hh3LIJTDRKOYumqWhFoiu+i9742BLUqKY9WQYgijY?=
 =?us-ascii?Q?NkxcIpQBWQ7eJtmtu5c24rFjp9uzyVsmZ1yYIF0TZXfCI80WeBEGOJcktrzr?=
 =?us-ascii?Q?F6Bc/n96uCMc/6+Wovgq9Ug74w8oIkssvGvo3+t+UwbD6aawVQEGrsAycAPx?=
 =?us-ascii?Q?8zFuy7LyI0Zy6EV7lKOaUQPvytHdItTpESym73NInB0Nvsw/h6gfUtgqwAZh?=
 =?us-ascii?Q?57dUgmDaQyUcSBza9FLdy0kM1unAMzSmfc92VTA1rhpxoA9gXhLhpgzA3jnO?=
 =?us-ascii?Q?9Zl+G8okFlcI8vaZ9lIg485nqnMp7KrCCV4bEjYmgnUsk2b/CDn9JU+XK88S?=
 =?us-ascii?Q?xkmNTvJauvu0QhvJEL402YbYg5u//VN4mh3ah5kmjXXU3E63FZA4bYqE4dJa?=
 =?us-ascii?Q?xHkT3DPp4cRp1U+jd8bsH6DVybsGOrMMPOjWwOGfKJmwK01ds9OyRRJdMqPU?=
 =?us-ascii?Q?KcwjKRqbQ5DpOnLKiqCfNUxc3zDvF0jKqaljsliTyMjAEse+fCq1Fb8EVkiK?=
 =?us-ascii?Q?xYQqTf+xLRkfVQok2X5Msbo5blue0xFgrQUoKeMnnE6qJClUrtC5fIwLLPac?=
 =?us-ascii?Q?hxqMQIij0qaccKCdJG/4ubSv8JtfOIZsagLg5P/6SUFPpZ28NtSV0eYIp/Md?=
 =?us-ascii?Q?AwYRlvU+Vob+8IGswC7saq1qE8BugII6rMQm/Ilok99l1n1Zusy7mxMq7QAK?=
 =?us-ascii?Q?FA3yP3NCdNjqz3MO9FAs7PtEPE2qISv04AdqzpnrmEUu4iWiN2j09m29l5gl?=
 =?us-ascii?Q?fYzCNdEq3Zwr2AGNT4aV9XSvCUAVhrFu+nHrWv5WgEI3cqH2hzh4/j4Bgl8d?=
 =?us-ascii?Q?hxaPHG3IPudCgrLnuQWc3F73YGWeC1+jRzHVKkMLEdpRoDLapAfKuUr8lLA/?=
 =?us-ascii?Q?AzS3pCXlagAjPbtRZfEDXp7bvU4JKHp+MGeZC27r3pWg40U9oxy94AmlWIng?=
 =?us-ascii?Q?glwWYYie4MO5T3+wsaqWwckOJZva2E9rtBSzcTrpi6WfJPJhw8SYuXBHGzNB?=
 =?us-ascii?Q?EcFBrRD8PT4F2ypZ2JIiF7MRyyjRDKyNC4laoKQqMLG00Np6a4AmaDr1uCtG?=
 =?us-ascii?Q?Ijt0GnMa0CIm46/zp5mDFGa1J+zN9YiuWOXhOI8FS+YIcyDyqcDH+An62UMO?=
 =?us-ascii?Q?Vo+BWjrS0Zq6yuGudGuQ4ZKTd08lNmauvQAHBLosxum62kzSy+WsYD01cTI6?=
 =?us-ascii?Q?grwtD0II2BW44EFFFLJJB+XBRc+BSMGfCkBda5zJB7xmyl93w66b0ED0pyK2?=
 =?us-ascii?Q?9tqgLsh0FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da37016-86de-4181-c019-08de79375030
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 15:12:41.1241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qq46UFEVYdVJkJ1xtPXiA0ipAk3ovQDCLB/Nr1tZR5Ut1xIqcO72FTlwIS9k/EQrF0xJKZr7rdhBuntUccz4bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7111
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
X-Rspamd-Queue-Id: E5BAD1F229C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 07:57:02PM +0200, Jani Nikula wrote:
> I realized xe_reg_defs.h subtly pulls in i915_reg_defs.h from i915 via
> the compat headers, which is ugly and wrong to say the least, and then
> xe uses the macros all over the place.

I also hadn't realized we had this mess o.O

> 
> Clean this up by creating two shared headers under include/drm/intel,
> with some related cleanups on top.

Nice idea on the common header and nice clean up.

Either way is good but probably drm-intel-next is easier:

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> 
> Jani Nikula (8):
>   drm/i915/reg: make masked field helpers constexpr
>   drm/i915/lrc: switch to _MASKED_BIT_ENABLE() and _MASKED_BIT_DISABLE()
>   drm/{i915,xe}/reg: rename masked field helpers REG_MASKED_FIELD*()
>   drm/i915/perf: prefer REG_MASKED_FIELD_ENABLE() and
>     REG_MASKED_FIELD_DISABLE()
>   drm/xe/oa: prefer REG_MASKED_FIELD_ENABLE() and
>     REG_MASKED_FIELD_DISABLE()
>   drm/intel: add reg_bits.h for the various register content helpers
>   drm/intel: add pick.h for the various "picker" helpers
>   drm/i915/gt: prefer _PICK_EVEN() over _PICK()
> 
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   8 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |   4 +-
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 +-
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  10 +-
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   2 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   6 +-
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   8 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  21 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  22 +--
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   4 +-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  19 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  24 +--
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   4 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   4 +-
>  drivers/gpu/drm/i915/gvt/handlers.c           |  10 +-
>  drivers/gpu/drm/i915/gvt/mmio_context.c       |   2 +-
>  drivers/gpu/drm/i915/gvt/reg.h                |   4 +-
>  drivers/gpu/drm/i915/i915_perf.c              |  34 ++--
>  drivers/gpu/drm/i915/i915_reg_defs.h          | 179 +-----------------
>  drivers/gpu/drm/i915/intel_clock_gating.c     |  38 ++--
>  drivers/gpu/drm/i915/intel_uncore.c           |   4 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c          |   4 +-
>  .../drm/xe/compat-i915-headers/intel_uncore.h |   1 +
>  drivers/gpu/drm/xe/regs/xe_reg_defs.h         |   5 +-
>  drivers/gpu/drm/xe/xe_eu_stall.c              |  20 +-
>  drivers/gpu/drm/xe/xe_execlist.c              |   6 +-
>  drivers/gpu/drm/xe/xe_hw_engine.c             |   8 +-
>  drivers/gpu/drm/xe/xe_lrc.c                   |  12 +-
>  drivers/gpu/drm/xe/xe_oa.c                    |  42 ++--
>  drivers/gpu/drm/xe/xe_pxp.c                   |   4 +-
>  drivers/gpu/drm/xe/xe_uc_fw.c                 |   4 +-
>  include/drm/intel/pick.h                      |  51 +++++
>  include/drm/intel/reg_bits.h                  | 139 ++++++++++++++
>  34 files changed, 362 insertions(+), 349 deletions(-)
>  create mode 100644 include/drm/intel/pick.h
>  create mode 100644 include/drm/intel/reg_bits.h
> 
> -- 
> 2.47.3
> 
