Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F49C4EF68
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 17:16:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCB310E60A;
	Tue, 11 Nov 2025 16:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c5Rkk65Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4D510E606;
 Tue, 11 Nov 2025 16:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762877770; x=1794413770;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=wygebmPlWUvRFNrqdTWX2HHz02DnHRZ54m0GRloSHq4=;
 b=c5Rkk65Ziud9uahD9GRI1o7SUbokRg2JIcDsNplEbUQa2L0OcN01ddmV
 y8zoHPQJtVU67laxZmWUL9XBAzR2T6XRR/bknL2IsySvFNPpvvCiQOvxX
 ijzEkSkhaS4hNsoT1HmBE0wGdSWmSM/vzXJdSRUjIiqb8uz/FwPvrLDBG
 r6Bd2wLispsndPDtZArrExcYgkgSEZMzhgJs99aAJkvJYlt1p8AfO+HjP
 824qG9V0HA2rBtHdQsKs9ByOsxPvGGSv90uasMo60e37CtK0NZmJ+JWVp
 FOB5jDkjo0C7KI75B5Y9KxozgaXRVknyIG6FIhGxrELLyypvTwTobAd4B g==;
X-CSE-ConnectionGUID: 8RKS0DE0TDSihNKn8kMHrw==
X-CSE-MsgGUID: uQ7y5q5/S16bwBIqhR3pqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="65097792"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="65097792"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 08:16:10 -0800
X-CSE-ConnectionGUID: m0tOc0F2Q3WgHCDNCSRG9g==
X-CSE-MsgGUID: lUQait3aTUCO7OL8VKWvyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="189254745"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 08:16:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 08:16:08 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 08:16:08 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 08:16:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=at2jKC4CJ2RDCHGr4Dsv7JMjIfqZJJpyU3H0wYXQvTaWD89HSfpVO7QurfnmMkWBvomGKYD8u0lghscLc3ySOYvhhsOeJivjzUAdNu6c6uZxoNvQFSF8uqIuJ3fRawt2fEB53Ipg+rrJGJm8OZ8lVS3LuPnb3jMCxWBBExbmXg9HevBk6bnEZM+a0QHaZhgWLWXfyMTJYHz9Ojw8xqsgV1pbIwq8AheN17Wwhhk6cBSjUzePHEfsrNNfhIMPaEnYFGhGsZlG/kLH66hovLlx7pZH+K+uLs8hoOwmkiAauqlBVvvyOWT3OOzlkHoZ6K+/ld2M0ejJGzYHCZFCTo3DAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4wcqrdI7V0/ndottJSuF0FaSsxFH4dDy/ukZqfidlYs=;
 b=Q+y10QcCdl1ut04acWDUb3X+joUO78ra9uFXoCCOUSJJtvBRPuJE2DtwkXjSC6bQkfDj5agmhazY1LQW/h2gvFbLj3afyNatP5cvE87k9xkHhQrIZvFXA/Fz2hPretkAIVjRKP1x8wW/Vf4kkmdm+SvBcTwFMxNfpXL2LUho9BabLvSFNU/wo+v4e4MgH+nmKDdN2mowzSZecUP3+nH8rnqM9kJVCqPBQn2CrykKLZ82GDoGZuJmaT/oM02LmSRIsJWiuo9wUb2zC9H6UaNlORIEOS2zQhtNBpwEpYk28fxre44NeRjT/CvzOvuwcmv/9KS9JhRV+uLSpovKgELZYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8773.namprd11.prod.outlook.com (2603:10b6:610:1cb::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Tue, 11 Nov
 2025 16:15:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Tue, 11 Nov 2025
 16:15:47 +0000
Date: Tue, 11 Nov 2025 18:15:41 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 02/11] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
Message-ID: <aRNhLYc2SPuNKEIv@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-2-ab3367f65f15@intel.com>
 <aRNeF6O4SBuBGZvy@ideak-desk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aRNeF6O4SBuBGZvy@ideak-desk>
