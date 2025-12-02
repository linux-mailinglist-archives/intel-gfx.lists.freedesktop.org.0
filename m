Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D73C7C9C8CE
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 19:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D9F710E69A;
	Tue,  2 Dec 2025 18:11:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ASs1+S6g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81B410E698;
 Tue,  2 Dec 2025 18:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764699091; x=1796235091;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=de/Jh4+crbXy1Vrz3+vvQtM/cl0BRRhpLM2Ctbbozhg=;
 b=ASs1+S6gs7SGgZbgRGtRFzGLncBypvt5uxFk7x0Wj0HaAtcRphjWlq3b
 GUkVYnS9ouEThfh/wj3E05/87bgKE8vJ2zoP/KU2CKOfEIiCfCp2W1zVE
 wsQoJdEkhWR6/dSl0vKpMu0hcX0PfSEVyImiL0m+Di8qJ754MZTO3hsWV
 6DJ7YuTiVvRQf8IbQgIuKfMoIYg0BJ0iA1qNGrYei8XFQi55CQVYERlW+
 86TiVTANj4U4Z+FQ/MJnHznxaRdbjGradRtFwqGXuYQpwle1OZajmPrdv
 GxSBdl6biMotvYFl98cc7u1H6UAryMzEXPPg4/kv7tb2k6zJg/e6/RPJl g==;
X-CSE-ConnectionGUID: bqfBsvQpTY6mYm5wGMAedQ==
X-CSE-MsgGUID: s1HsWu6wTV2D8JMdW4jDtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84278370"
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="84278370"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 10:11:31 -0800
X-CSE-ConnectionGUID: WGORwFghREuVc8dsIrSTqg==
X-CSE-MsgGUID: 3HNAOe8sQO2d8hxS8vMToQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="199393470"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 10:11:30 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 10:11:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 10:11:29 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 10:11:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K4H9kUxRx7vBfifoXnsDsImgXSHyPuPKfRAHOj8M27LXBDTgrB/FL9gubsPAgFUWcRz17XSLJIymwGXS/RYbxYzyQQ7deqaJP6Zzs1jetlImywzHIEr+k2f5/Rq6YkbK75ZKclDpM0abha6/EIgcaauhe//kMXf54q7vVg9H3bEEcx4AX+7fJSTzK86SNcMZkdjnIN9XZShgJfSd5IzfD+Z/JuGRGUIV7D5cOLataR5Vwn5TTzSxH832spcH16zkmcNmv54oaN4BX/CMdvDtOHXYn9oCGHDgQU/Tkw4uV5Xiljg2n7byy3/tun4bCSg/ckQQ7gldhPGGlf3amULZMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6+sLITw31Y3XeAWC0s7pKnqooVlEzy4UqpAecBS9Yo=;
 b=YLjC5XseYhk8hJjqZWWmWJjN3HNSfBFMmdBsUZvXQl7F9WFpoCtjLA6ose3N66UUynrRoVA18g/CqP4zX1qPJGBRSBlUXvwU9rMFJn+S/iUM2nQ9EUi8n5FG3dDH6xm61rCgREtCgoF1lcC+eC0gGaoXkoIGFzkJ/3fnqvSSwPTqb/ggQyMSYTnSBUtoV5p12lg2YNW2lW/VPvY/dqc8l4NPEIiShe+Bl/75wpqM7FwwdnsVnCbbf6i+ZSAirdK8kVhRhkfjau9Qp4ZVIYG+CDR2re1Wkhvz7b/lkDVOLXSIzPSJu8djtHS0AIRooWbIzZBYtbjpECdNOa07irmR/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB8569.namprd11.prod.outlook.com (2603:10b6:510:304::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 18:11:27 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 18:11:27 +0000
Date: Tue, 2 Dec 2025 10:11:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <dnyaneshware.bhdane@intel.com>,
 <gustavo.sousa@intel.com>, <jouni.hogander@intel.com>,
 <juha-peka.heikkila@intel.com>, <luciano.coelho@intel.com>,
 <ravi.kumar.vodapalli@intel.com>, <shekhar.chauhan@intel.com>,
 <vinod.govindapillai@intel.com>, <imre.deak@intel.com>,
 <jani.nikula@linux.intel.com>, <suraj.kandapal@intel.com>,
 <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>,
 <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH v6 4/8] drm/i915/xe3p_lpd: Handle underrun debug bits
