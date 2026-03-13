Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCkGOKras2mzbgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 10:36:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63073280999
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 10:36:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD54710EB7F;
	Fri, 13 Mar 2026 09:36:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iIOio2uf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4289B10EB83;
 Fri, 13 Mar 2026 09:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773394600; x=1804930600;
 h=date:from:to:cc:subject:message-id:in-reply-to: mime-version;
 bh=/YpC5yKHAg661fyQP4N9UyjK2OBMOscr8BKCAYssjhM=;
 b=iIOio2uf4TDOXfYGaHI24ZumWr+wje4cKadk5uz+QakP4XLvfH4mqHp7
 kkWb3q1SY3DyjpIYuHqMkJDk6vQ7OEiSxJXtAGBBw/O3MO6hma6GZbr8C
 UOalof5UcbrCD4oCYRj9Un6vedvPssUmcuMGnuCfP4Kl/s6hij5BUp5lN
 +X7ESYh9HfUc5qSfXpwFgaUQDayceK5BQouiVODDuzOQmiKYOrdaMs9fd
 d9VA4sMzWQISszfaIMvYtIZTR9spCdFki8fBa05ipgHWbZxGae2+0a0lm
 qwWGepgcyPnwc8x9yFGsIbABYjvEGLFHgC63koR4DKAYA/p1mdxAhxeLL Q==;
