Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C285C77EA3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 09:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E0710E2ED;
	Fri, 21 Nov 2025 08:31:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NHR3hE3N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E352B10E2BA;
 Fri, 21 Nov 2025 08:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763713876; x=1795249876;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=7jH3ay5jkx4aqR9MsESaP4rJFfzqYS7MQ1bG3qXmxeo=;
 b=NHR3hE3Nz8EUY15dDNV92JkONrdKHYZbmqBvc7KSapSuZPtCiOfWeGzs
 G7jb4io9PBGZIREWGNPDMfCFVYpbH8ffQ3Qbv86YBQt3jukpsR+09CIw9
 5gJQx5b8b4b09fZrnJTNkzOVxtVlpyoNmzuA8manbVWw5CrJrn7mYeunn
 NxqpAs7eVy4z8gO4MFVzKTy4aTUhtjrsFccfLkRNJIVFuN+7lKhwQJoO1
 HNPX6KAZDy+NaID/vaJKk7Lls3ESZnhu2163tZ2v2yMuQGTEi9ie1lZ02
 Vta2UN3GNVLdz4stb6IOQN5O/maCpt1KCjWnO2tyPVBeB1E/ABaaVeHP+ w==;
X-CSE-ConnectionGUID: yOuoe8VxQrWKLxzQ2jWecA==
X-CSE-MsgGUID: OhwT4sA+SPa0CCqzwxuHvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="83425590"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="83425590"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:31:15 -0800
X-CSE-ConnectionGUID: swchTo54R3uAqVLIIJSzjw==
X-CSE-MsgGUID: gaxSk3iaQECmcnqfZy4tQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="195802555"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 00:31:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:31:15 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 00:31:15 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 00:31:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xSuj/d4V1VzZlNTJ1PxqYt9y7oxqA5Q2826odnouGrHIYvsMbCi+CFvNcJxcP5wpY76W1Mm8SsyaQpiR7av0g/5PpKCwdPg4ElRszgKVTMavLuNZNX+lpBSusP7VXyJ2LGQT/uZcobuV4H6wcrYVf32pdf5munftrEDJrzOxo7nuYeKS64Xxj07J/ItY7PnaPRHMmMYYfh5RSg2LDnF522nKMNQawzvvSvAJEzs3f4t4ArUkG67dAOEMJEZHf9pT+1XJ6m7MjrnUf8KWnx1+P+W6cSl9yxYm0nrvJDw3CM5AbMCNK+bA//iesRwKoXTnpo+2up/Qy5/4oUH6skPBYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pTUSLkHOwL2EZ8wI1665w/8UXPEIiqg7lg4R7P6Y2Nc=;
 b=H9K0LMoZAzCKbT10noDR2ON/8cFSOF0Qxv/TPdYU8PlS2jPTFddySecEB7/ot5six0YBkiH8E8S+A/fzMlfEsT8ctVzcxIA74GW13aXc44MhbETOWkIOuNUhdpg/WfblqPj/+gVlEZHlpGck35iJFZcVHLiKzfvhyarVx1gajWSknp/gP9HdGi8P/740CyBG6mz1bYEHIY0WofRMrFQPlH5M6KfHzu39ry2HKzRgwyhGILoAOz1ckhVxPKJUAyRL66WCUr1s7ImJywMqRAz9modQvcsCQrWcH5LHEBFAVcIq+7A+ZeqyQbniENZKUVddsbYCoYd/TLBJs1kkXC7MXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF37792A6D2.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::820) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 08:31:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 08:31:12 +0000
Date: Fri, 21 Nov 2025 10:31:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Mika
 Kahola" <mika.kahola@intel.com>
Subject: Re: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY
 lanes for reversed lanes
Message-ID: <aSAjS5p7ML4BXkGg@ideak-desk>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-5-imre.deak@intel.com>
 <DM3PPF208195D8D7262BD8D92C00DF77FDCE3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM3PPF208195D8D7262BD8D92C00DF77FDCE3D5A@DM3PPF208195D8D.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO4P265CA0230.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:315::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF37792A6D2:EE_
