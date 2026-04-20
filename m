Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mB55Of515mlBwwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 20:52:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF1343318D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 20:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E34810EB22;
	Mon, 20 Apr 2026 18:52:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ehcoeIFQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992CB10EB1B;
 Mon, 20 Apr 2026 18:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776711161; x=1808247161;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cuDSQP/X2C2nesdlwTRtDA5CsQkzUSdtKYFEjh3wFXA=;
 b=ehcoeIFQkGC9qao2dfoCvlvDQfU1EifZj5ZIDHrNLYZa/lfI3jIeYgac
 f6+V/8azpyZ5fq087wCRzH/FwHUykIunf1YnkDsZG30Pj397lt+0cXP2Z
 H9Sx2VdRDTPjqfHAIyfadbeVSYgk/ht+CKOus17XWmLe16yg7M+SEX04n
 oPFyygfezZ5Q9v0BobyCQ0ThfL0AdEjmz8c7U7clb6JEhsh37GBOVLGBb
 okiaP7LjfS6PG5Su8ogXmucECBLEuPc6pseTtxTt5rWkiJTGs4hQhQec2
 Lj07d1vVPXbHL3xrZYasU0dCzvw+xTY7pv6+qkLbaOMcZ8vhMq94C6d4F g==;
X-CSE-ConnectionGUID: cF2oTUXsTJKJzS0hW4WuQQ==
X-CSE-MsgGUID: XgCiVGtcR+2OLi5qgultuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77709134"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="77709134"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 11:52:40 -0700
X-CSE-ConnectionGUID: INC2IweiT0iX6tjYn2TjJg==
X-CSE-MsgGUID: J1eZL684R8KMXXbvSg+MwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="255271777"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 11:52:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 11:52:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 11:52:39 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 11:52:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DwZr/XfwnZXjZjHMoq6zoHkDnpkr1AMqI0dnrbBDD597FLHlJrIuyvdzHObbGr6c65O+rE1sa6uju2pO99ei3VewKHJnVKARAznsxeALX4YpenpYXJMorFVXgHnzEr/JtmFwDLg9yZERSdTZCVVUvQP21G08UbovVOmKSZ00uytIrmeR4MeKSa+ctoAhI2b732zpXWJ6+0TIjuQYbjDwy9f2TSMlvKqL0OpsnY6GEhKvMmtvvEG7VkkkvxmDHeuSxn3i0QXOczzflHzjOwZvLt3as53ZiOrjd+2Girn4pnD9kurVo7jiF4UkIg6NfGFmVeciR+e8y7AGH1mX3IPrKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQOwZ+g/48nfoM/ftw7X7B/rYGfxET31T0MwAazCeYU=;
 b=TnSv2qkSOb4OO8Z0IxkDzP9odl/xcWVwm351wrLbMPlYG60RgmQuwd5NphAktQZPGtHhHv7zMFLN9j1UsN7WqIP8xx+KU+a6PeSDD/W3RVoOfOH4zhrmvjqOwfyZOSB4EWJkyZJ7mtS41cxH9kIgSgH08Qgx0psVSFioPOgy+9WhVGjMfFRPpwGH2NVZLMBlWmKLgSdMLwWIO+3ieQOY6DUusXOmLrELfZRpzunhwrJiFBE8xWGB3qqRF2kVhQu2WZyAeZPm4Yl7LDAUA4BXDJ+FZLm9g3xN8FbkQXW1AFQG6UWunEOzS2twqHglC+jslQ889KFOGg+vwwHKFGiMDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM3PPF1939049CF.namprd11.prod.outlook.com (2603:10b6:f:fc00::f0b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Mon, 20 Apr
 2026 18:52:36 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 18:52:36 +0000
Date: Mon, 20 Apr 2026 14:52:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 0/4] drm/doc: Remove obsolete RFC docs related to i915.
Message-ID: <aeZ18R8XKCCUrRel@intel.com>
References: <20260420083318.92038-6-dev@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260420083318.92038-6-dev@lankhorst.se>
X-ClientProxiedBy: BY3PR10CA0013.namprd10.prod.outlook.com
 (2603:10b6:a03:255::18) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM3PPF1939049CF:EE_
