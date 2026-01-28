Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCaHJGuIemkE7gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:06:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01652A9629
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C30A10E2E7;
	Wed, 28 Jan 2026 22:06:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGz2KWs8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD1A10E2E7;
 Wed, 28 Jan 2026 22:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769637992; x=1801173992;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=KWMnqXa1aFx/oT9d1TODCm9YNabMZsZmdviTMlRI8hk=;
 b=GGz2KWs8Urhvw3NYSFRkllbD4mp3LjSYOlf0jCtgXuwI2vqbacUJ/TuN
 sxw5OEuTq7qbYC9u/KeQL1N9cp+hbHVUVV91tpuk9BeVNXsd0CI7qhgMO
 WuVFaNYjPN92zOgCyu6Iu92vEIvefy2NLTsec2DyLhE2fWx6W/9SmXkmV
 wXtdthFwI+hV/+eu9komFvWHy3QCp09VRSfiWyl2X6B4UWeB1qUuMeCjx
 hJ4I7aeBtCUL1VwgTGVjUS37IkpkRaMYOeniM8Zuy+w4pBR5dLPZW6sEa
 uRB1I8oHLUeSgWvRRHD5sK3PV+9hV8zapfT5h1Q9tRLsPpxTv3JS0bXqs w==;
X-CSE-ConnectionGUID: 4lNb9aTRRHe4O+Ortk7dow==
X-CSE-MsgGUID: lTLW5g+fTk2GMg9Wr1T0aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93522348"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="93522348"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:06:31 -0800
X-CSE-ConnectionGUID: APfp4gw8QOKw+d/LOK9FLA==
X-CSE-MsgGUID: 6mwm9C3QQa2cj+F0PANTKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212935035"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:06:32 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:06:30 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 14:06:30 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:06:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c1SatW9Gz2qBx9kEjpisT0cUb1Tm+m4AVpNYPRNfKBNVAqPZeKd8+udMbLykcrDQgjDLrLVPgniIT3oiznbS+8uM45cCZK3ttj4H97KHtqXlK0F21ZqD3+gf6MNyQ+blP+zOYvKzaR8Alt5cH4bI7BjDF+5I5uIn82MUhMMALAjpsiVgPk5ZMyGv0n1+4lSZcZm4D0gCqOgH5gZpFFcNxZdI0laM1cLDVL2MPrHlUD3kQ1xToLgS4Y5Y2O40M1yJqHQuUGEaSIMHi2gr+2WZOtoRgwZB1oXLbpwkUkTMq1nE31qEzw7zRbUm15HyqgHraaY58fnxFrxp4C6N8Vd3Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zRG5bE1XiJTKLZROKxKUwLouVsVeLtZ/WEoo3vJKpU4=;
 b=KXz6/fuDE/Dgf2PR3zeUwYnSzega0rtrt+PBMsaCAqYqLs+SGg1jEETJNfZZbjWNTcoEjDObmiWHgGD/4syGW/g5h1se7jhW7est+JOkUnCDhzQCB315Gu8nxxxAJZiEJ/uKhg/iLA1nlGrgm3rQYeOT43gJ/3SL79SH2Ue8csSpyub+LxqhazOVfsxMQOhh/spPKLjNxiBwGNb6D5yVf1gdQXf6Htb4jzXos5Ntq86L94Hc8Zuxab8ypa/sSXP1Gg5uxQ8TKsASF9Xn+kNIaxVdJkkLXs8Oc+1kzSHA/CHT9kOb9pKoMLIDnrDgk2Z3lyY/eK73uJbLoHddnBNZoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB8120.namprd11.prod.outlook.com (2603:10b6:806:2f3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 22:06:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 22:06:22 +0000
Date: Thu, 29 Jan 2026 00:06:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 10/16] drm/i915/dp_mst: Rework pipe joiner logic in
 compute_config
