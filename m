Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00124A23F8D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 16:20:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E94910E396;
	Fri, 31 Jan 2025 15:20:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I7B9OFqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E208D10E396;
 Fri, 31 Jan 2025 15:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738336852; x=1769872852;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RHP5IwVY8WW9IsmLFaLCi2xlnFpZpwAJoWwZpAnulK0=;
 b=I7B9OFquYkWErlN8eyqJTXf1k9zvjSKb8qQnNPBR+0ZSDGBzMnrQw6zh
 2AUlapNk72gsFXYbwOYtBvyFimRxuaTgoDv5j9UCMYTvPoXfYiUqh/h7o
 bWrYsz7iKVcAvpMr+NweWQJNVZOVD0GdDO/brXPj6vM+ZgijudUvU5P1r
 RlB1TKUXGkEUsLLrwEM+Ne4GZKtVg9ciSyXDL6zmW3lpk74FD0xfHLQuH
 9Uvk8S6AYr82Tn2A2eXKW8rziRcBvoGUw/NxG9EqGwF53LGra4OYODBoo
 tdBS9x/0LNc4nGeoOFMdphfElpaeZwwDENkt1KlbDLsjQF64WqM599dN6 g==;
X-CSE-ConnectionGUID: 9PbnMatPRlCi/LK52ClhAA==
X-CSE-MsgGUID: pv/h7DztQyyY6cwT0Y6rtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38797001"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38797001"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:20:51 -0800
X-CSE-ConnectionGUID: 5psgKV7+SeqVt9DkMbgYPQ==
X-CSE-MsgGUID: GxbrBsdQQQajF7hjMD6zbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114657156"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 07:20:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 07:20:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 07:20:50 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 07:20:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fLenR6i4pXys3GBpuMqVdw0mP9UQju3CHYPS4oAiOSXg2LkrJKGsO9VZhxjFSOBE5R4BRq14YMukIgERkd1igdAF56ZHZX4tz3ikM3NBhG+MYbJ8dooB9DGg8Ir/WX5fY5IJLV7L3gcHX7FXVGIMLWRJWxYNqsxYFcq4a00doLD9VQbbdLQnU8pOZR17nMtAizPDmviXM+HkNiiaBTd1wBzhMjmly2XQseOXEQIxad7Z7xOnSDlH6/3peN1pX4gYbPQXgu0crI8HX3wRRRs2yu1fQIzuQb9G8PQNjxMLiQFG4QPpeTlhYNQeF58cx01GCGP8AdI07WTwtOzBDAsm2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QwwG7ZuKozrQmNhLkvpJ7PVKVLgthRWbrjGcRpFcseY=;
 b=BnJg4/tnqc3p53jRPrrQNnTzRuCuDrLsMtPShNXX8PU6JY9B/4iF87dUDn/V8OPK8Apb/+cADKP+3d2uYTBvVOjHfT1blRzfqak9erMquV5n1db5ytp55lX2nC1BrXR3rpMXc6q8JcGyr1tvfanmSoKF5TjtZd3pisfkvSghKnz8lEEBcGADSMTU+NCu7EthDASzkftOoy21B+osLJTWIZ2VmauNmcyE9kQtjAz6j4P0iiFP8+4T1Vg2V2WAZioNx5BzfcZpI6e5lH7DdpeE4i6wk5RSRMx1rySqm90F4s9vwoKFkBlX1K0zGRhzCpDoXNsnbF4PhW3U1q0Bdu8nvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by IA0PR11MB8398.namprd11.prod.outlook.com (2603:10b6:208:487::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Fri, 31 Jan
 2025 15:20:20 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8398.018; Fri, 31 Jan 2025
 15:20:20 +0000
Date: Fri, 31 Jan 2025 10:20:15 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "david.laight.linux@gmail.com"
 <david.laight.linux@gmail.com>, "naresh.kamboju@linaro.org"
 <naresh.kamboju@linaro.org>
Subject: Re: [PATCH] drm/i915/dp: Return min bpc supported by source instead
 of 0
Message-ID: <Z5zqL0li1BWUdIgw@intel.com>
References: <20250131041342.3086716-1-ankit.k.nautiyal@intel.com>
 <SJ1PR11MB6129AAFC239494D560599632B9E82@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6129AAFC239494D560599632B9E82@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4P223CA0021.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::26) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|IA0PR11MB8398:EE_
