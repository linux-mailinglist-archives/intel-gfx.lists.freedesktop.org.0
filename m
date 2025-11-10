Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D98C47F7D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 17:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789FE10E44F;
	Mon, 10 Nov 2025 16:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELZQKrqc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B064110E42B;
 Mon, 10 Nov 2025 16:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762792511; x=1794328511;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BgWnPEoGTMXxKMYSi6HknAEffoV+ac66iiCPDgJWy90=;
 b=ELZQKrqcn4r8GMuKJA+NPpGwxTht3rEAVL5KKGdv5t4VHXB8EIDp2+cT
 n4Fuv//F5taafnv5kCplBzNFn6yUk9StmDnpiQFPrtaKSLDDCFIhtj8ke
 JtZCFC7+VtMhcu5/XBrsztrd9US2w5oaBziP0AWaGLqiqDlnFsXQj6+FX
 NiNXVbKBN+3NgMvfuODWkA/H4PRApNtUWjNd0SLiVcdrGKckI9m8Ax6jw
 NI8O16/LswZt5H06fGbrRE/d80rb3PyQpV8axqd4E7O5q3etwFtSpsMEH
 f4cmDtci7m37PEnmUyAjCWGkMsrAnGY1XIzaPGgijuJF82vJdCWwLakD+ w==;