Message-ID: <aXqIWDXsP2AQ2tBd@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-11-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-11-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0017.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB8120:EE_
X-MS-Office365-Filtering-Correlation-Id: 90fef95c-5350-4b3a-ee47-08de5eb978f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/mmQxemQlMf7hEYJ6FJdI2Exj9yVOkcFTp7N62FKF0FA3efjtaJP/Q4Oaxla?=
 =?us-ascii?Q?TEUfZm6puxiOtMYFv02xtnvOlstI8yz4ZE/goV6RZ7nwhMxshSrvLPyTRLLs?=
 =?us-ascii?Q?LbTJVakSDvqxFImu6ANlLwkKl0vJ3iCV0/DOhA+PQi+FAf8tSEeIDfT9sRGn?=
 =?us-ascii?Q?3kEFcPwBmNF2Ys9DPSQg9I/0lo2SkeoMZMXQsgUKBhSWjqJPZwJMlQCo86wa?=
 =?us-ascii?Q?N/iD9ITBp4dKyoCxndc5DaFDL8aei99Cran9L0dv2FVX71cBLbgRs8OQiHHQ?=
 =?us-ascii?Q?+lko63qhZ7HhNBBjfgoNbyPfpVAf+zppH0gyLe2tITQ4NkHe9VuqbWXMwQps?=
 =?us-ascii?Q?yJv/JduhQToWJRvyRqAs6GcZlqNtnk3tpMC4ylwUuX5FnqRPSvyzq0aJEuOh?=
 =?us-ascii?Q?gX7+9ULUYl3Wrzc3+n/+BfUeDuoQ+bQwWcxZArMfmdwcVaXao4e1GmqgKUCf?=
 =?us-ascii?Q?Sb5ZM0s7Q68LUIn/mXi64l7JnKD5jzehhli+u7Z5Wk0gMj2EZerZ46TKM80k?=
 =?us-ascii?Q?Erm9X5K8cmbi9IiqDcWLMDzQQc9uBt5f4wUKMZXJAYAi6BkND6nwcCHk85eL?=
 =?us-ascii?Q?nix4a1ZZwOhzV095XY8yBJj5lmOBDlnTpWShy0b0bvhJ1P0bijRu9chuvPA0?=
 =?us-ascii?Q?k9r5+cmah8+5a1bWxMRCayO+uCuT2TrQAVKyJ8aLDo/rEXdNAD/EvKRvXGeB?=
 =?us-ascii?Q?LeNyVcwb54TB15K3mIwHde4n5T/vssqU5VE0N3/PN8J4/xG7CY3/YK5akm4Z?=
 =?us-ascii?Q?4aSbT4yF8UmB0YU1SXR9NXw/MYj2IvzPCS71nght5B+1eqUiww0+XXzJSori?=
 =?us-ascii?Q?Z56fQ66nYhteDRWrFKoKvOhcf8Yux79YrEvEsGdd2jjWSuVJGmdVP25gxaGc?=
 =?us-ascii?Q?oGvlSEWmB+GI0w9ofbdHfNaAJ1Bs7SE3SYnEWigE10PQibJRHXjOGCulS7OD?=
 =?us-ascii?Q?CsfBBgiDYNmMz3wk283ofWKSVhPeL7tjCjIU5AEdZRlr0WIqOQG1hJsDAomn?=
 =?us-ascii?Q?RAdO9ZD+hO605Fbei/9/NBBFobUyFz9DiQB7yjjN32i305z5N+sXgkHjRPso?=
 =?us-ascii?Q?0joG4XX4DFs9LMgzc4SzhdpN9eW7hB1suwJMUEqmjZGRT0OzImDgj/DB58CA?=
 =?us-ascii?Q?VvkxRqIkgBKDQLpqRdaWTOcJ7mf9zKTtNAoh5WxamBYOBipmYrRHOnw+5Cse?=
 =?us-ascii?Q?h9F0LWKiWcJ5DsTNY3UNkzN7wk9nrO460uWYhMcSnoLi2pGqB29TYKG7wauV?=
 =?us-ascii?Q?b/99fu9+nr+iuOgzJ8zdt3NekkoPoPdEDTqPU1uGu0HpSmj+Bu7WpzP+YaAx?=
 =?us-ascii?Q?6+Nm5C3qGNugAAQMjPebYLIM2svg44GhFZHu8NawOWfkkoUFsRFcrNdArOqx?=
 =?us-ascii?Q?f5J8XNgjJ+M3Se2aK4hG36/VSVpqUyKSNDImDODQtqz9A5J/J7RWAZ0e4o1i?=
 =?us-ascii?Q?x9fk6zgQMui5ZP2r4dfznaOLiPA2DuhvHJo/H6IeqMRsqCto7tEgFIfKijN1?=
 =?us-ascii?Q?U7aVYP7xTq3aB6BAG/nVkoS/Y1qIHAeb5WcpdNwOStC9Dcuf3zUUXjX9Qw?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rJ9nhLiuGbuUZQW826NVD2lToWh5n1IO3FfeISuOkxDXqi8rYdKme+MN5rVa?=
 =?us-ascii?Q?/w5awpZxU9C9XVChPYdfZ/mCVMEn3Zz7wuhBhIB/vr/3UlTZ/kQhMHLmf7YD?=
 =?us-ascii?Q?ytBFAm1dEexghF343iqddRPmmlktUn00lK2bpE5i3iX/xu2qhjvg/xqmsOOC?=
 =?us-ascii?Q?ls7tc20s3TgWN1Ij0t23KCTMQ8l9UxYtegcOEnQVfoyG4m57E2plR7Ggpwvn?=
 =?us-ascii?Q?KY1rWxveX7bfib4yNwcDqruGrp2e+nrRoLxmVMOQe5u8Cygwi0ib+mp/XFTd?=
 =?us-ascii?Q?6nsDa58JbDb7OJqNLel6txpo3YAz+uqlHP4LtRwqbLF+r6ZW88Ke0Up8eJS2?=
 =?us-ascii?Q?thEXi7dbdzLQVDi74Lw2/F7XANA8OgnR7H4y1e+bJnCrONNvPCNwhZR3n2ir?=
 =?us-ascii?Q?Y1Sgy0VSvtfXIM4MmqKnNcNevDWQicjuDufKz/CMIM9TkmMFFLXOqA946NF5?=
 =?us-ascii?Q?mrxLFrAj0jpExSxZdv0F9/P+0i/ls+LzARKtIFu1xuaxkUitZNmWVvLiGJL2?=
 =?us-ascii?Q?Sh2JieQdbIf8/Fzi3NPrvlcgvVC9C/TvsFCUeLYedeLqmu+sQg9ylZitJZkg?=
 =?us-ascii?Q?O99p1QnKtGND/9XGrNgN+SRpEYyfyo2UOV3jXDcRjCCr//vbmCo4K2eknlp5?=
 =?us-ascii?Q?k2WF++0Rxz5LuAbMh8TgFIl7+sFE9JWSOKV2PDJmWeLW+2OprHLmXFU8tW0I?=
 =?us-ascii?Q?xcmKdfZUT/7WTAbmZeArOcLyju2Nr/eOyBxcydw4a7pTvAZ1JYR2Vv/l9ETF?=
 =?us-ascii?Q?pKiCdfFpBxwSERLrhq+dRdLoDCqvSbFDwGUCpP90aRJ0D0blUqtniXkemCUs?=
 =?us-ascii?Q?3g8yBxmyWljd0rpS69cn8l3CHZ0RmAUq1M0qIBTbYDxi5F7DMTuebYyzUgjw?=
 =?us-ascii?Q?r9eii/e1WF/rU8PD75K7deryCnuBseQymzBwF/WY18nLJ/+DmLs2f76aZYSQ?=
 =?us-ascii?Q?2VKGRi7E4T/pCK+YT45oREnNNSWWhcvumC1BYcJWZ1t0PUD3vRFDhcRRCwhR?=
 =?us-ascii?Q?1W0XMlOAJy93/fz+z6N7RScFMHntGc1tyIOLx0pSq455tsPJR3p+3AwtpEE0?=
 =?us-ascii?Q?AtKvCE/qHR1OwJQIHX6MVseb6EaMY1RwQtFJ410VeE12HRtgjaY6YOt1eWwm?=
 =?us-ascii?Q?ymYRq857aQ5nccJ1A6W5O6nccSeeRN7pPYsHNldTGainc516YlOmFvBf8TBM?=
 =?us-ascii?Q?KbugQKEYYSAbMb3MbyLo0N6p1OOXRPjMi8zP8Ak+MESu9vBUKO7iQ05FzXC9?=
 =?us-ascii?Q?7gTHARtXs2XJmXiKXrAfoe5nUE/snNiNhJXr+vxaOj6daiov3YbtCllGSkvg?=
 =?us-ascii?Q?n8ed3S56BYIv/NaFOwRvKltryyWlUcj8ReTlcK0lDo/ZkGW0/YDL4CcS8JtY?=
 =?us-ascii?Q?JqZq7CXkXF1+J7Fck/JJyaRZ2Jt+mhdKWq1HJOZnBxP/+wDkWa2mkygsbVAk?=
 =?us-ascii?Q?Ya8WfC1uVfSO6s5mcw7BLHh5C5sop8J70RHYMFXrjX5/qasJ8f0Z+RvFjScc?=
 =?us-ascii?Q?Z4BgOKdVKtU2uyP7wc5H3BzGv561Eo82LCOlQHF4Rjx5S/WTi14HGLxeVghA?=
 =?us-ascii?Q?nwunCQLsfUuuMFWgndxiirw/YBVZYhgARTWGn0oDbYVpjkdNKu3Zn0b/8W92?=
 =?us-ascii?Q?ai3oBQI2Vo0AACguULGIQrp1S/JadCMykQdqfkgUELJNvl4DkoA+mD20TU7h?=
 =?us-ascii?Q?Kjfle1MJeDprW5PJLECn5c8pWt7rj4Gov90+VeFb9pvhbIZ9/1YZyZHJfhSG?=
 =?us-ascii?Q?/mmSpAOUBw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90fef95c-5350-4b3a-ee47-08de5eb978f6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:06:22.5688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bj2kCjqEFnoseUmOm2ynC79FiS2zILrWYFTMaEeCOz1qcr5/9Gns9JPovw65mk7dy8YL51E4GsPtW9GKQaoD2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8120
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 01652A9629
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:30PM +0530, Ankit Nautiyal wrote:
> Similar to the DP SST, refactor `mst_stream_compute_config()` to iterate
> over joiner candidates and select the minimal joiner configuration that
> satisfies the mode requirements. This prepares the logic for future changes
> that will consider DSC slice overhead.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 47 +++++++++++++++++----
>  1 file changed, 38 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 29ac7b2e1e9c..7a83af89ef03 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -687,6 +687,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	int num_joined_pipes;
> +	int num_pipes;
>  	int ret = 0;
>  
>  	if (pipe_config->fec_enable &&
> @@ -700,17 +701,45 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     adjusted_mode->crtc_hdisplay,
> -						     adjusted_mode->crtc_clock);
> +	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
> -	if (num_joined_pipes > 1)
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> +		ret = -EINVAL;

