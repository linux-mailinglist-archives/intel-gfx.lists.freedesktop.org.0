Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54022A50662
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 18:31:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D344A10E821;
	Wed,  5 Mar 2025 17:31:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mXOZ4Ys6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543EA10E821;
 Wed,  5 Mar 2025 17:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741195884; x=1772731884;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/JomtdyVyIY5uNZCxhKkZ4a3vYfQIxzbX9SWB2B1onw=;
 b=mXOZ4Ys6idpVmf1D9mC9/Qhg7HzcwmE4EkiHHjAHf8eaLAzNGS361vs5
 2XeFqohGGhKUK/2qrtySNq3MRFTPLQoeXWm8jpT0k+ohYxS8iAGXsb0v1
 uK1Be+aruXPsw9Lodg+4Fu6ffMCyZ7HzJYPnVgI/LuiKfer1Pz6F9Xsqy
 NeGWS7yCFpsk7WtZWXfj/4OUfSKZetAFASAaaFbDu6TkrYwWA50d6GeaR
 IIG/bOMCyswMtpUOjYeujnnYJfDZYGoLxI58plGfpJvUThNQ7WpsYtqYl
 NwBS+UWhE/IziRYrzMZE5+S94qob64+VJDTjjrIxg/sTKq5Bv1cygarOX g==;
X-CSE-ConnectionGUID: J7H1BDIDT6iBxdxH07R5Xg==
X-CSE-MsgGUID: +TvZq1EuQCGAXMuoQKozSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="44978017"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="44978017"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 09:31:23 -0800
X-CSE-ConnectionGUID: MmsSzYf0Q9yBvtSoY7xuSA==
X-CSE-MsgGUID: qHpmliJQRXScCWkWq+ItJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149693111"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 09:31:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 09:31:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 09:31:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 09:31:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TqtwyYp8ZQQXKm1EC9NimxEHCW2Ou+Bm1PDZ+Bxo/k+lEJIFTaTFOR7g/PWghchBF1AWRxwAgPkY24ysetCrl2wFQof6AszXnxy3CI/SM1caQT1DxNVBoi6PNNUQnhxvv+suU3LBYaTauSzsNCY5XTX0F/hPvtoObBGQuUc2g4zn8IaVQrU0j2nYEbXAuQK6oLDYc1hAwGA//JmYmk7qAuyxOHwIKpyJnPX5m753wGab/nVUMUfvsXqxSjBZ9jZ28+USklWnC0elcqLDwThQBqmFoy9NzsicuaJD1PR+wzZFhN5n6k9ljDRmihhpkOVh70CO/iyrEgA9oXoZNxLupQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/JomtdyVyIY5uNZCxhKkZ4a3vYfQIxzbX9SWB2B1onw=;
 b=t5xd/XEoWailoZ0XeMKfMb6aeePpLgVtcIQhYC3+Mb7FTHBAG9h24o4RULzGMZPv/lqQQ7L1LLMYoJRfcRDCQsqtsp3JaNsoRX0dppiEkcFIZ8AdoWHDxq9r3PG2heVuBStOezf/UXjDMaNpVrMK6QKt7aUhZ5B5rf8MXKhNB2H3vSaazt2RYqSXN4O0Gbh2EWINhH6O/zfU2qT3mzobR/2cbB4ikcdxCWHn+hUR9A7K6FnFZooDi6LX/uy4uGxn5Ua3YQjaV0HDO3X+lW/68vIWDxlEl+hWxMXE6em3UrRzRKsjItGXwvFdbnT8U4PL0cy18xF+UKdp7jZ3PO9frA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 LV1PR11MB8850.namprd11.prod.outlook.com (2603:10b6:408:2b4::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.16; Wed, 5 Mar 2025 17:30:37 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%6]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 17:30:37 +0000
Date: Wed, 5 Mar 2025 11:30:34 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Knop, Ryszard" <ryszard.knop@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "rk@dragonic.eu" <rk@dragonic.eu>, "daniel@fooishbar.org"
 <daniel@fooishbar.org>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
Message-ID: <n5qdaspzem5hkh3pvccim2zpbwk2ghhd73kgsuju2tv4imkgvw@dw63yqj4ajtc>
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
X-ClientProxiedBy: MW4PR03CA0271.namprd03.prod.outlook.com
 (2603:10b6:303:b5::6) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|LV1PR11MB8850:EE_
