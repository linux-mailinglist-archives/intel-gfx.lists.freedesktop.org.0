Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69D499584A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 22:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AC2710E5B7;
	Tue,  8 Oct 2024 20:21:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jTwLWuMG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2CEC10E5B4;
 Tue,  8 Oct 2024 20:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728418898; x=1759954898;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8VC8ouDZ0EFYRtN0bUcYP+jZW4kFRcRzhf6xOpHEmbU=;
 b=jTwLWuMGJqNJFESji4ZHKbCItyT0Hie1tW+Dv1cLUP/Bg0412cdR8+yv
 H8urvKX91CJW6u2SOFiEKKGh3DbxCOfuHfzy7V3aR0xGaM7TORWn2tEsZ
 ru3wn5fCW3JFZsw+XFRedWkoaNAFv6NqFh2sObYWGR+44skfhMdgiuaih
 JvZ6qROqUEs6TqHZscqyEES0CuHyCuFRoAEfcfuL0WSIfDaFnl+uEFTSF
 aOz8qkWNUTXQ6X50wUAiRhHhL6zHN++pqOaCQLTLTtcoC0Tq2W3gobEVK
 Mjs5qW+ap4JK30r9MdE/0WC/lfY+oDLjcNlwe72/McpcMj8hfo4rwObul w==;
