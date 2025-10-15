Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D75BDFF08
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE54410E8A6;
	Wed, 15 Oct 2025 17:48:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OTAH/Fle";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC8CA10E8A4;
 Wed, 15 Oct 2025 17:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760550518; x=1792086518;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NhFYYWFXuuOFXHEBF3vwb9P8zmQGHf4lQ2QrSxq+g/w=;
 b=OTAH/FleaDzijK+wr5g4fZGU2e1c3XlE6df7IrG8CKLlwBtDgoCxEAbr
 Z5wRcNNy6Up9gQETmlcS4X6rIspHfR2wHZjsGSMe74l69wtHAQKz2IbFh
 Dup/qpH/+EERoD6qiH4VZaZLPPLPKXYKigEfMQWGYpzk+gyPof46jw4aw
 t0SW06bWikpeWu7lBquHzXE7BpRxZNq5yIOevEHvRShFv6Ay1k++Ci8Fz
 yPmAMp03oCikRV4Dbih1RPjxH7KLZmSUzoz2/70Z9gKA0MKuyeI2THwks
 HpJIqfEoodguHyOIShTm5N6HbeTkEgpxwL0ef65pi6pkxVhRYtx4iega6 Q==;
X-CSE-ConnectionGUID: S8rF++cyRPaAPlwOa9/iSA==
X-CSE-MsgGUID: ORCM0NK9ThKGc5lNVt4KuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73845874"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73845874"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:48:38 -0700
X-CSE-ConnectionGUID: LaQ9IDFSSg6ccIXt/p1a+A==
X-CSE-MsgGUID: yaQkdQ26S9STFwyO42aPzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205937701"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:48:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:48:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:48:36 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:48:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nYZI+CBDCBOlYUCGLqrgPbOnlVShlGueeeokpusuGYqZHqn4BtHsXInrIuUNxVDm8NZ9gS9nLxD8zoexxtu7IigI+HDCAgTa9mQP4zbwtezKb2aHoPqJAJlg5JpyyGa2jynVstgloSxKkcyVlM0J0Mse84BEZHWS/YmPwkfiTT+Q3sngM1+uKfs3Iv+Nvnkhb8ucP3HBWvYZsK4YHZrruY5WXB1/eOfAooh3RfXz+6Vpuk4yd2BRduYKUjMk5vvin59WBqR47f5G0xRYa77ImtmjKWgtJU3OOYtg4WR5pZtwioUxi/yE7gpQJpR2ZWQDoNVKhfl1AUf2GA/GorFD1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FKP5R8jqF19tdQHpX+E0XYb9d4fbMIlwlMN36fTlhjo=;
 b=CnHPeoIak1728MPFf6C5Rv7PQAZj4Yb5nSfyiCuh9g3kgiCXlmeSPsPgO/EtI5ckF0ZOdK6GBJLe/OGuGXC/lDTaF9AWQKLw0XTCp5IRxRtcuJiZsS66nj+D5J50gXJEMWYZrTJudblKubrUUZ7VT6Wl4Ipextr+qgQ5zsPrxKh00lUoYRePhTOVs7NyvDu+c5ozQDozPu1IhMQyYH5L8/fyly7+5d/awxrhTwFMCyY7SOCc93EA8TeZQ/DX3APufngQVpXk2fAEp65sma1gIRd6RoT77sed0gkR8FfpKvcHtfggLGTa+cntQd0WTMdg/eq8q2mP95h4GqRV7Q3A8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB9473.namprd11.prod.outlook.com (2603:10b6:8:258::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 17:48:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 17:48:33 +0000
Date: Wed, 15 Oct 2025 10:48:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 06/32] drm/i915/xe3p_lpd: Update bandwidth parameters
Message-ID: <20251015174830.GN1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-6-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-6-d2d1e26520aa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0263.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB9473:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a6e57f8-c3b6-43c7-29c3-08de0c130f32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6m/Uis7VDthYRSNF2BIr5uht9dXdJnu9s15Qm4Fn2660p7a6hOASV1OzQMNo?=
 =?us-ascii?Q?OhJxb2ZKFaCNqJjWQhy7cu43ijCqqD5T6W+KIwVXkIjKx1LTJ0lHTUwMOy+N?=
 =?us-ascii?Q?p+UAxOER/k5WbyNL5poK56A983MYZM4bPu+5vqaQhX1nfICmilEAzcY2p8+H?=
 =?us-ascii?Q?zv3db6wRvkdv9nxL5yKzJLItp0HqlBWySQIT4O7D2dk7zJ4fF27eCytRAr/k?=
 =?us-ascii?Q?DTbMWcj3gw6HEi75S5Qyl3KOC75fDT0XT+gfNOz66Abdwr+CN5JsS5jZnpcK?=
 =?us-ascii?Q?/XO71ClSGMLN/Z9Nt7X7rVmje77S+igbKsER5wca3JlruGuV2L/cLDICLPIq?=
 =?us-ascii?Q?II9Snlm+kQZ+wqFVWvCmFQ9pHQnja9071X2J8kf1rzjOTfybg888na+195D/?=
 =?us-ascii?Q?P4xr15uZcvYE1SQU9dVvQXMiAgqB56W5zH8m64cfaUP6FEJZJaAIBG/W1ONp?=
 =?us-ascii?Q?K8FSQ/355dgCQteWxAhchqn1ij1exsvsORuFHTVuQSlt2lkNPx5IIXNRxkMC?=
 =?us-ascii?Q?Qz0/AN/ZEKafs8un8z3nF+rwrjDe9RsocRLP5g8xBdP4dyP8zq7YZ/9oHMvn?=
 =?us-ascii?Q?9cn/9HkALvgfobVbjvXfhcWXIb8FuZrU7peJ0I8Hk+Lzdza8gpV0wvBFUXhi?=
 =?us-ascii?Q?HRSTtKVxEU1RF1H6SNcdhlq+M82YRzQNW8wediVoWDCNEE2JTHR+MbvsD1/m?=
 =?us-ascii?Q?zsbpGqwi0ujMOBN3QGIhUDhrqyLt2sIBK3CGGkVIAViBqnCQubkSyEwdLZeE?=
 =?us-ascii?Q?Xh9fSemGGlJNJMbghiROWISv+2HT1/hWI3dgCF+z1QDfatQdDeRT+vVWiTr3?=
 =?us-ascii?Q?lRA/y8gWLksJMYnCcBjqhniFvgUdxvSyj98re0mC8qo2qWJ1gydrg/XDcWmc?=
 =?us-ascii?Q?ncFsitAHXRZCyjB+qMr5YXPsvAOUvsNMpIJ1ld72kls6PgbQOfUOp63P9fCP?=
 =?us-ascii?Q?lqg9z7yZVZtkDAkNbhKH5GMzN7RPqcut7DObKZypm2MpMiLOEJGme43BMIVq?=
 =?us-ascii?Q?Bev1qRtWPPELENEqZ4LEjYZ0Tz5Ts5iOhRN1FW9BbkogSJJKTbQxh66rIbCb?=
 =?us-ascii?Q?Z525VGCJn7OI9YCK5EYktjPhVVWti+4+3vFRuM/AXQwaNF4jGRKJAOZXrEDO?=
 =?us-ascii?Q?EtaV2hC4r21CRWzQ6HQyp+ZWIM61hM8XqEN3CQAIC8LgQd29V+ba4NeTR/qV?=
 =?us-ascii?Q?OplR8TKpt9nzVkP5Te/t9zbZLAI3qzEKc1GJqvsoIMNGViSL0V87+mWLIp2j?=
 =?us-ascii?Q?KOaulDsUpDhy6PZySFyVba8kJXHjnhrDgMy0sw3SQQ5fiN9sk1YXESgEdN22?=
 =?us-ascii?Q?E2QTZFEhTcg9ECFTmFBwh6XTAneV6iOXV4qMxSaE2whwTUS14s/PRFVEaJy2?=
 =?us-ascii?Q?iXr3ahrJWsrhVoouNEkUsIeOinj+TmV64a37gadSxGAOKtp2/NUyWNNiTlR0?=
 =?us-ascii?Q?h8Mp/CKZ/EjoFKI7INbxT1kgtcQiGri2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sGEO9o3LslB2l+umhssI8GpswE+uWeuegUemFJ3jQ1f8Xdttg/QTqfaGMd9S?=
 =?us-ascii?Q?bI/guHTyDQYJdvv1Wo5YdFFBmkFL170uQwRYUp17rZsp2IxTmDYKIYMVrr4O?=
 =?us-ascii?Q?J4FLmTk3PZVeHjf9nyn6rP+JCx8LImcvaqgKCgNim0P0T2rfXuWyaqojmMW5?=
 =?us-ascii?Q?Z6CLKuwGa92Yib9nhyAJtn4c9wqsNvBZqr45odkyA/SnJIATkI8i0Bmjqrod?=
 =?us-ascii?Q?gS21xCN2snrO10oDAC7hMI4g7qpCs1zG6D0WU8wjcHPKLfkrRAUs/rVLNMRg?=
 =?us-ascii?Q?iyUm4wZZRBmxR5d/Y4gTbQA3jSewldyLGCSQ9GsPi5DmpKy2xjSMgW6FZxSm?=
 =?us-ascii?Q?9EPqAobMEa4YO5I5t7m+y6x+lkB5fSL0JvCqeEvfP14zSjWMRJbdYE3hYEfo?=
 =?us-ascii?Q?q9V5K+qfAjKvIZfActU9bH1YZWCtkgWyHsML3DOO3xDOlabTYdjY4hTk1T1n?=
 =?us-ascii?Q?TS/9xx5CON1rAzQEB5Db7o3Ktfi+q6f93vSO45dyf73jLc+5w9z0ZrD9NvuA?=
 =?us-ascii?Q?DB24QW3YhVCwddS2HnfbNbxGADBF+t9st9WfTQTlLNiW/OTCJIRW/aW6bzCp?=
 =?us-ascii?Q?m68wpRkaoj1/risNjkIxA7zZF3bTIRf9jsbW3Q0yfTUyWi+Xy4NSBiYi0WMe?=
 =?us-ascii?Q?vdG/tTIaPUyVDHM9oRAICOtf01NVPBSMW/LVGpcS6Mvb7XCl7ELUEQII5a0E?=
 =?us-ascii?Q?QMDv7lZ+m79Fv5DYnVAAznA4hy2w1EoHReRaHjTwbVEtuyQWkO+IEGfFNzsZ?=
 =?us-ascii?Q?YTfsYQp4cQPm1gZwdJYAXayZy0P7w/mY6XlcMaa+/a/yrfeZQA5MjtKXQshd?=
 =?us-ascii?Q?BbPcmu8NiVNvaDJt6v2BNlvS0JL/kChP1ocfkIzea3rp+7PToDf48EdLzbPE?=
 =?us-ascii?Q?5+dwhpQqBiRVTLnGidtknFMuKrz9gtBparCqvUaKch0fGWlTrOkUMujO+bbE?=
 =?us-ascii?Q?rqXrIEFrvfXcyI+mOQUIlwBO76qVXCqQth7T3M+r4fi0JrcuZbETK2xwqZZS?=
 =?us-ascii?Q?QrN+0JO2gmo9MeV9zkFYjmANWb5guaxIMOl957Q7ci7xkrGZl5ZOIK2rhBDo?=
 =?us-ascii?Q?44OZWiPe7hduU7EY1E/BlFIbWaM5OoRHW1i9CJpBNPt41tnrKusmem/O2rV6?=
 =?us-ascii?Q?cgbEqVQME03n3n4gAUh5XNupUPNtXPfL7p5mapQSwXUXg3zGNgR3Vzs3dAh7?=
 =?us-ascii?Q?45jPvpOarU598F9Pykt53jVxl2ega6RNjKZynpT46/WRT1mG4ctehfhKHKfs?=
 =?us-ascii?Q?T5doUoXvRBmsFs0uY3ZHj9SQFrQ7z3kwhjtTHOy2mAlNj3JIuE5Z8aXhJLjM?=
 =?us-ascii?Q?C7jssDwRJ92iJ8kmWHzNWYXHBYdsQcmfUAfg9PiMN3d0tIlyo9v3hI86UPo1?=
 =?us-ascii?Q?n9N877Fl8l2NfAXLHPjfgRJiQtzjEizc0Co8tlBJILpqxiMaNf6FZTH91vkX?=
 =?us-ascii?Q?gq6800jDjtfhtinMFxNhrntdc5eh6WGq8S6h8txGNAG8ryy0Ih+ASZSlEX+p?=
 =?us-ascii?Q?vhzJRZAT8GiOh6CIGHMWcr++eYSWsHAZiZfnUwl5f7CxQwtS3hA8dSQ4ORpf?=
 =?us-ascii?Q?E3SmvPqXSTd1V2t1EEzvbckwAIyoC0363gYUM/mWmcM4Goif+zFM3UxS3c/c?=
 =?us-ascii?Q?ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a6e57f8-c3b6-43c7-29c3-08de0c130f32
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:48:33.3627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TGs0WCO/L6ECvnVdva20vmENRYLttU9bajjD23kAdAnfqzgnWJ64scaWbU/L/Me9q7BWCJeyMOMa6otMi/QdZ5w+ZoK3E16Ikwmf9cl+hJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9473
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