X-MS-Office365-Filtering-Correlation-Id: 7caee3e0-4d92-4d6f-7d6e-08de28d85409
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pBj3vTCYPAG0mA256V3eDR6/SpOH0eCK/yr3dTu3QWyI3s2GeJFwrubeT2Xd?=
 =?us-ascii?Q?7BbmMu4srms1SyhFkYVOfXY7cPGjGb4dgfSRCyM3aEdL7+bdCpqYFsHM9hec?=
 =?us-ascii?Q?rak9OAbuoZZ/G9hAWVaPNvCBjAMnW8KGy48qbp5GDUAUcXz1H6Y48hvUy2E3?=
 =?us-ascii?Q?RxVtc/8IMUJto6ICfTOK4jw7f5OXJx7a9dNK+a12DObNtLlJovO0mJ99tIxm?=
 =?us-ascii?Q?DXuwOKlCvv8PnWhwrxHKdLEMeoXujCjwZ2pcjDZataxtiD6l7mBJKM9vXcV9?=
 =?us-ascii?Q?Kew6KDrxC2uDfCR17Rfg+J4/E/gqx4H/vYOCwqS4AwrLA40AU9zpQLHxtcFP?=
 =?us-ascii?Q?Qmb/SOLGpFitLtZSuCv60M1BiszJwKMwUtRsz4xIXtvo0irW3MYNW0RWLJbs?=
 =?us-ascii?Q?dJ44dE2Y8MVs61Zn1r8cf2h6ecc4uKp/N3auHlgvYz86rCLtIYDJt9YqV+YK?=
 =?us-ascii?Q?MM7uU7GOOSt4x3bfK+DXX7fFWtQ5T/pngHFynsqThuntmBVFSQ4YjkxRutQl?=
 =?us-ascii?Q?41ePX0f3zTxFOUh/Rujg4b5veUQSKnFR7dyetwdn0dY12nnlgsVO9HMvu1hk?=
 =?us-ascii?Q?OaptIFlmb5bpNwyYLBCiYhquLvs3AFYZi8/0wJ0HLdNGdXqfx3r29wqHNtVx?=
 =?us-ascii?Q?HDopw/fk9c3ZTKdnznTzIrP4KIz0WxG8v7z9NxoD8zx/S0J+vHxvCKt3Zswo?=
 =?us-ascii?Q?yqMSXDYJAEypCi1CnuzR1S2JP1kxyPt5Ru9hetoEs9gqrWSo01c5m92kzMEv?=
 =?us-ascii?Q?qL69RhKlB/18+vUJIXGCMntJkdaAKd5N0CzxG5dmhyOVPn0EJKmbi/RHLoPt?=
 =?us-ascii?Q?gPWD74Mize0fqId+y0RkLzdR+lTLJKjhgPEHFbZnhkB/3ns7AV1Pr4pqGj4O?=
 =?us-ascii?Q?Xy0jTkM22TL/0dXK1G+xWCNtGfE6P1zGbEzqflM92Xxp2sIsFBgXAOmORz6X?=
 =?us-ascii?Q?hVGiGFRrQztUkMUv0NQcfy0mvg4iS8Un2QhrjbaROxTPykKy4TTLb7eCNjzb?=
 =?us-ascii?Q?pHP0PGbYharv5LVcJulXsuw9EVqOMyAU9XaqHNdwjRH9gfb73f7KqNEkBAMO?=
 =?us-ascii?Q?tTSCTNWBQZC6hQDr0x6lRFWxQK56XXjbaCS6VlNQYUSIodmdKlSo2u8H84YT?=
 =?us-ascii?Q?sDIn7KZGl4j/WsPLuFL57U5r2oGpvoSfw15VbyoYbMHLpxwTWgoe+iOl5aCz?=
 =?us-ascii?Q?kaAINc/SzeHCoRESyWhaI0wf8U/4T9o523pCdHCklPQVoSDD+4XX4v1zItOc?=
 =?us-ascii?Q?bjZEzkDntvIHB2WYvGg2ZDeBHCKL+v0AUo/eDvO+s9LBqpczLaFphSzn5Tmr?=
 =?us-ascii?Q?zJMIfPwrBUj4g49I5UvUox5L4y2j7JJlk6I9f9Mzd9wOkb+NInZZHY4dvGHe?=
 =?us-ascii?Q?Pkb7ZBv3rP/dVmGkWwqCFUgasEbPtPAzamXj52RoDlTZW80jhE3IvOxu+aIz?=
 =?us-ascii?Q?8Ou6Z9zNvQdu1kBdMdTGOvbUrDdH6SXZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JChf9i4n0i0krLIx4XVo+gkBp0DK87dbXu6wXf8zQmQtT/9mqlONqqsajfIW?=
 =?us-ascii?Q?YMmENI3oFCCbyl6Y6dtE7/mPv7/p4RyPFQ3r8e48uAAxtOia8tbaXOuG78xa?=
 =?us-ascii?Q?1ljA+14XPAQuG5fE0JcnpSPvTdAp6gDj0m+X+HHUz+cPuVrCA3Wopqg3qhPg?=
 =?us-ascii?Q?6/0Xz3n2jCloTgzmIr6/rVmtwbH4k/m4tH+4whNrUmF4DnzPuS5jeNn25V1u?=
 =?us-ascii?Q?YWupE49DJtsMdCHBqZJ87yVNOgMHh7eNBJtKCNtkvxrqb+HJtlB/lOitpw3R?=
 =?us-ascii?Q?Kj4fV/3z7fw6s21J+3hwjvxNR3jblsjgocyDQDvmFHG87RRDS0t3j0YP6+GA?=
 =?us-ascii?Q?2ly+m64dwK0henIE92VQFsBRrgaNJfzupO26G5fBG26/RJ/iTiVu3bB5LtWS?=
 =?us-ascii?Q?Ir4JjqqkC9q7nPdCvC8SrnW9nS2EYNk93Uem8E3iErUc9Cj9eYX4jvXQVP1M?=
 =?us-ascii?Q?Yz+KZVjNvetPnF06e58CddnDkFsIL04C6jroiJslluMzfaDRMMdTS6XJQKlN?=
 =?us-ascii?Q?4lfKK66v6PEv6IjPlRqOiJvSmRd8Un1/ncYgMYA0fxXUSZTBYQApAmWptqNI?=
 =?us-ascii?Q?/2PV/nJWOshQbmKQwtrqwfU7AxOixUr9E9isxx8+oh6oWlyeLPtR+fHvpVj7?=
 =?us-ascii?Q?E5h+YYs0kE1FYZDhDRMSznYWvrWkhHXjBUwn479kcoPLsSDh3GA2ngFvLOWM?=
 =?us-ascii?Q?rxjpx44xW06PXQHfju+ehTMtRHYlUhHO4a/Nk39vK6SkqqN3RFUGbsnUzplt?=
 =?us-ascii?Q?cNRYcmclmfqCr+whL0tTfASVULMNiUPbtIX5I/jtUFNJVsxX2Kby8bD0h3Sj?=
 =?us-ascii?Q?Co6uxokL7nLuFYXhJzyQpvCkVmKy64ftvlLQ4Y2Uq1hcGJAUwCwgxCosabyn?=
 =?us-ascii?Q?HjDGW2CUbH164bu1NsPo0dHq0GwfWdKuyAnoKnfNOgB/hCMzvmTWSrbC24wQ?=
 =?us-ascii?Q?Pwy0IwjArydinciV47Nys1rxlpVw819zEwWG48KEmzkPRRfybm1rj9ZYQjeB?=
 =?us-ascii?Q?ej8qI58y6oNJ55hnHb3lfWDsr2XR/fstW4oWBuDsdGb/teIMpjwNtLWxh+AQ?=
 =?us-ascii?Q?baS+wus6RMsBOaNtOYBuk4t0Sb/iwjWLn1RmvigtSWfb+WjHVRhZkYIYS9ry?=
 =?us-ascii?Q?HoKwOs+IdHAr6Uifm7sF8bdYRaRu3ArXTZRAB2c4SatqaoX2QaMt4I3qeTfi?=
 =?us-ascii?Q?lCAAx8lg92eZdtfVTekZRJkqnCB/2v64ydOmaq31AU0LnGutYW8Q0/+/mySv?=
 =?us-ascii?Q?kvn7wUNYbCm6N0NZTnllQndC/A195LQkwFR6/4hYhmHclXfdaE7ayclNqq0H?=
 =?us-ascii?Q?0f4D19iMWmpLlRXkMRDWb7ad8kxgHH973jEXX2nUr31hEixUYI9/XaTXDZxJ?=
 =?us-ascii?Q?ku+xo0gmg0GEwjL90zZ+9vOZPBd1IdQjTxpCrztSkbt/GTr+srvJHTajDMvG?=
 =?us-ascii?Q?3GxvcTBlfIyY2/dPmnu0SPdG/1kYx1Yl8XFGWHytiXfguMoX9ED3NiSPpPeU?=
 =?us-ascii?Q?FYXf1iQkzQlOrriQ5OOgBVbDOm/kh3BsmZI20TQEVr4x5gcwmPfolAKDrMGu?=
 =?us-ascii?Q?5AUGqswx+xPOl2KWp4KzZDmO5qmFFS5N709rWthsTXW5qnxfWk6eUcv7QZfY?=
 =?us-ascii?Q?uBTosOVWLUPbRZdKYSfe7osA9RkukEJqDT4jgla96EZ2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7caee3e0-4d92-4d6f-7d6e-08de28d85409
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 08:31:12.3645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xv7UgW7MbX6mIAAHRxXGyBl+GiUpma/coN1RLwFIqvlq+mKzZrxvxC67xW3ouRwMMzV3Sb+DGMmzfUTIppDfcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF37792A6D2
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