X-ClientProxiedBy: LO2P265CA0180.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::24) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8773:EE_
X-MS-Office365-Filtering-Correlation-Id: aee449e4-c4ee-432a-596c-08de213d92d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|921020; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cncifUfdHb8D/ofKawvZGDF516/NV0XRIMtCfZg8ziVrJVzZ/MbzlHhMkS4/?=
 =?us-ascii?Q?x56OVt6UFz+olC/z4DN70cxA+XkyZ3XisCFEYH0eOFzRW4HQALZ1/IgPxhJD?=
 =?us-ascii?Q?FkTZan6NoAt8smHNIgunHrL1lK4ME9Mp4+LnE1fZldW2iC1PYhTfMJPGgxLz?=
 =?us-ascii?Q?LxTYkqaNMEfk3nvV2wGWfFFeV6xJJdOi13KtAuqmit8rsWV3dojvWbi1+JVf?=
 =?us-ascii?Q?qIryZ4PPoVZvBZ3ehQgeLruxTxnnuvvdnJblYcEhKo+n8r5usPBwtH4aR1KV?=
 =?us-ascii?Q?GALMaJFBfKbt6uckB2lzjWUnYlRz1IY8avVlwo773xfzD1VrWdPQcPAv4+Yj?=
 =?us-ascii?Q?yYVGHK93C3vNbYp+sYt4TP9qMcSpi5vg2UNMHaXeReSG6zSbnYJdPJ8JbIO8?=
 =?us-ascii?Q?UCaWaZcSHp68k730iW5WX3T9daEUbZnwwOa79LWHL6m5Ii9sK3Zoq+WDPCQ4?=
 =?us-ascii?Q?ErDgsGIOjIfcVSFHaE7gW3opjza1kQgHhqp5iuUCS6YKN4NGzrzGbTeTuOpF?=
 =?us-ascii?Q?2kLU5lbE8QNC1v4vZ06yWLN3FqeVZ7/UkGBus8bIcFTClqTeJpRGbee1z54g?=
 =?us-ascii?Q?4FLZ05uEd5QD0HAccTahqceZvC6re6aSELMpf5b8xxccx21xZAb5CXns9smS?=
 =?us-ascii?Q?jMicadhd9j9pI/ww8ep1lo6k7anCw7/wU041gUp/kIJ8Nyy/J9RxYjV8rIAI?=
 =?us-ascii?Q?NNtvDp41qaafnMbTLGEy4wTV2eXGQYla1DUH90cHwA4MaWVjdlCWnYgf3/xq?=
 =?us-ascii?Q?dXvuzCPNCWbQaVsVs5w5i/vyC5fPjzkcNzSOV3m+s1kjqj996TIp65YSw3dT?=
 =?us-ascii?Q?LcJyDDdWjcCzAM6foxjG9LWz5FWtwlv309+vWJmU73zq8QI83VRsTYDk5Sci?=
 =?us-ascii?Q?K6xigk5P2blBxouQ5+GdKiGVRzcteaOS5mFRv60cG45l6q7V/1e8e6RYqRV4?=
 =?us-ascii?Q?qkhVhP0qUqZO/rhpmu2kL4mt/fMMlRV0mLexJhYelhdnHMVrKvQcWGZ9QFGi?=
 =?us-ascii?Q?tsyhHWBq3ItavKa8f+4tdUE/GN8p8W94VkaApQhXwePkBVhkKQxsu532FYv1?=
 =?us-ascii?Q?4JAvnOJh152UjZNZ83gDhim16yM3SLmeNMdNLH73ScK+pUJ7V8ZOGazMP/Hp?=
 =?us-ascii?Q?282wxyDNcuLtrX2xSudTnpbajKWJlv5y9a44yMRgg1penpMRwOLezf1oEGDw?=
 =?us-ascii?Q?68oheNkGkYsQF5WhkRiZd/N/klIgEREbbiM9GtejieZ+O47wxvSm57w28ene?=
 =?us-ascii?Q?Ul6N1T7iS+Dav0oP3eKVB4UDLi2dSDfQPRHj7Hz3ncCKDASE5R6UuvBYsDWr?=
 =?us-ascii?Q?b6gz37ykquV6qOI21gOZ5X9o0GeeVg2VDlNmL7zrTtuLQl7qLiaW9vc+t/IP?=
 =?us-ascii?Q?BDgmOpro5M6jLV/69/i7weqM+fIH7GKUgTDzt0rMJaX8609+0YyY6mJDORcg?=
 =?us-ascii?Q?G9VoIM0JdeSwS6r9GSLu7SfBjixqu8G8X+VrFCX31hEzCdT9WQRPjlzylai+?=
 =?us-ascii?Q?CMRzVYpW77vdgwo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(921020); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jPBA8iEiOTRqZUgIpsF8nIF3dg+tkKuCN59ZC1lSHBP6C6r/k7v6OUBr7JNh?=
 =?us-ascii?Q?N55ZpDaNm4DyLZ6c4/hNuUOciRFEpz6bZ/z5HyUXh+Zux7kb/e0LAGqi9TLv?=
 =?us-ascii?Q?7w0FeciLfyfkSPxng9qj9036EzWuaA28qX4biQFOG5MFAkkMBLAeJQwQOO9r?=
 =?us-ascii?Q?Hq1fpPQ670C+f0/fgmrLo3iPS2zJbtzC1ZJc+u/O06WshO4Kc/cHGnVkse9B?=
 =?us-ascii?Q?NARsx5lPXCTK2oECzypOl3Rzis9VwmhwwJn8ZDZVdx5z9F0PvbzPaTL5LqjJ?=
 =?us-ascii?Q?7rmRCpPfkhSwrQB3Q3/rHw7WNPjFVGA7h3dPVQAX06ozhP+YmhspMA3C2gT/?=
 =?us-ascii?Q?I82JPgGF5BqPazFNzMBLEt5XL42TOyuO66cDsVa/zlqkrcHS7TtfQYAHWvED?=
 =?us-ascii?Q?Uk4XchzJxMrvjsLz7cqCHSoQyTxK3MHmo3b8uGaW1D11rnQnCisjce7l2bri?=
 =?us-ascii?Q?dgAxia69IV/Ust7lv6jyf6FO0gyoFUAK5cBBfWRzuv9ZR9HHqj178isu3Dwa?=
 =?us-ascii?Q?hXMrqD9otPWtByT+Eo6wAOcmNJwW2A8MBLsyMnJCM671pf+yKdMQ45RiA3kW?=
 =?us-ascii?Q?iBpO+QO/BHaZlBKTpq9NTwCzZ8jCm/busxX2vSd5cua5nL5OipPJw5CXzQVB?=
 =?us-ascii?Q?fAg11MvOrOuohKOjm60Bd6MnffR3hMyxcXu3JhlzET0caYgbMyZgcCQDyvkL?=
 =?us-ascii?Q?mgM9JoxF0LZ7i/yvdJ/bO0GXMQUZWzqn388EUkN/A4Tv3E6KNVr6S2RSDCTO?=
 =?us-ascii?Q?/6J+ThCXezsBcIVqIQT14uuD0fPKJiNk2VQLQWCCzjID9wA2ehKHerrKweAs?=
 =?us-ascii?Q?h42OVg577TghCkci16Gp7Dv6nrcj+ybQL3RpZfyaYcCQVWontEjtuujjpHcs?=
 =?us-ascii?Q?L1+imeurPXRW4YYmI5p1mc8sMRipNp1pWpsn8lYlP13h8L/p74a3BlrStw6w?=
 =?us-ascii?Q?4EC6eUTB6AO89kshZXf7DLPLvbC+UHYyNOy1aTRC9ONuEOHuJJN3+KG3A9ni?=
 =?us-ascii?Q?A+b28/LVAGArcHGyWaK5cwcLXMGlgI8OmzACCPAyi+pq2X6GAoO7rWjXoc3h?=
 =?us-ascii?Q?6MY6M6mnJVUs6ykFdTufGXcpYvrIOo57nk8Y/dpqPlC0wkdAsTUPO3RMS8Z4?=
 =?us-ascii?Q?P62t+5GlFL6qPh0xAEtU33ElRggRca34V9Fm75Ixr3kpDBiTgQhyzJXGayZc?=
 =?us-ascii?Q?HEbB4HexGWFjxe3yR0eD8nR33O//3j7PXxCLbx+LHCfHXiwBie+4SErr4P04?=
 =?us-ascii?Q?1BMQWwqYfwQ6Am7G6rUQTR8GdvlvgIot43wqABMbg4eG9PVYEHiSJ6JNXgG6?=
 =?us-ascii?Q?XKuFE8QYsOmPaxtfh7rRnB3BHjqNIyP+6FV4J8BYPsGMsowaZu7ydwFkoABJ?=
 =?us-ascii?Q?/UAg+/FDOI5GNYO8hTFpuZYOlzghu5vlGC2Sr5ePyazvctGKmA0DCVJPEaKU?=
 =?us-ascii?Q?dKB6llWn6GtWNnYYxgbqWe7Q7JbFbYfl1UNCOJJqgLKHuAKcVGHnPeDTwJIa?=
 =?us-ascii?Q?togebvOoyjwFGHh/V/NwHakzW0LZKn5JRAuVGWYwNQ4JVTTOLlwEqi5xUh8l?=
 =?us-ascii?Q?xu3TdVgrzCsdDQkFQhSLQ4JTh8a/RtbUo4yROv0On9p1BFQOdxClSV1q0FaL?=
 =?us-ascii?Q?Wr+zNLF0RFdgsC/w2Uw+/BLzvSiC0/7N0FSodEIEXqKE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aee449e4-c4ee-432a-596c-08de213d92d5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 16:15:47.5187 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AKsHFOmorhyXP1HXHxeH+igTVX2LZqvgaKoO9osyWLeuagivhawQ4URrqR1UjNOEoJJYVsnLv9jLKv9jc0EFxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8773
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