I suppose in case no valid configuration is found the error code
propagated from this function should be either the error code returned
by the last mst_stream_compute_link_for_joined_pipes() call (which
should also handle the adjusted_mode->clock <= max_dotclk check
internally) for the last valid joined-pipe it was called, or -EINVAL if
there wasn't any valid joined-pipe candidate (and so
mst_stream_compute_link_for_joined_pipes() was never called). The above
ret = -EINVAL could overwrite ret which was set by the last call of
mst_stream_compute_link_for_joined_pipes(). To avoid that I'd init ret =
-EINVAL before the loop.

> +
> +		if (num_pipes == 0) {
> +			if (!connector->force_joined_pipes)
> +				continue;
> +			num_joined_pipes = connector->force_joined_pipes;
> +		} else {
> +			num_joined_pipes = num_pipes;
> +		}

I'd simplify the above as mentioned in earlier patches.

> +
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
> +
> +		if (adjusted_mode->hdisplay >
> +		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
> +
> +		if (num_joined_pipes > 1)
> +			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
> +							    crtc->pipe);
> +
> +		ret = mst_stream_compute_link_for_joined_pipes(encoder,
> +							       pipe_config,
> +							       conn_state,
> +							       num_joined_pipes);
> +		if (ret)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (adjusted_mode->clock <= max_dotclk) {
> +			ret = 0;

ret stays 0 if adjusted_mode->clock > max_dotclk (and num_pipes ==
I915_MAX_PIPES - 1). Also, this max_dotclk check should be moved to
mst_stream_compute_link_for_joined_pipes() and checked for both non-dsc
and dsc (falling back to dsc if needed), similarly to the SST case.

> +			break;
> +		}
> +	}
>  
> -	ret = mst_stream_compute_link_for_joined_pipes(encoder,
> -						       pipe_config,
> -						       conn_state,
> -						       num_joined_pipes);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.45.2
> 