On Wed, Oct 15, 2025 at 12:15:06AM -0300, Gustavo Sousa wrote:
> From: Matt Atwood <matthew.s.atwood@intel.com>
> 
> Bandwidth parameters for Xe3p_LPD are basically the same as for Xe3_LPD.
> However, now Xe3p_LPD has the ecc_impacting_de field, which could impact
> how the derating is defined.
> 
> For the cases where that field is true, we use xe3p_lpd_ecc_sa_info,
> similarly to what was done for Xe2_HPD.  Note, however, that Bspec
> specifies the ECC derating value only for GDDR memory.  For now, we just
> re-use the value that was defined for Xe2_HPD, namely 45.  We need to
> confirm with the hardware team what would be the correct value(s) to use
> for the ECC case.

I think we need to use .derating = 10.  This specific block of the bspec
is a shared block that applies to lots of IPs/platforms.  GDDR isn't
relevant to an LPD platform and .derating = 10 is the documented value
for all other types of memory.


Matt

> 
> Bspec: 68859, 69131
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 8f5b86cd91b6..f0940ff9d19b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -461,6 +461,20 @@ static const struct intel_sa_info xe3lpd_3002_sa_info = {
>  	.derating = 10,
>  };
>  
> +static const struct intel_sa_info xe3p_lpd_ecc_sa_info = {
> +	.deburst = 32,
> +	.deprogbwlimit = 65, /* GB/s */
> +	.displayrtids = 256,
> +	/*
> +	 * FIXME: The Bspec only shows that derating for ECC should be 45 for
> +	 * GDDR memory and does not mention other types of memory.  For now, we
> +	 * just re-use that value, but we need to confirm whether that is
> +	 * correct or if there are different values depending on the memory
> +	 * type.
> +	 */
> +	.derating = 45,
> +};
> +
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_sa_info *sa)
> @@ -812,7 +826,12 @@ void intel_bw_init_hw(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	if (DISPLAY_VERx100(display) >= 3002) {
> +	if (DISPLAY_VER(display) >= 35) {
> +		if (dram_info->ecc_impacting_de)
> +			tgl_get_bw_info(display, dram_info, &xe3p_lpd_ecc_sa_info);
> +		else
> +			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> +	} else if (DISPLAY_VERx100(display) >= 3002) {
>  		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
>  	} else if (DISPLAY_VER(display) >= 30) {
>  		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
