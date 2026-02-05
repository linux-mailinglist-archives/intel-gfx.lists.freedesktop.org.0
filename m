Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDPyBaRmhGkh2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:45:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C693F0FAF
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C84210E88E;
	Thu,  5 Feb 2026 09:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8UL/prw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E75810E88D;
 Thu,  5 Feb 2026 09:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770284704; x=1801820704;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=TDsAJdAwRtOHzpwal1CWN7JWt5m+vA85dhxNt7qYy2w=;
 b=g8UL/prwFUz5U4pdsto7Hdrxr+qz0zC5FoU2rKAVvOYWx5qKyDPVp6OO
 R5gTq4puKw9t4n7XONp/XxQBGhaD7tNoTGO3Swokah3L14NrBZsLUWb1o
 rlV/Aojjj8hgtP2XjLfOAZsK6i4FeaAkr2igbWa54Ri8oDZrUjwI594ou
 HO1lYCNtfcD/Jm3yn+8fgMJ3Ipd2DNowUD7Ejx8UgV2eut3aBvtWUYUoB
 B2UXwSI+UZl44/IMhRetibZkWrK+AqC3JbfglY8exForEpQLWUkaa6nxi
 ZnzHRwQNm8QToPUgA5MUiB+hQAPx3YTlcb0f4umxEKi8i/wZqDzX2twou Q==;
X-CSE-ConnectionGUID: FVfAe5iiSkGR0z3EgscEDA==
X-CSE-MsgGUID: N7guNuxbQteVvoW63UQM2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71577363"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71577363"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:45:03 -0800
X-CSE-ConnectionGUID: rsd3QtnLTvWZfd7PDLx53g==
X-CSE-MsgGUID: kugTRZ0dTtSulRTGQMrwIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="241136017"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:45:02 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:45:01 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 01:45:01 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:45:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tl/fh/pr9RGtWEvrIqbk+TcCginh/UEj4+jNi24NKuFG9axDFgMQWfSJDOJ6d1EDOkb4EsC8Lk7QL+uFnXuwtOVGoixAFgGORLl5ZpsPFk/tT+uUxEqH0nRchicHvbLSG+8WNL/vb7tkGjUsZIdr5PZxEiKDbBRt1tv1RYer91uy3//uYna3GUU1D3D+jfgrvbqX2lhPS5IcMFt7LQj1rl8wAqUUXZn9c1HZ35KD+ICIZPEWTAay5mi4ufMRk7URsIYbyAKz6AfOSCdJXccZeeKlUhWhjLjqJvB+zYikrCDKGjWrZIMVE2GSw0pnfaIppsZbNi9Rpr0wR7hhZ1yhQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rwprFXsB84yRk6Ystq7WFp8AjrMpGxqxT7iCtYW+lkk=;
 b=V5RgFh1R7/EjOPs9u+/HLcYtMt9U/OgMdTwBUE6m/GJz+O1F7sS7/jcXBOWh6sDI87ybwu6U878Ew4TzMnnbh2UI0ZiRm0QGabz42RYOnML87gfGNXuTddwa36iZL+jNgJ6/o158RvxRV+jG6JNRXMUYNOEtXSzUyg4sAX0im/wGC+W92JSUbCKYchj/VRqXDINmkKGNTpgHksE3JjixKds7XOsfoQFqbukuiSmDYkFL36kP0t+9brvDzefbwlLeyBq0cp3kYd/WTj7AX7JL2XWo94/rG7+oIKheA3AGZBz9megbkuN29O8UXc317pMn93Mmsrz48vZ3gSgA9H81jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by DS0PR11MB7506.namprd11.prod.outlook.com (2603:10b6:8:151::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 09:44:52 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::fa90:e665:4a25:58a7%4]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 09:44:51 +0000
Date: Thu, 5 Feb 2026 11:44:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 1/2] drm/i915/dp: Make intel_dp_can_join() static
Message-ID: <aYRmj1ZF1renh3eP@ideak-desk.lan>
References: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
 <20260205083623.793902-2-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205083623.793902-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0086.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|DS0PR11MB7506:EE_
