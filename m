Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jgN9EF5TT2oIegIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 09:53:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5E672DF72
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 09:53:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=muR1r6k2;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DAD210F44A;
	Thu,  9 Jul 2026 07:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79C0E10E02D;
 Thu,  9 Jul 2026 07:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783583578; x=1815119578;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Op8cwjpm4h3hCquyQtKZtr+ltj32jPE/9KHXRgHpQWo=;
 b=muR1r6k245B41NuM5nYI27P5f4lIf3JNYIAQYIaIu10PT2YVlRKowrL7
 dZhl8+a//MR91vosxtK3Ta5/rl76V6e7iIq5MuNpS7AEZm0XS194EBu4o
 4Wlus62cdh9v1CzcHrGt6im2GJT5hrS3gc1i752a72Tjk24LmniqOwE9V
 DvS5hXyGhb3ddvwOgnyRlmesLEYzV9OapbLCZfj2fUZP+jV0yTEkc6lgY
 t5291ci0CVkTA9k5rjI3WLzIz3/bM21zZqoCqtLot0mnwKB74/iFGMm/t
 r62dhwOly446vLoHy+7d+uGhm0bi0CDJuUeLteeVuJMqWH02ocGOkVnnR g==;
X-CSE-ConnectionGUID: a2q09NsYTaeIWfgtCaZXjg==
X-CSE-MsgGUID: DitvFpzqRyK5JK27w4j6+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88173762"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88173762"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 00:52:57 -0700
X-CSE-ConnectionGUID: ILy/i/DKQsCAKbsChSmrSQ==
X-CSE-MsgGUID: KCSVyq+zSeGOOr+Zffgj8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="258381510"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 00:52:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 00:52:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 00:52:56 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.41) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 00:52:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MKfT4pcPHxF9BvXKao6tHgZqw78eDAYpt5NwsiLEJ+TzJVCQ1A3JL2P59iMkgR9BGzeyJFhRLyX5aujL8ZAUhMSb9Y092e0lh8BWGmv0yZVtCq/ttyHemYuNeSZfNJExJaEt1vz4Td0AlmcXctyQo0kh2IfsL9HACL62/pjwgRxxcpuwoTnrbbKdaffrzr3Lr6z76lqagOrYU2ViMmxQTdmBZnLq8kI82BQWRiVRVMg4aJu97u4oWSDBGpAKKLKUfTh9QZPLoTFYFX5n22ZL4R5FxkrJruNThZvZlZmTvLlxFoHwVxx994gbmu4RbQwAOzfnouEnN9nKyP/qtskaIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ybhyI75xEBHR/JhIp8heoDzT3mCuqdmlHcF+Udx6SYQ=;
 b=uKHDqsvpUEckhapemVLqCYAmmkawXL7p0gODrlJiRL9DKtjUK7QG4t60V7mYO5a1uZWTJBtOFOmc4kYB8040m095TIu3AK8cgZ7j96cL1kGx3YLsoJ/xg9a3b0whXsm8R64FrFiS8Wo/rkDq+nmaVTAcODTbfr8oPfrOCXXiA44WEvcRBBrP9G6FyhbYT98emKUFfqK+pWY8SnermEzG7fX/wnOod/hWNrTkudtgmIePeyc5jTvsmNRf+T1xkVxxmluQ5c1BpQV5SIUEmFqM/IKTdcxuYvJXNXoyPrOfdzgkSXv1iTE1kGDNAXQiJLQODjvyYe8qtLoNsmK3El/zIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ2PR11MB7600.namprd11.prod.outlook.com (2603:10b6:a03:4cd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Thu, 9 Jul
 2026 07:52:49 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.014; Thu, 9 Jul 2026
 07:52:49 +0000
Date: Thu, 9 Jul 2026 10:52:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, Luciano Coelho
 <luciano.coelho@intel.com>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?=
 =?utf-8?Q?cess_for_drm=2Fi915=2Fdp=5Flink?= =?utf-8?Q?=3A?= Unify
 modeset/fallback config selection (rev5)
Message-ID: <ak9TSsvmYuBGNQLI@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <178349046690.163961.5992716941799833798@6beec6c84f66>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <178349046690.163961.5992716941799833798@6beec6c84f66>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239C7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1a6) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ2PR11MB7600:EE_
X-MS-Office365-Filtering-Correlation-Id: eda55e60-dd45-49fa-79a2-08dedd8f11ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|18002099003|22082099003|3023799007|4143699003|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: fkx05fv+0DgucmHjZHAp5FkRw6eo2sYz09H7jDhzxN/ocl31177aHKa+g+b0W7/vlq2o0tbjDym5XrcZ4lmjmXHRR6tTE5I0XTNrw3o4et56MSU5whOOSuJO2B0t8WfYfZp+aUPL8t60vgFcbYA/jLnMvkvsebdFdyTNZxjhQ35XOSDnOrIs1g6hoI+AvUN5Vv35pyBD605PW/HAJ3Agsb72GTsPdohHMUSv7wbZwwetYbTXX7w9oTu0wPqRwT5ry1uY/w3rdkv3M8RBzld3M9TB89VwrdUDVnIqSqocsFUssCuoJ+Yf1OQy2pdCrVFhDL10mv2WSOShCax1mFrIyy9Xq20sLG/zPjJ11mu4O7Ee7KBk5VZUqJWBkK+/EeQ6hq8Ejl9kcgVW3OatjSdlPp99aAXz9u98gA07OxBrFcFJUNlAkvpw7/tYsvK/qyWaXiYTG49duaO0rdX9NZMo9D840OAXkjmyh4d7641Wau54UvLB/vDYM0oVU8TFtLsf+qAYoRaJeij0mlWsLZgSaRaHoUjVgufaZJ5HcMJ7cGzVuoNInJU2yIlbCQJrEX59MVbPG/9LgMKDlp2pmzkYNujnxmtHOB+Y4j37TIhRJbg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(18002099003)(22082099003)(3023799007)(4143699003)(56012099006)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2IrRhWwqheaxpWgHgO0ucw5ogO0MGCnDtCrhPgjQqEGwEClB2DjiFpkKmLwb?=
 =?us-ascii?Q?/A+DeiVDa6xKlKSxmLhP/UYeiAcVbEqZ3FVPA41pl8ovcuqZ2WRqHHaxr1zJ?=
 =?us-ascii?Q?zba5/SStp4eLotJa6LIgDbAvCERzQQ3M262zw42T6+Rtg/2I52m/klaJBbIm?=
 =?us-ascii?Q?LoNnzBmcMOufps193294FDQsjzW240O/14Du/KzQftgvwYqq2eYbbdy6YANl?=
 =?us-ascii?Q?ohzwFRW3La6epRtYHZJTysVJ1DEeUaGWQxJlhA5f/OfHsNTpSQohylLE0oKQ?=
 =?us-ascii?Q?xqU28Vmsq+A1x87C81kP/eoNWKR3gRbckKZDtQGxVjJ/uOXX27G7g0ioeTga?=
 =?us-ascii?Q?nxKpoZf5lwrY//N9oURZNQknpBYZ8H07Yxz6HYJDjs10UrLD2rYsIM36rJI/?=
 =?us-ascii?Q?BvxefYbsmM8iu+woryBthRkAE9TW5TtpaLf4JamnXMDZFeQ6c6/1+8H07kJy?=
 =?us-ascii?Q?jw/CFBT3J+RLBcWVHrJzP7aB+zlQhgqWHq2TVLaYoMQ4vuhI7O5+uKuVqrg8?=
 =?us-ascii?Q?lLKexIKhbB7XJz5ulllAO4pNasVWr2iUtVQhbNpiZwU4GyM0G0pfU2Aag+YO?=
 =?us-ascii?Q?zF8BG/lNg6bkNkfmDxy0R0o/GfE4Satx8Tr31BPnbranAB4T6CL/Y1Z6jd6q?=
 =?us-ascii?Q?rR2r7sFSFtnEz9VIOiq2FnIDTKrAp8GScMjYqtUnNb9saJYJIyJv52fD3aVW?=
 =?us-ascii?Q?E9hiSx8EMW9zi9Zr67D61cc7Y5Xe5ltOmj9uUnKiT+wUD3NtXOhNI1gSrTUt?=
 =?us-ascii?Q?LFTtD9sIXz3Nse5zQUFPXW2ChlNECJATf8ocOh7bvBAKf6YEs/igEdvqjn+K?=
 =?us-ascii?Q?yqMaakNYh9A2jStcs4pC+HkgeaOMNMEx3Qdq/rVc2MD3kDrQHTTrs8X3ZlX0?=
 =?us-ascii?Q?epABWlwhIiBM86ja7jnEkBznEAkfo9gqp6FEwR0oRKD6+ce+HV7XVn93AuGx?=
 =?us-ascii?Q?EMNRzaqv1PMq/JrHHXD2HQvu7bdb9+enbLvOnS0pP00W7wkKokFYs/gxDopR?=
 =?us-ascii?Q?ezVNey+P6QrSEHETWyjnb890IiOQggTnAYIQDlMrNeCL2yeJJoUo/F35t7Ce?=
 =?us-ascii?Q?HWCnsK5qRTzYZrF0h1/rRRly3fL4tmrGn2lMUGPbLyxMw8dkTF1wyA8CdGo1?=
 =?us-ascii?Q?ziBBn3DDGHWvrv7hrVnciKj2FGDgfP0qB+4dbCYymgLnxJ7R83CvrhVb91bX?=
 =?us-ascii?Q?DnpgCE4mc8525dCmUyKCM6ylBd3IXTJ9S64EEVYy2Q8kifJFOPaPCaLzGUKJ?=
 =?us-ascii?Q?xDKrriXLSmS3sn1q2xZmQCuOegFAv4mGZa4CynHzHWyiv4ttMeH8GThRYrPo?=
 =?us-ascii?Q?qG/tRYUcEWQabkJhxWp203jRavdNAaxa7VW5rUqjWpL2EjY2f80IOTNYfyQr?=
 =?us-ascii?Q?Nq/GKseIFmKW7zAVQ8I+6CD1f2SPJ+rIEyrHe37Co+ZTQ4wqvBrfIEQFEaIe?=
 =?us-ascii?Q?EvB2plybrTdLTJPdMxttalp0hHRreY9hM3ta1PJN35PvI5hblnV3L6BmXr/f?=
 =?us-ascii?Q?/ANIHo0/dHcWIblw1rW/a9zkurgoLrcJ888AI6IvF6ThJ8MGbXPheB3u/zuy?=
 =?us-ascii?Q?b2yd3Eh4YnmJRn9CZaOrJuIp1VCyj5ROBFlDLyVHX/vwjb4WHlDMjoq9qUO8?=
 =?us-ascii?Q?oYIFwrIdD0Wsph8yQA80AXzFSIWmcVvfQ4Ee8csTjnCsXVhR+tp13RIs+mK7?=
 =?us-ascii?Q?C4Kp3hr4PaFzg0fCKFW3TYlRpgSAfz8RCmVkxOAZSIIVBVIlCFr3c6Kl3MTo?=
 =?us-ascii?Q?YeCQprMEpw=3D=3D?=
