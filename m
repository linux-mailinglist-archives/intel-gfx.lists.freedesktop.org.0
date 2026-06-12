Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S98BF8YZLGqlLQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 16:37:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C1F67A3FE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 16:37:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=Vvo4pTn2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9715310EA57;
	Fri, 12 Jun 2026 14:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2579510EA4B;
 Fri, 12 Jun 2026 14:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781275074; x=1812811074;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=zErrWILorN7GO1Bk7gerL4CQKVwmc4vvpVyKeyh7kZE=;
 b=Vvo4pTn2eCG2FcZ/po00iSLfAo8iF9fQiMSSUO1mn5HquHU3e0gd8/Td
 YNYEPrHnYznW0hNYY7ymPTWm2LDjjRLFYLHJhYYdZ5CPQp4WqajrRXJlm
 HndesSjCyYBmjbblCRtxV1FsmJ5WRnz1Yv/NzXVGZX5CCt/An8sMAUx0A
 V4PybWeLe4RolNsGHcOZhLpb0KcxC6jZ11hk3X1hRRk4BVkdD5EedKovV
 Sdzl/LfHotV5A44/d9k1XH+aoKGXgmpQGQuq1VZ6jvOwm6Wn//mJSw8hZ
 HFOIKxdwLdbcSWTMk1vv/b47WccC4s9cnPBPEnBoSIhkGG1uTiFTanu2o A==;