X-MS-Office365-Filtering-Correlation-Id: d1486d5a-66ea-4fb8-290b-08dd5c0b7190
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?//XPtrIcnOKIwlnO61dlbXx9MOQ80S5XHy4B/g4vetanVHyk1G8qSlFCxYKZ?=
 =?us-ascii?Q?Owd7aGQZ4jt0rIw4wzf3oOSrEbzhdH2MikMeMTYAX/Ii9PSsKN1vANI8Caz3?=
 =?us-ascii?Q?fRFs+uKrrve3YN3Gr/gxNCnpMQKhdaikfIRvSKpzwVnAUq7qmSDyElGNxTGQ?=
 =?us-ascii?Q?T3n6CIRlo0KR1ZiPodIHc27BoBxWIqn8kck/YEFUmhyu4InZE5VgOi5RBGzw?=
 =?us-ascii?Q?9CJcSo4sU5T1rh210VSAv17kj3Me5NQ2lUZtH5IQy/alfE+MmQAmoBzrZLOs?=
 =?us-ascii?Q?OY0hWoToEslUW3vGVIWOV/Iop1wKCzj53ER/oCqAPE/DHFWV3NjfliNPmEHm?=
 =?us-ascii?Q?zHhgi1k8gtzjRm4YzIuYoLP/ynXUCmapj2YHFIgV5eJ4VDrCNuK/tfECRx5+?=
 =?us-ascii?Q?5R+KFbXncIihD0t16fqKdXBcMGoDzGdpXJXLZQGuhqTtzqhTT7keioA0twBR?=
 =?us-ascii?Q?Rb/4aZEzpi/O2Geqt0JxctLgndm7NNuRj3I15DfIYtkR9xY/YkUpOgHP37ML?=
 =?us-ascii?Q?yoe+QVFbOHYY5g56+/R+hJfeRKMLDQ9Ds1p/zfNosBxxetFB5RxC/g11Eo9t?=
 =?us-ascii?Q?61VrqM24j+XOAd9AQzuP0DDHj0mFzS34l26u73v1Klwmo4Qs0NHGY9D6UHOO?=
 =?us-ascii?Q?c59LxlWH7Ycwm6OfDDRbSUfpNmH+wZTJCdhpgFk8yTSw7e9wz6ZtD6+mhthn?=
 =?us-ascii?Q?1Iz0Y7vt514pBUuZ8Hpfs25OXjE36kpcPrQHdHRdE9tZmIUu+dRW0IIWA60C?=
 =?us-ascii?Q?qerhtHR5ZGwms9rERJ4PxB8W8imlihHpQ1HrJ8W5H1f9R3UFqDOaUNQ6Xekv?=
 =?us-ascii?Q?c9UYI3Iz6EuLu4EGjL+N79KrHDnw2WOaLXNsy+xrGnjsBp76SchN93iQLzRl?=
 =?us-ascii?Q?/RsIhCxuXGvzr8UQX2hUQqosi7IylrbsNOyviB4z3l2wOc4f4M+iTTTKo4fZ?=
 =?us-ascii?Q?ra8cr2L+F9U56ZfAi6tYYgmWYwzxC19D0VfynZ3HGh1nePkF4l70bGuuzh+Z?=
 =?us-ascii?Q?bm3mz+FF32fhx1KIM0ob/Ue5R8pHyVFbW6Ule8krEhPDkZBzCYsjPxyrHK2v?=
 =?us-ascii?Q?0Eki5SSbYGXR8Ji47SmcDOgEzhoWZ2FRL0kDqSlVjSInVNbsRE0JD0bJd4ZU?=
 =?us-ascii?Q?OMKx3N000xptl1Jss6EILUXM6IAW/xJWeebJv3cjtMOhs60MeTxz1tw6uKjU?=
 =?us-ascii?Q?EMMO7l+w2sdb//tNlPhhxAIP4XJWS7WLCqBBdSvJUfDPjixpa0uxBzFYxPc6?=
 =?us-ascii?Q?31u8sPgyiWNYM/msEV8F006ZpwShia21m9noe32g59MZ3I75ixat0YnMTdEH?=
 =?us-ascii?Q?67MqTSTdzebOfT4mN39iCQxCnqoptSZQjawXci70LDxHl2LyggqQQ5i7UeVl?=
 =?us-ascii?Q?TRPGHuNG06+vS+EdHritj7CiOUqX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pAZdMW16lx1BzikDCh2jQm/TQxatDLptco9rRNa1+AHeA/WSezy9Gchkyo66?=
 =?us-ascii?Q?EBwhNibGRdtYtQierez9wcUGpPyi5NzhrjqiwQciNDCP5oVgkIMNfAK2Ifas?=
 =?us-ascii?Q?agFPbc0ZR4THKuT3cGiYxgvfDxVy64pJi0XH8NhGflp+SyFP8vdXlM7dJ0FZ?=
 =?us-ascii?Q?EsiFG3Pr1e9K7KgMZtXg1fLr9FDBddX7RjGHnb3o9bTrKY7ciauF3q36ci8I?=
 =?us-ascii?Q?BEw10GRPATOYHaDWjZqDCT4U7XyORyNiQbGq/Y/0TMYJxO9FNgZdm3KYUapr?=
 =?us-ascii?Q?ni3QAoKbyNB06ScQ1FsphZCGi7ZW9EnQayHYcHjK8kmU7DLpPuAkaDpHqxQ9?=
 =?us-ascii?Q?7BJeLsjnaFsgMy6kkrzjstX0q5JYeuzLRq9IQN4jWr74863SkBFp/wT1229T?=
 =?us-ascii?Q?5bzKkH3Vlr7A/C50BAEd5bIAPO5QKhxGhrkInXPC4hcz0SOn56Xu+fa380eF?=
 =?us-ascii?Q?kWfhvk4is/ESDLwn1WxD8aMpkRfyyrjBBZ3wEo7Q/owCghU1lNJbO3eRoYc+?=
 =?us-ascii?Q?j5tXBjh4ppAAp2R3AHk1vIzIjDEWutpsCsgiwqU52yPpv1GkgfYPEE8MdRtY?=
 =?us-ascii?Q?VpvMHwz2QkQyJaoZhAYOaXw6zI5I2n3rUOcTSn798i97SxM6Ke5+K3WjCwVb?=
 =?us-ascii?Q?xo6dkGg+74DVm8uec8wWrZEIcwDiSp+X8MrJ8mzmeTy5T2IjXy1tbsEjksXr?=
 =?us-ascii?Q?2kPAkRZC8pQtBMiq34tx7mebiiSaRQ0Y7BSHBliSTTkBHo7ZyfxoOuhfrkKb?=
 =?us-ascii?Q?yZONuMcZOd2RjOrXWlcGPkCfWU9ylHDZeGSt0bcloLnTwRCq4kZG+sWtGpJl?=
 =?us-ascii?Q?QSjQSMj5tGpUtKv/82TcKRNEJH1FXKqVOGzKjoePRtz8KX2HX9xNUYJ+dcbQ?=
 =?us-ascii?Q?UdaCfWA4YKWvbsT9FxGipOFvgFpjSsAVVinfFzARNhpL8gQAz1eCxbZv31q4?=
 =?us-ascii?Q?hzQQf3MJ4G1zw90+j0wJ37Mpe8+3xTSTSk1xCa5yV+YPEA0o0i7taU9VLfL8?=
 =?us-ascii?Q?KVpalkCQF/9RmOUNPd1OS+IV4GOOJDQGFj3Gp93XFlSb/lsHEx9LWtXoyhUB?=
 =?us-ascii?Q?bqwa72L4ndhPJ/hqWwWoONt3ZJShyZ+jSUIXPqbLFCNOpXlm+vtLMOm96nDF?=
 =?us-ascii?Q?14gH41vfLw23zH/5nRszXRiiyOwhjsyuSDJuCL7DYdqbZpp6nRX/h8OjfYh2?=
 =?us-ascii?Q?n9SrKgSjLlXinyT9GXjCqrDYG/OSSOg1uTIVfcb2NDKbHePcSnq92PbYFbQb?=
 =?us-ascii?Q?ADS9k/phjQiey9FlUXNM7VQdrYfqPK5jfBB1H3varBokN+SioPeKtlYfqm4n?=
 =?us-ascii?Q?cdzzL9Zu6CkA6/hLFQHry8/IOd4f7fZOZ5T9s6Ud2OhICvp/tsEgl5Jj0IZI?=
 =?us-ascii?Q?cFH4PGJsuCO0J3v/4eE3ViVMALNtaBu4y8XGw8ITtnXJm5+/KW8f44+NspZD?=
 =?us-ascii?Q?RIpj4bTn1LlC3Jxlx6NKhv7srDN+ClxaWQyDTo27Qj+PJWSAPcwYswi+natK?=
 =?us-ascii?Q?kXpcGkYCKBgw2WAfBz0bNbc9A6jfsVb4vVVq+8PRHWZsnD5nJ7mT6L2UuNKU?=
 =?us-ascii?Q?gd5PgqbvB7IOoQ7zt+x9yz/MUxPHclXreSUB1SPpgp+Z0JAQpl5IJzij6hT6?=
 =?us-ascii?Q?YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1486d5a-66ea-4fb8-290b-08dd5c0b7190
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 17:30:37.8493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IkKi9M4YRj0osRoYAtj4BZhjui9lWn9EoZK5G1jn1tX3WhO+8lK1coGkQaJ+uLiWeSwb4lmg9FJ2GWGHxyBlkAUPMza8YG65nVMPiMLdI3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8850
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

