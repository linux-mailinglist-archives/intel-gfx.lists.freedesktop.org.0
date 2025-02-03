Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA707A25F8A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:12:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9F210E06F;
	Mon,  3 Feb 2025 16:12:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QcN6+84t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D624C10E06F
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738599173; x=1770135173;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IDQwJISyPNXU21hS2XBswZ1lf1PsUiMh7B2Q7HzM030=;
 b=QcN6+84tWDSB9ryJDL+F9MzzbfeGkD1KcK8fSd5HB4tfofRygWAwNEaH
 F0VIHULpOdtQTZaPt89zlb1zJTSHLawStAVoH0dTLp1mCG8yZEZ3U1zMA
 9XbMJXx7bcGAfxDKlWI6lxF3yWjGxt246K9pCOvM24IZZBHoTYMzFVMr6
 1FsTiFy0lMXm/bC61c4jV4gmlV++avwPLypjkuTCskk+liacvVZBifkev
 SfxevOvghpvAQLxUDWPHHeb1WaAInR4PfHhwnaZ+8EhnhrPP4F2S+y/QW
 ypfaVwM0W03CoI1fGXQVBOAxmKzPlMk+wLwtiI+aZEvX4aSXsvMNSts6v Q==;
X-CSE-ConnectionGUID: fn3LoB/cSgGbAckunuO8vw==
X-CSE-MsgGUID: 6N/JaRy/Te64K1itLQYauw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="38976259"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="38976259"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:12:52 -0800
X-CSE-ConnectionGUID: 9bCzsJyITG+1L3qSpxMwlA==
X-CSE-MsgGUID: G7kPnX4+RXmNghCBBuMERA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110284799"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 08:12:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 08:12:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 08:12:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 08:12:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mEjlI0I3fsAr4/EQ6Bbac2VGnUiLD0ww8xYbpDornvz0NUXxqZli9W3sDrCc84SkXpDvGFGWbox20trV0gA1GnMFI+lJLDwoaEDNgsL6v3XrL77zfwPI3IUfxvHrwuTHNvfvd2zMZ3eDjjS0SXoekVdU+Tvi+nQclUjJQCwIiGj2zHw8RlfN4PZfCSFu2QoJxDjV9nzfbSsnm/islN4vPKQIBHHf5+XOXvBaKDDivDKiRdp4FmmktcyyBWhlbYNqOl3ZGmw+BCISZddyL2614SnaEYynjPB8DD6F3t1cZU2QCfmz7F4gZV8Ioel6GVRU3iv1v+zXeIn8dpooSOc2uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cgwRd7EJ8chsz23M3YvJ7XQ3bUzq9jVr2Smv3CvqVNk=;
 b=emcFeCt4yQ7im8HYbylsM5x5GzRoJW58k0cODzvEBS3a90iZ5ond36X8BEHcovVM3LAbi4MghijvyINz9p3AzqU65YCuUw5eyzQZdsns4/RZdB5ISIiz9ftTb+1AGpqrhbWLCngT4C0ja6qJ/pf+o+nGEEkNsNP4VBOsX7Lt2RZH9mT0tS5bKr61dii0dVAfVyUxfwhldE+lM2vrdomOWBHyI7KGsrRLTpBeFMuXjyMX8QrENChbbzsNqeY8q0lXGNOpgVKYfPCrCrDgyX/EUz5dA4NwBlayQ0rDPHTwMoEFQV9NBc0UVadNISYRpc2t29r7sv3TZYVAXZ1B6jg7HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by BL3PR11MB6388.namprd11.prod.outlook.com (2603:10b6:208:3b8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 16:12:38 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Mon, 3 Feb 2025
 16:12:37 +0000
Date: Mon, 3 Feb 2025 11:12:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6Dq8iF96I-nBkPh@intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
 <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
 <Z6DktvZQ-NzLnab9@intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR04CA0036.namprd04.prod.outlook.com
 (2603:10b6:303:6a::11) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|BL3PR11MB6388:EE_
X-MS-Office365-Filtering-Correlation-Id: 395f6d01-22ad-445d-5d10-08dd446d9364
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?etuCvvimoXfGxWOCqRsmdLy2hfqs2fJ/OsZO5FkqgQggrwu0uht/d4lpXxpL?=
 =?us-ascii?Q?lKNK32LTxNJV+2fctpEjRedGAM1Gq7r81i1vrnB8iOsPNYc8rZ4X24Dmdp58?=
 =?us-ascii?Q?w8vXfuPkLeKOIt16N878SKA481Ph20Z6rqP+whix7a2A4DJ4DS3W/+wVPHri?=
 =?us-ascii?Q?amJeSWR1aeq8t45Fwll3801E5My4QPYRJ5zfjYQTYnaHwJuIgIn7iTBWeZHR?=
 =?us-ascii?Q?0vmJRKCXTlT6x9m91FFj141+ZAaPoOvB0Db/KGsJl1CfGPYe69JX8zrY5FOm?=
 =?us-ascii?Q?4Ul8vLyMOTW3+v3lF8gG13RZLhbOUJnuQEuoyUNZbvaH3aJ38XeysDiqMzk/?=
 =?us-ascii?Q?QBCkzfHqw387tE16vvu5gCyU7eP2oUaEdPW/tjGLMpdsFcbLd8HKtn9VJLIA?=
 =?us-ascii?Q?RJ3EzmO4UjJnAFIfXWx0RuGTR8FRCXqQVapJNl6MJjoYueHiQYwFD6CK0HXR?=
 =?us-ascii?Q?uZNTKABYmXgqITXXDdL1dDLRVzwtUF3/+FInO1RDoLNu5/oOO/vGzZwq2Cni?=
 =?us-ascii?Q?F/qX6Vgaeweg3d+NfW+l5kKAICFezapKwPzWDPPToUwwpgcvPgGc2gFtD1BM?=
 =?us-ascii?Q?lSD2oMKbri3uXa4AR+pzWdj2aLX2vSm6GId525UFoFlc4IT0pWliQW9BjjCa?=
 =?us-ascii?Q?fnT/cPihV+iuD7mUO2FUyushCAg9OKrTGb8wxKmwmZ19C9xAeHpgzCO5c4lY?=
 =?us-ascii?Q?ECnsjIhhcrWuiynsOdf7hxi/RsE4TmUJcBvsEhTSs65XFPBmmO4CPUqk96/6?=
 =?us-ascii?Q?1k0a160lLiVLBTN9U5WFgDB/ysdnJ3tAsSCWXHeu7MxNoRv4r4l9CUSF/ZCK?=
 =?us-ascii?Q?ZKijwhLSStz96sHASZGkdYjmPykpAuIFOOCXWF4eMSZhgXKJcS9+E95fBxMA?=
 =?us-ascii?Q?jFtqba/k/QFmMYzhcIR/FtGWsDq2MvTQDjL+wFgrky5YMFkEdy/5WiRtiEdA?=
 =?us-ascii?Q?O82roOEXs1Bu69EN0aaSlsA2i2p1SrT/4ppJyO/hOIozKJrjV8UOleRLuEZJ?=
 =?us-ascii?Q?az+z84zwl6eOjqLr36wObKU/Jrqxi9TvFXqHMVx4Z6coohlRCScj/jZDmnea?=
 =?us-ascii?Q?Hi/l3rcfIdIngw0fLTQP/H649Y+apvOdgnluig/o96UKB4Zvm4Uk1WpMsBmg?=
 =?us-ascii?Q?9kbvlg+k4mDAOdJnsDM7xXoreRO1cJ7ATx1k/qMBoCnLXca8Gc15gNewAAQc?=
 =?us-ascii?Q?IbC/mSLMFDa8EU5QYxbD+Oc6v+zlAjEDw8nGivdaugVOGYdJ6ikOSbZ6NOZS?=
 =?us-ascii?Q?jSDoonqXhQiGQAJurzwdB+ns26J4H6CY0ENTxC+c3ysn4CJ05/k9twvRjnBA?=
 =?us-ascii?Q?NnuX4rN8TBaLgqbxAqhjM+SdRCoZdz4yFevMRzoeL80c9jDwQABY4DbrA+kc?=
 =?us-ascii?Q?isWK/F5/dCZBhlfdHg+Z0jei07Ei?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DgU897odgC9XfeXRI7EPrcXdEsS78/WvF4LFafuLt3thSqw/3vKhNXRMqzAk?=
 =?us-ascii?Q?Kodp12qVrrNkiMNh3PAzmSznR0yEYE5NUATk3L22zapTB6cxrLA19Wqc0Y2z?=
 =?us-ascii?Q?qcatVfi2pbjNWl5TshMA6N7e+JlXkuyk8GfRWpVoJr4PI+N2X0+8gAtl2536?=
 =?us-ascii?Q?leyIbCmN6C8BjGEUbcM/kCTLNzr5Q3+7ckkbGLD5NNB1ztiYIYWC/k8q0CkO?=
 =?us-ascii?Q?Lcu8agIZcMhkJH9tLVOIJgQUOT7PEnpn5uhLPRlReczOw/s1kH8W3Xq+z0tF?=
 =?us-ascii?Q?mU9KGeTtKrNeulxgchItBUsqKjh+fyiMn1a5nPsQLfNBNs4EIM+eZHGHC1V/?=
 =?us-ascii?Q?uP3889hDQFcuu7q9gHklkv0+/lMnL1sliOYiZhI4zOcxRifT/FDj1lhlfK9q?=
 =?us-ascii?Q?XnV5JbumyZqyJfAiouzMTJ0eaWM0R6I9Dga7taBMhSQR2dW3x1hpJdt11nG9?=
 =?us-ascii?Q?bxjVl05q0WBNmgxenpgOsLrovWPirVpm0yCueX9yapANcedyoXCqlVeEwBHN?=
 =?us-ascii?Q?6SeKqpBfmJTI91jHJyx6da3OWwkqCyY9OxUzZOk7WOk+t/Ao32ULyLZGTL3p?=
 =?us-ascii?Q?MK/Cgu6PMuozMaLOF/ZiUeahKuLLqRA9pAEweW6IR5QNeT5r1b5YlD8H1w15?=
 =?us-ascii?Q?uSba07rSPljaFEXcQ2uydEtcuEfZYzdGMoWAWfiRee1cut0OIyaXMXJUbmhh?=
 =?us-ascii?Q?wIi0y6KF4HtDOBr/sTK6mvi3ZE4uvnli7CV/Bpn/CgPc3zjL+T5nfaXnXhiv?=
 =?us-ascii?Q?xW7u/aK+1h52H6fOH2eJpYBALETRwiRLOtzZXN4A2CtF+c92ZseULb5C1KgL?=
 =?us-ascii?Q?hfiInOeWOI8ULl0nuJtEeW1IHd5roygycl4iYYxoWiRy8cb57CrbPvWisQSQ?=
 =?us-ascii?Q?gxl0GlU7e3BjEMzeqyJztF1wSPum9qrNeknBXtr5BkH29aionc/eqOrN/Zf9?=
 =?us-ascii?Q?TiOj35bs5Q63eI9DVm8UnwaI7xQUOgSsStRlwXJgiVguiDNMhmRtcswKMBOO?=
 =?us-ascii?Q?IEyLpqlWntzwd6SCiDBJfIa4ANCZ4DHOlX+R7mb8ZQlqKE10HuxMnqitLLb6?=
 =?us-ascii?Q?24TKJeFhvTX4wT+Zr1INwDN1wynfm3A5cpDkEVc+AwY+bZ2H6teM2dCf0PeL?=
 =?us-ascii?Q?jLcC5yDXlAgJu6di/ZNQfO8guFw1nvBVhPgdJLH2rbQfH3AdeT0CKJLwzBjZ?=
 =?us-ascii?Q?2/Bxu2YL0Fi/BL12OhPhaRaZIGSnFm7ku65qYqnMlEDmEejCtuXAzYNDxpxU?=
 =?us-ascii?Q?dqWpT6zm44DJIzDAYTaPq6bs0tsES0tHVFUm9HMLq6Y2+6Muse65vhmzNZAk?=
 =?us-ascii?Q?ss3sk+SDu6cwzVzBUOLb0LDQcBvT9pv5+KiXx5qAzJr+idFTM/aUQo7Xh2BT?=
 =?us-ascii?Q?17KhmNMu764CPlg7bdK6l/cC+jW2MU6xO8+3BMhMQ6RP3sLJwm0TsTGkWEqp?=
 =?us-ascii?Q?20SbRCLOx7t28KxcF2HH/bJu5YUK4+CuzhrMLchFL59CnFgfVUGndnve+n8d?=
 =?us-ascii?Q?2qhY/PFtNJXLjPqdMTf6aPIKrMoSL+eKLnbS2BmJtE3hGBBCth4hlYT8U0z8?=
 =?us-ascii?Q?Skpw+nl/qJSOXFng5dkwUS7OoRbrwNYoxEJY66rbQFZqxhh5phcnFCEPztxU?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 395f6d01-22ad-445d-5d10-08dd446d9364
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 16:12:37.4510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5wqzwIlBvwEsi4v+46nKey4aEgOSKu5Nc9HzMb5uFHK8dwP2Y+w+DbsVmafPmX/L8lPtMxGYhfInSQl9DduyXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6388
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

On Mon, Feb 03, 2025 at 06:01:25PM +0200, Imre Deak wrote:
> On Mon, Feb 03, 2025 at 10:45:58AM -0500, Rodrigo Vivi wrote:
> > On Mon, Feb 03, 2025 at 05:14:10PM +0200, Imre Deak wrote:
> > > On Mon, Feb 03, 2025 at 11:59:59AM -0300, Gustavo Sousa wrote:
> > > > Quoting Imre Deak (2025-02-03 11:26:19-03:00)
> > > > >On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
> > > > >> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
> > > > >> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
> > > > >> >> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> > > > >> >> due to dc6 counter has been removed to validate DC state.
> > > > >> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
> > > > >> >>
> > > > >> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > > > >> >> ---
> > > > >> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
> > > > >> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
> > > > >> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
> > > > >> >>  3 files changed, 4 insertions(+)
> > > > >> >>
> > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > >> >> index 554870d2494b..cc244617011f 100644
> > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > >> >> @@ -376,6 +376,7 @@ struct intel_display {
> > > > >> >>          struct {
> > > > >> >>                  struct intel_dmc *dmc;
> > > > >> >>                  intel_wakeref_t wakeref;
> > > > >> >> +                u32 dc6_entry_counter;
> > > > >> >>          } dmc;
> > > > >> >>
> > > > >> >>          struct {
> > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > >> >> index f45a4f9ba23c..0eb178aa618d 100644
> > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > >> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
> > > > >> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
> > > > >> >>
> > > > >> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> > > > >> >> +
> > > > >> >> +        display->dmc.dc6_entry_counter++;
> > > > >> >
> > > > >> >AFAIU the goal is to validate that the display HW can reach the DC6
> > > > >> >power state. There is no HW DC6 residency counter (and there wasn't such
> > > > >> >a counter earlier either), so an alternative way is required. According
> > > > >> >to the HW team the display driver has programmed everything correctly in
> > > > >> >order to allow the DC6 power state if the DC5 power state is reached
> > > > >> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
> > > > >> >enabled by the driver.
> > > > >>
> > > > >> Yep. That's what I learned as well when looking into this stuff a while
> > > > >> ago.
> > > > >>
> > > > >> >Based on the above, we'd need a DC6 residency counter maintained by the
> > > > >> >driver which is incremented if the DC5 residency counter increments
> > > >
> > > > By the way, the counter that we currently have in our driver is the one
> > > > incremented by the DMC. I was meaning to send a patch for the residency
> > > > counter maintained by the hardware, but have not yet... In theory, that
> > > > one should be more accurate, but would require us to enable and disable
> > > > that counter as the IGT test starts and finishes.
> > > >
> > > > >> >while DC6 is enabled. The dc6_entry_counter in this patch is not enough
> > > > >> >for this, since it doesn't take into account the DC5 residency. While
> > > > >> >user space could check both dc6_entry_counter and the DC5 residency,
> > > > >> >that check would be racy wrt. the driver enabling/disabling the DC6
> > > > >> >state asynchronously.
> > > > >>
> > > > >> I'm not sure doing a driver-maintained dc6 entry counter would be
> > > > >> something worth implementing. Even if we have successfully entered DC5
> > > > >> and, in theory, DC6 would follow if enabled, this would be a synthetic
> > > > >> counter and it could be masking some hardware bug that could be
> > > > >> preventing DC6.
> > > > >
> > > > >According to the HW team the DC5 residency counter incrementing while
> > > > >DC6 is enabled is a guarantee that the display is configured correctly
> > > > >to allow the HW entering DC6 at all times. IOW this is the HW team's
> > > > >suggestion to validate DC6 at the moment.
> > > > >
> > > > >> On the IGT side, we could just skip if we are on a platform that does
> > > > >> not support DC6 counters, at least while we do not have a reliable
> > > > >> alternative way of checking for DC6.
> > > > >
> > > > >I think IGT would need to validate DC6 in the above way suggested by the
> > > > >HW team.
> > > >
> > > > I'm still inclined to think that we should defer DC6 checking for when
> > > > we actually have a way to verify it. The way suggested above sounds
> > > > like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.
> > > >
> > > > In that case, just checking for DC5 should be enough for the time
> > > > being...
> > >
> > > That's not the same as DC5 incrementing while DC6 is enabled.
> > >
> > > > I won't object further if we do the other way though.
> > > >
> > > > >
> > > > >> It would be good if we could detect that PG0 was in fact disabled, which
> > > > >> I believe is a stronger indication of DC6.
> > > > >
> > > > >It would be good to have a HW DC6 residency counter, but there isn't one
> > > > >at the moment. Other ways may have a dependency on other, non-display HW
> > > > >blocks, for instance in case of shared clock/voltage resources, the
> > > > >display functionality validation shouldn't be affected by these HW
> > > > >blocks.
> > > >
> > > > As far as I understand by reading the docs, DC6 is DC5 with PG0
> > > > disabled. That's why my suggestion above.
> > > >
> > > > --
> > > > Gustavo Sousa
> > > >
> > > > >
> > > > >> --
> > > > >> Gustavo Sousa
> > > > >>
> > > > >> >
> > > > >> >I suppose the driver could take a snapshot of the DC5 residency counter
> > > > >> >right after it enables DC6 (dc5_residency_start) and increment the SW
> > > > >> >DC6 residency counter right before it disables DC6 or when user space
> > > > >> >reads the DC6 counter. So the driver would update the counter at these
> > > > >> >two points in the following way:
> > > > >> >dc6_residency += dc5_residency_current - dc5_residency_start
> >
> > Hmm I don't have a good feeling about this.
> >
> > I prefer that we are clear to the userspace(IGT) that is an extra flag
> > and not to pretend that we have a residency counter.
> >
> > So, we either are clear that we are counting the entries, or having
> > a flag that tells that we are allowing dc6. Which btw, could be done
> > by IGT checking DC6_EN bit directly, no?!
>
> A DC6 enabled check alone would be not enough and checking it from user
> space along with the DC5 counter would be racy as described above. I see
> this working by the driver tracking the DC6 enabled flag + the DC5
> counter in the above way; it could be exposed to user space with a
> suitable name, eg. dc6_allowed_time.

Right, the name and new entry in the debugfs file would make this
better because we wouldn't be pretending 'residency', specially
with no guarantee that it would enter.

However I'd like to keep things simple. Stepping back to see
what the use case from the test are trying to really
accomplish:

  * SUBTEST: dc6-dpms
  * Description: Validate display engine entry to DC6 state while all connectors's
  *              DPMS property set to OFF
  *
  * SUBTEST: dc6-psr
  * Description: This test validates display engine entry to DC6 state while PSR is active
  * Functionality: pm_dc, psr1

Of course, we already know that it is impossible to validate
that the display engine itself entered that. But we can
at least validate that our driver is allowing that condition.

This is with fake residency, with the allowed_time, but also
with the simple counter that Mohammed added, or also just
by checking the register directly...

 _MMIO(0x45504) & 0x3 == 2 // in idle scenario described above should be enough imho

>
> > > > >> >The commit log would need a justification, something along the above
> > > > >> >lines.
> > > > >> >
> > > > >> >>  }
> > > > >> >>
> > > > >> >>  void bxt_enable_dc9(struct intel_display *display)
> > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > >> >> index 221d3abda791..f51bd8e6011d 100644
> > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > >> >> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> > > > >> >>          if (i915_mmio_reg_valid(dc6_reg))
> > > > >> >>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
> > > > >> >>                             intel_de_read(display, dc6_reg));
> > > > >> >> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
> > > > >> >>
> > > > >> >>          seq_printf(m, "program base: 0x%08x\n",
> > > > >> >>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> > > > >> >> --
> > > > >> >> 2.43.0
> > > > >> >>