X-CSE-ConnectionGUID: XHp6NKT2Tt6gz2/SvWq+bg==
X-CSE-MsgGUID: nGc/ezMgSWuGMFzpQmyZgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92427678"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="92427678"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 07:37:54 -0700
X-CSE-ConnectionGUID: IL70hXbKSwWJyath0DP5IA==
X-CSE-MsgGUID: BXfHGfNSQTumHQ7KZbZyIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="250760110"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 07:37:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 07:37:53 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 07:37:53 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 07:37:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sK4czwWxeDhlZY80ayefF841sJl5QxKI6AC02pZfd53csZuX2fiSo0I5MekrThmS3mkQCPiLFMFEE3cG/3tmdK9NPHqNzo/dRdvUnfSRqdo2GU0A0urGnHBYPVqKz7ynncBxShhh9GQ8ki5/1QXTyKNVkcoznYND6duIQQo1kR/uOjCamVxRZk25+j6xOmIhC5sRD6LSZv1v4mtT5ebDm1cUJ3pwDeWYrYM/kNM42BCcAyp1QBrDM7PejkKvxIg5+vbucbzEX2UKnZxZuYyWMsJmiddbXiS1t6FKyqTQydHEIWD5V5Uz0CCYSrsUi6+yccRmWhtsMjIxLxbiFkG3/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qt1GdCqGwXhobfjiR2b/fJiptiG9ZLXlQng/11h0V94=;
 b=Pcd4OIW2hVlmgqrf21hIwb7aCZvqTl5bMc78HUOx/cY3egb1ry17R4QRbXHBPJmWxW2DNIkRfZjfVfmLfK++wTI7azR1NilxIzCfG71oI6QhbylISTxgPhRORvlEpgaiDVsJxypmHSzoGZIXbHu2jOX4cINv+pORMhOKnrCbUzsPyHGEyB83YS5iRq+Gf40SmD/LVgYz8FYEUSotrJKs+a8CLdChbDtBy2WybHLkQFGJt+nwNcBuwpOK+9F/4Jwo7jjgEuqYduyeAOjwdH3EOQBwfmWCUhTUasEmAbVjm8KY9ixAf5EsubM5xt7oV6F7nL4h3vwPAZO+dxG4Jy/IeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA1PR11MB6443.namprd11.prod.outlook.com (2603:10b6:208:3a8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.18; Fri, 12 Jun
 2026 14:37:46 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.017; Fri, 12 Jun 2026
 14:37:45 +0000
Date: Fri, 12 Jun 2026 17:37:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <uma.shankar@intel.com>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4] drm/i915/display: Mask RO bits in gen9_write_dc_state()
Message-ID: <aiwZtAws9ubMWvxD@ideak-desk.lan>
References: <20260605155359.4116572-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260605155359.4116572-1-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF0001A32B.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::697) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA1PR11MB6443:EE_
X-MS-Office365-Filtering-Correlation-Id: eaf9c1b3-ceaf-4bd4-16f3-08dec8902b0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: bZ5zDe5J5M4sA2OT9xsn02GvWNjCGulk+3z86XBRZzF5iw7aevwZXH2ttmCkmGYDgZ2ugQi5de9Ee7JhJdaiFhtABtkFysAAPzuhS4j7xe+DQ2tUVQ4s5tktbCxvg5HqwlcCJZLauA4sbKx2TymidhvtHfydYCIFz/zIX1iaic/6IQvfWCk5UVyoc/X4sOZfJUZVvvVzQ6A2qt7CL+KIY1TG44Hrb0vRGPjLuZ6ZRH4KBhLLlOzWBb98w0Nl6CGmuBO0lh6F4HCI+yCqVv9f1wMdjq9/S+Hi5NcF8fg9t/R370hFlAjhxbQDsbhY6sbX1wiMG/OVFOVOlPLBLZjoGxozu2D0wnMfL1uZh7vO85fk8pq14K89t3zKijs25lMDDHL6NdO8HfmJfmKulJoXR+QEFTbPemnh4TKcmUmVurML6ECMskihGt4DW6XfBZc8l7R6ASVCZgrU3Aoe/77YEDeqtRq9Rsl1o09uZPOn9UCnUBf7SpM0elLsGpmqZGHYPk/w9XlNddhN5ceVMkkFgc+2gJTo2cyTs3w614BjlL99d05a3GF+B0gqZfirJuT2MUl6kLlyXyE1xFqkZb6ZNtjowj5DY3FcxrJukHIm8MjFk3ZAj674tUDVXqjvqskzJDlfPJH/cshVe+RpxSod/1J3AYIYULWZXL9D/yx3YUUNKY+I1fwf2DnfmtfN4gIN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U2v5F3zFwqeSNxL704KccAK4iprQkGjkXPSNznx3w9Vp/VS25JN+hFbmXlx1?=
 =?us-ascii?Q?fa/gx/VX5T5p1jW7NrvAwyfkTuUefA1LLfOSOhwkpib2SzxsA/VJtrFeHeQa?=
 =?us-ascii?Q?P6FhcY88Czid0NIVWE5wLDtoyJvW7B7alYnwp/NxOK8hZ7TaUcjbGcmYLyD3?=
 =?us-ascii?Q?UE/vjL+36PwkPTVQrlBqRRgBz0y95c61Eh2ChWzC+U0cdc7kT479PAo/X0bn?=
 =?us-ascii?Q?ZLUpv8eb0szdrRzaM7nlO0V+oRBU1PBiOS0hKdOk5u/U7xLNV9CbzTAWPUGN?=
 =?us-ascii?Q?Gb0blfvT8o05R4Bnj0e7NQPeDoQpaRLOgwkURAT+7dpYX2bfNJ9NdVvUfz7G?=
 =?us-ascii?Q?vofPOL4xFoOdq6/sW6rH+68F91ORapfWw54YdqH+SmFF2b9wvrGRNg1y+IMv?=
 =?us-ascii?Q?B/UFPhheNOqLHP0kFhjORpD5TItb7BcpMagMUevzfOOWMXVpf1O7yOK7bFag?=
 =?us-ascii?Q?6BhKnNPzluLLydsFIMcwsm6kSEU5uGFb6Kxmyii0vnIgGcYQ5fnA1Mlj/Ebf?=
 =?us-ascii?Q?ukVoo0yIlrpxlRLoboxbm6F4/XGCwhu3tUc1Tl5R3IohKTDt0HHqzP6glmUW?=
 =?us-ascii?Q?xEOEa0gPrhnKT9wY4LQ3jYpL14RGCKWIYgX5HfyxB+XwbbNxcEQPntL6ChmK?=
 =?us-ascii?Q?rjGB6WhXxDRmmf0NAX4R8NnJlDZio8GRAw9PzOknrIlFcMT6CTo8IFY5qJst?=
 =?us-ascii?Q?e17IOwpjwniP6geTH4n8SBYQ/5XEMoeZLXF3O2KQPbV3/ng7bQ9BcpAx4uPo?=
 =?us-ascii?Q?j0da+dnjPtuQU3KbuXhVqOrnYxt5IWLiIBNM4d0jAuYQhw+RfjxInG+K1266?=
 =?us-ascii?Q?eXPkB2PcY4yVgFXO+Yo1MEDJqqlRWOf1lgrEjx/W48YpnC2lox4dGtDKrEgl?=
 =?us-ascii?Q?6eeRm6yrrkcOBdPyT+YKaORqo0Uowd94/oKIXFecpcarVXyZ44K6ddoRk6pe?=
 =?us-ascii?Q?yLca/E7zaayJLbbDKGidLwumrq7XEfNPRboPjD8brA5Gaw/OA/E0O86ra4ML?=
 =?us-ascii?Q?EOi5Nnondrx0NwESkiym4064ItKToaniZnW2avpjq6cf48Si364RZ4nNaLci?=
 =?us-ascii?Q?Zx+aYJneeZeTohy8DwKGuOI98UUIWltLNi00dhosLiIQngA6z8X7dadM2Fty?=
 =?us-ascii?Q?mfLRJGDjJspBxv9OVvZUBEq1z7IacZwlD5ioTZnC5gYEP/MunRRN1u37MP1M?=
 =?us-ascii?Q?qGQOH45/5WVQ/ogU6f3V8FLiIWSVuxasGjE+fN2c0+/rWRAcUaJN4KLswwrH?=
 =?us-ascii?Q?y1u3RDX2deZCXTp9byqXEq8zAe+zPWfxXmK/bGikUtD8qlfmsAveAMiw7nFX?=
 =?us-ascii?Q?gkUjBLV9Pxcre5fgjUZiqQGGFarEUhGp75eZ++wAaLgIJgHcSdPHA1TyEyH2?=
 =?us-ascii?Q?hghlyDhWP8yQUhlFgDd07frZW5INgd/4QK00oKPgWXdejVSxYd1nVi4Sje9G?=
 =?us-ascii?Q?UEvElNOd5JX7XDOT0F9qxqKuDQ4owyeBy4r66pEL1tL4CSXVQmqS9ooXGpXH?=
 =?us-ascii?Q?jnCWBZiWizS69QR9xBNOdAYZg8L42adlsrWFa3nraqcQGyNvTjcmVv5vyhkG?=
 =?us-ascii?Q?7zgzlrweg5yToJ1frlUa1KoKeOIaKjixRZeha8h83fhOYeBnvgPu0Aiq7Z4L?=
 =?us-ascii?Q?hMcmd79oWHF96hhQ9W8rGiVXYjz0MiayuKTC5SZbCjzxGQhRFagU1Ccv9OWe?=
 =?us-ascii?Q?C+/C346w8AzNVr3SYk54TjsLmnAMTHr5vRvPymtHla4kDjktaLLht6xsECEW?=
 =?us-ascii?Q?EvwdOvzcGg=3D=3D?=
