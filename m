Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBOjCJhD+2lPYgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 15:35:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF6F4DB0BC
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 15:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF85F10E1B7;
	Wed,  6 May 2026 13:35:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XN3TjbpY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF9C010E53F;
 Wed,  6 May 2026 13:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778074516; x=1809610516;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=fhNm2lsoX3VqAVgyIo4qf67Ih2zB9Ilb69O8HQARWpo=;
 b=XN3TjbpYQnZb8LhnmGVmNo/V/jNBBhOUI7n86xKuLFLwAWLvQ3pZPZEa
 ZqZ626M4OGwD4JOk2WK18S/7pW1m0PfhiRxAJd77Iwbk86MtaNX5/oEeC
 zWCm9K7nocCR5MtnCi3TcaQJS3u8A4wAZA3r9N16gFrzIJ+cunuW6TFr6
 1Tvx3//fd2P/Gu9UIxfZYPsFS8yN8v4PJYR9+A1cM40DHbS7p58aIK4e2
 m6e57spGiB6dO/eVfcvJpt95EEa+PApUTMRr5AySYrV5VbAojdsFvNvG1
 M/1QJm18sncSKmxIjdGRmJY21xxGx4mf9usca1UBSC6vYXopB0jflgWHT A==;
X-CSE-ConnectionGUID: e2AIiKKpTAmVe9TCSkZDLw==
X-CSE-MsgGUID: qXW7XG3vS5+s/Fc76YoFRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="79182628"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="79182628"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 06:35:15 -0700
X-CSE-ConnectionGUID: //Z4nAdDQJOHtEXJO+M1dQ==
X-CSE-MsgGUID: +igCauu9RrCznqH3Q5RgCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="241125187"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 06:35:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 06:35:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 06:35:14 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 06:35:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OUlgUIBbL9Brb7hjijGRkVsvJp5qvYpKfNNFUHA6CaDH+ATppqt9TbYwr+x39wuyiz80Pj5rJLO8HLOyNQoeunlJmaAdyS7iTaPVOHqRy2DvkugGUcDnDIj0cNX8ujXhstMbd9YrftGnnyqHgwqcyGFdR+SIER7KElT+1QCfooMOxwijlK8tVzIIDEofIatBHlfrKL95/JOKDrcyvLqVtJ+Dg3u+hiDwEqbwvJ65o/sBLZK2LZGT+EL2C2XDq7IvQBBFQQ/IQIpebx0pgkc5ActANBI0LJQYbJx6Xghu52sSo2KitXhkEzLXCODE5XV/09kY4pyZDXtCwMaBv5DOXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fgjt9x7Vc1PDyOkWx90UcpTOnMBPACfFBMzHS082UQQ=;
 b=hi0C76OYU34hDx+1tQfTgG0YjMYdmJbwxAIqPlQ6H1ESj5/r1GhQDt6cg86LdAYijUN2beIQwqWMs05LSjGquernYc2y4eKEu9o5BMrDhh64uKDThf64qjTojwty0hpzSEhO3QhjYdL4kbG+NMBmPzH1AelY6kHlfAU/PVzaujxyddRdat4a6JCeinCxLi0lb6h0266GKFZUOmOMjoL2f4H2szEAlK9MUxvfEGs76umye4Ki7ZflBDvcifE6FsRandOh+Ee+HenP+x9lPykfkcxHE9Lt1+31lMJdhAoOSUTAJUW8nxYzd1d1EJCmwBOnDKYmXqc/dKSutBxUstyxTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA2PR11MB5001.namprd11.prod.outlook.com (2603:10b6:806:118::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 13:35:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9870.023; Wed, 6 May 2026
 13:35:10 +0000
Date: Wed, 6 May 2026 16:35:02 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Use rmw in gen9_write_dc_state() to
 preserve non-DC bits
Message-ID: <aftDhh2hsfvW_kD5@ideak-desk.lan>
References: <20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0018.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA2PR11MB5001:EE_
X-MS-Office365-Filtering-Correlation-Id: 8741f8c4-5654-40fc-289b-08deab744b50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: S7ekZrR+3BjC3DNaf28AEVDVLPIgVeuvi7ki4Lg2mlS/vHNbShK900Kpl8hPj4DljPhsAtm9ppVPvIaCHhLpnGzkvUIpmXLcHezluHuLHqM7B0z8bkIpSC0fpBlqd+WUnUnkVa1OmHqT2rMnCl2U+pLyl+xwSHKfxY1TjhomkSZZcAxJzb/HrX5hc+M3O3pRVhGJRrR8rY+t6mMuVe6zfyq5mCAS9KSaitOUdFF0Hgz1sd275nvmq8K06zQ/nKsvoUaRoCBzDtPJEGeFCV0UhO/Q7w1H2cZvs16fePvlboxfpuXIISvta+Prj01YUuu5TsieszoxZ8jv9Ba/cc7GLNos3FaLVCIMT6umqx/ccZ5M0S77+RIgGX+IaTFMdJo8YSTu1p1NDzBa0cjME3FC/wv7EezEvE2WHIWn4Rb5VY0DAqjLbvo6xLDfH4yP/Net51mG8tcQWwcmak0nWiSnMYG9U67V1MrIJqg3miIzaIMEN6rK6Rp9WZq37K2sHleJs7PMmYRz+LYJSr2WHIQYt5oSmBypOF4DEMFIsa13dfbk9H89C8R2dYtEWLHRoZvZiH2nnp+1KYL6k/PIjd42J4n5/HD2C/50giGcfYT55pGuSP4rgVeTWdFCG/792TNLxLF2ClOSPscYXzP0rsW+iez1i00A75MmkoqTTWyTcsMo8A5tJcWZ+r4gV26HFaPA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mZwaedUkh/BWkXvhNqry/fXIQqXUjK4RgeNLUdlkHpQW98G3DJbr2RskKa/4?=
 =?us-ascii?Q?5oeH5P224jpiMBK56022uXtyk71+g5W/7mexr21Dw/u17S/2kSIUbBILRK+Z?=
 =?us-ascii?Q?Dcgde058bi8OV7lQ8fYdSEV+K7a/F/LwKK12EE6uI5efuGB9DJrgwyIywShk?=
 =?us-ascii?Q?kI/pZ91c08FBNxGwbtsiQADBf5KBNeRnsdWGl4+PQBx6syFDIS7k3jhk4896?=
 =?us-ascii?Q?6GHnIZy68y4sD24maZGFkhn1qchislkq9H0LdpXXtHDzSo/L21ESWUoiFfEJ?=
 =?us-ascii?Q?n7uTMDK/Fu8PskUZ4lKYpbepVuC84oh5fSm5MD3lNXkZdQDBm0+iwGOIHJAe?=
 =?us-ascii?Q?rJD0CHm5dUHMovzew0k1jRa4j31O2g43+eZLUtDUGfq/6r/qJWv1M7AJAORN?=
 =?us-ascii?Q?VQqHlah6tBtl2I85MYNOnWW8HLqNK4IIGH0iQIUrGihUY61Gn9aw+D98n8l1?=
 =?us-ascii?Q?1rZOjFab0EDCpUHZARPQtn2GbP36SDBV46cLE0MUMwBiP3MphXUqpFzyRiIO?=
 =?us-ascii?Q?FbHpaAk5VU8pT22+CzEddL3SZtbmDFz0ON4lpz8lBvtNae7L2zGsFz+1ZGSZ?=
 =?us-ascii?Q?u5i/rqueJGlrn2Mdq/ALOiidErasFuJY6Iag1NoVfMKaucXiMriuwKUpFaeo?=
 =?us-ascii?Q?+izTtZrIZmj6ACZPrweoSasIm9vlf4WvXG4p2tP69Ie0ZsM8eEkVvc50XWhX?=
 =?us-ascii?Q?3FE3SoAFWJn1isWnbZe0SJogcNJWEaRh3umI31auD7cVTF3MbzQJoaL7ao7b?=
 =?us-ascii?Q?VXF0OUqz5rDUsqtZd9B1uBy3VoPgUB6wqyxwDBhu4avO6A8byvi8YTqVNTu1?=
 =?us-ascii?Q?QvhK8w7RGHrjvjcR8Rk/jx5zxpnR+K60q5KDPGfwcShvFx3GjFSNbfsjKL/B?=
 =?us-ascii?Q?MCU/1zDZOjDEkEYRq0emLvuvaliEUFngzxAt4If5bjY6FY0RTvI9+dw4njk9?=
 =?us-ascii?Q?xyHk5GvqlqNtuPsh2r8+VQGmtoEmtDvQcNw9FjZOoacowEjNYImbkibXzm9G?=
 =?us-ascii?Q?CvtHUvQrvDifBZaiy4Lm6vs8l9sL3suDZoi/lW9xhiRqYwnfsBAN8lQYcAif?=
 =?us-ascii?Q?4ingzm/MvjmUF94p1OAAEPUOnsqU335IxFEf8od5EKNtIQcsNjsWJr2j6A9c?=
 =?us-ascii?Q?pmjtlqMM2IRUj9MykdBI0BwaXkNh7+XeAnYlurV/OY+noC3+L0yIGsN9v4RP?=
 =?us-ascii?Q?qtn2UXqWBXAzsp66YbKGlh1K7NO/ICl0vuq/iQdmbNIIhK/qiJh64x4aFXOn?=
 =?us-ascii?Q?ZZ4zcvw7k0Bzzk+ZUCIgrR/SxtbjdaB+ATmEGRkU6aEsnW2g027l+DGHwqDh?=
 =?us-ascii?Q?1aLkyoquTMPzwP0erniXDH0eW/y3I5bhylOI0fyIJVzDp12Djmqt+T0l0pVg?=
 =?us-ascii?Q?lboImJssRALo6UcF6nD8akutChh5sbp4KUBzPsWKBf2pbKDBzQilP8oJvRDD?=
 =?us-ascii?Q?zO4TyIra3rvIXuKk3Cx0Zyk8dfuSRVlSRO0rgNBMNKHznlsTi/Zs6ai7ZDEP?=
 =?us-ascii?Q?pmOo/Sm3RfT0MofO9N9Z1ye/gC4N1upy20FqdlbMdc4QeqTCueewq26eRqrb?=
 =?us-ascii?Q?Ehn4O4V4hkRD6i2D8DJThH0iy8ChId2E9ehoQD9HA5Q0vrdaFewc8lwUloDv?=
 =?us-ascii?Q?ekUe7t24ERwGqZmynSoiLtkaPgpiLYw9fKR6WpobZwMsU7qsF9GEFU2sHi5T?=
 =?us-ascii?Q?KWcZQpNYt+yOSShGZai/5b6OrN7Spkj3eSypbk1ounhRN8LuosM8wygjngGK?=
 =?us-ascii?Q?PHOQdSvIdQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: YDtEmLaKd/xAVZV6CSxjxseaGBrR7LITkGCYkcJye64o6lxxtUPMLKXYdWlk8FZFs2dSpqyW1vsMMBbW95+CCT8H3z2BP2tS+15cYEAvwmw7taeWWqzn/zZ5ZlgTsRDg4N3U3Yb8gWJaa8QZWOWm1xYsOLI1djCYiV3AoOZ+gD8I9hDZk9XAq45RyGO1sjEN6pCnonV6B8fmlsPAdwDaxXfa/NrPbAO0YVvpImjXC43ksMzoR7twV37VkXB6ZmX2q16JLCGf8nLrQ7/2UOgk8o5YeIepB3W88L6g6JFoh/nQpvGKRwjTwbrwiW/jmMAT36BpVVKcJi3DYDi6Qm648Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8741f8c4-5654-40fc-289b-08deab744b50
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 13:35:10.3903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TA42usuv+/bD4CewwnUXs3y5p8WsPnmWAaZlRb9pq4Kn6DVsmyqIVPRa2mMgh1w4KYX4Vh6LJty/xxFWgF+uTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5001
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
X-Rspamd-Queue-Id: 6BF6F4DB0BC
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.995];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