On Wed, Mar 05, 2025 at 10:51:20AM -0600, Knop, Ryszard wrote:
>Hey everyone,
>
>Patchwork has been having lots of issues recently, dropping patches,
>being unusably slow and generally starting to become more of a pain
>than help. Over on the CI side we are also not super fond of it and we
>don't have enough resources to maintain it properly. Lucas has
>suggested using public-inbox archives directly, and with some recent
>tools like b4/lei making common ML workflows feasible without
>reinventing the wheel, we are considering setting up a bridge between
>MLs and GitHub/GitLab to instead drive CI using more modern tools.
>
>We have not decided whether to drop Patchwork yet - this is a thread to
>gather people's thoughts if this sounds like a good idea.
>
>The workflow would look like this:
>
>- A drm-tip mirror would be set up on GitHub/fd.o GitLab, automatically
>pulling all changes from drm-tip upstream fd.o GitLab as a secondary
>source.
>- For each new series on lore.kernel.org a bridge would create a PR by
>taking the latest mirrored drm-tip source, then applying a new series
>with `b4 shazam`.
>- That PR would then go through the normal CI flow, with CI checks
>being reported on that PR, instead of sending all the reports to the
>mailing list.
>- On the mailing list, the bridge would send an ack that a series has
>been seen and where are its results. You would no longer receive
>multiple emails with KBs of logs in your email client, but everything
>would be available from PR checks (as status checks and links to full
>logs only, no trimming and "last 1000 lines only").
>- Mirrors, PRs and checks for public mailing lists would be public,
>much like on the current public Patchwork instance.
>- Logs behind links will be stored for a few months (3-6, depends on
>traffic and how the situation evolves). GitHub Checks themselves (check
>status, shortlogs and links) have a hard retention period of 400 days.
>- Not sure about PR retention: we need a mechanism to correctly
>identify merged series somehow, then to trim these from the list.
>Expected retention time?
>- Not sure about reporting on "CI finished": Maybe we could send one
>more email with a summary of checks when the entire workflow has been
>finished?
>
>On GitHub vs fd.o GitLab: I'm thinking more of GitHub here:
>
>- GitHub generally performs better with large repositories.
>- Extra fallback drm-tip source for fd.o downtime periods.
>- Bonus points: We can store public Intel CI tags directly in that
>mirror for moderate periods of time without abusing fd.o servers.
>
>Either option would work fine though, so opinions here would be
>appreciated :)
>
>CI itself would not run in the native forge CI either way, but rather
>on our Jenkins infra, as it does today. If there's ever a need to
>switch forges, it would require reworking the bridging/reporting bits,
>but not *all* the bits.
>
>We don't want to self-host another forge as we don't have enough people
>and free time to do that properly. Codeberg, etc are not an option due
>to the drm-tip repo size.
>
>And that's the initial idea. Thoughts? Do you like any of this, or does
>it sound like a downgrade from what we have today?

I like it and the pros hugely outweigh the cons IMO. One thing to be
careful is not to create a maze of links to get to useful information
that were once available as a reply to the email. I.e. it would be bad
if the user only has a link to the PR and needs to find a way to get to the
CI check status, that links to somewhere in jenkins, that needs some
extra steps/auth or leads to a 404, etc). But I think that is fixable
even if we get it wrong in the beginning.

No opinion on the gitlab vs github as it's only used as interface to the
real CI that is happening. I think you can use what makes more sense for
CI team, but hopefully making it in a way that would not be a huge
effort to use something else if the need arises.

thanks
Lucas De Marchi

>
>Thanks, Ryszard
