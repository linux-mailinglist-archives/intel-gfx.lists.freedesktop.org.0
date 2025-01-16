Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A9A13FB0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B60A10E9C4;
	Thu, 16 Jan 2025 16:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WuGeE3qb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6069310E9C4;
 Thu, 16 Jan 2025 16:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045725; x=1768581725;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9VwcH8Apya+dfroOoFAdHzzM2Y2oJl6hwTYI5ziu/gc=;
 b=WuGeE3qbA+JAP+wtMxryi3eacNfkDFeblJLLZzqYV9D3Ck1hseHtDHb0
 v9WmU0neTtkvrzGJXUneXBgOkV228meLKbjTrtFNwZdYoaBGrcj2kobPs
 wuj4L4/UKCUPsujHAf8yCROyPy1aoK8g7zE+PBpfDV1WGkJuwSZVI1qQS
 mG02zlLYtxcBWjBdGh0B7dMVjZpMc3UU5IGWXPiCCqCzHGZ2QNkBTR5eI
 eslqZ6ejK3a4jPA4CJMVnzJAWmYyopOH4EZV2cLzSTtHRdY65VOIhsBij
 GjJal3sDrsOmyewvXiZgKBS/eY2E1vxaD+uu67mdEV3akRO75lYCnEApt w==;
X-CSE-ConnectionGUID: xgxvBaIlRXSRnyS4EkNoZg==
X-CSE-MsgGUID: zUn06WGWTveQOOWxh153dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41210493"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="41210493"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:41:58 -0800
X-CSE-ConnectionGUID: ldA0NWuGT6WVQPxaFATeeA==
X-CSE-MsgGUID: RMUnbdh2QzuqLQhffpm0+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105322005"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 08:41:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 08:41:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 08:41:57 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 08:41:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A7mnxpFlVeL1V8FZzaJZRisEGcIeunXNjJ/cYgA0cYkfZyBm6BPDLyJJypuhK3xo7lcy3TWgI9HTLSKBwbZ1WyghsVjhUWEjYUDxbfPz6BVbKHwtNgmDtpk0UOcTwl2ixowPmSH03z6/BaVK7bksuyA19MYQ/JwHPQ15pFvnuKHMVbn+HNdvbQz9zOHwQHwiPub1SUONDaKDWH8MNbc/NeonzkUKjGnxGCGVJIYrxh/d4TDIUMKjCgXQKaQbV4biYE9upAwLxIGm2fGH6tU8VGw/FItbi5HU3tCa5f21lcGQGCECfFTFZ8WSf9NE1+L29wOLAk7U7gvNu5dZ7exDPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5L9j7vNy628kScIoncpPLwF4wl3YXFrBzvUQHbNqdxI=;
 b=t+vgn9WlQenv6cu5agiARp61BTfdMZDo9CcJEwSoCFKkf8kI6+iJX45D+S3+5baRRlU0OrOIWwRKIl4joCOKkILtAVSoJk2tr/1ynKiwD5wqPZE5Yt4YSflf6vKw1GqIRXQlsEQ24dseedEWrfiTZ8BovBdzyIgRiGnVLGuTfK4GIKl56TUi3e9PwzColxqV6RVmK/CoeAmk/DnWwaCiJ+jy01+ELsTYB2PzIseqAk7VGjf8GCh+8qQ1hDyORMWK4synRJTSpBgo3rf+jR5fKWEPapMJgStxlorjOp6ujNmTTwISzSyAl2onjBoTP9NL5fFE4Gp5jKJOdTRzO5rtzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by CO1PR11MB5138.namprd11.prod.outlook.com (2603:10b6:303:94::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Thu, 16 Jan
 2025 16:41:54 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 16:41:54 +0000
Date: Thu, 16 Jan 2025 11:41:50 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp: Correct max compressed bpp bounds by using
 link bpp
Message-ID: <Z4k2ztPL6wS76Kf5@intel.com>
References: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
 <Z4kmGN0RrY7VVBzQ@intel.com> <87h65yg20r.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87h65yg20r.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0227.namprd03.prod.outlook.com
 (2603:10b6:303:b9::22) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|CO1PR11MB5138:EE_
X-MS-Office365-Filtering-Correlation-Id: b2866e3f-ea2a-4203-f371-08dd364caefe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?A/adQ2zz9CHRcXuDupuWg1mMda5ClwN779ZLIPA5BhNYdP5gAww40up2jOTO?=
 =?us-ascii?Q?vxx3M/UTSDxZo2d0OF/hElDVlqV/VAwsfuyvpRa6u5mylI/movoEusAQrXjV?=
 =?us-ascii?Q?5bfMfHkt8nfN29p72bLK2g/Igg+3zKXY1AWZd1RIlSz8lciA5J4/rdO03wSt?=
 =?us-ascii?Q?4jfGJnoxuIYSHN5/KJe98S5vjiB21ppiIcZIoranCxL9sJUTd1xo78X7DBpf?=
 =?us-ascii?Q?UiH5BZZQGCWp8VgCM9hYxwxdCqPNBUiQQAQ9+fqUiE4mo7K2t7jIMi9m/csQ?=
 =?us-ascii?Q?fBeGNRYEnEnh09WJqpfi+iUUgqHND23gdOOA5EZAe1GjRWgSssY4pxwet9at?=
 =?us-ascii?Q?tViU+fV28cAayebxjXSuMrT3mtKqlNOcm/LQQPj1aPTsRTnbjmmKjiyWN/5j?=
 =?us-ascii?Q?DsLvt1VmN/1snpZCWfowguTs9JBK1gzP/PRDJQnF5VXhndbPXcQLj3tisuua?=
 =?us-ascii?Q?dmgSdiNDJhp3/v1n5A1QShW8OtLWGnCm32+Y9VncmpfkXEP+OFLu5CRup9We?=
 =?us-ascii?Q?V1uNKzuDgfV3DyIZCcr0zf2TvuRsfLaeFpttA9ABVAZDneaV7lNr72IFPML7?=
 =?us-ascii?Q?OPVHtb2vBHH+fynDq7vs27lTNRVIBXkMcaH+Yp4NfBdMiMQ/SkbzSUEEMgxB?=
 =?us-ascii?Q?KyHOBjTatN+1asUTXxsD5juGeTKzxKuv/5jM/Vi3JfIEY0LLCADmT8MoEvAD?=
 =?us-ascii?Q?Oz2dUbZEzqbe4p3l5mV8RPi4sSaBKmay7eP5ro6c/1WCEiZfmZi2IiEgknoq?=
 =?us-ascii?Q?2oHLwgJoMnoxxYfMUWWTSwv+JWYZnMEgLOj59tEJwuAePUZLZxTgHWyuMJla?=
 =?us-ascii?Q?FzMU6FuiTDc6kuzjr5Os3jpfRxpnwwugx3qP9O4KRY5TTJmNn8bcL69Nr4+Y?=
 =?us-ascii?Q?HZsQUdxAiDrg6fDRwG1IowpcC4GCJ9B4EmhOFvuX1S5X34i35FNoo55OQ2Lf?=
 =?us-ascii?Q?5++AzMyLQ6HcaoNHCSQlhmdFlppHdOOlMs00P+jPwgI5IExOai9tD6M/b/De?=
 =?us-ascii?Q?UhgffCUhx6u9xG6sWJTgPjTw6n11nEzuRwxo1YI8HffXY8RBc2oAYuSU/DfU?=
 =?us-ascii?Q?Gsajyp5HWQch75hnWTNLqMotVvjWfzXeNUPMEeVPJjFUOhF2Ejd7Oo80HryL?=
 =?us-ascii?Q?u4ajvv8d9K1XUk5VsdGbSvcgC8I2dhvacDUH3NtIZ8JGn3hEp3y3Lrqd55EU?=
 =?us-ascii?Q?ksM8nYy/7EpKWv/miTlKp/hCFL7HYZjgif1f1FT8eMU8DWB47DtJCwTpjqGU?=
 =?us-ascii?Q?3VIFO4sc2dAQsOjiKyboK/oDi55Tc+KEkXuQIslr5p8XnBNSFqvrXWZ8DI9J?=
 =?us-ascii?Q?7Fi7qAdeB1vbhuvfeWLSdJwiq6FuxnI5WT45KX6evnifhjxs+pTB72eqCVzZ?=
 =?us-ascii?Q?y/gtjpJYx9mgk/UUI2o6vq4enG32?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MN3exV8DELC4mWkCnZYIzZiF9sS/N0na3pK9XMhWnDGuG00tHS9o3tmHfXxI?=
 =?us-ascii?Q?mkryjrwYCPWX8yzyj13MpdDS59hAwpFqfQ07oGH0LqjqdQybygHWE6YzrMz1?=
 =?us-ascii?Q?wcNJjTxswkDgdCUkwrzu57wJYcZeKbFHdAlek3gkdAiTcmpo3UDS1slYVDw3?=
 =?us-ascii?Q?sfHA1rCAHUVmdwMnwH6EywqFrJaaap6v37OB0mTZdLSPDsVZ1CdbVtcLqJ8v?=
 =?us-ascii?Q?WXx2BdjEulO0ML3FkyPGWLo47pfdIptL4je7WNlPZwl/+Y8OqfIN4HGAPuI3?=
 =?us-ascii?Q?fiwHu4ZWecJx1ADF2q+lIOCF0bU5Wi8ftAxFJo4/SbpTIqKks0bO97iHEwUA?=
 =?us-ascii?Q?+bgRCeZbPE3+KTOJMUi/JeHSi6MOWpDiY/cMXNlPwna6fH0K4ruhtgbqtJJ9?=
 =?us-ascii?Q?jjqf0lOFd1YrI8DhxNFNjG6EAZyq3ck21UNBrXmH2qJDzeQF7li498sO21nS?=
 =?us-ascii?Q?NlFI9jP/M/e8vyI6bIv6f6c0Zt4yk3uVz1j3a0RHAcc905KKE+pC6W9cZ/J0?=
 =?us-ascii?Q?KCALnya1+a2gUK3qKj4azOcu6I2I+bMFLouE/tVRotAV0vsW9MKaupOsZt5l?=
 =?us-ascii?Q?vNqfb4PFfKBX0pjQ46rsS49bkwAK147Pk8x1obb543h519N07U30f6z6+tOp?=
 =?us-ascii?Q?+IwzZxaDwgulwkNSyMi8YrpuMZ+aXQSTEbN78aIuUxCRa1Lm8bQAzYe16gjt?=
 =?us-ascii?Q?rFaVSgjOtlwWF5RlOiy3mtuS0eQhRdQQ6kbz1O59Tsnf2nzuD9I1Jaa9Xwpn?=
 =?us-ascii?Q?v1KFbrrcJRUTIwZBtCOW4EtUGr3x8cJsqmkZuzpUTB1UsR21l140mWV0b17r?=
 =?us-ascii?Q?Vu8cU076sHmMMnIMu+coNZxH5I8ZBdu7QuGT4UjxDSAii8oZWXsUj0/xBoJv?=
 =?us-ascii?Q?MNz1o8LOaAqOC+dpFUVm4xnNMfA2rr2a1g5T6wYyVbfyx+V6+nRRt+c1DroW?=
 =?us-ascii?Q?8nhTVnhGvKXedCR4RdMpVpS4WFs7O6I2diaK80PiRXjiNZfcfyHzzwgzoaUH?=
 =?us-ascii?Q?IX8GXS48A2pBG/mcCWTrbHqQmQtk2yfOvH9ah7V3OMgeWSU/cx3g6/HJqmnk?=
 =?us-ascii?Q?OPeUF1ybfkibmdWCgugDpimBEHxCLRWeH0XCFkXiHeeDrfSw1hDYA+ZNCZAB?=
 =?us-ascii?Q?rwltlx6Fg+ayY0NPJdJ1TUbGU2+T/NDJDj0TwlvzZAH6MAgp7PsUpmplTAOn?=
 =?us-ascii?Q?FLs0SEjKiCE/gE8IV5Y3QbhB/DtRybgmy/JoU+wffX9gq4bh4WdusTXbzEZ8?=
 =?us-ascii?Q?jxer9jE9S4XmP1HJ4tzrRL4w1bV5YGzDYfxDbpA3n6XH4jVNQ5rlSpUnm0W+?=
 =?us-ascii?Q?jLzVeZmO9OcmaMpXZziLKdhU2ztzZSgLxMLKEmHOOb7yKPJ93QdwgBCVnoT/?=
 =?us-ascii?Q?IqlMWSFnaD72M++KvMEeiJn5Jd0NQKCw7nRG9wRwuYRQV73GzzUcpKUDzDJr?=
 =?us-ascii?Q?XuBLyeNYxHFM6e326Ut2WAjtnIt+//Nz/YxpsBQ/F7nvw5dd3OIrq7OvizHZ?=
 =?us-ascii?Q?Pf+eLvgKTqNr1LTNfNGSIuwG/bmdZpIDYV1Fdxp6J2AWnzGSvjGDOd7pZuxn?=
 =?us-ascii?Q?Kdr0+yXz3y/ZOhMKqPOu4zxEy+PclbU+J2rYVq1cppEZLWuPPyVktnWfMfF3?=
 =?us-ascii?Q?4w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2866e3f-ea2a-4203-f371-08dd364caefe
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 16:41:54.0438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8SFp/nlHk0cKT1oPz1B5RYDvDDZWG68PWscZLTGmac2pdC+9sXe5UWod/bcdQt4NMl8Mg/+UA0fTeHYJO5SSLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5138
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

On Thu, Jan 16, 2025 at 06:24:36PM +0200, Jani Nikula wrote:
> On Thu, 16 Jan 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Thu, Jan 16, 2025 at 03:24:16PM +0530, Ankit Nautiyal wrote:
> >> While setting the bounds for compressed bpp we ensure that the
> >> compressed bpp is less than the pipe bpp.
> >> 
> >> This gives an issue with 420 output format where effective link bpp is
> >> half that of the pipe bpp. Therefore instead of pipe bpp use link bpp to
> >> set the bounds for the compressed bpp.
> >> 
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
> >
> > patches to i915, even when they target only platforms supported by
> > xe should also be sent to intel-gfx mainlinlist...
> 
> Agreed... but this one was? :)

