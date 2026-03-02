Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLnkBvWcpWkeGgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:21:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E611DAA83
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7C210E513;
	Mon,  2 Mar 2026 14:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QbS+3nsw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E236110E513
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2026 14:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772461296; x=1803997296;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=rsQe5EeQndclxhG9Wck1/VBTvIiG+GOdgHig2ZEA4vU=;
 b=QbS+3nswh0Shpt2noLJcQEPXROI1fB8w9b94i7pxUzio8G3+YQfQFPEQ
 jsyOWYzzeWeuxp9ELiE2OCEVkluQCAhVv5jxIlJn3HkgEsyjTj5Dj6pcz
 j9Xycp7CEjC+RwEPunng0htWX5lq00uZfPA7XHexnMHnvEZOwpP01N/xe
 RurGdUwOLtG8XjrS7w3/S8YoKiI+N5iwHPNiOgZ8nMtgRLIh292jxGoeH
 TN0G2fohzuGNVkIna7Zng4prmb/84+NzZnO1RRfOSSejavwxLJ5GYizqP
 yZ/vUuOPKJR8mAE99GmeEmMKEKq2Lv5d81rlJN8mxccft8qbFpsXJFtJh g==;
X-CSE-ConnectionGUID: ktJ6guMcQeqJGCez1BagMw==
X-CSE-MsgGUID: OBGsH/EsQqK3qa05CEa91A==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="90864611"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="90864611"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:21:19 -0800
X-CSE-ConnectionGUID: IyXF1Y9fTyisVyJ1ng1RQQ==
X-CSE-MsgGUID: kZq6PuXfT8SPvid+3IPrKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="220728850"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:21:19 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:21:18 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 06:21:18 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:21:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q78Q4f7lORYn50K15B3E+Kk1G+23qHaHGt7gJdJo1sOyMfCRh7DyrUdfvjKeafThJHU6OG/gJH74RkTtvTFKJOkQHpR3M+pGFLT7t54uW01X/Ns3uW/+gFTUstqKBm6iHq0tR0q8ZWiKj4NfdOYFGlrMYe2DCXdIlkKxauc+roA2Or+aMYQMpeTM1csZHMC1otLQnNVZ+VyipjLcVELPC5xp/iUiF6heH3NYnLT75krhj8zMLGbrLmS2EeBvla+gkyGGBKLYvWEN/r2F9q4opZHedLSTugz+tASKbL4Va8gbdgvVBDCfRIykCkRS8mdH2RykCx1gimf+53aGolxS4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lJwWxDuBywnuRaQhxfmDzVomHSx6By8cxzC9o1j9sj4=;
 b=dYZ1PW6AbYuFe1+Cw6PDS8lHiaYLcMhnx4nmP5Y2H2ZDRpwaXyzj0H550Atdko9WsGtHpEM33F0jNgUBxs/Szx9t9FdEd+Dl5v8f1M1hKqtYKEjMEqQoNXCGJbm9Huxs3msN0w3jUe8GOJSHTjM5Ifq6Ri2zkG7cxjkTSYEZpys9LPgdr3eDzjBzzlCzx7JcuJnqoT3u6yDndXDzXICNMJbFS2GbkyFlIAqfGm81tG94p457mgReG20ZMbErZZ3hk9Fpx/+E3VVU5eQlUe2yQRrh9PqSY20p60B1lr+NzqPny6XP8HaV8HoeJ3hjNmzCfrUSxJg7uKgsdWkHEvtt6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DS0PR11MB6445.namprd11.prod.outlook.com (2603:10b6:8:c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 14:21:16 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9632.017; Mon, 2 Mar 2026
 14:21:16 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 2 Mar 2026 15:21:48 +0100
Message-ID: <DGSD3G2ZEB3B.3SJQA6WCO9DS2@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences()
 after fence ops detach
X-Mailer: aerc 0.21.0
References: <76cc7180a08f0b61b85669cf2e5074efc0558478.1772460288.git.sebastian.brzezinka@intel.com>
 <e7c3387a-8fd6-4762-9152-b0583fe06436@amd.com>
In-Reply-To: <e7c3387a-8fd6-4762-9152-b0583fe06436@amd.com>
X-ClientProxiedBy: WA2P291CA0028.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::23) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DS0PR11MB6445:EE_
X-MS-Office365-Filtering-Correlation-Id: a00cedea-9af8-4b53-32b7-08de7866f71b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 40GMoqsi3m7T/omzN4Yplop8F/QQpweIMgR6eSZHKdJ3eSHY1tao6cvfKW6/oYcs1qvFASE0pKvvQ4iYIW49E/FeXwWnumCzzySyeSi/jcKYs68IzBTm3ZDjRBke+7891Kkhc67jg/H4RgGYRClxhhlbYJ3x86CtxZqxqft4WPGGhFocBi9rRQMBKtwmQoT/4Fg+ytnunlUvhARMUMJamk9dnwNR/S3wf29xVqIuS+4miHqtm4kCBYkoc2WUaER2znKb7IafyFbH0VesBDRovQfWXOiq8Dex/+5wxTv9vffqiQP07ER32oMdKzSusvMmq/wGzHizox9TzMzkhKc8OgYafpJYCPlnDTWBwsMpjhqkT1knnY9AqVTKO71ME0TGYrVILKA//+9o/Fsj/dOL6iP3+3laBdO/FryIOXA5qJUokpQjmEbF7cMlbDmfW3oPDsHhleKVGSwY3yttrjUsmIYUXNK4cQdSv6XFB1i5qLMZ/QHiH4W2hfZeTE/SL4nNG6qebuEZpvGFg3q0e1tklq5Mt0OLpFDQeTPeUWcB1mKJOJSS5ObFOAmI4ERiq1yylezJwImOBC2221MNhWqubSATNqfId4sN33mP4xD9SVe+A95QhlNT2vByTyCnmlzQHnuQs4HViuHPMlv1RrevBQYPAAvRQWFII3oxw2flirUoN5aw5YjAlTXrqGOTyNSX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFg4MEJuVHJqY3NTTit4bTZxc25YcEpxQ1VndE1qbm05OHBDTTk0RkdNYlF3?=
 =?utf-8?B?a3poQlBLZytsWTFyTzVlUWRJMnFBWVlEV0JsTW1pbXNEWERWUGhVbG5KWmE4?=
 =?utf-8?B?SmNoNkdNeFBqY1hSS0FWaTNINjM1SVE5Z3RnTGQ4SnovbXNYNFZMb25GM0ty?=
 =?utf-8?B?bnFuZjRFc2xqdGpvbTJaSHpvNkw1SitxM1pqTC9SY0hMRjRxYnJWR3pRWmJl?=
 =?utf-8?B?SlJwZHBTSVJmM0NmVmJuUWtjVDlta2NLMmJzUi9WNkJoR3FSMlA1V3BGWUxV?=
 =?utf-8?B?NVdqc2lIUW1TSjlqVm1tc1dyR2VRTFhiM2tsNWhrdjJ3dkRJUkRyUks4bmFw?=
 =?utf-8?B?cEJEZTJyemVESHArV3pOakE2QW14bDJjUG02UXZ0VGNGQXgrRDltMElsZTZ2?=
 =?utf-8?B?QmxQYTMwZjJPaDZQM2JkOGV1NEk5WE84U212eFp3dTFZMWNGVk5ZVmZwbkg0?=
 =?utf-8?B?WGVqdUtGSnk4VzJETmdoVlNFa1p0SEFxUGVYRUJkU1pPc1VhMjZ0a2QyWDBo?=
 =?utf-8?B?VlF6bFZlWThTU2pkRVl3S1dYdVlCNjJjWkhXMmVkeUdsNVR2b0tDRktoalFa?=
 =?utf-8?B?aklZbFc0b2kxYzBHOXBQT3NQZGZVUUVzZzA4cHBRSmpsbjNvU0huN21IZnQx?=
 =?utf-8?B?U20zTTBjandiSmhaQVRjSEdQcGszd1JEbllqTUlDVHpCOVExYmRZckFBaUUv?=
 =?utf-8?B?NHFOTXc3SythOVoyUEEyRDh3TjZWWXB4eTZzUDZaQkFwTzAwbDNXckhiNG9a?=
 =?utf-8?B?aTBMY0NoYkxaM0VBSUZYL2RnS0kwN3MrTE5DYTFxRE5EM25hc3B2YXN6ZGRH?=
 =?utf-8?B?RkJENVppL1YvUGdWNHhXcGptblQ5NGxzQ01ia0d3WkJDTldJdjcvWkNaVGVP?=
 =?utf-8?B?ZVF3dVdCR3JuYXJEQzEvcWE3Yk42Mm1rN0U1amUyalJsK1JudHlwT1U2dDVC?=
 =?utf-8?B?VUJWZE9CWUNxK1l2TlRkR0ZmdGFPTjBKeVkyTHVaNThBM3ZVSUFmellDUEo2?=
 =?utf-8?B?T2JkMC9jcnc5ajlJZUt0S0ZrL1F5NFlqVGNROTd2dThRVnR3NENBSk1JMG1m?=
 =?utf-8?B?R2M3WjMzbjBpZGN4YlRwOWpSd2R3eXV5a0paZVUvN2NPa3VVbDdsWWYxYkNY?=
 =?utf-8?B?Q2tMV25OQlpDOEk3N3pDcDV6M1ZFL21STHloY2hOcytVU3ZjRE92bEVuOHYw?=
 =?utf-8?B?c21La3FHd092b29VUUtFVkh5bG91aDFUVlVGUHRkaXBCWlYvT1pNc2luUHNU?=
 =?utf-8?B?OFBuRGZrcXIwSVN4ZFFiWGZvZ0RodHhtNWlPRUVhQnloMXFZbmUzYjhDZ2ZF?=
 =?utf-8?B?dktYc1BGcE1weURCK1l6NnJrSG9LVjhiL0JGODE0MXVVYkowWGVPRlRuVEVG?=
 =?utf-8?B?Y0ZEZGdPeTlpc2ltNjVEaWpuaG1GVXdMdWNOSk9qU0piTjZzaXNGckswRWE5?=
 =?utf-8?B?SDVSeFBacVRKSHV2ZWNXTjJXRU5QQjV1M2x3eTJpYnpWcVR0cDJNUXNhc0d1?=
 =?utf-8?B?dWxUcVJEQ0ZjVUNUelF6cUxJMk5IZkprUEpHTUJxSmNvcWdmZE9iLytSWGE2?=
 =?utf-8?B?UE9vdmxZL2pGak1ia2sxSktCV0NHcDR2SUdBY05zRXg2K1dOSW1yTnQvcStD?=
 =?utf-8?B?ei85SkJteWlpalVMVXZnclZKNXBqTnhqbG9kWXE4enJtWnJYOVVrM2dhbTBm?=
 =?utf-8?B?aWE2RDdhUDhDdnBsYXpFWGM1bFZLa0hSV1BGU21vUWVDTURIOVdjK0JhSDVr?=
 =?utf-8?B?bzBRQVU4SVVWRFVkQjNqTUlQaUhVdnNLZFQ0dkNWMW80b0tLSGVCMlY5Rmtz?=
 =?utf-8?B?SFN0a09mUnFjRTdWQzV3WmZ5NGR0WmtxMzdkNG82RDVnZERPVGZ0NFVwZU81?=
 =?utf-8?B?dVdnalM1MjNDa3hNblE2M1o1bWFXc2Z0ZjFwTWFGOVhubU1YY290QTNTZlpn?=
 =?utf-8?B?RDFwbHpGMGd4ZWxXNkZLVDZIdE1sSGN6dXE2dWFTbTBIWEs5MmNvZWY5SXN4?=
 =?utf-8?B?ODFINXE3YkZmT1lvRERQeHFXaUZWaXYrcWMra2hXM0VGLzh2UXZLc24zWUxk?=
 =?utf-8?B?eExXSDMyd05ZSHpjak1lamFnTzNOM2graWtSaGtSVnBmN3lCNTN5cE5HUkl6?=
 =?utf-8?B?OVlJNFcrVHVLZW5nTzdYQXkya1JQNGEyd1hLMzFVbTBxSVZ6V0JpVTY3SzYx?=
 =?utf-8?B?OXRXWHFaUUFkS2JWbVNIUjB5SnBsS0dqS2d4Sm5kclQ1d2xoUWhjR1VkZWpZ?=
 =?utf-8?B?VjBuYnAwOUJBdzRrZTZ5b3M0eUtva2Z1Ri8rUzFrT3J0K1BnWnR3alJ3UVdI?=
 =?utf-8?B?RjcyQlJzVTRhT0dZT0g5a25kRW5jRjgvQ043dHZQWVRGMDh6dEhob3FpNmhw?=
 =?utf-8?Q?4rLD5Nl45ZqvIQWQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a00cedea-9af8-4b53-32b7-08de7866f71b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 14:21:16.1928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lW0V5SSDZtVLlvmWdLY3iieKy9vPcrut2NK5Lluk5BpUFLDLfhnUwnEQT7r+qOB8Br6LOuZWhcSSp61pnwP6TgiBggbPmLLiIYMuMpKMRmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6445
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,aka.ms:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,amd.com:email];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 69E611DAA83
X-Rspamd-Action: no action