X-Exchange-RoutingPolicyChecked: hHHvQYC9C5BbGD4xcaifoEzNGa5ZVx6U4lnTPzohAfg8Sf+97njou6lkVHI7r1Q6QOk05IInCTP2dxPbyTP+gun2YiXqF5FXH9BqpfCRjRhD7v2cFViF+U60SyAusqZ2E61qYXoOywysVP+fZcuFq89mrAkseE8zADdFUq4X2Z29Y9KbBM8XWilEujaLn0UgUUacDfOYDe5e8Gq8CUudGqC5AFxtKrokuPNXhBcl9BEONYHOiiCQRhvDcopAT9I0N21ad6oMCnqKLeGwtWmmpwk05fsu9qYsmK2OdbGwnwntl+9GGLnmUYCnm6vBawFTlqQAiX3JKe+fA4F7E8WWQA==
X-MS-Exchange-CrossTenant-Network-Message-Id: eaf9c1b3-ceaf-4bd4-16f3-08dec8902b0c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 14:37:45.8528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oRUH6gVrj5dDreLhsaJBZVzPMXUWyjX2li7V8k9+T1Z7Ox6iLjWYopzh16uWHE7AnNC2sjZEutPsemqoqN9RyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6443
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid,intel.com:replyto,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1C1F67A3FE

