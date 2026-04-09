Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HogMFAa412l0SAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:30:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9586B3CC098
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145DB10E80D;
	Thu,  9 Apr 2026 14:30:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTQ7myKW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724F710E80C;
 Thu,  9 Apr 2026 14:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775745027; x=1807281027;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+GPtgeVrWCN94J8Nkjno0oEfqocMy0eImjLpI/R842k=;
 b=gTQ7myKWL5vLoOxnuV5pHL+kxtn2TO4PqxOUsUtzeyknxRkkznOjG5Yf
 UM7QZEduKaMSYKDtafvai7eytQZdG3oj3q3HMa5CpAGXi2GKL4N22gvg+
 jEI8Z5wj0wK1iTt2oCWR6kkrjcZdP9uzpgCUgxHiCWWooPcUCTgADDhj9
 BwO313YJXYnjRVXb8IWyPWNTCzz6qzyp27ji1xcHvVGJS5bS05gTMalOc
 FLA2TXXtUtKU2Xexec+9D6IqpZGQNJNRQDgsSTWyK1reeomVUSpo2sg5K
 ocJxdfdkRPlRCED4fBDQiuvWKhcgouFfMt7epjiBkLh8GrNdLhejqjuXL w==;
X-CSE-ConnectionGUID: Ia9/0QWSQqCQT/4iCH37Mw==
X-CSE-MsgGUID: hHmT1oNzSWSlpbKn+VQNog==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="76655790"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76655790"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:30:26 -0700
X-CSE-ConnectionGUID: Rqx8o74cSQG6BVpoarYKHA==
X-CSE-MsgGUID: vEIlGhV/S5GbqLdVzncqZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="224035139"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:30:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:30:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 07:30:25 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:30:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oFJT+YTaARjDYPcro8sp9cIZcjqEUdwGpnUQFbsd2xPwmdwrh0o4J6uCuJFA2tnNiPXCvkHXnI2uVPEdkE8rzRkuP1qAdXB+rjnS4FhRrVDTRAUGSVZPk/LpPrFd5TVFbubgb7QT4qLDE82Ubp0zgb6mE11eADWops642Q5wCtPkXY6cgvb84mj7i/fvRbDvqGtxBACvjWPRKBdcvNHDRyXHE+XfGS73sjGY97yDRxnFhCokCEROZZW1/YlJj9nTRY4jdl/DlfHblv3c9GdErQUUYkppsk++PxC48etclkTyvLy60qcjREOPbi2mtF07cLwsoe5q9olfuwUe946n1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGww4SCaL2SexeLSSyWt/tlG8qJRwToACxvpKJoUNIs=;
 b=aU6Y3BGR82HaK6Rzwrz88xRMCVbnxR1ZN+D22nTGz3yAbVrwLKblX4tXtvo+jWqs2k9cMMG+oN9GLoK6cLipZkviLuaT3jc6pK6sNZ0bnxbCsP/EBndBZEPBY5Y+o4wo45Ih3gpB3GodL6Wv/bI2JLpENBvcV/5vfOZo6uGZyYM8yqxfKcgVJTzuZspTsXyoXtGuSU641hHosdumvl7yb2me0a4u0xzztrXgaPCkmqxla2Qx6JnnyTO0Jko2aBN3EAkLYp6hbwyvAIgQoga0a3ddit4m8BmUi/D+/S4+Z/7uHeA6zqvYKc3zdK9N0e0ob2XKW1WrnR4dlmXuXwcSaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH3PR11MB8096.namprd11.prod.outlook.com (2603:10b6:610:155::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 9 Apr
 2026 14:30:19 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9791.032; Thu, 9 Apr 2026
 14:30:19 +0000
Date: Thu, 9 Apr 2026 10:30:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Dave Airlie <airlied@gmail.com>,
 Simona Vetter <simona.vetter@ffwll.ch>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Oded Gabbay
 <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: Re: [PULL] topic/step for i915 and xe
Message-ID: <ade396UuRQoPLGdS@intel.com>
References: <cc1ff0a476ff457e88251e22b83c1a45ada11ecc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cc1ff0a476ff457e88251e22b83c1a45ada11ecc@intel.com>
X-ClientProxiedBy: SJ0PR05CA0084.namprd05.prod.outlook.com
 (2603:10b6:a03:332::29) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH3PR11MB8096:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b6f95c8-c97b-43a0-b073-08de96448684
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: d5MmkFXB+f3Pf0Pdofg3x8bbf/CpYGu8yGQfqffO3SVdfiGtr83R7bVxmoSXAAYbMnLaqv6hXV+FV7rXNg3jS1nROehTDQzMC7W/vttGCF5YtnFBf2zeoU96U3KfzaAfJh2RRSC/78hBxtDEbPNTRT0wvg/VirRot1IYVerBRKba6iWfu2JDr39S+ZQEvLLAGF/VP19UyHb+h2h4peaQziybM8KcAxuNP04vpyAXpkinkKKAXSNSGjOsw+8M1JDhu5MTGG0TYxyefFlCzTmSQ7Z+QvoghoM2OY+0CSd0x8hfLlLvSOTWCia5IpS4K0FAH2dVZ/mCdwD81zpt0Rs40tndaoUamBlygfxgyU78/bcQ6OWHNr0BpIQnp5xeTgW3YiPDC69nE5vZ+j0aI4zn2wIYgmkLPUYgbqlPq9q36utHyDbUKOOeqKGkv6n8ucdAt5m41coYthV+RUe5DGGo6dhwuYcfFYrDCLqNqoKjtH+Rm4UDalxal8NoYWFD2hKk6DE8g6VoGIfDwH+Q/3Fo6uPT7gbn9uHBjBWlvP5cNabkziAlBd8W71eHOiRputdnb8DnE4hAMmnAEUc6qIuTPEeDskTbt5bPMoR/EcYv679KrgBWqq0ovQ3BMQQDQGerXzZET174Sdz9pc7J1QsTauyYyHNkRXGF6NemQ7zXBeD34GhdOaW8fOnGhXzOOUfD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DAjCmacwP3rRy8DhtEF+eBTlb2VKkvBitT4daSSQCnatKxaKPY+ZDYxFCDf7?=
 =?us-ascii?Q?lPu51ZF+6a+arg2lbuw2ZpdKt+dhmtrsv3yfcNBYCBZjdcsHV2ZX5t4S/flU?=
 =?us-ascii?Q?AZ1Awt2d5Xx8Dg0ui0SWbIXwyUylkefzXYCtclm/GA9wyrMWSzU6iMyTprh3?=
 =?us-ascii?Q?HbWcIgCA7Jo6sj0OKq64vfe23hy60aWNqi4O/rmOH8KLD5sPg79P4Q06vu0V?=
 =?us-ascii?Q?6hllJzcRl/u5Jx1EqBGnzqxp6Sx/GL/1V6Xig89vUg/UtXuTL48aa9R3YMOz?=
 =?us-ascii?Q?erBG0vxDgtZpAoT7baz1sRCZTCJ6vb/ePGtOVhTi2O5aOQgxzPxwK0nSY3Cq?=
 =?us-ascii?Q?hBge6ILshqEoUZ6hCSTGWeWJmtsBa+AX4QBMiYNhwQzwEF8XYflEFt5jO44c?=
 =?us-ascii?Q?ACxdR5tOFOc/q+OuarSDbKijhyyrWvvLqXEq8lI/A1VCFGvDREXosjWuf2WV?=
 =?us-ascii?Q?w2MRTT3gDnuWCRJWOPmfAUNhaixSXUFXZycqmaBICvUIqKTj2t2G0KrTh62E?=
 =?us-ascii?Q?RvI+4SX1/3HM6RCEf1bGnzMuipxNOLHN8kUTOcNEvzg/sa8jvdoaGSF25O2j?=
 =?us-ascii?Q?MmTngW6EzQHKRbuxegoctWeFjjkm59k3T4Ckd22wPYjJ5aTOiATGL92diKZr?=
 =?us-ascii?Q?0aLYnFKdBWqZuzDc+xxzLNjcyBi3pfOn0dx90BYJtR4tNrQDKE+KHTtkBwls?=
 =?us-ascii?Q?ulL9age6ZbCgq5PNi0hfD8RWGRnBp/3pouWVgKiMB7vrYdIis87DkqHHJBww?=
 =?us-ascii?Q?iifcGgunLJWhbUZezNQhPJunGpv/JOXvCqlLYRukUnvp9hF8StbEWpyKU3C7?=
 =?us-ascii?Q?1geVOMU/9ls6doreQSrEwW1e0lmaoLsVG2qoBsLUJ4LFNHwYYArYw+GSdEH2?=
 =?us-ascii?Q?cdbylOCbLfsGvZLiN6tNwZxz/LNxv8z++BjnLjgRFUCgw+6nRn+48X0iSBdc?=
 =?us-ascii?Q?cTqCTwh3V/kSghdldVVz/ZALWvoILKDtP7gPb5wMPvjcJGMyvghwa8v6cPi+?=
 =?us-ascii?Q?w452DoRT8H70jEHnEi14bgDPnyD5NqUII0nEHv4fuHpGT1nTy6GCoakkcpz3?=
 =?us-ascii?Q?HomEYu9bkdbsjPZvqh33bH1lES3Rc71bdIxVwIBmLFBA4oYxY5gBhQcyZj6u?=
 =?us-ascii?Q?Gyk+4JD5YrIyASz/fv32daMSWFaREbY5Uzif7oDRPvRKFUhBnx3eueLCTdcG?=
 =?us-ascii?Q?VweCyhhvQj+rUVfUH4XNMA1Q20+RIjjKK4arLUd9iYnPuiR3o0CWCXDd5i/6?=
 =?us-ascii?Q?VVxLSVKVISymohWVNoE19ze222OmKNlTG69Ivjqg+wq9IYvzNUg28nGrhcFT?=
 =?us-ascii?Q?viVMF2e0p/jeWBuUz4wbBzB5jTCTs16lfDZdajcLnyjQKfx2vwpo0KlKQe6W?=
 =?us-ascii?Q?qHPz66dHWTSQ6XF80L3kM6fDVuib+D15ofR5zX1G6pMDvMUcHqLzQPQC1x7/?=
 =?us-ascii?Q?NkwYFakv8cFnjKAWYy+sZRhbXjyAYY8yx4jW49Hk+PdPRLvwuBDUP2qbEebG?=
 =?us-ascii?Q?YGhsEzVwPOvIXmlH6G9mymHCMtE7KleDKJ5UqF/y4mFrC53cEbvI7meF1ydj?=
 =?us-ascii?Q?9tfzKGEIpPEdnKuhHVZp3y/LEWaNBYrMF5xBwj8448ybCOxl3jN63hpD4mKD?=
 =?us-ascii?Q?guzitVf1/JiTyJMzytNoQAWp2BT1tPmKlKbP19o++0DtAJIv/SO8Zeke8+Vg?=
 =?us-ascii?Q?6RM05R3ELpcazRMSVp5GOk+EY6dwSbTmNTsudKZHL8uZWuNJRrLm/jCsYiaP?=
 =?us-ascii?Q?eGtDbmbRsQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: jI9SE2KSHNGttCQSO1RiukqYSkRFaQBHnm6iKAs1d6agQYiUkWJBYT1BkYHAQsZUf8oJLQnigQN0odESlzX/YgfUBc3tQBDR3o3ushVbampeR3OswLUhFZyBQ4vlEY7m9CrnidoQ7Bx9ZURvrASh7xeBY3omD0TZt/Ngxq153vUFhv6snuiM72GZA2CjiWJ75vqZChe//+SaNXD1w5cQDbs2IsHHuocMppX4S8uRikjkM8JJWajWcQvUoy5zKsFY8BJb36urlMOIrE+Nw1nioEbSqn0QKI4jgxLAZm1qCga0HhJJgWq7hdsUCkmVcJ0e2RCr30grgTpsxm4dlfDAgA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b6f95c8-c97b-43a0-b073-08de96448684
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 14:30:19.4722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sgu6rL4HQKxOOnjHr2NysWRw5XDXEQAAey/8xgitqIHeeX16um1K/DI/ualulYv8zpw8A0VBCrEceeMDO2W0YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8096
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,gmail.com,ffwll.ch,ursulin.net,suse.de,kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid];
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
X-Rspamd-Queue-Id: 9586B3CC098
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 11:02:20AM +0300, Jani Nikula wrote:
> 
> Hi Thomas, Matthew and Rodrigo -
> 
> Here's a topic pull intended for both drm-xe-next and drm-intel-next to
> unify the steppings header and enum between the i915 and xe drivers. I'm
> opting for a topic branch because merging this through either driver's
> -next branch would likely be painful conflicts wise.
> 
> Please pull this to drm-xe-next (*), and once you're done, I'll follow
> suit in drm-intel-next.

