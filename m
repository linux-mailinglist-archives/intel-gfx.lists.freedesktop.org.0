Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP/4DA432GkaaAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 01:32:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 952ED3D07E2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 01:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C3C08921E;
	Thu,  9 Apr 2026 23:32:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gof3+va8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C298B8921E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 23:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775777546; x=1807313546;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9EXwYknB3/5I1NJW1xc/Gpfzt7Y8H3iBpvIFltte6FA=;
 b=Gof3+va8F90TtftF+Dg4mw06fGZmhKONfGmWcSN2VAQ5JdyR4AexrOIm
 t+7nfkziUp9PoN7y/i/wIPydtgzzRUMSh+ZjTyMzqLj5CV1GbzHqLss3u
 QdFm5D4KrzOy4lWOvBO31dHzbPBP8aNIFvev6P93h2wR3cMAskCmEG3rV
 cX/T45g7hKorJXRUfoL0JpHDDXZ9GrZmAUXu+KYSZi6iqyRiniBYPZGdT
 7qBIttb+TxXAtO8GzNPQ9e4oWAfhLGEDmVCHHtRbGiPVUnO4w5mI4nbJ/
 LtOOTTWb+PwZszWnO2o5Nf2WzBKiFg92oIutLD50NQ/kJxDY6CyvLvpjE g==;
X-CSE-ConnectionGUID: njMcmaveSJ+scQfWi/bMgw==
X-CSE-MsgGUID: /89vFT7aR6urh/T9iQHJ4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="80389591"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="80389591"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 16:32:24 -0700
X-CSE-ConnectionGUID: dKHwhb7VTjeqtccK3KNOGw==
X-CSE-MsgGUID: 5zo3RJEiSAq9yo0t5BAk4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="222430203"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 16:32:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 16:32:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 16:32:23 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 16:32:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iM174rmmaF+vp9z9H6kzsfOBZuvYY7KIl0Dx21RvqqhvE0s1Hnm7jQZSPyVgJ+16DN6zZd66z3mnodLTiOtI4FcqX+hHPqBA12bTXwIYUJ+RQkNbNaH5i7DN6zc7sYLAn7bnTNgG+io3miKzHyf4HV5kWRBNNBpKKjVZpgXvppSRbhqUbyKxpHgChff7s2shj7wBI4aongpw2HuUkI81sOELGEiZYSn9egoKE3oAtES/NmKvXEdnPMeIGVsHk1qv2dlk9Vy/wlZuBZvPZd+0CyA4xnoVZGEWGClRp0cTSMoK1oy5XVUwP9O1TvN4faMgWfCVfcp279uGvXYR4Upd/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BTO0mLXDxE6aWLO1Nyy404e95vYsa1uJWl0Jc5BklhA=;
 b=Gsn0uLXLpDSqx/XdYghXVFt7wudCoa6Vpd2SxO3/RK3exaXoG1Kn0jJ0CZSuNPnixmyctHhbtR4Sqb6vrPK6X9LSK8hmI/vk2fpVmKI/4c30KEr30eLXmg2NAlUc7oUPTr1Ec0dvl4c2we6plH51qjBgQba0zYPmRbqeaOtmJHu+ud25qSMSsfQQwRUQUabpTFsk3YARW1lkmBPIRWRAj+S8yfgmacGKM5KEADiIOMBjEzfR2WaH2TdosVf/SZ5KKe84EI7xtIdZlIijHj0fg38VOJj19g87FKq+AHOn3tm1ZrzRzeJSQ3aBdOCB9rZRVYAZkEzZEsffHZsj7sAABA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 9 Apr
 2026 23:32:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9769.041; Thu, 9 Apr 2026
 23:32:19 +0000
Date: Thu, 9 Apr 2026 16:32:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/i915/bw: Rename struct intel_sa_info to
 intel_display_bw_params
Message-ID: <20260409233217.GD6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-3-23c53afa7db0@intel.com>
 <62fbacf46642c5b3ab7b36f01f5dd82b5c73b32f@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <62fbacf46642c5b3ab7b36f01f5dd82b5c73b32f@intel.com>
