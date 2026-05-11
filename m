Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOPfFEnHAWoRjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:10:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A83B50D611
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A00410E532;
	Mon, 11 May 2026 12:10:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UoiUbB2i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62E9510E06E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2026 12:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778501444; x=1810037444;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qMFXSu1uiVCg/Z04IcZjEVe5Nt66ovCPf0bwbJ4bSfY=;
 b=UoiUbB2iJFik+OynxI8rj3vTd7CP63g6oIMoHsXxcOEunWQt1jDnkRoQ
 vat+fJ7AbP0l1nTOXlMmXb+pE9VdV60sCUjcGec5MCm5WabkUaA8S9/k2
 Abw0AzdKN7YhoS/0ksrkxS0NGMnMC9c4fMjVQa4ldiuLhhPX5I5CKii8W
 Pa6ZNKujQVvZJe6YzJi9BohODoUkqLJFaCwQRTQ5P7jjepP1LAUoo29as
 fin60JhTdsGUw3IUSpOA4qLwCUbW0uyhCG5BlEZE0neGw709+0uuwAEwP
 Ph2iDVMsCq2Si/y3aBjnZxcYrZ8ZzDu0Isll9jQQb9FhGKsFjdd/5DMTz g==;
X-CSE-ConnectionGUID: Nu01yHjvQleSidpy51RRaw==
X-CSE-MsgGUID: PdTKQT0dQzSjzmS/bW8BFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="82998161"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="82998161"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:10:44 -0700
X-CSE-ConnectionGUID: Z3QhL9fzSxOCr6ueRoIKEQ==
X-CSE-MsgGUID: MzAyCdK5T7+LQmHSn9qtYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267797675"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:10:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:10:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 05:10:43 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:10:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X5F/I4uRFXhgB4hmafn4QrC6/UjxVLWraeiijikss8AaXIelxsNVvNh+ymuue4opEnUGZ8mV/X/zzY5wuTSFfdTjnKvUciAJA8tK3XFYYg6Ra0+2CiIUHYkAU+MRI/36uMoOiVzm0rtiDuL8b9FZTwGKis173JNdctKU8sPNSVu4EtIPqNEfvJIpj1DGSgvPR3hBceqOEuv8sET3hyGyWg2SkOKrWGINsGD4/M0QTxAr15zg1oTw1zK2Dw19j//0dFYNsW1G2yEB4SxfABTG0udIiHg4Xop5+6HySX9rKADYZfT+YFO59WVP5/3wtwHTdO7fTimjWfNReeH97I1e1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uvkPIEJM0EV4qG36lPbHykKA1JmlU2GXqR3ccJ9gmy0=;
 b=cftmE5Jg6m4WZxI+wDc3tQlWFffb+lUojw8CYFo9uO7NwmHaIuVE0+qxZa0F0DEfjF7Uj8aMlirFkMYJ/dJaqZtuQLQu7dOAzchGyXEVBpvRjfMLS9u7Vj2P2KuFRcMizvFXK5Jyt4h7LUCNm1q/peTPnqsVmdL+YGxXjz7JdJlCeo4YlmiwI+waCEEgO4Z1axzIhQKd/Lx5hen2QuhOhWDqLm5RDEgBDIG5npBjxnB3UNS8TwANp5K0n3CbUUVtt38x1nYou8FllygMTpq1uwki5bU8bE9R0N5FFhT4FgVC0cTJ42vjtSgk3GRWVJtOe160yZQCuJJfveNI1F216w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8749.namprd11.prod.outlook.com (2603:10b6:610:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 12:10:38 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9891.020; Mon, 11 May 2026
 12:10:38 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, James Xiong
 <james.xiong@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.Full: failure for drm/i915/dmc:
 fix assert_dmc_loaded WARN during async firmware load (rev2)
In-Reply-To: <177834706154.54780.10927578203919524164@5ab824fced77>
References: <20260508181329.666762-1-james.xiong@intel.com>
 <177834706154.54780.10927578203919524164@5ab824fced77>
Date: Mon, 11 May 2026 09:10:31 -0300
Message-ID: <87wlxaqh8o.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0041.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8749:EE_
X-MS-Office365-Filtering-Correlation-Id: 6db87878-c864-430d-d11f-08deaf564ef4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: +tOM+RylOy3qoYVhMwM+MkUpkBRsZOzZ1/iY1vvZ8ShHkVpCNITubEZu0Kg0HBCHUp6nLLq+YQL+Rm+7bLxAkUodYcuycu0zELuRWmWGXCIipejAzbT3SSzUHi1cywI/Yo0U62liNZ93F3Xrcrp1Nh41isAmT/eLYvMn/uwD6KG/3nKfgzmC9t1Ar/3BHXG30IL75x8F4JkKvtCR3+nnNPJH2f7TqyNREBe0/EuLpWn0SPSLml4USY6oaPb6FNPR6D7tbJinaf96mMQmOM02z/ceSx+tFanZoq0RK4V5f7cfDwohOutbYM3HW7Zqn9uZJ3GK2BZ7hmV5H0wwV2vHIaOT95CgPxR1EUQ5Sar7iAGXsRA7xLVS2Nm+WWtHeiWJY3iYB50/QLqQ/1fJH1YKLxqJ5JTwLV1oY5MWwzd3SiH2gChIG9IjgMpGMpq335NiTOLnFkTaEdQtI0OCIL6cmICkVI9PGbi+Oi0f+AOLdKT8diqoiv3u3dQO/bgWNhXwjyEqDO2uypcIwqLZlHd/eykovEyZztIP9LVcbyELZjUWIP7zBf6nh0U9KASFQWq+NPEc9tJ/z4mQhQl2yz2LxU5gpwbNJDYJIpeAmUz7v8RCjFApK3nrI9YAXRwWGwNthCYmF1k7rzHu42f7e5fLDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wb5Aw3j+TfJLMgLB/8g+56rfAzK54DL62h2lD51gUjXbSc+zLiWLBtup63M9?=
 =?us-ascii?Q?7eHoQi7pRPEWvffTtpLVw1lBDzApB55BcOosxDpGvqYZKfxdQnRZ7lnbLAyG?=
 =?us-ascii?Q?H0wEV/e9n9UxchPpY5PSjHCHZmR72uwxnRKWGLxXXFMETmPgdsPszDEInUjo?=
 =?us-ascii?Q?wtbgBxhZPc6bJl7d22TDar2w/x4VJvlqwSceMoLOE3B6szR+RLNZTjz4ZaOI?=
 =?us-ascii?Q?dkirmCmusrItIL+jvfB9xJvu4KtdzVo0VvtjRpRg94lzlopAvOYvkG8Nf+LY?=
 =?us-ascii?Q?khPOGzaqb0Shi18EmsOv9MeUgg2dl72sNx3RJBUhOXeFSYWqA1xYtXcGH5sX?=
 =?us-ascii?Q?ujUt3YTBea20IEmtUfE+dxuS0f/tF/bSWPLkv9vUx66NLUv8T/2XGsRxAWtf?=
 =?us-ascii?Q?HQqNRjLKM2k7iOyPTsQceWdX1v8fG5e/vh87MLFzJTl+h1V5n4mvwDQP/p2h?=
 =?us-ascii?Q?XQS/+d1E4P/byQFqZB7iLLK359dZIxjzwxNAXNOfrCtXA4mJ/9q1W2HM98MC?=
 =?us-ascii?Q?Swaaxs57oRT5cImLmmcSd22EIcDYFEZ/RD8sT9W/3Yvmx4TD+dhalqX6HMCv?=
 =?us-ascii?Q?sSaMlG0fmsKVX8I7syw+9Nks5AlDLsSr9YWy6br8/2z01OthAS/QoQbbgAFd?=
 =?us-ascii?Q?BB2Cm5t+k9VP3X4p/bj4i9iRHETo2TpXAbeUZ6qP59un8n3Vg6Tmk6KBOYJQ?=
 =?us-ascii?Q?J9s117gBdrxGNGWG2Q5uVzpGTHKlsIK5Q5kF5f59QS4lA7goAN6ZORzTHYs6?=
 =?us-ascii?Q?oPze1nyOp6bPGVQ7YJNkSuieCI3JDCwPd1hqw7qLAf/ZufNwbjiZcT9nZV3y?=
 =?us-ascii?Q?YcIxmvztNhUo7c/gBBhRUFBDwC0KRwhJLCoMMgjVVlT+0ApepDkl9x0pd6Q3?=
 =?us-ascii?Q?G2yxmlmEAQQPXSmW2YGChd0+CpLL01UmQsRB31lBpIA0Ab1lQOh8RjVpXdVp?=
 =?us-ascii?Q?uTrEhfMi7UAArf7lEZdtyokkbIYbPbjF5Tw6Kawp58y1nroUfwMUCPACKiap?=
 =?us-ascii?Q?B/jP2CgMWsDEjEoQSAOHtAKGQhmqfv+gdxIGymjo+3WrFCsPr0VfwQBCGLjG?=
 =?us-ascii?Q?gfLmNHmekjizGt9pFzej6vDcjp/LOtHiSnXkH31g4SICY8ltHK9uI1CYU31e?=
 =?us-ascii?Q?QYWSPHSth4L6mF+JWssQyAB68ezuP+u55KyOmRJV1IDqITgKlqZAdhaEGxB3?=
 =?us-ascii?Q?6Dnd6GkE+B4EGGb0P4glO2D0621gEd+HJfAkp93cPZEB/NWsxuRfn5r7e0xb?=
 =?us-ascii?Q?+t/4/MM823XIKm2KJA3GQiGEde2f1yBFiOQOCkYSCShrNF/rc+/4XlSGqP21?=
 =?us-ascii?Q?lVEhikXAh6TBXCFm2nc33uorFjuU9iLwllOj0G3ry/YQA/yojLDO/EyNGADo?=
 =?us-ascii?Q?ooGWI8I6YrOmu0R30AnuQHFMXpReXd+rvJrdb4Oo19yg/rCMup2YlAG8ZguE?=
 =?us-ascii?Q?CZVmVyWEaGx2VTgnO4P4GFR415SdPXY6/tiUvim/u/krOtrt1sD+2//oO2Pc?=
 =?us-ascii?Q?7jXjfcN67KBjXsJwWfBOEaMjZrUG2aIAd405V+NKa1Wx3slv8YNjaMBZn1o9?=
 =?us-ascii?Q?t25DAiu+SnmShEJToW/V1QNOaiv9YuokDqAjqCJnDW/488LD1//G0rRYac0G?=
 =?us-ascii?Q?hC+YOMagp/WVybrdjuEHs1u3d1Eqc6oSfII3muWFfPDhlxX2tH8AeVMpivBb?=
 =?us-ascii?Q?XpiI9KX0lDR1Thl2h4OCgyaiipqzQJH1nEe3QDV4PbYjA5RMWpZudRLmHluW?=
 =?us-ascii?Q?Yu+ESJschQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: EckZ360pjuf9P/LjYwNonI9Fy5wKlc81C8DHj6BkGHOh4szD3ttb65HbP9hw58rMXrBRr89b4V7IldFwQVJ4kN4Pu7IPO3xhTMUQ9epBlBwRNowkAZ1q9azX0P4H+MP2XY+GFSovh0I7JZfPelv6PLjz1fNTzUGCD/cvNNxtpHr3UXJexaxtpUmIZnExj+H1w4l+oqAhVEF86ULdKz7GvZXClKMJiWpIsfNIcfxnzkdUcmcEKfdyFzmphJxZFhQ+kdd4+mvJNLEWdH7iAZv40l36DVxn3I6y4JTdXVW+BDLx5ickZjaGbbAgMTdEwvaOMV/X4xHiQ+Sw4UOfSH3iUw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6db87878-c864-430d-d11f-08deaf564ef4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 12:10:38.3451 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVHBMq3wa/XSSJWWa8MbVCg24xvMe5hMt0yk4knqaQ6++YneGKaYfE95B13z77V9ytpze3DRF/oXSh0xZDaR2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8749
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
X-Rspamd-Queue-Id: 5A83B50D611
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:patchwork@emeril.freedesktop.org,m:james.xiong@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Patchwork <patchwork@emeril.freedesktop.org> writes:

> == Series Details ==
>
> Series: drm/i915/dmc: fix assert_dmc_loaded WARN during async firmware load (rev2)
> URL   : https://patchwork.freedesktop.org/series/166155/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_18457_full -> Patchwork_166155v2_full
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_166155v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_166155v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_166155v2_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@kms_frontbuffer_tracking@hdr-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk8/igt@kms_frontbuffer_tracking@hdr-suspend.html
>
>   
> #### Warnings ####
>
>   * igt@kms_frontbuffer_tracking@hdr-suspend:
>     - shard-rkl:          [SKIP][2] ([i915#15989]) -> [INCOMPLETE][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@kms_frontbuffer_tracking@hdr-suspend.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-suspend.html

These hdr-suspend failures seem unrelated to the patch; see [1].

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16056

--
Gustavo Sousa

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_166155v2_full that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#11078])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@device_reset@cold-reset-bound.html
>
>   * igt@dmabuf@all-tests:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#15931])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@dmabuf@all-tests.html
>
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
>     - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy.html
>
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#9323]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@gem_ccs@suspend-resume.html
>
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@gem_close_race@multigpu-basic-threads.html
>
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [FAIL][11] ([i915#15454])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html
>
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#6335])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html
>
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#280])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.html
>
>   * igt@gem_eio@kms:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][14] ([i915#13363])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@gem_eio@kms.html
>
>   * igt@gem_eio@wait-immediate:
>     - shard-dg1:          [PASS][15] -> [DMESG-WARN][16] ([i915#4423])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-13/igt@gem_eio@wait-immediate.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-15/igt@gem_eio@wait-immediate.html
>
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4812])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@gem_exec_balancer@bonded-semaphore.html
>
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#4525]) +2 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html
>
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#4525])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@gem_exec_balancer@parallel-contexts.html
>
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3539])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@gem_exec_flush@basic-uc-set-default.html
>
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3281]) +5 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>
>   * igt@gem_exec_reloc@basic-write-wc-active:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3281])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@gem_exec_reloc@basic-write-wc-active.html
>
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4537] / [i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-chain.html
>
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#4537] / [i915#4812])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
>
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-glk:          [PASS][25] -> [INCOMPLETE][26] ([i915#13196] / [i915#13356]) +1 other test incomplete
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-glk3/igt@gem_exec_suspend@basic-s3.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk8/igt@gem_exec_suspend@basic-s3.html
>
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4860])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences.html
>
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4860])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
>
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-glk:          NOTRUN -> [SKIP][29] ([i915#4613]) +2 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk8/igt@gem_lmem_swapping@heavy-multi.html
>
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#4613]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_lmem_swapping@heavy-random.html
>     - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#4613])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@gem_lmem_swapping@heavy-random.html
>
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#4613])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@gem_lmem_swapping@smem-oom.html
>
>   * igt@gem_mmap_gtt@coherency:
>     - shard-glk11:        NOTRUN -> [SKIP][33] +85 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk11/igt@gem_mmap_gtt@coherency.html
>
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#4083])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@gem_mmap_wc@set-cache-level.html
>
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4083]) +4 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html
>
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3282]) +5 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html
>
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][37] ([i915#2658])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@gem_pwrite@basic-exhaustion.html
>
>   * igt@gem_pwrite@basic-self:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3282])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@gem_pwrite@basic-self.html
>
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#13717])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-context.html
>
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3282])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@gem_readwrite@beyond-eob.html
>
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#8428]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
>
>   * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
>
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#8411]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>
>   * igt@gem_tiled_pread_basic@basic:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#15656])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@gem_tiled_pread_basic@basic.html
>
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3297]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@gem_userptr_blits@coherency-unsync.html
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3297])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_userptr_blits@coherency-unsync.html
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#3297]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@gem_userptr_blits@coherency-unsync.html
>
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#2527] / [i915#2856])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@gen9_exec_parse@batch-zero-length.html
>
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#2527]) +2 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#2527] / [i915#2856]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html
>
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#2856])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-8/igt@gen9_exec_parse@bb-start-param.html
>
>   * igt@i915_drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#14123])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@i915_drm_fdinfo@all-busy-idle-check-all.html
>
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#15479]) +4 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@i915_module_load@fault-injection@__uc_init.html
>
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-tglu-1:       NOTRUN -> [ABORT][54] ([i915#15342]) +1 other test abort
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@i915_module_load@fault-injection@intel_connector_register.html
>
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#6412])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@i915_module_load@resize-bar.html
>
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#8399])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@i915_pm_freq_api@freq-reset-multiple.html
>
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#6590]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html
>
>   * igt@i915_pm_rps@thresholds-park:
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#11681])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@i915_pm_rps@thresholds-park.html
>
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#4387])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@i915_pm_sseu@full-enable.html
>
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#5723])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html
>
>   * igt@i915_selftest@live:
>     - shard-mtlp:         [PASS][61] -> [DMESG-FAIL][62] ([i915#12061] / [i915#15560])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-8/igt@i915_selftest@live.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-8/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [PASS][63] -> [DMESG-FAIL][64] ([i915#12061])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
>
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4077]) +4 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@i915_suspend@fence-restore-untiled.html
>
>   * igt@i915_suspend@forcewake:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][66] ([i915#4817])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk11/igt@i915_suspend@forcewake.html
>
>   * igt@kms_addfb_basic@bad-pitch-63:
>     - shard-dg1:          [PASS][67] -> [DMESG-WARN][68] ([i915#4391] / [i915#4423])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-13/igt@kms_addfb_basic@bad-pitch-63.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-15/igt@kms_addfb_basic@bad-pitch-63.html
>
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4:
>     - shard-dg1:          [PASS][69] -> [FAIL][70] ([i915#14888]) +1 other test fail
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-17/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-16/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4.html
>
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:
>     - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#14888]) +1 other test fail
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
>
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#5286]) +3 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#5286]) +3 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#5286]) +4 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][76] -> [FAIL][77] ([i915#15733] / [i915#5138])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3828])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
>
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][79] +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3638]) +4 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][81]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
>
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#5190])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
>
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#6095]) +195 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
>
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#14544] / [i915#6095]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
>
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#14098] / [i915#14544] / [i915#6095])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
>
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][87] +173 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
>
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#10307] / [i915#6095]) +116 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-3.html
>
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#12313])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#6095]) +4 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-edp-1.html
>
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#6095]) +29 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html
>
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#6095]) +65 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#12805])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#12805])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#6095]) +20 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html
>
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#14098] / [i915#6095]) +45 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
>
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][97] ([i915#12313])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#12313])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#6095]) +39 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs.html
>
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
>
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>
>   * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#11151] / [i915#7828])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
>
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-storm.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm.html
>
>   * igt@kms_color@deep-color:
>     - shard-rkl:          [PASS][106] -> [SKIP][107] ([i915#12655] / [i915#3555])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_color@deep-color.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_color@deep-color.html
>
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#15865]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_content_protection@atomic-dpms-hdcp14.html
>
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#15330] / [i915#3116])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html
>
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#15865]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_content_protection@legacy-hdcp14.html
>
>   * igt@kms_content_protection@lic-type-0-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#15865]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_content_protection@lic-type-0-hdcp14.html
>
>   * igt@kms_content_protection@type1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#15865]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_content_protection@type1.html
>
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#13049])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3555]) +3 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
>
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-rkl:          [PASS][115] -> [FAIL][116] ([i915#13566]) +2 other tests fail
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85.html
>
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][117] ([i915#13566])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
>
>   * igt@kms_cursor_crc@cursor-random-64x21:
>     - shard-tglu:         NOTRUN -> [FAIL][118] ([i915#13566]) +1 other test fail
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_cursor_crc@cursor-random-64x21.html
>
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][119] ([i915#13566]) +1 other test fail
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
>
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3555]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-32x10.html
>
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#3555]) +2 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-max-size.html
>
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#9809])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#13046] / [i915#5354]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
>
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][124] ([i915#15804])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#9723])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3804])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
>
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#13749])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_dp_link_training@non-uhbr-mst.html
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#13749])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_dp_link_training@non-uhbr-mst.html
>
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#13748])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_dp_link_training@uhbr-sst.html
>
>   * igt@kms_fbcon_fbt@psr:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#3469])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_fbcon_fbt@psr.html
>
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3955])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
>
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#1839])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_feature_discovery@display-2x.html
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#1839]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_feature_discovery@display-2x.html
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#1839])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_feature_discovery@display-2x.html
>
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#1839])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
>
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#658])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_feature_discovery@psr1.html
>
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#9934]) +6 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms.html
>
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_flip@2x-nonexisting-fb.html
>
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#3637] / [i915#9934])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
>
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#9934]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_flip@2x-wf_vblank-ts-check.html
>
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#8381])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_flip@flip-vs-fences.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#15643])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#15643] / [i915#5190]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#15643]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#15643])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#15643]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
>
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#1825]) +24 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] +60 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#15991] / [i915#5354]) +10 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render.html
>
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#5439])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [PASS][151] -> [SKIP][152] ([i915#15989]) +11 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#15990]) +10 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#15990])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#15991]) +8 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-draw-pwrite.html
>
>   * igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#15989]) +20 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#15102]) +23 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#15104] / [i915#15990]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#15990] / [i915#8708]) +3 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#15990] / [i915#8708])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#15991] / [i915#1825]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-indfb-pgflip-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#15989]) +3 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-indfb-pgflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#15102]) +21 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-blt.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#15991]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-pwrite.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][165] +52 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-onoff.html
>
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#15989]) +6 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-glk:          [PASS][167] -> [SKIP][168] +12 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-glk8/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-blt.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk4/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-blt.html
>
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#15989]) +5 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>
>   * igt@kms_frontbuffer_tracking@hdr-indfb-scaledprimary:
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#15989]) +15 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-indfb-scaledprimary.html
>
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#9766])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#15102]) +8 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#15102]) +26 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#15102] / [i915#3458]) +4 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#15102] / [i915#3023]) +17 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
>
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][176] +53 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html
>
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#16012] / [i915#3555] / [i915#8228])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#16012] / [i915#3555] / [i915#8228])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#16012] / [i915#3555] / [i915#8228])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms.html
>
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#16012]) +1 other test skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1-xrgb2101010.html
>     - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#16012]) +1 other test skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1-xrgb2101010.html
>
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-3-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#16012]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-3-xrgb2101010.html
>     - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#16012]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-13/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-3-xrgb2101010.html
>
>   * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#16011]) +9 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-15/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f.html
>
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#16011] / [i915#3555] / [i915#8228])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_hdr@static-toggle.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#16011] / [i915#3555] / [i915#8228])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_hdr@static-toggle.html
>
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          [PASS][187] -> [SKIP][188] ([i915#16011] / [i915#3555] / [i915#8228])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-1/igt@kms_hdr@static-toggle-dpms.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html
>
>   * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-2-xrgb2101010:
>     - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#16011]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-1/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-2-xrgb2101010.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-2-xrgb2101010.html
>
>   * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#16011]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-6/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f.html
>
>   * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#16011]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html
>
>   * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#16011]) +3 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010.html
>
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#15458])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_joiner@basic-ultra-joiner.html
>
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#15458])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#15458])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#6301])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html
>
>   * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#15709])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping.html
>
>   * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#15709])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html
>
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#15709]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#15709]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
>
>   * igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#15709])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html
>
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [PASS][203] -> [INCOMPLETE][204] ([i915#14412]) +1 other test incomplete
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#13958])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_plane_multiple@2x-tiling-y.html
>
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#15329]) +7 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
>
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#12343])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_pm_backlight@brightness-with-dpms.html
>
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#5354])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_pm_backlight@fade.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][209] ([i915#9812])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_pm_backlight@fade.html
>
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#3828])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@kms_pm_dc@dc5-retention-flops.html
>
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#3828]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html
>
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [PASS][212] -> [SKIP][213] ([i915#15073]) +2 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-15/igt@kms_pm_rpm@dpms-lpsp.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-18/igt@kms_pm_rpm@dpms-lpsp.html
>
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#15073])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][215] -> [SKIP][216] ([i915#15073])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#15073])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#6524] / [i915#6805])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_prime@d3hot.html
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#6524])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_prime@d3hot.html
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#6524])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_prime@d3hot.html
>
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#11520]) +4 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html
>
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][222] ([i915#11520]) +3 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
>
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
>     - shard-glk11:        NOTRUN -> [SKIP][223] ([i915#11520]) +3 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk11/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
>
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#11520]) +3 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
>
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#11520]) +7 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#11520]) +3 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
>
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#12316])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
>
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#9683])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>
>   * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#9732]) +9 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html
>
>   * igt@kms_psr@fbc-psr-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_psr@fbc-psr-dpms.html
>
>   * igt@kms_psr@fbc-psr-sprite-blt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#9688])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_psr@fbc-psr-sprite-blt@edp-1.html
>
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_psr@psr-sprite-plane-move.html
>
>   * igt@kms_psr@psr2-cursor-plane-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#9732]) +8 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_psr@psr2-cursor-plane-onoff.html
>
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#5289])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#12755] / [i915#15867])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-90.html
>
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#3555]) +2 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_setmode@invalid-clone-single-crtc.html
>
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#8623])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][238] ([i915#8623])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][239] ([i915#12276]) +1 other test incomplete
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk11/igt@kms_vblank@ts-continuation-dpms-suspend.html
>
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][240] ([i915#12276])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk4/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
>
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#15243] / [i915#3555])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_vrr@flipline.html
>
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#9906])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#9906])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#9906])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-drrs.html
>
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3708] / [i915#4077])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@prime_vgem@basic-fence-mmap.html
>
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
>     - shard-tglu:         NOTRUN -> [FAIL][246] ([i915#12910]) +9 other tests fail
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-tglu-3/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html
>
>   
> #### Possible fixes ####
>
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][247] ([i915#13356]) -> [PASS][248] +1 other test pass
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg2-7/igt@gem_ccs@suspend-resume.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-8/igt@gem_ccs@suspend-resume.html
>
>   * igt@gem_ctx_bad_destroy@double-destroy:
>     - shard-mtlp:         [SKIP][249] ([i915#2575]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@gem_ctx_bad_destroy@double-destroy.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@gem_ctx_bad_destroy@double-destroy.html
>
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [TIMEOUT][251] -> [PASS][252] +2 other tests pass
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@gem_mmap_offset@clear-via-pagefault.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html
>
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][253] ([i915#5566]) -> [PASS][254]
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-glk9/igt@gen9_exec_parse@allowed-single.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>
>   * igt@i915_getparams_basic@basic-subslice-total:
>     - shard-mtlp:         [INCOMPLETE][255] -> [PASS][256]
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@i915_getparams_basic@basic-subslice-total.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@i915_getparams_basic@basic-subslice-total.html
>
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][257] ([i915#13356] / [i915#13820]) -> [PASS][258] +1 other test pass
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
>
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk:          [INCOMPLETE][259] ([i915#4817]) -> [PASS][260]
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-glk9/igt@i915_suspend@debugfs-reader.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk5/igt@i915_suspend@debugfs-reader.html
>
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-rkl:          [INCOMPLETE][261] ([i915#4817]) -> [PASS][262] +1 other test pass
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@i915_suspend@fence-restore-untiled.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@i915_suspend@fence-restore-untiled.html
>
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-rkl:          [ABORT][263] ([i915#15132]) -> [PASS][264] +1 other test pass
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-1/igt@kms_async_flips@async-flip-suspend-resume.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-4/igt@kms_async_flips@async-flip-suspend-resume.html
>
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-mtlp:         [FAIL][265] ([i915#12469] / [i915#15733] / [i915#5138]) -> [PASS][266]
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [FAIL][267] ([i915#15733] / [i915#5138]) -> [PASS][268]
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>   * igt@kms_color@ctm-0-75:
>     - shard-mtlp:         [FAIL][269] ([i915#15871] / [i915#6892]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@kms_color@ctm-0-75.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_color@ctm-0-75.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling:
>     - shard-mtlp:         [FAIL][271] ([i915#15871]) -> [PASS][272] +35 other tests pass
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
>
>   * igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][273] ([i915#15989]) -> [PASS][274] +10 other tests pass
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-8/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-indfb-draw-mmap-wc.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-1/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-indfb-draw-mmap-wc.html
>
>   * igt@kms_frontbuffer_tracking@hdr-1p-rte:
>     - shard-dg2:          [SKIP][275] ([i915#15989]) -> [PASS][276] +4 other tests pass
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg2-1/igt@kms_frontbuffer_tracking@hdr-1p-rte.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-rte.html
>
>   * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-indfb-msflip-blt:
>     - shard-glk:          [SKIP][277] -> [PASS][278] +2 other tests pass
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-glk3/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-indfb-msflip-blt.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-indfb-msflip-blt.html
>
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][279] ([i915#15073]) -> [PASS][280] +1 other test pass
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
>
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#15073]) -> [PASS][282]
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>
>   * igt@kms_psr@psr-sprite-blt@edp-1:
>     - shard-mtlp:         [FAIL][283] -> [PASS][284] +24 other tests pass
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@kms_psr@psr-sprite-blt@edp-1.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_psr@psr-sprite-blt@edp-1.html
>
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][285] ([i915#12276]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-glk8/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-1.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-glk4/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-1.html
>
>   * igt@prime_vgem@sync@vcs0:
>     - shard-mtlp:         [SKIP][287] -> [PASS][288] +1 other test pass
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@prime_vgem@sync@vcs0.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@prime_vgem@sync@vcs0.html
>
>   
> #### Warnings ####
>
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][289] ([i915#3281]) -> [SKIP][290] ([i915#14544] / [i915#3281]) +3 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
>
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          [SKIP][291] ([i915#14544] / [i915#8562]) -> [SKIP][292] ([i915#8562])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
>
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          [SKIP][293] ([i915#14544] / [i915#280]) -> [SKIP][294] ([i915#280])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html
>
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          [SKIP][295] ([i915#14544] / [i915#4525]) -> [SKIP][296] ([i915#4525])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          [SKIP][297] ([i915#14544] / [i915#3281]) -> [SKIP][298] ([i915#3281]) +4 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-cpu.html
>
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          [SKIP][299] ([i915#4613]) -> [SKIP][300] ([i915#14544] / [i915#4613])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          [SKIP][301] ([i915#14544] / [i915#4613]) -> [SKIP][302] ([i915#4613]) +2 other tests skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html
>
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          [SKIP][303] ([i915#14544] / [i915#3282]) -> [SKIP][304] ([i915#3282]) +1 other test skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
>
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#3297]) -> [SKIP][306] ([i915#3297]) +1 other test skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
>
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          [SKIP][307] ([i915#14544] / [i915#3297] / [i915#3323]) -> [SKIP][308] ([i915#3297] / [i915#3323])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html
>
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-rkl:          [SKIP][309] ([i915#2527]) -> [SKIP][310] ([i915#14544] / [i915#2527])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html
>
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-rkl:          [SKIP][311] ([i915#14544] / [i915#2527]) -> [SKIP][312] ([i915#2527])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][313] ([i915#5723]) -> [SKIP][314] ([i915#14544] / [i915#5723])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@i915_query@test-query-geometry-subslices.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-rkl:          [SKIP][315] ([i915#5286]) -> [SKIP][316] ([i915#14544] / [i915#5286])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#5286]) -> [SKIP][318] ([i915#5286]) +2 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][319] ([i915#14544]) -> [SKIP][320] +32 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][321] -> [SKIP][322] ([i915#14544]) +11 other tests skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][323] ([i915#6095]) -> [SKIP][324] ([i915#14544] / [i915#6095]) +3 other tests skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
>
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][325] ([i915#14098] / [i915#6095]) -> [SKIP][326] ([i915#14098] / [i915#14544] / [i915#6095]) +4 other tests skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
>
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][327] ([i915#14544] / [i915#6095]) -> [SKIP][328] ([i915#6095]) +5 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2.html
>
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][329] ([i915#12313] / [i915#14544]) -> [SKIP][330] ([i915#12313])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
>
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
>     - shard-dg1:          [SKIP][331] ([i915#4423] / [i915#6095]) -> [SKIP][332] ([i915#6095])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-19/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-14/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
>
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          [SKIP][333] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][334] ([i915#14098] / [i915#6095]) +9 other tests skip
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
>
>   * igt@kms_chamelium_edid@dp-edid-read:
>     - shard-rkl:          [SKIP][335] ([i915#11151] / [i915#7828]) -> [SKIP][336] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_chamelium_edid@dp-edid-read.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-read.html
>
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-rkl:          [SKIP][337] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][338] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
>
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          [SKIP][339] ([i915#14544] / [i915#15865]) -> [SKIP][340] ([i915#15865]) +1 other test skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_content_protection@atomic-dpms.html
>
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#3555]) -> [SKIP][342] ([i915#3555]) +2 other tests skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][343] ([i915#13049] / [i915#14544]) -> [SKIP][344] ([i915#13049]) +2 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_cursor_crc@cursor-random-512x512.html
>
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          [SKIP][345] ([i915#14544] / [i915#4103]) -> [SKIP][346] ([i915#4103])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          [SKIP][347] ([i915#13691] / [i915#14544]) -> [SKIP][348] ([i915#13691])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_display_modes@extended-mode-basic.html
>
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-rkl:          [SKIP][349] ([i915#13749] / [i915#14544]) -> [SKIP][350] ([i915#13749])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_dp_link_training@non-uhbr-mst.html
>
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][352] ([i915#3555] / [i915#3840])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_dsc@dsc-basic.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-rkl:          [SKIP][353] ([i915#9934]) -> [SKIP][354] ([i915#14544] / [i915#9934])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
>
>   * igt@kms_flip@2x-nonexisting-fb-interruptible:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#9934]) -> [SKIP][356] ([i915#9934]) +2 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_flip@2x-nonexisting-fb-interruptible.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_flip@2x-nonexisting-fb-interruptible.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-rkl:          [SKIP][357] ([i915#15643]) -> [SKIP][358] ([i915#14544] / [i915#15643])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#15643]) -> [SKIP][360] ([i915#15643]) +1 other test skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][361] ([i915#14544] / [i915#1825]) -> [SKIP][362] ([i915#1825]) +14 other tests skip
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:
>     - shard-rkl:          [SKIP][363] ([i915#15102]) -> [SKIP][364] ([i915#14544] / [i915#15102]) +6 other tests skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][365] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][366] ([i915#15102] / [i915#3023]) +9 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg1:          [SKIP][367] ([i915#15102] / [i915#3458]) -> [SKIP][368] ([i915#15102] / [i915#3458] / [i915#4423])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          [SKIP][369] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][370] ([i915#15102] / [i915#3458])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb101010-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#15102]) -> [SKIP][372] ([i915#15102]) +16 other tests skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb101010-draw-mmap-cpu.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb101010-draw-mmap-cpu.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          [SKIP][373] ([i915#15102] / [i915#3023]) -> [SKIP][374] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2:          [SKIP][375] ([i915#15102] / [i915#3458]) -> [SKIP][376] ([i915#10433] / [i915#15102] / [i915#3458]) +4 other tests skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][377] ([i915#1825]) -> [SKIP][378] ([i915#14544] / [i915#1825]) +7 other tests skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
>
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-dg1:          [SKIP][379] ([i915#4423]) -> [SKIP][380]
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
>
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][381] ([i915#15990] / [i915#4423]) -> [SKIP][382] ([i915#15990])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-19/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@psrhdr-rgb101010-draw-mmap-cpu:
>     - shard-dg1:          [SKIP][383] ([i915#15102] / [i915#4423]) -> [SKIP][384] ([i915#15102])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-19/igt@kms_frontbuffer_tracking@psrhdr-rgb101010-draw-mmap-cpu.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psrhdr-rgb101010-draw-mmap-cpu.html
>
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          [SKIP][385] ([i915#15458]) -> [SKIP][386] ([i915#14544] / [i915#15458])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][387] ([i915#6301]) -> [SKIP][388] ([i915#14544] / [i915#6301])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
>
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#14712]) -> [SKIP][390] ([i915#14712])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
>
>   * igt@kms_plane@pixel-format-y-tiled-ccs-modifier:
>     - shard-rkl:          [SKIP][391] ([i915#14544] / [i915#15709]) -> [SKIP][392] ([i915#15709]) +2 other tests skip
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html
>
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][393] ([i915#13958] / [i915#14544]) -> [SKIP][394] ([i915#13958])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-none.html
>
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#15329]) -> [SKIP][396] ([i915#15329]) +3 other tests skip
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
>
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          [SKIP][397] ([i915#14544] / [i915#5354]) -> [SKIP][398] ([i915#5354])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_pm_backlight@basic-brightness.html
>
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][399] ([i915#9340]) -> [SKIP][400] ([i915#14544] / [i915#9340])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
>
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          [SKIP][401] ([i915#11520] / [i915#14544]) -> [SKIP][402] ([i915#11520]) +3 other tests skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
>
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][403] ([i915#11520]) -> [SKIP][404] ([i915#11520] / [i915#14544]) +1 other test skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
>
>   * igt@kms_psr@fbc-pr-basic:
>     - shard-mtlp:         [TIMEOUT][405] -> [SKIP][406] ([i915#9688])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@kms_psr@fbc-pr-basic.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_psr@fbc-pr-basic.html
>
>   * igt@kms_psr@fbc-pr-cursor-mmap-gtt:
>     - shard-rkl:          [SKIP][407] ([i915#1072] / [i915#9732]) -> [SKIP][408] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html
>
>   * igt@kms_psr@fbc-psr-sprite-blt:
>     - shard-mtlp:         [FAIL][409] -> [SKIP][410] ([i915#9688])
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-6/igt@kms_psr@fbc-psr-sprite-blt.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-7/igt@kms_psr@fbc-psr-sprite-blt.html
>
>   * igt@kms_psr@fbc-psr2-primary-blt:
>     - shard-rkl:          [SKIP][411] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][412] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-blt.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_psr@fbc-psr2-primary-blt.html
>
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-dg1:          [SKIP][413] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][414] ([i915#1072] / [i915#9732])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-dg1-12/igt@kms_psr@psr2-cursor-blt.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-dg1-19/igt@kms_psr@psr2-cursor-blt.html
>
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][415] ([i915#5289]) -> [SKIP][416] ([i915#14544] / [i915#5289])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#8623]) -> [SKIP][418] ([i915#8623])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@kms_tiled_display@basic-test-pattern.html
>
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          [SKIP][419] ([i915#14544] / [i915#9906]) -> [SKIP][420] ([i915#9906]) +1 other test skip
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html
>
>   * igt@perf_pmu@module-unload:
>     - shard-mtlp:         [INCOMPLETE][421] ([i915#13520]) -> [ABORT][422] ([i915#15778])
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-mtlp-8/igt@perf_pmu@module-unload.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-mtlp-1/igt@perf_pmu@module-unload.html
>
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          [SKIP][423] ([i915#3708]) -> [SKIP][424] ([i915#14544] / [i915#3708])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-2/igt@prime_vgem@fence-write-hang.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
>
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          [SKIP][425] ([i915#14544] / [i915#9917]) -> [SKIP][426] ([i915#9917]) +1 other test skip
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18457/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12469
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15454
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
>   [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
>   [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
>   [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
>   [i915#15871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871
>   [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
>   [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
>   [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
>   [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
>   [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
>   [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6892]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6892
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_18457 -> Patchwork_166155v2
>
>   CI-20190529: 20190529
>   CI_DRM_18457: 32e3e7a9b5d137996e6f57a4aa0c248f12db9544 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8900: 529869b7d0fba64ed67819111079ff269bc8159a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_166155v2: 32e3e7a9b5d137996e6f57a4aa0c248f12db9544 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166155v2/index.html
