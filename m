Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOKOG/czB2ottQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 16:55:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA4D551BCB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 16:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34DD10F551;
	Fri, 15 May 2026 14:55:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGTWk0lP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC9310F551;
 Fri, 15 May 2026 14:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778856947; x=1810392947;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aP0Qh1je0otlAEcR9TtoVjvIPLOe00RiYRqSsjxADrI=;
 b=GGTWk0lPHxJ5SUUMvdt68A2Z5gjjpTQzpCwuQnbs56Q7VRoiN4VLoRRG
 tot+ZD2WkLeIuXNROM2enzbwmbYsQMK+xC0jaYnDKfTV+Xh9I5+MTXM1O
 K9T6eBse4oU+SVaOfYqZkzYbqyQd6W7AfyNzHzeVYbmowbN2q/jauzEuk
 ap0t+BuinVrL3kqs78FAVsWd1BIeGWv/AwTT4fkTIYJp+RcQN+plpxjtT
 UQERWHvgBsuh4J0JOGQ0V5GUuCaHaAxHKJl4ykBv6NncAwod0+YmqCWm5
 uU7kSL8w/UK6xD3bTjuMIRhjFJH9QaqHsJsXCI5YA/31elztfFwevhTZA w==;
X-CSE-ConnectionGUID: gCWEeVPoTyqTjmNQYb49tw==
X-CSE-MsgGUID: FGa+KZjyREq34M3AoQyIPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="97385955"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="97385955"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 07:55:46 -0700
X-CSE-ConnectionGUID: gmXCLXl3TLaENpiOcgf0hA==
X-CSE-MsgGUID: UPan8n4zTx6/jg9mk+q2Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="235670221"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 07:55:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 07:55:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 07:55:46 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.31) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 07:55:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aEIbx2gNkVb9YAsB/n0mAJoExRGxiXf6Qm3Tuv1KGSvsIDf5Tmeu4OzNXAL3ZhhmRcvtTJxnCRSaXOr57yC/RNAWM9y878PQLMKfE2frWAZagScxopmcqZMTUMGiKGugXjmyQpiYEfUa63HCnMQ99HYyJaiTciSMmY1iOhAXtRLUQOn/h7WXvB27rKBrE9nBcWwaeI+teTHV08RGaOwvBQXoqmsX6agoR9anEJSy3sFV8CI53zPFpCyyb3coUg4Vz3QOUl6G2NVhUFUbRqwiPjbXnCLUR44oPZ3+G7ilWCmXccVKzhfNITSuCihtS5YeMdfL0pRHOgdPzN3cKYpgVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zBDjZXKDwxTbU2s4DCeGGK52BlisqBgIH0ba9xX42jQ=;
 b=Pj5qi761jLABXfzgno9uE4eMaod4VI5GPeZIEIDzaNPJq8A2LyzK74WIp8xYUEKdcfalioAH/fifmQQA8LPye/krtgZgLQomIMu4VwTcG377m748pOLEJCteS5lK8YIRSxydX1FTEM3rzgCris6sXFs/od36aoHK7wYMoo1a0X363tZh9rHd/xyY0B0GbV51DrC84k4iNpbHaweJ82r9cN0ZvJ8cG1J9r8mUAH/vZuH2SINouluufSPZoUyX0qps1Sz72qiFsG6MTVMooVPwjEtfP4BliPuJxWvVj0fB6aTHc/0G7ppvf8vusogJ+WdCVQrb8XAhN1E+dQB1R0rC7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7919.namprd11.prod.outlook.com (2603:10b6:208:3fa::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 15 May
 2026 14:55:41 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 14:55:41 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <arun.r.murthy@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver
 >= 30
In-Reply-To: <20260515082443.975592-1-suraj.kandpal@intel.com>
References: <20260515082443.975592-1-suraj.kandpal@intel.com>
Date: Fri, 15 May 2026 11:55:37 -0300
Message-ID: <87ik8opvrq.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0260.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7919:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d7aeb99-6b44-4ed1-9915-08deb292086c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: heieUd8ocZpUxMGNsG3sIpYWVE53vL97byk6c8vCq5+4ZFeTweIIBlEWDJp+wpg8r5orZzaazdkDwyi9hS7DoXxApamjkFjkyMTZA5dv5zCAsXXJ5DkWkuEZEH8FKJKhLwQ05sIiLo7O8TGPgNZpO8okxIbZHYvImCv1QPmjcZx+GkW3Pb7wvmV6TaRQyHYe1QQzg5iO5dLQ4JDvlqEZTMGOlh1tXx3WCSWbMYESYTHQwyR6Dg5EGks3zcWPq4tJ+COr5Yj4vZ3AMUFxk5vSjKpR/6mXYFqaCNwLhLqrXZyHZPNJ4Ca6GO/gdCvKzslOKmgdL8y06ESjE2XtSQopasHWA6R7Lx6VLxi4KA1MePtlW2zHHYPjGdEg/cKvlxiZv+YmrdWDsPaTyvXfJUg0b3kScnugwa2j1VrZnUhSK1Laa722A+g9kwXoDzS0WwftnOr9RCBfEXxZSQiWe64tkgxfDTJhsXKBWIiPtEtgq00+coAhDNZYQdupoYEx+uzT4uz0gRhNJ9MXFPkxjqCe1hRHsocv0PMjR5of48k2aPdKyuecYYzcF+RlJ/fJrJRkPVhOoK8aMyHnu0yrwmU8mXHsGu9H8956bwW0+nS7P75WZacndYDt0tVSFUK3kLC1Cvr6giz52kWMHQ0pxOii6ANr3PdPSOQiyMgBlIt3VuGQq6XrqFhNiHcpuZ3lEW9z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IPKeHldhALgKazMGdth+FaY7cv5XRnv6aAzF6b9CEXUjc7JfDetraqWGw/i3?=
 =?us-ascii?Q?A42ou4OhtadTrTwL731VzXVDldjGAvxS0jU4eMB9rDa8ojQTSkJryFh4hta7?=
 =?us-ascii?Q?3OEzS1bYUyvam65JBYPFL+g2pPEQvXUjSvz5Lz0x+KeOFUM9T6/fu+lGoIMN?=
 =?us-ascii?Q?J2tLfe+yRWdBmLFxeCh8xJAZUqjCH2VWOviaBYc2uifbePkOm790fYUxptDm?=
 =?us-ascii?Q?ANAn3BnZyMlYtE7jnJQ33Nk/af4G856rzV7ab1keLKZ+g3ZhiVbrcyG0flCh?=
 =?us-ascii?Q?KP1kAgZ61eN73Gvc1RaBnTJFbgW3PSmZiLMi/tHzTRsOHvO2TC+Q91E0ICQ9?=
 =?us-ascii?Q?TUuz+nOO9oGEqdNih7BkmcfjZv8u1YrBhWjzYBqyhqhoMwoAX9mkw5dV4fa6?=
 =?us-ascii?Q?aSPx+hz8qUJMOleGwW6zz63cGFQN+RaN3rLRDE06NaKEi08PuOBX/6ACzBXB?=
 =?us-ascii?Q?2BogjjQ6B8z3LKHGHP0vYC386ww0kh6ZGa3F9JgrHpBgC4TYl8ROfyVeQGl/?=
 =?us-ascii?Q?F8qSdfbbM6dJZqMN4PNsMs9Tykr6luVhA1rwhZ/hQ71Oof9iwNcuoAUM0p/T?=
 =?us-ascii?Q?/7d6Pr4yoCZZDkMF+XXLbItYulqjiA1ozibutj4HBKEG4f2CtjKGFw3nPe0B?=
 =?us-ascii?Q?AgJYxf7a/eQgK3rM+l54Fut6FftpE0IQWW0Tbyof5jCYdWV0+Yqybb/P1xCG?=
 =?us-ascii?Q?hPde2EAn3XJY5hpL4f9xpE/7cJEqxKuJqOlJPuEY2sim+jGuTvjQ6+o2t5Cf?=
 =?us-ascii?Q?8cfrD1O9lQyLURw/BcmDmHZBtwZtgFDeEG+c8qbU/B+nhbxaT+NtVuJrenlI?=
 =?us-ascii?Q?0rEEwOMQvXJPVEy6UAIWukRef/UW9jt/zcQEpMBs2Sp5gWZxb+tRPvmXT96H?=
 =?us-ascii?Q?1jGwneEl/HdYUEiyX2E6a3lHpWQlGTSWBGtf8I9WjRBm+GnB3VIruTpS9yst?=
 =?us-ascii?Q?Y+iM2vtmbTWaFbKf2UuDSJzkrgIG1bTo6+qKL/heim1P75CZQuGNeQM+XxBV?=
 =?us-ascii?Q?HUtCaZJyur3ga7Y/q2bzM0l2FqJIL1t/cwHXa9t8GCvJ4HJqzF3WDs4P1faI?=
 =?us-ascii?Q?6cL5wOM/DYf3ZPFl24M/V7vSHsnJE0Jok97wgCZpZGxzY8nu5CHwgxmjkZAC?=
 =?us-ascii?Q?gidVYXQO/bfqxhqZGroIKjetl/aZ+RLIZFhNVZ0PCF7XHOhzfh6AIhAL1Zac?=
 =?us-ascii?Q?4yTRQXx2vIG/nke/HxKyc9EzfW9/WAasosu+CniRCNQyLoMz87rmCvagKYwr?=
 =?us-ascii?Q?c7bjObcW9SXs0bkv6oeFM69CQnkfO81x3xD9plhOaiWmqA2P0iXnU0op7Q+A?=
 =?us-ascii?Q?hFA83Txzx7zXAL/oHh3WjB4saLHT2x+ReMv1Xpkb7RTN9RPXcgElLEnKr5K/?=
 =?us-ascii?Q?6JtdqGfC6BDZAHLGfvGEYWqm/wE6l/xnfOdOffCcNmlZSVybCH/6py4xRi+3?=
 =?us-ascii?Q?AKyRv1OfvWGm6jfTtHG9P/3HIXqsrMf25mLX9nl1dIGDLnPANGcM2IRhP6lM?=
 =?us-ascii?Q?Izklf8726q7uCDj9ABYVM500Nz8BGlJgOcnSpQNyMzOOcXvVSiuWfzhHRSCp?=
 =?us-ascii?Q?/J6sloTa2NSjsrku/BK9tfyMl7CgZWwLHnbbNFVDxdx64Z3hyprYxxL8YzBn?=
 =?us-ascii?Q?6qDQyFcuQrc+3wsglQiXuEQ5shKY5WeKK9qRwCQbYTEH7bFCw8KG8RTxc5mU?=
 =?us-ascii?Q?/4pHO8xnX3dUGyhQwfwimJiAJMR6JiPLSgcxETVj8idIYESYrSshPVKEN59b?=
 =?us-ascii?Q?QwHvv6zrtA=3D=3D?=
X-Exchange-RoutingPolicyChecked: Wp/R2bgLHLzYzaOoRWqHzBAjYaAPe+9LLJHf/xQpvzmkLw8Yx48d7njFqruijbyaFxg25YZgXUkTioB4ohDvYNowv2d/j0Dza1rl+cnLkjqrAu1v8SUbvHERJNiTEfnzXKhSzUpixfMcRCYcYF5fXk1kVc5m09hZOQS61pwctpkwy39sFZwjb+iVcIpQ2jCa0GFYVuuU08v/gwYfnVsd/zEitg368FroU74Alo0VFLZAGIVPEZVVIefG3fsH5ltNwPw95MTIeoeCi+MYwwJHRSiCYw7ARCkZWpdCTyw4IHbqiI2f+o3yARCCelNWq322opHeOPwiBGT98rk5c/qGyQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d7aeb99-6b44-4ed1-9915-08deb292086c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 14:55:41.0918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Az5R7OxCdykOCL6jAeSg644LdECZx0QhxjrhtO7Qi1cTtsHSaAZoRW8DRAAbgeSNk+1//6VJmdNX9RT9q8ah2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7919
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
X-Rspamd-Queue-Id: 6DA4D551BCB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Suraj Kandpal <suraj.kandpal@intel.com> writes:

> Starting with display version 30, the per-pipe frame timestamp is read
> from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
> legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the display
> and select the appropriate register based on DISPLAY_VER(), and update
> all callers (intel_vblank, intel_initial_plane) accordingly.
>
> Bspec: 79482
> WA: 14022946399

Why is this workaround being mentioned here?

If this is part of the workaround implementation, we should use the proper
display workaround infra (intel_display_wa.*) and we probably don't need
to add this commit trailer IMO.

Is the idea to use the PIPEDMC_FRMTMSTMP register as an alternative for
the workaround in display IPs that support such a register? If so, I
think this alternative will not apply to previous display versions,
right?

Another important question is: is this register updated even when the
DMC is not loaded?

--
Gustavo Sousa

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 7 +++++--
>  drivers/gpu/drm/i915/display/intel_initial_plane.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vblank.c        | 4 ++--
>  3 files changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..579f802215d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3149,8 +3149,11 @@ enum skl_power_gate {
>  /* g4x+, except vlv/chv! */
>  #define _PIPE_FRMTMSTMP_A		0x70048
>  #define _PIPE_FRMTMSTMP_B		0x71048
> -#define PIPE_FRMTMSTMP(pipe)		\
> -	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B)
> +#define _PIPEDMC_FRMTMSTMP_A		0x5f0ac
> +#define _PIPEDMC_FRMTMSTMP_B		0x5f4ac
> +#define PIPE_FRMTMSTMP(display, pipe)	(DISPLAY_VER(display) >= 30 ? \
> +	_MMIO_PIPE(pipe, _PIPEDMC_FRMTMSTMP_A, _PIPEDMC_FRMTMSTMP_B) : \
> +	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B))
>  
>  /* g4x+, except vlv/chv! */
>  #define _PIPE_FLIPTMSTMP_A		0x7004C
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> index 034fe199c2a1..004cbdb6be32 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -34,9 +34,9 @@ void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
>  		return;
>  	}
>  
> -	start_ts = intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe));
> +	start_ts = intel_de_read(display, PIPE_FRMTMSTMP(display, crtc->pipe));
>  
> -	ret = poll_timeout_us(end_ts = intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe)),
> +	ret = poll_timeout_us(end_ts = intel_de_read(display, PIPE_FRMTMSTMP(display, crtc->pipe)),
>  			      end_ts != start_ts, 1000, 1000 * 1000, false);
>  	if (ret)
>  		drm_warn(display->drm, "[CRTC:%d:%s] early vblank wait timed out\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 28d81199792e..52ff47936f9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -157,7 +157,7 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>  		 * is sampled at every start of vertical blank.
>  		 */
>  		scan_prev_time = intel_de_read_fw(display,
> -						  PIPE_FRMTMSTMP(crtc->pipe));
> +						  PIPE_FRMTMSTMP(display, crtc->pipe));
>  
>  		/*
>  		 * The TIMESTAMP_CTR register has the current
> @@ -166,7 +166,7 @@ static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>  		scan_curr_time = intel_de_read_fw(display, IVB_TIMESTAMP_CTR);
>  
>  		scan_post_time = intel_de_read_fw(display,
> -						  PIPE_FRMTMSTMP(crtc->pipe));
> +						  PIPE_FRMTMSTMP(display, crtc->pipe));
>  	} while (scan_post_time != scan_prev_time);
>  
>  	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
> -- 
> 2.34.1
