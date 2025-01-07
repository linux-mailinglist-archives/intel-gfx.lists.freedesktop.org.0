Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F74A049FA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 20:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B98710E0B0;
	Tue,  7 Jan 2025 19:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RahFmr1D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840FA10E77D;
 Tue,  7 Jan 2025 19:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736277221; x=1767813221;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8Hcj0pQFR9snWHcoQ2Pb2iFATdHjnTBkZG2emiDFvHc=;
 b=RahFmr1DNVcFGQjZVPIMobtYCljvLLl6AqBNOgfGJ1smBjMY8NKseSxy
 /8UevHi1RUYMan6zIQiMT2J7UXpT/WKPC7bSI4roQLH60XhKuOtdTcMSE
 D+u8CRB/2aDeJrag8UwAXMerhmzcJJuO0AXFyfs8IBilW7NtqT/I9TLBu
 ZHn2aOmTh2N8Ds8p/aVUxlSqA8R//qlxnE3sxNY7RupqZ5qcqD3ZkeCnv
 gdc92zlbJ/pLdN3kRJIz/0NiQI/r6+jGt39MAqubx6458JG5yl+WjlOFo
 PnhEEuRyTpngJHmakWA5KEfJrae9FiURw/ZX7JfeaxYVSt+oyrNl9GE+l Q==;
X-CSE-ConnectionGUID: rxVjmjqhSniH86uDxVAwmA==
X-CSE-MsgGUID: 1gPwlRohTCSOrIPFUrPytw==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="24085878"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="24085878"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 11:13:40 -0800
X-CSE-ConnectionGUID: tHv6VMhcRbG14VfTXmcreg==
X-CSE-MsgGUID: 8FJ5WOwUSUKeVAt4FqD1rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="107728358"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 11:13:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 11:13:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 11:13:39 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 11:13:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wuFgR2J2NtE6TksV7IEW4m09AIaVxrUf8SxLr07yNSMy4rTnnRiS8BRkWuXe353Epwvl+DYVm+LMVgjkCZ3dJHHx9PtZqiVXEx8XIyAgYASYDtoOtFTvMV8IgFCz2aB9LFFquKBEEbaM17tGy1CVMt5nFDo+iU/G1CeBqpmHvAm8kOCbiafs4FwTk9Iu73zuSCDWUQpVE0R+mvJWQO3lR0oN3fN8z7N2X9NFXSF+liwaXCcMRudyG1OcvI3V5jlqx1pGm05LuNsA2pMabiFf0nNqWnCZJHRLCCrGrg1KM1QZFgOkvQr9zoUGS0+9wVUUoGFRoudolGTUExmzztyz+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q8aCHzER2P7kg9EUPqHZn9OyHP6K+AYWdafcNmLBMgQ=;
 b=YCbZ8TtCCDPUQuyeWs2cGw9f8JuNX+64O0lMdaXoLbDZ5BGpfGCFJqzsjiiirzcD/aiSyMRJ6523WyuvQ7lvzFNsp5G+3rtdd9zr23YMnvXfhN2VlhabB9g/Hgaz53snK7Ijob0kdvxcbrJQFa4YtAUDsiqdcFxz1cflprHEDCAArdHDk+JU9sQm+4Rw5NLio5R2jYWg1XtqDTaKssUOpQMqavsf5836LjT5eUonEEapWScECI8I3l7e0b4HJK2MX4rcVg2hldW2FuzkXHeBsy8NxaqeCR4X5Afk7moYlLy/3CwSNHF0sGL9wELgNPK2Gx14nl5zF64zatoKSnKqaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH0PR11MB5014.namprd11.prod.outlook.com (2603:10b6:510:31::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Tue, 7 Jan
 2025 19:13:38 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 19:13:38 +0000
Date: Tue, 7 Jan 2025 14:13:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly
 from check_link"
Message-ID: <Z31839jwC4jnSsSk@intel.com>
References: <20250103084517.239998-1-suraj.kandpal@intel.com>
 <IA1PR11MB626661FD22C6A6869FD94C8AE2152@IA1PR11MB6266.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA1PR11MB626661FD22C6A6869FD94C8AE2152@IA1PR11MB6266.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:303:8e::35) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH0PR11MB5014:EE_
