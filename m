Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL8BB/6HAWpscgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 09:40:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CD4509679
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 09:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34ED010E4E8;
	Mon, 11 May 2026 07:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/FN5M3y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F11910E0B4;
 Mon, 11 May 2026 07:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778485243; x=1810021243;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=27DvtetIdr9EFiGa1iuI4cxua0N7uwD0vwCZRFZdRyk=;
 b=i/FN5M3yfh0TfnP4rhgT6giEdMbLjoPElQ6b2m1L/YwloayE7eCsAcz/
 6+exRTbkd0yme/7CDuD2B1X/SW/mSn9ZTIWYFU+1XkCJIN3St1lwnhiVT
 UfI8XgjNFsDX2A8eTh2UalyiFArWaAvjG0i45r0cBO4Vj4odC50WaG6o2
 5xnx22pu5t4Anjr6bQA9vB/UkzpnBn3f4sJ0GxmB3SBfpvN7LrdqY2mON
 j/OgLgvIk9HpnaDQn9TzPDM6//BuIwD3tbc460GfNB07BtOtD2baevWkg
 rUlo8um2Vwj6PHXt5ZAOyFDd6Mc7SgeGBNUSslfbNgtJYSJwblMZfJ6qi A==;
X-CSE-ConnectionGUID: 7S16Mq4lS3mcQE7JJ/F2vQ==
X-CSE-MsgGUID: qt0A3oslTXKAq9uqWdHODw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="66896855"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="66896855"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 00:40:40 -0700
X-CSE-ConnectionGUID: tZma9tj7QnO2oVjApmmM1w==
X-CSE-MsgGUID: vH3XRi4QQuO4WrLnpGu52g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="233052921"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 00:40:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 00:40:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 00:40:39 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 00:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aYxw/Oi5R2094EmgVsS76aZmL6gHYJch9RZJK/kVp4IZLQxvCDdRDMycvyaTylqsHnCKAhfcHO0dpuz7xCHdHC6YO6xylK7pmgAknDr3pt/7CjXKZiPLzRhsVQ7gkZP+sdTlAk2TF5BMnCmf8UielfSmq1wOJiT2afm+oJnHcNT/2t6z3GS+IJ8gc+KXcMmKLFwLAuv7L7Ko11klLHv3bDT10Kq2Vh1heQjO48VyT69DYE/txB9sW/4YmvzV5SjW20o2Ji+TdLD1duUcrKzeY0yGK66hYfSw1wwpdCFrdw9reCvZUBFKPTHhqhsYUNN9t2GVhjlZj1IYJ1DxLw6AEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pE6qI/YTcOPBRA4Sypzm3loEwItLnsrZ06C5fkMTt4g=;
 b=VPv0Id6V+XnGvi4kXG/6koCdjTDqGzR2C4YVhn9cj9UFFdOK+N94nCYdq6bQ4DGJJDb1xL9DftjAbYetKU+7kjNzfXo+RVVcj89BKsdvaOB8SndxxzsSeXXOM5qZJPn5SOPqE7wuNWTlgZz4dGvOZKfflk3PUbqycDRtLMtKk8anDQeuSHQsCTmRzpmYCgLByqElK4LsbvUJfjDW+t+Ie9E04p+il2ED5RY30uxWB4puEe6b5BcVI1Ove2rfZbreQT9l46VixfHl0hbGH4mzWVz/dD3MpbLbWKy4zgsJ4dHFRIk5U3ILp1AkrywLgIyaSQTMxnKlJZq5vubzRaY38w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3658.namprd11.prod.outlook.com (2603:10b6:5:142::24)
 by SJ5PPF99DB14780.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::847) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 07:40:36 +0000
Received: from DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542]) by DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542%3]) with mapi id 15.20.9870.023; Mon, 11 May 2026
 07:40:36 +0000
