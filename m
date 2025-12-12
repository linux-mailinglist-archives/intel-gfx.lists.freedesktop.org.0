Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 609A1CB8A9B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 12:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025C310E0CF;
	Fri, 12 Dec 2025 11:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TRr29zOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F5610E5A6;
 Fri, 12 Dec 2025 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765537320; x=1797073320;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qnPiMpnkrDAURdV6bzceA9sa3pbS9u0Thg+dpx3CbD4=;
 b=TRr29zOKwa7mczdkzMg0vvBvtmPSuxJ+6Xn0v3SGZxs4Far+IjZD6nWe
 oMGDdJLOGiy3vh6tEjc9AiJa58uZCGd8LvakLB1mrqHr/xprFk9N2W1Rv
 uWu6fJ4ntmnDZb02FSkEkeql4y8itXuHl+kIWhke0aPIrWbAIeZGGuW4T
 KRWkwGr8FJssENYvqMYJlfMqaxKx5hVTyFY6mOXGfMNAnHeemzyzst7lK
 ATjfSWO8FQG7tIzg9pdX3SLl5Ha7yi7vOJhQE3S1u/zYIfvOIZUAzfLxB
 sJ1SLaHkc0c+I+eXFK4TaiPgSo93kas5LeB82j0uU6cfHTC7FHHG6jmxs g==;
X-CSE-ConnectionGUID: Z0kmXEjcSfGvESWqGSpxEA==
X-CSE-MsgGUID: Z2PUS1DqRtuXj1tZYhZAFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67409332"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67409332"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:01:59 -0800
X-CSE-ConnectionGUID: Cw8qQbusTMaV/z+71kN0og==
X-CSE-MsgGUID: RslXmi1uQ82G5aTgaOmGmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="228127085"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:01:58 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:01:56 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 03:01:56 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.12)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:01:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZwdKXJ8VGhkxdC+mRXj3cbqbMip/gVLAXuhe8PN6b/7BpUDzQwBqvLfWuf+7a+sH3ghKuypwOAFd5nCf1kGry4wIm2LT2WS6L6Tj/gvvzfvQfwo9nowHitepHoQqt1Tx+9orZg9ySptZxicbT9R2bFgB8JdG3S0Lwhd4lCSG3zPzFGopUTeaAW9esnGk4itjaE/U7BTTcSYQCgxv5p/GVUX+H20pQWdiazP8+rtqkCRBeqxha7CRPwYZnyPBrv9ZYSoMVqhOce8YV08mL0mQOZUN2RW7k+kiuinmC9HAz36EIQl0ItAfAhewjO0gPFlqL4ZsTOOZgHRTSdgv4r069g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uwj+nqInVfDAjh+TTckA+ygW96QaTk8FIIhBT6pk00I=;
 b=g0ighrv6RmrlCqxv4ZKnt6UmbX/2jBRgElXJ2Szd78XgkCWlRo7Trh5snT4RM75/P8YSLQ4gzgM+UYdIbTiE9pxqQMaOgtPk5pmfPKk9LSUZaUt1GJW0leEZPfkaT0flDMW0P6sKHHzeW4DYZXFBo0Xdsdia4ctjZBXH0MSJACUsC0cVbdutMyBoDmoGXwxurulCAVDmnCbKokJ58Rc+0YGaavNbGVMi1a3H/M9EtFFoqdmDs00x0K7uvSl9sHbtq5NWUUCiXzQc6cz34qV6N079AEHVSFl/QrJx0ObhmXeNSPGT4tM4/Oiem/Q2CfRukNfTI+UtHLkE/9IJcqnejg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB7909.namprd11.prod.outlook.com (2603:10b6:208:407::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 11:01:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:01:54 +0000
Date: Fri, 12 Dec 2025 13:01:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 25/50] drm/i915/dp: Factor out
 compute_min_compressed_bpp_x16()