X-MS-Office365-Filtering-Correlation-Id: 687ec22a-89db-444a-cbe4-08de9f0dfd06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: CZpnrMo278uKa4wu/K/da3mgdxd0kR8v59gKZ2XjKVkd5PwmrK0C6eheJEkl2TcQfMDhEcy1fFDp7cU1DYXZD/dFQFbCPA+lRbdrS5A3JsZ4ZYyf0RHrOyezwqqp/05L+NU80Vj/PE15imumKpFemEwQN3wlsz8tGQa23FjLWj/+og5256cR4O2mxy+xJjM+AE0kAY1yG+GJVX4q8S8UY3BAnTZeDF8R2d077jmca4mawi5QYZWScaIvdsiSOMp4dUwLe71KEytNjPfGab35HKVORfv6FSHYJw8JUuKDgnis+7l4VSewcSjnJ0Nf+eJ8au0QK8bSleWkM6W+sulEIMpnPvIrgmLbeaBsJf0fYtCWKWOSVAQ9EPNMmDv5TDHNAgShKYb7RoJ4yYVBKrrHx12i55op4W2ico3Dj+wR3yG4dqabRSOHANX/qv01pIKkBPlkW0qHX2rD8Uis6kmeJ0yBUEQLyHZB2B2FTGdXtq3FWJ6ylqOPZwWRmmtffpv/Q4h0iaAXcVh5900pS7th75QzQ/CdrrxcDccAojGeKZuhUfl6Dmu1WEuHbnwYGh2SiPaGBpQG3z/6+JYDqlOkrSshgnCTyPUz/zSvcGmSofBGK94kZLbqamoiUx9DUOQoCtIbYEtrwg6Oyabhnpv2iI6gjefyRNHBCw5aFs1T6uFvAoZNkGqcnwYndSqdkMrts1VXVxMOIXmwiHmlb3uVNbS6Gmf9bAKflUcVsOrcuQQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZVJWT4SBNEh3fp0OAJuePanYiCTeR6Ne82YVnvZtuiDD1YytpYK0D0F8XTRh?=
 =?us-ascii?Q?7LgrTC/2qTGSYatQy9MhCFxuf+klM9FhfPtry8WhIuCceRS1TgUFQvZIhH6D?=
 =?us-ascii?Q?Uc8Aeq5xKDZsclaEVklVbLtsEsu+L+ahnSGN8f6/5CuOogO1KDKIbIfTT4Z/?=
 =?us-ascii?Q?quPptU02cl1o6nMyXElS7qPRzBnqyfMQQx1R5elXQZmNNjGYcWGS6yZtXon1?=
 =?us-ascii?Q?as3MXN5tBHO38zktXEgQsZzTGG3l56JrCNyZ+Elml6AsWsLweEbpsEL7aW9h?=
 =?us-ascii?Q?DJQgIqRcB7g60wPpoLDHlTWRg7AW1SD40Y4yJAQILIvd9tpuq5MZXECoRYm2?=
 =?us-ascii?Q?DtO9mdzvifcSZrmoZkR0wVnezuYNBteO7Sld+iM7CxIqP7/MMGbheFTYAeJO?=
 =?us-ascii?Q?6vPpW7UY+3n4DQoKnFlzEuBi9IfC4y9PKqDdWekxxTXO3JGvcn+L+c9MGrLJ?=
 =?us-ascii?Q?qKXu45jMFzHDlAMJ4mIWF8DclBF5ftg/G3b8/qrrTEQuMcBUwSd2MgA0ZxOj?=
 =?us-ascii?Q?RG3Q0ylDd5BxgvoWNo6iMCJpea1EzKOYUbpqqrXHlYSMh4uXBjO/ms83to54?=
 =?us-ascii?Q?ibPdPDdxeDWThMINjxN1teZZIF/e5dYOaWS/RKY/7TQAqzfD0AS9dLGUYRV0?=
 =?us-ascii?Q?MevXxIjVbplv4DgxwfOAzizsZFX/Xlg8ThYdQikN64F/O0xubm766Zg9MMjl?=
 =?us-ascii?Q?st2rKUZb+/k7RwUumgupZiZH16sj7FKLIIAUCl0Mfg6TPc8DUW89YSTYUNy3?=
 =?us-ascii?Q?QkRNvHycynfOHYAcw038LAD7fejQOjO16nd5iWRYanXPFhpr9eIPse9q+KE4?=
 =?us-ascii?Q?hnc6Q/4MPEo+FUf/bLltduwasHMLciV9XgzQYAsXNDYFKn7pH95dv+goYyHL?=
 =?us-ascii?Q?+ldOOEmXFoOQkZOqlse2XIIOwzX1Mf5NUWF7GVkRhCIOsPz/t2dBVA3uyOGk?=
 =?us-ascii?Q?GLPHhNfJ3Yzw+6q5bWAjf6ZtVmLqYSeRIZeRm6Aq0E17ARJg+M70+09i3/5i?=
 =?us-ascii?Q?ZajtjbyVHFbhp5XRbzxdTNF2zQJvqGsbcaCjS8PgU6OAagoukJhYT6/0D0Kt?=
 =?us-ascii?Q?aIMWQERGnoidrqtIce2wyCHvvTxd5t1u7zzf+YdoPDTuXeVUxCSmSDcDy//r?=
 =?us-ascii?Q?9XC1cmraeGGJFckrkxJ8j+R53Vm7llIgXCf9vl6HlrXIdzlVBJXI+tOCvnGi?=
 =?us-ascii?Q?lu5BsVWKSWmG/8Sh5JuuQj6sZb3imIOQZw7U929RUKAlciG52stPUFZrfdON?=
 =?us-ascii?Q?p9YKmtjXqQY0hXm7Aiw801eDQzsKctdqE2EcxvLYEqhAlpMRQN78vUVWDbjf?=
 =?us-ascii?Q?7BGFS44om84ABL0SKBfGwggyQGyZh8g2wtBEKxg+JSHdwucAXWRN5Nman6Ay?=
 =?us-ascii?Q?SgX4H2dZFK0Ijrd5kKMv9+d9DW7b9xeDUt/Sg1OxT5W9W3GkZEJ10Bb24dTE?=
 =?us-ascii?Q?gk+SI6SBiwzvOkZ86brGOi+RxT+VzyRqCDHoXykr/egPLF6YLFQjcq61xJT9?=
 =?us-ascii?Q?XG+PvScbsGLTTxLiprv1QEvcod5WuCe20z4kbGskQ3DPNs9weESt8lLeu0NN?=
 =?us-ascii?Q?hH9ZvM5nZi7xKjN0G6qM10ic0lDhBmxnIIioMW0qQamJOtFSpyLV+EJLmPzD?=
 =?us-ascii?Q?YkW6oOrVDr7jQzBky3LX5pwIXm0YoJvsND4Yyl31HlK/nTmhz1c2FFI22pNn?=
 =?us-ascii?Q?6zCUMRXmSGuQahmr/Q3kXbx/EC+uY0zBnuJnj3UFYsDAZzkwY48R/uI8y3HN?=
 =?us-ascii?Q?NDhI2q7xZw=3D=3D?=
