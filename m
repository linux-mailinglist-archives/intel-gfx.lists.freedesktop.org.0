Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPckKxlmzmmXnQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 14:50:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244713893E6
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 14:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EFA10F257;
	Thu,  2 Apr 2026 12:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rqaw6WT5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADE410F257;
 Thu,  2 Apr 2026 12:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775134231; x=1806670231;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=q2R6q+x9EFEsr+/cYc/yNIvvJteW/GPhGgAFsLOJWj0=;
 b=Rqaw6WT5TmOyX5UKSLsIe+G9ENt1Eu3tZBB5J+5H8AFjebERfFrCgPeO
 Ng4PE10pybd5iec2QBOJmNpgDxpZZimFtIjNgJhMENjxy/RgXT1vRfamr
 zz8188/tOtBGp8vP4rADvt/rlMM7pkE55ct1hh0/TvKR11ogHGCGBoylK
 +Os4TVAdtCfs8Vg1P59N0s7ix7mRvLraUZZqLXamD4YBqApOC9r70mnl/
 EtvrQjuuVlOGdyl8yQqnfXYXjT45UU/AbvHjoskAGGqGdjLOmA34YvjhT
 291bD+D7INjXJnYcgnX4yo4wyIOobKD6QGFrVHun921UEau2cYOn94bGy A==;
X-CSE-ConnectionGUID: eUeo/v2gRKeakkuIwsIhFw==
X-CSE-MsgGUID: b/KRxB7/QMac14uOvaKt2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="98803624"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="98803624"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 05:50:30 -0700
X-CSE-ConnectionGUID: h3aDAMzDSkuhesscBd2RhQ==
X-CSE-MsgGUID: OxhdqkgxSXWObCBJ/nSVFg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 05:50:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 2 Apr 2026 05:50:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 2 Apr 2026 05:50:29 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.66)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 2 Apr 2026 05:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FIfaEhZQEhpghLDUXDE0D4AFrksYJkwJRHw81llR6eO6obTy86S9ZIWzzCpLufMlO3o7JCBxosvZfvpylUXpfv80dQPgOzbV3W+AhHCJBofN6awMnDLawi68bpOYqe9wd7Dqln9LorvibvDH7h2Q6ldqDtemdgJIdgGZcaDRLeDZ9S1HbwkTjwegVvZzQlkJJsynrIr9ikOI7zpPlR4PCgy53roRokRO47PufkGWpoBdQOL632YEjDfW35t3fJSTeEuepMc9f8JAICL9eS5V1kwZUwTfcErjhLsP+Wn1mr8TzKOSHnKblrh4R6E8VKV+dCI3NIZO6S/jefxwn68hmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/5Kl51893gsU4fyOmQtr8VYGxpnxjT2TKsqY8HFKmE=;
 b=Vf/EHXmSjQrbNkbl6lCzou1j21qFiWHaSwnRnzSYEgX0JOYkyY46LnCE/CQ1Jr4UALATrzzoPYUmUbBHBUNEI62EDA00mSUeeqJggT3bVMN0OgDzz1tszaKXps42r4Azzp3DxiIfNK0cFTnIO6GW7q6xt6rbKIQaezej2Jdt1tHx/SI0dlx7Jvfwb98UPvD+NMFEgvf5F7jN3MP9pe+PSM5Hu6MIMKu+qXjvf1nMtBP12IMdE0PNGSgs9+fxkw+fq7AGDGSVLxNoGFvSYeylX6HTL8pX9PGMvZc9fSLG9yFYxmOf5CTj+XmcJgqMJsc/YR/Enk9/RxpLU7f4/S9QnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 2 Apr
 2026 12:50:25 +0000
Received: from SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::79a1:7b0a:45ee:cdee]) by SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::79a1:7b0a:45ee:cdee%5]) with mapi id 15.20.9769.014; Thu, 2 Apr 2026
 12:50:25 +0000