X-ClientProxiedBy: SJ0PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB5770:EE_
X-MS-Office365-Filtering-Correlation-Id: 895f4744-0d8b-4dc5-1384-08de96903e31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: uPCZu2jGoMKE8QcyBgqSNMEyCeSTsCTwRUpK+rAqeuAwLfKF7VtxieX+VzVnu+a78cBle8JbMRtE/SWuJIrv2mYAfh6SIZ+NMKiIqtynt3JZI1XMsFY1NZGndMjDbu9fbGby4jseSGSyYb7tDGjFuAWHZ+iFwY20JSPoo5x43isgD268NnZaaYCE6PrQtK9N69qTzhcyE0K07gZUsEQSTMKWyygoV/2Cbjwn08/RMSupbgy8HDCg+PvMMzYUGm2p35WLa7teHKlf62JDUlImpf6m4MKupJV6Hbe92mpFJB3LuumlY2BlwaL6gKur7HlkfZ36D1n3DIwVe/Nhix9oLrec+6xozLnxX+pdJT5ptrUI3TpPuIqM6e7/gWTxrjc4YPvZrQy8qh6omSlK3iTGGqs9+fWrRifFYcPM4fyjEMQZ4yYAhcdBQyNu0v/HNMBh0K+tHzi0l9TVNbIq1HjKslK3jh2KDGFi0gBAvhEXY/qhAhnD5Cc7Sm6DskJqGXwNc31nQrRry/L1qPh2TZD1fNTyB6R5/F7ghMCk0CerddZVrTUCwR3FnS7ritjxCJG7jEjZvp4NfAVATgyILWVJqiEUZf7fLz+8H+f7jqc8FEswd25JB3GlVuJjPdUnsKrj8+NS6wAuMxfbQ00+f1cVuyF8KJu74vWqf7e7vEZr86Z58KzAhzCgUr/fJ8SuWO1uLmAlmYuvLuUYv7GLEQPBNCuR72E0QoysoouMkKpaKac=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dBxLn6+2Z/Na5/EJp1Oxx5xandFch4p3kM+OW9mFMl8PmR5E447L3nRbrliI?=
 =?us-ascii?Q?WjCFkqXF6xSAuNYbEHeavnfBY8MOLahjpJyvcDHaVcYSeFdy24cBvWe9iysX?=
 =?us-ascii?Q?gvEfTnU6g/w+GaEVbuAxKydkr0ZpVhVydUf5jpDQDofnC+Nx6I4GM3juxGzK?=
 =?us-ascii?Q?4owe7ArWNigkagVD/UFHKPacM7cL2zto7fbCurLwffVaPn/v62EjQTK7QmG0?=
 =?us-ascii?Q?LJj/7xuRphvfIr2WADLguxj4+uo75zEOwoByJDF6Ip8Kgx8SnW0XrwcqkloA?=
 =?us-ascii?Q?rybA9iqjN270AGFeWMQk+BzfXfZbspXgVUzgjgM3Tpuz6H48XCEXK/MbLWWz?=
 =?us-ascii?Q?im6h7DaEjEhxiN4owCAyMZemRDmx6VQYWYKvSqGzxEYXyTjzHwgH5cgjFd7q?=
 =?us-ascii?Q?Vbg3lZpzY1qxxKPDbprhgZ17XqfrpzjArNnizG8OTedvn50NmRo8FXaq6bsm?=
 =?us-ascii?Q?8YZ0ikr6lpHj+8UBnWIgj4V/XMt9waVRRkCN6tYyiMcyxAA5aQJf/mlKgeuM?=
 =?us-ascii?Q?KfMDRfEAbxBQeus5jaGVif+d/eKCO1ZJLeWaQAB/3o5fRidqFOzXklWxgPNS?=
 =?us-ascii?Q?IHOM324LjjHR2juD57p1cJVRFuoj1npE9+l6tWjArQQL4/NJz3Rcec1rGeGc?=
 =?us-ascii?Q?3TnhN//+CtZe0YGKcRpWeHl9WcxVvNDIq4z16br0k568SBwsQugW43MjSuXl?=
 =?us-ascii?Q?vxIXYybTts6Zcy0/QnGqtTrTEoFd5edFSbHq4nei9uC+PXLSZbQpJeBVOg0X?=
 =?us-ascii?Q?YrYvn0B0VLiqgrD4Fea+8BXRNp4wi9skbN2JTDILOsLTBAemUYUEemhogCn5?=
 =?us-ascii?Q?YZaRAFj93OlPazzMudEwmxWFadevtN1ODZxo/5lMIL/ylg9PT253pWEhR096?=
 =?us-ascii?Q?USdXmdtw4LYsRmYfWAfqS+2nvUrX0dLQzbV8wHY2e7AXny/U1n6aa/nCAFLv?=
 =?us-ascii?Q?+FCun/E//EgfYyPOecn77YWgDhczssWFYrZbRVCpyNW1K3lh4dYdDhx9avEV?=
 =?us-ascii?Q?nwv4CppqZ/A4X90a/iOyj62eNj5VjqPr2fObdT2Lqt8e68w67SjjF66ZtEI9?=
 =?us-ascii?Q?ojt+rgDdFnKX6dmrFNUWIR5KHwxN1FmkammPoz0x2JGqpgM8OMhSfajxveNG?=
 =?us-ascii?Q?DbEdiMA2NhZreXr2lQ5P+YdHwb6zDb4NnBe3nnmsyPy0b6iyxhzg8+aPTIGa?=
 =?us-ascii?Q?lSN+tFPxDMVgrDTpkvnwBZelNbiSfejvr+oJUHHW+5qzO0IaGlc9WlEUgo60?=
 =?us-ascii?Q?Z39RwmPG05b/4Ezjmqkgqjt0Sxf9nebt9AxunK5HUiLj/xE6x5fAPFV0/iXN?=
 =?us-ascii?Q?NnVCvSy9CjN50Q1wnis39Sg/igNP2SuBW75zHktMuIZOVv89o6gYni7FzolV?=
 =?us-ascii?Q?c0km0OcZILwSSA2q60fY54g7z3CSF+2ZAK+Wkd8Ag5S60iqYnLnTXITAg91q?=
 =?us-ascii?Q?uESbCDBgZO34X1E6HQx5FWIM0Nuvftc1kq/gh+mv4V7aU4pJ0EWe0CWRJF6y?=
 =?us-ascii?Q?JoW6u6gtdNLh+A1QtkckKs3T1LJYAiDqbXhRUTtCPhHM6X5KnUjG4n5UayE8?=
 =?us-ascii?Q?IE7oVYQC/9+tTCHwyEk/uGDQ/Q2efYwrPG3sMzWktic8eyTo/q8pljrctTzY?=
 =?us-ascii?Q?P4r6gy4QLYxmIgMSYinr75ohbK5Taulu1inbqs33XtUIWME1ihAk20SVREw2?=
 =?us-ascii?Q?Fr/LcoXyXgC4p+mcbRwXnKhNTGJ3piY/b/3uMNGZMK4X3xa8LWvPGJHrZtTf?=
 =?us-ascii?Q?70Esixp9KhBHQCPxniSscZ6ozcneuHA=3D?=
