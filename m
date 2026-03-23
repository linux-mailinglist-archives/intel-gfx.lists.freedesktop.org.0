Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPg2OtP8wGmiPQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 09:41:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC62EE639
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 09:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7446010E425;
	Mon, 23 Mar 2026 08:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PX7O+6NM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080EC10E425
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 08:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774255312; x=1805791312;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=foYK4+inpzWRwAdMzhv0CiZcKzAfeTSObc3+qrgCVO8=;
 b=PX7O+6NMbXYuooYWA7MaEVQJv884+ji2Ct6mprQBblX0ubMKOZhN+H06
 16SOHSv7hQ6VQB2KLMGSdONbKyfAO5YTs/DJyOWimKAd+JiwyiJm6ZWPb
 YtS5yNM6M1fKENCVplN1QeOhsxufUVVc+mwZ3VuL5h/asYR8QafBvfBdk
 5Us8mE9uqbzkFTYT/Cu4Fzf+4h+oytQeoiFCXekPQumEetCcSAX2l/BEn
 5icwEEu3tO3Xx90tx+5emXlgSsvvNpXe4/0hcW/BLrE6k2XWZCPn2Vnsa
 CpkJA3baUcCobtezJkIFYGwUmpXb1lklM44kVpR7Zqcj903c+Ikw7xKUP Q==;
X-CSE-ConnectionGUID: 8UEmrAcNQeKGw0zM1uXLvg==
X-CSE-MsgGUID: pdUa7H38TMaJJDOE0TRq5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="79106191"
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="79106191"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 01:41:52 -0700
X-CSE-ConnectionGUID: CfWfGvDZQ9iJzuzkSKansQ==
X-CSE-MsgGUID: /AwKdKoqT66Oy5qe4fKmIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="223983196"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 01:41:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 01:41:50 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 01:41:50 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 01:41:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CAEx+t77iBB+j4aitW7Udq7jwAEXSC3olHqeGOEaCnTrkSBtlCETaf2UBSBpQ8zsdJr3PTUlHHvjNSiz4EEAj1JqqsVZmvFKoOcQsTgHsh20mtrMtJUoMXvL1c3x1zedH0sDZqpJeVojWiRArdTeZuJId/QK62VVyfjM2Vg91kUycVcED9r3CZ5sQ2iHHqrmbfinVuMMrn/T2J0GVebCPBoa8CFFbd14Z1gTAfPYM11iGvagfDrrYdH1Fd3mGChILflJrAVL9ThjbruXPCozDRwJQLuU/8+TTb1i+CaV6QnD15dPwgIuz63TFOtBFLqgBS+6/9U8oOvsi4SOuU9y5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wmqex9b5ZUjT/TCc7825Vz4LEOWKg+Czyk5dIHipWYo=;
 b=Qbsb0eLEuH/zBNdPf7EY9LwLcysH9UfxoqRlh/fnlBEPdWTP3LXgSwqJP9N0YakovpkMRtiteleJ9OYcsj6N8dtyjWOvmA57BjD4gp10IZ2CAfMpedG41LfMlQgNxPh8zkBO5oRDhoUWsCfj8ezwU7wKTA+6yZxFCjxYGhfvubxP+mrGrFj5vN9Umx6kRVP3oKrjqfQ6goOOm0YDq77qZiOpVR3eXBLwHkZQ/YexwXKLbN3DNm/b/QoGuADAFtkYGDPU/0gPH0AuLy4Q238Y/4NCTXyAH7hmqEJkBDdsTb5ANK4pnE2qZjizdlXJ1WoYIdezIrOxvrnb849QzQV9tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8051.namprd11.prod.outlook.com (2603:10b6:8:121::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 08:41:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9723.010; Mon, 23 Mar 2026
 08:41:47 +0000
Date: Mon, 23 Mar 2026 10:41:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Uma Shankar
 <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdp=5Ftunnel?= =?utf-8?Q?=3A?= Fix error
 handling when clearing stream BW in atomic state
Message-ID: <acD8xOGQ80i02kWx@ideak-desk.lan>
References: <20260320092900.13210-1-imre.deak@intel.com>
 <177405939326.383014.4956835966423391308@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177405939326.383014.4956835966423391308@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6F7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::24c) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8051:EE_
