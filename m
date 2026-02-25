Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJ4eFM0kn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:35:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9714B19ABF2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949D910E7E6;
	Wed, 25 Feb 2026 16:35:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d+ybnKlG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB98C10E7E6;
 Wed, 25 Feb 2026 16:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772037321; x=1803573321;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=9AJIZlwE5F9Oa8K69BWV7gtBbdBEpU93XGG8Qiv5ipE=;
 b=d+ybnKlGfZgMAH5g1YYQw/QqAhUrfnvhTZD0Qc12SUu17CYxSghoLk39
 NsDYun6gLQvdzLa3WDQ+tiGtv7c1m3gaZ41uH8jirvjx7MPNtqLTt4XEk
 /cdRys+QEvEZPe/VU4CdZnFVA956Gyms+Nkdpkd7UaBqCmIvDUTQBaSly
 ZY2mpTLFr+OB4Au7hneMqZlI9VITPP6OLJLsGa3vIk8eeagYDXv2IZVL7
 XngRjjQP8zrSkJt7ICNVX6to7jzWz6RIoXgk++9a6ZVYj7JAHCIdu9TXV
 dbzAzvOt/B/iE5sFFPVdhnJ3XlF2hmPqrDjSm2pO+ixt/G7dQNjGbXtMp Q==;
X-CSE-ConnectionGUID: jyPG5rsBRpCffZ4vn+aMuw==
X-CSE-MsgGUID: NkQxtM1QQqimIA9f9YSN7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73258062"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73258062"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:35:20 -0800
X-CSE-ConnectionGUID: ssmMduJgQu2EcS3sDApuSw==
X-CSE-MsgGUID: NKNuNWhNTq6sN3SDpRIxTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216429392"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:35:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:35:19 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:35:19 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:35:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sNyqNnvJbvE2STCaypiUoF+e4R/jemkOqJVyRP8sxmpTQTTHpCi1a5ljDHaJy82xJLlclqK6nT+X5iivytCeg8qQj3QXMH4EeOUSjWudh5SMSUhhuo1/QYdH/bEXSZd14vV0+lEOE7w+3oE+qsu22phRfW2ShTFyRkxWIXd1Um2KM1XEK1MGNABJAETOCsrrB5WUIhU4cewSw9tgTTOebpnXp+gfv0xMoLwoKPr+vp9/5obBZjecpNqvTYPh+u5k/xJ41nTwVrUa5mnWpw2kf5fUdnXHN8SHcTiFXHomo1ZUKxzRtRmRxOK/2yPdtNLTqHKo56V1U+8dwCIHLMxUiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s7wbeBTdwPov7cCx7JfT1P8iZqrjvVNXJNqBIwPRkxw=;
 b=zJxR/8x2pgaqQLNTHfGejRLMwFDHH5+EnX3ec01C4mhPwJ0VzjIYR+3mK3slWWD0ejjq4zOxhmvBK3RvtZKvvoXLZJXobdYDXizTTodCSch/Ymc+qwMpgc8blha/SQmgPydivuZS1f0Zqy7FHdQF4TyFAR9Hlscn6LZo5VaiQVBylpMSzB9jGqdC/t4HuiZt8sNwZIZ294/bVjgW0f3h0Nq0dkWWBJ7FqFiaRd4SQ2jt0eXtSYXYqKfZa0qGjvfpP3ndeZK76b27DjcLzygw+QEixUh8DWRgigbRKUVWVZS2dSBlqesHjz8zal3NIRi8+5GsyQMWujiIbJKq9QskQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:35:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:35:16 +0000