Message-ID: <20251202181123.GJ4065316@mdroper-desk1.amr.corp.intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
 <20251202012306.9315-5-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251202012306.9315-5-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0087.namprd03.prod.outlook.com
 (2603:10b6:a03:331::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB8569:EE_
X-MS-Office365-Filtering-Correlation-Id: e90b0312-fe81-4c12-f6fe-08de31ce35b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?FjSiafNiNNGIxsUJ8VnEljzL0h22aWujL7ocPcs62TBgouinF/dLZePYE1?=
 =?iso-8859-1?Q?0Ge1EXp1M1YYzCT7DwAIPeqeW4p6LLAs9OAzIT4Ci1MSVQlP03vmmWxZqV?=
 =?iso-8859-1?Q?wBlU6q8q1VnFVDBVuJ4fPKrXKNwWQ2O3JEPjbxu5n0RYuagjuA+564EDhH?=
 =?iso-8859-1?Q?Jl17wajJutrhrArlssvu64C6A7IYjCK7gWm9SqAIq49fF4n3BvNIjeWaEF?=
 =?iso-8859-1?Q?97I1BUuqlifnYQqkogF76gukUiigaT3klTAFmc8bwNV6PlDFK/WCLkqllL?=
 =?iso-8859-1?Q?ZIsqvd/WZSkifVrIerA2abuVijHAI2jTgc1/Rjdeqwb5tUEjT+3/GDvM0p?=
 =?iso-8859-1?Q?METdqoSlW8qgi7J5W974Eh0kBkH4fur1YKqvm65ggfQ50yV6NCXO/5uGzN?=
 =?iso-8859-1?Q?t3onjTW7rP4dZOWCeHRnnvDnvunrWcBGFvpQSGRGypmukLFSkhKTwU4L8I?=
 =?iso-8859-1?Q?PKiaboUCBq+cTkjmGJ3PawIy4IpCiTJnu3tgTYwE2F5gijnWTOrnhA8ktn?=
 =?iso-8859-1?Q?bQWHOzKzpJgY3eql7LWSPjFznr33pU6E8zbAjlStcyoHM6pPUP+yK9HAEc?=
 =?iso-8859-1?Q?ZoWId+7pqOily665EYCT4GTczT3+qtPidkITqphiGWK6fThHto+xJYEY1E?=
 =?iso-8859-1?Q?uf06HIpzvd3tPBOzw2VZ4WwXO4WndUbW6+UJFmZvii/mdfvrdnjcdplEpU?=
 =?iso-8859-1?Q?K6OjI9n6wesQCJDdB2ODsoHHmqjxT+7ZRX0tZHNzlKvbeiF9MjAZokvFCj?=
 =?iso-8859-1?Q?Nr+v4iTjTWEHMv6B+lO9eYgQch0VfLQ+0PH2rmkeVc+IT1ynTRShY1J9no?=
 =?iso-8859-1?Q?q1bQkKU7mLyzUV/W6RjO7y4/GCBrhexoi5/uAIwqlBOZJENgAYx+nhhCMB?=
 =?iso-8859-1?Q?Fx57HcOU7oR/2k6vSa7g0rdU8dVxS8rMQCXx4JgDD/CWXKEZDpVasQNRlG?=
 =?iso-8859-1?Q?nlmbuJkebr8nDn1TSihUtwus7cfEmEcN7g8WUjASCVGWnH9L0R54mPjfAD?=
 =?iso-8859-1?Q?wMtGNwTmhu0ovdEzm/6VtZK1Vja/X6g5iFP1hwXrFA5fUEZsBpuVhlAOHZ?=
 =?iso-8859-1?Q?1m/3aj0qhCpu57opZEttXO9Zbv+tbADhtvF+d8cLKKATBHRuBv6R41Wv6Z?=
 =?iso-8859-1?Q?iwl675+ecULFJog7SsTdYxNwETpW5ntXRbH+3ZIAC4gvKzmvnuqGNwvWy3?=
 =?iso-8859-1?Q?zEUjmq4PIZTD9gpkl5MET3Z/IIIsuPk71iVwJo2LqhebCB6nJo7MK0L4Xa?=
 =?iso-8859-1?Q?5Z+3dKqGU7nwEXCDGq+GNUG9IZZGrXB54Sd0ax+UTis90TRiWWkJwCnBGe?=
 =?iso-8859-1?Q?lKxQ3pI851v0X7NmwU6MGHze6P5WQM/LXvnH1WNHxySwAfKiOkTMO3+Lj6?=
 =?iso-8859-1?Q?9iKd/6cV1I8EgxW7jGs6XCheq7z2FQHHFeM2dbrIrkRusqyGqWhCNqEnqH?=
 =?iso-8859-1?Q?5K405MdeAlF+ihxBroV4NVGxQH/cKHezHttTJVD5rOLOyrs7jnlyyVGIqZ?=
 =?iso-8859-1?Q?j0CtnsPQwIl+aUvnqSNe/OH9490sZY2Z1et+hPfxVxTA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?XA6g95hi+YFsJeUrB9HA+tAw5mwZSdmAzx6/V7iQX6xB1N3LxZZizAQGHh?=
 =?iso-8859-1?Q?hq0SH0gp6kmHfoWeSGVsbcWEZfZL2q3Jm3Mr4V7/TtfIXAayYlgT1r16ef?=
 =?iso-8859-1?Q?M8x65f5I3nfiYzg/U5SQ1G+HxY5sGmYnN5dbUDuxIYkgFVFhY+TYfTuXVG?=
 =?iso-8859-1?Q?13L/3GYzsjOmHBFSUtemDYivjZQLIn84i0+PzHYm04v/OKFmETHLr2IuAx?=
 =?iso-8859-1?Q?S2rrtjAkgab46DmUq0feUlVLW+OdIzO9uu0ZFq0EsV0+PG0Wl5z2CbKn2L?=
 =?iso-8859-1?Q?I4Vu260m/GQia3Jqn6ywEmXzTEVpfErNKjBdLHcS3PyOKJQKCq9yZJ8qFX?=
 =?iso-8859-1?Q?RbeXAbLANxE/QOIP2yL/IoTkgvAHZAtcw3GGZIaRU8aAmxk0UupxMYr+UW?=
 =?iso-8859-1?Q?gGePiF+yLuf8O4qli/z+vu13c8dT899S2wbHj36WwtHmUYXtqgQFoQqlUn?=
 =?iso-8859-1?Q?VxypfTkoyf4bkP/fAXLxirmX/nd/PBE+bMUgHuXHHxw4bM9M897+EMvMIx?=
 =?iso-8859-1?Q?b71kjHxzcVAPpJaOb5pqnlaN+rNsDHh1iC5YXAaNlWw1qTTutPEok+G3XL?=
 =?iso-8859-1?Q?eg0RlFB0RDO/Lvxx936Daftes2GcHGkOxzkOny/ASs2VLEHKOwvLbpzR76?=
 =?iso-8859-1?Q?qbSuTttlRbrlcgjVciDQkCVE/LHJWfZdv8tJabKpj3NbrkFwc8nqly0OrM?=
 =?iso-8859-1?Q?qdluqbTOD6VDipmVzqMpwmVJzGGkEWTLosbIl0tveCH6ZElp0kau7ADWv0?=
 =?iso-8859-1?Q?SSfE0YWRQJB64fnpnqSsiyTKKxNJ7OKS2zrVdCYod2f2jMDf5Uo330As55?=
 =?iso-8859-1?Q?qTskqyGQ3Z6FzsFzvUFukSKE4bKfKtR6Axvi/K+8d0/+rpEH6oAOJjhrP0?=
 =?iso-8859-1?Q?pUGkFEovIVtL4Yxr+N0l5WD3IfjF3vVA8SOuUYDgNFTo6rRGcvZi5mMD6u?=
 =?iso-8859-1?Q?FK3ob6V4SsI4rK9/cCFPFWYx5KTKVgDQZvHuS6q66owiSPOzZ8ciLwOM9n?=
 =?iso-8859-1?Q?fTlbs7YSHeRdxuP0qcyE3i5hEv6a6ffvvpsU3K5CCZAhcUmLVgbNHp67F0?=
 =?iso-8859-1?Q?wj8qx5QoRPFeC15dwwzgpkE7lcTEfYrYuImjUj3hHGo5jGYioxkmCi9Rx7?=
 =?iso-8859-1?Q?KN6az6f9BSSyOXDB/uMUvoKinakq87WctgMyfShB/PCSogOyqCVtfU9CWB?=
 =?iso-8859-1?Q?XaM61P73q3tXNQDM/eSEn1FFaLYUZkzGnu6UF1ryuyM9OzgbdWM491bJ0y?=
 =?iso-8859-1?Q?EofneCyeGFJt8BIhO1ChttidnuAE5mUTzcooOjM8LVFpqPvd8+i46zvcP9?=
 =?iso-8859-1?Q?94oW2sw6qfYzAs7WMTmC8d2Gj0wZZ/06SXfn2Q6Vbo0bnvX8p7o5Nqgygw?=
 =?iso-8859-1?Q?dmYlBGbxL/ORJ1PHMY3ZdhzjjjDiYGmuDGDAF0jOO/85oj1Cv8oQ0nPfeN?=
 =?iso-8859-1?Q?ZWQpYRrd8SkY12Ccaggj3oEQQj1y1CUMSfd0YLd8P9HBoPv8c1WVymA7wv?=
 =?iso-8859-1?Q?faBdC9/Qpn5+6OV0T0lCSeYhiDyur92FTDytMFEvTx591DEOcVH41MMj02?=
 =?iso-8859-1?Q?k69yDZHdIklYECCYVa391wv169kqkmcc3IV0qsXhlo4NrOTHFhfWROJFIw?=
 =?iso-8859-1?Q?URi46g1Xaixb1XTluXulyKQdiN92nyu71No97dRIZ1Ay//J2u7rnGtLA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e90b0312-fe81-4c12-f6fe-08de31ce35b0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 18:11:27.0126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VY8IUg1cuWonBrOPiMprwTlxfEQaJlWABo0EEhD4NOwqb67j76gKCi09LyUPAD4CMnBHZumqZJKdc5nY5WyJwH/t5Sq0FQQyVdTgmP9OQhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8569
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

On Mon, Dec 01, 2025 at 05:23:02PM -0800, Matt Atwood wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Xe3p_LPD added several bits containing information that can be relevant
> to debugging FIFO underruns.  Add the logic necessary to handle them
> when reporting underruns.
> 
> This was adapted from the initial patch[1] from Sai Teja Pottumuttu.
> 
> [1] https://lore.kernel.org/all/20251015-xe3p_lpd-basic-enabling-v1-12-d2d1e26520aa@intel.com/
> 
> v2:
>   - Handle FBC-related bits in intel_fbc.c. (Ville)
>   - Do not use intel_fbc_id_for_pipe (promoted from
>     skl_fbc_id_for_pipe), but use pipe's primary plane to get the FBC
>     instance. (Ville, Matt)
>   - Improve code readability by moving logic specific to logging fields
>     of UNDERRUN_DBG1 to a separate function. (Jani)
> 
> v3:
>   - Use crtc->base.primary instead of cycling through all crtcs
> 
> Bspec: 69111, 69561, 74411, 74412
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../gpu/drm/i915/display/intel_display_regs.h |  16 +++
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  44 +++++++
>  drivers/gpu/drm/i915/display/intel_fbc.h      |   3 +
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h |   2 +
>  .../drm/i915/display/intel_fifo_underrun.c    | 109 ++++++++++++++++++
>  6 files changed, 175 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index b559ef43d547..91d8cfac5eff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -197,6 +197,7 @@ struct intel_display_platforms {
>  #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
>  						  BIT(trans)) != 0)
>  #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
> +#define HAS_UNDERRUN_DBG_INFO(__display)	(DISPLAY_VER(__display) >= 35)
>  #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
>  					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
>  #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index c14d3caa73a7..9e0d853f4b61 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -882,6 +882,21 @@
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>  
> +#define _UNDERRUN_DBG1_A			0x70064
> +#define _UNDERRUN_DBG1_B			0x71064
> +#define UNDERRUN_DBG1(pipe)			_MMIO_PIPE(pipe, _UNDERRUN_DBG1_A, _UNDERRUN_DBG1_B)
> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK	REG_GENMASK(29, 24)
> +#define   UNDERRUN_DDB_EMPTY_MASK		REG_GENMASK(21, 16)
> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK		REG_GENMASK(13, 8)
> +#define   UNDERRUN_BELOW_WM0_MASK		REG_GENMASK(5, 0)
> +
> +#define _UNDERRUN_DBG2_A			0x70068
> +#define _UNDERRUN_DBG2_B			0x71068
> +#define UNDERRUN_DBG2(pipe)			_MMIO_PIPE(pipe, _UNDERRUN_DBG2_A, _UNDERRUN_DBG2_B)
> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN	REG_BIT(31)
> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK	REG_GENMASK(30, 20)
> +#define   UNDERRUN_LINE_COUNT_MASK		REG_GENMASK(19, 0)
> +
>  #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
>  #define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
>  #define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
> @@ -1416,6 +1431,7 @@
>  
>  #define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
> +#define  XE3P_UNDERRUN_PKGC				REG_BIT(21)
>  
>  #define FUSE_STRAP		_MMIO(0x42014)
>  #define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index d9cab25d414a..dd306e30d620 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -127,6 +127,19 @@ struct intel_fbc {
>  	const char *no_fbc_reason;
>  };
>  
> +static struct intel_fbc *intel_fbc_for_pipe(struct intel_display *display, enum pipe pipe)
> +{
> +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
> +	struct intel_plane *primary = NULL;
> +
> +	primary = to_intel_plane(crtc->base.primary);
> +
> +	if (drm_WARN_ON(display->drm, !primary))
> +		return NULL;
> +
> +	return primary->fbc;
> +}
> +
>  /* plane stride in pixels */
>  static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
>  {
> @@ -2124,6 +2137,37 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
>  		__intel_fbc_handle_fifo_underrun_irq(fbc);
>  }
>  
> +/**
> + * intel_fbc_read_underrun_dbg_info - Read and log FBC-related FIFO underrun debug info
> + * @display: display device instance
> + * @pipe: the pipe possibly containing the FBC
> + * @log: log the info?
> + *
> + * If @pipe does not contain an FBC instance, this function bails early.
> + * Otherwise, FBC-related FIFO underrun is read and cleared, and then, if @log
> + * is true, printed with error level.
> + */
> +void intel_fbc_read_underrun_dbg_info(struct intel_display *display,
> +				      enum pipe pipe, bool log)
> +{
> +	struct intel_fbc *fbc = intel_fbc_for_pipe(display, pipe);
> +	u32 val;
> +
> +	if (!fbc)
> +		return;
> +
> +	val = intel_de_read(display, FBC_DEBUG_STATUS(fbc->id));
> +	if (!(val & FBC_UNDERRUN_DECMPR))
> +		return;
> +
> +	intel_de_write(display, FBC_DEBUG_STATUS(fbc->id), FBC_UNDERRUN_DECMPR);
> +
> +	if (log)
> +		drm_err(display->drm,
> +			"Pipe %c FIFO underrun info: FBC decompressing\n",
> +			pipe_name(pipe));
> +}
> +
>  /*
>   * The DDX driver changes its behavior depending on the value it reads from
>   * i915.enable_fbc, so sanitize it by translating the default value into either
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index 91424563206a..f0255ddae2b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>  
>  enum fb_op_origin;
> +enum pipe;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -46,6 +47,8 @@ void intel_fbc_flush(struct intel_display *display,
>  		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
>  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
>  void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
> +void intel_fbc_read_underrun_dbg_info(struct intel_display *display,
> +				      enum pipe, bool log);
>  void intel_fbc_reset_underrun(struct intel_display *display);
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>  void intel_fbc_debugfs_register(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> index b1d0161a3196..77d8321c4fb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> @@ -88,6 +88,8 @@
>  #define DPFC_FENCE_YOFF			_MMIO(0x3218)
>  #define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
>  #define DPFC_CHICKEN			_MMIO(0x3224)
> +#define FBC_DEBUG_STATUS(fbc_id)	_MMIO_PIPE((fbc_id), 0x43220, 0x43260)
> +#define   FBC_UNDERRUN_DECMPR			REG_BIT(27)
>  #define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
>  #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
>  #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index c2ce8461ac9e..b413b3e871d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -25,6 +25,8 @@
>   *
>   */
>  
> +#include <linux/seq_buf.h>
> +
>  #include <drm/drm_print.h>
>  
>  #include "i915_reg.h"
> @@ -57,6 +59,100 @@
>   * The code also supports underrun detection on the PCH transcoder.
>   */
>  
> +#define UNDERRUN_DBG1_NUM_PLANES 6
> +
> +static void log_underrun_dbg1(struct intel_display *display, enum pipe pipe,
> +			      unsigned long plane_mask, const char *info)
> +{
> +	DECLARE_SEQ_BUF(planes_desc, 32);
> +	unsigned int i;
> +
> +	if (!plane_mask)
> +		return;
> +
> +	for_each_set_bit(i, &plane_mask, UNDERRUN_DBG1_NUM_PLANES) {
> +		if (i == 0)
> +			seq_buf_puts(&planes_desc, "[C]");
> +		else
> +			seq_buf_printf(&planes_desc, "[%d]", i);
> +	}
> +
> +	drm_err(display->drm, "Pipe %c FIFO underrun info: %s on planes: %s\n",
> +		pipe_name(pipe), info, seq_buf_str(&planes_desc));
> +
> +	drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
> +}
> +
> +static void read_underrun_dbg1(struct intel_display *display, enum pipe pipe, bool log)
> +{
> +	u32 val = intel_de_read(display, UNDERRUN_DBG1(pipe));
> +
> +	if (!val)
> +		return;
> +
> +	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
> +
> +	if (!log)
> +		return;
> +
> +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val),
> +			  "DBUF block not valid");
> +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val),
> +			  "DDB empty");
> +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val),
> +			  "DBUF not completely filled");
> +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val),
> +			  "DBUF below WM0");
> +}
> +
> +static void read_underrun_dbg2(struct intel_display *display, enum pipe pipe, bool log)
> +{
> +	u32 val = intel_de_read(display, UNDERRUN_DBG2(pipe));
> +
> +	if (!(val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN))
> +		return;
> +
> +	intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
> +
> +	if (log)
> +		drm_err(display->drm,
> +			"Pipe %c FIFO underrun info: frame count: %u, line count: %u\n",
> +			pipe_name(pipe),
> +			REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, val),
> +			REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
> +}
> +
> +static void read_underrun_dbg_pkgc(struct intel_display *display, bool log)
> +{
> +	u32 val = intel_de_read(display, GEN12_DCPR_STATUS_1);
> +
> +	if (!(val & XE3P_UNDERRUN_PKGC))
> +		return;
> +
> +	/*
> +	 * Note: If there are multiple pipes enabled, only one of them will see
> +	 * XE3P_UNDERRUN_PKGC set.
> +	 */
> +	intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
> +
> +	if (log)
> +		drm_err(display->drm,
> +			"General FIFO underrun info: Package C-state blocking memory\n");
> +}
> +
> +static void read_underrun_dbg_info(struct intel_display *display,
> +				   enum pipe pipe,
> +				   bool log)
> +{
> +	if (!HAS_UNDERRUN_DBG_INFO(display))
> +		return;
> +
> +	read_underrun_dbg1(display, pipe, log);
> +	read_underrun_dbg2(display, pipe, log);
> +	intel_fbc_read_underrun_dbg_info(display, pipe, log);
> +	read_underrun_dbg_pkgc(display, log);
> +}
> +
>  static bool ivb_can_enable_err_int(struct intel_display *display)
>  {
>  	struct intel_crtc *crtc;
> @@ -262,6 +358,17 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct intel_display *displa
>  	old = !crtc->cpu_fifo_underrun_disabled;
>  	crtc->cpu_fifo_underrun_disabled = !enable;
>  
> +	/*
> +	 * The debug bits get latched at the time of the FIFO underrun ISR bit
> +	 * getting set.  That means that any non-zero debug bit that is read when
> +	 * handling a FIFO underrun interrupt has the potential to belong to
> +	 * another underrun event (past or future).  To alleviate this problem,
> +	 * let's clear existing bits before enabling the interrupt, so that at
> +	 * least we don't get information that is too out-of-date.
> +	 */
> +	if (enable && !old)
> +		read_underrun_dbg_info(display, pipe, false);
> +
>  	if (HAS_GMCH(display))
>  		i9xx_set_fifo_underrun_reporting(display, pipe, enable, old);
>  	else if (display->platform.ironlake || display->platform.sandybridge)
> @@ -379,6 +486,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
>  		trace_intel_cpu_fifo_underrun(display, pipe);
>  
>  		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
> +
> +		read_underrun_dbg_info(display, pipe, true);
>  	}
>  
>  	intel_fbc_handle_fifo_underrun_irq(display);
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