X-MS-Office365-Filtering-Correlation-Id: 355fcaca-c2fd-447e-b212-08de88b80497
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: fgBggr1eL8y3RzEaya5av5fRckLlTGYlMeDRa0FZqzvxZZQCyFzkIQy3CY9x4AAlGx+gFwiXir6dUTahzknrWVaKpcsJWrXbOsAtU+VC4KoO4c7rBLNL+bSHt9gdVS5ImjpcLEJlFeK1YHhAzLoB0D7k/jHgU95rHCceNVw9JC4OXtGy65njZqOav4BV+B7gVlig+UBWfeVaiThiEi81H9y+wrw48a5SHFXIX28v07+LCQJazWWbDmGTc7LO4nxHamlPbrSKRNFnJ84p9jB0+jEEargpcd3tKIQkse47pP8Uew0mPlC+cRGf35FuoDQP9brtvXLIerE2AoX3MAJsoYc14Z677fkxVuttszfsUBFwpXmrMMTs7+1PsHtZ6NgwqlNUugFkjxdTzxGjaMp4mWaZoo6TnkgIhjqKccImcsIL+WeaeAgJMo28BUEjkGJqZEWBgFvC63PcdwzrjjfLDX6UgdUYRzGiY6kM1wctKQfz1wvX+adfKVp6kWJeFkOdT1MxYx+/Y6Xwx+eNXOO458HI38x8NImmx5ZowX/oqcWu+DbjrUdZdWcULzVPWeYefaU+/vj0dugjAJJnKW99c+JiFRtbc0b0+E6nAGz61zwC83Jw87FSf5SRfeekHWL/VrqUA02FPyTJE/HuOssmwWyO17RUoNDD3h2II+cSpx8FMxmjxyR6/LkbC1tfIagm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0WmN+CFqaBf6GYgArxnhNEHc3AhbiN+eKZJjaqZ3QwRXmXV5VB9MYXMrwVn8?=
 =?us-ascii?Q?UDEtx5T2BM47S+0syq7zmjDa32tui+EgHIbuJOfU//UwEMcDZSn8lB8sWxd8?=
 =?us-ascii?Q?16X5VwdYhylA0hRGi8/zj0c8rBx0/41UBFFZmfLWnZm29joqrVydhY2IZi6R?=
 =?us-ascii?Q?w9FtTrzDyF2t1Ew1r0h9hKaip9Xfe3eHUmO/zJd4O+WTgfmDrxd14xN6shQh?=
 =?us-ascii?Q?H8GDI+ZyRtooop77wJ7nbbheFF24A5X5OF8mzv+y7K+Ibd7fIJoMiPU72to9?=
 =?us-ascii?Q?1HN8H/fhs+xl87zOWa/1DQNiMXoU4Y7EHWp8UhcdII6RiOLdrwe4k9ddPHr5?=
 =?us-ascii?Q?sKacRMNBh9+jF1yZRPtE8ydyvYJecqnknLK3nL78MZKaTmfzl7RMxLLpTymw?=
 =?us-ascii?Q?HGwlNImtOjBeKtVmxw9CCVdOF0lb/+q6+uyARgkmKLoUQ7/UjNliK2F/zs/B?=
 =?us-ascii?Q?ZgRqVE1zv235PcnokDnRp1egmTcW7lRf0hSulQd2FXCWa2UD4EYeNHRuvyo8?=
 =?us-ascii?Q?wUhPoubViTVdxjhjGRcr0oc0d5A/uj+KLJWZOYvFCXUf4MHF0wLeFEF6vctC?=
 =?us-ascii?Q?luZxzQXfc/RNqOQfkrR4vtMIFyc9PvRVZ47ZWWseo8jvPe4nSDd4/L+JiA5g?=
 =?us-ascii?Q?KonBnP3nFl8+jro8Il6GJn3u6sRo+HwGlVchpj3g/29vd0mCUOvMwNjEn5Ec?=
 =?us-ascii?Q?iO4ts21CBJOM7CvNJx0otzwiNJsej0EqPB+gHJBJdyg8snyflHeoMiUB+KV0?=
 =?us-ascii?Q?9JqQAfDvdfjujVzL3d3CNpfF2dQB5kxTKhjGlnsjwLKET0zCpElAasQHVDXl?=
 =?us-ascii?Q?xysFib7xDSyC/aORzQbRLFNrA99mrFZxMmf3RuFEgkvP8PqrWKFbwftvYqXq?=
 =?us-ascii?Q?bMpInywUmdYFZ/gVvBmY7dWe5MmS/2SNLCvvXagfhFCCJVLt2zyFuf0Kaw+P?=
 =?us-ascii?Q?QfSTY9X337Skb+TleyDS0WQhEzMPHeriRwfBEFnUFzsCBTSsuFVZ26b0eEgo?=
 =?us-ascii?Q?2YJmsWru9rZ97xRh9lzC4zxPioyIVpvDqna1EzbblFx/pP7siod3hs3bhOsb?=
 =?us-ascii?Q?/i4ajPck/ac2uNbRNepEhNjZPlqiMcTwZO1C1s7XELxYlPSnXMVAvu7HIhHN?=
 =?us-ascii?Q?l7wfZ2d5awJPUxipX6udG5UvZ6RZMsCrhG5uWT2nmF858ffvyrQ3hbTmf5Oc?=
 =?us-ascii?Q?V/h1zYzEBr8MYYR5qcun9eI/jansuFxvSLVH77TkwCR8yt41g3M/Ytu0E5tC?=
 =?us-ascii?Q?LkGtDOgOiJhDDgiGbvBohpMgAWco/uc16JheMWZNnGn3Ww3VunqpAWZDQ0XW?=
 =?us-ascii?Q?q8EKu2WLtQcCaVClkF+5UYngS4JJWHp5bh5oi5ERFD5bKIkxbqTl219hw8O9?=
 =?us-ascii?Q?Iv4wHz8r1L+0YEG5/avjDYHfEd3QUkT4MRDddBZwJNyDrduOWMVQkpuw9Umg?=
 =?us-ascii?Q?eMagI99yHXjeeTGGJhuha6g1uKmihHDOBT12meQUVFEHaCUNT8DeAOud1cQh?=
 =?us-ascii?Q?tc+D8JcgoCKSu8vyXZCafj4zuaVRT6rGEFdNxutUECGMTsUMrpGfAtD+xE+d?=
 =?us-ascii?Q?+lG5XgT4e5BWGqr00AUCxtaoGQWgZvnFyEcKQCebAULefKqFOFqibWmstcoi?=
 =?us-ascii?Q?BknxR0XPu3wlcQDz/lizJQcp4Yfh4wSr4QAalQ/JwdelMWfyXr/X4UfwfMp5?=
 =?us-ascii?Q?IGEUkK61jnMhDFl8GpeNcpqUo25uMQHyZ9QnJ4WyeqE7cIbsyQ8lMYJkn9li?=
 =?us-ascii?Q?ByWCUWz9MA=3D=3D?=