X-Exchange-RoutingPolicyChecked: ZocrEFT4CcqX5m6Ufy4y6G3zvJUYH7Re2c/kEL+dh1MSdN9U4cUPo5FmEqcSy+j/7FW/FVK0dAqc4cP+24a9xHgMEM1YUmPCxHEu/akL5AnEpYx6dsa2vCKrDVcC+iR9UEFiRDARatxvPCff/rF0E0Gcbgv1gLRhYvOzV928x1BzPTZUVb48opbSj1L+0SJ5RhJqT8arh0MrZKRFKDmzasdnzT9vFftbHl04eeOru3Ku3OjX7Tu2+sQcV8KeIVAPzbcKLzkwMcyukWl4afkrVS2s7RJk3Y/9z0otRsWrctpjEYw7X1Tekzx+xvERrk9XFPHB0ehR/LJxhOyrbGh+oQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: eda55e60-dd45-49fa-79a2-08dedd8f11ef
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2026 07:52:48.9254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y/l7j9up2lyjMXklenhS7U2q1htHVpoVkb1q72LxQesFeuSkxw5gJrP+uDbLbVQl1yEqGE4NchI3fuTOCxvFSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7600
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [10.49 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C5E672DF72
X-Spam: Yes

On Wed, Jul 08, 2026 at 06:01:06AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_link: Unify modeset/fallback config selection (rev5)
> URL   : https://patchwork.freedesktop.org/series/169635/
> State : success

Thanks for the reviews and acks, patchset is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18775_full -> Patchwork_169635v5_full
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
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_18775_full and Patchwork_169635v5_full:
> 
> ### New IGT tests (21) ###
> 
>   * igt@i915_module_load@bad-pixel-format-y-tiled-gen12-rc-ccs-cc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbcpsrhdr-1p-primscrn-cur-indfb-onoff:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbcpsrhdr-2p-scndscrn-shrfb-plflip-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@hdr-2p-primscrn-indfb-plflip-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@hdr-rgb101010-draw-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@invalid-create-userspace-config:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@memset-crc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@persistence:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@pr-sprite-plane-move:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@psrhdr-1p-primscrn-spr-indfb-move:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@psrhdr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@query-busy:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@seamless-rr-switch-virtual:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@short-busy-flip-before-cursor-atomic-transitions:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@x-tiled-64bpp-rotate-0:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp3:
>     - Statuses : 1 pass(s)
>     - Exec time: [8.15] s
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-dp3:
>     - Statuses : 1 pass(s)
>     - Exec time: [8.08] s
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@c-dp3:
>     - Statuses : 1 pass(s)
>     - Exec time: [8.08] s
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@d-dp3:
>     - Statuses : 1 pass(s)
>     - Exec time: [8.09] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_169635v5_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#6230])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#11078])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@device_reset@cold-reset-bound.html
>     - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#11078])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@device_reset@cold-reset-bound.html
> 
>   * igt@dmabuf@all-tests:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#15931])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@dmabuf@all-tests.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][6] ([i915#13356] / [i915#16466]) +1 other test incomplete
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8555])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#280]) +1 other test skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@gem_ctx_sseu@invalid-sseu.html
>     - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@suspend:
>     - shard-dg2:          [PASS][10] -> [ABORT][11] ([i915#15131])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-7/igt@gem_eio@suspend.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-10/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#4525]) +1 other test skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#6344])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#3539] / [i915#4852]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#3281]) +3 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#3281]) +2 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][17] -> [INCOMPLETE][18] ([i915#13356]) +1 other test incomplete
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
>     - shard-rkl:          [PASS][19] -> [INCOMPLETE][20] ([i915#13356]) +1 other test incomplete
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@gem_exec_suspend@basic-s0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#4860])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4613] / [i915#7582])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4613]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-glk:          NOTRUN -> [SKIP][24] ([i915#4613])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk8/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#4613]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#284])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@bad-offset:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083]) +3 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@gem_mmap@bad-offset.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4077]) +2 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3282]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@reads-display:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3282])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@gem_partial_pwrite_pread@reads-display.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][32] ([i915#2658])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4270])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-linear:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#5190] / [i915#8428]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-linear.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3282] / [i915#3297])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3297])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3297] / [i915#4880])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#3297])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-rkl:          [PASS][39] -> [ABORT][40] ([i915#15131])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-4/igt@gem_workarounds@suspend-resume-context.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#2856]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#2527]) +2 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#14073]) +7 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#8399])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#16080] / [i915#16166])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#14498])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#4387])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][49] -> [SKIP][50] ([i915#7984])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-mtlp-1/igt@i915_power@sanity.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-mtlp-4/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#6188])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#5723])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][53] ([i915#16182] / [i915#4817])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk2/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [PASS][54] -> [ABORT][55] ([i915#15140])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4212])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_atomic_interruptible@legacy-pageflip:
>     - shard-dg1:          [PASS][57] -> [DMESG-WARN][58] ([i915#4423]) +2 other tests dmesg-warn
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-19/igt@kms_atomic_interruptible@legacy-pageflip.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-12/igt@kms_atomic_interruptible@legacy-pageflip.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#1769] / [i915#3555])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#5286]) +2 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#5286]) +4 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#5286]) +2 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][63] -> [FAIL][64] ([i915#15733] / [i915#5138])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3828])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#3828]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#3638])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#10307] / [i915#6095]) +88 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#6095]) +63 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-glk11:        NOTRUN -> [SKIP][71] +101 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk11/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#10307] / [i915#10434] / [i915#6095])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#12313]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#6095]) +44 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#14544] / [i915#6095]) +3 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#14098] / [i915#14544] / [i915#6095]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#6095]) +171 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][78] ([i915#15582]) +1 other test incomplete
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk11/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#6095]) +11 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#6095]) +19 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#14098] / [i915#6095]) +39 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#12313]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#13783]) +3 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-after-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#11151])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_chamelium_audio@hdmi-audio-after-suspend.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][86] +4 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_color_pipeline@plane-ctm3x4-lut1d:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#16471])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_chamelium_color_pipeline@plane-ctm3x4-lut1d.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#15865])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#15330] / [i915#3299])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#15330])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#15330]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#15330] / [i915#3116] / [i915#3299])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#15865]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_content_protection@srm.html
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#15865]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3555]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21:
>     - shard-rkl:          [PASS][99] -> [FAIL][100] ([i915#13566]) +1 other test fail
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x21.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][101] -> [FAIL][102] ([i915#13566]) +1 other test fail
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][103] ([i915#13566]) +1 other test fail
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-glk:          NOTRUN -> [SKIP][104] +140 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk3/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][105] ([i915#13566]) +2 other tests fail
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
>     - shard-tglu:         NOTRUN -> [FAIL][106] ([i915#13566]) +1 other test fail
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#3555]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#13046] / [i915#5354])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4103])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#4103])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#9723])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#13749])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_dp_link_training@non-uhbr-sst.html
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#13749])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#16361]) +2 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#16361]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc-ultrajoiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#16361]) +2 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc-ultrajoiner.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][117] ([i915#9878])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk11/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#16081])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#658]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_feature_discovery@psr1.html
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#658])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#3637] / [i915#9934]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#3637] / [i915#9934]) +6 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#9934]) +4 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#9934]) +3 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#13027]) +1 other test fail
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8381])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#15643]) +2 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#15643]) +2 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#15643])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#15643] / [i915#5190])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#15643]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][133] +54 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#15989]) +13 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#15989]) +9 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#15989]) +9 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#15990]) +9 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][138] +79 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:
>     - shard-rkl:          [PASS][139] -> [SKIP][140] ([i915#15989]) +19 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#15990] / [i915#8708]) +2 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#15104] / [i915#15990])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#15991] / [i915#5354]) +9 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#10055])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#15102]) +14 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-pri-indfb-multidraw:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#15989]) +4 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#15991]) +15 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb-plflip-blt:
>     - shard-glk:          [PASS][149] -> [SKIP][150] +10 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb-plflip-blt.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk5/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][151] ([i915#16056])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk10/igt@kms_frontbuffer_tracking@hdr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#15102]) +34 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#15102]) +17 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#1825]) +6 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][155] +42 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-glk10:        NOTRUN -> [SKIP][156] +123 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk10/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-rgb101010-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#15102]) +21 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_frontbuffer_tracking@psrhdr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglu:         NOTRUN -> [FAIL][158] ([i915#16115])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#12713])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#3555] / [i915#8228]) +1 other test skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#3555] / [i915#8228]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#13688])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#15460])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#15459])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#6301])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_panel_fitting@atomic-fastset.html
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#6301])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#15709]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#15709]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
> 
>   * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#16386]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7:
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#16386]) +1 other test skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#15709]) +2 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_plane@pixel-format-yf-tiled-modifier.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#15709]) +2 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html
> 
>   * igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#16112])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#13958])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#13958])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#13958])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#14259])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#15329]) +4 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#12343] / [i915#9812])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_pm_backlight@fade.html
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#12343] / [i915#5354])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#9340])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][182] -> [SKIP][183] ([i915#15073]) +3 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [PASS][184] -> [SKIP][185] ([i915#15073]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-12/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-15/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#15073])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@system-suspend-idle:
>     - shard-dg2:          [PASS][187] -> [INCOMPLETE][188] ([i915#14419])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#6524])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#6524] / [i915#6805])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#6524])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#11520]) +3 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][193] ([i915#11520]) +4 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk3/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#11520]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#11520]) +4 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#11520]) +3 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][197] ([i915#11520]) +4 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-glk11:        NOTRUN -> [SKIP][198] ([i915#11520]) +1 other test skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk11/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#9683])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#9732]) +9 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr2-primary-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#9732]) +15 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr-no-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_psr@psr-no-drrs.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][204] ([i915#15500] / [i915#16184])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk10/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#5289])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#3555]) +4 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-glk:          NOTRUN -> [ABORT][207] ([i915#13179]) +1 other test abort
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk3/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
>     - shard-dg2:          NOTRUN -> [ABORT][208] ([i915#13179]) +1 other test abort
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#3555]) +2 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk11:        NOTRUN -> [FAIL][210] ([i915#10959])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk11/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][211] ([i915#12276]) +1 other test incomplete
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk4/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-dg2:          [PASS][212] -> [ABORT][213] ([i915#15132])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-5/igt@kms_vblank@ts-continuation-suspend.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-10/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3:
>     - shard-dg2:          NOTRUN -> [ABORT][214] ([i915#15132])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-10/igt@kms_vblank@ts-continuation-suspend@pipe-d-dp-3.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#9906])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-rkl:          NOTRUN -> [ABORT][216] ([i915#15778])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#8516])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3291] / [i915#3708])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#16066]) +10 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-9/igt@sriov_basic@enable-vfs-autoprobe-on.html
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#9917])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-rkl:          [INCOMPLETE][221] ([i915#13356]) -> [PASS][222] +2 other tests pass
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-3/igt@gem_ctx_isolation@preservation-s3.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][223] -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][225] ([i915#13356] / [i915#13820]) -> [PASS][226] +1 other test pass
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-rkl:          [ABORT][227] ([i915#15131] / [i915#15140]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-1/igt@i915_suspend@debugfs-reader.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-5/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-rkl:          [INCOMPLETE][229] ([i915#4817]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-3/igt@i915_suspend@sysfs-reader.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglu:         [FAIL][231] ([i915#15662]) -> [PASS][232] +1 other test pass
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-mtlp:         [FAIL][233] ([i915#15733] / [i915#5138]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          [INCOMPLETE][235] ([i915#15582]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          [FAIL][237] ([i915#13566]) -> [PASS][238] +1 other test pass
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-2/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          [FAIL][239] ([i915#4767]) -> [PASS][240]
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_force_connector_basic@force-edid:
>     - shard-mtlp:         [SKIP][241] ([i915#15672]) -> [PASS][242]
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-mtlp-4/igt@kms_force_connector_basic@force-edid.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][243] ([i915#15989]) -> [PASS][244] +2 other tests pass
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][245] ([i915#15989]) -> [PASS][246] +3 other tests pass
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-7/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [SKIP][247] ([i915#15073]) -> [PASS][248] +1 other test pass
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][249] ([i915#15073]) -> [PASS][250] +1 other test pass
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-dg1:          [SKIP][251] ([i915#15073]) -> [PASS][252] +1 other test pass
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglu:         [FAIL][253] ([i915#15106]) -> [PASS][254] +1 other test pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-tglu-6/igt@kms_setmode@basic.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-2/igt@kms_setmode@basic.html
> 
>   * igt@perf@blocking@0-rcs0:
>     - shard-tglu:         [FAIL][255] ([i915#10538]) -> [PASS][256] +1 other test pass
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-tglu-10/igt@perf@blocking@0-rcs0.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-tglu-6/igt@perf@blocking@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          [SKIP][257] ([i915#280]) -> [SKIP][258] ([i915#14544] / [i915#280])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@gem_ctx_sseu@invalid-args.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          [SKIP][259] ([i915#3281]) -> [SKIP][260] ([i915#14544] / [i915#3281])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-rkl:          [SKIP][261] ([i915#14544] / [i915#3281]) -> [SKIP][262] ([i915#3281]) +2 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@gem_exec_reloc@basic-softpin.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][263] ([i915#14544] / [i915#4613]) -> [SKIP][264] ([i915#4613]) +1 other test skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][265] ([i915#14544] / [i915#284]) -> [SKIP][266] ([i915#284])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@gem_media_vme.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@gem_media_vme.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-rkl:          [SKIP][267] ([i915#3282]) -> [SKIP][268] ([i915#14544] / [i915#3282]) +1 other test skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          [SKIP][269] ([i915#3297]) -> [SKIP][270] ([i915#14544] / [i915#3297])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@gem_userptr_blits@readonly-unsync.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          [SKIP][271] ([i915#14544] / [i915#3297]) -> [SKIP][272] ([i915#3297])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@i915_module_load@fault-injection:
>     - shard-mtlp:         [ABORT][273] ([i915#15342] / [i915#15481]) -> [ABORT][274] ([i915#15895])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-mtlp-8/igt@i915_module_load@fault-injection.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-mtlp-8/igt@i915_module_load@fault-injection.html
> 
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-mtlp:         [ABORT][275] ([i915#15481]) -> [ABORT][276] ([i915#15895])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-mtlp-8/igt@i915_module_load@fault-injection@__uc_init.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-mtlp-8/igt@i915_module_load@fault-injection@__uc_init.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          [SKIP][277] ([i915#14544] / [i915#6412]) -> [SKIP][278] ([i915#6412])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@i915_module_load@resize-bar.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][279] ([i915#14544] / [i915#5723]) -> [SKIP][280] ([i915#5723])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#9531]) -> [SKIP][282] ([i915#9531])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          [SKIP][283] ([i915#14544] / [i915#5286]) -> [SKIP][284] ([i915#5286]) +2 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#3638]) -> [SKIP][286] ([i915#3638])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-90.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][287] ([i915#3638]) -> [SKIP][288] ([i915#14544] / [i915#3638])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][289] ([i915#14544]) -> [SKIP][290] +16 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-ccs:
>     - shard-rkl:          [SKIP][291] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][292] ([i915#14098] / [i915#6095]) +1 other test skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-ccs.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_ccs@bad-rotation-90-y-tiled-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][293] ([i915#14098] / [i915#6095]) -> [SKIP][294] ([i915#14098] / [i915#14544] / [i915#6095]) +1 other test skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_chamelium_audio@dp-audio-after-suspend:
>     - shard-rkl:          [SKIP][295] ([i915#11151]) -> [SKIP][296] ([i915#11151] / [i915#14544])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_chamelium_audio@dp-audio-after-suspend.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_chamelium_audio@dp-audio-after-suspend.html
> 
>   * igt@kms_chamelium_color_pipeline@plane-lut1d-pre-ctm3x4:
>     - shard-rkl:          [SKIP][297] ([i915#16471]) -> [SKIP][298] ([i915#14544] / [i915#16471])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_chamelium_color_pipeline@plane-lut1d-pre-ctm3x4.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_chamelium_color_pipeline@plane-lut1d-pre-ctm3x4.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg1:          [SKIP][299] ([i915#11151] / [i915#7828]) -> [SKIP][300] ([i915#11151] / [i915#4423] / [i915#7828])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-storm.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-rkl:          [SKIP][301] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][302] ([i915#11151] / [i915#7828])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          [SKIP][303] ([i915#11151] / [i915#7828]) -> [SKIP][304] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][306] ([i915#15330] / [i915#3116])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][307] ([i915#14544] / [i915#15865]) -> [SKIP][308] ([i915#15865])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-rkl:          [SKIP][309] ([i915#14544] / [i915#3555]) -> [SKIP][310] ([i915#3555]) +1 other test skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-rkl:          [SKIP][311] ([i915#3555]) -> [SKIP][312] ([i915#14544] / [i915#3555])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x32.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          [SKIP][313] ([i915#13691]) -> [SKIP][314] ([i915#13691] / [i915#14544])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          [SKIP][315] ([i915#14544] / [i915#16361]) -> [SKIP][316] ([i915#16361]) +1 other test skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_dsc@dsc-basic.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-rkl:          [SKIP][317] ([i915#16361]) -> [SKIP][318] ([i915#14544] / [i915#16361])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          [SKIP][319] ([i915#9934]) -> [SKIP][320] ([i915#14544] / [i915#9934])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][321] ([i915#14544] / [i915#15643]) -> [SKIP][322] ([i915#15643]) +1 other test skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-suspend:
>     - shard-rkl:          [SKIP][323] ([i915#15989]) -> [INCOMPLETE][324] ([i915#16056])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-suspend.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>     - shard-dg2:          [SKIP][325] ([i915#10433] / [i915#15102]) -> [SKIP][326] ([i915#15102]) +1 other test skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          [SKIP][327] ([i915#15102]) -> [SKIP][328] ([i915#10433] / [i915#15102]) +2 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][329] ([i915#15102]) -> [SKIP][330] ([i915#14544] / [i915#15102]) +3 other tests skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][331] ([i915#14544] / [i915#15102]) -> [SKIP][332] ([i915#15102]) +7 other tests skip
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-fullscreen:
>     - shard-dg1:          [SKIP][333] ([i915#15102]) -> [SKIP][334] ([i915#15102] / [i915#4423])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-fullscreen.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][335] -> [SKIP][336] ([i915#14544]) +19 other tests skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#5439]) -> [SKIP][338] ([i915#5439])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt:
>     - shard-dg1:          [SKIP][339] ([i915#15990] / [i915#4423]) -> [SKIP][340] ([i915#15990])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-13/igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-14/igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          [SKIP][341] ([i915#9766]) -> [SKIP][342] ([i915#14544] / [i915#9766])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg1:          [SKIP][343] ([i915#15990] / [i915#8708]) -> [SKIP][344] ([i915#15990] / [i915#4423] / [i915#8708])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][345] ([i915#15102] / [i915#3023]) -> [SKIP][346] ([i915#14544] / [i915#15102] / [i915#3023]) +1 other test skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg1:          [SKIP][347] -> [SKIP][348] ([i915#4423]) +1 other test skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][349] ([i915#14544] / [i915#1825]) -> [SKIP][350] ([i915#1825]) +2 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][351] ([i915#1825]) -> [SKIP][352] ([i915#14544] / [i915#1825])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][354] ([i915#15102] / [i915#3023]) +5 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][355] ([i915#15990]) -> [SKIP][356] ([i915#15990] / [i915#4423])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-19/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-12/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          [SKIP][357] ([i915#15459]) -> [SKIP][358] ([i915#14544] / [i915#15459])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_joiner@basic-force-big-joiner.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#15459]) -> [SKIP][360] ([i915#15459])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-ccs-modifier:
>     - shard-rkl:          [SKIP][361] ([i915#14544] / [i915#15709]) -> [SKIP][362] ([i915#15709])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-rkl:          [SKIP][363] ([i915#15709]) -> [SKIP][364] ([i915#14544] / [i915#15709])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#15329]) -> [SKIP][366] ([i915#15329]) +3 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          [SKIP][367] ([i915#15329] / [i915#3555]) -> [SKIP][368] ([i915#14544] / [i915#15329] / [i915#3555])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          [SKIP][369] ([i915#15329]) -> [SKIP][370] ([i915#14544] / [i915#15329]) +2 other tests skip
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_pm_dc@dc5-pageflip-negative:
>     - shard-rkl:          [SKIP][371] ([i915#9685]) -> [SKIP][372] ([i915#14544] / [i915#9685])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_pm_dc@dc5-pageflip-negative.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_pm_dc@dc5-pageflip-negative.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          [SKIP][373] ([i915#14544] / [i915#3828]) -> [SKIP][374] ([i915#3828])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][375] ([i915#11520]) -> [SKIP][376] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][377] ([i915#11520] / [i915#14544]) -> [SKIP][378] ([i915#11520])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][379] ([i915#9683]) -> [SKIP][380] ([i915#14544] / [i915#9683])
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-dpms:
>     - shard-dg1:          [SKIP][381] ([i915#1072] / [i915#9732]) -> [SKIP][382] ([i915#1072] / [i915#4423] / [i915#9732])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-dg1-16/igt@kms_psr@fbc-psr-dpms.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-dg1-13/igt@kms_psr@fbc-psr-dpms.html
> 
>   * igt@kms_psr@psr-sprite-render:
>     - shard-rkl:          [SKIP][383] ([i915#1072] / [i915#9732]) -> [SKIP][384] ([i915#1072] / [i915#14544] / [i915#9732]) +3 other tests skip
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-5/igt@kms_psr@psr-sprite-render.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_psr@psr-sprite-render.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-rkl:          [SKIP][385] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][386] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_psr@psr2-cursor-plane-move.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-rkl:          [SKIP][387] ([i915#14544] / [i915#15243] / [i915#3555]) -> [SKIP][388] ([i915#15243] / [i915#3555])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@kms_vrr@flip-suspend.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          [SKIP][389] ([i915#9906]) -> [SKIP][390] ([i915#14544] / [i915#9906])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-vrr.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][391] ([i915#14544] / [i915#2436]) -> [SKIP][392] ([i915#2436])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18775/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/shard-rkl-8/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
>   [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15662]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662
>   [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
>   [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
>   [i915#15895]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15895
>   [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
>   [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
>   [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
>   [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
>   [i915#16056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16056
>   [i915#16066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066
>   [i915#16080]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16080
>   [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
>   [i915#16112]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112
>   [i915#16115]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16115
>   [i915#16166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16166
>   [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
>   [i915#16184]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184
>   [i915#16361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361
>   [i915#16386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386
>   [i915#16466]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16466
>   [i915#16471]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18775 -> Patchwork_169635v5
> 
>   CI-20190529: 20190529
>   CI_DRM_18775: cd8abe2554ec7eba16c1d48ab508732bf93534eb @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8991: c5721520bb6611ab8fcbe27db0c120b72d25b99e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_169635v5: cd8abe2554ec7eba16c1d48ab508732bf93534eb @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169635v5/index.html
