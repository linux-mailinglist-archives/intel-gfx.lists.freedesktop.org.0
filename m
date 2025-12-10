Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6739CB31D3
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 15:12:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BDE10E743;
	Wed, 10 Dec 2025 14:12:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HZXeWPfq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A56910E743
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Dec 2025 14:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765375966; x=1796911966;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=0QeK+WIZu6y6px+VOQvQxM0CVgzDxpakfQt3O6YJBTk=;
 b=HZXeWPfqDyLjAATTH79XOPfDVds+8ZJpmrO7MZWp5HNwloyQH5wvTcM1
 GhlRlQy/97xd7AWjaz82mKDR/ZfkiJF+BufIhWU8+gV5JjSn3CFOS9II2
 BdNREgE1RK6n1iPvyIyuDN3VvMak3aq0bAG91pGEPpUa2AasGSK4MixVD
 1W/jD9+7cZjwZ89rM0WPd3rdbCOxJLZKQ2IoQUmrttDuDlvocmfAalw0w
 oE4OFTwchNjRPi0zCe6CFD2Cpa8IkevUtu0F5dDY78pE7lSkIVYoItBMI
 TjPD5+TxWt1L/iQWypVSHOEAhMRN/Ye9mmmcg8DjW6NMpYSJXWEtW3833 g==;