X-Exchange-RoutingPolicyChecked: V7+4ewfQhjB4bPn3xDinsKypAtELDyFAif8vccUUGJ5kpQVUTlOP4+KNKnnKrvNdZ/aZ0iaNuVFI8wDzclsjsJz4a3b6OFGIg78BpwE6n/ONGg/xiWp5qe/10TtI3H+hPw55Q3x84F/oXeEceRcdsDkIysrGEMEd029Mt6YlwqaC0qzX72DTL7XcRGN/X9qVsr7zewhQT6W6S1C2jtjX0QB/bQAWRe4EVT4DiOapqYdZUt+pCI4Odi2Q+2A0BYbkEivbUAMTo40qRzMYpR/Lv6htAmClc1vajMRmS6WshIHJYmylG/BW0yr/O9lTCW0/f2Z07Jn2x7H9VFHkNHuePA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 355fcaca-c2fd-447e-b212-08de88b80497
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2026 08:41:47.0614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xrwkCi4xzDapxIEQvCqKJ4w9FyKZ3/gIN81e6dH54ktOYsSN/k0PdUlExrwo8c0FBUKWYoQjdS/YrOVw5nVemQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8051
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.grzelak@intel.com,m:uma.shankar@intel.com,m:jani.nikula@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F3BC62EE639
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 21, 2026 at 02:16:33AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state
> URL   : https://patchwork.freedesktop.org/series/163573/
> State : failure

Thanks for the reviews, patch is pushed to drm-intel-next. I also added
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7617
while pushing.