Date: Wed, 25 Feb 2026 18:34:27 +0200
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 00/20] drm/i915/dp: Fix few SST HPD IRQ handling issues
Message-ID: <aZ8kk-Sa12i6m7Ro@ideak-desk.lan>
References: <20260225162751.1255913-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F70E.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::386) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b78563b-0cca-4c21-4041-08de748bdb25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: G9d+1oMPFBRGPGUqYf5GkEUZr34DW7HqfooFaVFAb8lr+rdsS7qLrVU9joHUc8AqXOMKl9B80VahmsudBgcvfaUUNawRP5fuFDTJRT9+O6UyThcUdBCWystGooAOnIZ9Xn/IjliKy9kWwAAjtz7MpSZrd2Xoa6DBGJUEmWuV41BP+j3XN1QmAQkRqMHOyplcPCJHLIMZqH3AHcDUeSsBmvc8bibTJ9eUYGPDOP4uAfI0Kxe44VljjUX6lVtQt0LpK723PVi/86QUIX2gYb6t7ru764BG2cJflIfnLgUVSnZg+Jc5Y1stD1gyR3EJYQsAeAyq2AvdyTVwIPbG2llIQpvei9ChpS/NCNKPOpOZG/re9+r+5BqbTMPLFar+M1ImwDjLkUS10G30UuCv7gLWGTYctd4YGx2Bhs5XwGvTZZNXjQq0r2PxSZWxI4Q4GeYEwKd8KX+v0VH9ilz1etaLxEiW8FIegVy/st6dPhvPSFo2lF8tEp05lH+/P7bbEwe7Dw/ePOVg1ew8hfunmxlmZrTtZ71ZayTCjqOEGlKAgeTX9tmbkWf3RANcJHflVEmFtBAV6K7hXlll/eD8PKiK1XS/CwjFOh8waGf7DQG4Ig0+K+EJh0Ass5cmSdYt+OWIFK6P4vZt11tdlbuxrIMfl1honzrebUiPispVCBjgTZm0XZlprPRa5K4VVgM2umeopYNuFdL7P1JoxwUzhmbGwSjoCuIrZYAjLo4YRChmW1c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9wLKJNnLfQgxH1kGGBczoVtpqF7o4CrCEM3rAlmhV/Afim3AUvQIfbWY6xJM?=
 =?us-ascii?Q?8pD9IYY3CP99i9Wc5jq1SsrpeGeFA3FuXgTPOsaN0yBSH4V8Z4MWITTRHk6m?=
 =?us-ascii?Q?/bhzUPBaO8hJDMkpkN7hFodlvj8MXPfHzwQEMDZM1+dzlf4iunOam3ey2mE5?=
 =?us-ascii?Q?+Bkp6BsOnZqQX/XNIZdoeUVRK55Oby4cAv0zZLnFph5IVbKfPTmd0XRFNOIK?=
 =?us-ascii?Q?4d8cturC1PvRUCDqUKtSmWfZV9r8M/rr8QaEQ5B0FkU5Fh7TDmYC6nkAeDb/?=
 =?us-ascii?Q?f9fhspqyesQaY68/PQtMFR91Tnct0VSqecqzSf6TZWFz6w+7TMxTnXX8frau?=
 =?us-ascii?Q?A4NBdzSIlwqX7tIMPYhjz+/UFwLyg31xx6MtgIs0czb9wUIFUbl2OsTbvr0a?=
 =?us-ascii?Q?jMBJuGTWrTlz4X1tajKm2UzvVwmxlwEIHcycDvfPa05DMDo52cHb5V2bU9PZ?=
 =?us-ascii?Q?KCsDZ4wm+D1+d6Swm6n72O7IJMquqaASx/qmSZ5vPfybJftgJKQDhwiFyu7m?=
 =?us-ascii?Q?GmtDHV/QaCT6rWscPCGARHETFeHqetNhXhkTPEkuR9UxQ7Zo10XWAbBRkeiX?=
 =?us-ascii?Q?T+0pefdROYf3EP2B7g9yq3eDOou3+Ca/nNUZLzn8C6HkK1QwLqyFehm1NzpZ?=
 =?us-ascii?Q?Rqe0z+jArY1RCcQ5iuTDTrXmDcOGWgOo6MyDXk/LcV8Ze/PJVgK2e6AOeK7B?=
 =?us-ascii?Q?nnxXCH7DlVKkfhuRyn6XbkzEkwDl6hplyK/75pkeFK+U60LA5PYgMsqONdzd?=
 =?us-ascii?Q?A4YkG7CMO4gCSoFtPJuo0bCCsOn7MXrrdWvAujW8XcF9mGw2PLfc2bjDY5wc?=
 =?us-ascii?Q?L0nLYflVx3VU92x0Afk4t91Jy6U4GaQiNURkOPSv67zT/fr28m970uo6lDne?=
 =?us-ascii?Q?VmRfIjm/IzDOQUjsB9pkD1xcor8TWlwvnfn3RsEtHlDBCjARvCmQXgy60rK+?=
 =?us-ascii?Q?F1Jhl+Q+4eViHF6ygnqhbGSbkdQ9S8dIB3tn7kYikQAfay+Kdq/JkIdLmtY+?=
 =?us-ascii?Q?P5TvV5rFzXvAgrLmO8vumfHsMVdmrWOaabBHNNnI21UklVHjhpCh6A714/cd?=
 =?us-ascii?Q?a63BZyH3OvR2EhcoB58FqEwfLu5Tog2T39w3C1u6/Eny6qa6cGzYdN0J45/b?=
 =?us-ascii?Q?KykhhDnEzPhfWvG7XmmejGEJgHQ24S1odRojWvXXcpAigYHuKlyNfMNOGm3K?=
 =?us-ascii?Q?N6DcVWGYMvLcYYfyR7pPSeOOIjH6hZHcV0DYd9yls2KzWuz1xSMhkVUb2wX8?=
 =?us-ascii?Q?AIksnwK9voEI0B96ru59QSFkksO2QRyS+8Tl/Gc71gr4N1qfrvP3m+tN5DTg?=
 =?us-ascii?Q?dQY7b7DWpsr0BM7JREnTp1QU0qC123frMmujOyvgjiaX3lVOrvZyxFzFyKg1?=
 =?us-ascii?Q?myv3p5/hRZmHu3/uGTdW/IT+qEescUZbc5Yq91q5a3mb6mL3/QB5woc98k4L?=
 =?us-ascii?Q?6gD/4UFQ6hjybBce4bvGFPSiPLMyg/ia+fcbX6V7WzM3oENiUz094GY21efN?=
 =?us-ascii?Q?f53LFcs16DWtpeczJQdpKiMSwprKNA2OyoEMT8BOarbC6MLBu1TJfFFslo5E?=
 =?us-ascii?Q?UZnysvjy6Hl+J+GYVfrsauw4kWNYBB6bmxmouazKmMxyBVtt15D9vXljWmGe?=
 =?us-ascii?Q?N+GQxQllL88ajIPa83Pm+ZdUXEvQ0G/0n7E946krtN1NJk+ZflFEL7uUwF1b?=
 =?us-ascii?Q?j1su8UU/P5a0LaqUVV2GbAgaMV6NIvXa/8ZPitLR4DfzQUGgfs2Lr0kA5b2p?=
 =?us-ascii?Q?Qq4jd7KzeA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b78563b-0cca-4c21-4041-08de748bdb25
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:35:16.0737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4c7fAvQ+oJOVj7jKB1PGLfgA7c4JWCmSe+5MmIbKZWT6DhprZqStHsS0F2YUKZaPTpxm+fXVR18TGylKSKdgGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9714B19ABF2
X-Rspamd-Action: no action

