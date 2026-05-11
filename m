Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFuiEYdbAmosrgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:43:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 641065170B7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1904910E8DB;
	Mon, 11 May 2026 22:43:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kvtQcV+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5835410E8DB;
 Mon, 11 May 2026 22:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778539395; x=1810075395;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kv/AQewn/a2XD46+NX9HfLuaEr9E30n7nmYSgWC3VVI=;
 b=kvtQcV+8uYfl3jL/gyVz0w72d3l+ZMR7/aYHmj2Vrh33l5ajjMMorGXf
 WH4+9iJitzfbbQc2AvScPP40eVcR1I9mfeH+L/mMpP1HclJFh4b/lJ7Yz
 nAYgFpMZFEnKmTQoHDIU+VHeWGZuSgNO2w990WxCAewXHZoQczQ8sMH9L
 W+T65ALToxIeH82nT/MQR+Ri9aS8kfh8D+HPyh7FjMeghyaEx0ngzM9tN
 7NJ9CwhG98GDPPtNApi3qsgPbZoTTVgCQFsWp5egeejEjm8FBn7o4AIHD
 92svulj9dJ/loEpUxiqX3Jhb8sYu8y6Q7YwSOVUrEMJ1Z3M1DHBhp2ukb w==;
X-CSE-ConnectionGUID: 3Fx+tG9uQI2VO6uKjt1dJg==
X-CSE-MsgGUID: oGATPkBRSA6afPd1W+mS4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="89744073"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="89744073"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:43:11 -0700
X-CSE-ConnectionGUID: Pb8ktX3dStyRcGGcdeiuFQ==
X-CSE-MsgGUID: HCxicER2QfO2+hvj//NeSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="236751191"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:43:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:43:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 15:43:09 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.43) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:43:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fvxEy9fWgwHY+1QvTQTGgHIV7d0GaOqQbiSkvneIPBvCSbfoXFFJi4R/a7SloCcw4mF/uu72TNMYpYbLlN/LDz9HuYw6H7GoKj5y+8Fa2VyR2q5hbM0xr3DSM2hR8lRf36ybwNQlL/7rPgacXVxcgAgy0J0FklnNZBmzAYPIzMVKBVZ2Zezp+XQoM2FQMMaLZlJtnfXLwJr20MjpWePVbD4iKpBHZihXr2tiC9nvoxQvHLK3rDoIW2GByPxU67zC1gy4lW6/yOZAX/DFvHJ9x20uOSXqI7brxm36VLYTUkQTJVlDFB4VhewyAvxkrBSNbuVsQEKTTMySI9bJ+u6Y5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dgw499Dn4r1UcVHkGph86zG8D5CaqrFuBdqDJ+G6Ynk=;
 b=U5c4CXOwVl4w8ySoV31iu1uVM2YLLEeQonSmk3oLQVNhnxi7HGWfDlN/kqSgvJ5tPhg2KCoizZrWzP0Zbm2WKkkUMBdqdGR1/boeK8TGjDR44YVkM9F+vMv8sPtMBcI/Dh1eCJRN/E+fHwHZZYi/sgqPoq3EBVwwkIKnQFVI+q2d/yvYhZ02WDCPIFYnjHLdO3DQKmOENmMYElXqKKZe066a8qVHSMbhfjo3rXB+Li7lYd1nQnSmDsGGfhypTfxEfQm7z+KWPEnN32A6Xb7lk9huOd8ZN4pWQHHQx1Y5vmKYdrcT1b4cSHyrM0HTaNHLsFGQ/LRCn6xCTHg+NpAO9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ5PPF8622363CD.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 22:43:04 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 22:43:04 +0000