X-MS-Office365-Filtering-Correlation-Id: 981fc274-582d-4ad6-6632-08de649b358b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6Ax2Rs8avkL480rvex1gQM5jHND2A/cFvEcsw4voaDK3VaeIwpvbXf98uBqy?=
 =?us-ascii?Q?wSd5B9Qnk9q8jqBNZVnQi229u9ufDelB5BE1pzNL+6CEbpyxFe/eWOd1GHDd?=
 =?us-ascii?Q?anxnEH5H7TVh2CTdI98edMTKZqoXKGQXOinb7/r1sNd9KUkkHO9QWhLIHlpp?=
 =?us-ascii?Q?x9MKU+Z1e82eyZYaMo8y73WvA/Cr44eRpKBfBNHd0a4ZUnUdutpINZmkvvFB?=
 =?us-ascii?Q?n2yjDPCUITJTJ27sE2UEC0FBjcBxiz4BzEsR9ne4Bq5GhB0Q84QL1/31JJOp?=
 =?us-ascii?Q?GY80sdcqk3s1zn1ELgc1VXoVluOW501RnFOanu63PzA4O5+TNinUWCNn1Bg9?=
 =?us-ascii?Q?9VmH5ZpqQNjco6bA9tS5Ag68SMCdk+1cV+agNJtdVFlTPcTYbnonlDoJOLn5?=
 =?us-ascii?Q?4JFCUcLLkpZFqHJQs43bRbxCddO5arreiu9cw9K+/aTtxxYh52kNxHroDYsS?=
 =?us-ascii?Q?rhMmVeLDKUy8rTX4bFe/vrQb8N5d8Qc5OZF3kIfSJCxgCBxDoLub6MiUplb7?=
 =?us-ascii?Q?i/ynidCTD0t9fHcPjeTyjVsiJHEhukHVMrbhxO2W4eQLNyQ3cKXOxkp5tfwv?=
 =?us-ascii?Q?HcoPCZRBuzli/DO+PogWuHlsXwJfpXlgI4X0pH8XlyJxPq4J/WWflA2BHAVi?=
 =?us-ascii?Q?lVCKXbxAZbJpqyFKedAri3jveWkWqGWDkRxq2ZWQPqvcKVj0JbZBx4f6mHan?=
 =?us-ascii?Q?jLXmkIOy55shSH7qXrht5GTlExm4z9pEHPeMoaMlVUt7nfVB7oBP3B/EOxfY?=
 =?us-ascii?Q?nqUaR7rEeeBBQIeKDKe+ORpTbnMLez8Sx94ileihWtODhd/Uv6ZtbvQOYEWR?=
 =?us-ascii?Q?XAQRZFOojrU9BECXz6d7BDdMzqxwXDrym1DwDN9s9KHD2spHm/3p92bTEGgK?=
 =?us-ascii?Q?szi4XOQ5AeScUUuAHQjsX6ljc3q93LYp4cChjcOd8KpYcyRBLPgiNV4ZfNnE?=
 =?us-ascii?Q?FiiZcFdkCkjm5Q48dLWS18AyLcPhjyQlZX5OBeYZd1MFfNa8OlQMzKXRyXYb?=
 =?us-ascii?Q?tKolqdHjAX1rwLKPq5isum57jNjlpdj2KxW08139TFhY4+ymSlpJDJsp/wd0?=
 =?us-ascii?Q?8JI6pr7UZulJ07kixt5nBsnZG1wAeEUuszqIKJc4V6JnYkPrcnSVOJDaWb6S?=
 =?us-ascii?Q?3QqBOG++lUj5mPj+2dI5/Z/TZTUJaZmZJlxoyEtg+06YflKn87SV7KAqXScq?=
 =?us-ascii?Q?/6tJ/wUWeKHL8M4H5AMICtltGIEy++nuvCvAzbYRrUNBU4H6uliiEcdFJaQi?=
 =?us-ascii?Q?X/rDezXZGBmEPd9AO5oP82PvkPi0ElJIFUAxEatBxGwOLA9hwgYsFJrciVCe?=
 =?us-ascii?Q?Y5KrahjUhM9gpYpgVGE+BOSLTgi0bvIOshkqfhtJhPoVPOjDMFWXsHwQzCMl?=
 =?us-ascii?Q?MmuK5cz4sLjCLtM+Gm+AiscWjbhi87I+neqa3VsDvZiBxcgSb70eu4IafvJ9?=
 =?us-ascii?Q?3LPNLhNaJSOfFCw/helQwKZeDM7CBiPfnlLx1IGATzh59H+dA4xkMixyzUp2?=
 =?us-ascii?Q?pgNJTUUtOaeyinhI1+9ErAV5GIlwpjZFmU2jgV8WyorcSccjLFs9eQtapu4j?=
 =?us-ascii?Q?GQ5ued239iC+tptA5v8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S0DdQQoUVSwjZvz/rvBRdAsQyGavoZTRC8IDaISXFxzdSnhZr1Plku402tQb?=
 =?us-ascii?Q?d1vmlLpMkFv9MxEoQGomnXI0txHmlJ0VnYSYdvdbz3TDTk2+bmPxymYX599V?=
 =?us-ascii?Q?DSK5z0e3BjqOSvppsiNi2aHEn5YexYiibb+uxLRGH1uczTGiZTooboKhCx1o?=
 =?us-ascii?Q?jT5vPOhM4X2g8KypemrfsaOfx9i0qZRIR8/imoNhuHl4SvAwiPraY5amF96t?=
 =?us-ascii?Q?XQXQBXvn4N4uyaFaByJTWbKRkmX3Oagq24ImiTfdqs/RDKIblMdaD7rkRZol?=
 =?us-ascii?Q?ZLppuIJg2i4kQh6GCn/TJ7vCQat6VtOAFCMIoRrRjXxsg9/jzquV+eOk54Qd?=
 =?us-ascii?Q?xVLsIaU8HLcnblgSRAU5X3pYZJXe0b98ko907WUWJBWN1MieTI05otBUeSl4?=
 =?us-ascii?Q?PnH7cwJVvV6z50MRoiRzSx/wmg1yfgdKQGjo0O8LrUMSwVT3RzvWFTBeizR5?=
 =?us-ascii?Q?tYqFT0thprsBMSykDVCbx4Um2efEJNOp/lz/dwilSHuok+cJ9e4rGTVm4DTC?=
 =?us-ascii?Q?A8XKRvv1pOxkA23OCDWc0JyFAtV/lDBEelhBlad5RBmunRcTiNiTZY9gLP/p?=
 =?us-ascii?Q?l/fLkansP+aF+FovHtKwF8M9CtvKlRs/hQwhrUMPCqT9RRH/UNQa1EHABuWk?=
 =?us-ascii?Q?hKz6t7zycbd++xUnSQFjuJFDc+1UF1B90ScrBKHO+q6EWFf7oOjQ+fnEkgwO?=
 =?us-ascii?Q?CUyVEwDssTE1ahnq3UufuzxlTFlLSAW6I7wQwddN3LnbTddc3D2w6yubWuCT?=
 =?us-ascii?Q?dQD5hCY7tNABpmFhkf02ATsd87V3FplYKfCpJ7UN4eEVcum7MvJWsrb3bQ1r?=
 =?us-ascii?Q?uxcJO5je2X6BKBmuOqZOfL0NozD2BEYriuCU/uZrrxMRw5TLJ3cPjoZBeY2l?=
 =?us-ascii?Q?XIsibO3jhALmk9ViBAprdvDmy8d49ejyebpjTo9h0tU98B1S2oHq2CVIATpV?=
 =?us-ascii?Q?ZhGo1PefdN3y/2pH+yLmetKyeXV/s2wExjjUwZ9Rx6VfCdgf//B+a3ukEe3C?=
 =?us-ascii?Q?CRx38Y+JFRnlgqnXmmWLVupjiI0pH+ZjVdWk6WREw5xSS+IGP+ArU+ySAduY?=
 =?us-ascii?Q?houtpbHHbWv5cnbPnMvzcAT6e45fdC0SWWGp8ymwcRH1JygaG2I1BPD0P0rM?=
 =?us-ascii?Q?XptN527ClaqR5A4dedAe+r9QFNQGB6LpfLcgfax2SQvYlLRl8DnIPN7r7Y7j?=
 =?us-ascii?Q?tJQ/OG1SnwFVg/ZWdTBFBcK5GViVGELoJG1jIV4oygks7aBXcX06JC/6Krge?=
 =?us-ascii?Q?5c1SMzsYHoIbg1gj+ZXp4DR2bWloc+WBh43KFMkxV0G1MZac/NjMwIi/vsxF?=
 =?us-ascii?Q?Pfy103X9KfnSIK0cGdwCGG1i0NZMAbkk/iL7jYOoaG9mxJZXzFNpZfgocLUi?=
 =?us-ascii?Q?hPcyJRyctOCwt38FYycU6UD1DHnsLoV/khy3dsgxwXZ2rbHOhkDIV4RTBPEZ?=
 =?us-ascii?Q?vFsz+qnU/OPxygz6ngckYk6ZQ3bszqY3Vr9ia/38kj3aJ9UYWd6dEaOVq1wE?=
 =?us-ascii?Q?MklpYPdFiVlTfULJxDwu6aKlQK0DT8YZ2RmuqAuauwV1vt0+PJDtRhPcxB5S?=
 =?us-ascii?Q?9XwOe3fLxwikpu6HwFqvHJ2fkVuy7PFtic5lU7QhxW7i9wmM0mqYlLsEMDt1?=
 =?us-ascii?Q?xD+SVVtNMYNuD8mCyoPSMdfUjpqJ0k6sogG9FDX5gv8QfHemv3Fu2PPUH3LS?=
 =?us-ascii?Q?FFUgQXz/Qbfsnujg2fyH+p1hLKgNasIwprPDPlA+tdyadYQNDSCcJObbKFqI?=
 =?us-ascii?Q?Cr2beRgXBA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 981fc274-582d-4ad6-6632-08de649b358b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 09:44:51.8147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HxpbrapdkR37gDxR7xdwnmY5Saitw3dhEscDmxxxGfcE0zCV0sXhuq3Fnfp4Zwn0C4WP0Lj8OcXbD+nCzXjJlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7506
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6C693F0FAF
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:06:22PM +0530, Ankit Nautiyal wrote:
> intel_dp_can_join() was previously exposed in intel_dp.h, but after the
> recent joiner refactor it is only used internally via
> intel_dp_joiner_candidate_valid(). It no longer needs external
> visibility, so make it static and drop the prototype from intel_dp.h.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.h | 2 --
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e2fd01d1a1e4..4f5b89f80e55 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1396,6 +1396,7 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> +static
>  bool intel_dp_can_join(struct intel_display *display,
>  		       int num_joined_pipes)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ff527b351de0..cbd7fcd3789f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -222,8 +222,6 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  			       bool assume_all_enabled);
>  int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
> -bool intel_dp_can_join(struct intel_display *display,
> -		       int num_joined_pipes);
>  bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int target_clock,
>  			   int htotal,
> -- 
> 2.45.2
> 
