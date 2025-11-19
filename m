Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7763DC6EED8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 14:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0992D10E611;
	Wed, 19 Nov 2025 13:35:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jsjqZqhI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7694E10E606;
 Wed, 19 Nov 2025 13:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763559326; x=1795095326;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=DLdDSV02Y+J6hkXAwP0fJmG44en3+XrT/h5mgGqIJd8=;
 b=jsjqZqhIAhaGbbXpPKDeDOc1EZNbehUbRIiK0BUMsVAlXmZ8iV+PU40/
 PWCapH+B0UC+9PtAr+0hTJY3hBhvNoXyo1Hc2F3V2bhEHDhxQJU3BdfLt
 lxeDZ6iIChTwzTzgm+v9EpqSHPtaSvm8/HDvy+2J6AMtRcWDjO9HJwniU
 X29a8uL1vA9o7oEPq5hgU5dREeyC68+h6u1rFNKD7+5W8sdL+pPW+BCyo
 q2fZeBRroWhVmUnRzutn78ptY2eK06m+c8JLe+rTZsWcYsXrnLsc7SN3g
 zpx4US1Cf90mZ8BVZvqxRAc2vvx2QF65C/Wh3jwwB5ybUfRrAC/M7GB1c w==;
X-CSE-ConnectionGUID: 50e1YzQOT4WJRNli7WWOog==
X-CSE-MsgGUID: zRQGm7TRSvuZqmgjv4WDkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="53169723"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="53169723"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:35:26 -0800
X-CSE-ConnectionGUID: 2OQg5X+6QYyesKitQJsxWg==
X-CSE-MsgGUID: G2hCuSbcTU+EpYrunFs4gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="190859806"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 05:35:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 05:35:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 05:35:25 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 05:35:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OApe9KMdILSFlI7/Cy7Sk/RHVDpXn6AihQGafzGDVF9sO+20C1+O5WZ4RlwBlfx3ZbBI6H6DLA7dXtrILOK1FoYQReqoR57Ly1/b41MYs4eZ5MB/82ZQE2/9Oe7CNg+ST8K5GJVBgrrZ+uI9dCLaZTE9fzBBN8gkr7cCT0A/S1+cfVwve1VDtGwoFdzXFP14H2UO03fj+Z/5W/9ZVHGRpMFrCsVsgEtLl6VsujzxD9BGLyAtor2QxJZvNQxOt8cmhAt5wCumqsbOumVj8beZLXuj965MRWUaCuse3SCE8yfnjwwDx9pZIkzYwXb8AvZbhjabFjsGBE6oJKEY0XiIig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WzjyrTsAejxyCyoXUaoN5H0Jehuq/f0avpz3rKCiznk=;
 b=PLaj7jRz+A7BIS+qXCRdV7XvuP3NtS7QCi39VA9LOkbLLcTHELnFhOB5V57+F0v0tvdJ4dgrBIsXBkH9kJk1AJCDFV6Xb38uJN/Hx3x/lHal3DhKdIZCNSCTGVbzwn7hYIjHbRHLkK1u7s3iN98BJlpG+oxY0KfmUlrSFxjw8D9DAnoMsLh3Mn/L+eYAUIZG+lud2auczB67NkPEILq5g1mllhfSejhLt3M4jwVzrBawm2XdYz7EioSSxicf0dOcL4xRKas1wHjg/C+jiNtEVwqpHwwhtx5nJ7rqWjAuJFq1LRJ1IaWWSXYybdJxL1vYZ4BZ6O8NhtNJTIV72y6RSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7136.namprd11.prod.outlook.com (2603:10b6:930:60::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 13:35:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 13:35:22 +0000
Date: Wed, 19 Nov 2025 15:35:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v5 2/8] drm/i915/power: Use intel_encoder_is_tc()
Message-ID: <aR3HlDZdn3AuPExd@ideak-desk>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
 <20251114-xe3p_lpd-basic-enabling-v5-2-c183388367f4@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-2-c183388367f4@intel.com>
