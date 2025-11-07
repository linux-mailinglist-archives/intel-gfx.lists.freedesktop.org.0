Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E05EC40E98
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 17:43:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF7810E10F;
	Fri,  7 Nov 2025 16:43:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hfgUD8fG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743B810E10F;
 Fri,  7 Nov 2025 16:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762533801; x=1794069801;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WdRgHVtS6TkWyLgaNoI3A81CyL0/aiaaTBnJOoxve7c=;
 b=hfgUD8fGWtYWw8wsWg4mywd/kYRH/X86vMsW+SlY9WyHkSfAYg/LAIfQ
 7qQvN4j0yIGjEVTNyE7LP/jSueLuquzPLlF1o3OBvAAwvYoqG9qp2sV9p
 M4PmyCPC493tuKBQsgPxMs8s4l+BaHNmg02GYPrvruF9oF5Lt8dZTw2jN
 CSTx7WdNJDUbRQ6qeTwpYjd0L3m4tLP5ICjIRXhPaJie1kunHr+t3Dzwe
 Ok0nIYukEKV1vG95sUycY1Aj51BmRgDMT/xVgvEMUsctmjgzewmzKmbbg
 ciiNKQb+/KoSK3igrpiQFrnOEUEF7aEN4WKRRIwH/PU1DtIXy3qJeHRaa A==;
