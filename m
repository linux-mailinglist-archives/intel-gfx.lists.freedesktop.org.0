Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eRJQCsz1S2rwdgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 20:37:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F0A714939
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 20:36:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hAlZg+sg;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0396510E3E3;
	Mon,  6 Jul 2026 18:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112FD10E3E3;
 Mon,  6 Jul 2026 18:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783363016; x=1814899016;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ES+lDvW1qsHoclAss1ejT4Snsh6hgiaQTPaqvmBjQRo=;
 b=hAlZg+sgGqKmC5E48SRsdCmJERrOfy/KN4r8rvXdBqdkfmtAkKeGdmNX
 UOr5+pHkdBEFgm7kNdbnpv5+GEECOfPgeHVGmEusYAsu7bt5DN0jdsnH1
 gYDoLdLNvw7u+lP1LKtJSxnww8Bd7tq9oUMePgr/iXm9T0ovhQ65PBXIN
 MHL3/M6ce+YPGrKS1ZTeEnHx/enBtjmDuQoEJklOxVRiZkgiHFTumGHx3
 z9i/YPVGSM2ljHdGilURXY+OSCtCbE9HbOHllh2GFbjVm2cyiP/QtE78W
 it3n6UZvLsjiLEYfga1pPH6Qa4r9O/21dG9MTHAd1x9/wjDpPLoq7KX5p g==;