X-CSE-ConnectionGUID: Py5GwaaJTFyldgTdHSjOZw==
X-CSE-MsgGUID: TjHAUiLST3+yLQjM0RFWUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76192947"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="76192947"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:35:10 -0800
X-CSE-ConnectionGUID: AVvgMl7PS4m/KQ6ooFsHbA==
X-CSE-MsgGUID: Afq44aUYTyW3YeCcX5Hs5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="189437458"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:35:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:35:09 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 08:35:09 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:35:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YNPCLAJRO2m5xPusC6MrXtc9qNLlIOjfTV/wWgmsxwqoFlH076h9HxqmIO8rRnR35tDXNUfdfUmKt5/JPvjUYLCoKcQzJvrd65W5g5qfj6E4OTm/ombXKwdyVRIb4qwHKbIF5ppSv86Z2ersxnA+3BbEA8QrhLp7aSVLP9rtTAwFtHvAIJn1nKEjZ8sRY/o6gElMELaR2mpW5FPHwsrJRp0c9M/fy1v4Wxzyv2WpLIWLIAALj9aV4k5CYR59NO/IcBgFecTTolX9ZUaozHQjTTScyPe5YBD8VA23b17r1WFnbY7fdFpBV0bLy3BXXbATULao6VAI2FeaeW5LBQoTdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VLdxGlG0tYkopv4Ms8gmDkTdu88Xnp5U+PEje8KlRkk=;
 b=KTGWuZk5Ee615tg622r7jg831rzqbOzc5Z3YHvkA7ZPf2oQa9NTFPY8DHX5QihA0N5sy7BoWEp272EG+FIpShX4lWScgW3P7ECtVDlL1rV8oUNA3tiILHsah+QJYfJEvk3kYe89O8MXhCb31GqD/PPIBrOLCiG3CJEbv+UY0FKSBj/stolXy0qclLTELI8MTRL+59l/TCZPmPcTPEOw0uEK1pv0oMNkm7VqWkMimK42C1KEo5tlqxmD49iwMwu8qiSMCWDzNBno3/O0LbVGPBUNli1YSIJ3gQjOdNaE1YAaDhwSPg7Y59DtMZgUlPRZ85bSG2618Gbwoj3qQ2ORW9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7301.namprd11.prod.outlook.com (2603:10b6:8:10a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 16:35:07 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 16:35:06 +0000
Date: Mon, 10 Nov 2025 08:35:03 -0800
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
Subject: Re: [PATCH v4 05/11] drm/i915/fbc: Add intel_fbc_id_for_pipe()
Message-ID: <20251110163503.GD4063759@mdroper-desk1.amr.corp.intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-5-ab3367f65f15@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-5-ab3367f65f15@intel.com>
X-ClientProxiedBy: SJ0PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7301:EE_
X-MS-Office365-Filtering-Correlation-Id: e4e3db97-3d47-4e00-abf4-08de20771b58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zz7oJWfN+6V25VPGHOpY8ygrctpEDuNeTgfEYniDEe5+nCJklpxWOmyddfXf?=
 =?us-ascii?Q?jQ5o7kQLFsQK7v6qJF59U+F+5vmelBBypzlXZ9V3olQqdqoo754v/Yz7dQqx?=
 =?us-ascii?Q?aCx5cp+grz/zb1S7BlT78zvWnct6LJ8t0YzN3aoLteSbTWURycGPjRmczl9W?=
 =?us-ascii?Q?EV+0Ze/9RjAzfQQnrZ4kp1yVl+uK1NS4CmKfCY+TZHNrSW55OoNWee1NxQND?=
 =?us-ascii?Q?7RQ5/gCsQbd9knWI1CNFNQU2yy2LPMQ/8OcXlYDMtHD2FOb8B1PCH3b4bmP4?=
 =?us-ascii?Q?m80i+R6qv9siv9UtDdu9qW7m7oRjINZc1FTVwGq63CwvpzGoFpLYp25/tcMP?=
 =?us-ascii?Q?MBXN1lMthNsL5BkLDevYMHUB6yWFyYTqWjNMHrQltiL7/hqP0wGXrp/bm2Zg?=
 =?us-ascii?Q?SmNNOnatujpVqO7nZoxWmkMBpYZzzwpG0TXiCn/CNK2yOHtImTcZrwmtSzSN?=
 =?us-ascii?Q?qYoL8JTqdZjRjKezGiDB/7/OEg9/ah/HM8V/idI1Xr4YcHDVg3fIqDyvMwll?=
 =?us-ascii?Q?EKW9h64eXs12nfNoMUx2qs0tnR4/sB3YQM11EzpTleRJftCWHmxpcQ26Ym5a?=
 =?us-ascii?Q?/Yf2nEsFeVy5wFIXw/65WZjc0oIj1snfq77IZO8ZC7c+/qalKSry0BwniBVH?=
 =?us-ascii?Q?HOtFDnyKewUMLflxKAwVPagNHQHb5JMq5L6IWoYc5LiZkGdx9TdsDqUjzqqO?=
 =?us-ascii?Q?iu3rSmepbTzCQzAmWVitJPzT5XZVkHwM9j3w99dt4lg41NNxOlpNxGrtV1tb?=
 =?us-ascii?Q?FvAfYGmjELEp4erfSwSiwWhM7FcpMp5ZzoRbBf3/oHIW59xlbYaaXpQkN1Kx?=
 =?us-ascii?Q?kd+IMOxrtD/MfZKV9ivOWTr2UMvz+KdgNWSNdUCKmho8kSSRDn5hcrYYZneZ?=
 =?us-ascii?Q?pMa+bSXoh0dXfNcrVkwWbQvUO76bZ+KhBryzcBkiaM7oeRwCSe/vEkFyYYqq?=
 =?us-ascii?Q?1AJX244It4ZgrPfmySnJS5t5dGENA4kI6usxUxElWXX+N8dYTv9QYP80kBwe?=
 =?us-ascii?Q?4t+aIYsqWfM7HMdKwKSO6xpduxzUl13Ez5SnrnnmaK01rU6JsV8NVD66poHQ?=
 =?us-ascii?Q?rxZv6/51kCjxe8fav15LGpQNVwhoA5O/XEi+OqhQu9CUKSsdkQ4UZR3zGgHk?=
 =?us-ascii?Q?HX8XrDSRyW55SGmsTlerj1DhDjF4esosWY1kjsdKnixUjWiVCzMwmhxUalxg?=
 =?us-ascii?Q?mzjS9GFNkGXmibRG3Un3tkrIMh0rUA/4U3yzPSE0tS8UsBZSZXApDJ7SAo4F?=
 =?us-ascii?Q?9QwsvfRy0bMrzd/nRrEXlNj7WhFkNGeaa+XBnUU56Ba9nTEzSkL7suT63Qyu?=
 =?us-ascii?Q?hH1PISEsyiWk8YfNEWQB2nEvvWuXRjr8Aio8TC9XQiB479pS3dSQiZuYumzX?=
 =?us-ascii?Q?jYkYzTlqytbnv1VCJJLLFjhfg1b06g+4cb2Ky9QgQEhIQFqXguepJsBRrDY7?=
 =?us-ascii?Q?iYmOX4aZpU1EwQH1yByKZ6SgAsZ6LB+p?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?beZNYUhToGQomVBQiIoD+iVqV9anAoUJqBE/KOlF18ja3/WxpkXeMp5TOOQN?=
 =?us-ascii?Q?LYexq9We1l4S8pY6xYckdkuTJ3//403uVHp64hm6mNurPzivU210zZ/4dimO?=
 =?us-ascii?Q?Gmca7EXZBG4hZznlUjfER7JtNrPOs54XFORQ+DjUgFJMJ2YaPCE9beftnGM5?=
 =?us-ascii?Q?j1LxugEeQe3uKs6sefZHOfqBZZxamDeqQnKW9rGkbIlIsFRXAX90GvFIWZBr?=
 =?us-ascii?Q?I9gGyCKfJaFpAjfn/gndNyJ0AM3mVaWYRQnp2P4xGHhPoiahQlIwSyh1xbRy?=
 =?us-ascii?Q?Lp4KU7IBqROcPNUqOUk+p+yWHl+Lk4r/kihEvP2NrqT0Jc08S6XrLOc/bzmJ?=
 =?us-ascii?Q?2rhzJPFQQoNDmtN8NiESm1N8ioAjuHn2stoBPmzW1CjRMeyACpky3Emt66Gq?=
 =?us-ascii?Q?SBnEOMNjrINivf0e3VXBvcu+0JExtNrD2BN9rW9Euj9UoV+NZMfH1dxYql1y?=
 =?us-ascii?Q?h5mnfG9JGJFLNbCpBwDQ2pmneUXen4SX+lbqoowACphGQaoqXqZF6+sfwz9c?=
 =?us-ascii?Q?QHzbI/jFwHQ4Fbet2M5gkPScuGbX4+QOHMdUzBLA2ehx4rvmmzgXFbLnPXxD?=
 =?us-ascii?Q?hNmnSC5sR0h2CBQ959BP1kPYmSHCi/VJBoz9Hulsg5uL5btJv7OZXVNQE91h?=
 =?us-ascii?Q?lTfbWNAm7PJwPmlTiUf3aLGFhmzrrMIv6AQUkHfNY6/80Yb9Sd1T17uJSZxm?=
 =?us-ascii?Q?+v2WdG7CJfDBxL6UBr5CWETKkwBx7lHIfOOeEBg0Y0fa41mtg5+NH9RLNoct?=
 =?us-ascii?Q?Q2KogK9ISwvvtuq7LfeEra3eK3oQnM9ZkTFX1Qymz/aeTsh4EN8nm4I2v+1/?=
 =?us-ascii?Q?PBG9q7qy01BdwbidFG4P2I7M7p4SOuF2seGHt/+piIgI7499RCFN9dJtgzwf?=
 =?us-ascii?Q?z7COM6qRbSzKJcoLmI0K7IF4IL9m6MbUyfTPQgDiRkdPexJuSp3FULCFL5bz?=
 =?us-ascii?Q?/FwrJgGNe9tNtQso0IJ3nn7wKCZBmAWesLoj3ge90z5GbWMV1e5Cpp1Pj0dM?=
 =?us-ascii?Q?Uu3+PNXBDn6cONRQzjx8aF8v/Q+fG+2ym+xGlrATbQk65S6CRf0yITVFJdxJ?=
 =?us-ascii?Q?qCLRdq2PHOibJxBTzY/PufA5Ja3BtgiL1pW+/GJ6Io4fY3aFxn/BUgzuL1aI?=
 =?us-ascii?Q?G2s5XA51xc8fJ84jd8ZLuQd1n2Fl4y9n2G3MOymkMkDCNx+CKWxAIwQ3LiVM?=
 =?us-ascii?Q?nh31Srq4ZFJ/81oRpM2f17YZxKbyGY9/rbLMP2XsVqhCSNJUJ1t/m4D+S6Uh?=
 =?us-ascii?Q?e/EFu7QyvwxlfYTZgHo1lzVpXF6H+iXVkhA3Py3Aaa5zbT1QXd9yO6UOFELa?=
 =?us-ascii?Q?DN8Z+rKAJC1odCEZytpQLGbIIzH+xF6aooYXDQPzPFVyqh2FGrFCOgdiaCaO?=
 =?us-ascii?Q?xWh59vV/fxlOtn47mF7uTvEavEUjPl7SsbpWHq2O/NkxF/pwXrcGOp8G7wWs?=
 =?us-ascii?Q?kdznqdeo/1Xn0sH76L9bZ43OwSopcxmHPS2NZWQ9kDCsGXDtqU3KOF6fG4kc?=
 =?us-ascii?Q?XAFxkLi+ww7jYFeJ0lzyMS0LxESlAobJbtJitMTQbaCP2VM7yT3VnQrFEKsC?=
 =?us-ascii?Q?aqRYGaEG1iXbQ7cNOPmcc4XAaccUsgXZFiObZ3Wid8RvkaTisWbEly+v/mSo?=
 =?us-ascii?Q?dA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4e3db97-3d47-4e00-abf4-08de20771b58
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 16:35:06.7514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pOSFw4Sb+2MjxF72OFrygrOca6+pizU74tyZL0m/+MdFCX/hsaVxLJmjPsIAK35922J3IOThFJw3ZVZuYplVateU3tCRff2w1NYbvzoWDOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7301
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

On Fri, Nov 07, 2025 at 09:05:38PM -0300, Gustavo Sousa wrote:
> We will need to know the FBC id respective to the pipe in other parts of
> the driver. Let's promote the static function skl_fbc_id_for_pipe() to a
> public one named intel_fbc_id_for_pipe().
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c           | 5 +++++
>  drivers/gpu/drm/i915/display/intel_fbc.h           | 2 ++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 9 ++-------
>  3 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index a1e3083022ee..435bfd05109c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -129,6 +129,11 @@ struct intel_fbc {
>  	const char *no_fbc_reason;
>  };
>  
> +enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe)
> +{
> +	return pipe - PIPE_A + INTEL_FBC_A;

The existing usage of skl_fbc_id_for_pipe() was to call this function to
receive a (possibly bogus) FBC ID, and then follow up with a call to
skl_plane_has_fbc() which had checks to make sure the returned FBC ID
actually existed on the platform.  So, for example, calling
skl_fbc_id_for_pipe(PIPE_B) on something like an ICL would return
INTEL_FBC_B here, but then the subsequent call to skl_plane_has_fbc()
would realize that there is no FBC_B on that platform and bail out.
It's only relatively recently (MTL and beyond I think?) that FBC has
become usable on pipes other than A.

Now that we're promoting this function to be more general, should we
also adjust the logic so that this function either returns a *valid* FBC
ID or and error?  Otherwise it may not be apparent to people writing new
code that the result returned here can't be immediately trusted without
additional checking.


Matt

> +}
> +
>  /* plane stride in pixels */
>  static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index 91424563206a..3d02f3fe5630 100644
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
> @@ -27,6 +28,7 @@ enum intel_fbc_id {
>  	I915_MAX_FBCS,
>  };
>  
> +enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe);
>  int intel_fbc_atomic_check(struct intel_atomic_state *state);
>  int intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state);
>  bool intel_fbc_pre_update(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index bc55fafe9ce3..275ee2903219 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -439,11 +439,6 @@ static int skl_plane_max_height(const struct drm_framebuffer *fb,
>  	return 4096;
>  }
>  
> -static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
> -{
> -	return pipe - PIPE_A + INTEL_FBC_A;
> -}
> -
>  static bool skl_plane_has_fbc(struct intel_display *display,
>  			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
>  {
> @@ -896,7 +891,7 @@ static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
>  						  bool enable)
>  {
>  	struct intel_display *display = to_intel_display(plane);
> -	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
> +	enum intel_fbc_id fbc_id = intel_fbc_id_for_pipe(plane->pipe);
>  	u32 val;
>  
>  	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
> @@ -2442,7 +2437,7 @@ void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
>  static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
>  				       enum pipe pipe, enum plane_id plane_id)
>  {
> -	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
> +	enum intel_fbc_id fbc_id = intel_fbc_id_for_pipe(pipe);
>  
>  	if (skl_plane_has_fbc(display, fbc_id, plane_id))
>  		return display->fbc[fbc_id];
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