X-CSE-ConnectionGUID: iFr9g3sXScyIkHPma8IPcQ==
X-CSE-MsgGUID: yqobAbdNSJCc736nDMXC4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27818599"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="27818599"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 13:21:37 -0700
X-CSE-ConnectionGUID: sxuodNBuTeCnBkVn/vRslg==
X-CSE-MsgGUID: 7MEvnDDeQtapDAHKiXbuKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="106806824"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 13:21:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 13:21:36 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 13:21:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 13:21:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 13:21:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VI1rWvzlbauMxiOdfdbMtIGy0FfWed1WEwNb94gobaCKUJa+mcbxsiOci0/N4/pHYkqPa0pFwcF/8l5W7hUiJZhvQfdLoEmJ5hW0hKXCcq4CpbXMPFvlw8uscY+kIUb0RpoWJqrt+6T4c3gFBTP7U8RTeozApuY4GnPgbDV0vtxxoVxFsLY8BtkbvfMxx38xKmMlRiMiVlL10pBgKZfFsj0ehLjXNXn8tx/vwFrpO6P+94LufBrnes17E15nXNGHBnldNfXGIiSuzbU5q++GJMCoRK1gUIFg44MXfCIR01i6h3qU5WyLi/EiOdDQO+wVzdOClyuljj1RNTNmWj/Tfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rKzBPvxckueXoZDzR96PUhJbqrz8H3t/lXBMoInYhwQ=;
 b=ErxBJ+7xaDd7FlYhVUvVDvjhDH4QfbehMrLXEaLouqv0qxahRHPSoxcqp1nqMgjFEWb0zYklOcNLiLm4cSa/nilCApa6ZNsoB/EiPTeZlBjpSbBSbJeUb1/3PlpRvp4vwrgr0QsJJpSJ026r7hCK1+WcrASfdRGGHys/O2mw5cVC/kuZsv2BYjPKYUOWcDpwa5DYbgA5vTPdVaECdhscIBVf21S6xVavAjUgjYdvueseBq5+PwgmTTMjzx2dOG/XR76SeZALVZhW3G0GSwH3CVP8jtFQ1dqYkvWbjK+zLh5DPv+2RuTWUsKDxVIIxhV4oDMjyewoUWYc4UvRf6qfiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6997.namprd11.prod.outlook.com (2603:10b6:510:223::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.24; Tue, 8 Oct
 2024 20:21:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8048.013; Tue, 8 Oct 2024
 20:21:33 +0000
Date: Tue, 8 Oct 2024 16:21:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during
 non-d3cold RPM resume
Message-ID: <ZwWUSvWdKZGxs5Yo@intel.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
 <20241007140531.1044630-2-imre.deak@intel.com>
 <BL1PR11MB5445566CC674BD448027A065E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
 <ZwQsnaXxhGOPLO9T@ideak-desk.fi.intel.com>
 <ZwQt5t9iR9mYLsWR@intel.com>
 <ZwVQwTN-FklTi6cb@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZwVQwTN-FklTi6cb@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:303:16d::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6997:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f3d3f25-6a69-4ab2-099e-08dce7d6cd2f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ox32siqFKW0teGX7OeWq9KVU1r8MUeKldZMoVbZaOWvL96vW7/suzzd/HcAm?=
 =?us-ascii?Q?Yv7hVC8WZfIBhaVUcl0PkOtPyvp3t1Yp5gbvOta/SRTrSAYOy4dxFmAb4Zs7?=
 =?us-ascii?Q?ZmV9kuqV5GtEJMmhLUjfyNXiEH04T8jBXiVJVNJQjXzaby6+5e4xz9ZT6SpV?=
 =?us-ascii?Q?6RC86JI7L2ZMN3xV4pUGWtWLd5v4sc4KO6wDSCeDyBLnz9uQLaRsMMoB60Fm?=
 =?us-ascii?Q?7ZRhWR8v/XIhqN6L/v7qdj5EK9AklJCuolvPsOxCquzNVAScOyvpgEDvM7nk?=
 =?us-ascii?Q?lSOgA9p5luLprv5Gt/CAIrOQlf/HdZh5wwGeCTmfMoRjenHdpr3xly3udNfT?=
 =?us-ascii?Q?bqZiAJ5Wmj2DVnjW1YQ27M2EucEUbkydHm2ULYArFW0WGroQhRY264kFUkDV?=
 =?us-ascii?Q?Zd2JKtynTPseKpRMbPFeIpjv4s3oZ1qPqxFPKp7hXNJjmyV3+qs1OVfEfh0I?=
 =?us-ascii?Q?IiUj3ynF2CUe2SWthv8uuoI+3UByd0orYKSPgvqo2amOlolRFdd8BBdEWfYN?=
 =?us-ascii?Q?umL3i1uF6AWykyvTi7MGIbd7B1bTv65mlH1FpPRD3h3hQqymtYt0iBG3w+vb?=
 =?us-ascii?Q?Sdz+OKWlVF8XLJOMe1ZFba+r/vltwm3OSLA4az8v3QnQ5cBuIoGCG0vLXZbE?=
 =?us-ascii?Q?p3O0nJqPoocPhrblDcxtIsnC4S9I2bzsVmKBz/6oNzzhAzqfKzTbdXXQWwOa?=
 =?us-ascii?Q?EVpVZ0iTjmbDRou2EU1TY/afXh3VEWzkEBCo29K7fuFKesL9lgjwcG7vXHzv?=
 =?us-ascii?Q?fPkYtg3YLuChEeoufrXwAdEh466wI7/BeB7mrSZWTwsY/3a0001e01H3AOEY?=
 =?us-ascii?Q?EQiFzeI/aIeZlB+RRQG1DKmU8mTW75GZNsBiqGZFsjlcQQrGgqQ+V9dwzKA9?=
 =?us-ascii?Q?HFRW1Eyi1QZqHdrbCtZniXFz4syGMJCDmupZ82meDegCTDP0VdYZDxaD8POW?=
 =?us-ascii?Q?lulOZgvLBF0pM3PTkhT7b4l+QU0r7OXyUAjAQ4xKe1Z03tQc7RZYuj1qRm2/?=
 =?us-ascii?Q?sbrJB1eqNUPValhWaI3CtbRlrPPoRCHXCDmzjwRNB1y1qZgpmdaioavp/3cu?=
 =?us-ascii?Q?AxUnJ8LNN9oWbOuR9CZkwy9OqS+Fw5F0kdgTt7bQyTMkAfIUAE6W3qyk3k3u?=
 =?us-ascii?Q?ENMn3Sm11BG94MPWdjZhQ/2i3z/HSIIDhHNadjLIS4dU3asBjzNRwENItEFF?=
 =?us-ascii?Q?hRvA1H7XnVjyCXME7a7nFjfZnLAObyWoLtKzXledlS9U2hoSOrW+aIMTv5LA?=
 =?us-ascii?Q?BVq7MrC36TuEMITHK/MJSrykJSDt5s6HlrXkCyS2DY5C3eWNWmqDcELTnveP?=
 =?us-ascii?Q?kHs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WquUPgyozgiUEhfZ1c+58QL4jqbf4EHW7UQUyT/3TfknCbVyncHU/o89QXiP?=
 =?us-ascii?Q?3p0pUkpPHpTzkaDLNB4xN5rs0UHOqzgpIJcf6CXwtluOLhvQFG9QPLPPPO7h?=
 =?us-ascii?Q?w57ZgnimBfAHtI0sseOam5DH2Y01x7o0nQ3PcAg4Y7u4wl6NxWHXRgW7hDMY?=
 =?us-ascii?Q?92u4phDXKXMssye+C+1F0wPHgVWYpqaavPRtMRao43J4VNbsFLTzzuR2sHC2?=
 =?us-ascii?Q?iPP6jLPsCaJRh9M9luESjErzramnva+WeZmuhiXxPcJYKfYqQjGF/fyAFvGQ?=
 =?us-ascii?Q?/f35neuh+ymzkspFR311Kzr5+2G6/GjKoYo5WvqI++Rf4+e1njhY8jVjmL5D?=
 =?us-ascii?Q?CSkwSuropocmMCpm4UlSCLB77SpU5XHfyn1gfgBRQ7ilEAibyf+mmrzeEwQn?=
 =?us-ascii?Q?7iQ6BVj1H32T3Ay8ptZuOwS20gfqJdbdlsVxS6gHDsmjxCQtyPKoenVnK4o7?=
 =?us-ascii?Q?EGltWLRibS1Gj/t0rLyilqEuIBbxjTc+wXtDnushsUw2RV5lRu03VTNsBD31?=
 =?us-ascii?Q?fhny+sDci0lv3lsB5uEMwico78/AX+age56w3UTT+N5x4zJCT5sOYOLQ80Bt?=
 =?us-ascii?Q?1kEc2XkJkp4o2CDUzN7jpID5AzVGHqIYrpf6w7OlyfROTqIrGy3yyaFIwWiX?=
 =?us-ascii?Q?X3TJuBr5FcrWn6eWIJjVPBaAIhFtQLorFKLlvxutKl5m7TOcX+HR0aqQAfGN?=
 =?us-ascii?Q?TMILD7QQ75mslnjEVGRXay9ivGxooYwePsHBfXC0vKroqTPC4vO8z0ZR2w2Q?=
 =?us-ascii?Q?+zu5urAdnfWgrE4b3AWoD7NLhAzRKnlqfFinDu5Pb2YEC2EUOBNrgeJKFDXj?=
 =?us-ascii?Q?mpl2Pet2ebC41uRJUHGG8cAa7/g3csdXS/E3zamEpNSNxr0eOXjPC1qSr7CG?=
 =?us-ascii?Q?akPlIv5dW0HZvfE4WAM6dYUG9PDbQbqYkrU8LmwuaCxjPOELJgT37tdoS8gB?=
 =?us-ascii?Q?Aa8jHHD5F7foCZCvVtizpeD7EVPyjiQuZz37tq2r8IzXXNVQPZwSxEaybJvs?=
 =?us-ascii?Q?Z8HZqwcRWQ/DIa7S5Pvkqfg5O2oTuaQqfGtUjjpmkRpyAwNjTvLmMdu2KNMw?=
 =?us-ascii?Q?uH9TBAxkuull3l+M0KB8Oi2DmR1SQ3OknfO/vGTtgDvyJOb9fE0FX1BdDEpv?=
 =?us-ascii?Q?CtaQZPXzYnJl0qKJQHM2LbJW8r9lFhqMVMvwLxSWXEknOxNzJ0527rqzyMeB?=
 =?us-ascii?Q?Tq9ZhPOUcLQcIFE6PA/MO+iyeGFrJ45bogUHkZ+3H75HUDFKWPXAm2iUxANT?=
 =?us-ascii?Q?sdn778YXY8nxcppEm+zSGqnICCqvb/FzfRB/AVSjncUyj1hiOQUvaZqIpxqB?=
 =?us-ascii?Q?PAjBDeowSKgovE3A/4T16U940ZqblPHW+rX2hEE1EFwtLqLX57zQvffMgzsZ?=
 =?us-ascii?Q?OkeahiUv4a6WRF+7Meae1IBVNd2lGm2PAUmhf0aA5mL9nXQln46QwqJ5sacq?=
 =?us-ascii?Q?q4xY5Gxq31sroIZolkxTaNFJiz/LBYX96dA/ksqn17a6++oO0yrfBK7H6UW8?=
 =?us-ascii?Q?fS41jutY4KbjJjnKI0oCmgUT+Xc/z/25DURPrUSP43LLih3DJ2jOGYftBpwY?=
 =?us-ascii?Q?B2nVFhLGKxEzo5qCcfpeGNIrv7bwFcDfdj7sQ3crfjvTBL3oVI5RTHQkPWLW?=
 =?us-ascii?Q?IA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f3d3f25-6a69-4ab2-099e-08dce7d6cd2f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 20:21:33.4848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9tfTCoynJ7pjRy5+xww25gO+yKWaBJOg/PeiiTjvf/TC8aP20XXVlOfeYZZ3DMfClp69mWe+zyHyfTMmMV8qMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6997
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

On Tue, Oct 08, 2024 at 06:33:21PM +0300, Imre Deak wrote:
> On Mon, Oct 07, 2024 at 02:52:22PM -0400, Rodrigo Vivi wrote:
> > On Mon, Oct 07, 2024 at 09:46:53PM +0300, Imre Deak wrote:
> > > On Mon, Oct 07, 2024 at 09:29:46PM +0300, Cavitt, Jonathan wrote:
> > > > -----Original Message-----
> > > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> > > > Sent: Monday, October 7, 2024 7:06 AM
> > > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > Subject: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during non-d3cold RPM resume
> > > > >
> > > > > Atm the display HPD interrupts that got disabled during runtime
> > > > > suspend, are re-enabled only if d3cold is enabled. Fix things by
> > > > > also re-enabling the interrupts if d3cold is disabled.
> > > > >
> > > > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > 
> > > > Is there a reason this ended up as a separate patch?
> > > 
> > > On the principle of doing one thing in one patch: the first is
> > > refactoring, this one is a fix.
> > 
> > We do need this, but we need a lot more.
> 
> I think this should be applied before other changes and from your
> patchset similar fixes (ideally xe-only changes) should be applied first
> before other refactoring changes (I think there are other such changes
> there). These fixes could be backported then if needed.

Agreed. Let's merge this then and I will address your comments there and
get the xe ones before.

> 
> > Please help on the review of the consolidation and the true split:
> > https://lore.kernel.org/intel-xe/20240924204222.246862-1-rodrigo.vivi@intel.com/T/#m482df5716f81e6f6a3b5f459f57f193a4292ab52
> > 
> > > 
> > > > Not blocking, just curious.
> > > > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > -Jonathan Cavitt
> > > > 
> > > > > ---
> > > > >  drivers/gpu/drm/xe/display/xe_display.c | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > > > index cb2449b7921ac..695c27ac6b0f8 100644
> > > > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > > > > @@ -486,6 +486,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> > > > >               return;
> > > > >       }
> > > > >
> > > > > +     intel_hpd_init(xe);
> > > > >       intel_hpd_poll_disable(xe);
> > > > >  }
> > > > >
> > > > > --
> > > > > 2.44.2
> > > > >
> > > > >
