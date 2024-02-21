Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5E785E958
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 21:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEEFA10E34B;
	Wed, 21 Feb 2024 20:58:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XJ/73i7q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70FF010E34B
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 20:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708549136; x=1740085136;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NbphbBuCF9aQH7XO4BXZrSJv7+Ht59IwHQOxAVUzYG8=;
 b=XJ/73i7qERJgCkF2PtdAIkdjCFXK+M6ztnc0040O1HzIi3Cwn7eXgWx0
 y/1wwneq4hiE2wbUUyuX9xaeXPqs323p+qUFDm6ig3M8wwT5CZhm7fAEt
 jImXS1Hm3yugbPfOJt2RFpnc9N1FmQZ5l8z06T2DgXm8Yiwrb48eDehB0
 ZqnALTF3ylfxebcbuuREJ2Gn55HmXYZ8t61CjP7IFD0X2QCCnLL6IImln
 jfjLWlAWHKvk/19OD3HGZCtQ8DyPYRhgRHosflWBGlfScs8GngpKesNSf
 I7qcGxdePIEK7xisVYpzFG/j8qPF7DT1DGAk1Swj8n+5RUoneAJhoPQKM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13296389"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="13296389"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 12:58:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="913371826"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="913371826"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 12:58:55 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 12:58:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 12:58:55 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 12:58:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ETGmxRILNuQ0J4pWhanPmTG97sVQ605AYDs8ehYRWIMw612CGUXqVVQBZcRwmxE3rMY45ekqavhiHNYN6EDtrWq8EHv7yt1kEu+cgYYU8yCESxDKNgrvKL/yoH1P2VFZkWmyOTUCKfHMfKV5z4P56C2R4IIwanr3NofCWUB8uxoUfMiKV+Jkwu68tnVdHxvLH6rh8PegKgMz04DONzAKQS84UnvHykqUgarDG8f18AGEaypLqY3oXKeICwS8gACXuubLKPsHVkuZ7BOzu6zwqr5u5TApphms3+MSPK9lIzrbGwQG/GrN2fC1IVaBm0ddOltQmdpuDFB5mHilwdUl/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+z/zj0jtMk4uKFk19kMHt6xwHd5tqNgDUbAHD1Mr34=;
 b=Lr9wZHf0KbaH1s0aE95UPXRRYo47yFtLXOz0s1xMFStV5tXdUBogCe/jgg8QwKbONcp2++xwRPa+ipLnmpJJxXfGfkT27oIRCQsJZjRv5r2gK3WUEAYjNGyKWEllSCSc2yQ43c2v1VzQfEci0LHa602tQtb5Phvu3NBxlUA5LtATO8nrIElrXemn9YXS9s6ATqhmcZckoyWlb1X5xQPbwIMM5mVRj1fjxB+n7WUfEsClyBllezBps1tdYSsS/3QKtPQB3S6FoFD2vCFpiEMZTJmHW8nTqqiinTJpdBT38CwKgCuehIdvMSk7sAeYFiFIdAbxRpxLBaQBx5H/qKPLPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ2PR11MB8449.namprd11.prod.outlook.com (2603:10b6:a03:56f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Wed, 21 Feb
 2024 20:58:52 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 20:58:52 +0000
Date: Wed, 21 Feb 2024 15:58:48 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Hogander,
 Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZdZkCE64afsH-13o@intel.com>
References: <20240220141919.3502674-1-animesh.manna@intel.com>
 <ZdTkUFmBcxcpqTV3@intel.com>
 <PH7PR11MB598164A6F2EC328A7604B4FAF9572@PH7PR11MB5981.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <PH7PR11MB598164A6F2EC328A7604B4FAF9572@PH7PR11MB5981.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR08CA0002.namprd08.prod.outlook.com
 (2603:10b6:a03:100::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ2PR11MB8449:EE_
X-MS-Office365-Filtering-Correlation-Id: 575c8a1e-8c83-4c69-5b79-08dc331fe8f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5dUUySumYGd4/n0Bvrb8b0rBgDIbbfCIUXFRFKPd7eggmgPxuMX233tbJuJsjJm0bYrbNTQjfsWuYNPjxZ4NeATlP0ssYeYztfnUMGVZM38Bfo2aosyh1TIk3BE8iWLyF5er95Eh0Z3AE1goDM/7Nc5X4rd0FdYGPQj4Ei/ZheFfDBpwcXN9jrUl9sG34mfwMtKfue/FlRzy97Ip3P7e51s6H5FFlhyKFMoAgtgypIFKKlUtRR2sHWAzqxUIRbdgZMNxfbb8ncve9GAVzaosp3bo4lrtktz7GlCle/P+MbqpqoVqKrgSDtcWrGsWELk8QCdJn7ur6pM6pxoVfkNrA2P+zFWRugPpTiUdluoWCHmQrecOEn2BUCh3D6K/9U2A4AU4HeZuPlMM4rp4dF0KN1ewiP5tK5v6A8rrVOO08AxEJTll8k0FwGBGXrzlsi5/YaehLG/lS4ps5CMFsKcJJKIgTUfFXlnC5PsoMQ9QZXB9tcKA9DFD5PgFMG7axV0iddKdeH7blcdjBPaJnpj1Uw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oir3BnyACU/9JDnE2OAkM/1PYGbySlJe2amYTMpDv6AceMw0K+/aMzJOXJCL?=
 =?us-ascii?Q?srFAa8jqQAptBZasHJk+DQaPGKDmjw+8iS7xx+R3yo9PSbM4Qaf0jfJbHob5?=
 =?us-ascii?Q?YGxPrkKU3547J3fvdpd91DIoHtAC7MVSjRcyBhNYL5L0KChrR4GA0deJMj1b?=
 =?us-ascii?Q?mVEhyp8VRQ2Oz0OOv7dqDXs2H/DB32sLGlG6HXpmY/n8/zgV5GXGiEJbs4O7?=
 =?us-ascii?Q?R1kqpVvX8l6CFeArnAwgoSxvwhTGcRMBknFHBAsPoYbjNyDrmxsaz4w21e88?=
 =?us-ascii?Q?SgePYENe0y2Rr9gKE5jk2powGUAwp4RIkXf5AgklIt9qmtt+9l4PA9iGN7xc?=
 =?us-ascii?Q?9AX0iJaIR4yQCBY+9uGj6ipYKWrGMEgi/KcgXGJIoUg4u6F2a68vuji+I/TT?=
 =?us-ascii?Q?D3NMOkqo0kbdp0vaRODkKXfAaiVby8AQeQ9HVxYT9epJ9DvUlnccc0LWvTFt?=
 =?us-ascii?Q?4XO9JHttEuUW9C9U8tOJjbkVDtNfl8fWZucCVk8n2+MVgOB+QAypxqBSSoB7?=
 =?us-ascii?Q?Bp2GtY97b1B4px4HPALxBcCaA7JVi80Ash+eXQkRPm9Gy/IFE1WcYqZKNMnr?=
 =?us-ascii?Q?taMC9Om1kIfLlpJRy522oB/IXXUifhJRyUMFHq0hySM1T3FWtmNthSoRzsyr?=
 =?us-ascii?Q?zlRUpxUAROW0DqzGdb/gjeVuFUBvJ9bktmLN3X/4gE6AAd7HIcyLHN5/INns?=
 =?us-ascii?Q?gre7NKdsvvrPesR27ZtbYRsW2nPGb2TwVOnG3sinGOYIVTniGYmwUZgyHkLF?=
 =?us-ascii?Q?eHNIgzpkmCvL4JPSxnen3LCA/CmpJyE11aVFmlOvcH3Z6S2EG3J+8XGM5Zqr?=
 =?us-ascii?Q?0Fvt7nKEf+Q6ibh5lqRQWszCfLR90+ocSksnlbhcqJDlu7eFO+w6oYGaBYtk?=
 =?us-ascii?Q?RYDytfnvO4FuK/ychLpdjMUhwvi9VA5nYoNnuhPHoEzKa78wS6I5nKZUUaz9?=
 =?us-ascii?Q?VL1Sybn0ZNb6joDEzs3j/pEA/2i8ET/7do28R3VHtyyIm9ehbCBKYsU7s5zi?=
 =?us-ascii?Q?98hYTcNNXNWdcqUSTZ3Zm7ZSI2PtD1ze1HXTwQY5nkUAj+MajBMaF7o93dO8?=
 =?us-ascii?Q?wX0p/PnNkBYhqFYEK0azCAf9Bn1Q0UkXQUB9RS/0sCfqULlSuIKbqMkqZskY?=
 =?us-ascii?Q?hChQltntXDt64PbFPgl5eXworRlWVcx1F6HFzTcUGSyzB5KZ9p0rj/M1ihXR?=
 =?us-ascii?Q?+udXc0JvfSMm149ZD9nCORB5DmrimPX51KD/esCWF4pX6JtfEbnM2DjYQbYb?=
 =?us-ascii?Q?vLSndZne2H1BmeuhsG5h6mrdRumv0gGw1x4hwfrwXVyw+xxZsEyhGTwRjyjj?=
 =?us-ascii?Q?m6K5owQ+vEa4Ze33m3mhyBnXDEOAcVuhsQItc8E0yA1ugPeC9htuZzaOEA/f?=
 =?us-ascii?Q?+2NfccO1wNxTcsFyaT1E8oPFK1S2zA4ZMjqhPJ8YSQoquVHnwk8ydA4ROi9B?=
 =?us-ascii?Q?PIMIR3de3K6IzYeIoJ2dri+hPaw/pi1/xZpRcYLaT3FU58ZRciv1IeGAdNYz?=
 =?us-ascii?Q?QGSK5Z+pA6A8F0LcnT/tufEaHLgKY5I7Z+C1R5HuId0L8FB2lgar2fUZhqjs?=
 =?us-ascii?Q?fGTRW7+qMORkZ34bFlKSAKJHzDcy0VsWaqrFVXkdQbrSWRJmnePGSw1BQbKo?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 575c8a1e-8c83-4c69-5b79-08dc331fe8f0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 20:58:52.8173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eI1F0ITYq+yLh1DBo93bwJzJX/TD/KBbzfszcwqzcy1RyRozb1v8vhqnJHiqZwWuPE0CslugR6aXpy1LO+RMpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8449
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

On Wed, Feb 21, 2024 at 08:19:35PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Tuesday, February 20, 2024 11:12 PM
> > To: Manna, Animesh <animesh.manna@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Hogander,
> > Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> > <arun.r.murthy@intel.com>
> > Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with
> > VRR
> > 
> > On Tue, Feb 20, 2024 at 07:49:19PM +0530, Animesh Manna wrote:
> > > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > > W2 are 0. So Program Set Context Latency in
> > TRANS_SET_CONTEXT_LATENCY
> > > register to at least a value of 1.
> > >
> > > HSD: 14015406119
> > 
> > Unnecessary mark since the wa_name already is a pointer to the HSD.
> > 
> > >
> > > v1: Initial version.
> > > v2: Update timings stored in adjusted_mode struct. [Ville]
> > > v3: Add WA in compute_config(). [Ville]
> > >
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 217196196e50..eb0fa513cd0f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -2948,6 +2948,18 @@ intel_dp_compute_config(struct intel_encoder
> > *encoder,
> > >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> > >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> > pipe_config,
> > > conn_state);
> > >
> > > +	/*
> > > +	 * WA: HSD-14015406119
> > 
> > this is not the right one. You should use the lineage one and then mark the
> > platforms.
> > 
> > /* wa_14015401596: xe_lpd, xe_hpd */
> > 
> > or perhaps
> > 
> > /* wa_14015401596: display versions: 13, 14 */
> > 
> > and also add a check for the display version with it.
> 
> Sure.
> 
> > 
> > > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> > register
> > > +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> > > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> > substracting
> > > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> > crtc_vblank_start
> > > +	 * by 1 if both are equal.
> > > +	 */
> > > +	if (pipe_config->vrr.enable && pipe_config->has_panel_replay &&
> > > +	    adjusted_mode->crtc_vblank_start == adjusted_mode-
> > >crtc_vdisplay)
> > > +		adjusted_mode->crtc_vblank_start += 1;
> > 
> > why to mess with the vblank start instead of going to
> > intel_set_transcoder_timings() and change directly what is getting written to
> > the register when the register gets written?
> 
> I have done in previous version of this patch. But as per review feedback, added now here.
> https://patchwork.freedesktop.org/series/129632/#rev1
> https://patchwork.freedesktop.org/series/129632/#rev2
>  
> > 
> > In case the answer is becasue by then we don't have the vrr.enable or
> > something like that, then we should consider move around when we set that
> > register?
> 
> This was not acceptable in earlier versions. As per feedback instead of atomic-commit need to add in compute-config phase.  
> 
> > 
> > or perhaps create a specific flag? one extra variable, 3 less comment lines...
> 
> The above comment is not clear to me, can you please elaborate more here.

something like:

@intel_dp_compute_config()

+if (pipe_config->vrr.enable && pipe_config->has_panel_replay &&
+	adjusted_mode->crtc_vblank_start == adjusted_mode-crtc_vdisplay)
+	pipe_config->mode_flags = I915_MODE_FLAG_MIN_TRANS_CONTEXT_LATENCY_1

then
@intel_set_transcoder_timings()
+u32 context_latency;

+if (crtc_state->mode_flags & I915_MODE_FLAG_MIN_TRANS_CONTEXT_LATENCY_1)
+   context_latency = 1;
+else
+   crtc_vblank_start - crtc_vdisplay;

-crtc_vblank_start - crtc_vdisplay);
+context_latency);

Ville, thoughts?

> 
> Regards,
> Animesh
> 
> > 
> > > +
> > >  	return 0;
> > >  }
> > >
> > > --
> > > 2.29.0
> > >