On Fri, Jun 05, 2026 at 09:23:59PM +0530, Dibin Moolakadan Subrahmanian wrote:
> The DC_STATE_EN register has read-only status bits that are set by
> hardware on some platforms. These bits may cause the read-back
> verification loop in gen9_write_dc_state() to spuriously retry.
> 
> Mask the RO bits from the read-back comparison to prevent
> unnecessary retries.
> 
> Changes in v2:
> - Rename patch from
>   "drm/i915/display: Use rmw in gen9_write_dc_state() to preserve non-DC
> bits"
>   to
>   "drm/i915/display: Mask RO bits in gen9_write_dc_state()"
> - Mask only RO bits rather than masking all non DC state bits
>   in DC_STATE_EN.  As the register has also some clear-on-write flags,
>   like 'Display DC*CO State Status DSI'(Imre Deak)
> 
> Changes in v3:
> - Limit ro mask to read-back comparison.
> 
> Changes in v4:
> - Add bit definitions (Jani Nikula)
> 
> BSpec: 49437,69115
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   | 24 +++++++++++++++----
>  .../gpu/drm/i915/display/intel_display_regs.h |  4 ++++
>  2 files changed, 24 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 04bd0dde5bed..bb0272f59d97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -726,12 +726,28 @@ static void assert_can_disable_dc9(struct intel_display *display)
>  	  */
>  }
>  
> +static u32 dc_state_ro_mask(struct intel_display *display)
> +{
> +	if (DISPLAY_VER(display) >= 20)
> +		return DC_STATE_EN_CSR_MASK_CMTG_1 | DC_STATE_EN_CSR_MASK_CMTG_0;
> +	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
> +		return DC_STATE_EN_CSR_MASK_CMTG_0;
> +
> +	return 0;
> +}
> +
>  static void gen9_write_dc_state(struct intel_display *display,
>  				u32 state)
>  {
>  	int rewrites = 0;
>  	int rereads = 0;
>  	u32 v;
> +	/*
> +	 * Mask out RO status bits from read-back comparison.
> +	 * HW may set these bits independently, so exclude them
> +	 * to prevent the verify loop from retrying due to RO bits mismatch.
> +	 */
> +	u32 ro_mask = dc_state_ro_mask(display);
>  
>  	intel_de_write(display, DC_STATE_EN, state);
>  
> @@ -743,7 +759,7 @@ static void gen9_write_dc_state(struct intel_display *display,
>  	do  {
>  		v = intel_de_read(display, DC_STATE_EN);
>  
> -		if (v != state) {
> +		if ((v & ~ro_mask) != (state & ~ro_mask)) {
>  			intel_de_write(display, DC_STATE_EN, state);
>  			rewrites++;
>  			rereads = 0;
> @@ -753,10 +769,10 @@ static void gen9_write_dc_state(struct intel_display *display,
>  
>  	} while (rewrites < 100);
>  
> -	if (v != state)
> +	if ((v & ~ro_mask) != (state & ~ro_mask))
>  		drm_err(display->drm,
> -			"Writing dc state to 0x%x failed, now 0x%x\n",
> -			state, v);
> +			"Writing dc state to 0x%x failed, now 0x%x (ro_mask=0x%x)\n",
> +			state, v, ro_mask);
>  
>  	/* Most of the times we need one retry, avoid spam */
>  	if (rewrites > 1)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..061bff0ee911 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3078,6 +3078,10 @@ enum skl_power_gate {
>  #define  DC_STATE_EN_DC9		(1 << 3)
>  #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
>  #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
> +/* display version 20+ */
> +#define  DC_STATE_EN_CSR_MASK_CMTG_1	REG_BIT(11)
> +/* display version 13+, except dg2 */
> +#define  DC_STATE_EN_CSR_MASK_CMTG_0	REG_BIT(10)

The register spec for pre-LNL platforms (bspec/49437) doesn't mention
CMTG, but I guess we can assume the flag is used the same way there as
on newer platforms. Patch looks ok to me:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
> -- 
> 2.43.0
> 
