Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEgjNvmNqWki/gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 15:06:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B318213055
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 15:06:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A96F10EBDB;
	Thu,  5 Mar 2026 14:06:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NerOuSps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD8F10EBC8;
 Thu,  5 Mar 2026 14:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772719605; x=1804255605;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=8Zzp/ormxdjdwK2BTXHBC3gs+EzvVzhJ5DLUurqfNKE=;
 b=NerOuSpsfzQI94mSAqciMF0+27cVWNg2LjNSgOPvz2zQGqPn9VeG0UE9
 0QX3ZDgSAr18zf9L+/GFBIBO+tdnWcIayT2bvqpo8eCT2JDYl+KiaOzE+
 zLtFphO5X1li9ezVMFcSSGCpW8n9iZBnTWDkpaY4P9BBGyNPfV3hg+j7j
 BAupBm3uGxrfMNV1sKHc3qx3mRctB4ZtCxjypAAmqR132WBvaODBWcxC8
 wp46g6lx5q32f46NfzZkbjcCB/QSGRtEfA82xMXqr9f6+B2ncv9zKPlMk
 N+CBxjW2T4eom5O4+CuQkVy9E7OLfPGvJMrIO2ifB0w3UFsfpPBICabmj Q==;
X-CSE-ConnectionGUID: fptFxViRQSi2+Orx5JGfZA==
X-CSE-MsgGUID: x6ee0QOeQha7kY27ldggVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="77680238"
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="77680238"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 06:06:45 -0800
X-CSE-ConnectionGUID: vgZLtdgYQf+JFihpbNq3YA==
X-CSE-MsgGUID: rcExzPnJQX6FXTPG1CMt6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="218647829"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 06:06:45 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 06:06:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 06:06:44 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.16) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 06:06:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iG0JLTrd65qaSUv3T3vEplB49fSABLgBtW9uLdEZGfATJtcUq+clLxsQbP2oR5F5VIverR0wHx80rn7uSsEfbEdNLsHonjNR5Mrx5u323TJHBE8Pz5aoxcqT+eDqkP6fLVhGJJHl22G+dtkBgL8aa3iKgyI35VwrFU6vIbHYsVqGlK+HZplqC75+rp7PqKRHiNv/AUpK6M7nv7DbLon+eoR33UC/w/LmO7vkZOXKOoY0vu1FhwTAf/xfvK7tASedDULIr+SvhzFXH9saFCoEUej+4L+eHPB5alUAaw0HGIj3TWHPRSmKHnmNBg6N/Yxq1uYXTdg0BvLDdK1ue+Y9Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dGQgvIPB8eF3Y1vKhW77qrdE9RjoCKK/sOpkZdFYt+E=;
 b=CxfbHkzOZh2fP4N8yStUREM/9t6BV1GFtPjrgg0tuSCO0TW+gNtGeEuVtztLYyxow5/tBb2INi5nPTGAwB5ayoKft3XHwq+MwnD23ySGOBrEHPvEC7ELociA6LbWSDkIuIoxl/CoIIW1b2wexORSy9o2ZuVq1xinJm6+tljHouUHAj+Uz7Wo9akab5tWcFfwKIg1kRfV/E/vzhR+5Ez79pgu7XcKIgkqM2lleqF0XGeSPP0g8CkKKVVVCJW65sr/mZCPRxp5zsk+40zqU4luJ44ZVzCqwhvI7iXsGx7Iiiyw04gZuC1V3ChVPq/9K5fZD0eM+uA42mP5jwiWBhMqag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7067.namprd11.prod.outlook.com (2603:10b6:806:29a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 14:06:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Thu, 5 Mar 2026
 14:06:41 +0000
Date: Thu, 5 Mar 2026 16:06:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <jani.nikula@intel.com>, Arun R Murthy
 <arun.r.murthy@intel.com>
Subject: Re: [PATCH v6 1/2] drm/i915/display: Panel Replay BW optimization
 for DP2.0 tunneling
Message-ID: <aamN6sXMXoOgZpBs@ideak-desk.lan>
References: <20260305122011.3297262-1-animesh.manna@intel.com>
 <20260305122011.3297262-2-animesh.manna@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260305122011.3297262-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0057.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:271::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7067:EE_
X-MS-Office365-Filtering-Correlation-Id: be776df5-1b16-4aa6-574a-08de7ac06d1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: Bp3Qjl3GT6KI17Gf2pWH77uU29HwA7fILi+rNXU6/oiYK+Mts9s+/eWVsoJ2KLQ4/F6rvseb1tS3RZiKyqCJQjph2FlrL5wodCrNW5WqWui7xB4dC6bn+cGzOvVvFlDifzuo4PUDEiBVoE4kKRKSyQ413L1cG8trjfcg6kfgeqsALOufWaFwhxvyQVo4r+bFjUWbSXroHUUzbRaJAw8WjryNeCzqY2w+iepMyRoHgMruhbPEh+r14j8ZVzch+gHPoYUXsFYJ1cmKHBEH/Qj9UfFQfOdQk67Ub0V6k3JLP74M8xc7spTLlrv9FRX+GJv6C5iDL+cZ8PJjiW+1L5mTTyLX9aD5uoFi74z9cepSPhrjsqihHPLhz/RKPrtBmMlT+h+q2rTvPZbuvEs0FVYOoddyUaHFbj4fwh5uJbRK5twMfo3DKBYFIWQn3IzZe11EO7dh7KwfWqorhxhDy/z5y5AoDksV8VlVEqtX9LBq3oUitx7Vam3mdxD7zvhp7sf6JqJtcY2ijNW47PUkc5XPawLQC3EmFitrFO0KuKANcsXS9fFzwjPEfSU2UKtkkWAEL67vF9GOojykt9raC9M12jaqzx44cbqEIZ7aIJJiATgO9g/mn4Hiy5xNK60es23+nJQ60gcLQlY2zqPQKAjIb5l9lxKAzumdWxMnm64AZpcmpd2sYjYGm0teNzotzILR342ATaSeADyKLUlEZG+w8B5TSkj1Phz2pogrEbU7bqI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0IV2cfTa753wKjPZdazcjiWkfOcDYVa5qSjxd8A0d6LVzFMbYj6gF5NZlCUK?=
 =?us-ascii?Q?aDGBNTVJeF89RnEwaTuAA79YfN2Mjyk8yh8FcF7OjzUigAZS3Fuk3GgDKR37?=
 =?us-ascii?Q?oCykLFYcaRD8MQXraOEWZjb83xPFsCBu6ki1pQKsK9YukTKyrcs2ohFa0UH8?=
 =?us-ascii?Q?SefxMGRvwD+EkKkk8GXCGsYvIDhcDqLLu2uTbPyNTtVa4GGXLBHbmUiVO0Sq?=
 =?us-ascii?Q?pWcLWwF7uthLdK3n55VYIniTZ/3dFCJZDEhk3HCKpqVK0jZ+wLxVKgPfA+MS?=
 =?us-ascii?Q?NKGysuVoID3UYhUKMgQCzlGH8+ADcZ0op3t5/MWg6UNbgy2c5zK+nPkgjFbl?=
 =?us-ascii?Q?szUhr/OIDHA5VC7P38n9fYIPVZx40ucIqFSsBdZX6cQw4BtdZYpJDfwhBPk/?=
 =?us-ascii?Q?e0y0mZzzSfYITN8Zt+v7v8NQK/fDtJRXEgtBrtu+X7K/OI8LAsk4zg4rJJpc?=
 =?us-ascii?Q?Sta4u4JsYVyRJXJIui67on3RvaspQEvzk5ovjh/tzZXsB6HEItDX3jNl9UC9?=
 =?us-ascii?Q?QArquk4E0CxBdx06UV0c3GxcG2+i3ILlrlhvjlKObeBrpcliGkZ134mxV9pV?=
 =?us-ascii?Q?pY8W6iQq7wvXTA+HJIxQT9b4HOVqdMXSunFVjhp3LCD02r4kIQtNY14cQt1T?=
 =?us-ascii?Q?cOPjSxn23avtA3YsTlP6ZjAHLr8mfbhQBnlwVrf0JWBtbYU+yFDEiE0LRCkR?=
 =?us-ascii?Q?gFibRw9ITJ+gCUM5aTpZaSFMtKs+rtR6Zemwp6wecY4Frg7ZW+fkjI/KTIjd?=
 =?us-ascii?Q?VbBdlJSZtgeomDJ/9UswSdVGEyOSu0Xy1Ns6QhIyNhlvTnmI7L6kg6ELVL+Y?=
 =?us-ascii?Q?Im7pR+o+XeY37N512Mji/Ncmc47BD6P/2MOI22QMoAmSa8SWkeUjS7Cl+662?=
 =?us-ascii?Q?zFHb6jXwjHDTKFtGTDU30af8aGT+QmAv5VPVKHVOXrNe5cQz4blW8N4kHino?=
 =?us-ascii?Q?BMzutt92od/NCOQ8wMOg2Ecg6+G8JQxjdS9IHHj37/Xi3oPKRzWJE+CFbqTy?=
 =?us-ascii?Q?4l1bvFQ/SNB44Z9XZMSyy5WA6rTNQMNaajK0ICJZeqh2zJRXJWhkxgf/5hDW?=
 =?us-ascii?Q?X+QChs01YHEBEOvV0Pf1UjfYB1JDieYiEQGJTTRwnPuhTY1MjiJDDN2aYuWh?=
 =?us-ascii?Q?+NnwBItJcc94B8SAmgASI8N21MjHFr3dTI08BJYJgYgRdREpXNpN60jFyEKa?=
 =?us-ascii?Q?Z4jBOxyMQPI0ZYCrr4LzfsRT8AmHHmkW9iWNA+ZJhSFG3qRBgiODwOwsxWjm?=
 =?us-ascii?Q?Y/oaBLRlrTqBLPMf7atAT8Bwe30Eq29+cplKZLwWnlwhala4lqPtXDFEvTBc?=
 =?us-ascii?Q?+LdR9LhcClxGL/cJChaIRW+a8MHqWUNFkhRDeoj6u25eYiqX8BopeMMGcWh+?=
 =?us-ascii?Q?nEd6xxB7OrTcU6fjZq0ncQGTQApsZC+dPwek6OaB+AS+X0GpIXBv9tYJYsva?=
 =?us-ascii?Q?fMkI7Cpy4x+TiD9A+zswGlRDfK2B4ntYgvL39BtP778Bvx5ziUsGE/cAEZSe?=
 =?us-ascii?Q?CjyOanQVFU1Tc1N49IQ727j8PDUa3JRmCgXYtKgNWJzgVNRZXOVqh9pIx3ZJ?=
 =?us-ascii?Q?qpLBk/XBZFjvK0CV+6cIA1wjd47KE+yPN5x0k7okE7Jh4dgYBQQzQFLvBCqh?=
 =?us-ascii?Q?sTrVm3Qlgqbm8hMUJX9cGwdqzY1MXZGr0IZVLm640Oj7szCRvBgS43eLUr3b?=
 =?us-ascii?Q?8ThpAupTW5cimUxdRa5rRjvwVF/bSAoUr35WosjuTfIQ/lQ+95JLpDaea7gG?=
 =?us-ascii?Q?5t4PqrmONA=3D=3D?=
X-Exchange-RoutingPolicyChecked: XHIqaxcvzdG1ji9TklStBnUS2M14+U1RAApqgvQltGJmSPDUBgFSP9hpyYceZm0PnFOoYEJedFOc9HLa2U0KdWuBt2iYB/fJqmJGgeol8jGxfd3dMM/fT1cvRJ1ZJ0zEEm/wrg226UlYjkQnM/0GAEyN/rW8v597M7HQ3FRcOO0toBjt1QCoAIvf8TpIMZdSsdVa6sxcEehNVCCASDpAnNlAC59YPp0rPktqJ39Hwb7NG8LyOcanHNw5PCwM38l35ttER4jiPbpHoSxU39z4686qIIHeqhK6Wmb8LS3IUDRqWKzbFw7II5Zzt/L5BSkcoF3d6eb2YxSewNjuh94t+Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: be776df5-1b16-4aa6-574a-08de7ac06d1e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 14:06:41.8174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W295tyB9XyBaELOKvZ+EilNaC2rKIR5AE2cP0BnA+IU+k9IGsst3XfZNGMnpRGBXMJgdUFccfed8o4JFqlTfSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7067
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
X-Rspamd-Queue-Id: 5B318213055
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.285];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 05:50:10PM +0530, Animesh Manna wrote:
> Unused bandwidth can be used by external display agents for Panel Replay
> enabled DP panel during idleness with link on. Enable source to replace
> dummy data from the display with data from another agent by programming
> TRANS_DP2_CTL [Panel Replay Tunneling Enable].
> 
> v2:
> - Enable pr bw optimization along with panel replay enable. [Jani]
> 
> v3:
> - Write TRANS_DP2_CTL once for both bw optimization and panel replay
> enable. [Jani]
> 
> v4:
> - Read DPCD once in init() and store in panel_replay_caps. [Jouni]
> 
> v5:
> - Avoid reading DPCD for edp. [Jouni]
> - Use drm_dp_dpcd_read_byte() and some cosmetic changes. [Jani]
> 
> Bspec: 68920
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 35 +++++++++++++++++--
>  4 files changed, 36 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 5838338f495a..0a641daf22c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2269,6 +2269,7 @@
>  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
>  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
>  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
>  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
>  
>  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7adfb4169e25..a291665808cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -576,6 +576,7 @@ struct intel_connector {
>  
>  			bool support;
>  			bool su_support;
> +			bool optimization_support;
>  			enum intel_panel_replay_dsc_support dsc_support;
>  
>  			u16 su_w_granularity;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fcf478fbf8cd..7758213c070e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6250,6 +6250,7 @@ intel_dp_detect(struct drm_connector *_connector,
>  		intel_dp->psr.sink_panel_replay_support = false;
>  		connector->dp.panel_replay_caps.support = false;
>  		connector->dp.panel_replay_caps.su_support = false;
> +		connector->dp.panel_replay_caps.optimization_support = false;
>  		connector->dp.panel_replay_caps.dsc_support =
>  			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5bea2eda744b..27ba96ede8e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -43,6 +43,7 @@
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> +#include "intel_dp_tunnel.h"
>  #include "intel_dsb.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> @@ -603,6 +604,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int ret;
> +	u8 val;
>  
>  	/* TODO: Enable Panel Replay on MST once it's properly implemented. */
>  	if (intel_dp->mst_detect == DRM_DP_MST)
> @@ -650,6 +652,15 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  		    connector->dp.panel_replay_caps.su_support ?
>  		    "selective_update " : "",
>  		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
> +
> +	if (intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	/* Rest is for DP only */
> +
> +	drm_dp_dpcd_read_byte(&intel_dp->aux, DP_TUNNELING_CAPABILITIES, &val);
> +	connector->dp.panel_replay_caps.optimization_support = val &
> +		DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT;

The above DPCD register is read already by drm_dp_tunnel_detect(), so I
think the proper way is to extend the corresponding interface defined in
drm_dp_tunnel.c to query the Panel Replay optimization capability.

>  }
>  
>  static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
> @@ -1022,11 +1033,29 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
>  	return frames_before_su_entry;
>  }
>  
> +static bool intel_psr_allow_pr_bw_optimization(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +
> +	if (DISPLAY_VER(display) < 35)
> +		return false;
> +
> +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> +		return false;
> +
> +	if (!connector->dp.panel_replay_caps.optimization_support)
> +		return false;
> +
> +	return true;
> +}
> +
>  static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_psr *psr = &intel_dp->psr;
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> +	u32 dp2_ctl_val = TRANS_DP2_PANEL_REPLAY_ENABLE;
>  
>  	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
>  		u32 val = psr->su_region_et_enabled ?
> @@ -1039,12 +1068,14 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
>  			       val);
>  	}
>  
> +	if (!intel_dp_is_edp(intel_dp) && intel_psr_allow_pr_bw_optimization(intel_dp))
> +		dp2_ctl_val |= TRANS_DP2_PR_TUNNELING_ENABLE;
> +
>  	intel_de_rmw(display,
>  		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
>  		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
>  
> -	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> -		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0, dp2_ctl_val);
>  }
>  
>  static void hsw_activate_psr2(struct intel_dp *intel_dp)
> -- 
> 2.29.0
> 
