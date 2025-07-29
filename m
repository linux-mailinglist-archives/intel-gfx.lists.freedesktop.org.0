Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B58B14FEC
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 17:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566CC10E651;
	Tue, 29 Jul 2025 15:04:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sj66kqtw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A5510E64F;
 Tue, 29 Jul 2025 15:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753801458; x=1785337458;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=WjUyXog/UlEPNMqV4naTTEwuGnQ+zuKjLvM4tjuVLYI=;
 b=Sj66kqtw1apuBdTMpYpBnqoYWHc9JJdBugUUXr6+wCmKrWOILFQPYn6H
 YHcpH3lANfkSzDtyr2ocIVIG1qxN3HTy35lWmmKrJ6EdjMOn2cgDOnzLd
 4tLtyjMBrJ4zmIeGjaSoSRjII3Heat+1WoMeN5KJXFJ6lCflUAMRU3CQX
 epOS/5120vWplR9qB+Dpe88kPQstZH61ytO/w1pP1X7CJry0kQMOsLFHq
 vJL+lReXtEKf3DqLzl2bE4oNoKXUHneB0ga+tlQmS5Af5QpnKNZmONN44
 DHbTUfId03+XgoN2PLhfPyXBjyesWMhtAXPtjKZtm2LSRpZjqc5cyAptO A==;