Hi Christian,

On Mon Mar 2, 2026 at 3:11 PM CET, Christian K=C3=B6nig wrote:
> On 3/2/26 15:07, Sebastian Brzezinka wrote:
>> [Sie erhalten nicht h=C3=A4ufig E-Mails von sebastian.brzezinka@intel.co=
m. Weitere Informationen, warum dies wichtig ist, finden Sie unter https://=
aka.ms/LearnAboutSenderIdentification ]
>>=20
>> Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
>> fence->ops may be set to NULL via RCU when a fence signals and has no
>> release/wait ops.  ttm_bo_flush_all_fences() was not updated to handle
>> this and directly dereferences fence->ops->signaled, leading to a NULL
>> pointer dereference crash:
>>=20
>> ```
>> <7> [290.719359] i915 0000:4d:00.0: [drm:i915_gem_open [i915]]
>> <1> [291.602076] BUG: kernel NULL pointer dereference, address: 00000000=
00000018
>> ...
>> <4> [291.602244] RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
>> ...
>> <4> [291.602494] Call Trace:
>> <4> [291.602504]  <TASK>
>> <4> [291.602521]  ttm_bo_put+0x3c/0x70 [ttm]
>> <4> [291.602558]  ttm_bo_move_accel_cleanup+0xf6/0x3a0 [ttm]
>> <4> [291.602602]  i915_ttm_move+0x361/0x480 [i915]
>> <4> [291.603405]  ttm_bo_handle_move_mem+0xe8/0x1e0 [ttm]
>> <4> [291.603447]  ttm_bo_validate+0xcf/0x1c0 [ttm]
>> <4> [291.603485]  __i915_ttm_get_pages+0x73/0x290 [i915]
>> <4> [291.604208]  i915_ttm_get_pages+0x106/0x160 [i915]
>> <4> [291.604915]  ? lock_acquire+0xc4/0x2f0
>> <4> [291.604940]  ? eb_validate_vmas+0x6b/0xd30 [i915]
>> <4> [291.605633]  ____i915_gem_object_get_pages+0x3f/0x120 [i915]
>> <4> [291.606335]  __i915_gem_object_get_pages+0xa5/0x110 [i915]
>> <4> [291.607021]  i915_vma_get_pages+0xf9/0x300 [i915]
>> <4> [291.607774]  i915_vma_pin_ww+0xf5/0x1390 [i915]
>> <4> [291.608532]  eb_validate_vmas+0x209/0xd30 [i915]
>> <4> [291.609215]  ? eb_pin_engine+0x2f0/0x3b0 [i915]
>> <4> [291.609887]  i915_gem_do_execbuffer+0xda3/0x36e0 [i915]
>> <4> [291.610442]  ? lock_release+0xd0/0x2b0
>> <4> [291.610463]  ? kernel_text_address+0x139/0x150
>> <4> [291.610496]  ? __lock_acquire+0x43e/0x2790
>> <4> [291.610512]  ? find_held_lock+0x31/0x90
>> <4> [291.610527]  ? __create_object+0x68/0xc0
>> <4> [291.610551]  ? find_held_lock+0x31/0x90
>> <4> [291.610564]  ? __might_fault+0x53/0xb0
>> <4> [291.610589]  i915_gem_execbuffer2_ioctl+0x169/0x320 [i915]
>> <4> [291.611127]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
>> <4> [291.611664]  drm_ioctl_kernel+0xb3/0x120
>> <4> [291.611686]  drm_ioctl+0x2d4/0x5a0
>> <4> [291.611699]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
>> ...
>> ```
>>=20
>> Fix this by reading fence->ops under an RCU read, and skipping
>> dma_fence_enable_sw_signaling() when ops is NULL. A NULL ops pointer
>> means the fence is already signaled, so no software signaling is needed.
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
>> Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
>> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>> ---
>>  drivers/gpu/drm/ttm/ttm_bo.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
>> index acb9197db879..293f3d423655 100644
>> --- a/drivers/gpu/drm/ttm/ttm_bo.c
>> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
>> @@ -223,7 +223,13 @@ static void ttm_bo_flush_all_fences(struct ttm_buff=
er_object *bo)
>>=20
>>         dma_resv_iter_begin(&cursor, resv, DMA_RESV_USAGE_BOOKKEEP);
>>         dma_resv_for_each_fence_unlocked(&cursor, fence) {
>> -               if (!fence->ops->signaled)
>> +               const struct dma_fence_ops *ops;
>> +
>> +               rcu_read_lock();
>> +               ops =3D rcu_dereference(fence->ops);
>> +               rcu_read_unlock();
>> +
>> +               if (ops && !ops->signaled)
>>                         dma_fence_enable_sw_signaling(fence);
>
> Thanks, I've completely missed that.
>
> Taking a look at the history that check actually seems to be superfluous =
now.
>
> So I suggest to just completely remove the fence->ops->signaled here.
Thanks for pointing that out.

Give me a moment to double=E2=80=91check that and I=E2=80=99ll follow up wi=
th an
updated patch removing the ops->signaled check.

--=20
Best regards,
Sebastian

