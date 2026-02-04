Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNKWMhCLg2lWpAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 19:08:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DF8EB6A6
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 19:08:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5CF610E72C;
	Wed,  4 Feb 2026 18:08:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yq0n2ou/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAA2A10E72A;
 Wed,  4 Feb 2026 18:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770228493; x=1801764493;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ueNkSWd5+PTsZZD91OeovslgWMF32hDFU/qrBeAmi7E=;
 b=Yq0n2ou/mLHyJTaKwZYF1S4xaGsDOLu84cOCZPV69Bt4qDBWMND1bi5U
 4OVIYqkHDS42dhjH7Q0DDx6f3nu1W6++XW2EOFupMA01ahZyZHbk2JnpV
 VtSDZmJoKDQMqvNk6BNaaraAearurbsV89HnpVR8+PYdHwoaYYNC4kQsO
 Qbe6x0NNtLqeyKJZcYAiy4QDjAruYmBquglnRL0r9Yzmnk0DuO39nQvI5
 0Xb/IeyLT76x+et7YCaTxTy/hNZWZvacFC56TSpxP6EEe+8Mpr/FB5GHV
 eFXC+Ey3lhyvQkiU0ntMkZYhqN3C/WVY9ynw/s+mmCVkgjzOopS4sbdx1 w==;