X-ClientProxiedBy: LO4P123CA0359.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18d::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7136:EE_
X-MS-Office365-Filtering-Correlation-Id: 27385882-6dae-419e-a7a7-08de27707d67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OokRL6/OXf+3w7AXxg4DEL2zULtxR0OMLSXkgcI1wbPU7vglRAhGNhlo/FZv?=
 =?us-ascii?Q?EKw/iRg5RgkF0HlBVLojBpylEiNw1L69T6yQ7LRerHXqz8U9xMKdnMYULrHl?=
 =?us-ascii?Q?eLqhISGFSjRy1/woHnS5DLm0qE8McvxuLABlFt+dgmAFkh/ZCHIympc2jT8g?=
 =?us-ascii?Q?dwPXcLjx6g44d7mLca2TH5Y4DSxijJWXuoNbnnuBcEgsgYTM+bqU9QQnONoD?=
 =?us-ascii?Q?o0T7RqtSnTK0C8dJxQXQrA5/yIrQkbSaZRwU1WcAmZew2Cgv5wn+eyIze7li?=
 =?us-ascii?Q?mRF9pPqRDfJCA9YM6jAjaLGvkHzdLBm6zDxEi4xUEG2xKlsX4/CtKYkWPfUw?=
 =?us-ascii?Q?hHdGFIC9HB90PhQ/xpd6wWIaaZY3GHsZzIBsLJJ2O1G4miY3hWgEwoaFhEvC?=
 =?us-ascii?Q?yow/9Wji35ro6myDXCsBWtZyLGXJ61pdUO0XRTFRsSeDydjvpUYQsht33g2q?=
 =?us-ascii?Q?mdTS2OcbgBTTTRzGnf9T5GmTl4GSQ1pP6T7tbBBKFsBwaWwnqxqKvrvon3+4?=
 =?us-ascii?Q?TWxNpSdqY2VFFijjHuO9M00KJOtN0jAaPImd0b6dZclTteNCrrtldxRy5hvN?=
 =?us-ascii?Q?260VvJSpWMsCAE7GS6DubdOAr9KCTDwl5oRh7qImruPE7RyNdDOlD2O/6USW?=
 =?us-ascii?Q?Vfolz2VuQNYjjyoVB4hnfHnfNGI63DeuigLLVbsV3KwrIatWS+S70zw5sNFM?=
 =?us-ascii?Q?1QXAwOP2bJQA5tVkkyIFlkmvyhldMXouva2czGutlftzIvanabY5ovZkeBuZ?=
 =?us-ascii?Q?6du8PCCDiphVP1CggD5wYtz0s7uQoZRawVQjKNcIgoClzdPfpuINIpbbxiOF?=
 =?us-ascii?Q?xFuNQcuKxeneEYKxUr8u9k/+R2MaRFpFv/BWWoZLF2b6EHZT2dalQarpoOYN?=
 =?us-ascii?Q?KsOC8eT7TExvzNuUJ26Y/HtqSAbBfS4+/JcCDXZ6PQIz2Q/3tLbTsHOMjEEO?=
 =?us-ascii?Q?QnsMU7sxijgcxW2McCayH2SnDKN5CcArIxwG/dJ1kzEivSqdtOjLM5htjigL?=
 =?us-ascii?Q?zgeYMGxY0QPzwPCP5p1slAJGeQPzz1mVTIEPAcgViuQMFnZfNFa7/vs2uNpT?=
 =?us-ascii?Q?NZdmRL2RY7LEVPPHXyDkoiypSOP4KjgtLEs8ENDrPTQ3FM1y3l2B9fJK/ieG?=
 =?us-ascii?Q?e63gfJnkJRaY9OfDM4+cui6BISb9PNK51H2Py4pi5gLrZGIXMSZ7Uon7jCnL?=
 =?us-ascii?Q?gpR2ApwSORXyq9oKZMuVtcuPcQ/SoIcwccMrnVFO8DIRjVoEW63BsBNKTker?=
 =?us-ascii?Q?Nx4q0eVeTn4CjegJlmQi4IYE8Yg0g5fDcfQTHfh5Y9foGnLrThKSvPOjgyFN?=
 =?us-ascii?Q?ejUjN1GuvGCdrOOWjCnJst96RG/rqVfZFPDQAsKAMvJgybiFuMBlyBpHl22V?=
 =?us-ascii?Q?cJuY/JeEvTdbUxrl/KThJtR0mKXoFsC/b5sla2xciGaZDZiwepLjQA81Ejyp?=
 =?us-ascii?Q?25C2/5Bbu+GGlyd3LPl7yjfZbaFXdN1y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6wUsAp+bIuV0FvOCC4umj7VRcyqp9txygPQoMVf3yX0q2zM7OqguYCIh7p0u?=
 =?us-ascii?Q?Q9yvivNjAIHaON1hDPS1QOY2pfx/ZWP3EkEmtU8wF93ZV/Tk90vJXASvGPiy?=
 =?us-ascii?Q?GpoHAh1I1M0n0swN2oo9gUOGH4FfLWTs1Y4Z4g6U6/Cy5HtarE8Kq3yB0pVY?=
 =?us-ascii?Q?vw8a5IasfACFoAOBbgVt19YCXHHXzYFPWflUQFWSk7DEc1CyT6rfnQ32hZ49?=
 =?us-ascii?Q?TWIrDYFrnv3Lyvjf21Thy/0hxl7TcXOk3cV8jYQdvQjNFD87EsHcmQj33fHZ?=
 =?us-ascii?Q?L0+fld2wwo+oXkauKFUTJ7R8O7WzLxZ3nOmiiMQOrzzh0fXkr0bdnTKkPJ30?=
 =?us-ascii?Q?YVPKxjbwUWPkiPuVvx1cLxD3otgQlg/Jf3ehBvaTFtmme9hmeaH+o/s/Qm2G?=
 =?us-ascii?Q?Q9g2dnZMOScV3PS1A7a2W+nEyZFEHxZPlGCs5F0H7tJKHaF4iYIvqFPcw3Da?=
 =?us-ascii?Q?+ttC+5sH3hUN3xLMfXHYXONvPG8v9UQjK43xa+uZF+wOSOy0U1cUrG1+RcGT?=
 =?us-ascii?Q?MyTqc7DuIVk1ivXGbIkANlA9nsX4X+LYzXTYm87cdSvcB010JS9isNL8gW/2?=
 =?us-ascii?Q?syXSg+gaQyRIaV9Pgsdekk02iyOMXOI7lOfuS1agDIe9H1xiwVvwybT1yOId?=
 =?us-ascii?Q?rK1ql9/OyYrwrNMOz4icMV8XGhqBzUI1n3/fyFvgv9yhl0XM1oNaHd98HMbC?=
 =?us-ascii?Q?XEGVBYNrTNttI/p/D9RateALi5jQDka556/I6D7YmCysyfQs7aDf2ugMzZIC?=
 =?us-ascii?Q?Zhn3mPaPSTZIW58e4O7vMW2iBKk5N1NffTTwURuRJyrpaiY5QqFfnXcUvF+O?=
 =?us-ascii?Q?VSAiWqUbM9HM1MDeMXoliXh1USlxwaVsSeSGi3Y0gThxIzW32CUf9SY47ktP?=
 =?us-ascii?Q?OjCncl+1D+FqR9EL5kIT6ECdjH4FYluwn6fS7N3UnjdhfyJV//z1w4+yaG+u?=
 =?us-ascii?Q?JxuHXDetGC0OqesnVQRLGE0qB4OJKBm1JtdgewlQ0SSGOcAabLJ1PqVcON2h?=
 =?us-ascii?Q?n9s8w5WdOGVYovjioA5m0FZQw5yykdAzNNq+WvVZcalxDZyAdk9aNyzhe84Z?=
 =?us-ascii?Q?gh6b0rRwS5ul7rOrSom5J1Xwk6U4nt1dFvMfdEmvfGmiu5E9YXxU15FH4Te3?=
 =?us-ascii?Q?Pr9XJ0wTuBsdKPICs7MoCXjhSapgUKpuipA6rzaoT1de43K5O5CqGpeNpRWQ?=
 =?us-ascii?Q?iBxNCd9cjveWHkEJCORQDRGDZtiOZg9VYmP4lI4SHlx8eu3ji+icYSYqS14d?=
 =?us-ascii?Q?FZRtAvQu+qsn71JF2nJiFDr2/upVinU7XieHselLXn4+LeUGZrv4dC5iNoW1?=
 =?us-ascii?Q?eQMusmtsDGd0VhI2cCfPk7FUbfslFN9LDuHXqn+ni4zDiZnbki4Amp2yucVz?=
 =?us-ascii?Q?bAu8qtOzwwdX3zwVnEHOX4Gy1/dP2r+yZpZmVerDFe5BosNY8Nc53trea6+1?=
 =?us-ascii?Q?utwF5QatxNO7L/nddTtODvFZXIPhV2yzUCTi/cMMKAtc6WrQ85os/fD/Qpzl?=
 =?us-ascii?Q?hMcgc6YTUByzhVPT/U8MwZFWVuO8fubvj+yyGOo5ExqnUIgWxPlZMDsIJjSy?=
 =?us-ascii?Q?WFB3KE3JftAZ/4oTUtJTzk6PhODUB9l9B9GCyoAPUJY7LBD6oNMrgsELQZ+f?=
 =?us-ascii?Q?6j86+ho3AFOQKIjgnhDMd9Rc6gSTyIcz7x91u9xVomjj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27385882-6dae-419e-a7a7-08de27707d67
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 13:35:22.8485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7GqXHbahOnKxA+Re6FjGkRmoThIDDhmOlUIkQqzT8D9YoeN88ttDPz6ZkA0YgTkC3JslXIHOP3WVJpS6MuVjTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7136
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

