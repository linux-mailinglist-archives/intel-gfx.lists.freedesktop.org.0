Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C38A4C1D8FC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 23:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 635F210E85E;
	Wed, 29 Oct 2025 22:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/trTvjk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B66F10E85E;
 Wed, 29 Oct 2025 22:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761775690; x=1793311690;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=yx24HfH676cx8XO0cCJ9IWSalC+6/kxFz+vQoLwpegs=;
 b=n/trTvjkCb8C2Q0zizBZ+GsKcH8P2sH4QhDDSDfUi92nAOYj7PqMPAMn
 fiwH8B5Hc8HsR7aKsttYlvBuZow0qvBbxzxMEu7+YUEs6w+MRhUuZEydr
 rKcczqvf6azJfCXZXwNCFLPL9fUe29nZ63XeLUixkgIgPEjfhTJf0/MQ5
 AaX0nrX2x6eu9tCWtby6okcjCNGTPt5oeCzyNfBfpVWH7prgLUUajgGie
 JcbLLCFtk7340W1j49Onl3Aw89BpwdCS+gTrjqTK2wZ0tK6FoxDSkIxLd
 OCNTra2w5S9vWmysdYdPcsFs+OymQf2NFMZv9kZf+PsfjHBVz5JD0B2I7 w==;
X-CSE-ConnectionGUID: 4evfg3OHTkGpGod9xO23vA==
X-CSE-MsgGUID: ZWxJ9zKDReuweuD8XRnCaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="64059279"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="64059279"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:08:09 -0700
X-CSE-ConnectionGUID: 3V57LbEvQhGkZYhFd7QOkA==
X-CSE-MsgGUID: WOYSb73aS/ONmn3jSybIoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="185479672"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:08:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 15:08:07 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 15:08:07 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 15:08:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C5/I41UBGHG8YpQN2VeXexnMLSZmTL0sTILQbPQi86QAbIUau+6I7c+m/LObRBNp1q5SZTR7Ah9m6JaAz3LXXapYMhpijr31f2DCvq25kVRYQY4LRZ3y0+qTTEc8quMUWr+D1sINvan/6BQe7AjB/aVnS+pedMY5qsJ/aiafC2Nb2JFqwe8MD8N4ghiQqPkcc6p0MQ5DWwu+K/sWArBGuScLU02vDrJNhVSVq+I++7pZEydDeSbU7WRU5U/0eUvZEx5riy5WUMGxSS2Gnlp/+2TJxWYB8673WLbY2c/Q/YerWO3ICMf84FiGaforTE8ToMmF45bqyxh2+h7dWUpTLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GegcRSFnlf4s23pbpbichU3urT1+73PAL/+RXK64TXw=;
 b=Oh7CgQ+fpDIZiVKGGrsB5INGrO72NT9+AB/ykBF2JDrVYrd28ngcNSpETVPJPMv/nnpgKv0agd/PfdzUCoRAplvs6Lbzkk7Wro3tMUbk+qyWt3lAS9GP//8aQRGgFRgkDWrfaZeIR9QhXk7fQ/5u3aTo/IyPmyMNa2q3bvRSJLwiiN7h7T5PyLBCjB2W/gY7hrGrz+ESHxthb5oh6q4qWbk/i1m4+4Ny3LqKQSA0xrVZQ2QhewNv2SSJKYwFXWR2cTkf+suUpEru2tJVZ5mLQdzeALws9HBUxwgfpQ+dWbVB+nRPKUkvA2WeeYreXalUCrQRbWHoAX7yQyaTP+1IsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH3PPF67C992ECC.namprd11.prod.outlook.com (2603:10b6:518:1::d28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Wed, 29 Oct
 2025 22:08:04 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 22:08:03 +0000
Date: Wed, 29 Oct 2025 15:08:00 -0700
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
 <vinod.govindapillai@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 15/32] drm/i915/xe3p_lpd: Always apply level-0
 watermark adjustment