X-MS-Office365-Filtering-Correlation-Id: 9698c54e-adab-4b53-fbb8-08dd2f4f63be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bC+WwD6LosWNCTgYq2ypDFT67y7B0wRM5YkNGncm81KrKI0jBfE3qQv/ZTti?=
 =?us-ascii?Q?j72Rxc7WQGy2yXNEtFbOSq3xyFav2WxiSD9l/BSBEONLnU2i14jKtnH1IJpE?=
 =?us-ascii?Q?9dAjiwrBETeJleor/j9jRU1jvQcBRODyJzNiOjkdaGZ2j+al6B5qWP6tWhvl?=
 =?us-ascii?Q?d2cIeGKxR3mlyTex3VDLlmKlOrg4naUOIvk9ozRVapabf1EJzBrlF0VubOs7?=
 =?us-ascii?Q?8a19pZCU3fq04+5unqMRJESwsfqfEKxvja+WAoS2nBWE12JAukRPNa5nmmAI?=
 =?us-ascii?Q?8jggiewxl4lmOB0m8eqJ2bq33hz+THbmf4FtsHO2mhqSvHA8oVaVGu17CJ8v?=
 =?us-ascii?Q?O0fMxfLtWLo/uR4xmwPRWlv/l6iAvKIRu7Tvn1iV1uHLqN1j1r/ZTbV4NE1l?=
 =?us-ascii?Q?TXKs5GczuqGtblb6KwuAeisSjSyYkojBNZVQMUv3+HhdPBzxJDJ4sLuPcowy?=
 =?us-ascii?Q?d9Vp+pzMSkU2ceGOnDe1f5n43Uv2QAd8miWXQ2SJQgfBBTdHxJ5VCUP44jW7?=
 =?us-ascii?Q?zWyiAJl36BTp0GivY/M0pByp/MxI7JsVjwGvl1nj0cwZSla/ufTGmUPOBa74?=
 =?us-ascii?Q?ohZkAjrWjHLMp0J1j+8phkRUZ9HZpbZw9Fdg8RP59wcl7arMASTj7N4bZB06?=
 =?us-ascii?Q?MKAqR6eTNmgKpWndQurrki6pZ1fzrzyKudrFfYSVHv5CUKJGOLkexRm+CrFl?=
 =?us-ascii?Q?B3rofvoWp2M6VYi6YV0z4W1QDlAnNjunzx21nrVqO/MUrIZITb7rciMkK9v9?=
 =?us-ascii?Q?3nF1DJMl8KzdLlEUGLnrOEa6orTQdqaIs5qGogXiGWxW1LUOzeCawTLTiWQx?=
 =?us-ascii?Q?ao8pzS7MW0mEL5YbesVXPY1fYUJ1p6FGL16FJMV9EyGIj0+Kj+rIDUec+j76?=
 =?us-ascii?Q?3B8zAJKHkRubhoQ9xQcDqT1EsMCGkGiIqfVI+cz3ySjTgVC6nluRRcY1ApRa?=
 =?us-ascii?Q?UwS57iVOZbubJOkZ6SV2bBnWhJHyGW+JNuh9BuzZ1p+f8XWGl2+EKw/6MTZt?=
 =?us-ascii?Q?jYN4k/Ez+3rWNU96K6gM6klPq2D4w+iulQsgIHbtTISFU64pCKiAcEoJgQpB?=
 =?us-ascii?Q?NaoBeEYDeaYl7Lrh6PqjOFavzJ++1SDKEL7ZsKW1knSgvfG0itc4Ksz9oRAO?=
 =?us-ascii?Q?oA21MIJTpS1vFExkYlkVX81Kyni+iQsILTDdXuZFHbctfT3zhFk4Pw3t+ELq?=
 =?us-ascii?Q?Cfl6h8GLZB4+Do0u7hQQoc90wGF98mIFSmIzjxp7ThwwB+M94vro+Hj5q/oG?=
 =?us-ascii?Q?nJW7NNqvkLudMCDsh0vnoJIKelvI5vqP11Ny/yKjZOyhmCJveAbkjTt6DyWi?=
 =?us-ascii?Q?M0LL+T//3m/XfXaxKPlEe5wg75FkQy2bgWjDg2vlioN48lnuqfT3DbKkrhpP?=
 =?us-ascii?Q?nHaBXTC4tH9MDqE0DH75UOEzPf6T?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rrxWoKLaemOtq2RejCy5zup/oe8/OUZkziZ1ydoQwEmjCIKeHCuC0g45KtUs?=
 =?us-ascii?Q?Jk7hRSNRYWISA1IJVh3yZEZ/fxsMhqTH+yRu7pNP5Nf0a0SIj1ZYkEYbWqE/?=
 =?us-ascii?Q?xo1RlFitE3Lz1mixKqbj7i9vFCINThp6y8FfSFsyk31NwO0AHFc63Jzm5TDu?=
 =?us-ascii?Q?E418yRJ/9SIc5pH5YWaSavY0Zh7w0xmvxBX+8Sstp2qI9UEC+u2SbLG/Haq+?=
 =?us-ascii?Q?rthaqXsYHZfX39N62rynYKq+eLOc0Du3I6+C8AyL+CVUSNd8VzIThGom6mlN?=
 =?us-ascii?Q?geY3eAScPIj7M/3ZOiaNWLiwLYW0yaAW1jS2j4BGKOJ0D3qN1H74ydbBTaJi?=
 =?us-ascii?Q?gHK1WLdlcbcLnbKyMKW4SWX5DCg9Ag9KU8j64Wzo++KME1vfq0AnfM2fmXle?=
 =?us-ascii?Q?35JtLQ3/ZwvG53MDrCJzLxP83X/jnAMDmbZf7+sR2VQ7+z85jusbJopQl4k5?=
 =?us-ascii?Q?s5ypX0bPhS4YBJsfK+uF8dm0wSRyvBe3bO9WsqLwwi1eShs2Tni0l4cyc6Qh?=
 =?us-ascii?Q?0cqQ9VQqyzR3i8J5P5G89zyhXZf5LBWRy7JgtdXUMw7xIHQTf0n3kQGttNIW?=
 =?us-ascii?Q?AIBbSOFWKLvNyq1bvZVYsABgf4xz4EzZznwWc1bjcK5ZqqDYdI802Q/Ghbke?=
 =?us-ascii?Q?0DE/to9GOzuRqLC3zUhLc7BJFOdZn5DUG0i5O0qjngMJ9ffEHDK2sttB6Zmg?=
 =?us-ascii?Q?bDBt2G1AxPPLWZRBWfRnOcv2W2E6JjpJa45GHBOS+5iiAlapNN1BTy8ROKHR?=
 =?us-ascii?Q?dkl+yWM5ClW2UD6kOoQoaSUKBv4551cDjaSDk+RWGKJ5QPtnHGj7q1yRmWaq?=
 =?us-ascii?Q?uL9X1jwvSIbBNgXpDtULYhGuDbNXBkxIBWYEHKc7f0vW2VoWrY3aFt8NXUnr?=
 =?us-ascii?Q?I6M9lKmNfi8elS5Kklr3mld78sYNXqviRumXbWkYtBRbYR4RIi+pVztbVPSa?=
 =?us-ascii?Q?9qrnPzv4neQhc8DBIsZ3hVEl4ZDEnFuLO4szKtMJnOxpHDFTPpsKWeZscJ0j?=
 =?us-ascii?Q?TCbB2fSRnZOInHXv+76u8GuKmoLdH3VqocVFlpTbSCBn1mwDclNrQYi95WHS?=
 =?us-ascii?Q?m3LeQoO5d6IgX19RXddqz8uRieNowQBMX2n0L3YuuWNmAT9ZBs7zDwQNscFs?=
 =?us-ascii?Q?wyKM0tgInICZalAkggkh5W5NwFSHIwLbv3WYMISOUfYPwREEER0tn+c7YIjw?=
 =?us-ascii?Q?ObO91kwbRj8WA3mq1sPGwnoiF7g++nMldOL2JVRpHaIRmXJRI7YAH5Ha/TKQ?=
 =?us-ascii?Q?nQkU92ssq0aQ4jUraYVHAK2Qv1DMxm4UKvLw7Fe9dVd+jtWVCcRvhcAXL6vD?=
 =?us-ascii?Q?5+gIrIo6r9OiZihCGFpoh70WEfo1X5V8KONAQmBSCzhajdUcWEv0OGJTVn/F?=
 =?us-ascii?Q?zprjFSfus+Q/kPNOamSCUTF8XrFTLbh1ugkWeXLieBSkfKlSLDDQKrs4kxqz?=
 =?us-ascii?Q?ozCRltNQUy4OitZ2Xv3HsGjKTU2Ne8RSu9f1/l9Ef2Xlpz45YuXfHIFditK1?=
 =?us-ascii?Q?AtuZf8imwBzEofyjxDuCQhLkIoFNkjJgP9UmStm92FG9Prx8tRcJVPosx6Ds?=
 =?us-ascii?Q?Q8StiUKFbADAD/1CjrkKY+j9Hqq03GvFmJ/rCny+OaQYujCGEZ1hs28+glMy?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9698c54e-adab-4b53-fbb8-08dd2f4f63be
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 19:13:38.0940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w7ztGQJabq6ZnDGD2hKchZqfzDbGGaaGIj6LlFJZRnFG5Th+mSB+wmEQ5nVvmSKDEbER8myTgNQX1H3RnHGMOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5014
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

