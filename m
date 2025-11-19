Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4CCC70BB3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 20:06:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8277110E254;
	Wed, 19 Nov 2025 19:06:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqNv/TGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1136E10E254;
 Wed, 19 Nov 2025 19:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763579188; x=1795115188;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=+OIQk8PZdxVTH/ZlH7GYFalAdtxrdz0U+gPuDC/szkI=;
 b=GqNv/TGlvokH0846hLgdrV8WrcoJrDGz39JUBfVw5m0aUO0NfFKuT7sx
 dZazeZTLm/6Mxr4XQswrvly+nJhHnnAUYewP/jTq3a+TD5n67zI5Fy4up
 PN9hYOB/jhQIfEjmuOG0iVfqxUJKF817VY/c4wLrCMBesLNb4GhQ0LMjD
 HO4RTRJ6+mP0Fjs+bNjlb3KKlNbBrO7swDMf16hPH7EpbGIf9g1XzAwAp
 Bxy6ZJqbfhyyNCxFFwi4EpD0BSjQHGaQRMitCufSjm59fRh8KkEhpzeUc
 YaYdkI/Ice8MSxM6+APbppG1DrEG+gYuHW13aSljLla7MNw71ySKPJATQ Q==;
X-CSE-ConnectionGUID: coU+wgrJSVaVji+trCf1CQ==
X-CSE-MsgGUID: J0Cjc1tDRxe/OkVkx5kZSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69250871"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="69250871"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 11:06:27 -0800
X-CSE-ConnectionGUID: 5y2YXJzdQq+DDJXtsFFNGg==
X-CSE-MsgGUID: YbSnW3AoQxyP4seht224PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="191576390"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 11:06:27 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 11:06:27 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 11:06:27 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 11:06:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LLmFwRim4OrC5kl19jbFb5LeX76j5k4eAqlHDBmh0ebIa8tAQOcGIUukrP6CR6uJCWZerNkiweAp04mQCUSasM/dA3UO4uiu/BOfehu2C+NMAnqYI/b7CyCD91Cz5xeIhgjKt36FEn231lKMC9eFI/PGyXmlM6LFw3REQy+lfHsSjL7WWAIn6n/BPapA60vmWi9o2NPwGJxIygEfV0ZANlCQpgy1Cf45vorch7PnkOXpV3FvsiRL71XwiFmugwHGGEmW4Z8jptLxq2s6rZxTtzIMdXLZciFLarOX3Pc9m2V50ZezKY1+AmQkpbPtoLZWYelPd5YieHkaUdgX4skLZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63hXrsRxYfOZkvrg6PIzG71nx0jlBfqxhN21M3wSZBI=;
 b=uQj420Zb3T8z0zConKyzaEEpwmlumOGikUYa7PexfaLKPFH0ptgDD8ct6dI9SE8o1dr6Lt1DCwUCQ3PwH2irjIL+NjrctvhZm1c6xb4VMeDppUYsTgY9So/1S8Fjd6a7R2r+L+yW2/VRicIg+Iw8xgKSnOhw6WDbBjmHTkVFtRgVwnW7l1cPxpHkKnOBj/cMtmv/3vIB0yKNc/0hwj5c1tqjgJCIog1s51aH5zIAZSNPdj0D35w5lzpzejHCn2RjUWikflajcRvhB+ANaa9kg1CbhD+rHBY/IyuChvutoDzAe8wATeO0fjZUR+dmwtmCKMdQaTwmks9fUT+R+3pveA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 19:06:24 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 19:06:24 +0000
Date: Wed, 19 Nov 2025 11:06:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 4/8] drm/i915/xe3p_lpd: Handle underrun debug bits
Message-ID: <20251119190621.GZ3905809@mdroper-desk1.amr.corp.intel.com>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
 <20251114-xe3p_lpd-basic-enabling-v5-4-c183388367f4@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-4-c183388367f4@intel.com>