X-Exchange-RoutingPolicyChecked: TAtryYFK64ueEa8mU3nc6qycue9hmXfeUyQk5fmayLxi//aahlGIUfiYm9UpK2k3ORSmV81MOgSmRf5pNafbScQkMDGi0QhkhhPhpRcOoMrzmcz5fk5n9G7yy7408SefgrRtFTj0K2YBRmxAYxu01y42/AHIuVMTpES9pBRKgCjLn7rcZPW9lBSBMUW1LkUUfl7ccRRiWL6mFct2YuNj9FJW1GkXwvrHQ8TMpDLYYlTg9vXG/GnmV8HhKAeC3jmLzYUG/WCVKuBcaKIq61fVQbk3+LysgitBQhszxTvjYlbsF2ogpISDOqfBAT8Fo6HV92cz50ClPjcjacU7bVJsMQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 687ec22a-89db-444a-cbe4-08de9f0dfd06
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 18:52:36.4491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ipVkh6csIpSMTstU1GGAyCGPQ4E21z/CFLyPuS/9jyIk0A2GfnhE4ioRNPBZrh3FUVzOYci5Ni+CC3d44qaZ2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1939049CF
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: 9CF1343318D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 10:33:18AM +0200, Maarten Lankhorst wrote:
> I believe small_bar has been implemented, as is gem_lmem.
> 
> xe has implemented GuC submission and VM_BIND, but realistically
> this will never happen for i915.
> 
> Either way, those RFC's are completed, and can be removed.
> 
> Maarten Lankhorst (4):
>   drm/doc/rfc: Remove i915_gem_lmem.rst
>   drm/doc/rfc: Remove i915_vm_bind.
>   drm/doc/rfc: Remove i915_small_bar rfc.
>   drm/doc/rfc: Remove i915_scheduler item.

Thanks for the clean-up.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
>  Documentation/gpu/rfc/i915_gem_lmem.rst  |  22 --
>  Documentation/gpu/rfc/i915_scheduler.rst | 152 ------------
>  Documentation/gpu/rfc/i915_small_bar.h   | 189 ---------------
>  Documentation/gpu/rfc/i915_small_bar.rst |  47 ----
>  Documentation/gpu/rfc/i915_vm_bind.h     | 290 -----------------------
>  Documentation/gpu/rfc/i915_vm_bind.rst   | 245 -------------------
>  Documentation/gpu/rfc/index.rst          |  18 +-
>  7 files changed, 1 insertion(+), 962 deletions(-)
>  delete mode 100644 Documentation/gpu/rfc/i915_gem_lmem.rst
>  delete mode 100644 Documentation/gpu/rfc/i915_scheduler.rst
>  delete mode 100644 Documentation/gpu/rfc/i915_small_bar.h
>  delete mode 100644 Documentation/gpu/rfc/i915_small_bar.rst
>  delete mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
>  delete mode 100644 Documentation/gpu/rfc/i915_vm_bind.rst
> 
> -- 
> 2.53.0
> 