On Fri, Nov 21, 2025 at 05:54:46AM +0200, Suraj Kandpal wrote:
> > Subject: [PATCH 5/5] drm/i915/cx0: Read out power-down state of both PHY
> > lanes for reversed lanes
> > 
> > For a port used with lane reversal enabled the first two TX lanes will be enabled
> > in PHY lane#1 instead of PHY lane#0. At the moment the HW readout will read
> > out the power-down state for these two TX lanes from PHY lane#0 incorrectly.
> > The display HW lane reversal feature (vs. the similar TCSS lane swap) is only
> > used for TypeC legacy mode and for non-TypeC PHYs. Since in both of these
> > cases the display owns both PHY lanes, both of these PHY lanes' state can be
> > read out. Do that to fix cases when lane reversal is used with 1 or 2 active TX
> > lanes.
> > 
> > While at it add an assert to the PLL enable function about the above
> > assumption on when lane reversal can be used.
> > 
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Fixes: 230d4c748113 ("drm/i915/cx0: Track the Cx0 PHY enabled lane count in
> > the PLL state")
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 24 ++++++++++++++++++--
> >  1 file changed, 22 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 0d524735dcf95..27be2a490297f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2197,17 +2197,30 @@ static int readout_enabled_lane_count(struct intel_encoder *encoder)  {
> >  	struct intel_display *display = to_intel_display(encoder);
> >  	u8 enabled_tx_lane_count = 0;
> > -	int max_tx_lane_count;
> > +	int max_tx_lane_count = 4;
> > +	bool lane_reversal;
> >  	int tx_lane;
> > 
> > +	lane_reversal = intel_de_read(display, XELPDP_PORT_BUF_CTL1(display, encoder->port)) &
> > +			XELPDP_PORT_REVERSAL;
> > +
> 
> Can't we just do 
> struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> bool lane_reversal = dig_port->lane_reversal;
> 
> or are there limitations with that now?

The HW/SW state verification should check what was programmed to the HW
(comparing the HW state to the SW state), so the readout here shouldn't
use any SW state. Also the PLL code should be independent, not rely on
anything in intel_encoder (except for port which is used to read out the
PLL/PHY registers).

> Regards.
> Suraj Kandpal