X-CSE-ConnectionGUID: fHyOKHMOTgSiGsWrrqQnig==
X-CSE-MsgGUID: morlk0lmTwyR8jmq/T0mRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="84194934"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="84194934"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 11:36:56 -0700
X-CSE-ConnectionGUID: 7Z5Xm0hTQjWlG0M3mg606w==
X-CSE-MsgGUID: 1s2OfPtPQRGPgUdgQ4m9vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="258705433"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 11:36:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 11:36:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 11:36:55 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 11:36:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EFyC/GrJvYNkz07w/d1D5nPz33CNNt80jS6vYA10111UbuJa+ngBtpI6LySKeOCbEDo/ORXIl0T+3sFWC5TFPR5Qhy6PMm+6ppRhbCgIjYwrsrS38qRcF2uSR+1uqYS6Y6xR8+q9sUGAVMcBMcavhwUP9LB+gBfniw8yZv4A4dn6yeHo5qUU3Q7bbIfes7+Va7mh0hVHtk956jVTZHTcrJb6tswMwUnM7Wa9cKAWxfZixBgOOns93+XRMPfflDDuXSKH+G2WKFXnsFkvcS30IcKl/lHGod/wQdOxlAM2G2i+G0p3DetLJ2IWa6HetN+pAA0MYqIJxPHl8IHj98ZlwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xh3QhRo0oARiqBuDGKnK1EEMenVO3/CptfHURTpnVNU=;
 b=kEQ4Oej8OxOy14Bq06B0cZl/x6SSrzqDgC1m7E/9yO/2/FwwRe1lO7OClosmuYSzsUCnYQMfWHYzKA4cDLKFVgtT4mU18XnL+x4pWlZMV5QwziUkMuNaddFHG8rzajKw8ETgDbPGNdTgQMfIXW9Y93Kpin7sjdsldULq0ibkttFf+V/hv+TiQcAdQLFK/zsv3UmRIggeCCK7yWJBzU3vzmJbiVeoFGlm2sWOvFAvugDrEc1OKi4frs+Z6dDUDc02fE0k0+J57kLggimqU8SXBUX2cpEtPz4r1iBWmCBblxAzH+NxEIYU6zSt1sOOrEZOdGt2/B+wYM3g47hMinbyNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DM4PR11MB5972.namprd11.prod.outlook.com (2603:10b6:8:5f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.8; Mon, 6 Jul 2026 18:36:48 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 18:36:48 +0000
Date: Mon, 6 Jul 2026 14:36:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <suraj.kandpal@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
Subject: Re: [PATCH] Revert "drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG"
Message-ID: <akv1vPFwizYGa7t1@intel.com>
References: <20260622101736.2389991-1-ankit.k.nautiyal@intel.com>
 <51f6951d566ceda03eb47402904f8fe91c7a9f38@intel.com>
 <bd2843d5-7158-464f-94ba-d7217d31f5c9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bd2843d5-7158-464f-94ba-d7217d31f5c9@intel.com>
X-ClientProxiedBy: BYAPR21CA0002.namprd21.prod.outlook.com
 (2603:10b6:a03:114::12) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DM4PR11MB5972:EE_
X-MS-Office365-Filtering-Correlation-Id: ecdb1378-f2a4-42bb-8441-08dedb8d89c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|56012099006|4143699003|22082099003|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 6YPCPZUGGFQu1IkHaz6w6zioLalE/Jr4C9SOCrOIQ3lUmC/tgX46N6ZDsWt4SgBffY1p+Ar/wnFdIH3sS2w0cHTQeANCtgNweCpXUZm50bqymz0vMOxTg/aXse7fFjfBiKa9HfoBnWDJoEhJI2St62JRtX6ScAdeOyqMVZTXZPOq/phLl9IDioVzVrGH05xq0/lksBGslAne5/yq9yraPlsObMBblqgKMLNf9Egs1RTOR8NpdFUzu4zO4g9WzZTKpNDVWvcy2eQSZAdz+O21CO/hErhpnMAWy/ArVIbm0s/h5C/Y4opl9wQ+vzI8BOLsK4XD4A6OcjU4N42SzXMuPWAi0A2twlW4Ju57wPVSYLuGYaW2W3g/DdeNcYG2veJXEtAexXxCnb7E06BfR5N3vBNIXQH2A60UYfEw+SuInqtJENoAOAJt2/Fa8DbbNTZHqDw5wtGRrmalPzNndDbKReYL9VjRpdVsbCAtKWgXKDvi64zVVhjWiQ6+Y3+kaokjbdkDKbK7bQb120Oo7KxsLcBn5UvUe/zY/QCovqcZdlPZcfoFVzFkZnfaHCnWCHmgr+fj4GbD31FBFuTJZNtyTZ3x+nI31BnbrHLnC6hyUrVWdvHsSZUQqfhvKIrR5rrbu9HTIva+mOnlJRnUFDa8LjEUe9zGmlUp0HL3UFCrCNg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(56012099006)(4143699003)(22082099003)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WbqA0OsWKSfatAtrWjnmbmUbovVDcZo4QtYXSyb1Dg1OgwvydFtrammzHJS8?=
 =?us-ascii?Q?ZMU9shKJxzd75mXWyaxz8erJ3nP+AeRcQ1k8shd9gj6mzgLpc27iCXhxo6EO?=
 =?us-ascii?Q?LmanfB4RCqO+ubb316vHoz8CGmtBNBYhisKJnZcXzjqpx9ghFIiA9/GjCWSk?=
 =?us-ascii?Q?UdtEuHGM9LnxX7SrRdhcia+NFtRIrhiUkzFBXsunR+EhQxTy9SBiQAZAbEzR?=
 =?us-ascii?Q?7/rhDejLn1ihVZghHk7JsVjLwEfoqs1v8mce9DIwKv1UDEv6X1nFnedcECPE?=
 =?us-ascii?Q?7wcXpDjIljAeyP4USfydHi+N7qVFi2PQvOCGGEgguj6iAqTdAQ9N941KTpge?=
 =?us-ascii?Q?SADydrJW4RyxVWGikIWvQXh8eKQx+Fm5GH6jfAWCLHVqZDrfpUkNpK7aqGn8?=
 =?us-ascii?Q?37Xl7uB228VEsSWhNStnTUw9YXLqM0opqT2HOjiAP4veQPDhUqJLL2ZVgL3J?=
 =?us-ascii?Q?61aaycuNQB2aS2V6bFVAAULZZI44tKkpggtbRT25r8puO+s2pj/BMutOYhOx?=
 =?us-ascii?Q?Xsi+2OB5BQ86oI1LrZnuOjLCDRhys73a6wkGJPvhoR8d/MvWKRXzWDKLW797?=
 =?us-ascii?Q?AYk+VGoPDrX3er7UmLvHODRSAn0VumGuDtNxNsV8SHem28euf6r1I4LdLvhX?=
 =?us-ascii?Q?JW4t1K9JRAuaD77lHR0cUPSG/Ir1cn4h4mb2PKfWKRFxZPxSuX2Tr7Sg5q0o?=
 =?us-ascii?Q?aZC41oo/h8A3H8FeEvw+qYZebHujQgRkjDOCgETa6+ioPMX28wjsBAf522vM?=
 =?us-ascii?Q?6LJoCm80enc+aqXTID65JHGWAjo5hNrqqpDlgQCXgcZvb1rGLSQZXYcFqL63?=
 =?us-ascii?Q?c2RyZiyTwAw5SOzyK/62UFi16tc50mrf9ZZ0XWmjYxyAk3u69J6W6sISzQq9?=
 =?us-ascii?Q?ZzcRY67ikDhnk/IQCu6iPWJrDG+fxknsGG3iYEK0ohmrqKYolDBWmVbcKvYq?=
 =?us-ascii?Q?9jJH/utdH1F7V1sbv7MpM/Uf8YdNUaUd1YGYgluf3BfPSg1FR6Ob0bAejtk4?=
 =?us-ascii?Q?0HxjFGwvD5NlO4TmaOg9gCOHb6xB2cbIth1fOL/hFwu17/Yv+Jr9Gcx+tGYj?=
 =?us-ascii?Q?EgTx2jH/yZhb1h5AgoJltHnVfOaTN4wEZC09swo374gY+uHFOMOcbAYMfKf2?=
 =?us-ascii?Q?6RxW85wZhcXna4WftQ/0EJLh55qkQpdUR8j5LTff5K1N3yQByoZc1VRxWqL3?=
 =?us-ascii?Q?lBuZHbZ1ESTaFr1bNLjoFUqCtimp5/bQPlWyaLZUGJnhUcCWuE55yuDoCcsR?=
 =?us-ascii?Q?w94iHk6S28pfZIWm3XwU1vwyWxmXTe8whAJtBE34NALdOxEihdccrhbmmlHV?=
 =?us-ascii?Q?JR++SWVNVQuICWjydY65yerAod3XGg42NB2EDUiL/CMTtM3rMnIjarfmhuk9?=
 =?us-ascii?Q?BYjsvTO8NM2WCf9Lb67W1oZL0YfA5MKYynk4Ys6w8hgcXmTrdjCp/UPddjCV?=
 =?us-ascii?Q?PTCe2V5GdPVDXEDZr0vZ0zkbmMJme2QktrAK2f+J6e5YcuAFHRCYgnNRX3k6?=
 =?us-ascii?Q?tK6R3par5WDtQbbNCpS88tXjQHoOgwWxEOLMpMxTcpg3SAJA1S3IqSS8DPga?=
 =?us-ascii?Q?SUBa9625C8vSz4aAh/TQlwBGv/tnt1ck2/tUF51ZcgPP0MEDmveH1z+ujlIg?=
 =?us-ascii?Q?NL1QMT2cu37+hGeV+Ax5gesxKu9ojOocNqtimVlfisLj81pxT+2CxaTqzFL6?=
 =?us-ascii?Q?knUvEfZbaIAT8tvNM+snZqxmicMTWAXpkb0pLrKzEvgA7U/Hcddlh2P5pgeo?=
 =?us-ascii?Q?1Slt1WCUfQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: D9LprztvKj5f2+kUQDphIrLY8giHxZqFh5MWdgyXAANK1F6TCkqqj0vdGEFiZolyeVsaI8OD2FjGreSlePZJQoo3/q0mxS2BJhUMjhTQh0gy2M1vDwkA0c5h4p1Q7CS3uPO0RqUmNnBRB7XbwVJ28MTUU1sO2huhdjLmR+l3SFA/ZZv3FG0aX9NRls8qCkYG6oXYPd+9lUM0u8/2X2oq2JpTHBjCxzbuzZNYeS50pr26pgpo86GxLvhIvixdgkjLWbv6s5DhAT4VG4UbHzoXevFxh80sulFJH9vCGteb5+TTVthDXR6Ttay2BULLQATN+TD6ykjefyGpPun+WMSijA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ecdb1378-f2a4-42bb-8441-08dedb8d89c5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 18:36:48.5536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YfdiMIPiL6briGnEdFfxqZlDoLufmrK+XMz4lkd/oxTsZkc7uwW3wCs8vA0+rZ1qbZhQaShnsMBU4QEDI0dxbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5972
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
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 79F0A714939

On Fri, Jul 03, 2026 at 08:44:05AM +0530, Nautiyal, Ankit K wrote:
> 
> On 7/2/2026 9:20 PM, Jani Nikula wrote:
> > On Mon, 22 Jun 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> > > This reverts commit 4f1cab2e4863d96ce13b8d94151f4848e38c3d5b.
> > > 
> > > Allowing SCL=0 on platforms with always-on VRR timing generator is
> > > causing underruns and other issues on PTL in some cases.
> > > 
> > > SCL still needs to be non-zero in certain scenarios. Revert for now
> > > until this is better understood.
> > > 
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > This would've needed
> > 
> > Fixes: 4f1cab2e4863 ("drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG")
> > 
> > to have it be picked up for v7.2-rc2. Please talk to Joonas to ensure it
> > gets picked up for -rc3.
> 
> 
> Hi Jani,
> 
> Sorry I missed to add the fixes tag.
> 
> I'll coordinate with Joonas to make sure the revert gets picked up for
> v7.2-rc3.

done, pushed to drm-intel-fixes with the appropriate Fixes tag.

Thanks,
Rodrigo.

> 
> 
> Thanks,
> 
> Ankit
> 
> 
> > 
> > BR,
> > Jani.
> > 
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
> > >   1 file changed, 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 911afb9cb24e..92af21d823a3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1405,9 +1405,6 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
> > >   	    needs_panel_replay)
> > >   		return 0;
> > > -	if (intel_vrr_always_use_vrr_tg(display))
> > > -		return 0;
> > > -
> > >   	return 1;
> > >   }