Pulled to drm-xe-next while I'm covering for Thomas.

> 
> Thanks,
> Jani.
> 
> 
> (*) Hint, 'dim apply-pull drm-xe-next' on this message will do the
>     trick.
> 
> 
> The following changes since commit 4516432284e1b2ad9e70de8067f779c9c1072189:
> 
>   ttm/pool: track allocated_pages per numa node. (2026-04-08 06:52:48 +1000)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/i915/kernel.git tags/topic/step-2026-04-09
> 
> for you to fetch changes up to baf310b9836445ca9056f04ec347293963a1cc6e:
> 
>   drm/i915/display: switch to including common step file directly (2026-04-09 10:10:03 +0300)
> 
> ----------------------------------------------------------------
> topic/step to unify xe and i915 on common steppings header and enum
> 
> ----------------------------------------------------------------
> Jani Nikula (3):
>       drm/xe/step: switch to the shared step definitions with i915
>       drm/xe/step: switch from enum xe_step to intel_step naming
>       drm/i915/display: switch to including common step file directly
> 
>  drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c           |  2 +-
>  .../gpu/drm/i915/display/intel_display_device.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_wa.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c           |  2 +-
>  drivers/gpu/drm/i915/display/intel_flipq.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c          |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c           |  2 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
>  .../gpu/drm/xe/compat-i915-headers/intel_step.h    | 13 -----
>  drivers/gpu/drm/xe/tests/xe_pci.c                  |  4 +-
>  drivers/gpu/drm/xe/xe_step.c                       |  2 +-
>  drivers/gpu/drm/xe/xe_step.h                       |  4 +-
>  drivers/gpu/drm/xe/xe_step_types.h                 | 61 +---------------------
>  18 files changed, 20 insertions(+), 90 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> 
> -- 
> Jani Nikula, Intel