The failures are unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18181_full -> Patchwork_163573v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_163573v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_163573v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_163573v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_mmap_offset@clear@smem0:
>     - shard-dg2:          [PASS][1] -> [FAIL][2] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg2-1/igt@gem_mmap_offset@clear@smem0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-4/igt@gem_mmap_offset@clear@smem0.html
> 
>   * igt@gem_userptr_blits@userfault:
>     - shard-tglu:         NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@gem_userptr_blits@userfault.html

Neither of the above hosts has DP outputs, so the DP tunneling changes
in the patch are unrelated to the failure.

> #### Warnings ####
> 
>   * igt@gem_softpin@allocator-evict@rcs0:
>     - shard-tglu:         [SKIP][4] -> [FAIL][5] +1 other test fail
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-tglu-9/igt@gem_softpin@allocator-evict@rcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@gem_softpin@allocator-evict@rcs0.html
> 
>   * igt@gem_softpin@allocator-evict@vcs0:
>     - shard-tglu:         [SKIP][6] -> [INCOMPLETE][7] +1 other test incomplete
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-tglu-9/igt@gem_softpin@allocator-evict@vcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@gem_softpin@allocator-evict@vcs0.html
> 
>   * igt@i915_module_load@fault-injection:
>     - shard-mtlp:         [ABORT][8] ([i915#15342] / [i915#15481]) -> [ABORT][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-mtlp-4/igt@i915_module_load@fault-injection.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-mtlp-4/igt@i915_module_load@fault-injection.html
> 
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-mtlp:         [ABORT][10] ([i915#15481]) -> [ABORT][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-mtlp-4/igt@i915_module_load@fault-injection@__uc_init.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-mtlp-4/igt@i915_module_load@fault-injection@__uc_init.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_18181_full and Patchwork_163573v1_full:
> 
> ### New IGT tests (53) ###
> 
>   * igt@i915_module_load@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@2x-plain-flip-fb-recreate-interruptible:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@4-tiled-64bpp-rotate-0:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@allocator-basic-reserve:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@bad-aux-stride-y-tiled-gen12-mc-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@bad-pitch-1024:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@basic-crc-vgem:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@basic-forked:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@context-create:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@crc-primary-basic-yf-tiled-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@create-ext-placement-sanity-check:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@dsc-basic:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbc-psr2-basic:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbc-suspend:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@fbcpsr-2p-scndscrn-shrfb-msflip-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@flink-interruptible:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@gt-awake:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@invalid-illegal-eventfd:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@invalid-multi-wait-all-unsubmitted-submitted:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@invalid-multi-wait-unsubmitted-submitted:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@invalid-plane:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@linear-8bpp-rotate-270:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@linear-max-hw-stride-64bpp-rotate-0:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@multi-wait-for-submit-unsubmitted:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@nonblocking-read:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@plain-flip-interruptible:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@plane-invalid-params-fence:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@planes-upscale-20x20-downscale-factor-0-75:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@pr-cursor-plane-move-continuous-sf:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@preempt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@psr-2p-primscrn-cur-indfb-draw-pwrite:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@psr-2p-scndscrn-shrfb-pgflip-blt:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@psr-no-drrs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@query-regions-unallocated:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@render-ccs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@reused-buffer:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@short-flip-after-cursor-atomic-transitions-varying-size:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@shrink:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@single-wait-submitted:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@sol-reset-invalid:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@syncobj-repeat:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@sysfs:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@timeline_closed_signaled:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@torture-move:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@transfer-timeline-point:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@two-level-inception:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@wait-10ms:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@i915_module_load@yf-tiled-32bpp-rotate-90:
>     - Statuses :
>     - Exec time: [None] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_163573v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][13] ([i915#13356])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#9323])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][15] ([i915#12392] / [i915#13356])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_create@create-clear:
>     - shard-mtlp:         [PASS][16] -> [INCOMPLETE][17] ([i915#15478])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-mtlp-1/igt@gem_create@create-clear.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-mtlp-8/igt@gem_create@create-clear.html
> 
>   * igt@gem_create@create-clear@smem0:
>     - shard-mtlp:         [PASS][18] -> [INCOMPLETE][19] ([i915#15478] / [i915#5493])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-mtlp-1/igt@gem_create@create-clear@smem0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-mtlp-8/igt@gem_create@create-clear@smem0.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-tglu-1:       NOTRUN -> [SKIP][20] ([i915#8562])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@file:
>     - shard-snb:          NOTRUN -> [SKIP][21] ([i915#1099])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-snb1/igt@gem_ctx_persistence@file.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#280])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#4525])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#4525])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3281]) +6 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#7276])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][27] -> [INCOMPLETE][28] ([i915#13356]) +1 other test incomplete
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-glk:          NOTRUN -> [SKIP][29] ([i915#2190])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk9/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#4613]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-glk:          NOTRUN -> [SKIP][31] ([i915#4613]) +2 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk4/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#4613]) +2 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#4613]) +3 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@isolation:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4077])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@gem_mmap_gtt@isolation.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3282]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3282]) +4 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][37] ([i915#14702] / [i915#2658])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#8411]) +3 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_tiled_pread_basic@basic:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#15656])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_tiled_pread_basic@basic.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#3297])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#3297] / [i915#3323])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-glk:          NOTRUN -> [SKIP][42] ([i915#3323])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#3297]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#3297]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][45] ([i915#13356])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk1/igt@gem_workarounds@suspend-resume-context.html
>     - shard-dg2:          [PASS][46] -> [ABORT][47] ([i915#15131])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg2-6/igt@gem_workarounds@suspend-resume-context.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-10/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          NOTRUN -> [ABORT][48] ([i915#5566])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#2527] / [i915#2856])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#2527] / [i915#2856])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#2527]) +3 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-tglu:         NOTRUN -> [ABORT][52] ([i915#15342]) +1 other test abort
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-8/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:
>     - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#15479]) +4 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-8/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][54] ([i915#13029] / [i915#14545])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#8399])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][56] ([i915#6590]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#14498])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][58] ([i915#13356])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk11/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][59] ([i915#13356] / [i915#15172])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk5/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#7984])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][61] ([i915#4817]) +1 other test incomplete
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk4/igt@i915_suspend@forcewake.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#7707])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][63] ([i915#12761]) +1 other test incomplete
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk6/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][64] ([i915#1769])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#1769] / [i915#3555])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#5286]) +4 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#5286]) +2 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#5286]) +4 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][69] -> [FAIL][70] ([i915#15733] / [i915#5138])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#3828])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3828])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][73]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-rkl:          NOTRUN -> [SKIP][74] +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][75] +31 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4538] / [i915#5190])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#10307] / [i915#6095]) +67 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#10307] / [i915#10434] / [i915#6095])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-4/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#6095]) +143 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#6095]) +71 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#12313]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#6095]) +20 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#12313])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#12313])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#14544] / [i915#6095]) +7 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#6095]) +44 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#12805])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][89] ([i915#15582])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#14098] / [i915#6095]) +41 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#6095]) +39 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-glk:          NOTRUN -> [SKIP][92] +278 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#3742])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#13781]) +3 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#11151] / [i915#7828])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#12655] / [i915#3555])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#6944])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#6944])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#15330] / [i915#3116] / [i915#3299])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#15330])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#6944] / [i915#9424])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#13049]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][108] ([i915#13566]) +2 other tests fail
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#13049])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#3555])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#13049]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3555]) +2 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][113] ([i915#12358] / [i915#14152] / [i915#7882])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][114] ([i915#12358] / [i915#14152])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][115] ([i915#15804])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#9067])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#4103])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#4103])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@single-move:
>     - shard-dg1:          [PASS][119] -> [DMESG-WARN][120] ([i915#4423]) +1 other test dmesg-warn
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg1-13/igt@kms_cursor_legacy@single-move.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg1-17/igt@kms_cursor_legacy@single-move.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#9723])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#13749])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#13748])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_dp_link_training@uhbr-sst.html
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#13748])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#13707])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#3555] / [i915#3840])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#3555] / [i915#3840])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][128] ([i915#9878])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk9/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#1839])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#1839])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#9337])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#9934]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#9934]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#3637] / [i915#9934]) +10 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-rkl:          [PASS][136] -> [INCOMPLETE][137] ([i915#6113])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][138] ([i915#6113])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#15643])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#15643]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#15643]) +2 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-glk11:        NOTRUN -> [SKIP][142] +21 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk11/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][143] +42 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#1825]) +23 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-dg2:          [PASS][145] -> [ABORT][146] ([i915#15132])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-suspend.html
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][147] ([i915#10056])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk11/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#15102]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#8708]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#9766])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#15102] / [i915#3458])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#15102]) +16 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#15102]) +12 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#5354]) +2 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#3555] / [i915#8228]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#8228]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#12713])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#15458])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#15458]) +1 other test skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#15815])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#14712])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#14712])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#15709]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#15709])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-tglu-1:       NOTRUN -> [SKIP][166] ([i915#15709]) +5 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#15608]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][168] ([i915#12178])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][169] ([i915#7862]) +1 other test fail
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#13958])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#14259])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format:
>     - shard-snb:          NOTRUN -> [SKIP][172] +15 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-snb1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#15329]) +4 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#15329] / [i915#3555])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#15329]) +13 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#15329]) +7 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#9685])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         NOTRUN -> [FAIL][178] ([i915#15752])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#9685])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#3828])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#8430])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [PASS][182] -> [SKIP][183] ([i915#15073])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg1-18/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#15073])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [PASS][185] -> [SKIP][186] ([i915#15073])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@package-g7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#15403])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_pm_rpm@package-g7.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#6524])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#6524])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#6524])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#11520]) +4 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][192] ([i915#11520])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk10/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][193] ([i915#11520]) +5 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk9/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#11520]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-3/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#11520]) +5 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-glk11:        NOTRUN -> [SKIP][196] ([i915#11520])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk11/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#9683]) +1 other test skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-primary-render:
>     - shard-glk10:        NOTRUN -> [SKIP][198] +43 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk10/igt@kms_psr@fbc-pr-primary-render.html
> 
>   * igt@kms_psr@fbc-psr2-primary-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_psr@fbc-psr2-primary-blt.html
> 
>   * igt@kms_psr@pr-primary-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#9732]) +8 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_psr@pr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#9732]) +16 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@multiplane-rotation:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][202] ([i915#15492])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk6/igt@kms_rotation_crc@multiplane-rotation.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#5289])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#3555]) +1 other test skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-full.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][205] ([i915#15106]) +1 other test fail
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-4/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][206] ([i915#12276]) +1 other test incomplete
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk10/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][207] ([i915#12276]) +1 other test incomplete
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#15243] / [i915#3555])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#11920])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [PASS][210] -> [FAIL][211] ([i915#15420]) +1 other test fail
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-mtlp-2/igt@kms_vrr@negative-basic.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-mtlp-2/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#8516])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][213] ([i915#12910]) +9 other tests fail
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
>     - shard-tglu:         NOTRUN -> [FAIL][214] ([i915#12910]) +9 other tests fail
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-5/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s3-devices:
>     - shard-dg1:          [DMESG-WARN][215] ([i915#4423]) -> [PASS][216] +6 other tests pass
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg1-14/igt@gem_exec_suspend@basic-s3-devices.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg1-18/igt@gem_exec_suspend@basic-s3-devices.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-rkl:          [ABORT][217] ([i915#15060]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-1/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-7/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][219] ([i915#13729] / [i915#13821]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-snb1/igt@i915_pm_rps@reset.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-snb1/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][221] ([i915#7984]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-mtlp-4/igt@i915_power@sanity.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-mtlp-3/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-glk:          [INCOMPLETE][223] ([i915#4817]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-glk6/igt@i915_suspend@basic-s3-without-i915.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][225] ([i915#4817]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@i915_suspend@forcewake.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][227] ([i915#5956]) -> [PASS][228] +1 other test pass
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][229] ([i915#15582]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-glk8/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk2/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][231] ([i915#15804]) -> [PASS][232]
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglu:         [ABORT][233] ([i915#15652]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-tglu-4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          [SKIP][235] ([i915#3555] / [i915#8228]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_hdr@static-toggle.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][237] ([i915#15073]) -> [PASS][238] +2 other tests pass
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][239] ([i915#3281]) -> [SKIP][240] ([i915#14544] / [i915#3281]) +5 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@gem_bad_reloc@negative-reloc-lut.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          [SKIP][241] ([i915#14544] / [i915#7697]) -> [SKIP][242] ([i915#7697]) +1 other test skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_create@create-clear:
>     - shard-tglu:         [INCOMPLETE][243] ([i915#15478]) -> [DMESG-FAIL][244] ([i915#15478])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-tglu-9/igt@gem_create@create-clear.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@gem_create@create-clear.html
> 
>   * igt@gem_create@create-clear@smem0:
>     - shard-tglu:         [INCOMPLETE][245] ([i915#15478] / [i915#5493]) -> [DMESG-FAIL][246] ([i915#15478])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-tglu-9/igt@gem_create@create-clear@smem0.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@gem_create@create-clear@smem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          [SKIP][247] ([i915#6335]) -> [SKIP][248] ([i915#14544] / [i915#6335])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@gem_create@create-ext-cpu-access-big.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-rkl:          [SKIP][249] ([i915#14544] / [i915#3281]) -> [SKIP][250] ([i915#3281]) +2 other tests skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@gem_exec_reloc@basic-write-wc-noreloc.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-rkl:          [SKIP][251] ([i915#4613]) -> [SKIP][252] ([i915#14544] / [i915#4613])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@gem_lmem_swapping@heavy-random.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-rkl:          [SKIP][253] ([i915#14544] / [i915#4613]) -> [SKIP][254] ([i915#4613]) +1 other test skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          [SKIP][255] ([i915#3282]) -> [SKIP][256] ([i915#14544] / [i915#3282])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@gem_pwrite@basic-exhaustion.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [SKIP][257] ([i915#14544] / [i915#3282]) -> [SKIP][258] ([i915#3282]) +2 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@gem_pwrite@basic-random.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [SKIP][259] ([i915#13717]) -> [SKIP][260] ([i915#13717] / [i915#14544])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          [SKIP][261] ([i915#14544] / [i915#3297]) -> [SKIP][262] ([i915#3297]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          [SKIP][263] ([i915#3281] / [i915#3297]) -> [SKIP][264] ([i915#14544] / [i915#3281] / [i915#3297])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@gem_userptr_blits@relocations.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          [SKIP][265] ([i915#3297]) -> [SKIP][266] ([i915#14544] / [i915#3297])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@gem_userptr_blits@unsync-unmap.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          [SKIP][267] ([i915#2527]) -> [SKIP][268] ([i915#14544] / [i915#2527]) +1 other test skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@gen9_exec_parse@allowed-single.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-rkl:          [SKIP][269] ([i915#14544] / [i915#2527]) -> [SKIP][270] ([i915#2527])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@gen9_exec_parse@bb-start-cmd.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][271] ([i915#5286]) -> [SKIP][272] ([i915#14544] / [i915#5286]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][273] ([i915#14544] / [i915#5286]) -> [SKIP][274] ([i915#5286]) +1 other test skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg1:          [SKIP][275] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][276] ([i915#4538] / [i915#5286])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][277] ([i915#3638]) -> [SKIP][278] ([i915#14544] / [i915#3638]) +2 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@kms_big_fb@linear-16bpp-rotate-90.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][279] ([i915#14544] / [i915#3638]) -> [SKIP][280] ([i915#3638])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][281] ([i915#12313]) -> [SKIP][282] ([i915#12313] / [i915#14544])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          [SKIP][283] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][284] ([i915#14098] / [i915#6095]) +4 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:
>     - shard-rkl:          [SKIP][285] ([i915#14098] / [i915#6095]) -> [SKIP][286] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][287] ([i915#3742]) -> [SKIP][288] ([i915#14544] / [i915#3742])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_cdclk@mode-transition.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-rkl:          [SKIP][289] ([i915#11151] / [i915#7828]) -> [SKIP][290] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          [SKIP][291] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][292] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-rkl:          [SKIP][293] ([i915#6944]) -> [SKIP][294] ([i915#14544] / [i915#6944]) +1 other test skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_content_protection@legacy-hdcp14.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          [SKIP][295] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][296] ([i915#6944] / [i915#7118] / [i915#9424])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_content_protection@uevent.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][297] ([i915#3555]) -> [SKIP][298] ([i915#14544] / [i915#3555]) +1 other test skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][299] -> [SKIP][300] ([i915#14544]) +8 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][301] ([i915#14544] / [i915#4103]) -> [SKIP][302] ([i915#4103])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          [SKIP][303] ([i915#14544] / [i915#3840] / [i915#9053]) -> [SKIP][304] ([i915#3840] / [i915#9053])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#3955]) -> [SKIP][306] ([i915#3955])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][307] ([i915#14544] / [i915#4854]) -> [SKIP][308] ([i915#4854])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          [SKIP][309] ([i915#9934]) -> [SKIP][310] ([i915#14544] / [i915#9934]) +3 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_flip@2x-flip-vs-dpms.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          [SKIP][311] ([i915#15643]) -> [SKIP][312] ([i915#14544] / [i915#15643]) +1 other test skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#15643]) -> [SKIP][314] ([i915#15643]) +1 other test skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
>     - shard-rkl:          [SKIP][315] ([i915#1825]) -> [SKIP][316] ([i915#14544] / [i915#1825]) +13 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#1825]) -> [SKIP][318] ([i915#1825]) +8 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
>     - shard-tglu:         [INCOMPLETE][319] -> [SKIP][320]
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          [SKIP][321] ([i915#5439]) -> [SKIP][322] ([i915#14544] / [i915#5439])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][323] ([i915#14544] / [i915#15102]) -> [SKIP][324] ([i915#15102])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][325] ([i915#15102] / [i915#3023]) -> [SKIP][326] ([i915#14544] / [i915#15102] / [i915#3023]) +5 other tests skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          [SKIP][327] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][328] ([i915#15102] / [i915#3458]) +3 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][329] ([i915#15102]) -> [SKIP][330] ([i915#14544] / [i915#15102]) +1 other test skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][331] ([i915#15102] / [i915#3458]) -> [SKIP][332] ([i915#10433] / [i915#15102] / [i915#3458])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][334] ([i915#15102] / [i915#3023]) +6 other tests skip
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          [SKIP][335] ([i915#12713]) -> [SKIP][336] ([i915#1187] / [i915#12713])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-dg1-16/igt@kms_hdr@brightness-with-hdr.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#15460]) -> [SKIP][338] ([i915#15460])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          [SKIP][339] ([i915#15638] / [i915#15722]) -> [SKIP][340] ([i915#14544] / [i915#15638] / [i915#15722])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][341] ([i915#6301]) -> [SKIP][342] ([i915#14544] / [i915#6301])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_panel_fitting@legacy.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-ccs-modifier:
>     - shard-rkl:          [SKIP][343] ([i915#15709]) -> [SKIP][344] ([i915#14544] / [i915#15709]) +1 other test skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:
>     - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#15709]) -> [SKIP][346] ([i915#15709])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-rkl:          [SKIP][347] ([i915#13958] / [i915#14544]) -> [SKIP][348] ([i915#13958])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][349] ([i915#14544] / [i915#5354]) -> [SKIP][350] ([i915#5354])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          [SKIP][351] ([i915#9685]) -> [SKIP][352] ([i915#14544] / [i915#9685])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_pm_dc@dc5-psr.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][353] ([i915#3828]) -> [SKIP][354] ([i915#9340])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@pc8-residency:
>     - shard-rkl:          [SKIP][355] ([i915#14544]) -> [SKIP][356] +2 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_pm_rpm@pc8-residency.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_pm_rpm@pc8-residency.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][357] ([i915#11520] / [i915#14544]) -> [SKIP][358] ([i915#11520]) +2 other tests skip
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][359] ([i915#11520]) -> [SKIP][360] ([i915#11520] / [i915#14544]) +1 other test skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][361] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][362] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][363] ([i915#1072] / [i915#9732]) -> [SKIP][364] ([i915#1072] / [i915#14544] / [i915#9732]) +7 other tests skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-8/igt@kms_psr@psr-cursor-mmap-cpu.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#3555]) -> [SKIP][366] ([i915#3555]) +1 other test skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#15243] / [i915#3555]) -> [SKIP][368] ([i915#15243] / [i915#3555])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@kms_vrr@flipline.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@kms_vrr@flipline.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][369] ([i915#14544] / [i915#2436]) -> [SKIP][370] ([i915#2436])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-rkl:          [SKIP][371] ([i915#9917]) -> [SKIP][372] ([i915#14544] / [i915#9917])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18181/shard-rkl-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
>   [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15478]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
>   [i915#15492]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15492
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15652]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15652
>   [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
>   [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
>   [i915#15815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15815
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18181 -> Patchwork_163573v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18181: 7535044a2418d22b59be0eb64af0353971f16bd8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8814: 8814
>   Patchwork_163573v1: 7535044a2418d22b59be0eb64af0353971f16bd8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163573v1/index.html