On Fri, Nov 14, 2025 at 05:52:09PM -0300, Gustavo Sousa wrote:
> Starting with Xe3p_LPD, when intel_phy_is_tc() returns true, it does
> not necessarily mean that the port is connected to a PHY in the Type-C
> subsystem.  The reason is that there is now a VBT field called
> dedicated_external that will indicate that a Type-C capable port is
> connected to a (most likely) combo/dedicated PHY.  When that's the case,
> we must not do the extra programming required for Type-C connections.
> 
> In an upcoming change, we will modify intel_encoder_is_tc() to take the
> VBT field dedicated_external into consideration.  Update
> intel_display_power_well.c to use that function instead of
> intel_phy_is_tc().
> 
> Note that, even though icl_aux_power_well_{enable,disable} are not part
> of Xe3p_LPD's display paths, we modify them anyway for uniformity.
> 
> v2:
>   - Add and use icl_aux_pw_is_tc_phy() helper to avoid explicit encoder
>     lookup. (Imre)
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> # v1
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_display_power_well.c    | 33 +++++++++++++++-------
>  1 file changed, 23 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f4f7e73acc87..40d6b44c0b74 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -258,8 +258,9 @@ aux_ch_to_digital_port(struct intel_display *display,
>  	return NULL;
>  }
>  
> -static enum phy icl_aux_pw_to_phy(struct intel_display *display,
> -				  const struct i915_power_well *power_well)
> +static struct intel_encoder *
> +icl_aux_pw_to_encoder(struct intel_display *display,
> +		      const struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
>  	struct intel_digital_port *dig_port = aux_ch_to_digital_port(display, aux_ch);
> @@ -271,7 +272,23 @@ static enum phy icl_aux_pw_to_phy(struct intel_display *display,
>  	 * as HDMI-only and routed to a combo PHY, the encoder either won't be
>  	 * present at all or it will not have an aux_ch assigned.
>  	 */
> -	return dig_port ? intel_encoder_to_phy(&dig_port->base) : PHY_NONE;
> +	return dig_port ? &dig_port->base : NULL;
> +}
> +
> +static enum phy icl_aux_pw_to_phy(struct intel_display *display,
> +				  const struct i915_power_well *power_well)
> +{
> +	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
> +
> +	return encoder ? intel_encoder_to_phy(encoder) : PHY_NONE;
> +}
> +
> +static bool icl_aux_pw_is_tc_phy(struct intel_display *display,
> +				 const struct i915_power_well *power_well)
> +{
> +	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
> +
> +	return encoder && intel_encoder_is_tc(encoder);
>  }
>  
>  static void hsw_wait_for_power_well_enable(struct intel_display *display,
> @@ -570,9 +587,7 @@ static void
>  icl_aux_power_well_enable(struct intel_display *display,
>  			  struct i915_power_well *power_well)
>  {
> -	enum phy phy = icl_aux_pw_to_phy(display, power_well);
> -
> -	if (intel_phy_is_tc(display, phy))
> +	if (icl_aux_pw_is_tc_phy(display, power_well))
>  		return icl_tc_phy_aux_power_well_enable(display, power_well);
>  	else if (display->platform.icelake)
>  		return icl_combo_phy_aux_power_well_enable(display,
> @@ -585,9 +600,7 @@ static void
>  icl_aux_power_well_disable(struct intel_display *display,
>  			   struct i915_power_well *power_well)
>  {
> -	enum phy phy = icl_aux_pw_to_phy(display, power_well);
> -
> -	if (intel_phy_is_tc(display, phy))
> +	if (icl_aux_pw_is_tc_phy(display, power_well))
>  		return hsw_power_well_disable(display, power_well);
>  	else if (display->platform.icelake)
>  		return icl_combo_phy_aux_power_well_disable(display,
> @@ -1852,7 +1865,7 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>  	enum phy phy = icl_aux_pw_to_phy(display, power_well);
>  
> -	if (intel_phy_is_tc(display, phy))
> +	if (icl_aux_pw_is_tc_phy(display, power_well))
>  		icl_tc_port_assert_ref_held(display, power_well,
>  					    aux_ch_to_digital_port(display, aux_ch));
>  
> 
> -- 
> 2.51.0
> 