X-MS-Office365-Filtering-Correlation-Id: 65c3779d-742a-4936-c6dc-08dd420ac641
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MvUCwq2OTx6WMGn/dFS3PWors8cCBhTTA52HPWAmHAJgkIxa0vKN46cf/us6?=
 =?us-ascii?Q?UvP3itwc7AI5iF5h3+O9l6wSlw4rPdTBIv6tcTgKKkSW5qR7RBvv8b+fPa+i?=
 =?us-ascii?Q?urO8tx9sOTFP+tifOdSF3j+PtNa5kVTg/R4FxElM2YKZC+pkIW2psw6RCSi9?=
 =?us-ascii?Q?SJ8EsWwItoX6tdy40a5eNhMOKrmr9YuKzGCNsPCEeCCHwlOiR3EOwRtrYmGy?=
 =?us-ascii?Q?yrPwhAErv2rlZtcyiNJgd2SzQHhwQEZ7yBbQXJ6hzD4w3xu7FwSv0xBECTgE?=
 =?us-ascii?Q?odkM1OmUlFy7Z+nDTqArfE9w9Fe12UAWBvTiw9EEJT7Wc4PmcdN+s59Qlfkl?=
 =?us-ascii?Q?GGQ9SYhKMjzOgilwZ+JdWznrjT2Z64OlJT3cVAlL44RSU0zGjcGSoqAsRAhn?=
 =?us-ascii?Q?EDgvwh3s+e1/huLVEDBlKNhqVcoN8ukfehqndODk/rb6r13NLcxITcROH1Bg?=
 =?us-ascii?Q?juWikE76HXciU1rxRh8fpA+Oj29UaQzjgnu30WwVQr75fvuSwrFhEfSjSuZI?=
 =?us-ascii?Q?lHTGYdoywjqYKwpR7CoS7WMy+VR1ujmlZ81uVHpUaoMLVB7MXT/n+V6I9M6V?=
 =?us-ascii?Q?MsOoxScuNjWBxFqEAO6Gqm3ne23ccoeMfvXXqVmbzdxns2P8tmxxxUkfAjYH?=
 =?us-ascii?Q?k4v0Q0CBGx1lBngazJWSW97w7lqrFYhs0qbcou2Zj5vMqT5pJImXPTa1YcTP?=
 =?us-ascii?Q?jCgXZBrlQviFm236M4TvE0sk0Kt+uBT9c+tscnBVcoNRBGGwVq+vqFHHbNTk?=
 =?us-ascii?Q?pBsgKq3q37jfFcBhxQe+P0f03yln6KoDNEFCMdUC/8kdPiRF6UIo/ME5T/9z?=
 =?us-ascii?Q?emx2IXmK+AEfeWmlANRyjs9siC7Q9rta+FXErTL5M7afGT1yhdSP1GVnxF8E?=
 =?us-ascii?Q?1ZqEWgZAcnULsDNBRgl8UeP6mkmFexoxET8YQOL8KsZMBsUZ7eygaz0vrteD?=
 =?us-ascii?Q?6IyUDu2RLF3yekNEKmaj/ikivz0C9ASuYx3EiD4iCm6jLZ+lt7J4iLfEEzAF?=
 =?us-ascii?Q?yCeM6hrflU/dWzP7xgEGf1nRJUW5HFpHPnOfiIivawuw59f02M2eq7uDHzvo?=
 =?us-ascii?Q?Y0hoqKJZT1I8fdVEqTjuFtcdbWhvZvxvjDtS1y53zNb7DYDTMCJyW/JgINHN?=
 =?us-ascii?Q?RDT7eaAp6Bys2RyXdNn7ReTJN8BwgwKQC4BbFkOHkWrHke085IFblAEVuNIr?=
 =?us-ascii?Q?wVOEnInNcUwL6o2EfGv/FZS0WNInGydis3k7ejTk5xSLEIpyvzxvUG/COQaD?=
 =?us-ascii?Q?iuppeRwHRLVccIG0/qFe2Gr2dpIsqPYLT7lh2xIm+jZTgZm6V9ZdTuPpyrXl?=
 =?us-ascii?Q?H2Q+pSWULxDqNMQBCdyaAqY8hJ5fQxG9Ff5GqqXwi5NcpbYIRSC0/TolZlYy?=
 =?us-ascii?Q?+8MyP2yufXk0vh7tuiA5iJ7lYWuH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BblMnS8s1hwYJvEWYUk+77XK/BljfjXq2kCwORfYTb/p0qmaVAGERbGU5Et4?=
 =?us-ascii?Q?eRedTmFw2uEyBuUm/KrbETLPEqfNF9cyeBtB6HkmU4+2K/Z5lR75CzLCi4HM?=
 =?us-ascii?Q?jO4iMEZpZvMhYyxy6h6oiuh/bevjCTbCu4zHyWY6RoGNDS5miY6vtzQlf+x7?=
 =?us-ascii?Q?o16VqIYADjKqZnjeB59gLeDM+wUypE0s2Nana4dh7a3CF+Mo1BzfPipRtwZI?=
 =?us-ascii?Q?1/BCD2INk8oqa2QPMKhbBz5yQtfXgE6V5LS4rDygGbZ/WCzP638K8qg6pXGP?=
 =?us-ascii?Q?W/ylymu7v7kNHj9483FbiV+XHLwiy27UdcKJVhpEvzgZgtjdd3I94h38wqQk?=
 =?us-ascii?Q?N5g6Htuh48adQk/5f31p/1xIceKrljeZzHXNA7Dnu/Xm4GzVl4ZmdeLscpAP?=
 =?us-ascii?Q?ifjG9uaL06xG5Qbo7BX9nE8pfVwExttiZmDk6h5TzELqkrgxOItCq4naACzF?=
 =?us-ascii?Q?qctLSWpwBwIGO7wM1GODhLJf8ohM81mw9w+A3g9zNuojBPkntAvKG7G5cUz5?=
 =?us-ascii?Q?NuEv/CaihxkHL+3Ujw+6muTWgxT4KE5OT+XpPA29AkTw4KWSJdfjgyB1PrHt?=
 =?us-ascii?Q?SmyfCVhl2Q5IvVuEPDevMMVoKxNxxj0mN6JZYzTVwwSse6EC/6+G/IJE5Qgj?=
 =?us-ascii?Q?v1eHRejePOKyiyXSNe4HkdKDzZMmrlOY/cofhaRKxovuOg49dys4/mc/+bg/?=
 =?us-ascii?Q?Koqu5arHfBPeyveaZqGzU5iYP/Ci0pPBj7SfVZrmao6hwQ3ogmkfMGpWQNx8?=
 =?us-ascii?Q?sVINS/6BLhJ075RtJ/l8/LirzzdJ+DLMi9DbWw9LQGTqLmsLn7ht9paqo1Hn?=
 =?us-ascii?Q?NvW8AlQLtcaDsIIix3eB1FSCM59pGqGKZnUr3TRFBWF8LhS1OkqPJC+ctmGf?=
 =?us-ascii?Q?LLtvrALFjf4KwX8PeCUx2giMgDRXtC/SyVwV4TlIG+NrtiTDa7W6HZEsU33d?=
 =?us-ascii?Q?I8T5UA5AGLolLwSDOvLsstSUTC+Kb8Hg85wHB0zpiny7NPlhNBkZ7nHBdF3J?=
 =?us-ascii?Q?wV+CWQ8K0Eo5kgAVYG7IwnCQzgNcU6dNalbJ+Dx3uE590CpwacwCX1plUP7d?=
 =?us-ascii?Q?+pEydt0nYo9PKbNwxp/5i4/NzO55oaFxUOy1rgEc2AAT5BXlFpYOOrhPGOe7?=
 =?us-ascii?Q?wKG60m+OqmIXxB7LS4bImAt01E1Xx50UEZ7W6ms8aI9OY1IPOHcoHejXPGAU?=
 =?us-ascii?Q?Sqf2S+npWhZeVczX+wa4rbLil/BRrtUhh/qNkx3vcnHW3DQPBedsZzZ/wH9T?=
 =?us-ascii?Q?w8xgBJdHtWDJHQWxkFE0rlVGtfgfKwl3lbYwKSgb9hDaxHGDHiDfKklYyoxw?=
 =?us-ascii?Q?o7F/ZNej5Q34TSbrNDBIY3of0CxNvEtlrBcO3dqvK7Pw77bveMrd3PgjRrwF?=
 =?us-ascii?Q?3vAmoWsveUTudtNxJWBVIPluPsKC3TxLkdQsODZW/kkA501FB4Tbv4pRfXx2?=
 =?us-ascii?Q?bxhI++EKYTPTtFDwyYifqD/E6e1GfnxmM4Lk9DiXqJt/baAZH548w0sNPKEg?=
 =?us-ascii?Q?Y+W6FauhRFo1k933im8b1j95et1k2sdJ1ZBD0pkWJSg68S0063QyAd2xY2/p?=
 =?us-ascii?Q?Tfj/A8g6Y8R0EIBJTXmppOHbCRX+f/IakP5Tp69H8iDti2JenkRpsXCoMjMU?=
 =?us-ascii?Q?mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65c3779d-742a-4936-c6dc-08dd420ac641
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 15:20:20.2815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aOreTJapsnQZiqtaGuw4fEPpmBoET0Vn9f1ctqmGRGDVKifi+RVVxuy3g4nqL7ETwhkvAPFHvO1TVCx/A2yuTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8398
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

