Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEm5LxAdzGnHPgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 21:14:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3693706D6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 21:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F67888647;
	Tue, 31 Mar 2026 19:14:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cdVC+Bsz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F6AA10E26D;
 Tue, 31 Mar 2026 19:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774984459; x=1806520459;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=39ClNMDHV6CFrZZcE8okq2+81ktjtCfiSP9ruWCbQdg=;
 b=cdVC+BszSekmqmNBt+YXNT9blJsxvD57gBHQ3FEYtVC38W6KJofFVKk5
 J3Md5GVbeijTwVfSZ7pXgmKcXRSp6wGQezLppzm+w+a4oBl7KSaDPzbjx
 Y4FFO+cjo703aEYmeV7MbpE57EHeOI+jVLC7yqjQ+O22fKZKlYW4cdvr6
 cM2C0+BIbANHPCT+yjJSAvVbQegelnNJSbCh9hIWTTsARVhFT8ROyyl8V
 A/5/K7N2YeTkQmxP4PI4TTj3NytmszUAiPeeZ/a4GCvzP41sAtL5Qmebb
 oWDcjmrLS7s9nGZojpq6lZe0SwX8ZxqFDf/C7bqPBO1prhsOjhmnGeLJg g==;
X-CSE-ConnectionGUID: 49N1G8W0RX+AVzi2Xyz0mA==
X-CSE-MsgGUID: 4DTQRUBjSNWEIq3SfwQyMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="101463826"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="101463826"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 12:14:19 -0700
X-CSE-ConnectionGUID: hpv0kORAQYq0jyp8fmW7+w==
X-CSE-MsgGUID: 4sLjzJO0TZC+X+o+PMEwjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="231380318"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 12:14:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 12:14:18 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 12:14:18 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 12:14:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D9tZ7QjoFlxWuOVelFz0ID1DnC3SjwV5y26rx12pwlDDyqjF8Q9Apm5yLNjptceAoIvWKs/hZuoRvX+pz+Kk3Dg7cYS++avA2pnlxiHlDKHL/X2tis34GoG30JNT18c8QsyaILsmUgkiCJNrqInFucZNASZQseyeyyjyji0UBEymqlnhhLAU/JtKEg3SXXSWkLt1kTvIcGCQrpL6gwVtGLwovjVY9PBGz1JUmQKNxn9YNfs6/WLbqk5B/2n9CbOTitwrFSTOtVMbL/TjCwJw0QhiYsEMx05I8Z2f2c9lJ30jaMh8qmPKqn9x0AMcioKDAJlhn7EMuQGwm694i8IuiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iqVcdYugEbKe0q0r6HWHhfnLLyQ87UkGMwz89r+xE4g=;
 b=hWy4u9KSdvYnNGtqI7KtFPPK4L9YvNmR3UzHhUkyU7un0by7u9ay7+T2Dbc/L0KVhWoZJjP4OXaTZWeYv8AiwYwRWUekz6Q2bCIA+6l1iAxN6+luMSgh2iXP61wdZkOT2m/+bK2vmFKSWD8qAaug3Ltq8esemrEEqvOz8PBVtyYZUHfGPJQWgw5pARpZG9aDnKPsGWzCfiGEZ5MMG+m7/HbrecuAtY5f3wwB9b/N8ZJH0JwOcP553g8HirfsDDG66sWPX92xlYDCuBGjFetcEnKvNFkK2IoPZlJB/hWncR/n/CVAYfulcFoFzKwCq2uQjh3EP3QGELJePiJP+UGyuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ5PPFEF71E136E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::85f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.15; Tue, 31 Mar
 2026 19:14:16 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.006; Tue, 31 Mar 2026
 19:14:16 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Subject: Re: [PATCH 0/3] drm/{i915,xe}: finish switching to common step.h
 header
