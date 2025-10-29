Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1590C1D21F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 21:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC2210E82E;
	Wed, 29 Oct 2025 20:06:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b+LDw6eM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D56CC10E82E;
 Wed, 29 Oct 2025 20:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761768400; x=1793304400;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bBaIqT7cHrhfw2OcLTUypYa/2pQojhYyLNASC6cJCcM=;
 b=b+LDw6eM7jDwfEVR0kB/vf+hx7u6ov16N3hunxkaDqwgQRBsq63+Jnlr
 euVYGpGQ8dSgy/Ju+7oGY+cwNPZz4O9ND4WRIg+3AXdngQmwF+BQWF2+Q
 2mYtxMN+cgbonoTWXx8LmAJNKB1uQmcCwyeC6na8QGPnhy18f1oCTYimU
 grjS+GzbweqFD5PosJiASPJVBc0yw0XwiTR5yU1lXZfJ04+KiLURqVyWD
 9AQ1wf7Z9imD8130l9b9q5uw9zlEsB6QQTOf7PHGDesUmkuZLaY3TJswB
 xwI3IB+gB9JawHuDpmFMmvEreiQOuK/64JXwtYKLy9FzbkUW7198T5FEv Q==;
X-CSE-ConnectionGUID: HpQ3pwPySRGGYTAcPlnIog==
X-CSE-MsgGUID: C0776tW9S1CqjgPpAG6ZqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="66517874"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="66517874"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:06:40 -0700
X-CSE-ConnectionGUID: RZB/teNQSdmhPMUew7pFAA==
X-CSE-MsgGUID: E02DM23sQsaN0CF0MVMJqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="216420010"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:06:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 13:06:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 13:06:39 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 13:06:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UbMpj4Bb4CTbW+I0xwvhIlvRGlvtWs5SYZrPdONa0HCY9lKEX2AyM2Tbdvq+l2+WG/7tymG9/veprWTuQxZ+TcfslWBukxWu5kG4UsmdIfqs9QKho1USBYoXY0OqHuw5h9IkzL6g/0QD/86GEEpqXoNzKW8xsUMYoKFWkfX6hOYRhTtG+Ujy+Zv4Rsk/3+gPbhT0lPHJR8R/Ef+0dSnJkzvFo32FKJOAKTqzFJKaZjwobAgTjESDjieicEJIhx+koHH7INfq6/35iosNkAh+lVyahdLE3s+F3DfKkfvaAv2uObyqSUuFBA0phXRSuy19a+xGe79fcV2/ndNEleZoGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=io8i0WJ2wr1YdodliZhBZ01BCuvq0bL8TzQ88AA+g8E=;
 b=tMgpqSPLHXqhEMAj2akcgAHMWiuIel6WM2gqm5DjA9LfMykl4vTtg7C8mk4IXqKSrnaRFREymKzJ/ScO4o/UAZzy7qcExIrJS2h3vGyZ37nJGzvUb3FJtHZCF9C9bID87gKtsP0fNZ/mvs+2Y2AaAZyn02pW6Z+DPhp52Bh4oQOeIkqEZqzaumfop9BbamFq2fLJcyB9wWS/IJv4HAF8tqdVX38wT4yC16S1HQPJRYdvIjZpXVq8xikZCQWjhpAGdc2zGci1nMzab49usWsjVO6A8HinD3MiBZad/O1YEp0cBchzhKzmW9jV5cEjck3pwvBtemm5Iouzb3iXZEuLZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW6PR11MB8339.namprd11.prod.outlook.com (2603:10b6:303:24b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Wed, 29 Oct
 2025 20:06:31 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 20:06:31 +0000
Date: Wed, 29 Oct 2025 13:06:28 -0700
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
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2 10/32] drm/i915/xe3p_lpd: Wait for AUX channel power
 status