X-CSE-ConnectionGUID: PuqUUBhYRGKb3izG5+B9cw==
X-CSE-MsgGUID: 4diPJD9lTjq0oAUqgzimSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="71211333"
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="71211333"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:12:46 -0800
X-CSE-ConnectionGUID: EDHrZpWRQ1OmPf7irXbpWw==
X-CSE-MsgGUID: ntG/q8vKTWCJY72TFx4DaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="196525152"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:12:46 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:12:45 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 06:12:45 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.31)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:12:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zImvcu3u8CDQzcvpcW6kG3kC3FFYXi0y2OYjIENA5wxQr1wbFhpERigRXiLjbcln3dZFnbZ5DdOs5Xs3F9HUXOnPbiTpmqMUmJDkghZawGocpZS/dN1Gkj8dJh/JX/AHss+UT/1ATvJ3Hc4Smb5YNwf/aekElPk/zRaBDbvcPYtKSTq0Q9r6ziaZ87jUCGdCDb/Y3IfLO9qWMPQM3c8nPWXwRhluEhjXBJRoxxqNJBI1Eb0dQ9VE/rzkEHagW98fZ9EMx31oReH+dy+m65y47dLv1//4+vdCOmM4Lkk7ZGvLRn3M6E1d7tVuo7Ayh4+lMRumJqB7qiZYyxRHc9belw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+uYs+oF1tSvi6g+bWJ1wYVrsKd0jdmxV22Ufa49Nnk=;
 b=iyX3OrWxrxUqiN/1JBcc89WhdBbfwIwE1bLaBUbHuaofq/iJmmSAjO1V3g8fBO8EJZWrI0KnjEsbZkORzL0aAuHmmISc4vrIBmbxWjaSMIHUk3wXE8XXlA+74dEcXswzrQ9f8g1GVQ4ETs/dVJpPsEt7sjmbIMF1yNSrpobjE/kMwRRuWVmItY714EJEXnsYYAj1PYcH3FPzFjMe5F7NsAftmWrWQ13gUTPj9JoDAI+/rWaWUfR6Rv6qFSQIS7Qfz44CBrDKHIo+oW4aXMOUw3xBJ7yV7TP0Z2jXHx0JC3AEnqjm1CB93ARpz03pRrBC2XQ/4SCXwtnDY7f3kZWBqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5046.namprd11.prod.outlook.com (2603:10b6:510:3b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Wed, 10 Dec
 2025 14:12:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 14:12:42 +0000
Date: Wed, 10 Dec 2025 16:11:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Jani Nikula <jani.nikula@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_drm=2Fi915=2Fcx0=3A_Conver?= =?utf-8?Q?t?= C10 PHY PLL SSC
 state mismatch WARN to a debug message (rev2)
Message-ID: <aTl_r8-hXrcjnBWS@ideak-desk>
References: <20251205122902.1724498-1-imre.deak@intel.com>
 <176530564643.70977.4799782228850147923@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176530564643.70977.4799782228850147923@a3b018990fe9>
X-ClientProxiedBy: LO2P265CA0011.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5046:EE_
X-MS-Office365-Filtering-Correlation-Id: 1462bd22-d8cd-4315-3795-08de37f62e34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jmKWT8zdmtXmjVLMN4W4L40o3rqK7olcHi0TaW3UZRvXSJXC8NivE6sVhyLP?=
 =?us-ascii?Q?C52MjBCgdRX1n9yRqYmdpC0HuvTlDsNhw6LyUTPyStY93k/5kwpJSQ3vQop5?=
 =?us-ascii?Q?1f5JirgJXmXRooB5G8CgI7zhbc/HS/Vodm9934tX6BOvDeYYogqNFHryeATi?=
 =?us-ascii?Q?tlKxPv5GQyrvxOpS5rZAXJz/s2bNRyHv6WCdyiBE4zUQUfdbVCLf96OFCy+D?=
 =?us-ascii?Q?T27s4UDHatkEV9mQN8Y6HUBQfR3SrPdalWC9uUBZsf0mX0U9yRG364BNV+Nn?=
 =?us-ascii?Q?/3aXDZtBmfRVF1UB7YcIDr6HEqTa4luuw2Dhvr6FrsrRgq5XBM9AD4aT3jFK?=
 =?us-ascii?Q?5XJ7oC/uLp7aeGvVwQbnKKdBfIf8AP6KAlg/grFW5C2CkHRvsjuzmN3ozq3n?=
 =?us-ascii?Q?8Kh4ZB41H7mqLpfHhhMmNRLxTkqXknORAsjbchWWCraBY6V80/BPg3fKwp+A?=
 =?us-ascii?Q?Icq5092H5RKJLvcrMxE/T/84i6eWsOQmqVmQWXmJd7wr3Peg0ujXLVbSQgbJ?=
 =?us-ascii?Q?KU4Yi8JNhaaCQp5f3ubhIniavTcjgdosDlqKfXxJZo0gl37Q9kjtutSid05d?=
 =?us-ascii?Q?xVXPokIf185hIFh+1OVGJZ9O/em6Td2JM0gn+67cmYYxZ0p7xquwY775knFc?=
 =?us-ascii?Q?7gQY593z6isvcM9bD0/IAAGBLpsUpLaje0owipulVN8LmHDjlUrxCTS1yGHL?=
 =?us-ascii?Q?o/MiKd1LvPW/VAWRFLOQ9aSj8KGmzB/102mKVlzJ1JXk0N0oGZDNF2/sQIPY?=
 =?us-ascii?Q?APh7LHvvTN+o1K0N2JgYR7QFkNlaApFPlDQnqOGP1tcZA0Fu4B+m/Fkj05l7?=
 =?us-ascii?Q?MOO0J72Nip08Nkoe2fA7KOi5YjjdToJGejQuZqi/dsrVL//7wFrSkgVIcoPe?=
 =?us-ascii?Q?qm+x8KuWyuGBli6yVWIARhtw82+oQ4b9aOn87G2RF7OovI+YVc09nRJQ4EJE?=
 =?us-ascii?Q?DpkzND52AZ5nH99USH1exXzcwKw9BBfXMg+n64weN9kIP7vtdlk01r7IBkP9?=
 =?us-ascii?Q?0U791rXFPnsrJ8NYSj/Unn05/y08J0TVFn7jviUBh8El9Yt2FFjkvlp3QGyK?=
 =?us-ascii?Q?AzQq+zKblSYFPj8jyzza1TakpRANvdQGJjc0ha5Ip4nvjcUqjXVzTm1ZGg2X?=
 =?us-ascii?Q?lf2sb35iujQNans3vN3pH/s6kbFcaVvbVQHRIUwIySQbRLEIZ+epxPKPKBF6?=
 =?us-ascii?Q?brB3AKURJQK4l2w1mkFBzf48BeLjeHMOjY1+eOasAZ27RUw5w9LUX7myRKlI?=
 =?us-ascii?Q?ch1a6aKeZHVMm+t4MTYCg/8H6njU4HTcYMFhZ8lPVLDIz69vcY9mazI3Qtub?=
 =?us-ascii?Q?oI4p+80XYjC50cDvqCoia/gZbFMAdqvkHY0KTXYUGwhJUsHmFhyogKVdBNlo?=
 =?us-ascii?Q?B3bzavkOO5iyhvbSknzBaH5OzYyX55ffBOhdagLacoxZpwrkkA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LsOYZ71+N4KwdrOHJMZI6MgnHR3YpuVyIMK/G6kLLMrx/hlfSqvWN3Znsyzj?=
 =?us-ascii?Q?aauhVFNdHKKC5NVnoPTLryxx2a19QTvlbyEunJUjJYRuyGn+L1LDHGHMHJyF?=
 =?us-ascii?Q?OMAwNT93KulpcWuIOluSQqmwyywAH/5NpzpqZ8Uu4rQNm4QeBJhbUGdV93mU?=
 =?us-ascii?Q?HBvXAdYXB6v4cXUKjYyJHkBHp+7Qlc2zPOSYHMKOHkoiK9huqLjNKD1PsjfE?=
 =?us-ascii?Q?g0gRwqVCV8jETNKy09d6ihfXPORmtlxmbUDVA4fZgQt5VdyHBD7p2T/4Lp5u?=
 =?us-ascii?Q?T1k+VazfFJEHa5w2d8qUInSFTKFeCQnNt3q7/YlpQl2TF1aFuaGnfB4S86fJ?=
 =?us-ascii?Q?x11x0Fi00oyjt2hfq3gL+VdaLd52+OBWIt0m7cE4itAJT7I0sOamo17oZs4E?=
 =?us-ascii?Q?DP+votOYJUbBdVcC9iG8ALHAmmqdBBfT3dl2SeUs1ASQNHqHKMI4rQsI2IJP?=
 =?us-ascii?Q?lDgrOCQr4ZMDWHBr1VemFJ8xun5HL/b7dRW5ghav11ZFIyPnpXu2MJa0Y6/M?=
 =?us-ascii?Q?t93ti5QiIx5GLR7dXi1KRqSqWKraHYqRwZ5CUyXKvkSLulyarS1two/gmwEP?=
 =?us-ascii?Q?R2rW0+e8xH3HmqtIwGyY4JPGX3pIRaNY1zizWp2rbi/C0WBlDx+mdR1SgbYP?=
 =?us-ascii?Q?aRQnzrlhOBPVXhuvZexPmowcGocCYFL66s8nI1Zj2sHenOTp3FawNoqGFRXP?=
 =?us-ascii?Q?36cB0kXrwSE+kjsSm6hsiRAG7CCwOs7jEC8J5Jt3aS8qNB0JN7OocmCidbZc?=
 =?us-ascii?Q?NCK+jMj2XrBOAHj3KL3jqGpnV2ARUwoMj3HSArl120KEgYknph/m8GnccpyL?=
 =?us-ascii?Q?W1u2cklyqmPU4lS+coCWFvUmj3pHh17MtDKiF+xkg9Y+loMDfA1tkgmRhz9g?=
 =?us-ascii?Q?geGVD6TFtX6J3QQ73PUh7oYcpohwhhWxadzVSQrE7mMhIW6F+QlhnzdqWJ9j?=
 =?us-ascii?Q?TZttH2xpnPDVhTz2MWm9+yzcU8P5PLJG+WywSpaiVNj3Gc34kKUppWOUqTIB?=
 =?us-ascii?Q?1bbBkXWNfnfGRupdOpX3NeX6NoOv1Xy+1B9CjcfNWR8kXLZe6C6DirO5jNC9?=
 =?us-ascii?Q?mV8HcaObO4L7bAEvQ/OI34O6xbWxgePZHK2llGqqoxcE4N60zXxwYTk5nqUn?=
 =?us-ascii?Q?wYsk8ZpUACSXXqaQ5P6r816su2Zj84taAOYwieTymJQPqvFIrWY3mQM5ivaI?=
 =?us-ascii?Q?60pSOT/RyhBpsHtwowSP5ARj+TlLItv+ttyscIwlVRJdweTPHOg99lAFk/lw?=
 =?us-ascii?Q?FChTwtoWrR9B2fM6j6fm9MM9pHiAH07p9EnmNZhr8zrMcXApxjcgHl/zJdOQ?=
 =?us-ascii?Q?b7xyTdzEsy4fZ8WAuD0kDqxJVr3aPBdAhGluPcPqpGdD30tfuSHbQ4wCbbCS?=
 =?us-ascii?Q?RNgJrMhKEkLjvQPB+aMpKb+cEb5OKO0xQPTKz5A93jfY1SI8OD5tub6x895N?=
 =?us-ascii?Q?aKa35qW3yHy6MsZZZnlWWPEzPPE5GLMEbMPN9ZZECZREZOZd4lHtkE+xf7RU?=
 =?us-ascii?Q?tAHvxmQKzGGzZy3V0mxqSi11mWstEnCUmfYtRij+W2sR2GWFEZV62RJBKkHQ?=
 =?us-ascii?Q?iHyPrvKPOAiFPJUdItiZABWcDPBqNjBA0Kz3+sy2HXi0Xlp1YjIf0hJbg+Lx?=
 =?us-ascii?Q?bADg+wwNdv+kVfSDnn1mxm+pfq6zs88heMQv7CLgFe9O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1462bd22-d8cd-4315-3795-08de37f62e34
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2025 14:12:42.7200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d1/g6r7sSGwuTrdlKyC0bL0RfbMI99AWQFe3erq344qf91P2KquIM1pFSKf7R2x6vIHT9+I6AyftQgMK6wkakw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5046
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

On Tue, Dec 09, 2025 at 06:40:46PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/cx0: Convert C10 PHY PLL SSC state mismatch WARN to a debug message (rev2)
> URL   : https://patchwork.freedesktop.org/series/158575/
> State : failure

The patch is pushed to drm-intel-next, thanks for the reviews.

The failures are on hosts unrelated to the change.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17649 -> Patchwork_158575v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_158575v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_158575v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/index.html
> 
> Participating hosts (38 -> 5)
> ------------------------------
> 
>   ERROR: It appears as if the changes made in Patchwork_158575v2 prevented too many machines from booting.
> 
>   Additional (1): bat-adls-6 
>   Missing    (34): fi-rkl-11600 bat-adlp-6 bat-mtlp-9 fi-bsw-n3050 bat-dg2-8 bat-dg2-9 fi-hsw-4770 fi-ivb-3770 bat-rplp-1 bat-rpls-4 bat-apl-1 bat-dg2-11 bat-arls-5 bat-arlh-2 bat-twl-2 fi-kbl-7567u bat-dg1-7 bat-kbl-2 bat-arlh-3 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-dg1-6 bat-arls-6 bat-jsl-1 bat-mtlp-8 bat-adlp-11 fi-tgl-1115g4 fi-cfl-guc bat-jsl-5 fi-kbl-x1275 fi-kbl-8809g bat-dg2-14 bat-dg2-13 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_158575v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-adls-6:         NOTRUN -> [SKIP][1] ([i915#4613]) +3 other tests skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-adls-6:         NOTRUN -> [SKIP][2] ([i915#3282])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_selftest@live:
>     - bat-adls-6:         NOTRUN -> [ABORT][3] ([i915#15399]) +1 other test abort
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@i915_selftest@live.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - bat-adls-6:         NOTRUN -> [SKIP][4] ([i915#7707]) +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-adls-6:         NOTRUN -> [SKIP][5] ([i915#4103]) +1 other test skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-adls-6:         NOTRUN -> [SKIP][6] ([i915#3555] / [i915#3840])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-adls-6:         NOTRUN -> [SKIP][7]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-adls-6:         NOTRUN -> [SKIP][8] ([i915#5354])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - bat-adls-6:         NOTRUN -> [SKIP][9] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-adls-6:         NOTRUN -> [SKIP][10] ([i915#3555])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-adls-6:         NOTRUN -> [SKIP][11] ([i915#3291]) +2 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/bat-adls-6/igt@prime_vgem@basic-fence-read.html
> 
>   
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#15399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17649 -> Patchwork_158575v2
> 
>   CI-20190529: 20190529
>   CI_DRM_17649: 55b19373186bc09befbc0068ee82a67ed9cfbc66 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8659: 8659
>   Patchwork_158575v2: 55b19373186bc09befbc0068ee82a67ed9cfbc66 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158575v2/index.html