Please disregard this version, I managed to send v1 without the actual
v2 changes. I'll resend the updated version.

On Wed, Feb 25, 2026 at 06:27:31PM +0200, Imre Deak wrote:
> This is v2 of [1], addressing the review comments related to bool vs.
> error code function return values from Luca and Jani in patches 2, 11,
> 12, 15 and adding R-bs.
> 
> The patchset also prepares for the upcoming UHBR DP tunnel support
> changes.
> 
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> 
> [1] https://lore.kernel.org/all/20250626082053.219514-1-imre.deak@intel.com
> 
> Imre Deak (20):
>   drm/i915/dp_mst: Reprobe connector if the IRQ ESI read failed
>   drm/i915/dp_mst: Verify the link status always the same way
>   drm/i915/dp_mst: Reuse intel_dp_check_link_state() in the HPD IRQ
>     handler
>   drm/i915/dp: Handle a tunneling IRQ after acking it
>   drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
>   drm/i915/dp: Handle the DOWNSTREAM_PORT_STATUS_CHANGED event
>   drm/i915/dp: Don't clobber the encoder state in the HPD IRQ handler
>   drm/i915/dp: Remove the device service IRQ handling from connector
>     detect
>   drm/i915/dp: Fix the device service IRQ DPCD_REV check
>   drm/i915/dp: Fix the link service IRQ DPCD_REV check
>   drm/i915/dp: Reprobe connector if getting/acking device IRQs fails
>   drm/i915/dp: Reprobe connector if getting/acking link service IRQs
>     fails
>   drm/i915/dp: Return early if getting/acking device service IRQs fails
>   drm/i915/dp: Return early if getting/acking link service IRQs fails
>   drm/i915/dp: Read/ack sink count and sink IRQs for SST as it's done
>     for MST
>   drm/i915/dp: Print debug message for a sink connected off request
>   drm/i915/dp: Check SST link status while handling link service IRQs
>   drm/i915/dp_mst: Reuse intel_dp_handle_link_service_irq()
>   drm/i915/dp: Ack only the handled device service IRQs
>   drm/i915/dp: Ack only the handled link service IRQs
> 
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 253 ++++++++++++------
>  2 files changed, 171 insertions(+), 83 deletions(-)
> 
> -- 
> 2.49.1
> 