On Tue, Nov 11, 2025 at 06:02:31PM +0200, Imre Deak wrote:
> On Fri, Nov 07, 2025 at 09:05:35PM -0300, Gustavo Sousa wrote:
> > VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
> > configuring SoC for TC ports and PHYs.  Update the code to match the
> > updates in VBT.
> > 
> > The new field dedicated_external is used to represent TC ports that are
> > connected to PHYs outside of the Type-C subsystem, meaning that they
> > behave like dedicated ports and don't require the extra Type-C
> > programming.  In an upcoming change, we will update the driver to take
> > this field into consideration when detecting the type of port.
> > 
> > The new field dyn_port_over_tc is used to inform that the TC port can be
> > dynamically allocated for a legacy connector in the Type-C subsystem,
> > which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
> > that field in order to handle the IOM resource management programming
> > required for that.
> > 
> > Note that, when dedicated_external is set, the fields dp_usb_type_c and
> > tbt are tagged as "don't care" in the spec, so they should be ignored in
> > that case, so also add a sanitization function to take care of forcing
> > them to zero when dedicated_external is true.
> > 
> > v2:
> >   - Use sanitization function to force dp_usb_type_c and tbt fields to
> >     be zero instead of adding a
> >     intel_bios_encoder_is_dedicated_external() check in each of their
> >     respective accessor functions. (Jani)
> >   - Print info about dedicated external ports in print_ddi_port().
> >     (Jani)
> > 
> > Bspec: 20124, 68954, 74304
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 54 ++++++++++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
> >  3 files changed, 56 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 852e4d6db8a3..1487d5e5a69d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2530,6 +2530,36 @@ intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata
> >  	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
> >  }
> >  
> > +static void sanitize_dedicated_external(struct intel_bios_encoder_data *devdata,
> > +					enum port port)
> > +{
> > +	struct intel_display *display = devdata->display;
> > +
> > +	if (!intel_bios_encoder_is_dedicated_external(devdata))
> > +		return;
> > +
> > +	/*
> > +	 * Fields dp_usb_type_c and tbt must be ignored when
> > +	 * dedicated_external is set.  Since dedicated_external is for
> > +	 * ports connected to PHYs outside of the Type-C subsystem, it
> > +	 * is safe to force those fields to zero.
> > +	 */

Forgot this: IIUC dyn_port_over_tc doesn't make either sense for a
dedicated external port. IOW, a dedicated port/PHY is not enabled by the
TypeC sequences defined at bspec/68954 and so for such a port/PHY the
DDI->PHY mapping is always 1:1 and so the corresponding DDI can't either
be dynamically allocated to different PHYs. If that's a correct
understanding, dyn_port_over_tc should be also verified/zeroed out here
imo.

> > +
> > +	if (devdata->child.dp_usb_type_c) {
> > +		drm_dbg_kms(display->drm,
> > +			    "VBT claims Port %c supports USB Type-C, but the port is dedicated external, ignoring\n",
> > +			    port_name(port));
> > +		devdata->child.dp_usb_type_c = 0;
> > +	}
> > +
> > +	if (devdata->child.tbt) {
> > +		drm_dbg_kms(display->drm,
> > +			    "VBT claims Port %c supports TBT, but the port is dedicated external, ignoring\n",
> > +			    port_name(port));
> > +		devdata->child.tbt = 0;
> > +	}
> > +}
> > +
> >  static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
> >  				 enum port port)
> >  {
> > @@ -2668,7 +2698,8 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
> >  {
> >  	struct intel_display *display = devdata->display;
> >  	const struct child_device_config *child = &devdata->child;
> > -	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
> > +	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb,
> > +		supports_tbt, dedicated_external;
> >  	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
> >  	enum port port;
> >  
> > @@ -2694,6 +2725,12 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
> >  		    supports_typec_usb, supports_tbt,
> >  		    devdata->dsc != NULL);
> >  
> > +	dedicated_external = intel_bios_encoder_is_dedicated_external(devdata);
> > +	if (dedicated_external)
> 
> Nit: the variable could be dropped imo, and would be good to print the
> dyn_port_over_tc info as well. Either way:
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> > +		drm_dbg_kms(display->drm,
> > +			    "Port %c is dedicated external\n",
> > +			    port_name(port));
> > +
> >  	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
> >  	if (hdmi_level_shift >= 0) {
> >  		drm_dbg_kms(display->drm,
> > @@ -2751,6 +2788,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> >  		return;
> >  	}
> >  
> > +	sanitize_dedicated_external(devdata, port);
> >  	sanitize_device_type(devdata, port);
> >  	sanitize_hdmi_level_shift(devdata, port);
> >  }
> > @@ -2778,7 +2816,7 @@ static int child_device_expected_size(u16 version)
> >  {
> >  	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
> >  
> > -	if (version > 263)
> > +	if (version > 264)
> >  		return -ENOENT;
> >  	else if (version >= 263)
> >  		return 44;
> > @@ -3723,6 +3761,18 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
> >  	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
> >  }
> >  
> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
> > +{
> > +	return devdata->display->vbt.version >= 264 &&
> > +		devdata->child.dedicated_external;
> > +}
> > +
> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata)
> > +{
> > +	return devdata->display->vbt.version >= 264 &&
> > +		devdata->child.dyn_port_over_tc;
> > +}
> > +
> >  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
> >  {
> >  	return devdata && devdata->child.lane_reversal;
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> > index f9e438b2787b..75dff27b4228 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdat
> >  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata);
> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
> >  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 70e31520c560..57fda5824c9c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -554,7 +554,8 @@ struct child_device_config {
> >  	u8 dvo_function;
> >  	u8 dp_usb_type_c:1;					/* 195+ */
> >  	u8 tbt:1;						/* 209+ */
> > -	u8 flags2_reserved:2;					/* 195+ */
> > +	u8 dedicated_external:1;				/* 264+ */
> > +	u8 dyn_port_over_tc:1;					/* 264+ */
> >  	u8 dp_port_trace_length:4;				/* 209+ */
> >  	u8 dp_gpio_index;					/* 195+ */
> >  	u16 dp_gpio_pin_num;					/* 195+ */
> > 
> > -- 
> > 2.51.0
> > 