Message-ID: <20251029200628.GA2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-10-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-10-10eae6d655b8@intel.com>
X-ClientProxiedBy: SJ0PR03CA0337.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::12) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW6PR11MB8339:EE_
X-MS-Office365-Filtering-Correlation-Id: b10cf6bf-fdd9-428e-ca6a-08de1726a6fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?po5CGRDOJiEvGXqe3oVIR6fQhn3IU5K46wH/g7sLq7iQ1LNqOLRwBBIAlmwv?=
 =?us-ascii?Q?F/Pr41quUWj0tCrqHErXmwu3sEf88U2diCm6Yqk7v7rdhSjjLBvC064pas4B?=
 =?us-ascii?Q?p1LgFbS8gEADMFZYuwtb8XSwjtFAPzR8nvjYIeHoEWZyFIAKk1zrXMO4fb21?=
 =?us-ascii?Q?4R9uVoIBF8AqpKcxJLHGsR0iMci7nwt3ZCHAi0KTgGW6uKSQQwDhjebEwl+B?=
 =?us-ascii?Q?mFqtrrVs+7nK1EnkJ1yoL7jFkR0JdCg1MsT5qLQ9Tjp2XkWYaSmNeSIv8EtW?=
 =?us-ascii?Q?yI4ZS8qRntrRUDY5OnlSSCVXvebNH5NI8+X+Oa0sdH7WyI8PJ6VVd9aXEvxY?=
 =?us-ascii?Q?j2qt+UYZTnU/CEIo2YffEsHmkIOFuqQ/Yvspk3OLIkmGrfmcz9wu3QPNyP2K?=
 =?us-ascii?Q?sjMZKEMS6Silg9jNGnHgzdaAux8+YhSL1Of2N22HvpDs0NLvcW0PrA3AmsSE?=
 =?us-ascii?Q?c9hWvqFIG2+A6wYS01PUrlXe4AKd8kg12uR2UfY7XJzEZvEywZ+T9pn+OfL5?=
 =?us-ascii?Q?BeBZnl+PDp1hFSnPtHObbbZ8JXC3bnLspRurMfl6+MfzLTkv2az3UpYO4sxZ?=
 =?us-ascii?Q?KrvCWDFknOZeYWkHGUJN6xKXF1acGuKBvSGh0/B/3ul+oAZmqiQAga2aWZsT?=
 =?us-ascii?Q?vtfuTr+EeERQ8exrcMtN6zFGhLNr2THSzMkXv+JzDaaBs72Icni9uFCEG4E5?=
 =?us-ascii?Q?OIAmD1kMzkUBY9Mvrft2/hzI9oE3pOEvV1slZaOLh7xSru2UIB9UrCQODGCu?=
 =?us-ascii?Q?FbM5DAZEJWX+du8xPZwE0Nkp2eSGOaKeGctsw5H6549vDGbzloM9V7kfOWdj?=
 =?us-ascii?Q?cKhdALzlYaVSMOz4M2t2+G83mt0izuFFhwCTL/WW2kdZ+0ggQ1dnsNu9kIyK?=
 =?us-ascii?Q?dKMHDgiV4sokcpJLbCfkkWHuka5CwnM7/SA1MCU/8B8jQScmTB2q3Oi61O67?=
 =?us-ascii?Q?MyJBpdv/ILBV0DkbRQZuQAt19mAtxUjgxf8gdzAQGENlAXcIjMPwJ9qcX/NI?=
 =?us-ascii?Q?tHrZEwqzaQHcVNwNp8ebSwBEFDtvW/OX1yXfZvQzuyxXUjhnPC3XPC9ekNN3?=
 =?us-ascii?Q?7FtZkxHD+kOkjiC5y/6uISFh1ABz+GyhQFboHY5ziTBCgTHN7HThQmkEGNX7?=
 =?us-ascii?Q?5b+0/WWvu8TLVMR2ei1Rd5Jcrpd3S+KcXg4EIDOBpmVLosGSssz61MA7wR7i?=
 =?us-ascii?Q?MuLezQ/nqCvqP9ZqDdfIoHmzxXE9ICtd3092RiD2a7q6aYoT4fzQpWa3eXmc?=
 =?us-ascii?Q?51jSFmrmSvXTArXYyBXIfu+R7/8IiwwqJxgOhXTEWSK1jqUqZbcCC6Su+cHh?=
 =?us-ascii?Q?aZbm0mH1rUUgZFDWqfaJ4srjFGciCXv+hqAAefCztiTMF+FfjYMm36QT/Awx?=
 =?us-ascii?Q?x3iYkOfI4uS9UYJ8sWYLsBJ9PD0AxnypJAl/SMBKtZjdo7EK3xQQN7jpUpQ4?=
 =?us-ascii?Q?nutwD3w1dHkfLFH+mLZy+GdH7rNxtVvx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FRqC0ZOZUQaFBVYlua2NuGNoSO0eI3rIyWmLQGIEKPiGJGgGJDrZxdocxZ/d?=
 =?us-ascii?Q?aFNWoqIR6HMaFj9tkf5gouU/O9EXtb+R9bURvTe83+VtW1w6shQHcI5wga1Z?=
 =?us-ascii?Q?h73XWBzx/8vpJHjdWxQ8r6KnTUy4O2TJmtmZCPi3LnGJmjBv76Koqj4//49h?=
 =?us-ascii?Q?5qZbJm/LHDSJrlHdDWkj/LU1yFNwwcFRguo0Ql756I2Ic9mGriPSrW4ufdTo?=
 =?us-ascii?Q?8u81BtVDdwR2/mXhpEb2NJtQKlttMur5QWAJuMZoXCFB2MUaXNxajde19U8/?=
 =?us-ascii?Q?5yPuuSROjnn2gJ7H6R78VkVYEf7HSjvVoDG6uGlxWK0cBySQp14+vAV8tKBa?=
 =?us-ascii?Q?sZDshNn70oGhg5riAOXF55WgOtC9ggMF3dAoC4G2wTu8FtK4pEBwDfDj/aU5?=
 =?us-ascii?Q?jFrv3lsykIwivYmqszaD9lE1rQ1p/lv6ih9OnPyvahW8pbPTRuwrpTyxi9jB?=
 =?us-ascii?Q?wh/xWvwBK9xkylAydfJviZ2Rk0tozE3b52MC59orlTosF/UnSpLUNvkijhIq?=
 =?us-ascii?Q?Dyz9/Gd+STqfpo8nTjEU4zS31UJeX17vzqwNqxU56knl2EqRE5MCWgc0ca8I?=
 =?us-ascii?Q?PnW4oZGwvojRCQXBIc6U0bq0KiRRBm9YAujBJC5iwI8hprMwKwUQ/pOB3RFf?=
 =?us-ascii?Q?CtTwF38bW8fqGuv6xhPK24fVFB6vY9VmjKkal7ne+lAOYF/85GatgW6z08VO?=
 =?us-ascii?Q?44P9uhBFIA0cx+LDhZFTMA9i4HjDsD5KPFCXqrVTaVeHukBky1jBnlZIg7+g?=
 =?us-ascii?Q?LA//ElsLLj23nctK9huwvUvAhur7TvHtEcRRgkeWtXypDepttjEqokcbkD30?=
 =?us-ascii?Q?oH2mMrBLjN8LQLIdBmWy7VauWMUaeGaew1XN0jYSuOrP/VXOo9dpm9J0BQ2I?=
 =?us-ascii?Q?H7uYUP0GfXGMETs4LdIcsbcRkhzzvqnvib6XDFnX50K5vOwkThAvmGAd65hc?=
 =?us-ascii?Q?tmP1NtXWnDDBFNK3juoOIadoyP5eN0/KFDfeccDkqAHGLssSlbtVIo6VAGuJ?=
 =?us-ascii?Q?sL17eal31yqyzFsD2BfHuE4HzVGsOHMwy4eSHXavBz36hR1sjp4WJg/oujHS?=
 =?us-ascii?Q?4IXsjpCXj2WTDZtoCgn2bdXRMXTzNjGsX+yNEfVUCxFTS+HYP/w7C12/v0Sd?=
 =?us-ascii?Q?ScjkZhydVJB7ZkL455HJuOxHn1GCLIFdlJ4yXjhbPqVu6c3ufKo/YEP+Ai3Y?=
 =?us-ascii?Q?iKpYQaDvUaQuVe5sK0NgA+7Ji9fsnMs0cDDLyI19ZGDXm1eTiFRLIQyo4kJA?=
 =?us-ascii?Q?SaM5t0faGnIjaAuCJ7W0YJXozE65qfGU9ZHZUb2keoJaYhDsb/+JkLZ4XVja?=
 =?us-ascii?Q?ULMWwRY6+0ZCaeLN2dk1X+01MmX54ExZY43fGbYHd33PaU4yzW7Wdy903LNN?=
 =?us-ascii?Q?UWftO03YwcBXaj864uE8cLzagJtUfTF8u6Tvs6cQfJbo5TlgCJub923bUOxR?=
 =?us-ascii?Q?SaA+PwVXpwMPZKpKgfu0WIDT52h7w9uzV0qsRfSscgA2+c6HFkSw3l0Egtw/?=
 =?us-ascii?Q?jxhV7FKYTACBKT9ECs1VKOrIBRTomDCOAv7gVHrH/5EinIMseHtdNbdT2Ovy?=
 =?us-ascii?Q?XiP7IepjY5VkVLrcSjWlAR+AQeJ9+4snOoovpgNOwalL1emiGBxndBwWxKMt?=
 =?us-ascii?Q?pA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b10cf6bf-fdd9-428e-ca6a-08de1726a6fc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 20:06:31.2938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /p6LRmGE1eKwbO3OntRC/QJZs6vYvjoC+ZBtOlNnCQkXE36xDxqWCP4NzrydZTZHZQCoOun72DdD1t4sO4AX+g6gHW8u4g/UiUDEFo/IMeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8339
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