Message-ID: <20251029220800.GF2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-15-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-15-10eae6d655b8@intel.com>
X-ClientProxiedBy: BY3PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:a03:254::8) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH3PPF67C992ECC:EE_
X-MS-Office365-Filtering-Correlation-Id: 504f54d8-a31e-4e3b-0a8c-08de1737a18b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?HCilPkvmMRmc82VBhLsu0eC7VPMWsThNBMbqllFtRjQEMlYbOBe6GbZIDj?=
 =?iso-8859-1?Q?zwGRi2fdjjnXin8PEdqOjAIuqOGcW5Y00TKc9NrBkRr5iRUn0Eyq0cS34N?=
 =?iso-8859-1?Q?pzF80ERw5MfknjVZ/GRKYHwqf2hAZqygdNi/YHkur//HRGh2S/BpQZGUxk?=
 =?iso-8859-1?Q?xIKpekaxmNLKAXwjbaLPitZXXSso+gJLCSwZ16Bf391yDwjferDPHdXqYd?=
 =?iso-8859-1?Q?FqpEzjXSczbFEd8R5scmBd6XQgdBoSeXsF/YW6mzDCzLgkBS4iM7eWQq88?=
 =?iso-8859-1?Q?ZllPqdfqQq04b9J6uMWVzQ3vR2J6oGDkb2tPklwszwOGvh5Nu3/WtOW6PL?=
 =?iso-8859-1?Q?y8jUkj4vhtMQqX5s5HtiqmYgEbH77DBkE679u2FGaJg8eqSaBD7l61zFha?=
 =?iso-8859-1?Q?6qoXkoLPnU0Byu4FdEU2vRtCR7DbjxO/rXkxqoUozXgr79JudPiI+cPuPa?=
 =?iso-8859-1?Q?sMD1KYr8QTQ1GCTZyLIu7rQ92eWReHy8mnTSAh2wRGIwbvKGWDdCryqGr9?=
 =?iso-8859-1?Q?2dRL5YdOXJ9n+vFdM3sRETXnm64xBrx/Q973tQQPvS4+5f7tb4l4SRW5iQ?=
 =?iso-8859-1?Q?dYRLOmVvCVZlR4DE8NOFBH1nux9jHSI4mt9xrdE+ssVPKJxiVOrQDqOeSL?=
 =?iso-8859-1?Q?nkzgkRwdhJ7MMGH6w+kKK6DEFtsHnzNQ4uj8OUN8MkGrP3dIkccLqnzy+i?=
 =?iso-8859-1?Q?Cn4iIZ2HLZ7v4nydoOn+qKDiT1Czox5naWQDRJWnxesulmwDLTya8jFoRY?=
 =?iso-8859-1?Q?WvDdjI34TzXc+1aYfVm5eSgXhJOKj47YsUiVmTip0e+cr1V2ce9VSNWHOl?=
 =?iso-8859-1?Q?d55CdQyDBZdFUGWIlZavgUFQ6Vixtutdo46ulAZZ9v70A900IE0l6wGZhs?=
 =?iso-8859-1?Q?hFuTrOZJIF0XuVBw21wAUOFTghj6NJuf25ivl+TOak0ig+XIKeJm2licjd?=
 =?iso-8859-1?Q?CZEy1bBay9yF97CxuYbPJip1DV802AX5rD6YJjUl4EpHdH31WKZa/5t1u9?=
 =?iso-8859-1?Q?XdQtl0MPB0NLNSJsw7qD/w87iPrAiB4fBUnoKiicZrFcGAoW22cj2qFYLo?=
 =?iso-8859-1?Q?40rH8jnSQ/D22LK8ocVikfMN3UlzdjLhZnLqie6n7jYdMQPPLZ/ko2Na6v?=
 =?iso-8859-1?Q?ZxT7a1Whfkjdsi195EAzQCUdQwoLtxqJB7EPiIHhyGfEgVa2cmIcaD3wlz?=
 =?iso-8859-1?Q?J5ZLqapwCEYCWEAcOZGPCF0aK6fDyjzoaQzTbjGAYfXjWjOUTnAXRcDPur?=
 =?iso-8859-1?Q?kq5+9IZMQSJgsOWm74oAHnrQ683ykGZdECRnNt1ih+cnFvB7vD+9GXHGc/?=
 =?iso-8859-1?Q?hz9PX4WvK8woWAFZMRmGIwkDf6l1w3LjJsA43olpWvkgJ2SjciXwkg2JOp?=
 =?iso-8859-1?Q?KoeUS2rZAizzVpulzjRPYnXQ+W7sHoKDLk7V0EVXCGd4+373Lq5F/pgK+g?=
 =?iso-8859-1?Q?jHealcBkgSEijpgz+MxQiosc8GDbrCGUrI/nQ5t2mrDgaEOQ2ysEvx2KCe?=
 =?iso-8859-1?Q?jpATEWdiHbIq9oCgUWujGy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Md+ioI+eRlIT1c+0BOUdlnCJ7oC00G7ZVRj/0uy3odfa1DbpZUeZuE1vHM?=
 =?iso-8859-1?Q?F5gXBKdkriPjtsEbWHWcdcJGJWGWhzW25xHSNESs5aH4/8v9KW4SMJQKaW?=
 =?iso-8859-1?Q?TLAe5XMoRNZy8HL7whY+qyiU80mMCMP+eyIX2ROHsgQSaV/EBdO9HtRK6h?=
 =?iso-8859-1?Q?HxjkubaLqZKr1jYpyFmRLS1kSD/EYmAprP+fS+epdH2+2p3zDNDYragUb8?=
 =?iso-8859-1?Q?rGPTSgYvIXIWKu903DYEsrgGWki24a05AKBYWzdTOeTS/8JeVNrjpHeYR6?=
 =?iso-8859-1?Q?sHP3ylq8DWAOCGIF0a0kJrMussLLa07edOF5HDdzH6LDLevAvASqDa9jpV?=
 =?iso-8859-1?Q?Qo/XrO19mHs1PKHfIjWcA8A7FweI3/PnknFHHNlR5tQDqe/9f63NCxl5rs?=
 =?iso-8859-1?Q?wwAe87quZVKzXR900OSlfoQfugpI33NfgSVBo7EoZQsWl9KfZekJ47MvzI?=
 =?iso-8859-1?Q?foC7jkulfljmMnzPYdteprb/p2wb2edOV0cAN0TByU4iyPgFOTYF7PpCJy?=
 =?iso-8859-1?Q?DMlzQmX9QPhahkxsrSXEQaX+s66oGiTwGh0j7NU1MQNtuqXKREFjmDk6fX?=
 =?iso-8859-1?Q?cdzFENaHO0cxiaiBuw8pt7NGCWEq90A6q88pLxFAkpGHhc8ycbeMo8kzv0?=
 =?iso-8859-1?Q?u3tVucuwTZQUIpfzscbmz4phF7kcbjiIDmvP1lYWi2kEP3pG1PMEt3OITc?=
 =?iso-8859-1?Q?0VTQmlHM9uiSt2+E8mo8i2J/QijZ+rhO+/4Otl4BBL6UeLjuZ2VQvcId75?=
 =?iso-8859-1?Q?NeI/dZXaSDP68aBxfcx6NnNzZuHgt5aDjr1gy5FRAtdQm+iFW6V9TwNU/i?=
 =?iso-8859-1?Q?yxqZcslv2Xkdtvo/D5vjgk2HgdoH6TGon2zVGXFHJEgY8GjTop68KoOI/G?=
 =?iso-8859-1?Q?dV/aRUGJGjxFpqbwYMk260dVA7MvqiNGfqLcxY/UOVOKgZXEXpWcQEVrI2?=
 =?iso-8859-1?Q?xJBI4z+EtllTps64EIqHAltMgLKS3PrC9C6YKbTifD9UoCZmspGWoj/9iY?=
 =?iso-8859-1?Q?UTd7RKhT9/Ok34l+fNLpjrCLY7oRr8X8gDzP6lK+S+tQdde0UjSAM/UojQ?=
 =?iso-8859-1?Q?PSxUuujDnRAWJ2EgpY6RFDkoaIZW5c75LF2On/GHD7YjOaSk7KaqTLgf1K?=
 =?iso-8859-1?Q?1UGl82JyA116pQyf1eaR/zcZN8OH9454fFcKBFaE5fe5Qvi+u8+ie9Zt5r?=
 =?iso-8859-1?Q?uE5N5Z5aNEpLT3u+n6il7JedSFr9/36vW2B8UkxNAX2t6b7SvRnR7Zw4u0?=
 =?iso-8859-1?Q?t/Bkkflsr7omIQsANzKp4PzaVsx5/2FMADgc+Iqa+HC27meAg6z6X7OPh+?=
 =?iso-8859-1?Q?cc5gqSuFG61o1M/pDwncnjwMZU3cSgi16Tc34GHrhOVyN3JEO9kqm5KKAu?=
 =?iso-8859-1?Q?3CQ9x/sVMYt2w4DXlleD6WIBwP1TTf9mBjcoqXtfTjuACxMXtWWXvvxID4?=
 =?iso-8859-1?Q?H/yxjYQmd29PnEusRtzOnUgn3ubli1ob+BFrgjWhz1TOlK0k72XOpmiVqy?=
 =?iso-8859-1?Q?XKFPa8qO0L6uY9FfL3eH1CSGcKek2xoW0I0IIL2PsAE+ZH2V7LsJfYVNfx?=
 =?iso-8859-1?Q?kobJaw3FkE8McDpr65eEBuC6rxD2ueO9lH1D4ur22ni69aStywGF9jQM+1?=
 =?iso-8859-1?Q?B1j1uvvOgCGpuQdldWYbEuPBhHKENyNZ0cqqjPSpdS4S75csfwXdogfA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 504f54d8-a31e-4e3b-0a8c-08de1737a18b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 22:08:03.5720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uhczMcDt2RXPNqx1Mw1Yh9VWgOrhGTWblrFb7S1TNwWbKeYeqwNpQ3d3GGv/S4jyr+yaUQUsgvxFSVF74HUeJIKJEYzQ+XWHJDbBn04g5Ro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF67C992ECC
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