X-CSE-ConnectionGUID: rRkrowDWRNyAT0lTJo9ceA==
X-CSE-MsgGUID: S152xPFQQV6uOQj6Ubz/6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="67159184"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="67159184"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 08:04:18 -0700
X-CSE-ConnectionGUID: xK/SleqhTEelBou2wpXzUA==
X-CSE-MsgGUID: Yi10UZqJTfqwxCn1pLauiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="193714251"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 08:04:15 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 08:04:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 08:04:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.77)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 08:04:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PX3OpW4kqmif6gbMcf+z0UVTq2EJ1mfov8bTfAwYkLW4+hjgmjJPl/YnGNNAMz+QbX+l2r2p4nKab2mVp/kBrHFPtlRFuQdpEJ0l/e43dcBk4SGwUdFOLEEI6TVemIDIiRYjCkywgnyKUJcfTKuMW2yLzOhTCRy2q2XW4LOlS88OBEthmkXT+2OqAuI+HYnG8B7RsvD9I+9dTrqP+aywK9yaXZ8qKPPGgs41vojDwu3P29BtkhTFxjxAhV4GDC3yltPm9xO5I9tG+yv5NCOMwvBq7VWo55DWO8QCBD0Q86NotfQ73BSEoPF/w1ZBIWPgxc9CbCiRmvpLQAJWRSV8ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+3IidhJYyCvV5sVQUpjNDy9kwlqgqZ4hkPlOnOxLLhs=;
 b=Cu+ruDRFtqAl9T1TAySc5ShuT5lN2UabS11S6vUHJ91qMe04HgC2dMV6k/2kI33QBJgaRWTmsHUn27vkQr8KYBWLWT3Q2I9lq4cnzvdtQoUjyTDhxXeRJpzwX6QsPlAdJ8wb56/5RQ54ac2RVtxAziu5kw723bPMU+EcfOgHQbvv02g9Kmyb+ap5jrYkhYh0dWoCsf2RaiQ3BcKuO+KeBnb2jl1I88osGWnB1vEH0znaP+CA4kN/K60DFqVTa4x063Rr34GKiFwXmiy1a3Nm+8ZYmD6klgeOHka0fwMNj2pcyl8jTu59xFZNLJGbIVHlxF1s6PrxsLTghE/U5oswqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB6516.namprd11.prod.outlook.com (2603:10b6:208:3a0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Tue, 29 Jul
 2025 15:03:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8989.010; Tue, 29 Jul 2025
 15:03:50 +0000
Date: Tue, 29 Jul 2025 18:03:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, "Dibin Moolakadan
 Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aIjizdet9ZUXB-yx@ideak-desk>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
 <7b9d3439-ad9b-4ebf-86ee-0aa1c7b87b8c@linux.intel.com>
 <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
 <aIjcRFU90s6Ml9Vt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aIjcRFU90s6Ml9Vt@intel.com>
X-ClientProxiedBy: DUZPR01CA0060.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB6516:EE_
X-MS-Office365-Filtering-Correlation-Id: 839b8c81-8b3e-4df6-504d-08ddceb1206d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QW/8TQquF1JA5N77OdaGZ4AaJHmy/ahMb9Etg+5+DvhuBB6/gbIdgwyVMEJg?=
 =?us-ascii?Q?EYvwCIPZCJ++qRIgoiNhp5ngEOx+eeSbzXQFa45N8yO4DKTxrol9RrjHdGKw?=
 =?us-ascii?Q?ZEZshDtixl/cN7weplswU6cmpMBqfS+OyEPYFBU5rvIb6sAmufgqHTEfsPVy?=
 =?us-ascii?Q?bEozaKESlIME04CN2g2b/laogijS6p2F75qv206OPP6WA2XUNdhHtM/tXpQD?=
 =?us-ascii?Q?dymzj32tvgZy5Ib9dXHr4NPnJXFqLEvBbQesFaS2NBElqxsgJJA9BsyEoNY3?=
 =?us-ascii?Q?rm87ecHxa4JVqefmCbfkLe24VtQZsvALia5RobHJSdXhIniOiIt1ERhBsodZ?=
 =?us-ascii?Q?n1e7mTivV+YKucl68BZeQkya7nauvIxLOftHCwTw8FM+zPSqavYKT1iBtytp?=
 =?us-ascii?Q?+r6tsSxTs4uK9/8lJChvIacNKL+3xxgij2CGEWnVEExU41bumWVPCZVmVLdK?=
 =?us-ascii?Q?1V5da/+9VaW2D+aPEIwcy2LJDWKqBIGj80vUZJLUjj7NlJCUTl+cu71WWr2T?=
 =?us-ascii?Q?k8S7v8zyN/AN5ekhjOnuCBAJyaF6XG49UqS2eHzHpV01gvT1N0Dmoqupop/C?=
 =?us-ascii?Q?F+R5UNqsG9M872VEY1Lq+TjzTGypWLKYkDpncCbKUvcqMcYVw4lN8QuaER0J?=
 =?us-ascii?Q?jd65KFvAeFTUFbJGNiMLcIzxTIu8mlitvc14aTJj771jBoRL13dByjV8sePg?=
 =?us-ascii?Q?3FFqQ7EAF6kuGP/mUac6wk3aNFWncgtgSdN605gP0cd6KVp3i3MOWl/ORjSn?=
 =?us-ascii?Q?XDLeWhxbZxwErtcRDY1wv4I/X9w6TAC912Ku2L8MsYuZ4t9quJtx6YgGALD5?=
 =?us-ascii?Q?c8avVrNN5hXq1xuDs5663zdpzfU8gY0fz/AxSsATR64h/fC2EL5Nva8fFz8L?=
 =?us-ascii?Q?SEbIsjy1UyRpE4xXLKe5Yq4efEMbY6ZRrCfn9hCZ9PP+4iu1FlLQ0Wl8dNIi?=
 =?us-ascii?Q?HFDToov2TCEsK/c+xS7D5Bb8T2aa0rcZ28+m7IpJcYdK/Sf4vS6MDFsADFzs?=
 =?us-ascii?Q?syMrjh8NO7t3Y+MU3xidBBicKrMaq89hYvUw8xvDNTvFRg/BYzQMyJkgEdy+?=
 =?us-ascii?Q?Fe6xETQbjrbClL++bpEvHq+RkkAoUHbrxiLv49UIupzAwCANi3bfb41hmo3z?=
 =?us-ascii?Q?ixDiQhS1e3veO8RsDmCHjhQTWR9ie1l9belV36scBZd/elf8RwEm8Ip87XbH?=
 =?us-ascii?Q?TuQWYAuIpSMRnj6U5EpCMxGAhsp32RfKD7V297RBeiECwsa5hPp5vfuC9G4c?=
 =?us-ascii?Q?WAo98VpZzegQXTRoq2V+BGuf09qoyvj1pjSV1//3pw04Vbc25zIQ0jlTCe6u?=
 =?us-ascii?Q?5npGSLVxC1b5yFFoVO8H8ceIHAu4d4Deg6aKg/XJNWAjEDdQlAIVWjWcfJyS?=
 =?us-ascii?Q?PME2UGeZb9/f6dscgagQBskT/vIAsc0uUfZIvXWxNRl35afCGuUdejYzpnvm?=
 =?us-ascii?Q?pKkadOnyiBk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rB7ngzBQHw/1vZ+OrhpmpZGEUvV3g6HR8hKWEwspk+Ipblo5Yk/P3P/vbj44?=
 =?us-ascii?Q?yvsxEicOtll8RBuA3VJipUHs/ma/qEC04HrGBJ7dQvv4Y9pnxJdz51jLak3M?=
 =?us-ascii?Q?/bfCdDPbirCK9QqZpaQWmvN0yeJq7oWONLqJnKLdJfsKXScapBTF1VpQCeKa?=
 =?us-ascii?Q?dACO3l/hZU97+Sq5G8IGTZq383x/3kSgdCWy9FM9RDfY54giEBpy8ZQrhifi?=
 =?us-ascii?Q?NhhF7CzD6sWCBcTXJqcuytd1iT8+0cMiXDObW0XIiJ0qCqxTAOUMmQRElKoq?=
 =?us-ascii?Q?YpEKSImyh2+/oZhyAcpw9u7rxn9oYGvN5hI+UDkIY4hmj+68q7/T3Wl3m5Gt?=
 =?us-ascii?Q?Bc2J+Mw5m6Af7ikLqK0OIBESP47vwUAxxOp/6lbbs3tDgEj+WX7ZwBQQ7FOA?=
 =?us-ascii?Q?qGpDjQ4xMw7zWn3kgJcq6lBzqC1riIexIWF4cwq/RS2aH1G63aV+KggptW4V?=
 =?us-ascii?Q?hQg9PV5hc4naTASu9sx+aIh7qpkuAdO0CwEJO2NHamUW7wIQRE6jcuKvLRVc?=
 =?us-ascii?Q?d9KyhIp7IUQLKisXGr2OEYFsjxI3Snl8un6OgvEiZwSGoEeUCmZUGyiTjMPx?=
 =?us-ascii?Q?ZhUm33hChMj7H/ct2frFnzDzJTAZI7Uwc3kBQSDzLbRhLeukcW32wf4L37X0?=
 =?us-ascii?Q?Ic6gRrs1DVZbVQzngiuOFcUvmC4eWuNxFwsPy/EgF409oWLnYCMmzmM2SPAv?=
 =?us-ascii?Q?a7Dx6R7BhHiNTUto0Unt1/C1e+NV8Z3y02mRAVOe0NVgpTFrNqrDKG/u8Pmn?=
 =?us-ascii?Q?5OVylmbF1f3Zf1CTZ5Sc8+mEWvofRvnduIanbgSoQEDfzGu87GX0yXgXae+1?=
 =?us-ascii?Q?Zehc7396lRfqbvUgs9yB9Wb4rUHoRmwA+wSl/YpbHvoqJkW80dHVuf01ZsMF?=
 =?us-ascii?Q?SYZwkwEX/T1OlBKmJOPOp+UTngyJz2UQzoE1vIv3yid/K3tAm64AOatHIxWj?=
 =?us-ascii?Q?W/s2uN7R4Pt4RFEJ6JMX1SH4okBvuV75GwBUQnnFhZTR4XTnRbHF+O6yyVDQ?=
 =?us-ascii?Q?wzKaVNpOwQ5n0GQ8Kx9t7rIH88/vFIJS1+a92aPyFpSQTlTOaN1uVgfgyVFO?=
 =?us-ascii?Q?dun5+ueMKY5WYhfmytsH7uBHw8j5XichPPcZoMXcc7s8TLZZMBkARTEYaR7x?=
 =?us-ascii?Q?ppePQcq8LH31Gffgpci/fOU74AhoFDBZv1drxCUj4bFruqVfHX15YJ+YikAj?=
 =?us-ascii?Q?73+7Kufc0BUwFqbSI3zlnzpz3omkUKL3XwVdAhKzz3286HZEOxpjW91HNBAa?=
 =?us-ascii?Q?LS/9unjM6DaZS+yl6tkiFmZLlmDCGIaswKh9+Fx3akwzuPbTK7u4bJBRLK/V?=
 =?us-ascii?Q?tI4TOVnD2GCTRyTMARvZ/xnjQO700Nieizv8kZBQgpreXj3UJIN9Ibnd/d5e?=
 =?us-ascii?Q?R2YCohCAI5OgnnG8BTFBWiP6M5gnCxsDxslU84aFNmj7TiCQ3EhIaEFsBw6m?=
 =?us-ascii?Q?eDZczuG5vBgIF5S6cEZ1TEWKFxNyt8B6lV6SAZ10zLi0FaNcI1jmolM8gslv?=
 =?us-ascii?Q?BHD7REMlVpDG3db413kYt50rcfYXOEVIQmOCmCoFmjNvjtNL1hgbZygsZsqh?=
 =?us-ascii?Q?tFQpQaLkrBHT4AFIQo7q5kIAYbgL0yLki4FJt7kLvEPjfJGGVlw2r2lEHX7s?=
 =?us-ascii?Q?5QPA3JI3Ot7/Kk0Gz5ToFX1bH0Moqv+NOlHBOoVSN9Zk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 839b8c81-8b3e-4df6-504d-08ddceb1206d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 15:03:50.6826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xNJRaLXzUHnYY5yBdpv/1ZPWMcYBM1HcoT/7sE0aUPKHRxQuHS0Tk3nM5/0w3KuwMu9L2GAy+H0VY1oaTM4iGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6516
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

On Tue, Jul 29, 2025 at 10:35:48AM -0400, Rodrigo Vivi wrote:
> On Tue, Jul 29, 2025 at 12:44:47PM +0300, Jani Nikula wrote:
> > On Thu, 24 Jul 2025, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> > > Hey,
> > > [...]
> > >>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > >>>> index e2e0771cf274..9e984a045059 100644
> > >>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
> > >>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > >>>> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
> > >>>>  	if (!xe->info.probe_display)
> > >>>>  		return;
> > >>>>  
> > >>>> +	intel_hpd_cancel_work(display);
> > >>>>  	intel_display_driver_remove_nogem(display);
> > >>>>  	intel_display_driver_remove_noirq(display);
> > >>>>  	intel_opregion_cleanup(display);
> > >>>> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> > >>>>  
> > >>>>  	xe_display_flush_cleanup_work(xe);
> > >>>>  
> > >>>> +	intel_encoder_block_all_hpds(display);
> > >>>> +
> > >>>>  	intel_hpd_cancel_work(display);
> > >>>>  
> > >>>>  	if (has_display(xe)) {
> > >>>> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> > >>>>  	}
> > >>>>  
> > >>>>  	xe_display_flush_cleanup_work(xe);
> > >>>> +	intel_encoder_block_all_hpds(display);
> > >>>
> > >>> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
> > >>> be blocked only after intel_dp_mst_suspend().
> > >>>
> > >>> Otherwise the patch looks ok to me, so with the above fixed and provided
> > >>> that Maarten is ok to disable all display IRQs only later:
> > >> 
> > >> Also probably good to identify the patch as both xe and i915 in the subject
> > >> drm/{i915,xe}/display:
> > >> 
> > >> and Maarten or Imre, any preference on which branch to go? any chance of
> > >> conflicting with any of work you might be doing in any side?
> > >> 
> > >> From my side I believe that any conflict might be easy to handle, so
> > >> 
> > >> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >> 
> > >> from either side...
> > >> 
> > >>>
> > >>> Reviewed-by: Imre Deak <imre.deak@intel.com>
> > > We had a discussion on this approach, and it seems that completely disabling interrupts here like in i915 would fail too.
> > >
> > > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > >
> > > I don't mind either branch. As long as it applies. :-)
> > 
> > Please do not merge through *any* tree.
> > 
> > How come you all think it's okay to add this xe specific thing, and make
> > unification harder?
> 
> I lost any moral or rights to complain here since I couldn't move with my
> tasks of unification of the pm flow :(
> 
> double sorry!
> 
> > 
> > intel_encoder_block_all_hpds() is *way* too specific for a high level
> > function. Neither xe nor i915 should never call something like that
> > directly.
> 
> that's a valid point indeed. But I cannot see another way to fix the
> current issue right now without trying to move with the full unification
> faster. Do you?

Imo, this should be fixed first in xe without affecting i915. Then a
related fix would be needed in i915, which disables all display IRQs too
early now, as in:

https://github.com/ideak/linux/commit/0fbe02b20e062

After that the xe and i915 system suspend/resume and shutdown sequences
could be unified mostly. Fwiw I put together that now on top of Dibin's
patch:

https://github.com/ideak/linux/commits/suspend-shutdown-refactor

> > 
> > BR,
> > Jani.
> > 
> > 
> > -- 
> > Jani Nikula, Intel