X-CSE-ConnectionGUID: 3YzfiMgpRU+MqIkfY4ZX0A==
X-CSE-MsgGUID: CLzIOUAyQkaFWQIdUTfsUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="92075003"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="92075003"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:36:39 -0700
X-CSE-ConnectionGUID: GowlvMW3TSiSKu1Y6hfjSA==
X-CSE-MsgGUID: 3tPEzxF9QZisFKOxCSQhrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="218463207"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:36:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:36:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 02:36:37 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.3) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:36:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jZBbyrT5msJk9SxHM12gPre3BL3E+VpkvbUpLm5HaTSzBXb486eZx2aVxw13dfgPwGgqhjkSUGoxvgrexz+YnxmUsMZOTZzxwlX11SY90xJkXKTov3mefu0UU45CwfRx4/E313XiD8DUhwBnJDIGbZ/hCalCbkNmtOCCnDg1cyCeWztL+g8YgOdJZugKYD0Prkmc7g6rDyCcxU8trb+EO5vphzpzZ/azMnyDofHOyjL0/uWoUDYY7xeRNYPsbThAYj/DM3+6bkSu/GXWsWQVOsV13wwp/h+PGUmjK73OrliohJzaDUvKyCk7ojvCNXPHIu+vSvfhBfXY/fukguGLrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TcvgeoutLIghDdNTLLbIw+Eiu2Cs0NqwrLEqMHG8aq0=;
 b=Aa/x6sJmXtjj9yhYq92X83AyK4q7P/8juP/4jxZlwEeCI7RgIr5bahBe9lTg+dodeyouG4SkpBqdxLfwFPiHCG0e59yIGE09weXfrYne2ZRGc5N7UZRt8fVlr6ZP/afLUdh0V01ZB+JOIyPzNn31XHIqNqKiS3FKoSkQDQHg/aBQnbm2hBkqoPEr2d6tsuLJ8vZccyLNHqGNfWIOb5YfiPsBun/D1EHIekck1ze3NKXhQSutzYqYxBM6YOREGK0S2fJTyqOeQbclZMkLKIruwhwQrfPQQehTHe4aX3PjNbp6atYVDn2YevJ8nTvr1MX3I/awW20rdl6GEzu5jwJYAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5832.namprd11.prod.outlook.com (2603:10b6:510:141::7)
 by PH8PR11MB8285.namprd11.prod.outlook.com (2603:10b6:510:1c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 09:36:34 +0000
Received: from PH0PR11MB5832.namprd11.prod.outlook.com
 ([fe80::106e:78dd:4c96:d707]) by PH0PR11MB5832.namprd11.prod.outlook.com
 ([fe80::106e:78dd:4c96:d707%3]) with mapi id 15.20.9723.004; Fri, 13 Mar 2026
 09:36:34 +0000
Date: Fri, 13 Mar 2026 17:36:25 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <oe-lkp@lists.linux.dev>, <lkp@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>, "Maarten
 Lankhorst" <dev@lankhorst.se>, <oliver.sang@intel.com>
Subject: Re: [PATCH v7 24/26] PREEMPT_RT injection
Message-ID: <202603131728.1fedee25-lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260310115709.2276203-25-dev@lankhorst.se>
X-ClientProxiedBy: KU0P306CA0037.MYSP306.PROD.OUTLOOK.COM
 (2603:1096:d10:29::8) To PH0PR11MB5832.namprd11.prod.outlook.com
 (2603:10b6:510:141::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5832:EE_|PH8PR11MB8285:EE_
X-MS-Office365-Filtering-Correlation-Id: 890031bb-dc26-4b4b-670c-08de80e403cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: SG8qxVjth/JrqCt2gb9Y5TRqVkJ43EkoihdJLMtGzbAo2+lrAzirWfjB/O8mDLbSn0344Kk5OU+xAi/CfnIYzwNvWqjRNU8wmMpKDP8+EiPpgNjk4GOX3FvsVRuxtGlRo1qf038I6rkZDseOyQO3hPzE1UGMcP50jPRo6LqrYqeVuT0iRydGBQztTTBuHlVtyUdCReDus/QuMgdbRp+r47kzhO2Uy5m5PCwwIlQGU6mh/JJYgl64iGglBgQkPsP5oNwc++Z5UntiEiz9Jtx/LYdSlmIU9BscJ2GLAA9xU0G5HfLv621hO/vyT1RWukdzGOZTR/xnlusodLc/Mg1/jXBRugjbbPmLAN3wUcpoiFCvSlkq2tBkPIFzqvp2BkaVcE9yuRfT9hE8J4ozjl1NcIul8E9BC3APyhrxg1ngUfCkEhk/3oIGF7NVE/wqB0RWAaz/oAQqnjzP5/s36ICa+2WbYYzcfMB5Q9NR38eZ2za3oGbtva5ZHb6eyFeiYnhMCBj7IDP9mIXBUbiZdIqmOcfwMYFV8FyoAajl+croOg9FMD0EfWRd/90UvjWuFt+pnUX8DX19Gmgxzbe4v9RmmWhSPkZvw5XgDpn73KeH7ayp/4zdNoPeh3UvYvSaY5dMIciYaqv48l3tkMhIOpUhyAtTi+2gOr/Yvl0FxlRBJjx9eGvuoWg9KSs6BfVKM96Z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5832.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0gTd4eAu1GkY+mJFrD2O1Tp12xqSFthXAfLuI2epgsa2sif3F3ELCiC2XkZm?=
 =?us-ascii?Q?Bri6dqOxmqZ+/NDk7OLd/KvanIjNwET8NS+ch/2e+NDSL68vY1g1u1T+nixd?=
 =?us-ascii?Q?k0t8dqlvGv+Ak3m7NK9Cq3mDeugCyc0xGMFu7B7Nbw/DYwNuyglz7zlCxX/U?=
 =?us-ascii?Q?03IWfSoAPYKxrtrlW5YZ7iolLeyaYh11ThGOtv2zBBwp5zJAVzSIAn9q8Ysk?=
 =?us-ascii?Q?mZ6lKw4P+CeIezeTAyuSZupagcsKSWvKpGfTVz0rfiDQbDoU+vCwpsZQmCm0?=
 =?us-ascii?Q?hQ44QS7YKjfvncUHBkWXwD6DTznFVa7WM2UzEnO0zLGiPatzi2B+5KlzkBQQ?=
 =?us-ascii?Q?IBRuvniVRBMMT7qDwakKY82FI7wzfylmiaE6k8J+rC5iuTVo3S//vW5xiTlt?=
 =?us-ascii?Q?Y2IAljjtOCtpdhtBtEYDCHLxQG3VEQxVpkpvRrYwV5M7XGFAEpDTBxmu9ByA?=
 =?us-ascii?Q?6YrgJlQsQZ5qJDPX27OBHyFdvqahL5a+5X4rnKC1dy6megA/B2jMLZFxfYx0?=
 =?us-ascii?Q?gP4HJtZbyrrVFRvEnMRnWLa5CnjUnegTw/P3FH84mGJy63d7ZYgbLUnVWK5e?=
 =?us-ascii?Q?D50hgn0T+E539oddd7UIBEO6TFgRwVC1ZcE6+BXrP19RiAQ3mofAz6IBhVMr?=
 =?us-ascii?Q?yVKNZn3jXujVi0gsSEbat6rS3TiGDjrCrK07OlewFUqt43e+cWtegM66JPVb?=
 =?us-ascii?Q?XlpwwNp6AzLQfOK3CAnCW2k0UkGoUkPvhwBptzkXngOuMwe13LW3G4y/r5Ih?=
 =?us-ascii?Q?DxKlhPyebnY5/z7UvdsezFA9B2AkxRwHByBqHpvQpn+vsOREWCXWRfjL7+3F?=
 =?us-ascii?Q?kcKinC5pnip4iIJbXvjIef663CID+huqBjtQPGTsVCqaJJqYKL7+SdYtUNBr?=
 =?us-ascii?Q?3FmoRleFBICE+x8xD7k9eCBK5XLqHXQBVAPNGUSsB63DxJvN28K5PEte0Gd8?=
 =?us-ascii?Q?jNj0zDR0FbpQDxvBB71FIdYh2J6AlWEcDV4LlsZkqFQLi2RRrJE8TGf9ZdfW?=
 =?us-ascii?Q?d62zMAYtIGSrGlNmvnCrY31N9PXIn/TcO0pIGJz5dH++f4Oz6mibAAQt4j6y?=
 =?us-ascii?Q?+jDsWY8FE7Y80+PoUDJjrpeuVr3W/ac1Oz53nj3mijBJmNnFGJF0PMI0+Wp7?=
 =?us-ascii?Q?DLPINHc9h1BsgnJ2wGV8VJCm37/cAln8Fflblo5bjMwzohgRlrDoujOePzL5?=
 =?us-ascii?Q?1ssUdK3kght6ZkxPTHEcr/5IQwUdxgSqI7XR/HZJDkWx6jTekoQZth6O7kAb?=
 =?us-ascii?Q?PM0OY3mAu7kJmFHrluHX79Sbf8V1SKf4RKbTzTGBqWtMs1AnBhzgXVZJ9w8n?=
 =?us-ascii?Q?/jZ3lQu3t1McfuJ110xX7V0bOz1Pm6RDvWRUxCGt6Glr/6CpU+06YsdTcqkv?=
 =?us-ascii?Q?9KOFygndEswq0HUlpyHlRedcjYXKTpwn2IdFRcoMN9s0f0gNY/Fhsytn+/Sa?=
 =?us-ascii?Q?Pzo8E305hqkk030ky/mPIv2XW6sN4yAdtKToHlM3u3R8uPLsjQm1QQ2mcUfW?=
 =?us-ascii?Q?zx0WLBjc4QS8wPHKD1miXqJP1GL/Op+6HqnlMMJPvvuNtQ5e4fQISxQ/CyLW?=
 =?us-ascii?Q?vgb4PygUWCAmQ0IYta8uulxrPjA94rCRHHhbIcUYGV8B/50BhnduzAtyiiQg?=
 =?us-ascii?Q?ELRddMetQmEvBUSe4QCoOUGJep8MF5XB5+/Dj5UQdKY/cIW+vlyNbErZyikO?=
 =?us-ascii?Q?PZHxIs9XDU7casFqfa+86GQqmMJiQjAYEEFiWgJmvx8QhmPXAPD2ouYVv2+l?=
 =?us-ascii?Q?8JyzD/WSyQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: IxWM/WJqJvMDQ4SK1Am3xmqJsIEzk7O8k4pQlZCN2+yEfB/Ls3l5g3Cjkk2ClPdWDXktJMJMvXkA+HPEQCVDZp8JCXpQkPPH4oAcGv/Chz0InV3V7ENh8ZcYk/0fKbv3cqrdwqw/YxtXoTKGxzA5YH8/H5smRsGR6Zr9QNRUF4F4wn0QKUfVztTjyUW32kJB+94oI8xjYt4917nKJfwwM/PwLtZBIE5pw38IxN+tlG8KAvcR7drg8x0FJ/GLYLDOVA0YVxBy/HNSD6ayMNUskZP3RGuOl/3o38pH+mHlwFJB0qHo63QPB5vU913VhCwrSRyu+LaZKSv81j8+R9P6+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 890031bb-dc26-4b4b-670c-08de80e403cc
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5832.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 09:36:33.9570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhzNaCTJ8nIbgos2/z3MRrkUT5s4dj5CmRznloAwlU5P9HJSncBqMDrILROF1vl6OkljwWOzrh76h7AsfTOr5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8285
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,01.org:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[oliver.sang@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 63073280999
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



Hello,

we made a similar report two weeks ago. again, we cannot understand well the
purpose of this patch set, this report is just FYI what we observed in our
tests.

by this commit, a big config diff is introduced comparing to parent [1]

then a boot test which can pass on parent commit (previous patch) now fails
persistently.

=========================================================================================
tbox_group/testcase/rootfs/kconfig/compiler/sleep:
  vm-snb/boot/debian-13-x86_64-20250902.cgz/x86_64-rhel-9.4/gcc-14/1

24a93cdeef1153e2 20d2f07d259d55c5b2f1e8c97da
---------------- ---------------------------
       fail:runs  %reproduction    fail:runs
           |             |             |
           :6          100%           6:6     dmesg.BUG:kernel_reboot-without-warning_in_test_stage
           :6          100%           6:6     dmesg.boot_failures


unfortunately, we cannot find more useful information in dmesg.

below is full report FYI.


kernel test robot noticed "BUG:kernel_reboot-without-warning_in_test_stage" on:

commit: 20d2f07d259d55c5b2f1e8c97daa270b48b8554e ("[PATCH v7 24/26] PREEMPT_RT injection")
url: https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-vblank_work-Add-methods-to-schedule-vblank_work-in-2-stages/20260310-205630
base: https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link: https://lore.kernel.org/all/20260310115709.2276203-25-dev@lankhorst.se/
patch subject: [PATCH v7 24/26] PREEMPT_RT injection

in testcase: boot

config: x86_64-rhel-9.4
compiler: gcc-14
test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 32G

(please refer to attached dmesg/kmsg for entire log/backtrace)


If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202603131728.1fedee25-lkp@intel.com



[   12.960487][  T186] scsi 1:0:0:0: Attached scsi generic sg0 type 5
[   12.985908][  T186] sr 1:0:0:0: [sr0] scsi3-mmc drive: 4x/4x cd/rw xa/form2 tray
[   12.985917][  T186] cdrom: Uniform CD-ROM driver Revision: 3.20
[   13.001113][  T186] sr 1:0:0:0: Attached scsi CD-ROM sr0
LKP: ttyS0: 213: LKP: tbox cant kexec and rebooting forcely
BUG: kernel reboot-without-warning in test stage



The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20260313/202603131728.1fedee25-lkp@intel.com


[1]
--- /pkg/linux/x86_64-rhel-9.4/gcc-14/24a93cdeef1153e28b6157b6fd805b02ca23dd64/.config  2026-03-12 11:30:32.108505780 +0800
+++ /pkg/linux/x86_64-rhel-9.4/gcc-14/20d2f07d259d55c5b2f1e8c97daa270b48b8554e/.config  2026-03-12 12:24:04.187019016 +0800
@@ -131,7 +131,8 @@ CONFIG_PREEMPT_BUILD=y
 CONFIG_ARCH_HAS_PREEMPT_LAZY=y
 # CONFIG_PREEMPT is not set
 CONFIG_PREEMPT_LAZY=y
-# CONFIG_PREEMPT_RT is not set
+CONFIG_PREEMPT_RT=y
+# CONFIG_PREEMPT_RT_NEEDS_BH_LOCK is not set
 CONFIG_PREEMPT_COUNT=y
 CONFIG_PREEMPTION=y
 # CONFIG_PREEMPT_DYNAMIC is not set
@@ -160,6 +161,7 @@ CONFIG_CPU_ISOLATION=y
 # RCU Subsystem
 #
 CONFIG_TREE_RCU=y
+CONFIG_PREEMPT_RCU=y
 # CONFIG_RCU_EXPERT is not set
 CONFIG_TREE_SRCU=y
 CONFIG_TASKS_RCU_GENERIC=y
@@ -169,8 +171,11 @@ CONFIG_TASKS_RUDE_RCU=y
 CONFIG_TASKS_TRACE_RCU=y
 CONFIG_RCU_STALL_COMMON=y
 CONFIG_RCU_NEED_SEGCBLIST=y
+CONFIG_RCU_BOOST=y
+CONFIG_RCU_BOOST_DELAY=500
 CONFIG_RCU_NOCB_CPU=y
 # CONFIG_RCU_NOCB_CPU_DEFAULT_ALL is not set
+CONFIG_RCU_NOCB_CPU_CB_BOOST=y
 # CONFIG_RCU_LAZY is not set
 # end of RCU Subsystem

@@ -186,7 +191,6 @@ CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=y
 # Scheduler features
 #
 # CONFIG_UCLAMP_TASK is not set
-# CONFIG_SCHED_PROXY_EXEC is not set
 # end of Scheduler features

 CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=y
@@ -198,8 +202,6 @@ CONFIG_CC_NO_ARRAY_BOUNDS=y
 CONFIG_GCC_NO_STRINGOP_OVERFLOW=y
 CONFIG_CC_NO_STRINGOP_OVERFLOW=y
 CONFIG_ARCH_SUPPORTS_INT128=y
-CONFIG_NUMA_BALANCING=y
-CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
 CONFIG_SLAB_OBJ_EXT=y
CONFIG_CGROUPS=y
 CONFIG_PAGE_COUNTER=y
@@ -928,14 +930,12 @@ CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PU
 CONFIG_HAVE_ARCH_HUGE_VMAP=y
 CONFIG_HAVE_ARCH_HUGE_VMALLOC=y
 CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
-CONFIG_ARCH_WANT_PMD_MKWRITE=y
 CONFIG_HAVE_ARCH_SOFT_DIRTY=y
 CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
 CONFIG_MODULES_USE_ELF_RELA=y
 CONFIG_ARCH_HAS_EXECMEM_ROX=y
 CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
 CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK=y
-CONFIG_SOFTIRQ_ON_OWN_STACK=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
 CONFIG_HAVE_EXIT_THREAD=y
@@ -1100,7 +1100,6 @@ CONFIG_LOCK_SPIN_ON_OWNER=y
 CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
 CONFIG_QUEUED_SPINLOCKS=y
 CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
-CONFIG_QUEUED_RWLOCKS=y
 CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=y
 CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=y
 CONFIG_ARCH_HAS_SYSCALL_WRAPPER=y
@@ -1189,12 +1188,11 @@ CONFIG_SPLIT_PMD_PTLOCKS=y
 CONFIG_BALLOON=y
 CONFIG_BALLOON_MIGRATION=y
 CONFIG_COMPACTION=y
-CONFIG_COMPACT_UNEVICTABLE_DEFAULT=1
+CONFIG_COMPACT_UNEVICTABLE_DEFAULT=0
 CONFIG_PAGE_REPORTING=y
 CONFIG_MIGRATION=y
 CONFIG_DEVICE_MIGRATION=y
 CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
-CONFIG_ARCH_ENABLE_THP_MIGRATION=y
 CONFIG_CONTIG_ALLOC=y
 CONFIG_PCP_BATCH_SCALE_MAX=5
 CONFIG_PHYS_ADDR_T_64BIT=y
@@ -1206,30 +1204,10 @@ CONFIG_MEMORY_FAILURE=y
CONFIG_HWPOISON_INJECT=m
 CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
 CONFIG_ARCH_WANTS_THP_SWAP=y
-# CONFIG_PERSISTENT_HUGE_ZERO_FOLIO is not set
-CONFIG_MM_ID=y
-CONFIG_TRANSPARENT_HUGEPAGE=y
-CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
-# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_NEVER is not set
-CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_NEVER=y
-# CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_ALWAYS is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_WITHIN_SIZE is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_SHMEM_HUGE_ADVISE is not set
-CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_NEVER=y
-# CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_ALWAYS is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_WITHIN_SIZE is not set
-# CONFIG_TRANSPARENT_HUGEPAGE_TMPFS_HUGE_ADVISE is not set
-CONFIG_THP_SWAP=y
-# CONFIG_READ_ONLY_THP_FOR_FS is not set
-# CONFIG_NO_PAGE_MAPCOUNT is not set
 CONFIG_PAGE_MAPCOUNT=y
 CONFIG_PGTABLE_HAS_HUGE_LEAVES=y
 CONFIG_HAVE_GIGANTIC_FOLIOS=y
 CONFIG_ASYNC_KERNEL_PGTABLE_FREE=y
-CONFIG_ARCH_SUPPORTS_HUGE_PFNMAP=y
-CONFIG_ARCH_SUPPORTS_PMD_PFNMAP=y
-CONFIG_ARCH_SUPPORTS_PUD_PFNMAP=y
 CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
 CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=y
 CONFIG_USE_PERCPU_NUMA_NODE_ID=y
@@ -1531,7 +1509,6 @@ CONFIG_NF_FLOW_TABLE_INET=m
 CONFIG_NF_FLOW_TABLE=m
 CONFIG_NF_FLOW_TABLE_PROCFS=y
 CONFIG_NETFILTER_XTABLES=y
-# CONFIG_NETFILTER_XTABLES_LEGACY is not set

 #
 # Xtables combined modules
@@ -2842,7 +2819,6 @@ CONFIG_DM_INTEGRITY=m
 # CONFIG_DM_ZONED is not set
 CONFIG_DM_AUDIT=y
 # CONFIG_DM_VDO is not set
-# CONFIG_DM_PCACHE is not set
 CONFIG_TARGET_CORE=m
 CONFIG_TCM_IBLOCK=m
 CONFIG_TCM_FILEIO=m
@@ -5412,7 +5388,6 @@ CONFIG_DRM_I915_DP_TUNNEL=y
 # CONFIG_DRM_I915_DEBUG_GUC is not set
 # CONFIG_DRM_I915_SELFTEST is not set
 # CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS is not set
-# CONFIG_DRM_I915_DEBUG_VBLANK_EVADE is not set
 # CONFIG_DRM_I915_DEBUG_RUNTIME_PM is not set
 # CONFIG_DRM_I915_DEBUG_WAKEREF is not set
 # end of drm/i915 Debugging
@@ -5432,6 +5407,7 @@ CONFIG_DRM_I915_TIMESLICE_DURATION=1
 # end of drm/i915 Profile Guided Optimisation

 CONFIG_DRM_MGAG200=m
+# CONFIG_DRM_MGAG200_DISABLE_WRITECOMBINE is not set
 CONFIG_DRM_NOUVEAU=m
 CONFIG_NOUVEAU_DEBUG=5
 CONFIG_NOUVEAU_DEBUG_DEFAULT=3
@@ -7014,7 +6990,6 @@ CONFIG_LEDS_TRIGGER_DISK=y
 # CONFIG_LEDS_TRIGGER_MTD is not set
 CONFIG_LEDS_TRIGGER_HEARTBEAT=m
 CONFIG_LEDS_TRIGGER_BACKLIGHT=m
-# CONFIG_LEDS_TRIGGER_CPU is not set
 # CONFIG_LEDS_TRIGGER_ACTIVITY is not set
 CONFIG_LEDS_TRIGGER_GPIO=m
 CONFIG_LEDS_TRIGGER_DEFAULT_ON=m
@@ -8441,12 +8416,8 @@ CONFIG_RAMDAX=m
 CONFIG_NVDIMM_KEYS=y
 # CONFIG_NVDIMM_SECURITY_TEST is not set
 CONFIG_DAX=y
-CONFIG_DEV_DAX=m
-CONFIG_DEV_DAX_PMEM=m
 CONFIG_DEV_DAX_HMEM=m
-CONFIG_DEV_DAX_CXL=m
 CONFIG_DEV_DAX_HMEM_DEVICES=y
-CONFIG_DEV_DAX_KMEM=m
 CONFIG_NVMEM=y
 CONFIG_NVMEM_SYSFS=y
 # CONFIG_NVMEM_LAYOUTS is not set
@@ -8543,7 +8514,6 @@ CONFIG_F2FS_IOSTAT=y
 # CONFIG_F2FS_UNFAIR_RWSEM is not set
 # CONFIG_ZONEFS_FS is not set
 CONFIG_FS_DAX=y
-CONFIG_FS_DAX_PMD=y
 CONFIG_FS_POSIX_ACL=y
 CONFIG_EXPORTFS=y
 CONFIG_EXPORTFS_BLOCK_OPS=y
@@ -9571,7 +9541,6 @@ CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y
 CONFIG_DETECT_HUNG_TASK=y
 CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=480
 CONFIG_BOOTPARAM_HUNG_TASK_PANIC=0
-CONFIG_DETECT_HUNG_TASK_BLOCKER=y
 CONFIG_WQ_WATCHDOG=y
 CONFIG_BOOTPARAM_WQ_STALL_PANIC=0
 # CONFIG_WQ_CPU_INTENSIVE_REPORT is not set
@@ -9596,9 +9565,7 @@ CONFIG_LOCK_DEBUGGING_SUPPORT=y
 # CONFIG_LOCK_STAT is not set
 # CONFIG_DEBUG_RT_MUTEXES is not set
 # CONFIG_DEBUG_SPINLOCK is not set
-# CONFIG_DEBUG_MUTEXES is not set
 # CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
-# CONFIG_DEBUG_RWSEMS is not set
 # CONFIG_DEBUG_LOCK_ALLOC is not set
 # CONFIG_DEBUG_ATOMIC_SLEEP is not set
 # CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set


-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