Date: Mon, 11 May 2026 10:40:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <ville.syrjala@intel.com>
Subject: Re: [PATCH] drm/i915/dp: On DPCD read failure skip LT
Message-ID: <agGH7kjw2iH543ll@ideak-desk.lan>
References: <20260511032007.104081-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260511032007.104081-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0004F085.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::630) To DM6PR11MB3658.namprd11.prod.outlook.com
 (2603:10b6:5:142::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3658:EE_|SJ5PPF99DB14780:EE_
X-MS-Office365-Filtering-Correlation-Id: e0a9d8b2-8cc3-4edc-1d4c-08deaf3096f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: efihXqTuzRsFfnArRIH5ArdKkkN7oLwJohTy9YO9pZeCS1h04YovVfBszcgPlO/cVWplcsPp5BOrrSZrupLDauSat1pr7lXIyW+WCw6XYZqWAiCcw6jyFffJSyszW+hAi0F6crS8caAf0MWD+qgDkX3lkiZ63DIMK9+I6/f2XOQYhFcQqjeRpapLa2vr+8mUCpr+YJcA1WM1JB8hR08iXQDl+2rn/rx5tM4aoxSuR6PWMiKXjCE0KfTwMOKLPiI0X48GavcwZXVjr2zxpqZ5++PAKmdNH6Q/yc2SQSxhibAhl7t7vXs95Oce+5ivBSbvLgPNNUF4H0BuvUdUzdc4q14zLVvA5R3jrXQINSF/ujHymkt0uhi7HdiOTZx0bjEg+F79XZVfGfw92VcUkPGiRk8HOKUf2Fex4P9AITxsVKmFGgoh4u7vtFaREn+zlSvXV1Bu5d9PtQ8uR8QKSuuf1ZSMupngoTYTG+IUPcm7HFb2vJJCdgadiOcGVEqR146/BRY5yxCXLUAUg1IVnj83FrLgqLcW1o4ehZv+EYL/G9drBg6hnMhg9PcunlgLNL5txibDfgK82mlJVEVRd1LSVth9DGQc8szT2p/FPIZ/+5F0bfrO7kQxXYfkW9T8cp14uP6sEf0H6JYWoTyf6bAjkBWSi4T/lLHlRBrGwovRpi2i/cbBhv7Jb3vYYumSwTFJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3658.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7sJ1X81FxyHnTg/I8gRB6KTy2b27eAGbFRBISfapS9NdRTvzVsOxPISiWKrz?=
 =?us-ascii?Q?Toqd8qr5g4scwoCECZe9uR2IQCKiHB0c7GENtDCMFZbO1rspKIPhEApa/TZ0?=
 =?us-ascii?Q?+mm6ILcv5JX9AS5SSlnCKcfKaJJ5qDzgk9r6Uj21jnNmIWdD22wj1smF7oWe?=
 =?us-ascii?Q?b4QO1JaTU9I6TPn/zvyvCa1zxRdjtU2Zn1ETWSyP2ykHVBBB4w0/Ggj7MmY2?=
 =?us-ascii?Q?kQJv3Wg3UZ4P90Nr5VDzxe/rjgfnwTNpxBgzo4eXQQQRTsun+R2+I3IVTMCn?=
 =?us-ascii?Q?9tJ/2Hk60erkSuzyOZv+WFKCbJTsIRLrBINDilHZIDLE+fl0J3Zbbj7iQJsw?=
 =?us-ascii?Q?/RtPXI4dtTPORLfjx9tg2mrYDpcmA++loiSt9LKcUKeHyIhFLgKSm56hI+Bj?=
 =?us-ascii?Q?p3n7mt5jYupLl9Te1Q9SAMOOoWh2PUsOC+R1Xh8PLsPPJRLzB6OVrPFz+XWb?=
 =?us-ascii?Q?oWOAh3FHJB6oqYCWCFiWlAKEC+4HL/bzeE/J2e1RTJpV1yDT0pxRY2Bf9vGr?=
 =?us-ascii?Q?/xBjnA4em6y6GiQHZmraQ94liUcuIqAyE+x1ax52/tCe05X26v0nEA53uxkQ?=
 =?us-ascii?Q?I5Tw2ewOzcpTXSxQUBpGvn2oPmv94EInFkZzFqzkKS8va9KF4VsnTI5Vsk94?=
 =?us-ascii?Q?vCQshml+fTB/56JYaOTA3ihECM+UBYnkq1Asa6GYJjYtp1K5ofWJDPrP7uuf?=
 =?us-ascii?Q?PAwsPP+mkPSfNSJhXDAVJn7DVIzw9bl1pOUCNHrwkL6z22yqyAt6YZH2Z6F8?=
 =?us-ascii?Q?sZYRer9rdG+30lPJnJHxd/4FeU/1UDL4yaLm37+gnHh+dwaz4svErnntpivK?=
 =?us-ascii?Q?3TEHGTaraKvZM1X1WuG4yJqlXINO0QT/ZJHnyzx4nv+BpPVclzs2vSyM06d3?=
 =?us-ascii?Q?HXO6Zm8EQUKz1u4e7UFS5gWu7h1Zcf1tZWQO9FPVeS90ExyBNZeKiuJz/Lf+?=
 =?us-ascii?Q?pEgx6mhgo7Q7Uxi7LW5kjvdpbqu8bVWu+0yiLoUZgruMkfvvwMpYsMrFNy6w?=
 =?us-ascii?Q?CNrZ26j4zsCGQFrpXjv0UqfPf0oW6syHIVW2xp9HsjLuhI2KH4ULHCB3FEj4?=
 =?us-ascii?Q?xVngGGKT5CtemKwRlwydhUGEm1Xny0pxReqN14HY1J6wEfRNacCv2Xo/uoO/?=
 =?us-ascii?Q?0+R+gbN/0Pg61XMJJE7sMJC61gJbKEV8UsO0NLWQwA2doPerM35hh5ejZBTi?=
 =?us-ascii?Q?yGkVPpksfbvfQwTTUzH2A3s8IxAgMLrJM8tDv3yguKcHI5HZjfhdPllgWlBV?=
 =?us-ascii?Q?NSxGA4jtdiOi1iUgNU/cULJEURM/Y5hcOxGCZiXjzDnFFOTHE0HZ7hY+EKPX?=
 =?us-ascii?Q?gEjIenh2hTjW8Mq4PQ25X7UqjbF9oxqOxwUCIKRYpxdJuVsL9jf0mkjcKsIx?=
 =?us-ascii?Q?GFRm4l3/20WUsaBAcvkbBIC1RzYvpLAIxrEjuPHSdIgklkQGWgteeYjyd3SC?=
 =?us-ascii?Q?bvoA6Dgg5UzyTR1mF8pNrRc1452bw0Q2qEZO9UJkHAm1a+G5JAnKbQ7T2KH9?=
 =?us-ascii?Q?sLfMnL0PmkVQwXYRB3AuYkh9Lv04rzv68aCw3pgOMJBhoIN1i7dFsDMdo5+H?=
 =?us-ascii?Q?6zMM8EVmUulSzYvgyoJoTqTFEvAVx7mNULkSIiOBm1+UfVXzTPXkL0lvHYXG?=
 =?us-ascii?Q?up7/HlULf3G2aaKJUron8SkZDoWDRWWcTs6FCBUBMvCftgY16sfifzYeCprs?=
 =?us-ascii?Q?HrSACNMi5qpUXj5Q41erdNGtTAWAF1sLDPGvalGqB9pRgydh8L62go4qJAbR?=
 =?us-ascii?Q?I79PLy6KPg=3D=3D?=
X-Exchange-RoutingPolicyChecked: JZqDVptPGgzFzWnclfMAN+kISAxex6zu7PoT9x0EMivuqiKWh7w/8KRcXuEOAsvOwGSFu5hdSf+b6ueghpDP0AUiN5kA4ylq4pkP7bOvLN0WEZj/foaj4KFAWnzwth6fhy05gBN+k9KPuWR2aPBoamDDdZNueI36Dh9OA7BjrffRjkIGijxgWu6OnJJlmaCT7cnx7aI8Q239K3EvHHr7kY+rML9oIAnwup6NrL/h4bAOO5JPeOWvlGvhqF4CFSJAbKPzi5/qkd5UP6pF3KetujPmZJIt0uMEC5SNNGUmrdOUJcmxC03w/wlQegz9xZ5mtdoXi0S0oc9COSANEhkqCA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a9d8b2-8cc3-4edc-1d4c-08deaf3096f3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3658.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 07:40:36.0707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74uu0OxBcFe1ILmj6DchXOt1eGW4EZNAc2mTdgcjnXhh/MCBIfGB6bUBikCFo40kn2iFjfVu5r/DpPUg+fxPvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF99DB14780
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
X-Rspamd-Queue-Id: A3CD4509679
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.992];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 08:50:07AM +0530, Arun R Murthy wrote:
> The commit e42e7e585984 ("drm/i915: Fix modesetting in case of
> unexpected AUX timeouts") continue the LT even if DPCD read failed.
> 
> But doing so will blot the dmesg with multiple AUX Tx errors, so skip
> the LT but continue the modeset seq for the reason said in the above
> mentioned patch.
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index a26094223f78..2598e4ba9712 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1776,9 +1776,12 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  
>  	lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
>  
> -	if (lttpr_count < 0)
> -		/* Still continue with enabling the port and link training. */
> -		lttpr_count = 0;
> +	if (lttpr_count < 0) {
> +		/* skip LT but complete the modeset seq */
> +		lt_dbg(intel_dp, DP_PHY_DPRX,
> +		       "Reading LTTPR/DPRX caps failed, skip LT\n");
> +		goto retry;

This does break the regular "link training sequence" referred to by
e42e7e585984, reintroducing the original problem fixed by that commit.

Avoiding AUX failures this way is also too ad-hoc: the sink
disconnecting at any other point of time than right here before you
check for it would still result in AUX transfer failures being logged.
So I don't think it's a good idea to special case this particular
failure point to avoid these logs.

> +	}
>  
>  	intel_dp_prepare_link_train(intel_dp, crtc_state);
>  
> @@ -1795,6 +1798,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> +retry:
>  	intel_dp->link.seq_train_failures++;
>  
>  	/*
> -- 
> 2.25.1
> 
