Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C66B32DAE4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 21:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006D56E176;
	Thu,  4 Mar 2021 20:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEDB36E176
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 20:10:31 +0000 (UTC)
IronPort-SDR: UBS52n2I1RzGd9q1Gkum4oD95t5gTxwAieONqVHPv/lOugzCZXiSltvRhrAnNnvDTe1jDibcPw
 /7o+BoiRJ36g==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="248890723"
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; d="scan'208";a="248890723"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 12:10:30 -0800
IronPort-SDR: xCmezRBxATYaTYh0BIhc48EZAINq34GqI8YEhy7oLN7v/Gev+R7DOroGFlCvhYpC/G8k/hmenI
 Xo8y+Uv1hY/w==
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; d="scan'208";a="518782684"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 12:10:30 -0800
Date: Thu, 4 Mar 2021 12:10:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Chiou, Cooper" <cooper.chiou@intel.com>
Message-ID: <20210304201029.GX2690983@mdroper-desk1.amr.corp.intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <161285475934.28238.17153316113364596984@emeril.freedesktop.org>
 <SA2PR11MB496989392E7289731DC748AF9D8E9@SA2PR11MB4969.namprd11.prod.outlook.com>
 <bd172f7b-7adb-5841-e983-039f42dacf3e@linux.intel.com>
 <CO1PR11MB49632EFDFAE874AE116ACC489D979@CO1PR11MB4963.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB49632EFDFAE874AE116ACC489D979@CO1PR11MB4963.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable__WaProgramMgsrForCorrectSliceSpecificMmioReads_?=
 =?utf-8?q?for_Gen9_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 04, 2021 at 10:37:28AM -0800, Chiou, Cooper wrote:
> > <3> [198.221812] [drm:wa_verify [i915]] *ERROR* engine workaround lost
> > on application! (reg[b004]=0x0, relevant bits were 0x0 vs expected 0x80) <3>
> > [198.222751] [drm:wa_verify [i915]] *ERROR* engine workaround lost on
> > application! (reg[b118]=0x0, relevant bits were 0x0 vs expected 0x200000)
> > <3> [198.223076] [drm:wa_verify [i915]] *ERROR* engine workaround lost
> > on application! (reg[b11c]=0x0, relevant bits were 0x0 vs expected 0x4)
> >
> > ?
> >
> > CI does not think they are old warnings and registers are the MCR affected
> > range. So more digging would be needed to be sure. You are saying those
> > happen in our CI without the patch?
> 
> Hi Tvrtko,
> This patch only programmed 0xfdc register in reg[fdc]=0x12000000, no touch
> reg[b004]=0x0 & reg[b118]=0x0 & reg[b11c]=0x0, so I don't think this error
> is caused by this change.

0xFDC is the multicast steering register --- it controls how accesses to
other multicast registers operate.  According to bspec page 66673, range
0xB000-0xB0FF is a multicast range that uses slice steering and
0xB100-0xB3FF is a multicast range that uses L3BANK steering.  So the
regressions here are likely due to your patch introducing invalid
steering (i.e., making register accesses target fused-off or
non-existent instances of those registers).

> This error might be due to wa_write_masked_or()
> 
> Meanwhile, as you can see this 2 kbl devices has different CI result.
> 1. fi-kbl-7500u - no any error log -
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19752/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html
> 
> 2. fi-kbl-7567u- has register read/write error log:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19752/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0.html

Multi-cast fusing depends on the fusing of the specific part you're
running on.  When you see these kind of failures on one KBL and not on
another, it's an indiction that you probably need to take a look at the
steering logic being used (i.e., the programming of 0xFDC) for mistakes.
Incorrect steering logic can result in things working fine on platforms
with certain fusing configs, but still cause major regressions on
platforms with different fusing.


Matt

> 
> Cooper
> >
> > Then with regards to the reported perf drop - something to check would be if
> > the CML system you tested on has the same slice/subslice config as the one
> > from which the original report originated. Might be hard if the test farm has
> > been re-configured. But essentially running the benchmark on a few Gen9
> > machine with fused ss would be needed I think.
> >
> > And finally I couldn't find the WA entry in bspec, but maybe I just don't know
> > where to look. Someone better versed to finding WA. Maybe Matt you would
> > have time for a quick check if
> > WaProgramMgsrForCorrectSliceSpecificMmioReads is documented as
> > applicable to Gen9?
> >
> > Regards,
> >
> > Tvrtko

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
