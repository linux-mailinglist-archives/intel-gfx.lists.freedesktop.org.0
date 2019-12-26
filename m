Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6589212ADED
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 19:36:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF0589CB3;
	Thu, 26 Dec 2019 18:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46BBA89CB3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 18:36:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 10:36:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,360,1571727600"; d="scan'208";a="220317686"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with ESMTP; 26 Dec 2019 10:36:45 -0800
Date: Thu, 26 Dec 2019 10:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20191226183645.GF2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
 <ee1164c0-8402-c00d-ecf6-0deb2be7bfb9@intel.com>
 <20191226173917.GE2877816@mdroper-desk1.amr.corp.intel.com>
 <51aa12c9-ed90-7eb0-3d4b-1380f25fd2bb@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51aa12c9-ed90-7eb0-3d4b-1380f25fd2bb@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 0/3] Workaround updates
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 26, 2019 at 08:09:04PM +0200, Lionel Landwerlin wrote:
> On 26/12/2019 19:39, Matt Roper wrote:
> > On Wed, Dec 25, 2019 at 09:31:29PM +0200, Lionel Landwerlin wrote:
> > > On 24/12/2019 03:20, Matt Roper wrote:
> > > > A quick drive-by update for some workarounds I noticed that were
> > > > added/extended to additional platforms.
> > > > 
> > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > Cc: Matt Atwood <matthew.s.atwood@intel.com>
> > > > Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > > 
> > > > Matt Roper (3):
> > > >     drm/i915: Extend WaDisableDARBFClkGating to icl,ehl,tgl
> > > >     drm/i915: Add Wa_1408615072 and Wa_1407596294 to icl,ehl
> > > >     drm/i915/tgl: Extend Wa_1408615072 to tgl
> > > > 
> > > >    drivers/gpu/drm/i915/display/intel_display.c |  7 +++++--
> > > >    drivers/gpu/drm/i915/i915_reg.h              |  7 ++++++-
> > > >    drivers/gpu/drm/i915/intel_pm.c              | 12 ++++++++++++
> > > >    3 files changed, 23 insertions(+), 3 deletions(-)
> > > > 
> > > Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > 
> > > 
> > > What do you think about Wa_1407352427 for ICL?
> > > 
> > > Sounds like it could fix some 3D hangs too.
> > Yeah, looks like we need to add that one for ICL/EHL.  I'll send a
> > separate patch for that one since this series is ready to merge once CI
> > results come back.  Thanks for pointing it out!
> > 
> > 
> > Matt
> 
> 
> Thanks for taking that on.
> 
> 
> One question though about those workarounds, we probably need to have them
> applied to older kernels with ICL support right?
> 
> Should they be Cc stable?

Yeah, true.  I'll add a Cc: stable tag when I apply them.


Matt

> 
> 
> Cheers,
> 
> 
> -Lionel
> 
> 
> > 
> > > 
> > > -Lionel
> > > 
> 

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
