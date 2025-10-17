Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D851DBE613D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 04:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF25810EADE;
	Fri, 17 Oct 2025 02:01:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MtsChN1Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C45910EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Oct 2025 02:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760666510; x=1792202510;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nfkecNfRt2NRclw9Uw51AUX4SWJZJXpUvua1VTyEiMs=;
 b=MtsChN1Y+sTXtwytN0tZoS0l6/62+f3/X+r+Pe6QNyf/fg5x2dLnH796
 YIRXs6J6FEvTHhJyTO2o8iaY3VTxoVPfUtfJehHW9x1RyvQNrrZXwud6M
 5zQlXH1u3r1ezhw/Oeme9yC6kbixt/Fwq3Dj0d87l/0Wi7W1rCrbu6BIB
 BlwIkpPf/UF1U5PLz9L0N1erE82ApnQB9dqpw/s4qQzlAEhdunBrqWRaD
 60YmfTe9RblWMS4cOXrDB2pB6NAPPv0HytuVCHV5y3JWLhMTsBPCnCJk8
 ZpZdJwH/mwudvv/wuiFK6qjjy9+epOQupV438HgvcWMeJmEaxGUiuT0tG g==;
X-CSE-ConnectionGUID: c0gWP6lVSZaG1f/HX1L34A==
X-CSE-MsgGUID: NcR22x5ZT+uOtHyaxnjywg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73475062"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="73475062"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 19:01:48 -0700
X-CSE-ConnectionGUID: dCKmpchASzOyOGSJ5TEwdA==
X-CSE-MsgGUID: HtoQlsE8QnCmPorGXLT6nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="183405428"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 19:01:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 19:01:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 19:01:46 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 19:01:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WyAmVn+u/rC3pQ59o1u4kRR6jA3JGODi8WjrmI8fcnvdzzQ/zlBE48uzefOcNPC959A4Q1+0Z7crJ4hrVSpLCf83Lm/kRlip295t5MnuQPB5R88ZpRlBIPUjuvNv45e2cZ1Jgc6X4/4NdCBtjCLN6GUiV4jIwx8JS3r/QQo4R6UaUFT3UoooI9oSesvaOW7n0ovEBM4ep65NRZqGWytZIsmdFQ/5gmdjWhSgBIBnnjje4PF1Rcz6cAY5hs53U3Gpr7GjS9dzNDre8VeXJnFtuACDJy2DCd/G/L0ZTPeJcZON/gB36sYQxX7S32XfYmMHbZdpI0hRW9aYuE1Ce3Vf3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ARQOn2STdWX9/V4DauY00KExE2Zczzm/WfVBbC2loN8=;
 b=b3n61QZ+QVmQo+7yEjE7KyOG5+/ST7Fu1ZBnVMIdJZna+AqHkzGLp4JvDZUB/q1MqLlqYPol9JojVSRE6kh/xWupxPS3jjq6hj9+1cMczLlh9cSGJXNRUn7YA/aL1tDUKjpsB1uzIcEpSNsRFpVGy/FX2xKe1bRQlCpktILEbr09jDu+vcAB0KYvYr/tfps7oNVlevuWoOHHhRez027Fpix7DFviOlVsuTSkufAra4oMxOLYttQwBMKV1eAh35A8qXzEIIvAJptq5UGIxaoUIp2/FnH3XN+8AXopMh+Jynyjzki4vDEtbA7U3+c8OMuCFwYdJnejOArf4q11kC5gpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SN7PR11MB7974.namprd11.prod.outlook.com (2603:10b6:806:2e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Fri, 17 Oct
 2025 02:01:44 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9228.010; Fri, 17 Oct 2025
 02:01:44 +0000
Date: Thu, 16 Oct 2025 22:01:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
CC: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <andi.shyti@kernel.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <aPGjhI-Yg2lg33oG@intel.com>
References: <20251016000350.1152382-2-umesh.nerlige.ramappa@intel.com>
 <87bjm6ipai.wl-ashutosh.dixit@intel.com>
 <aPGBd4PvOGN+MjqR@soc-5CG1426VCC.clients.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aPGBd4PvOGN+MjqR@soc-5CG1426VCC.clients.intel.com>
X-ClientProxiedBy: BYAPR11CA0059.namprd11.prod.outlook.com
 (2603:10b6:a03:80::36) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SN7PR11MB7974:EE_
X-MS-Office365-Filtering-Correlation-Id: 86bf1ea8-23c1-4aad-3ffa-08de0d211ec1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RtDcKyi9FTRDoA8kuMb4KoQfI6iRmX+6qBu/iDD7g1zW9B3iMcWolp8N4bNY?=
 =?us-ascii?Q?bhirwm7wKpNncYkLdgGQOw/x9LxHHo9TEUR2coM0bwelBXIdHt1WxpsycGu7?=
 =?us-ascii?Q?n671TDbzF7jrjSXXHfR0ShvuhJvhFzSBOStoE/L5gJa+SQT3SVQnGju+yCS8?=
 =?us-ascii?Q?QHAcMBDSw9rl4ABxCuL5jJfRlTpkg9QmM36cE4KzAZ+Hg4L8sm4NuwZLvsP7?=
 =?us-ascii?Q?2a65IxXk4s2S7GgW86CfHKCgDY/oJjGHOegOygJod+EoSMebnEunQ5LcuqVp?=
 =?us-ascii?Q?pmXoqD1M4Rg8aLW1wqDgumyrHKHMtDNDjk7nevEh89yoon2+nl6M+07u8/53?=
 =?us-ascii?Q?IOWMYP54zvgWs92Wb//SMVal3ZtwUc+XjHFfI4PQAWEei632NF5BBZOrooRj?=
 =?us-ascii?Q?IILqMEazoVbGcFm93Tpq8gfyDI+wseDvLUd5YKO0w3TCc49IT+LVmksIQu2S?=
 =?us-ascii?Q?qEQQXoZB/gr2kS/3yzyxHaPW3WyrnEIIsCNIk1vZ5fvSnNkJXDcoBefaPYy0?=
 =?us-ascii?Q?xVbL7efqVVnnZSDIr/qyfss8CMDUo99BBxWCiZSKQK7SgPa7vR2d+lGJ4Zy7?=
 =?us-ascii?Q?6cygDDIL5ajaU/4yUJCqXJRgp5Au0XgBetyr7gZBC4Fa3Uo6Aqt5io+KTzwz?=
 =?us-ascii?Q?LI7K3LWa+4nR0dlb++ORL/XB4Eblwkvs7JC0HkyCly1qyKO5PNQSOg8gQ+bs?=
 =?us-ascii?Q?m7ZDDanu+P3EyKqDiU3XYcFleBgZ35EmXYE7gBqO91XdcM9ZLXYzMVNdTo+1?=
 =?us-ascii?Q?f9FIzkpwH5/EOprOPlm3mjI8A8i/fSx72TipoUzDJxv+BFjcoEbOBv8NAX6p?=
 =?us-ascii?Q?7+6kb5ZegLuqKzQnH14vkbY1et+vVgllFNsqF6DmUm32Vi9+oLD85nIkCCpk?=
 =?us-ascii?Q?5b07sxUZV47yHTpu6YyM/j/f8/q9OHR5DGLSCCbg+hoW0dVyn1RNs1rY+FU8?=
 =?us-ascii?Q?N10xtdcZhmpVPrt2o4aNU69INVqKvty4BjCnSO71BZEdd9yL2Nxl29e6gFie?=
 =?us-ascii?Q?rwhGeX078Feb5fYWfWc1ie3+20aeEHYd63L+TX1lEWL5NbOeRheWWAjjI69l?=
 =?us-ascii?Q?Iuqbs1RWbBp45V/WgN7gBfW8/0DyqQw4OyLMgnSE9MztMSLktSsVj7khzt+D?=
 =?us-ascii?Q?RppRAhPAKAA6NUNDxwj31v2XlcfewYReYJpcuUvY61tQdJuhP9h3eTaXE66F?=
 =?us-ascii?Q?BzQdRPBU6Ui8VHV23UxBoIacgPqU14XNMikSa30BOMYsQLm9tW3v4kcXs8Hl?=
 =?us-ascii?Q?SY9khXA6jkBsiKljBdAdv5Ou5JYYhGezxdMwxccHgF7MhNrAoQ9sbekQY2LX?=
 =?us-ascii?Q?BCn7Ry0WppmKiuJoaKS7zwQGIYf6UgmaMmECYMh46LzAtGJRU3cRG+X+u9pd?=
 =?us-ascii?Q?rqD+beaLjhWUgopD/S5IAZ5BGju4aYFaqlMTjiTmw5k0UmJIHg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qZLCBacNnxwO9uTUw+R/apbcr/Z+kBR051wDgJ3S69+3nRZVjwVadyGag5Pd?=
 =?us-ascii?Q?QE3Bv61SLSvAdQP7Lt189i4zT65uT9HmY1+gIRw4PvsqdxbtXS6M4zL8XvtN?=
 =?us-ascii?Q?NO355McjKjZvq17rntlrsenf0TvGYuSdY54YQd4BuEX2Ajcu3nBDXgYvNjgM?=
 =?us-ascii?Q?8TnHpP1oB8qGTtsQivfWjbwTSPd7yWVnNRIL70x2V9KNqzE68q0iqnA7uvU4?=
 =?us-ascii?Q?dwHhYLokZOlCHLFS8+FSje29Sl6DbEpkVdqG5RUmIOYH93E52KEUN6ig7WWg?=
 =?us-ascii?Q?0TVAT9bd4mO5aasojOkvfZ6ab5CJNqbT20fAOh76mpHUxGLFf7/OC5Wx1D38?=
 =?us-ascii?Q?IAUuJ8HZYPyzHvJi0nIIzg8AOX7So6N58VHDt2BEXIgSTh4KM9iRjQWFUJgj?=
 =?us-ascii?Q?DbZ9JAUtpGsPOmIGd8gVkWdKEI1qhCgJHjxUjKqK9dhaFL8aNwlqKwQ34/XP?=
 =?us-ascii?Q?yDNVwQbVEVEg3vQ82bWvwy9Jjwt4INUY13qWo+4AqGEphi+kuVSWnNCZ9a1o?=
 =?us-ascii?Q?aGIZNe1dDlRzoozAcSzu1SqEg3HvBFCX/s5CjoVAPtFPbXOLshy5dFYtWI0p?=
 =?us-ascii?Q?YpSJYrFXdNGbsB7Cbc6Jtl2Zqfge4CsHlfT4hAFeDT5nWOMOz4XHiaYK10BJ?=
 =?us-ascii?Q?H26y1HsKLbD0HJS5EQFTsFjUUy8uMh9atXVjOcjr7LiG3o5ZGpwOzvFI3mCD?=
 =?us-ascii?Q?eI4X6TLp3J9CUoGqAPQMnFNrecActahkbqJnV587qRa5IKOvjCLgiLLSafzj?=
 =?us-ascii?Q?eYBLg5BRHj6APymkmY7TKcFkeLb9Glzu2bM4fKXGsDTd6MH7DeuHOqEZXKIO?=
 =?us-ascii?Q?QRsvPbah0akLdoHqK7l7XE0wb/U8Hxj1BVjxcHRXVov25fX+TKyjNmE3+N7X?=
 =?us-ascii?Q?9glIZZZV2OBag7fO8AezjZi43zRLVYjJxVLPNpLLZWmoLZCcNOVdu9+EHhw9?=
 =?us-ascii?Q?WGJrWrm5aBsPY0sJ6EzJDKVvVA/cWBYK5XJlUKwdLJg6zu0wQhzywa8eZsqG?=
 =?us-ascii?Q?erNowJSbh0nGKWoE8b/UTpsdktVhkwtg7r04SKttPTJsKAIAiTo1XWVFwBka?=
 =?us-ascii?Q?lEUQlOqZn3CWwOHb+CrZXIH+Hv/KdJEKmCtK6cIlx8VLdGU1w2WqiS2kuzB8?=
 =?us-ascii?Q?SesE0RNrygW5CbtfnA5Vncl4lgLThqZIKilE9FqgtH0cVUndKdwSvoL5oxzi?=
 =?us-ascii?Q?eTpQ3eFhzC1oNbZ/371hr1GtYNMZEP6DhcZ5v3llbM2vxNNNz5yyM4KQ11GH?=
 =?us-ascii?Q?JWL2aaAFEhzsCd+90S4oeI3NtfzXbsac5QH/4ejNF80XInALlRbh8WtBzk2F?=
 =?us-ascii?Q?3jGUZwWGrP3yYIKiGGAY/9ZXNM70eRJsUAlnB0KZD1UWrakbISdPd+RVK5M4?=
 =?us-ascii?Q?8KbAED5c/58v7/CGml4aSQz6pNhy6PdMFJVyb4gdYBmVMlzeltK5HRKWQjxo?=
 =?us-ascii?Q?1i5od9mC43HbpMWFw97syhaENvC7wEEz6X234SS15Gmy8emnFL0UhCwUZti+?=
 =?us-ascii?Q?huT9PMv3GjbBRy1cSqNi6myAtOXiVB/8BZjjsKoh1MqBhshfmJiOVpwiiA1D?=
 =?us-ascii?Q?tz4kvQYZ7ZQCgi9LOJbBfKZ7Tt4qBCT5Ds9VdNzE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86bf1ea8-23c1-4aad-3ffa-08de0d211ec1
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 02:01:44.6343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Se+X3niDb7VS1DwB28+9lMUIwJEawfmVuSzciqFZ0IZwP82ePH4hvFsCCHhXivce5VD9B251YlO9DThyjvwS/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7974
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

On Thu, Oct 16, 2025 at 04:36:23PM -0700, Umesh Nerlige Ramappa wrote:
> On Thu, Oct 16, 2025 at 01:07:17PM -0700, Dixit, Ashutosh wrote:
> > On Wed, 15 Oct 2025 17:03:51 -0700, Umesh Nerlige Ramappa wrote:
> > > 
> > > When tick values are large, the multiplication by NSEC_PER_SEC is larger
> > > than 64 bits and results in bad conversions.
> > > 
> > > The issue is seen in PMU busyness counters that look like they have
> > > wrapped around due to bad conversion. i915 PMU implementation returns
> > > monotonically increasing counters. If a count is lesser than previous
> > > one, it will only return the larger value until the smaller value
> > > catches up. The user will see this as zero delta between two
> > > measurements even though the engines are busy.
> > > 
> > > Fix it by using mul_u64_u32_div()
> > 
> > Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> 
> Thanks, Pushed it.
> 
> @Lucas, @Rodrigo
> 
> fyi,
> 
> I was working on drm-intel-gt-next and did a dim ub at some point and it
> automatically switched to drm-xe-next. Instead of pushing drm-intel-gt-next,
> I accidentally pushed drm-xe-next without any changes. Hope that does not
> cause any issues.

I'm kind of confused here.... I was going to force-push this out of
drm-xe-next. But it is not there.

Unless Lucas was faster than me...

In any case, please go to your drm-xe-next repository and run
git fetch drm-xe && git reset --hard drm-xe/drm-xe-next

just in case it is only applied but not pushed yet, so you don't
end up really pushing it on your next dim push.

> 
> I later pushed the right branch.

yeap, this one in the drm-intel-gt-next I can see.

> 
> Regards,
> Umesh
> > 
> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14955
> > > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > > ---
> > > v2:
> > > - Fix divide by zero for Gen11 (Andi)
> > > - Update commit message
> > > 
> > > v3:
> > > - Drop GCD and use mul_u64_u32_div() instead (Ashutosh)
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > > index 88b147fa5cb1..c90b35881a26 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > > @@ -205,7 +205,7 @@ static u64 div_u64_roundup(u64 nom, u32 den)
> > > 
> > >  u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
> > >  {
> > > -	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
> > > +	return mul_u64_u32_div(count, NSEC_PER_SEC, gt->clock_frequency);
> > >  }
> > > 
> > >  u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
> > > @@ -215,7 +215,7 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
> > > 
> > >  u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
> > >  {
> > > -	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
> > > +	return mul_u64_u32_div(ns, gt->clock_frequency, NSEC_PER_SEC);
> > >  }
> > > 
> > >  u64 intel_gt_ns_to_pm_interval(const struct intel_gt *gt, u64 ns)
> > > --
> > > 2.43.0
> > > 