Date: Mon, 11 May 2026 15:43:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/4] drm/i915/bw: Deduplicate intel_sa_info instances
Message-ID: <20260511224301.GZ2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-2-e762cb8662da@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-2-e762cb8662da@intel.com>
X-ClientProxiedBy: SJ0PR03CA0114.namprd03.prod.outlook.com
 (2603:10b6:a03:333::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ5PPF8622363CD:EE_
X-MS-Office365-Filtering-Correlation-Id: fbc35bac-1ebe-4b06-007d-08deafaea99b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|56012099003|18002099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: qPuY982cykQNyBOnBdISVgwLER4pog7/jZPWdsrlkgyJjliIihF6ZgfyAz1tZaGcCphKeVeUe7Kb/oURxkh/Vv9Edknw+rMWwJGXbsVHlgNhsGVVw0XT12vaiR9K/WI85IbAmCAWOu1Aue1r6LPx4MG8Ml7JgSD5+/KPkOISA2aluUDpejGyhvcpRs9C4CMwEOYtWuYGNK5X91e2hODlMGFhpQpuOacHEd2Vu1x7c2XAHF8tyGa6bWBG75xGOmiO3tMot91h26JXrjcdD+5yABrFoLjkunl4djDHL4yLwZRa9shWuk7VqEiS74fM1NetZ7duZ3H5GVGu/pciMPddE4UELjXeTK+lTc+qWhGQ/7McxTueStiHiQXtWSX4B67WXx/RmxaDLlVC9A+PS+3vNVr1+cDsBDm8GijPSX73ikzUXsu1aN3Gg0dxfaI2CH6RF+CMLTlcIkBzF89Rzp1VADvcHTslHsEyTSaL2RWyGrLxMf1hsvheyVHzouwf7puSr/kdTh6yt8a5SIwu6/UBKwNWXfATfiT7BXHSqjDEqBXe+dm4tkRGCeFEdg1Q7c5hiPlUvPBolDuNGSoFEBx7BdHhlUelSesUeIsm3axz4br/nGExxqn1703mge9ijmhN6eM+KzoDlJ6/Bx4QdswIDGCC483Ky0P66d4u0dlC8EZGD9p2ppOauk8jct4k38Ua
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(56012099003)(18002099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3Qo4Oq+IRxeA/uGBCd0IbYNfIea9AYaWPdfmf7BLuVdxC4p5VBLFK+4DKQlD?=
 =?us-ascii?Q?ACx9gk0xk2KIUkztyEwthVr3Tm+UobuPiahkifobjdHKzG3mVQhjMqnBEyBB?=
 =?us-ascii?Q?V2Ahi1W8v81TsyiYnE/l4Xw4ij5hPDYWLHrQc6YfLYYbz1TN4sgewLa/+jZi?=
 =?us-ascii?Q?ivaabI5XGIh8LyFO433YDHWGh84p6q5WJEm/9b7IX8jyXHZTf0gSQaYIcCgK?=
 =?us-ascii?Q?0fZiwTjxXm78S0hwzZ3bfc4ybazyhryloinEq3yYNzoP0fTbqul6hmRIZDEf?=
 =?us-ascii?Q?hu1FMilOp35w6oOIhER5kMKFPqRNWnBPTM5upWGJt1wjbd7EKDgmj45T5kJi?=
 =?us-ascii?Q?3hnIl1JppOueRBUk2vlVrc3cwBLikiKM/UNZKJdd4CzFwnKfuF+uio95sNv0?=
 =?us-ascii?Q?Psx72r9jCxod1RLrgKeJoVno97PPOPYzsj7DGhhOSYybAxUJRurG+gqqO5yU?=
 =?us-ascii?Q?eW7LISupk7tDbM79OX9JSRJOVPzY7DTunDPJxbtJJDojEpUav4uXi21spIlL?=
 =?us-ascii?Q?LjujkUWaounlRCGj+HWHzZHk8txlP0e1152eAGTBpx5ngDhlBhG3I7+JZeLw?=
 =?us-ascii?Q?4q006Ft+mz7D1ghna8FyjQtvp5iFhaVXNdQimjKdrSmxwfDuWTke06bXGF8i?=
 =?us-ascii?Q?848SfRnopnmLX7GKsgbiNe/S+LMlxHb8SW75YTukbSNXYWYRn0JyLgZTne/W?=
 =?us-ascii?Q?aKDEfoHq9KkM9gLMDhir1i8vzfISFCwAg2LTeFCZaGSw7FSZXrdEaWuYTKuV?=
 =?us-ascii?Q?MdF9rvUMqGf7RS85OsRRq0LZgG/8+n46GA5MB52VBh9Pr3kH86dzqTvXB2b+?=
 =?us-ascii?Q?et69vdn+bt66HZEvpz1YCuKJOanJQIxbOZ6ESJE5q8Lh7tptw6jsDr+VXQEx?=
 =?us-ascii?Q?bbgCsBlVIeFjhzabnq4FtyeaIpwne4oMlj8bbeEx+3v6CSZ8ZAI5YTv0c+uO?=
 =?us-ascii?Q?xl8skVtCNJiF6esdl6L+U5G0e2helo3RPtvfNOV6iB0ttnHXus9K7lImKZyD?=
 =?us-ascii?Q?+lppG1vKQMetsPsEKROpMYVLfo12v/eOsyhBZKfCwF0A2Y9MHCILsK6hZmTk?=
 =?us-ascii?Q?CO5vARtfU8zidMEEHHe6XKNhWwqIpzPdzq7DE++BXJdJljyvtosQeZz0N5xE?=
 =?us-ascii?Q?1eMUqthcxGqT5xLgVDazEKW/4xMsqArRsON6CPp6dJvNnj85GHgbI5AubyxC?=
 =?us-ascii?Q?UF0Eq0Ay5tfnr31wHH+aTGNe4CRxtloxQXgOx+xDCQLcdYid/jMCGzy3huXM?=
 =?us-ascii?Q?rnHKGE8lBcMHuIVgahMIeynSK+ZNZPkuITqrcnBkO9cdu99UNirczq5oD3w+?=
 =?us-ascii?Q?l317U9XOZSFhG8Jy5ZnlP1EoJ4xeybT7WNSFCin/MSYVZzzdlpMEIc7gLdGn?=
 =?us-ascii?Q?Ve5eclnkj9IUtgqu9hVf0qeu0nyQq5rwQoTYR0GSA7Fz4UOApjjV053x2DPb?=
 =?us-ascii?Q?lp71UxhzPLLMDtGrL/MnVvEb3kYmkN6dyNQjMxIHJ5y22viZMvE3VmyUT52Y?=
 =?us-ascii?Q?dcY/xk6JOdNDjRiDQ0bH5KMABnFf0hDsez6xteGtpIsRUxgWQ71aRVGRe4Up?=
 =?us-ascii?Q?40hZuwCrmqvcGxgBLZ5NDDmDTGEMdise0nry5LxB0srtVIlOpLZbx7FFJj/g?=
 =?us-ascii?Q?4I3CSIr8SVNoxpYqr4nzw2Afq+PZvPEZMw9eqmbZ/8l3TZ+kwCgBke6+7hJ+?=
 =?us-ascii?Q?Kph4BNFI1iXFnLc0C7tqLkH8bLSrM6Qktd6PN61Lxw5HXPrtQfljrEnoPnjF?=
 =?us-ascii?Q?4v2P8ECwOlrpRKibRwsu3JzHwl7jHzk=3D?=
X-Exchange-RoutingPolicyChecked: fTE+B7luuqBUyw/58z5Alqt1uOdzTd0Cx/lGp93D6u3HPOxJBJHdgLrinXL+feFC8TUnyB9hmggYkjy75xkO9pN1VtEXImd2fOz3D5sGQOQJsK4lDLAtIA1HPM2aH8nrTN6YHbTSDF/t2l7XpZcEuRBWpIP30r9A3UTxtt5ntycre81srquijgsj84FjdN5SdHCj+u1kW8Gjr/KHHzhf5m6sPTAhqOJbfFtdR2hygnUCx5ftXJekrV9+aOr7UH2FDlNiObll7bB15ogA00lv+CyU7G3KBeEEpVXJhYx8i9LDc/QXNIQIBjjwMn+QNDOeoz9zi+jYYW1B+iy2ecfJew==
X-MS-Exchange-CrossTenant-Network-Message-Id: fbc35bac-1ebe-4b06-007d-08deafaea99b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 22:43:03.9949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6HuYjq7svQYTVT3Jm5NceANf/SeWGYTHjKabWZxiXRwHHpyydJJdxFC2HsOKVhjBJ/rWS5jhsCsvtVPIxG4Xed9zjqwy59zU+/HwNGuPYW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8622363CD
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
X-Rspamd-Queue-Id: 641065170B7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,mdroper-desk1.amr.corp.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 01:30:57PM -0300, Gustavo Sousa wrote:
> Now that intel_sa_info contains bandwidth parameters specific to the
> display IP, we can drop many duplicates and reuse from previous
> releases.
> 
> Let's do that and also simplify intel_bw_init_hw() while at it.
> 
> v2:
>   - Drop rkl_sa_info and reuse icl_sa_info. (Matt)
>   - Add comment explaining RKL's display's peculiarity on using ICL's
>     parameters. (Matt)
>   - Don't rename xelpdp_sa_info to mtl_sa_info.  Renaming of instances
>     to use IP names will be done in upcoming changes.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 51 ++++++++-------------------------
>  1 file changed, 12 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index cf6756b8ae52..2e580c1a3fab 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -480,36 +480,11 @@ static const struct intel_sa_info tgl_sa_info = {
>  	.displayrtids = 256,
>  };
>  
> -static const struct intel_sa_info rkl_sa_info = {
> -	.deburst = 8,
> -	.displayrtids = 128,
> -};
> -
> -static const struct intel_sa_info adls_sa_info = {
> -	.deburst = 16,
> -	.displayrtids = 256,
> -};
> -
> -static const struct intel_sa_info adlp_sa_info = {
> -	.deburst = 16,
> -	.displayrtids = 256,
> -};
> -
>  static const struct intel_sa_info mtl_sa_info = {
>  	.deburst = 32,
>  	.displayrtids = 256,
>  };
>  
> -static const struct intel_sa_info xe3lpd_sa_info = {
> -	.deburst = 32,
> -	.displayrtids = 256,
> -};
> -
> -static const struct intel_sa_info xe3lpd_3002_sa_info = {
> -	.deburst = 32,
> -	.displayrtids = 256,
> -};
> -
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_soc_bw_params *soc_bw_params,
> @@ -873,25 +848,23 @@ void intel_bw_init_hw(struct intel_display *display)
>  	if (DISPLAY_VER(display) >= 35)
>  		drm_WARN_ON(display->drm, dram_info->ecc_impacting_de_bw);
>  
> -	if (DISPLAY_VER(display) >= 30) {
> -		if (DISPLAY_VERx100(display) == 3002)
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
> -		else
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
> -	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> +	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>  		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>  	} else if (DISPLAY_VER(display) >= 14) {
>  		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
> -	} else if (display->platform.alderlake_p) {
> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
> -	} else if (display->platform.alderlake_s) {
> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
> -	} else if (display->platform.rocketlake) {
> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
> -	} else if (DISPLAY_VER(display) == 12) {
> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
> +	} else if (DISPLAY_VER(display) >= 12) {
> +		/*
> +		 * RKL's SoC was based on ICL and the display, even though being
> +		 * gen12, had changes to the memory interface to match gen11's,
> +		 * consequently inheriting gen11's display-specific bandwidth
> +		 * parameters.
> +		 */
> +		if (display->platform.rocketlake)
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
> +		else
> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>  	} else if (DISPLAY_VER(display) == 11) {
>  		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>  	}
> 
> -- 
> 2.53.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