On Fri, Jan 31, 2025 at 01:10:25AM -0500, Borah, Chaitanya Kumar wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Ankit
> > Nautiyal
> > Sent: Friday, January 31, 2025 9:44 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>;
> > Vivi, Rodrigo <rodrigo.vivi@intel.com>; david.laight.linux@gmail.com;
> > naresh.kamboju@linaro.org
> > Subject: [PATCH] drm/i915/dp: Return min bpc supported by source instead
> > of 0
> > 
> > Currently, intel_dp_dsc_max_src_input_bpc can return 0 for platforms not
> > supporting DSC, which could theoretically cause issues in clamp() due to a
> > low limit being greater than the high limit.
> > 
> > Instead, return the minimum bpc supported by the source to prevent such
> > issues.
> > 
> > Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
> > Closes:
> > https://lore.kernel.org/all/CA+G9fYtNfM399_=_ff81zeRJv=0+z7oFJfPGmJgTp6y
> > rJmU+1w@mail.gmail.com/
> > Fixes: 160672b86b0d ("drm/i915/dp: Use clamp for pipe_bpp limits with
> > DSC")
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> Solves the build issue for linux-next.
> 
> Tested-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

pushed to drm-intel-next. Thank you all

> 
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 80214a559013..d28abf081844 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1791,7 +1791,7 @@ int intel_dp_dsc_max_src_input_bpc(struct
> > intel_display *display)
> >  	if (DISPLAY_VER(display) == 11)
> >  		return 10;
> > 
> > -	return 0;
> > +	return intel_dp_dsc_min_src_input_bpc();
> >  }
> > 
> >  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> > --
> > 2.45.2
> 