doh! my bad... I'm sorry...

my lei scripts goof-up + I probably need new glasses...

> 
> BR,
> Jani.
> 
> >
> >>  1 file changed, 8 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 1ad25c37f3c2..47fcfbcb893b 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -2068,9 +2068,12 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
> >>  			    int timeslots)
> >>  {
> >>  	int i, ret;
> >> +	int link_bpp;
> >> +
> >> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> >>  
> >>  	/* Compressed BPP should be less than the Input DSC bpp */
> >> -	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
> >> +	dsc_max_bpp = min(dsc_max_bpp, link_bpp - 1);
> >>  
> >>  	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> >>  		if (valid_dsc_bpp[i] < dsc_min_bpp)
> >> @@ -2113,6 +2116,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
> >>  	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
> >>  	u16 compressed_bppx16;
> >>  	u8 bppx16_step;
> >> +	int link_bpp;
> >>  	int ret;
> >>  
> >>  	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
> >> @@ -2120,8 +2124,10 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
> >>  	else
> >>  		bppx16_step = 16 / bppx16_incr;
> >>  
> >> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> >> +
> >>  	/* Compressed BPP should be less than the Input DSC bpp */
> >> -	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
> >> +	dsc_max_bpp = min(dsc_max_bpp << 4, (link_bpp << 4) - bppx16_step);
> >>  	dsc_min_bpp = dsc_min_bpp << 4;
> >>  
> >>  	for (compressed_bppx16 = dsc_max_bpp;
> >> -- 
> >> 2.45.2
> >> 
> 
> -- 
> Jani Nikula, Intel