X-ClientProxiedBy: SJ0PR13CA0068.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::13) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW3PR11MB4684:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f286d05-7f54-4e7e-5f8e-08de279ebb87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?BwAUvNzlBeFoiqtF9ePmuee+dUjZATEUH93wVOaWJSG+67EydpMPCNlbWA?=
 =?iso-8859-1?Q?gGwo3Ku2/UeQ1W9ovhXpoAaCqW+00KKFDKgD3ejKsrvT3qPTqFY90PotjR?=
 =?iso-8859-1?Q?7gny1AUfwbNyPmosmgh0En+LKJqsJgRCTw+zO48bGlBM3Duf0Tc2EuESwN?=
 =?iso-8859-1?Q?lrA8Q0jmNbaGZQEx3TCVVDN6QcdGiUngtBZLxzPz7xW2M2m64YSWyWUJ9M?=
 =?iso-8859-1?Q?0iOGaMYiwz2TRX3Q96A7vXeUcl4huQXo6JI/PlfSFY3ofxQMifi3lDjia/?=
 =?iso-8859-1?Q?etH3UwpIzTUtCraiPMH+uAcxF+279xSArhN4KENah2wGHn0fc7KtuIqqK3?=
 =?iso-8859-1?Q?rKBTJeTXyxuHuvmWRz59TCZ/QEQj2ztwIFcocLJROaV0OC5mTevc29helg?=
 =?iso-8859-1?Q?WEnv3oGwVGjUYAmii5J+kqIK/+2ocqD+bM8e6jOEarqjI8/MPn390vRp24?=
 =?iso-8859-1?Q?CGFxbz0JmVZF4BuCLzLlNiy9ZDpPI6oF8x7DkxNq1X0IpOiuzMjPS8VTfn?=
 =?iso-8859-1?Q?fFIPt9ugKgv8NogsEtyjbjmTT4feGZYYYY3DaEUX3tXHEwElC6KAwAMlkc?=
 =?iso-8859-1?Q?PWLqLngJooznnDURmSol15hdHYqzYnRm/i1mKTZHkp03yQsRSzr/luJqKr?=
 =?iso-8859-1?Q?nUu0Jhd4aQ7XL2Mb3PIBqcNg6J88XIEJyjzlSSQaqoXvpzqEeLAZBFMk/6?=
 =?iso-8859-1?Q?ylo+4TqMULDo9M+K4a3LUTZrROc3mYeKHC60rcw/kgynvQBpL1v/rClE1r?=
 =?iso-8859-1?Q?hxM8xj/lLjchL2tS+kK8BUPKUegYN22p5lrDFtCvcaKjf9N4cEe4dssrVr?=
 =?iso-8859-1?Q?5M4BL3EN6+BAU/aAAX/LYwrg30z8EYC8FYTUcJmqTIa3+f87/YGu1QzZmj?=
 =?iso-8859-1?Q?r9bODH/AjEAXtPI7N0Kw6mJSYMRiB4H7yapoIxAJfm069MNrG70Gdlpw6N?=
 =?iso-8859-1?Q?s7TvxDLoFZptba+X+WrHjUK3GetV/7XKKrJS0j0jglDtEQIauVrx66ZmNQ?=
 =?iso-8859-1?Q?OAD0iw3+vErrWfgJhTBNqTA/vRMtJl9XQqj8Xu6f/eFWQSZM1w/c5BkMcN?=
 =?iso-8859-1?Q?3g+xSNueG23aDysEDGO7D8oyStgagJQRl5WciuCD7l1k1xQJpkPEzVSQku?=
 =?iso-8859-1?Q?UzZj/O38kk8YUZkThmLTJWDKZ2/wnTZAfBkGX79yA6SudwCC3jOGXnwjSP?=
 =?iso-8859-1?Q?xIIyiJX++v/X1n5Cc3vA0W592N0q5eD30HHisj4LZyHpxcS8mnMwBf2dNB?=
 =?iso-8859-1?Q?syU0jAvMTlmdouFRoy9kC+bBf1RUYOdWc2HfBmBXEPwkpz/y2pbcaFjbTn?=
 =?iso-8859-1?Q?Y2Ob+CnfluKb9oXzHIn5YVf2mzwhBhu4x/zynoPmrt0dz+jDnYW6UK9C0P?=
 =?iso-8859-1?Q?Gv7hC4Tlb968Nlt+0VYY3hnbrOy6hffu0Q6ZciRaVmQQZ5GPfnGhwKmrBP?=
 =?iso-8859-1?Q?2JEVACvq89F7GANEwRXsmSKS0Iy3b4RC2hrHSzbfJ0ND9zBRlFKQoYqR5Q?=
 =?iso-8859-1?Q?XuEnRdN8mh3eWbPYD6piwATyaOUG44N2E9ryJiSG7hDg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?EjkLncVflMnsvSFgh9peNx24mYoMgE5fr3WgmeKBWC28RFv0I5aqpKo0ou?=
 =?iso-8859-1?Q?6jaM2bE+i3+7B0uU7r8ElKNDWRQ2zRM0f//Nrr+uyfDd7rrI7TaKheR+L3?=
 =?iso-8859-1?Q?vsJsNpVyjhuTF6YjqyFDNfvH4g928wymehP+cOqrmEmWPRvrvtEhPqcmfZ?=
 =?iso-8859-1?Q?XzHkoV3shPhJd+gCysZCyMxLW79z+Me0J/dRhURwymLJTLtxMqDnDRaA+n?=
 =?iso-8859-1?Q?aLw4Az8ALsmH6Sm73oQcMotGsKlovSs7iPoWOXfhxGpWh3785jDdwIGKJL?=
 =?iso-8859-1?Q?8J0TxM0A604sMe0KScxAFFCTE3Hu2AYYFaNbD6e467PifuJLO6OcrAyVjk?=
 =?iso-8859-1?Q?+C7fnPLg+PXClBlBMcs3UC4/LdmSQY/Y+arWz8KQZUJdnjpBXRUAD21Gab?=
 =?iso-8859-1?Q?QW7hhwFtZmo7xUFF3gGMX/ls1TqF59O8RFTigKd/h6gAwxyMwSk/vr6xKX?=
 =?iso-8859-1?Q?4Sgumyr6gqZqq0v1xeyqJZrdLzmmfec6BF3k6kkXz+u3M0xYKnVIp3A9La?=
 =?iso-8859-1?Q?buC3h3mNI7O0LlMEYMK1lhy8FLIw35RH8ZFAvbkxj7sMRT1Exb6KE2CT8W?=
 =?iso-8859-1?Q?vmjaK2Rpw1w9Z4PJwN0YbXgbJFg8QJl3sgm6gbVuv8vWP+OCOq92fqFLnA?=
 =?iso-8859-1?Q?H/2W3B3xaMv6xDWO8MLvp8DdHpH6c1WwH/oE64qRtqwnj3lbWpDvOkxOp3?=
 =?iso-8859-1?Q?Jo7JSu3qLvR7BUutSmF/ZqMnSIRzfxRp1WQ+hZV2rmn+WVjFOSK7zFtoEq?=
 =?iso-8859-1?Q?Q98FHvQL+DYVFfrk3i0NFfd0sI0T0Fb8LJQc6H9H3q23gMNICj3YEkVjSv?=
 =?iso-8859-1?Q?dYOMlKcqsDDC6ptXLuR0+mZfmiHqhqdqnULUuR2wS+vAWNOi6dMIKE8i8J?=
 =?iso-8859-1?Q?MMsO3NmB6vtS/Uf+Hsma+/MrqSGJhRB9+NnJLNq8qVVV2cTtd1t84pSOJX?=
 =?iso-8859-1?Q?/hOrucj8wPBuQC2VbhCLOVa8MEDjv7lzYCcqvt5qvxB4Ui4Jc7OBFx8YdS?=
 =?iso-8859-1?Q?bemkkTeBZIx2BM10K8wHPjtK6l/OB4LNzgAUL84FXgUWlDo/+olAZzbOVW?=
 =?iso-8859-1?Q?1CZ/0q2q4kV80tzuj5RHskI8Ctr6Ulz5wrqqoQaY/u/H5/gx2blxWegbb0?=
 =?iso-8859-1?Q?YHPvqknv5KNx8CAty3v0385z0JQ0KHqgmhcZxzc5n4iDx62cDJA1yWHYpy?=
 =?iso-8859-1?Q?Psn2XUP2+mRa4EtpfYmxN4k7Cskb0GNsyS1e7mxFTXD1ytvX6JdK6E+owN?=
 =?iso-8859-1?Q?puFfobHBL64QxMch0IwkLOTvr7RPbVJsr+yb/w+0tBVtvsEUfWXjFnKA8G?=
 =?iso-8859-1?Q?gV2Dchb7nBxLzbKEhjPByJ2T65zvxa3/mvGKN5IKL38eU5O/wRCS7KH99u?=
 =?iso-8859-1?Q?mc+OF47yJ/U90flmJV+voVHY4R4WEJSHZYVft+GQeAaB3jFyoSGMpv0mVD?=
 =?iso-8859-1?Q?zIBAK6TpzTWEN8XK3iETeuaCTfzSOl+5Yjj1IHcFWXVEdyUOMzobHw6iHz?=
 =?iso-8859-1?Q?4jtRYqUhxySvJiwDToUzArki3NM0sCwTSF4KVQI172jUxPLgDYj8iMWXAx?=
 =?iso-8859-1?Q?kbPHw+2HRl7uEndGyzFG63qVECyz9xZ6eaLm+YLZYLM5T0FCDVcttgUJvE?=
 =?iso-8859-1?Q?Rbjvo/2iqXRyOCykxm6KrEt/MEg5JUtx9lxTo5k0CMXCr+lSDGZAHuMg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f286d05-7f54-4e7e-5f8e-08de279ebb87
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 19:06:24.0635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Phro02LlHfdWcNeiP9V1Z1lNcVgAT4V+n8X+vJhk+yj5feRHWrDBMdkHrJW8wjGTXh061j7vkjgOUsPFx8KbsBVK1zdJRj1ryugXJn16DE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4684
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