Date: Thu, 2 Apr 2026 08:50:20 -0400
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
Message-ID: <ac5mDHs-McR5cJSV@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY3PR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:a03:217::26) To SA1PR11MB8427.namprd11.prod.outlook.com
 (2603:10b6:806:373::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8427:EE_|MW3PR11MB4635:EE_
X-MS-Office365-Filtering-Correlation-Id: 06dc849d-c9a7-4bc7-5783-08de90b668e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 0hGd746ImYorNCKHowho23gUdTs+weUBIJOa7sgFk6j0ZHMxIweTvlSPReZu+IZN4Sb2SHBulyUEFwwm8edbuGnWci4GPCPJVbvdOTprpzW13M2H+6YxIF+biCtv/0/jyoK14h8z96BybYfZJ4zOcRHmIEHzeKHnoGr/seDAkEOKz08nUi+/6/4iDvarjzPJ31jikq2jvN/LoF9g+R5eb/2ksDOShTvC89q6HM0hynlKRx1uBrtQXRXex3JMdz34cYfvAr97MD/+C2Gk1Pt304saMhEwVYkByYchiPP5KtxfizorzQk1DuG8+FZSN/N6tv8WvWfYMuPGJ5cOunlm1T2hgmnWtUXuPzb62HDMxphjB/gSromGyQsAEsW0Ad6wfMo6v034Z2VjurYK0PwiX/0zsJGWt4+8LHjcAKWcwQpwTr2iyfVod2GuRFPJHXflDtZlixSC59KtLcMS4VnRZhDhkKqQpLRW32coEt4XWlnucSzxfAFVCuCOmL0+VlSZ2/YATEt7iSCUhP5huFvz6WZMpjeIGD3Awk5w8bU+W86SkRacHJHqFCuOg+D/iQ6MkGVBjS8XGxKo49KoPCxK5nA3fp80cuHtYpo9Pj/XTztNI0/mQUXwgHuYLsROEo5juXSbBILiJYYDAZju8gWvwbytPaMgBx7QTxgJlUDBRwfsU8i9m6n1CG13DK1ggYnm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8427.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WX361IzDnK63dF2MZK/jo5y1SFhijzy8E+Oqvkq9h4SGGxchfBS8xLG977kj?=
 =?us-ascii?Q?G9bsekqTl3Bjth5i2z0ifFeCWYBwLccOM2Ph9MNePBJk9XBYo+XL0ylaesEu?=
 =?us-ascii?Q?gN0fKjvm7IkWPQ/yvSqwkCZcEVDJHi/x36fpHMEIxP/S3qmvMFTE+OzPTvfO?=
 =?us-ascii?Q?5wCAjgb9gEeK4cUOub+KI4k6qDHY83c+VCs/qsucwz3wd1KQzvxJpqkJi6MD?=
 =?us-ascii?Q?8VAJX1+cokeEPJDCq+1TQ/Ys9FbdhrD6Ml0TkK5aBEzQrkZSVcjzo2eSwMSx?=
 =?us-ascii?Q?rBpucXDXDhUMWHdtQ2HpqEEYYhZPtyQbwOiJYFtDVEzfzDadxypg/Gf9vYEo?=
 =?us-ascii?Q?90BEElgHxo1zz5eYWB2cxzHpPmf1fLJ22q4cdUojfLPF4iDq87IhBOvwzxUq?=
 =?us-ascii?Q?aTHjPwJhsgL2few3lRDwXBwAHePtUP0J/cvYQUyRuWHOvHn2QTYZ1oFYTbOH?=
 =?us-ascii?Q?tbEOD6IYJVNK8RUAwBRHoNL2ariBBv8msg8HRsJi6ut2WM+aUwjSCUwSKrBR?=
 =?us-ascii?Q?6tT9jJV6LJ+dLiPMahj5F5Df6aMhaJfIZbT1mgAZOHYajVce5uk84VvPTh7l?=
 =?us-ascii?Q?haoi15DrHGwHai4wRz6JI9Ln/frie40VHMMunkw2ICe4OfFLh9O9ovADkxN8?=
 =?us-ascii?Q?Fj1KHxDr2MyeYbsmID/r5dPaOADT0QY9bCqtLO3wY4cFx0c8ZZgp6ftCMJZc?=
 =?us-ascii?Q?oJ10CZ9PJBa5PmwQukxjC+Z5P9p0FNFZlsuNhivdhhIwlZuFq0tjoqbJkxIl?=
 =?us-ascii?Q?tKSxiBwqZCiV3Ca2LHQhj2RfwGNVSrGE4uRs9WBIvR0jJBmfNCTlVNEzGx2D?=
 =?us-ascii?Q?G6mbtbQWuABvPDazYlJaR23whfeWgPHBB02/Yr1lvKbS7gk9tnpyHsNVN6/w?=
 =?us-ascii?Q?Oc9WOP+Be+FdRf1UuWP6UNlN2tdtbvEsjQYRS9ySdvIwfEb1GBB/UwZZhoGh?=
 =?us-ascii?Q?mHBTunLjEICeXRsg0HG7uOXgU3ZIXTEYt25jFBiRX+g4cnYS5rZBU7PeTVah?=
 =?us-ascii?Q?FVZIWSx1bAsdK/GfXf9UdQA07BSSB20AYGMew/4U9RY3Fz7+SXztNshttJ11?=
 =?us-ascii?Q?Yt6lbsSEJIRBN5pzoS1Q1Zaj0sCG0Agt+WJH9T+Hlwd2s85sg+CZ0rfUbeNX?=
 =?us-ascii?Q?/Db3u6UuJUCBXMS/ViCDotS8rpRj6CdkuutcXnViDTHqxmxJi4ef/6p4gD4Z?=
 =?us-ascii?Q?0XV4pinPZ1t4+q4oLbPuqidkGqOy4ROmQ1BnD79PjEA8lZreql9c5Nh6U4Nk?=
 =?us-ascii?Q?mMpTsnstmMWcOUjEtkO1OsNHrLstGuYI+CtmvIya12rAqrrGsXxMSmdgmkB1?=
 =?us-ascii?Q?ucoMz6EgRspzcXRYz4RoF/U7zlycaWJLRMkXTiqWI0tCBFgBF4fBXCMdL+63?=
 =?us-ascii?Q?ZxxfjPNyrWOQ18TjViIemknwTwdj5+R/K9fzYYyiCzT/IGc1aE+JmA81pHaE?=
 =?us-ascii?Q?3KJey+x9RTcAljllSWyEg5qSC5HzE8JCu/kZguIgfjw9MbWhul4Wb2I8CJLT?=
 =?us-ascii?Q?bDQxr54gf2jLPgqMFugpKp21pZL+mXQsd+90Q90Dmp+qutEyg+DMt6z/5NDl?=
 =?us-ascii?Q?C0ZG0ARKKXIRMasy9CuzDK+Pvj+nWSpDCRyQj84yba/V2uW5gAiEkzAmQRjP?=
 =?us-ascii?Q?eC31IRMwPq2YfBRtRfiCDgLSZ60ViaTo/CcIx1cgaBg8lAYfLWrY+s6Yvnk6?=
 =?us-ascii?Q?uvhlP6RTCOkwmPpD6EMEU55JBwFOHVpGanB2slcQlGGJfk4aa1+r9rS5N3CX?=
 =?us-ascii?Q?INijlIueng=3D=3D?=
X-Exchange-RoutingPolicyChecked: BUBMZLgnCYiag4CMDtVVQKa/q8yEKa+CWD7JnRzG9SckNI5PZs+5NClBMHWZNPjQbyd15ooJEseAL6o2/p63V7/m8aGY8jJMC5O+JOpj5Vlxk3z05JMd3vHHGiDGDKzKOqKxKzGiT2pN4+16oLRXt49Z0kQqqW89YYdHq3TjdD82xt3YotXVxRIUySSN/SojRJgFiILwmifqiFL4YTE6IfwqGS1qez7Yq8A1KcW0AKYZRJ8uTe85qIbNDl8ukIskDr/WY06e/amev2me2C4zuu+r1t3V2L8LhAGJCrl0HUFuIZJum5L4hwhZgdz1ppKWqrPut0pT95X+WPyN8U5xtg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 06dc849d-c9a7-4bc7-5783-08de90b668e3
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8427.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 12:50:25.3820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vf8w/GvDBmJUfvO1kAXkFwsXNLNjQQ0BesuJs+6jJYWLeIp4YKYL7YHxVS54eWbTehIWD7AAhSQHRL0a+d+r8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 244713893E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Here goes our Xe fixes for this round.

Please notice there's a uAPI fix on canonical address handling.
That should had been the original expectation and shouldn't break
anyone.

Thanks,
Rodrigo.

drm-xe-fixes-2026-04-02:
uAPI Fix:
 - Accept canonical GPU addresses in xe_vm_madvise_ioctl (Arvind)

Driver Fixes:
 - Disallow writes to read-only VMAs (Jonathan)
 - PXP fixes (Daniele)
 - Disable garbage collector work item on SVM clos (Brost)
 - void memory allocations in xe_device_declare_wedged (Brost)
The following changes since commit 7aaa8047eafd0bd628065b15757d9b48c5f9c07d:

  Linux 7.0-rc6 (2026-03-29 15:40:00 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-04-02

for you to fetch changes up to 56b7432b7e8e6ae1b289cb405d16db4150ef193b:

  drm/xe: Avoid memory allocations in xe_device_declare_wedged() (2026-03-30 08:52:20 -0400)

----------------------------------------------------------------
uAPI Fix:
 - Accept canonical GPU addresses in xe_vm_madvise_ioctl (Arvind)

Driver Fixes:
 - Disallow writes to read-only VMAs (Jonathan)
 - PXP fixes (Daniele)
 - Disable garbage collector work item on SVM clos (Brost)
 - void memory allocations in xe_device_declare_wedged (Brost)

----------------------------------------------------------------
Arvind Yadav (1):
      drm/xe/madvise: Accept canonical GPU addresses in xe_vm_madvise_ioctl

Daniele Ceraolo Spurio (4):
      drm/xe/pxp: Clean up termination status on failure
      drm/xe/pxp: Remove incorrect handling of impossible state during suspend
      drm/xe/pxp: Clear restart flag in pxp_start after jumping back
      drm/xe/pxp: Don't allow PXP on older PTL GSC FWs

Jonathan Cavitt (1):
      drm/xe/xe_pagefault: Disallow writes to read-only VMAs

Matthew Brost (2):
      drm/xe: Disable garbage collector work item on SVM close
      drm/xe: Avoid memory allocations in xe_device_declare_wedged()

 drivers/gpu/drm/xe/xe_device.c     | 27 +++++++++++++--------------
 drivers/gpu/drm/xe/xe_pagefault.c  |  6 ++++++
 drivers/gpu/drm/xe/xe_pxp.c        | 23 ++++++++++++++++-------
 drivers/gpu/drm/xe/xe_svm.c        |  2 +-
 drivers/gpu/drm/xe/xe_vm_madvise.c | 16 ++++++++++++----
 5 files changed, 48 insertions(+), 26 deletions(-)