Message-ID: <aTv2HGvIChY01PJ8@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-26-imre.deak@intel.com>
 <276db28877253cbdb285cfed24d81dc00d5dd0bd.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <276db28877253cbdb285cfed24d81dc00d5dd0bd.camel@intel.com>
X-ClientProxiedBy: LO0P265CA0012.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:355::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB7909:EE_
X-MS-Office365-Filtering-Correlation-Id: bfc9b3b7-b10a-40c7-1f5a-08de396ddc4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?bEAOsJbWBHY3TR2yQnh/ZInv/7yakNid02b3CvWxYjwhxD0yzDntqHlrkq?=
 =?iso-8859-1?Q?1ubIKM0D1Ra5Yhh+O+UW+Eed34J7ua202L7mO2rY1zj2H2qIYwbcImeBY0?=
 =?iso-8859-1?Q?ZMrNqzKPyufYJUuXk+kY9ey15Vv0XUhD6sGv+seTa2j9v4a5J9q9jb+eQv?=
 =?iso-8859-1?Q?kEOVo+xvaC2R1fA01VyxyyVd3cX6tjRD6NFzhkL796GWPjjwR3aac3JLkk?=
 =?iso-8859-1?Q?r7dXZdlpy0hgOuq6nknx1QlLwBnvZa2QgWn1Na3Hvvh2i1SYf0rpAVlZec?=
 =?iso-8859-1?Q?TJpnyXJzfY54bVnghqhKb2vQo/LWexi5UjFdixLkw9dnZWiRQ0zmKCHV3k?=
 =?iso-8859-1?Q?07vteyXnOppXv+krO7PK4SNpLV9l0SpVDC32SZaz5vvROr3477WJJ0ZyN0?=
 =?iso-8859-1?Q?rAy4O5BLzSlTo6MVjPE89k0bFcgWMfNR9Hm05vxQgdZEkMZgvkAKGYw2ml?=
 =?iso-8859-1?Q?tFQs5b6aKMyJumj6m5I3ReX/7HAuddAji5OQ4DuAeqMdQGxlusnrW7Tsj3?=
 =?iso-8859-1?Q?kK2uJfZKAiZuxjhfb0OU0pRooBbjQfCZQdI/0WwM0doV0ry5t0LGTy3Km5?=
 =?iso-8859-1?Q?VnUNAD+ITHHEKRBThMjVoONbN639g3RQ14EQUTfp+lM9l5pv594ogsDqtj?=
 =?iso-8859-1?Q?IbW6rOO8CCe7dILIfW8QidVtGE3r5itdcCFmCG0gL2ztvx0hDAShDCOgGe?=
 =?iso-8859-1?Q?9L40MXw941jkzm0rSylxj55KJQraau8MD47klWe1uJqwrKAH99Fg1XRH3a?=
 =?iso-8859-1?Q?uMkK7ZBFDY9cGsmGTxxMq4UkJtvOfpcnKXjpuQlt6Y30AnDqWQ30YDSNjf?=
 =?iso-8859-1?Q?zN7/ZWpV9DcWscoU2JUBDI7Cu3RWPclulsNo3AKUq3SsVgbJys5Y+f0it7?=
 =?iso-8859-1?Q?lXNY8UjnoyN+p6jEBGIzDAOG3va+2ejYafRwTCEjGrLQGxngsHh0G5zE7U?=
 =?iso-8859-1?Q?FuMH9fYuXIVLRho+VSyfRGlF/2Z3y91h+610iKvvLwgnqM9CpQ88BSCnw0?=
 =?iso-8859-1?Q?jgnwqZKV0CXVdf0CCfPDAEO0U9cyQp3eyCcRRlGwH2KpP3qf/SwWwDGvtp?=
 =?iso-8859-1?Q?TqqN38aLd1ByWkPk2CVa4JVpfIW29Rq7l9MD4JL0Pku/Jnug8uuXidijw8?=
 =?iso-8859-1?Q?Y4hBT5rJuTpEBIos7HQ1E/FN99bZqoAQQwaMyk8e+sDrjNiFEo1aaEzTvE?=
 =?iso-8859-1?Q?sq7YDpT+Sv9t9Crg0yEaKJ/qp16gO1mlGOb/AGFEx35DSciahkHIi77cIa?=
 =?iso-8859-1?Q?3ufvnPEySltc8R8GiVfPKsj5zwgYZRMoiQb+GGYtoEV04XDM5GsJEjmj+1?=
 =?iso-8859-1?Q?AdjdBZeyziREO4MfEoHpF1vgDNHrxgmWFvQFDul3i/qUV6m4HB4Z/2W2jo?=
 =?iso-8859-1?Q?oSwWl4nJ4pw+6i+S+XM808GB3D0KRqdFLfC6Vmn5US1pmtu1x+evlkY9Gf?=
 =?iso-8859-1?Q?RbHfGylByQFkKpGLDvQL/F7g/GkCVajeuuCMHmJ8lastgUNXC8e8NBD4hN?=
 =?iso-8859-1?Q?/NujlM2csJfNvgYmmOhsDM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ezdcy9D0cLiJ4W65L1lr05X+vwlHwte6ImcjODaYrlrzNaBX+V1jfzRf02?=
 =?iso-8859-1?Q?GLFt9ciC0HD2AtfpVoR6f0vZQCrYkarc3CNQLLo/QlZUdBI2iyGIIwfvA9?=
 =?iso-8859-1?Q?K/mng0a/Q+fOcGGukgbEQZs1F6fatFD2pX6LpcFR0LkamkHO+HCEwF2zL6?=
 =?iso-8859-1?Q?Afoze8kE5AZ4bd5QcrqFPRTqPIgcmStUolnJY3rTYLeFqzmzpzZ6padMYN?=
 =?iso-8859-1?Q?K4XRZ40PpHclsNfaFh0vLgJkP6nUwZpdiex0PBE5DTWGVJq7oieRZ1tdg1?=
 =?iso-8859-1?Q?OM5SZSt/Boh1on9au4hy4+IGBpA910Cu3SKLAEdbGnRYcnsRYks51lzEW4?=
 =?iso-8859-1?Q?QaiKyKdPsDPMENBerSNlx7e9NwTWp8Eo9/6ahY4MIaH9BtA2iuplIXmjhB?=
 =?iso-8859-1?Q?ewrv9pLT0b3hUE64UCQXLXttSxB8NsyWyj7c77dIHH/hUykbJHYsjkCIi1?=
 =?iso-8859-1?Q?gkl63XAH8bQORBrWHYZieCwHFNdxdbt30Jh1W0jcgiTrQ1suFKP1sbhILk?=
 =?iso-8859-1?Q?rmLAffaxziV0Pv/dvtlrhOStPuL6PqVb8VmbrSIUM+PXEIO2fTnWGQlfDR?=
 =?iso-8859-1?Q?bQoN8QDNJNTj6koBwPJmevPUg2PU3sHYRQBNXAp1tzPA3KoLvN83huEdec?=
 =?iso-8859-1?Q?eZ0FswbLJf0zQIUmVD47/9aPcnNl1jjrkkICOqQW2So+DivvCktdDc/68k?=
 =?iso-8859-1?Q?UBF/Pl3PUQxfbf7XrNoJZcaeMRf7cWdd6qkCah33HMnSROU1EP9IDhI9Gq?=
 =?iso-8859-1?Q?AybphCwUz58n7xM+ZzstJ62rs4PbF5yFUqG3wh0sWUvedO61hY4D6fZMUf?=
 =?iso-8859-1?Q?q8S/fbSrKotINksnskRVR/hx7aJ3MVuQi/17IjDRJuwko7EXwyqrv+e4x9?=
 =?iso-8859-1?Q?BNrrfpevX5r1C6Yh5aYcZawjNmKj+f/3q9O9lWsGVAHaKOB0v6umYTfKRy?=
 =?iso-8859-1?Q?/SHKvxXEq7vABnv69/SkOoSv4IVQRgHRez3g18NUwF7nDU46Y/jyFzyCrj?=
 =?iso-8859-1?Q?pPtvv1reWrqVQIBG5SqxJ1rCO0YqefavoARRB6JQZQU28/JJTjbHlL0+YD?=
 =?iso-8859-1?Q?WwAdr9Izd2RJ/qfqyUGVodT8j91agq621FVHl62KGsH+tfmKReGSWZLEwn?=
 =?iso-8859-1?Q?rKP8ZHqCAaxTqcraFO1ZbSXGe/EnuEOULPrh9znoh1B+/7baasZp/pGU2X?=
 =?iso-8859-1?Q?QdLQSKXbB4DWjM/DCJ/x23mN12S8X6uWYF2ewKJTfqjkhC0y0l3kxB2a2N?=
 =?iso-8859-1?Q?530bCvlCYnHyX2QCzqS1JqhU3GALyrsjjJaLmec/nNuIvFI8DfIMFOmDtA?=
 =?iso-8859-1?Q?SkpC2LbO7voXOGmbLhGgAiUv1lJHP5KDp/35cy/rv/k276IR5/e9MWgkLA?=
 =?iso-8859-1?Q?yHCEgzMtc/y9tGftbL/awqjEZP6V//RqWGKAcCN+iO4MsQVIwiUb+ISKQK?=
 =?iso-8859-1?Q?3FdN4NV13WLoIi9vkL0v/0eg6D1b2XqQWG5O9bm/WuwKG4Hv/PeVZRhHdH?=
 =?iso-8859-1?Q?dI4UBDSVUJbTNqj36smPeJjpKypSARC4eXYxWVvfn+dANTSd2IOhm9EaPZ?=
 =?iso-8859-1?Q?t12xJKui4bEyZznaP3gARsN/eqPGsYdrVwYYRhpAM1QaibPrNUjxWZdXwK?=
 =?iso-8859-1?Q?Mr/27RIXtvAlJCvVjlzVC2ZZEa/kqfyO0Hsmiw0lC7Bch7fIJr6erPheep?=
 =?iso-8859-1?Q?HgUDfdM3AQjGWVOJ+d+WiGDm/6WvPXK2CgRCrZFF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc9b3b7-b10a-40c7-1f5a-08de396ddc4d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 11:01:54.6080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aKhvELXdzHlBNH/JdWzRxkHWQgjLE1mfNZ14JV5t5aIpfh2ASHOTz8h745y2eTe6NVKUb13Tzdw/sxl8cHZ1wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7909
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

On Fri, Dec 12, 2025 at 11:39:51AM +0200, Vinod Govindapillai wrote:
> On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> > Factor out compute_min_compressed_bpp_x16() also used during mode
> > validation in a follow-up change.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 26 +++++++++++++++++------
> > --
> >  1 file changed, 18 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 193d9c2079347..2a5f5f1b4b128 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2645,6 +2645,23 @@ dsc_throughput_quirk_max_bpp_x16(const struct
> > intel_connector *connector,
> >  	return fxp_q4_from_int(12);
> >  }
> >  
> > +static int compute_min_compressed_bpp_x16(struct intel_connector *connector,
> > +					  enum intel_output_format output_format)
> > +{
> 
> Could be "const struct intel_connector".

My understanding is that the connector/crtc etc. objects should not be
passed via a const pointer vs. the connector_state/crtc_state etc.
state pointers for these objects which should be const whenever
possible.

> align_min_compressed_bpp_x16() also takes const intel_connector

Yes, but only to match align_max_compressed_bpp_x16() which is also
called from dsc_compute_compressed_bpp(). The latter one can pass only a
const connector pointer to the called function.

> with that,
> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