On Fri, Jan 03, 2025 at 12:38:43PM +0000, Bhadane, Dnyaneshwar wrote:
> 
> 
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Friday, January 3, 2025 2:15 PM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kandpal,
> > Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly from
> > check_link"
> > 
> > This reverts commit 483f7d94a0453564ad9295288c0242136c5f36a0.
> > This needs to be reverted since HDCP even after updating the connector state
> > HDCP property we don't reenable HDCP until the next commit in which the CP
> > Property is set causing compliance to fail.
> > 
> > --v2
> > -Fix build issue [Dnyaneshwar]
> > 
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> LGTM,  
> Thank you.
> Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

I'm afraid this patch missed the Fixes and cc stable tags.

Tvrtko, could you please take this to drm-intel-fixes?

Suraj, once this patch hits Linus master branch, could you please
send it to stable ml?

Thanks,
Rodrigo.

> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index f6e68a0e3b6d..7464b44c8bb3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -1166,9 +1166,15 @@ static int intel_hdcp_check_link(struct
> > intel_connector *connector)
> >  		goto out;
> >  	}
> > 
> > -	intel_hdcp_update_value(connector,
> > -
> > 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
> > -				true);
> > +	ret = intel_hdcp1_enable(connector);
> > +	if (ret) {
> > +		drm_err(display->drm, "Failed to enable hdcp (%d)\n", ret);
> > +		intel_hdcp_update_value(connector,
> > +
> > 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
> > +					true);
> > +		goto out;
> > +	}
> > +
> >  out:
> >  	mutex_unlock(&dig_port->hdcp_mutex);
> >  	mutex_unlock(&hdcp->mutex);
> > --
> > 2.34.1
> 