X-Exchange-RoutingPolicyChecked: P2Ml8mmIwO8bCH8ip9jW85Dn3WpP1es9lV+iK9LgmhoeKShu2vK7IYgrLRIeRT0aRfwd+5j+bm5o0XwtjlJRjbIyOo2vJHwGui2LbHfsnPd2FATqd4SnOlG/Rsj8/gVvkpcmTBVZtGZQyo0zIAzoVU8HdsCK52pHPIlJ7pwIaRmGN2qxKFEG2hmvs7cpldsFV4k/cze425f7xWGocZ/88R+Gl/dEE9EDnnNxffGacQ4LOA9RF8wkL8wP7JyPsyjrPeBsZJuw24mUfrfVDan0oF7jvHfzQpM3jLuVWnYpXk8Cw+HfNi8P+eUXVwZjwfaGh+2tuMw0QvkgUDZqp2qC5Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 895f4744-0d8b-4dc5-1384-08de96903e31
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 23:32:19.7244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OJovUr4uNaWY4hHMY0WfXZvpavsCDQXzt4K55dZA7BvTaBlM0ACDt/YiXF968JpTuNG/5eQEXUf3Dg9WlJnMrMSl93mKE6hi+fiiS/DgbzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:gustavo.sousa@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 952ED3D07E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 10:20:28PM +0300, Jani Nikula wrote:
> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > To align with struct intel_platform_bw_params, rename struct
> > intel_sa_info to intel_display_bw_params.  Also add comments to contrast
> > their purposes.
> >
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 38 ++++++++++++++++++++-------------
> >  1 file changed, 23 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 654876215ace..64c6f18346bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -375,6 +375,10 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
> >  	return dclk;
> >  }
> >  
> > +/*
> > + * Bandwidth parameters that are tied to the platform (as opposed to struct
> > + * intel_display_bw_params).
> > + */
> >  struct intel_platform_bw_params {
> >  	u8 deprogbwlimit;
> >  	u8 derating;
> > @@ -496,34 +500,38 @@ static const struct intel_platform_bw_params *get_platform_bw_params(struct inte
> >  	return ret;
> >  }
> >  
> > -struct intel_sa_info {
> > +/*
> > + * Bandwidth parameters that are tied to the display IP (as opposed to struct
> > + * intel_platform_bw_params).
> > + */
> > +struct intel_display_bw_params {
> >  	u16 displayrtids;
> >  	u8 deburst;
> >  };
> >  
> > -static const struct intel_sa_info icl_sa_info = {
> > +static const struct intel_display_bw_params icl_disp_bw_params = {
> >  	.deburst = 8,
> >  	.displayrtids = 128,
> >  };
> >  
> > -static const struct intel_sa_info tgl_sa_info = {
> > +static const struct intel_display_bw_params tgl_disp_bw_params = {
> >  	.deburst = 16,
> >  	.displayrtids = 256,
> >  };
> >  
> > -static const struct intel_sa_info rkl_sa_info = {
> > +static const struct intel_display_bw_params rkl_disp_bw_params = {
> >  	.deburst = 8,
> >  	.displayrtids = 128,
> >  };
> >  
> > -static const struct intel_sa_info xelpdp_sa_info = {
> > +static const struct intel_display_bw_params xelpdp_disp_bw_params = {
> >  	.deburst = 32,
> >  	.displayrtids = 256,
> >  };
> 
> So if these are tied to IP, why are they still named after platforms?

Although we're not allowed to use "gen" terminology with newer IPs,
"gen12" and earlier are grandfathered in and still okay to use since
they existed and were in widespread public use when the new rules came
down.  So we should use gen11 and gen12 in place of ICL and TGL here.

As noted on the previous patch, RKL was a weird exception to all the
rules and I'd be okay explicitly forcing it to use the "gen11"
structures even though it's officially got IP version 12 since it kind
of makes sense from how they frankensteined that platform together at
the hardware level.


Matt

> 
> Nitpick, you'll never see me use "disp" abbreviation. It just doesn't
> abbreviate enough, only makes stuff harder to read.
> 
> >  
> >  static int icl_get_bw_info(struct intel_display *display,
> >  			   const struct dram_info *dram_info,
> > -			   const struct intel_sa_info *sa)
> > +			   const struct intel_display_bw_params *disp_bw_params)
> >  {
> >  	struct intel_qgv_info qi = {};
> >  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> > @@ -544,7 +552,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >  
> >  	dclk_max = icl_sagv_max_dclk(&qi);
> >  	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> > -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> > +	ipqdepth = min(ipqdepthpch, disp_bw_params->displayrtids / num_channels);
> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> >  
> >  	for (i = 0; i < num_groups; i++) {
> > @@ -552,7 +560,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >  		int clpchgroup;
> >  		int j;
> >  
> > -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> > +		clpchgroup = (disp_bw_params->deburst * qi.deinterleave / num_channels) << i;
> >  		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
> >  
> >  		bi->num_qgv_points = qi.num_points;
> > @@ -595,7 +603,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >  
> >  static int tgl_get_bw_info(struct intel_display *display,
> >  			   const struct dram_info *dram_info,
> > -			   const struct intel_sa_info *sa)
> > +			   const struct intel_display_bw_params *disp_bw_params)
> >  {
> >  	struct intel_qgv_info qi = {};
> >  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> > @@ -634,7 +642,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
> >  	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> >  
> > -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> > +	ipqdepth = min(ipqdepthpch, disp_bw_params->displayrtids / num_channels);
> >  	/*
> >  	 * clperchgroup = 4kpagespermempage * clperchperblock,
> >  	 * clperchperblock = 8 / num_channels * interleave
> > @@ -647,7 +655,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >  		int clpchgroup;
> >  		int j;
> >  
> > -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> > +		clpchgroup = (disp_bw_params->deburst * qi.deinterleave / num_channels) << i;
> >  
> >  		if (i < num_groups - 1) {
> >  			bi_next = &display->bw.max[i + 1];
> > @@ -886,16 +894,16 @@ void intel_bw_init_hw(struct intel_display *display)
> >  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> >  		xe2_hpd_get_bw_info(display, dram_info);
> >  	} else if (DISPLAY_VER(display) >= 14) {
> > -		tgl_get_bw_info(display, dram_info, &xelpdp_sa_info);
> > +		tgl_get_bw_info(display, dram_info, &xelpdp_disp_bw_params);
> >  	} else if (display->platform.dg2) {
> >  		dg2_get_bw_info(display);
> >  	} else if (DISPLAY_VER(display) >= 12) {
> >  		if (display->platform.rocketlake)
> > -			tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> > +			tgl_get_bw_info(display, dram_info, &rkl_disp_bw_params);
> >  		else
> > -			tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> > +			tgl_get_bw_info(display, dram_info, &tgl_disp_bw_params);
> >  	} else if (DISPLAY_VER(display) == 11) {
> > -		icl_get_bw_info(display, dram_info, &icl_sa_info);
> > +		icl_get_bw_info(display, dram_info, &icl_disp_bw_params);
> >  	}
> >  }
> 
> -- 
> Jani Nikula, Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
