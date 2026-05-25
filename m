Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJ2UOXw9FGq6LAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 14:15:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2305CA59D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 14:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4047410E0D6;
	Mon, 25 May 2026 12:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gp51d2qy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C417D10E0D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 12:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779711353; x=1811247353;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=7a9120ZoNP5lUwAU91jdTU/QTuJkgGrsJRnVNmuGhO8=;
 b=gp51d2qy/bG9RnUcv4i3hGsEXJMzc+SVM7hDQno511mCFEWwNRZqMSb8
 Lsc6y1vMI4KYtF83v9vHI3K8ICyPztGObjvx1ySBIyNT0pmbFgNkav2zQ
 hUh4bMwT7T5JVWFRPACVyBuLqfy0iRkc0Zg78KI13Ebb/VwMM29iQEymr
 OGsZRnhm16Nc4cmA/MviErVcO2+8MZp12Cjyd1kth+oyfqOR23UncDclw
 xC1e5NK+zLcriQISTCQlJT9dATwsggHMCDByXCbTxjEAXf2m70+FlK3i0
 QusT3T1t5W5cPVd+P4hajScQv05jDaDk6cj5fVEVYYS+dbHw6vBnFrmnu A==;
X-CSE-ConnectionGUID: icf4sbdmSpKpD5YlVChRAw==
X-CSE-MsgGUID: TYT9Npc+QdCrtq3MZd8svA==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="84384174"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="84384174"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 05:15:52 -0700
X-CSE-ConnectionGUID: xkJupcQlTWGVC9bMUED6Kw==
X-CSE-MsgGUID: YODszWoVTISGFYAkIsmL4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="246671101"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 05:15:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 05:15:50 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 05:15:50 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 05:15:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZefX2QLHx77UVEVdaYWvGMyoaNyMrC2bV9tD0U5NSoSz8zXE8acwFprKprT56UY8HtHxUO7S8A6Z1pEShj0dQJMu0yR2UlIZ4HgbHO0HN1CmiGPtVqXV/bIehtdROnlqUv7bfj5VogMph831X6021PjPaeZSI4MVEF/W/2FunOdruDdNvh9NNLAmHeuLoRRhJEqs2vIyRl7Sv1uTjmBb7Ff6ZYYPxed5qeT8fzlXZkt764It2/7q54cE+iEl9xOooejXk3jLmODSnLwQrCm6Xu2BGCBiRXEsJPkcT7MGb42NJqQnr/ET9WT0rofHlM5SY4BNSz2w82f9vUYADNRDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=umlB2LU5B1xByYh5aWfRcTxpNncGlPLfcQ30DM8jWns=;
 b=XKUrSp4Nr6RqDN66i2XEJpDQHdea6wlUmV/nswmv5vNftMll4nf/cq4eIWzzqDxHQ9zk6fZY4j/tIV7zlCl3QLg3qYmiNKSwqpVt+7Tc7/YamSRFvHCWB5ytXSrK8fFYLPbwg5ot31aoymoubXii4Uc8RScZA7B1vUEat5t1ZlyvRPU/eiNt7nEfVWwGeiTGHpyzCruQeRajJcZaNuR4IhmplwOY/KOeKCiEnMZI6bncb+bi6sN1rxX9Dv1qy4H2sLn7loNQtoIGelZR5EtwmCUj8i+fP8UUy33R+jCKdL+BL6OUDbNa419Er7ogqx14RErnox2SQYpfZut4iGlYug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by BY1PR11MB8053.namprd11.prod.outlook.com (2603:10b6:a03:525::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 12:15:45 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 12:15:45 +0000
Date: Mon, 25 May 2026 15:15:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@intel.com>, Jouni Hogander <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?= =?utf-8?Q?cess_fo?=
 =?utf-8?Q?r?= drm/i915/dp: Sanitize link capability change handling (rev3)
Message-ID: <ahQ9VX-anZzxvgng@ideak-desk.lan>
References: <20260522160514.2628249-1-imre.deak@intel.com>
 <177958764495.2974.7143733123516317315@6beec6c84f66>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177958764495.2974.7143733123516317315@6beec6c84f66>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6B9.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::296) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|BY1PR11MB8053:EE_