X-CSE-ConnectionGUID: ygQuA052RYqPUBS2WjHXrg==
X-CSE-MsgGUID: fQJx2kOqTJmqKW5JAtfosQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82054234"
X-IronPort-AV: E=Sophos;i="6.21,273,1763452800"; d="scan'208";a="82054234"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 10:08:13 -0800
X-CSE-ConnectionGUID: Fm0RmgOtQR6eKP4mJf4fqw==
X-CSE-MsgGUID: Je7qPTqeTI291gdgiu0KUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,273,1763452800"; d="scan'208";a="209614512"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 10:08:12 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 10:08:12 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 10:08:12 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 10:08:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ugt2p6pee78/LBca828HDze9+5ALIfDGNMzs1dw6GlL+nzRsE6GC4Uj/SCoF855ohlTedjs+50wpQNQz6kI6OWFslUFpHzGTJ+MG/kUMY9ZnAqV3FInIw1Yj+WOnmKbj5rWhhlxsI0AS305i0RqRwBygsumW/zD0Ps//wacER77HqSSi0pHPQbx0XPUcFo4NcsBPOTs6kb4Ua4ccu+Z/+MjzbVSUPBEz69j7F4Ja4bYxeszTpd/vLknvQxoekcMJ82qzxMEHO43Jgz1UOrKI4IUny3IMqwlPBXugR3PLemjgLQW2bWXmgz0E1KnRgMQf4fWKtuH6EisFBRRZTt1RTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tgY6lo73RnCSFlYEY+OLW77yuChPZ3pWJqMkh7UaaWE=;
 b=SY9d79/WdICJS9qt3mjMR+PQdOJoUbcsK4NVe47tWlbNwi4iVeGnH2YkC7/saHzyA1qPsyKigEsL2NYJ1LZRfvEl8XHWGXHgl2e53r5/uMjzeacHYIqHj7j1BrIKMyMDYZbamAzprIGxSoUNP6DzN5ryhkkn74bRjV3Zp1CinYi7JDB3nqTzH+kuIFR2DIrBbxGRKTxF9yWNi7l2fX/LyGc6jK2MGAg1j2N4S7QkG+UMpUWHrh3AIqcfgAYhbnFSqvZMPG2GUe0yUxrBaVG20QxUtgqwZGmXZzlfZryR2VJXZ0ESmYQ0xEOfHs5kI0A+VIE6HHym6wNYZXlgJj+Yig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7407.namprd11.prod.outlook.com (2603:10b6:8:135::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 18:08:10 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Wed, 4 Feb 2026
 18:08:10 +0000
Date: Wed, 4 Feb 2026 10:08:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH 13/16] drm/xe/nvlp: Add NVL-P platform definition
Message-ID: <20260204180807.GV458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-13-653e4ff105dc@intel.com>
 <20260202234806.GP458797@mdroper-desk1.amr.corp.intel.com>
 <87fr7g7jh1.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87fr7g7jh1.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0185.namprd05.prod.outlook.com
 (2603:10b6:a03:330::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7407:EE_
X-MS-Office365-Filtering-Correlation-Id: cf3c99f6-2dab-4ba3-4f68-08de64185ac9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SrO8JCpFLwSxo2idY6lgI7YePlZIjyhiMAInp4uBvIipKF84JFDNZaQQEpLy?=
 =?us-ascii?Q?4PE5oimCK0MJ0ZkZMtULYeWqcVCfycyLgpRZq/NAmnNihfh+Lriabsc4lPNz?=
 =?us-ascii?Q?JGX+g5q9ihN8Z7xD/JrgUJOwoO/tjddf3qv3i8/Iq6htXKTeKXffrOOCfTlY?=
 =?us-ascii?Q?TiNAD6lMXed020Y93qTI9bJQxjPL+3OF6cSxQFXjDmPMF6nlz2RQECqATkmJ?=
 =?us-ascii?Q?DP3TlLvgxxQQDZr2x2lBgbcjA2lc3PJ10vrMazmvnWY9bCnKIW3iIH2xDSBN?=
 =?us-ascii?Q?VGW6outTCshOp0AwvDtZdc9Ow49YwM83ZOEvx9SMmpwtmIifI4MDs+ikG/vU?=
 =?us-ascii?Q?1zUD0jnSw79h7OyfKOZ98FMgd+BlOhH0AHPRVHkIqmQvWC8uuwToZMo8LpFM?=
 =?us-ascii?Q?+upbb6GNpzOOIZV+Bju2llQ2H3qZptc2xS4O3wGYr8lBWHNlfy28mwIys6rf?=
 =?us-ascii?Q?XDJIoSLC3iLFPdVZvxLrKM6AsmqBcoxw9Id4IW2D4SC5KXDxhMB+pNgBgsho?=
 =?us-ascii?Q?4k8meuXVxYzanu6udvXIGwNio0Nidq48T10YlKkuE+kGuMaVKu1wA6h/pZ99?=
 =?us-ascii?Q?mMP3GNeT3Hqhzp7nkct7Gj8Ub0G1bW46TKbiwNC9/d+wF4jgst+H1Vqk2DOc?=
 =?us-ascii?Q?btHpTjbcXL5LlwUEwzZgEUFY4N4aEjZ3Ka8/jmDeOaXWt5fEmyT51nYDEXs/?=
 =?us-ascii?Q?NpS5LEhX7zWkDRZzNQnb+dKst/0wxxATjIlextkYQ2Tp2rk3zYbz0MVDaj3k?=
 =?us-ascii?Q?wlvxdn7MELDuUUhSt2W/FjHk6uMNsDEPdnPkHWIo2snl935KJqVtnS42SG/u?=
 =?us-ascii?Q?GRkVnVnAkHWr+HfJPQoVaAAJXyvgPieqKv1wHeU1ext85By+1O81dhbVOHvC?=
 =?us-ascii?Q?rw/oCsZTJIDHN/o8SjpirgymU9pFvqFLhOy5khhf5ZY6MsuWsy6WrKJpTz7r?=
 =?us-ascii?Q?9Qu6ow+0bRamAlwRj7SMfly4cLVmIHCrLzmAJKB7kOzhabxkBg8L1RnMawOI?=
 =?us-ascii?Q?zrlgSNAaUKI8tKnJMiDCfFAdkyzVDRcHXMczvvoHwV9BmVof/hiRVaI9EPmc?=
 =?us-ascii?Q?oanGmLsrA6zF2Peu9q3w/VgmypgXSwkeRm1R/fdBuJq+uzkeA2chfMSpsim4?=
 =?us-ascii?Q?XRi5JwlRXTFj6Ro2wcAMJnqd7XwdcKILaPc15HcG0imfB1/n3pnfWoth6AU7?=
 =?us-ascii?Q?iyA4HSjFK+/t4bLWmjNCh9cuf8Wm2aIDVw+cp+2pV8zMMH3xDMmjmJv4CA5H?=
 =?us-ascii?Q?ywn+XSI/yIX433byJdQeIpR+QrIAcF0VeuusL0OlmARheX6/flfMT1N8V7gp?=
 =?us-ascii?Q?u0EDI1vc2esx/I3O29QiNjI+KOoxd13AE65WOgutvgX9HdhcYUx4wlCSeIIZ?=
 =?us-ascii?Q?mqI2f9BVHYlGJvMwkr/B9Lsjgzn3kiSGW+IEnlh8BJAMtEjDh9Rgl7v/5rAG?=
 =?us-ascii?Q?xFzpYdYo3Q6c1gwG669Y+etaEc7dhrr2OEiSFcLXdbyMb8wzXIJ30UuGx/FL?=
 =?us-ascii?Q?kfV976ragXR+YVXp08HCXbL9TVIsJ8tubPyvo3wEFvrvDCJ3ePxvwWw6F3gR?=
 =?us-ascii?Q?oJs0enZZuvZciGkOW4A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mWdSNcEF8WPFNXvLhaTF+Z9B6To7JyDVTLgrX2KPXN1kzrOw5WCmJO/8n05V?=
 =?us-ascii?Q?mNqCqw5wfoOeHNPP9F1HA6x7bY+2WBaYt1GE6V1p3/BQRivCqdhlIcfvq8YP?=
 =?us-ascii?Q?1dyVn1jOIDtlmCJd/p/5zdUOm67Xa2j0YGxHzZLK+1CoWuOsOhEzCmxr1QFS?=
 =?us-ascii?Q?TYzWKPIRZ9HezO3xFYZB/yJ/X5MJxi018+sOTKKRnVvI89S3ZLYQa7cTiiy1?=
 =?us-ascii?Q?l7qSlsc0Ri7a09E2A+H+GamuOnwtR96zMyJ4N2xN+UwtyRZXNdcJR+x+Jej+?=
 =?us-ascii?Q?N1btjv15ij26hAfBF7SZoprkMNHne70AIR2YwfqC+Oday5Z9LsnVhPWYhBsd?=
 =?us-ascii?Q?e+NS0wnqPTps7A5LIObt6RVGeha2eELe4Mo0y0s2t3tBkdtB7RM2a2g9esCu?=
 =?us-ascii?Q?B9d2orBwe/ze1Wrpr8XfTUP+CzIwMNuCFncU4PTDP6ggNGP1R/94hJ65NM6o?=
 =?us-ascii?Q?T/4MtRfpwJcTbgTjy2ZyWZjd9JGqYVoBPKoUuSUwOhP71m1zLazgzoOLcwwp?=
 =?us-ascii?Q?KmpHnbgi/BGONid0nAMasUMI8WRhg0NXmSaJyeELSmQTW8RWEJ/Sy2zfr8Ap?=
 =?us-ascii?Q?TZQNsJ3siR02d3SL90NGnuai/9P50PWtIh6xRE0HUcGSBUIhdlkBmgHobxsD?=
 =?us-ascii?Q?eXkH3UEzfTziwVX4w28stqm7LlIDZkhKEx7UJttLcgkR3jkcmnpQy55988eL?=
 =?us-ascii?Q?JdXCt6SbdRbuQVw9bu6ile8qnR85McqJ5v8wmHY7pnRRQwvzsahFhxdZdMZY?=
 =?us-ascii?Q?x7Gn0NVWTVrZJC+UlQ+w8V/buLi6jRj2aTgbxyDIfI3R5BYrqOwfPEejVL2J?=
 =?us-ascii?Q?SoemOiMpDy7n0ehzDVV0RLzHWHyhH5L7NriiqspoaW868PsZ2eMFT7fHx3iP?=
 =?us-ascii?Q?unRZfdlQAaE5A0myAAgJBnz58NU9TQlTh/9ajk8fvlRf2VfgRN2PWsIk7F4a?=
 =?us-ascii?Q?HbHUGPAo7GVM3B3DiQwkPK7fFC1T4WRmJLHTr6zKatsEVeWDQ8qlQoBSCDqm?=
 =?us-ascii?Q?QueVp99hrBWzXIcsMDcr5s0dqx+nSyexwCprgy7Vm61AKb8By7Nsc1f0ipeE?=
 =?us-ascii?Q?pd5NfJ7cGNanhCwW3Nkb7dKT1BAFP/QccLhtZeXrsT0+7RbtEU68Wd4y4Je2?=
 =?us-ascii?Q?MBQJOqt0aOEiUr1Kru+E5QCZ3tZC90wZ531hI2CDO1c7fylsWOzHRHzRH3Ra?=
 =?us-ascii?Q?MSO5+Izild/lGcXjqNvkCbWT6l+RdMcH34G5KHGKOFNSe+te9JOiuBzm9YaR?=
 =?us-ascii?Q?X/R54ktMAxWpB/0AUzDd6FxjZzDv3Vi49LfMBjIs20A23KcySHUonE6QfwAo?=
 =?us-ascii?Q?hSn5/vA5A2IMplpKDDfomTNF3W/EqWrZ7ViBTGyGwJ9fgXYwkb+PBbBxYGBa?=
 =?us-ascii?Q?gYJY4NXWTReA/M4ZYYYQ5/b2Z9v41Zjzz08J3uYr6tpZCCshVqvqB+ojYNp2?=
 =?us-ascii?Q?UqtQ1tZSbLGluXbM29NktJYiZlMhoyMKzZPm7qXo3i8m+MlHIcPj/qMIkZlE?=
 =?us-ascii?Q?D3E/7SxuwKIHEyx4KmTLpkLCa+3BUfojIG6Wo04tpkrGie7PHvlJJnjWWtCn?=
 =?us-ascii?Q?BDvXkkuPwRmk6CxIh7d0+2Dktn9hEbGUQfDyjy4Rj3ArzGl7dpiQQO5XaIFs?=
 =?us-ascii?Q?W5B1hRB11OqbVwcizKfjPRVmgIQ58qBgfmgDa4KDpFzGK82mEEmhzJIcSoLw?=
 =?us-ascii?Q?6n/SOTqYANx2HatJXWXKSI7gU3HhsAfR5tg+x3ffKsftCHCLZp0EOykihnum?=
 =?us-ascii?Q?BHBztz+31kIUvw8iWJMZXQzCUriRgcc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf3c99f6-2dab-4ba3-4f68-08de64185ac9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 18:08:10.0119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3I+UpebDqv/oo2f89SUy9UH0cFnWDd9wMQBXWBdkRbuR6ynebX5XuvVUjP0hWhTn3f0t4NwBWXaIJLm8q2TpInlz27SlnumnqbVa0/HOcdI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7407
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
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A7DF8EB6A6
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 09:59:22AM -0300, Gustavo Sousa wrote:
> Matt Roper <matthew.d.roper@intel.com> writes:
> 
> > On Mon, Feb 02, 2026 at 06:43:19PM -0300, Gustavo Sousa wrote:
> >> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
> >> 
> >> Add platform definition along with device IDs for NVL-P.
> >
> > Not sure if you wanted to add bspec references to this one like you had
> > for the Xe3p_LPG descriptor, but the flags you have here look correct to
> > me for now and the PCI IDs look correct so,
> >
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> Thanks!
> 
> I'll send v2 with the list of fields and Bspec references. I'm
> copying/pasting them here as well, just in case you can spot any errors
> before I post v2:
> 
>       .dma_mask_size (Bspec 74198)

This matches the way we've justified this field on past platforms,
although we've discovered that the "physical address range" value on
that page doesn't necessarily directly translate to the dma_mask_size we
need to use in software; there are cases like ADL-S where it isn't an
exact match due to other characteristics of the base platform (MKTE and
such).  But that extra information isn't really available in the
graphics bspec, so I don't think we have any better reference that can
be given.

>       .has_cached_pt (Bspec 71582)
>       .has_display (Bspec 74196)
>       .has_flat_ccs (Bspec 65255)

Not sure if this is the best page for FlatCCS since it doesn't really
indicate that a platform does/doesn't support it (e.g., the page doesn't
drop out when the bspec is filtered to platforms like CRI that lack
compression).

A better reference might be 74110 since it has a yes/no on compression
support by platform.


Matt

>       .has_page_reclaim_hw_assist (Bspec 73451)
>       .max_gt_per_tile (Bspec 74196)
>       .va_bits (Bspec 74198)
>       .vm_max_level (Bspec 59507)
> 
> --
> Gustavo Sousa

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