X-CSE-ConnectionGUID: MvLQJsrlQhaYke+NFLepbA==
X-CSE-MsgGUID: cdrl2oxwT+qRKs1uX5hIdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="76036766"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="76036766"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 08:43:21 -0800
X-CSE-ConnectionGUID: lgxIGbSqTwWDXa7YBwfpEg==
X-CSE-MsgGUID: fET9omTERvaSGlWp94cMsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="193103212"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 08:43:21 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 08:43:20 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 08:43:20 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 08:43:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lXoNBY7cpvqZBJpfY5caEoya0TCUBstbGxeF0St6tl41PUZ4agr9IzCfrO+SBwQdBe0UIQFMg7CLjGo7sWH5Xoz/igDmuoaVj4Km5moen+JMmr5iWoxvOGQMc/4ZJsOgFAwvD6cz8yIXHxOURERbu1PZ/LWG7wnv+hT84YXUFfgKhD+eqVoxjF+HoectJYA636ZDs8sq2pZ0weYHA5YW+q/GOLZlK6oqYmfi/egXY/+n8NeuF/SK2xNAhdOvww3dKR16lRH3qUL6Y5o3GqNzsE4k+dY4B31G+IBLMOoPlWnpe99VMYKKnPoMWQwpvtspapigNasv3rOF9hKe8qm04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Euhob5LMLsDWX5G+OFCXICDWFWdnWLNn1pxq8xa3EpM=;
 b=peNWdyqzKmV0Vjetheo6yMPZuPKsbLizoJtSNuZYNecISvJR3GPifuuWrofsZhR5Mmn8mBQvTGY1J6sQ1ZPbPx0lvumNIRHp7JyBe8XHkqAMazTNaCVIHaeao3UYcw0MSntp6BPo+ZK9B/EGU0F5Jjo3HJYGxRK+rJu8XzE7KLjuXeostkdZNe1f/o7x8BpP2LgvTpanBU5oN6XgenykUo7erPWDUBpboZbO0onxY4rUKH8cQ5qhjWa/Nqu50y+uLFeDC8GUvPK1qPupZoMFy9xnWrGemDL+RFe2UEK42jgp6A3ygJjXDhWTRWX/VVkvyobk8kM9vYy8F2p3nob96w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB7709.namprd11.prod.outlook.com (2603:10b6:510:296::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.13; Fri, 7 Nov
 2025 16:43:09 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 16:43:09 +0000
Date: Fri, 7 Nov 2025 08:43:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, "Joshi, Kunal1" <kunal1.joshi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/fbc: Apply wa_15018326506
Message-ID: <20251107164306.GG3905809@mdroper-desk1.amr.corp.intel.com>
References: <20251107100734.67236-1-vinod.govindapillai@intel.com>
 <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
 <ea443f4c5bf41ff20f65bef1ee4e74313d76f62f.camel@intel.com>
 <917da7d1e8e3a33d5724023f3275c51e36c3f834@intel.com>
 <sogg34aj3zol6vgybvzoid5as7wjyyvsdj3eth7g4pgsd5k2w5@xxkw7byvklfo>
 <1c58f65890e97d104075f71d7ca6a630e6073c9a.camel@intel.com>
 <tbhpegnd257zov5bdy7kroype6hn3pjjmc2ev5kr5wqjc74ixs@stkigbaqscwb>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <tbhpegnd257zov5bdy7kroype6hn3pjjmc2ev5kr5wqjc74ixs@stkigbaqscwb>
X-ClientProxiedBy: SJ0PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::30) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB7709:EE_
X-MS-Office365-Filtering-Correlation-Id: 32d9c39d-e44b-4a62-37e9-08de1e1cbb7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?OH6uKlALtQTLdTau3xcu95kyjdmwbohwh8FKD9GPlXz9meK2JbWV4bIcrb?=
 =?iso-8859-1?Q?QENiKsUBbZrOPicUYWKLUM+hROfomWCY7/QRi+GDBy8aFEPQC5sCn+zYjf?=
 =?iso-8859-1?Q?VzLVwNd6/ISiyhdyHZWg3QSvm6dHP9D8tWM+EqRsBrd9fL0o9ucAVivZlY?=
 =?iso-8859-1?Q?NoiB5B9IbiGZr757pjikcWjmFcLV8nOvnKpUVeporIE0LpdY1hKuQGTpa6?=
 =?iso-8859-1?Q?X37hq0VWvxeKZ2aho5ns8qpyCbCHiintCcZuOY4UBBufRU5MSad0YdvX//?=
 =?iso-8859-1?Q?Maa9LaoEnB2Vc7f96SliZSUAFR/ZXdu0S079Kd0riFK5gXXaWL76AibCq/?=
 =?iso-8859-1?Q?OLgefqx4gtc7SvEkOt0z2tfBBDkZZoMmckbpJSfH//Cg0n4tdNk9t3wMcY?=
 =?iso-8859-1?Q?AY+8Au4AfND8PY0J09V+4L5B3G0ANyeeerA7DHqkF98IOZvh99N/stoRyg?=
 =?iso-8859-1?Q?Pdia2KeLkHw0vguuQVtyXCymgIY5wOTRWyig6dTDAOAGLPMrYgWp/Z95HZ?=
 =?iso-8859-1?Q?li7Ibr2WCvEMkYdvgy8AISh82Jvh74QVEjQ63o11lo6XLvNuwb2aoBBKGt?=
 =?iso-8859-1?Q?NrHUcvHtnkx7EZf6r2bygokTomm9FyrTmegzcznXaoBBWbwBgx08ZJ5IDm?=
 =?iso-8859-1?Q?jkzmQD0FjO0IxCVJojMc42j2t2d9WwIE25I9OpMMkEHFFiiVo/1ILzi5zn?=
 =?iso-8859-1?Q?BoXkVQK6ihmBFeSygcV7bEjThcChXhXRaAVkXMJme63GO57+nASHOk1QEx?=
 =?iso-8859-1?Q?6nKJNAnDjc2OyZhin8MtnF5G5nKxW6Kyo+NJfj8HlxXySXtX4IYxZsM/tx?=
 =?iso-8859-1?Q?jN/sL5JINX67XvI3ouCYEGx9YH3I0dtbDI26xnIiEy+jbo4fizt1dugTUN?=
 =?iso-8859-1?Q?FgtIb71R8JJqm05oJv8dhGCYfyFuFaPM9Qcg8DGuh9yofrTvSdMCqtopWf?=
 =?iso-8859-1?Q?Q4c3os05s1Hr5LCYH6kW+GWIu8xl7RXe2rma9jeinckwPL1I7q/k4R2vNv?=
 =?iso-8859-1?Q?Ubs6Vhce8Sqj6/DX60aAlHtgIgXpFYNEnO/uN31Zniv4xY6wCcMwXp0gIg?=
 =?iso-8859-1?Q?gkeXYg+rS52uTYcHC2mg65Znl2D4Ts4AurUrOpJVLweXm5OSwL3MYhHkik?=
 =?iso-8859-1?Q?Gor6R/licEgj2WL3PwE35fWtH9SfmcQFj9OKRNwIeAXLuWF4dWXP2I8ZmQ?=
 =?iso-8859-1?Q?B1Sdf5uyclyCiNxrY8SSenAkAU7tXSwXaqRE+1ejueAxqPxtiHOoGnU1sM?=
 =?iso-8859-1?Q?jgHf9raOs8EcWgbOGBoDIGtGSV2948KvIDbT94V20u15A81/ewaJs8wJBi?=
 =?iso-8859-1?Q?7r95EwiDnwhEwNw+t3nOSqjhIXpEczo+aJAJqc/bRwrgg20rJUJcr5jo18?=
 =?iso-8859-1?Q?aiEYbNVS9X9mS6yNo06m9Jru6NU+d7rjh6eiI6iseSx6qMugrvYX0XjZPG?=
 =?iso-8859-1?Q?blLXrG3eRuROw6FR277NrRZ07vkAOwnoF6vnRYPWtdkE2WNwddfBt6oFvg?=
 =?iso-8859-1?Q?up3JJyp7kUHUkeMoJwFgfF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?z3x5+KimdC3zEsvlDmTOwQcMtebujl+gxPvxNDaF8ZXiAXu9oKAZDNfS8c?=
 =?iso-8859-1?Q?McAMmY60pLfeL2Pvf014IllNk9ZWfN3gUW9cIoFwloS12yrhrYAtF6QVsW?=
 =?iso-8859-1?Q?Cg2bQCM23DAaYJI/3Tx1MgI8i+t2x9DdE4eJlZAdigJr/8VYtFEaOasZH+?=
 =?iso-8859-1?Q?Mmnltw3Rx2zse17FfvNyfn8TAq/XGGCWbvmC1vouSXJuC8Ow0NFmYcE5CH?=
 =?iso-8859-1?Q?P8RGiQDmmpJ9GWw2ec1RLOfi0/z7uTChJFhrFYfidUlSnDWAiF29WX5EwZ?=
 =?iso-8859-1?Q?L7+JB04bufnlMZFVwY3iUKcmtCChDNQNXaJVMzbbG785mbFyQbWhWFxUYD?=
 =?iso-8859-1?Q?RQS+ejPN1WErV4k+wk/b0r+jOlcfmp2vu21dt1QNOGcE+O0DII4OVi+67t?=
 =?iso-8859-1?Q?T2O87XeAtvadM2mK09u+KxKTEWowSpF6TKvwFJNVbfu7m9Hnpb53fq9/ry?=
 =?iso-8859-1?Q?D4FzG3cclyj2FocL1gfTM78B5QzqKxraA9JfVznzCKM2UqiG1hjOxz81bf?=
 =?iso-8859-1?Q?u3WuFe2gCpVA9uR/SMf2//q51X0qNQxhzUGWUJOO6sY0XNBTcxlMLnanwq?=
 =?iso-8859-1?Q?lN/Ir2l+6a7RK9UJ0tcsnu3DzzbendNuhkxVjjeFrRBPsj4SLxkRjC1ShM?=
 =?iso-8859-1?Q?U7A4M4PviS29t+1YV5LoDLl6BNtyUxSmSLK1BBDMmjoRkghTS/0ohCht6v?=
 =?iso-8859-1?Q?FWruItxWW1eBurNR8bZsTxGV2oxaZeuxOVTdDJSsZc//WC4XG10vTkQpfA?=
 =?iso-8859-1?Q?HBIIQ/q36mmVEprFTnpumyTejIpNxRZB9NUpR/HegXYClBlLxI3s6fBCax?=
 =?iso-8859-1?Q?N58jeFun53nml6v+lWok/taxQwES8jA/Hl9mynLVtf3iUPpVpozoaJf1Om?=
 =?iso-8859-1?Q?ywzvJpzKhDbRc3gKIxM4lhNKhppiDgUD2WAEuDU9wQFv133IEaURCQbqs1?=
 =?iso-8859-1?Q?Xg2AN2AKHgZG4oHLikPm1D3nyQXPtAu0GCi1EofRCyWMFuUugVeesrGJb7?=
 =?iso-8859-1?Q?Bdk+1aJI3vukWGrBumDK7oItwkKKWxAznHmhetdEpM4pQg6W0nkL4po9B7?=
 =?iso-8859-1?Q?V785vqsFrVlq38p/2B5qBbI08M9nUKSeYhgLPgyrxNl2kqmb3RotJiURLG?=
 =?iso-8859-1?Q?H7mdzuwc80Yi4CFG3ZKNBBUkpoMugc+N/9DXTf5iJijde3ybotEbpo5a+P?=
 =?iso-8859-1?Q?Ym7oQgCDM22UPcnVlPXGgwuK9jd0MrBik/mPNHZU7hVR01mKbmdjXyDFAq?=
 =?iso-8859-1?Q?hrugyWgvSiMPgBpAuRiX9V2HKzn7vJfzx6CwPJesUB0Qp6jautkUXr37Qw?=
 =?iso-8859-1?Q?NSzMBu/z1xSsp+77+Kbdhu+9RvhK5FE6pyLgfC31KerkRhxRu9oJDy1BxG?=
 =?iso-8859-1?Q?QJ8huHgOG4/vazc5fEDY1dj6EOrkn+h0ChVy8nxLIc5xVBiZTxPIODRGFm?=
 =?iso-8859-1?Q?nxCjtzBySDF7ZKoRhtEE+IkeqIgW9SlfI8ZpkPY9NK+SMO7Y4oSaKrtrFc?=
 =?iso-8859-1?Q?djn1TTlIVkThwoFqthELqRhYAyawbfX3dwDwAfYHeZHF6iFmMXeihcC+I2?=
 =?iso-8859-1?Q?MsOFyz4I+TDn8biGRNZq0Y+VK05iT6lQsKdVW+gFDGhKekRIK/QBmUNSAU?=
 =?iso-8859-1?Q?FjzNIWd+8P6XCnU07efxmE2ZZ0GqF49hrQ4d3XZiKvTGVGHhgd4vLImg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d9c39d-e44b-4a62-37e9-08de1e1cbb7c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 16:43:08.9271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t9fIZvpWiZg3sUAfmv3LeIzBl+J8YPvK5Tk2p1A3glgznnVrzEbp9nltNfHNR6ZxIGvSicYi5vWVWmcp+GcfNjgpukThalNcHCG8CsCushg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7709
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