In-Reply-To: <cover.1774875688.git.jani.nikula@intel.com>
References: <cover.1774875688.git.jani.nikula@intel.com>
Date: Tue, 31 Mar 2026 16:14:12 -0300
Message-ID: <87ikab6ccb.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0199.namprd05.prod.outlook.com
 (2603:10b6:a03:330::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ5PPFEF71E136E:EE_
X-MS-Office365-Filtering-Correlation-Id: 22e31dc1-6db6-40a6-5bb3-08de8f59b3a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: HGg2NoF8bIZd6jJQdT34xwpa7afX91zxMSytNPSlEFEtBMzEm6c/rC9QCEKi4N6/6VaRWOgtcijZj8bFCV5cAZsYZOxbq1RBjcioPgLO6w0Yh2mH6RDGtSdRLbAgbp52+X+RI893KO7Q0HIkbCM6x7ipv4mhwg3EunYjsO3GJFCjU0bFcD4hdnRVhJlHzrIBHhrBz12HUL//Bs+6fAJrViZ04+64g2d1Yi2coiycSZNEEbQny42pPIaoagkAcDybeL19YhIhGnMKUfcdC5x6Liv2fdMyc5fwXM6XWWUkWNxs4/9bBVMCQIFs0ooj09Cx3Rxy+4L5ZdBJvxFBJlZDtDCWJ7y3XCdn9HWMEa3FqXg83UMSJAlvsDm06XlHDvY+aZTPtISrfLiA+80gKr8Je1WJdt+bU2BIXkKbGuq9kkRgksClKEJZJ9evwHpQbQLs7asjDifWnQpZqjcSvFF750T6b8l4BOcuiRKJoYlnAVPYajiAy5wXrPex6j/IpLvzlFHmBSHCAsIrG7IODRm5IO7x76shseFtidmwWVyCcS2yDdT4WeU+FlvPxwVwsZIVKWpWDHNJQY2RKLJ4XgZwrAKceRN1QRwz+UBSiiBUY3qmnvaeEH8Srua9RVLk00z0q69/+Hj41rYFeJdMSIIxG0RtyfVIgyxR/Yamp5oW+Er0M6LQRZp+Z7XTcAbXWkW3y2UaEYPK0K+6rJwG4NnjVxB2h2kBbA1wSWhUIPROEcU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?etMjmZ7PygZcHHuYk8WgoVcN8UgaI67jJmRaaNDU0yxEyCgwobs4NgDmSXjP?=
 =?us-ascii?Q?q9UrpaV870a3Ti8pIj01ULu1KUeMkKeXXMTqUQqZwDTKD0Rf2BdKU55HeSdx?=
 =?us-ascii?Q?Q0Y6mYEqN+SNSx9V0qIV18CQbgUiwzAaD+riu1gg3yuAWyak23mCP6pK6Nfn?=
 =?us-ascii?Q?lCXrXs1S45r2HTqLIMkXpC2Z8HR+VkgHESsd1sxUUo1Io4KOAjuVNmunWpUB?=
 =?us-ascii?Q?G+Ei9RJKlV7b5QBBmq+dPy3LkJBbNiKlLWFct1Q8oDh64FgFjDcfo9FVZPO0?=
 =?us-ascii?Q?DESuhTCWEMQcEbW2FNtDomvhiq7hQzLyRKzPRvx+tmkPSFuHrcOqHoWQ2Mpj?=
 =?us-ascii?Q?SvMwCmk8slAn6Y5RfnZtg02NnbC7xZJcgY9mNzyghfhAe/dNiU+bp1I6zYGd?=
 =?us-ascii?Q?LeoPDP8K5ttdCGwhUBKB5LokPmrGUphkMM8YIhpSbinW1XnSeTLsVoha+I5E?=
 =?us-ascii?Q?z94E2u+Ycc7No+T/lZaKgCoNK2EPcYbx/qsOeANCFq6gHum6K72BQg+2Gu2R?=
 =?us-ascii?Q?QM1DWTAHyWzQWhr+rzQc4efpCqNYI6RUCg0GRQXe6iICiJT9Z+o+hMP0dvYy?=
 =?us-ascii?Q?ICVSOg3k0+HF+mGFVm3QImyKfhaa70LyJD02Pwi1CxiYan5gmqzxl3H3+ynn?=
 =?us-ascii?Q?CCQ6wXZLxx+aRAdO8MYM0gLojABoUFgrNvme/Dv1SmS3eIs/B6Qi82qERcYS?=
 =?us-ascii?Q?FcOBRiIQGhly6KFCPuFZ8I+EM+HFEnUFTRStSqim9P8iNr4hlw7bi2hlr+j5?=
 =?us-ascii?Q?/nBI9mp0iKaxpSR7ouTMPlMWQ4BMmsfQeNkoq6AhDbmpg8gJxPgvQkA2UKX3?=
 =?us-ascii?Q?4y+8Pom6PMKK3GVAcB0DEBrZ+cAp4a9FQs3zIPdh/YpH4mfOFDcb1iZTSl2r?=
 =?us-ascii?Q?tCI00ZKUA+ATJv3rx05WyJ1O8825GE8xjw1HxSNIjLLltMOG4zwNMJj7GBD8?=
 =?us-ascii?Q?xWn0yRzSk+J/LWISvfazN7IqWyflPSAzyaU8QR9/S7Nj2Cd/hmxOeG3zwek7?=
 =?us-ascii?Q?M3uwYc1IaR9sVTqg0Ekblb0pajLQBWxHp/Bzsm1PBvE+EPJdUUEyCWBqJyVX?=
 =?us-ascii?Q?g5mb0Ll/ok9ub9edSlhB6Y1e2XN5qeTWSNpOuwpr74S1toyve07uWsU37hCh?=
 =?us-ascii?Q?y/Ke29mPzNBDJ/4Kt8aioJ8Niqx3UEYePtfh7KBU5Agm0H/jiwWwgqktOJMv?=
 =?us-ascii?Q?PMOn6yyT4JSU7GWgsPaAOjs7JcTDEg35uTiDDK8mkrJMisV9VHJW+8uQjIpi?=
 =?us-ascii?Q?VRMHSMNdkJFlOmuS7BQCXbLXtqal8q9t3zBiD8UawVX68VK2ojG32BxZRdg9?=
 =?us-ascii?Q?mML9JsRm7fQ9CXpJpgL47HOsqXwP7rlwYEFOqJfrWxqA7foNG5aqJmZmhQL+?=
 =?us-ascii?Q?ZFckTEJdOtWMa9yGxDnUX4QHntZnx2iID7gFH7S8IC2FboCqclbZ09/IXfM1?=
 =?us-ascii?Q?0KGRODAhCG6DVxmzJQEGVbzrg/DgpqDfmD4qA9+MJiD8EtKA+M2g3v15KZHn?=
 =?us-ascii?Q?ZkeWo+RyeJYecqToow510xAbgisyi74m0ulS40A7E3WMFCBC+5uofUYVpvKb?=
 =?us-ascii?Q?MoIC4gPUwV9FINGe6qCadFTH84AYkYSW5NuWHExSi9zl7cFpI4yO1J19akfs?=
 =?us-ascii?Q?ByV3gw8WOLkMu7M+i3/Tj4qsRRdN59Mij3F3j1+u02Wo3UicQpUfw/Yi3TRZ?=
 =?us-ascii?Q?jFJ6ZSeaB6LsLIwlSUP7jWj3aNz+NYA/mI0JedcndtxaCuglYf8ovrwRJIEO?=
 =?us-ascii?Q?+EoC50cwBw=3D=3D?=
X-Exchange-RoutingPolicyChecked: Cg8Q3wV5rz3/NhprizIHOyypFwJLUys69yj/RYqYz8+2jy4yTu01zeHNWDB2/kxIWktFxqLf0M9084okPAoWZZJkKTUgyyHs3vhmkXovmn5e0ijcQbSlXJO6kRiKCx2igdEdZ4FD/n1ei5eflxMVgWTic04wFfYNF9K2i4vKXe8A0QnzuCbr5Uqx2fEg2k0upbg7E+5IbjKbLtz/rS6NBiIkeBaDl0SmUm2swzd0ebX3cfmXhvWQDIo51HTHgk0IZ4Vv1kf8Cb/Oxi/nannxWwv7ZWrQ4qfy7v5C8N9keas9vP7abPmjHfCGQ9CAl8q9IXj27kxCNix19PuXCEwOGQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e31dc1-6db6-40a6-5bb3-08de8f59b3a2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 19:14:16.4798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hCzeXRp+nKnqzt04SVAjYqsUViZrqx9U4AO02bxZ3uLQUYRaTVNJOixXjeGc4dR3eVXdQDvXlBCnAz3Di9Xfhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFEF71E136E
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3E3693706D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jani Nikula <jani.nikula@intel.com> writes:

> The remaining ones from the step.h conversion which were pending some
> merges and backmerges.
>
> Jani Nikula (3):
>   drm/xe/step: switch to the shared step definitions with i915
>   drm/xe/step: switch from enum xe_step to intel_step naming
>   drm/i915/display: switch to including common step file directly

Series is

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  .../drm/i915/display/intel_display_device.c   |  2 +-
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  .../gpu/drm/i915/display/intel_display_wa.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_flipq.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
>  .../drm/i915/display/skl_universal_plane.c    |  2 +-
>  .../drm/xe/compat-i915-headers/intel_step.h   | 13 ----
>  drivers/gpu/drm/xe/tests/xe_pci.c             |  4 +-
>  drivers/gpu/drm/xe/xe_step.c                  |  2 +-
>  drivers/gpu/drm/xe/xe_step.h                  |  4 +-
>  drivers/gpu/drm/xe/xe_step_types.h            | 61 +------------------
>  18 files changed, 20 insertions(+), 90 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
>
> -- 
> 2.47.3