X-MS-Office365-Filtering-Correlation-Id: 345f5ed1-32b1-4887-895c-08deba5758f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|11063799006|4143699003|22082099003|18002099003|56012099003|6133799003;
X-Microsoft-Antispam-Message-Info: 4JnfOKwVajD1WtSbyy61qor+F9Y0/BiUpuwy6bKJ01apEU4n+4s84t7mv6AibWr6VDH8tFEKgWyUNSl8nbjdnk74yFx7jC2VmWckM7Wq7Kq2I0D2xuZANg3apX/3aEN/9tWixED4fg4O3NkZEtBd0by3DORavqpofAeMtwjDC7tlyJf4H+j6fqg6iwFTHGZ6uz1La6ZiBMlPkmHu74TeR2irl98NY10RZge5fUYxCsCrakiZG1i1kxCRVmGAYEfIwucNf+gHAuMfoAwEJ1cwnBxyJ/HzNsI0lSbwYSjsfpwfAkBzuDFJLBzu6rVPptBr/nCmmL15bIydRffxLqJ6sFqeDyM0l5XG/SR52J60LAW/Fu6H4y32zn44Ow0Egoh0WVupkgmVaPkkV/YXQWFlG5xE7MJyKRZuMQia6hsQ/bJ0vgaHeAwkwS+y/9F0z1Ieb9fGgMANXVo0oGUZq0/uLceGLDEiXwIrNtkMvAn75F9Q+0QvufyVV7awgMgnQI8FDr8gvZdJFL9FTAzrPdVsoc5wT1KGtCO75s24bMNMcjWkoa5hRw2N+Kxeffxi1V4z26Alwm3DU60VmM5/A21OU2QhYXnhWKL0X+Ayo9dEhiRrWXhsyc8JoduNW04XcFNKHwB4PuNLITIm81SHYu0N9Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(11063799006)(4143699003)(22082099003)(18002099003)(56012099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nl8LTS7s4+bmM8QALgx1qm3X1MXsP6Gf2YFGiKjlynDMtWna63xTCr2hfBLF?=
 =?us-ascii?Q?yq1heDyQNKQMPXUuemIFu4io0GBNYM70oAfImLWm+QgQig4hkkKFcz1hd/0P?=
 =?us-ascii?Q?aJoJUCuGcJdDadW6HO2mTVjitq3WFzm5ALAWgqGveXzMxhGnBgzklZx0v6w9?=
 =?us-ascii?Q?C0GyRwcm9KtzNNx/LeFcgccFfGHMsK/Lg9jhM5lx50bbbOeTFBHs0MLa1pts?=
 =?us-ascii?Q?PLnWxi2LmfBBw6TQK1mNCkID6In+rlpfRPT6Zy65xnSHC/tnxoQ56h6GECk2?=
 =?us-ascii?Q?WlTP4kYHitjUMbD/LVhgwX7mU/Gpw1K4ycPdC30tZZK9BSG4W+6+LkpL9qyy?=
 =?us-ascii?Q?4efq6hbOTkICFU78fz/37gNWOY7I9uNVh/URI8/oqPMalrN61SFwW0CYh5rD?=
 =?us-ascii?Q?39riumU3nVTT6qVG0XYJiA0YIxC3h+/QUohXBBNhBFbWGX7GTL8VAamBQyI4?=
 =?us-ascii?Q?3yWzSwVIoYbb5hXlbKY4ECGtA5maDoEjlFpwVOHyRULWYXd1LPohj5TocYXz?=
 =?us-ascii?Q?Ulcgbs4SCc4CUE4457osx5ogQFxDRPhOIDYbSKPUULFDAiumHWIDvB619/bv?=
 =?us-ascii?Q?pFcoyDpmaBFZ2zr5oTi22yMARlIJbgd6zmh1hCz3KOUK3uUR4Zi8kXhigkeQ?=
 =?us-ascii?Q?OSE+rtizACINsSICL+f0m4gNsbegs9eXnTwmECLryAmozC6qd+A0NJG8RIpv?=
 =?us-ascii?Q?QEnFN0fCqO+pX2tmSwpkV/2ecZ+o0t+2r9VSqvMULA8XRQlENua49fjWJGZa?=
 =?us-ascii?Q?AO/8KSnH4ooZG26cu5jrrIqddIXqjH9UiVEqOYiY+RoUSb0YUWBsE7wVsxC7?=
 =?us-ascii?Q?N34z0EfhFO9w4BeyIM/TKTkW9aUIJj83BqkMwbF3Hi/75PslZm48DSrvN3dp?=
 =?us-ascii?Q?C9A6VcCrIDuXG1eah4YJXThSJAMCXz82qJ0BGw7cPwPpcckX4Lx8MxBG8eTL?=
 =?us-ascii?Q?CfwLH/i9jH01Xesd+w+rSsSLLd8zKG670Yc1MQUkZIawwUKl+KA2xgSsjbC9?=
 =?us-ascii?Q?TsYnslgjzuC8Pz8nHmiPgOLgziQIpkGZSeWoRiJwr4fYtssBBWvE9b+WQGZU?=
 =?us-ascii?Q?F+YL+oHVX8GpRbSfuU+B8PcA+IIZOk1L2tpjSCTGObQCkBE3VCXqgA5V2yyx?=
 =?us-ascii?Q?NHwLY4iMxJxU7CXO8CztItrKpyrxgoD2Nqiq3GK3hvIKV0XIk6pVQQcZnkXC?=
 =?us-ascii?Q?LK4NUxD389fypn9Yw2qBup/t3JzADkf7xPTm76TO26ZTeK5PqHXK4OkXtY4U?=
 =?us-ascii?Q?RJ/yZTXa8oTKPmFI35odjc3NkNOv5WAlBiR1avK7wmJ0cAvDeIzcRWnL4glC?=
 =?us-ascii?Q?EN82ZWYaYgnhAgbwUjtiTbXk6N4uxwrKnCTxwFLuRX6sskFeroIzWpyu92oV?=
 =?us-ascii?Q?4YlP4+eHM1T1qsWWOEgHQJuk+Y3Tg3jNzEXXJGtqANw/SGCmBnnTRG7Lmxu4?=
 =?us-ascii?Q?KLZJKzon74wx611gAu+ijZrH/xdB43zak7QlSTnuafqkIiqIsDspB79TgiTC?=
 =?us-ascii?Q?ILlREqHo2ZOjGh1f5TMfmBVdSH6mEr0Ly+2lMkCjiBmuaR1gtclNyz6RJXHy?=
 =?us-ascii?Q?yMaHY0F1vJ83a64u9SI6ESNF5m1tsDPu+lJlxKimvIYnE1UAVcOc4YYdDNRj?=
 =?us-ascii?Q?ivM5H0g8XsywBJ71IKd7RCOIFFgbNbtRrOi0zUvKsj6DQuMnzE88WyEzdJsY?=
 =?us-ascii?Q?PUDOUrTetvN6ePhS6AU8QuhvcKS5mtR6vwbN0n0wM4lsS7Cj0q93clRM2eQW?=
 =?us-ascii?Q?ObZHTBVEJA=3D=3D?=
X-Exchange-RoutingPolicyChecked: Fe2+oZF+OxYrywsn99bXRZ0UORwkGPJhBlNAlnHdfkTVHFd86UpWMd5DAls3hDEsNdutVL/Y6frfCllijL6UPy3kSqynS0K4ldRi03G3pNMStVCWvHjBQe6k2rAYMdl8WuUpOxQD4MvWfPKtS8omJYFxeVgpMskwN9uv8f9PzCf0gFjj+8V1JdJ4F8GZkUIGW9o7H9N/PL0o+wDpQBH5CiDVBFGvi6iqgj3ocjcNxy55tlRTuGipFSKJoHblIqoKUkdtX3NYaok52LFrsCb9yiHItK89DBZX3Dgs02gtVQh32l/ka627xw7etPniXAqejrLfSMDMmtNfA+N72VXkYg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 345f5ed1-32b1-4887-895c-08deba5758f7
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2026 12:15:45.5227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N3yUQ819kK6Ir3QPiL1u3bXvLDwJJAGLIcJeNuSDqKesPvGcxtUiHvf0NzWEp1d9J5JSTT4BQly+J6NTjVDOng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8053
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:jani.nikula@intel.com,m:jouni.hogander@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BA2305CA59D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, May 24, 2026 at 01:54:04AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Sanitize link capability change handling (rev3)
> URL   : https://patchwork.freedesktop.org/series/166770/
> State : success

Thanks for the reviews and suggestions, patchset is pushed to
drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18542_full -> Patchwork_166770v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_166770v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#8411])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-tglu:         NOTRUN -> [SKIP][2] ([i915#15678])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@drm_buddy@drm_buddy.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][3] ([i915#9323])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [PASS][4] -> [INCOMPLETE][5] ([i915#13356]) +1 other test incomplete
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg2-8/igt@gem_ccs@suspend-resume.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-4/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#7697])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#8562])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8555])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#280]) +1 other test skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#4525])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#4525])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#3539] / [i915#4852])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#3281]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#3281]) +4 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#4613])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#4613]) +2 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][19] ([i915#4613])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk2/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4077]) +2 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3282]) +3 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pread@display:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3282]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@gem_pread@display.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu-1:       NOTRUN -> [WARN][23] ([i915#2658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#5190] / [i915#8428]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][25] ([i915#13809] / [i915#16193])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk8/igt@gem_softpin@noreloc-s3.html
>     - shard-rkl:          [PASS][26] -> [INCOMPLETE][27] ([i915#13809] / [i915#16226])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-4/igt@gem_softpin@noreloc-s3.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_pread_basic@basic:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#15656])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@gem_tiled_pread_basic@basic.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3297]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-rkl:          [PASS][30] -> [ABORT][31] ([i915#15152])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-3/igt@gem_workarounds@suspend-resume.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-1/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#2527] / [i915#2856]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglu-1:       NOTRUN -> [SKIP][33] ([i915#2527] / [i915#2856]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#2856])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#2527]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#16080] / [i915#16166])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#16080] / [i915#16166])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#14498])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4387])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@i915_pm_sseu@full-enable.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#4387])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][41] ([i915#16182] / [i915#4817])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk11/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#7707])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4212]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1:
>     - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#14888])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#5286]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#5286]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#5286]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][49] -> [FAIL][50] ([i915#15733] / [i915#5138]) +1 other test fail
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#3828]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3638]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#6095]) +175 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-19/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#10307] / [i915#6095]) +81 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk10:        NOTRUN -> [SKIP][57] +26 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk10/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#6095]) +63 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#6095]) +39 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#12313])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc:
>     - shard-glk11:        NOTRUN -> [SKIP][61] +98 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#12805])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#12805])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#6095]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          [PASS][65] -> [INCOMPLETE][66] ([i915#15582])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][67] ([i915#15582])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#12313])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#6095]) +39 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#14098] / [i915#6095]) +38 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#14544] / [i915#6095]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#14098] / [i915#14544] / [i915#6095])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#3742])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#11151] / [i915#7828]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-fast.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#15865]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#15865])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#15330])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#15330])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
> 
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#15865]) +2 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_content_protection@legacy-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3555])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#3555]) +5 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][85] ([i915#13566]) +2 other tests fail
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3555]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#13049])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#13049])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#13049])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][90] +55 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#4103]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
>     - shard-dg1:          [PASS][92] -> [DMESG-WARN][93] ([i915#4423]) +2 other tests dmesg-warn
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg1-15/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-14/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#13046] / [i915#5354])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#4103])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#14544] / [i915#3804])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev@basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][97] ([i915#1257])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_dp_aux_dev@basic.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#13707])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#13707])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#13707])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#2065])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#16081])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_feature_discovery@display-3x.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#16081]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#16081])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#658])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#9934])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8381])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#9934])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_flip@2x-flip-vs-rmfb.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#3637] / [i915#9934]) +1 other test skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][111] ([i915#14600]) +1 other test fail
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#13027]) +1 other test fail
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#15643])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#15643]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#15643]) +2 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#15643]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#15990] / [i915#8708]) +2 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#5439])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff:
>     - shard-rkl:          [PASS][120] -> [SKIP][121] ([i915#15989]) +7 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-indfb-plflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#15989]) +9 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#15990]) +7 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#15989]) +12 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk:          [PASS][125] -> [SKIP][126] +10 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-indfb-plflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][127] +54 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#15102]) +20 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#15104] / [i915#15990])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#15102]) +6 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#1825]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#15102]) +13 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#15989]) +3 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#15989]) +8 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#9766])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#15991] / [i915#5354]) +4 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#15102]) +19 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-render:
>     - shard-glk:          NOTRUN -> [SKIP][139] +88 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk2/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#15991]) +9 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-3-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#16012]) +5 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-8/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-3-xrgb2101010.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#16012] / [i915#3555] / [i915#8228])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#16012]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb16161616f.html
> 
>   * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb2101010:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#16012]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb2101010.html
> 
>   * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-4-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#16012]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-18/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-4-xrgb2101010.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#16011]) +3 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html
> 
>   * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#16011]) +7 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-15/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#15459])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-tglu-1:       NOTRUN -> [SKIP][149] +56 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#15709])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>     - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#15709]) +2 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#15709])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#15709]) +2 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7:
>     - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#15608]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#15608]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane_cursor@viewport@pipe-a-hdmi-a-1-size-128:
>     - shard-rkl:          NOTRUN -> [FAIL][156] ([i915#15913]) +1 other test fail
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-5/igt@kms_plane_cursor@viewport@pipe-a-hdmi-a-1-size-128.html
> 
>   * igt@kms_plane_cursor@viewport@pipe-a-hdmi-a-1-size-64:
>     - shard-rkl:          NOTRUN -> [FAIL][157] ([i915#15912])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-5/igt@kms_plane_cursor@viewport@pipe-a-hdmi-a-1-size-64.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#13958])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_plane_multiple@2x-tiling-y.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#13958])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#13958])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [PASS][161] -> [SKIP][162] ([i915#6953])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#15329]) +4 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#12343])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#12343])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#12343] / [i915#5354])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3828])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_pm_dc@dc5-retention-flops.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#3828])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [PASS][169] -> [SKIP][170] ([i915#9340])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3828])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][172] -> [SKIP][173] ([i915#15073]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [PASS][174] -> [SKIP][175] ([i915#15073])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#14544] / [i915#15073])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#15073])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#15073])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@package-g7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#15403])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_pm_rpm@package-g7.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#11520]) +3 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#11520]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-glk:          NOTRUN -> [SKIP][183] ([i915#11520])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk2/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#11520]) +3 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#11520]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-glk11:        NOTRUN -> [SKIP][186] ([i915#11520]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk11/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-psr2-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#9732]) +10 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_psr@fbc-psr2-basic.html
> 
>   * igt@kms_psr@psr-sprite-render:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@kms_psr@psr-sprite-render.html
> 
>   * igt@kms_psr@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_psr@psr-suspend.html
> 
>   * igt@kms_psr@psr2-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#9732]) +10 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_psr@psr2-cursor-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#5289])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-glk11:        NOTRUN -> [ABORT][192] ([i915#13179]) +1 other test abort
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk11/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#3555]) +3 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-3/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][194] ([i915#12276]) +1 other test incomplete
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk10/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [PASS][195] -> [FAIL][196] ([i915#15420]) +1 other test fail
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-mtlp-1/igt@kms_vrr@negative-basic.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-mtlp-2/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#9906])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-dg2:          NOTRUN -> [SKIP][198] +4 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#3291] / [i915#3708])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#9917])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#16066]) +9 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-rkl:          [ABORT][202] ([i915#15131] / [i915#15542]) -> [PASS][203] +1 other test pass
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-1/igt@gem_exec_suspend@basic-s0.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-mtlp:         [FAIL][204] -> [PASS][205] +1 other test pass
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-mtlp-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][206] ([i915#7984]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-mtlp-1/igt@i915_power@sanity.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-mtlp-2/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-rkl:          [INCOMPLETE][208] ([i915#4817]) -> [PASS][209]
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@i915_suspend@fence-restore-untiled.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:
>     - shard-glk:          [FAIL][210] ([i915#14888]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:
>     - shard-dg1:          [DMESG-WARN][212] ([i915#4423]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-15/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][214] ([i915#13027]) -> [PASS][215] +1 other test pass
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][216] ([i915#14600]) -> [PASS][217] +1 other test pass
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_force_connector_basic@force-connector-state:
>     - shard-mtlp:         [SKIP][218] ([i915#15672]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-mtlp-1/igt@kms_force_connector_basic@force-connector-state.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-mtlp-2/igt@kms_force_connector_basic@force-connector-state.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-glk:          [SKIP][220] -> [PASS][221] +4 other tests pass
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-glk9/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:
>     - shard-rkl:          [SKIP][222] ([i915#15989]) -> [PASS][223] +4 other tests pass
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][224] ([i915#15073]) -> [PASS][225] +1 other test pass
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg2-3/igt@kms_pm_rpm@dpms-lpsp.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg1:          [SKIP][226] ([i915#15073]) -> [PASS][227] +2 other tests pass
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg1-17/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][228] ([i915#12276]) -> [PASS][229] +1 other test pass
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-3/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-7/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          [SKIP][230] ([i915#14544] / [i915#3281]) -> [SKIP][231] ([i915#3281])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-rkl:          [SKIP][232] ([i915#3281]) -> [SKIP][233] ([i915#14544] / [i915#3281]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@gem_exec_reloc@basic-softpin.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][234] ([i915#14544] / [i915#4613]) -> [SKIP][235] ([i915#4613])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][236] ([i915#4613]) -> [SKIP][237] ([i915#14544] / [i915#4613])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          [SKIP][238] ([i915#14544] / [i915#3282]) -> [SKIP][239] ([i915#3282])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [SKIP][240] ([i915#13717] / [i915#14544]) -> [SKIP][241] ([i915#13717])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-rkl:          [SKIP][242] ([i915#3282]) -> [SKIP][243] ([i915#14544] / [i915#3282])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@gem_readwrite@beyond-eob.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          [SKIP][244] ([i915#2527]) -> [SKIP][245] ([i915#14544] / [i915#2527])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@gen9_exec_parse@allowed-single.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-rkl:          [SKIP][246] ([i915#14544] / [i915#2527]) -> [SKIP][247] ([i915#2527])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][248] ([i915#7707]) -> [SKIP][249] ([i915#14544] / [i915#7707])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@intel_hwmon@hwmon-read.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-rkl:          [SKIP][250] ([i915#14544] / [i915#5286]) -> [SKIP][251] ([i915#5286])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-rkl:          [SKIP][252] ([i915#5286]) -> [SKIP][253] ([i915#14544] / [i915#5286]) +1 other test skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][254] ([i915#14544] / [i915#3638]) -> [SKIP][255] ([i915#3638])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][256] ([i915#14544]) -> [SKIP][257] +25 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][258] ([i915#12313]) -> [SKIP][259] ([i915#12313] / [i915#14544]) +1 other test skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][260] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][261] ([i915#14098] / [i915#6095]) +5 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][262] ([i915#12805] / [i915#14544]) -> [SKIP][263] ([i915#12805])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][264] ([i915#14544] / [i915#6095]) -> [SKIP][265] ([i915#6095]) +5 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs:
>     - shard-rkl:          [SKIP][266] ([i915#14098] / [i915#6095]) -> [SKIP][267] ([i915#14098] / [i915#14544] / [i915#6095])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_ccs@random-ccs-data-yf-tiled-ccs.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_ccs@random-ccs-data-yf-tiled-ccs.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-fast:
>     - shard-rkl:          [SKIP][268] ([i915#11151] / [i915#7828]) -> [SKIP][269] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-fast.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-rkl:          [SKIP][270] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][271] ([i915#11151] / [i915#7828]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#15865]) -> [SKIP][273] ([i915#15865])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_content_protection@atomic.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-rkl:          [SKIP][274] ([i915#3555]) -> [SKIP][275] ([i915#14544] / [i915#3555])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][276] ([i915#13049]) -> [SKIP][277] ([i915#13049] / [i915#14544])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          [SKIP][278] ([i915#3555] / [i915#3804]) -> [SKIP][279] ([i915#14544] / [i915#3555] / [i915#3804])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-rkl:          [SKIP][280] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][281] ([i915#3555] / [i915#3840])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-rkl:          [SKIP][282] ([i915#14544] / [i915#9934]) -> [SKIP][283] ([i915#9934])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][284] ([i915#9934]) -> [SKIP][285] ([i915#14544] / [i915#9934]) +3 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#15643]) -> [SKIP][287] ([i915#15643])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][288] -> [SKIP][289] ([i915#14544]) +18 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-indfb-plflip-blt.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][290] ([i915#10433] / [i915#15102]) -> [SKIP][291] ([i915#15102]) +2 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          [SKIP][292] ([i915#15102]) -> [SKIP][293] ([i915#10433] / [i915#15102]) +1 other test skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          [SKIP][294] ([i915#15102]) -> [SKIP][295] ([i915#14544] / [i915#15102]) +6 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-shrfb-pgflip-blt.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-shrfb-msflip-blt:
>     - shard-dg1:          [SKIP][296] ([i915#4423]) -> [SKIP][297] +1 other test skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-shrfb-msflip-blt.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][298] ([i915#15102] / [i915#3023]) -> [SKIP][299] ([i915#14544] / [i915#15102] / [i915#3023]) +5 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][301] ([i915#15102] / [i915#3023]) +4 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][302] ([i915#1825]) -> [SKIP][303] ([i915#14544] / [i915#1825]) +1 other test skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#1825]) -> [SKIP][305] ([i915#1825])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#15102]) -> [SKIP][307] ([i915#15102]) +5 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-mmap-wc.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#3555] / [i915#8228]) -> [SKIP][309] ([i915#16012] / [i915#3555] / [i915#8228])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_hdr@invalid-hdr.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          [SKIP][310] ([i915#15458]) -> [SKIP][311] ([i915#14544] / [i915#15458])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:
>     - shard-rkl:          [SKIP][312] ([i915#15709]) -> [SKIP][313] ([i915#14544] / [i915#15709])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][314] ([i915#13958] / [i915#14544]) -> [SKIP][315] ([i915#13958])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][316] ([i915#12343] / [i915#5354]) -> [SKIP][317] ([i915#12343] / [i915#14544] / [i915#5354])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_pm_backlight@fade-with-dpms.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][318] ([i915#15739]) -> [SKIP][319] ([i915#14544] / [i915#15739])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][320] ([i915#11520]) -> [SKIP][321] ([i915#11520] / [i915#14544])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][322] ([i915#11520] / [i915#14544]) -> [SKIP][323] ([i915#11520]) +1 other test skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          [SKIP][324] ([i915#14544] / [i915#9683]) -> [SKIP][325] ([i915#9683])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr-cursor-blt:
>     - shard-rkl:          [SKIP][326] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][327] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-blt.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_psr@fbc-psr-cursor-blt.html
> 
>   * igt@kms_psr@pr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][328] ([i915#1072] / [i915#9732]) -> [SKIP][329] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-2/igt@kms_psr@pr-cursor-mmap-cpu.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-6/igt@kms_psr@pr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-dg1:          [SKIP][330] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][331] ([i915#1072] / [i915#9732])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-dg1-18/igt@kms_psr@psr-cursor-render.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-dg1-17/igt@kms_psr@psr-cursor-render.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][332] ([i915#14544] / [i915#15243] / [i915#3555]) -> [SKIP][333] ([i915#15243] / [i915#3555])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@kms_vrr@flip-dpms.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-2/igt@kms_vrr@flip-dpms.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][334] ([i915#14544] / [i915#2433]) -> [SKIP][335] ([i915#2433])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          [SKIP][336] ([i915#14544] / [i915#8516]) -> [SKIP][337] ([i915#8516])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk:          [INCOMPLETE][338] ([i915#13356] / [i915#14242] / [i915#16236]) -> [INCOMPLETE][339] ([i915#13356] / [i915#16236])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-glk1/igt@perf_pmu@rc6-suspend.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-glk6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][341] ([i915#3291] / [i915#3708])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18542/shard-rkl-6/igt@prime_vgem@basic-read.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/shard-rkl-4/igt@prime_vgem@basic-read.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
>   [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
>   [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15542]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15542
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
>   [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
>   [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
>   [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
>   [i915#15912]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15912
>   [i915#15913]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15913
>   [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
>   [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
>   [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
>   [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
>   [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
>   [i915#16066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066
>   [i915#16080]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16080
>   [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
>   [i915#16166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16166
>   [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
>   [i915#16193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16193
>   [i915#16226]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16226
>   [i915#16236]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16236
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18542 -> Patchwork_166770v3
> 
>   CI-20190529: 20190529
>   CI_DRM_18542: 60d51bdeabf700864c26264c51b146a86b0a9124 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8936: 98b65acc4f6edf68cd52b30f27b83049c4c5c83b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_166770v3: 60d51bdeabf700864c26264c51b146a86b0a9124 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166770v3/index.html