On Wed, May 06, 2026 at 06:33:21PM +0530, Dibin Moolakadan Subrahmanian wrote:
> gen9_write_dc_state() verifies DC_STATE_EN by reading it back, but it
> was comparing the full register value instead of only the DC state bits.
> That could trigger false failure messages and unnecessary retries when
> unrelated bits differed.
> 
> Use intel_de_rmw() to update only the DC state bits and compare only
> the masked DC state bits in the read-back check and retry logic.
> 
> BSpec: 49437,69115
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   | 21 ++++++++-----------
>  1 file changed, 9 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 6fbfd46461b0..75471898e323 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -727,13 +727,13 @@ static void assert_can_disable_dc9(struct intel_display *display)
>  }
>  
>  static void gen9_write_dc_state(struct intel_display *display,
> -				u32 state)
> +				u32 state, u32 mask)
>  {
>  	int rewrites = 0;
>  	int rereads = 0;
>  	u32 v;
>  
> -	intel_de_write(display, DC_STATE_EN, state);
> +	intel_de_rmw(display, DC_STATE_EN, mask, state);

There is no need to change this to an RMW, since gen9_set_dc_state()
computed the state passed to this function by the equivalent

(intel_de_read(display, DC_STATE_EN) & ~mask) | state

>  
>  	/* It has been observed that disabling the dc6 state sometimes
>  	 * doesn't stick and dmc keeps returning old value. Make sure
> @@ -742,9 +742,8 @@ static void gen9_write_dc_state(struct intel_display *display,
>  	 */
>  	do  {
>  		v = intel_de_read(display, DC_STATE_EN);
> -
> -		if (v != state) {
> -			intel_de_write(display, DC_STATE_EN, state);
> +		if ((v & mask) != (state & mask)) {
> +			intel_de_rmw(display, DC_STATE_EN, mask, state);


Could you provide the flags in the register causing an unexpected
mismatch? I can only see bits that should preserve their state as
written by the driver. The register has also some clear-on-write flags, 
like 'Display DC*CO State Status DSI', but not sure how even those can
lead to a mismatch.


>  			rewrites++;
>  			rereads = 0;
>  		} else if (rereads++ > 5) {
> @@ -753,16 +752,16 @@ static void gen9_write_dc_state(struct intel_display *display,
>  
>  	} while (rewrites < 100);
>  
> -	if (v != state)
> +	if ((v & mask) != (state & mask))
>  		drm_err(display->drm,
>  			"Writing dc state to 0x%x failed, now 0x%x\n",
> -			state, v);
> +			state & mask, v & mask);
>  
>  	/* Most of the times we need one retry, avoid spam */
>  	if (rewrites > 1)
>  		drm_dbg_kms(display->drm,
>  			    "Rewrote dc state to 0x%x %d times\n",
> -			    state, rewrites);
> +			    state & mask, rewrites);
>  }
>  
>  static u32 gen9_dc_mask(struct intel_display *display)
> @@ -855,15 +854,13 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>  	if (!dc6_was_enabled && enable_dc6)
>  		intel_dmc_update_dc6_allowed_count(display, true);
>  
> -	val &= ~mask;
> -	val |= state;
>  
> -	gen9_write_dc_state(display, val);
> +	gen9_write_dc_state(display, state, mask);
>  
>  	if (!enable_dc6 && dc6_was_enabled)
>  		intel_dmc_update_dc6_allowed_count(display, false);
>  
> -	power_domains->dc_state = val & mask;
> +	power_domains->dc_state = state & mask;
>  }
>  
>  static void tgl_enable_dc3co(struct intel_display *display)
> -- 
> 2.43.0
> 