On Fri, Nov 14, 2025 at 05:52:11PM -0300, Gustavo Sousa wrote:
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
> Bspec: 69111, 69561, 74411, 74412
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
> I tested this by adding a change on top of this series that updates
> Xe3p_LPD's CDCLK table to use bad values and I got the following
> messages:
> 
>     [  +0.000237] xe 0000:00:02.0: [drm:intel_modeset_verify_crtc [xe]] [CRTC:88:pipe A]
>     [  +0.000674] xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun
>     [  +0.000015] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DBUF block not valid on planes: [1]
>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DDB empty on planes: [1]
>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DBUF below WM0 on planes: [1]
>     [  +0.000004] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: frame count: 1890, line count: 44
> ---
>  .../gpu/drm/i915/display/intel_display_device.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
>  drivers/gpu/drm/i915/display/intel_fbc.c           |  50 ++++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.h           |   3 +
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 109 +++++++++++++++++++++
>  6 files changed, 181 insertions(+)
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
> index 9d71e26a4fa2..89ea0156ee06 100644
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
> index 437d2fda20a7..ec316f9843c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -129,6 +129,25 @@ struct intel_fbc {
>  	const char *no_fbc_reason;
>  };
>  
> +static struct intel_fbc *intel_fbc_for_pipe(struct intel_display *display, enum pipe pipe)
> +{
> +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
> +	struct intel_plane *primary = NULL;
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
> +		if (plane->base.type == DRM_PLANE_TYPE_PRIMARY) {

Can't we just use crtc->base.primary rather than looping to find it?
While it's legal at the DRM layer for modern drivers to not register a
primary plane (which in turn means no support for some pre-atomic KMS
APIs), i915 has always always created and registered one in
intel_crtc_init().  Other FBC code already uses the primary pointer to
grab the FBC associated with a CRTC (intel_fbc_min_cdclk,
intel_fbc_crtc_debugfs_add, etc.).


Matt

> +			primary = plane;
> +			break;
> +		}
> +	}
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
> @@ -2119,6 +2138,37 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
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
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