On Tue, Oct 21, 2025 at 09:28:35PM -0300, Gustavo Sousa wrote:
> The LT PHY in Xe3p_LPD allows polling for the AUX channel power status
> to verify completion of power up and down. As such, let's use that field
> to have a more precise waiting time instead of a fixed one.
> 
> Bspec: 68967
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c    | 32 +++++++++++++++++-----
>  1 file changed, 25 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5e88b930f5aa..ba2552adb58b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1858,23 +1858,41 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
>  
> -	/*
> -	 * The power status flag cannot be used to determine whether aux
> -	 * power wells have finished powering up.  Instead we're
> -	 * expected to just wait a fixed 600us after raising the request
> -	 * bit.
> -	 */
> -	usleep_range(600, 1200);
> +	if (DISPLAY_VER(display) >= 35) {

Since the bspec specifically calls this out as a flow for LT PHY, it
seems like it would make more sense to make the condition here a feature
flag check for LT PHY.  As I understand it, the selection of one type of
PHY over another is more of a business / per-platform decision than an
IP progression thing, so it's quite possible that some future platforms
past Xe3p may not have LT PHYs.


Matt

> +		if (intel_de_wait_for_set(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> +					  XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
> +			drm_warn(display->drm,
> +				 "Timeout waiting for PHY %c AUX channel power to be up\n",
> +				 phy_name(phy));
> +	} else {
> +		/*
> +		 * The power status flag cannot be used to determine whether aux
> +		 * power wells have finished powering up.  Instead we're
> +		 * expected to just wait a fixed 600us after raising the request
> +		 * bit.
> +		 */
> +		usleep_range(600, 1200);
> +	}
>  }
>  
>  static void xelpdp_aux_power_well_disable(struct intel_display *display,
>  					  struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +	enum phy phy = icl_aux_pw_to_phy(display, power_well);
>  
>  	intel_de_rmw(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     0);
> +
> +	if (DISPLAY_VER(display) >= 35) {
> +		if (intel_de_wait_for_clear(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
> +					    XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
> +			drm_warn(display->drm,
> +				 "Timeout waiting for PHY %c AUX channel power to be down\n",
> +				 phy_name(phy));
> +	}
> +
>  	usleep_range(10, 30);
>  }
>  
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