On Fri, Nov 07, 2025 at 10:19:58AM -0600, Lucas De Marchi wrote:
> On Fri, Nov 07, 2025 at 10:01:26AM -0600, Govindapillai, Vinod wrote:
> > On Fri, 2025-11-07 at 07:45 -0600, Lucas De Marchi wrote:
> > > On Fri, Nov 07, 2025 at 01:08:15PM +0200, Jani Nikula wrote:
> > > > On Fri, 07 Nov 2025, "Govindapillai, Vinod"
> > > > <vinod.govindapillai@intel.com> wrote:
> > > > > On Fri, 2025-11-07 at 12:16 +0200, Jani Nikula wrote:
> > > > > > On Fri, 07 Nov 2025, Vinod Govindapillai
> > > > > > <vinod.govindapillai@intel.com> wrote:
> > > > > > > Disable FBC as part for the wa for the bmg variant
> > > > > > >
> > > > > > > Bspec: 74212
> > > > > > > Signed-off-by: Vinod Govindapillai
> > > > > > > <vinod.govindapillai@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
> > > > > > >  drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
> > > > > > >  drivers/gpu/drm/i915/display/intel_fbc.c        | 10
> > > > > > > ++++++++++
> > > > > > >  3 files changed, 15 insertions(+)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > > index c528aaa679ca..ba2272d85a04 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > > > > > @@ -10,6 +10,7 @@
> > > > > > >  #include "intel_display_core.h"
> > > > > > >  #include "intel_display_regs.h"
> > > > > > >  #include "intel_display_wa.h"
> > > > > > > +#include "intel_step.h"
> > > > > > >  
> > > > > > >  static void gen11_display_wa_apply(struct intel_display
> > > > > > > *display)
> > > > > > >  {
> > > > > > > @@ -69,6 +70,9 @@ bool __intel_display_wa(struct
> > > > > > > intel_display
> > > > > > > *display, enum intel_display_wa wa,
> > > > > > >  		return DISPLAY_VER(display) == 13;
> > > > > > >  	case INTEL_DISPLAY_WA_22014263786:
> > > > > > >  		return IS_DISPLAY_VERx100(display, 1100,
> > > > > > > 1400);
> > > > > > > +	case INTEL_DISPLAY_WA_15018326506:
> > > > > > > +		return DISPLAY_VERx100(display) == 1401 &&
> > > > > > > +		       INTEL_DISPLAY_STEP(display) ==
> > > > > > > STEP_C0;
> > > > > >
> > > > > > IS_DISPLAY_VERx100_STEP().
> > > > >
> > > > > I was looking into the comments for that macro! This wa apply
> > > > > only for
> > > > > step c0 (as of now)! I wasn't sure what the "until" part could be
> > > > > in
> > > > > that macro! So what do you suggest for the "until"  STEP_D0 or
> > > > > STEP_FOREVER in such cases!
> > > >
> > > > If it's C0 only, then C1 is the next step, not D0.
> > > 
> > > it would be very weird to be C0 **only**, so I went to check the WA
> > > db
> > > and I don't really see any stepping restriction
> > > 
> > > Lucas De Marchi
> > 
> > wa_16023588340 disabled FBC in g31. But this wa 15018326506 recommends
> > disabling FBC for g31 which has display stepping C0 from bspec 68090.
> 
> right, I see there the DE_ID 0x03804008. For some reason the WA itself
> is not updating the stepping correctly, but if it applied to other
> steppings it would actually be for g21. Matt / Uma, do you know why the
> stepping is not correct?

I'm not sure I follow the discussion here.  Wa_16023588340 is the old
G21 SoC-level issue related to LMEM BAR access.  It's an invasive
workaround that requires driver changes on both the GT side and display
side, and the display part involves disabling FBC.  That workaround is
only required on BMG-G21 platforms (of all steppings); the SoC issue is
no longer present on BMG-G31 platforms.

Wa_15018326506 is an unrelated, display-specific workaround that also
requires disabling FBC (for different reasons).  The need for
Wa_15018326506 was discovered during BMG-G31 testing, although it's
likely that the underlying hardware issue existed on BMG-G21 as well and
was just masked because FBC was already disabled there.  Wa_15018326506
is still going through final approval so the final call on steppings
hasn't been made yet, but I suspect it will apply to all steppings (as
it's currently set in the workaround database) because there's no reason
to believe that earlier steppings wouldn't have been impacted if FBC
wasn't already disabled there.


Matt

> 
> thanks
> Lucas De Marchi

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