On Tue, Oct 21, 2025 at 09:28:40PM -0300, Gustavo Sousa wrote:
> When reading memory latencies for watermark calculations, previous
> display releases instructed to apply an adjustment of adding a certain
> value (e.g. 6us) to all levels when the level 0's memory latency read
> from hardware was zero.
> 
> For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
> add that value to the other levels.  Update adjust_wm_latency()
> accordingly.
> 
> While previously the adjustment was considered a workaround by the
> driver, for Xe3p_LPD that is part of the formal specification.  So,
> let's make sure that we differentiate those two in the driver code, even
> if there is a bit of redundancy with "inc += wm_read_latency(display)"
> appearing twice in the code.
> 
> v2:
>   - Rebased after addition of prep patch "drm/i915/wm: Reorder
>     adjust_wm_latency() for Xe3_LPD".
> 
> Bspec: 68986, 69126
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 57260a2a765a..5bb6cdc4ad2c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3220,15 +3220,24 @@ adjust_wm_latency(struct intel_display *display)
>  
>  	sanitize_wm_latency(display);
>  
> -	/*
> -	 * WaWmMemoryReadLatency
> -	 *
> -	 * punit doesn't take into account the read latency so we need
> -	 * to add proper adjustment to each valid level we retrieve
> -	 * from the punit when level 0 response data is 0us.
> -	 */
> -	if (wm[0] == 0)
> +	if (DISPLAY_VER(display) >= 35) {
> +		/*
> +		 * Xe3p asks to ignore wm[0] read from the register and always
> +		 * use the adjustment that adds the read latency to all valid
> +		 * latency values.
> +		 */
> +		wm[0] = 0;
>  		inc += wm_read_latency(display);
> +	} else if (wm[0] == 0) {
> +		/*
> +		 * WaWmMemoryReadLatency
> +		 *
> +		 * punit doesn't take into account the read latency so we need
> +		 * to add proper adjustment to each valid level we retrieve
> +		 * from the punit when level 0 response data is 0us.
> +		 */
> +		inc += wm_read_latency(display);
> +	}

Wouldn't it be simpler to just have a separate

        /*
         * Xe3p and beyond should ignore level 0's reported latency and
         * always apply WaWmMemoryReadLatency logic.
         */
        if (DISPLAY_VER(display) >= 35)
                wm[0] = 0;

and leave the rest of the code unchanged?

Either way, matches the spec so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

>  
>  	/*
>  	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
