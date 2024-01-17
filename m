Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FF3830503
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 13:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139D710E117;
	Wed, 17 Jan 2024 12:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF1F10E117
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 12:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705493629; x=1737029629;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DHVrKi9yYtNb2LWBKrd6P4Fx+Slc/BZcImPsN1lfOn8=;
 b=GQLKqUslu3SXZxYnF3R9e+NwP3Pb2ZVlQ507YSfjB/gZRp+7golfB956
 UVRcxLaESPR3QvU8SeHLiGtheCrCh/ipqt3DKe1p3A1/gBgp9vQ0D1Pzy
 Vn2IXFVzBvzXJKp70KAgkmK2VjO4KX73MQxnJ6OG2rgvWSEtf0lAOxkKw
 BXTVMSOsCS+CwMFKAEM1qWENZmvzvVucSbf10PHRUb64hTs898kd/238j
 UyBKP7jlalrOscfKvVlGMdeUPKJm659FPboLIVYHI/tgmGo5hhxMm9gve
 vZ/kugUm1OC+FJ/o+d0oRkBHphcdGatYpSW0XHxmDW4eXIn5wMKlMUI32 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="6857513"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="6857513"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 04:13:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="777434260"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="777434260"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Jan 2024 04:13:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Jan 2024 14:13:44 +0200
Date: Wed, 17 Jan 2024 14:13:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH 0/9] drm/i915: Cursor vblank evasion
Message-ID: <ZafEePMCGQk39Npd@intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <CY5PR11MB6344AB8C492AEEA3E2700F53F4722@CY5PR11MB6344.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY5PR11MB6344AB8C492AEEA3E2700F53F4722@CY5PR11MB6344.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 17, 2024 at 11:30:10AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, December 13, 2023 3:55 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 0/9] drm/i915: Cursor vblank evasion
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > MTL seems very good at racing the cursor mailbox updates against the vblank,
> > causing things to not latch for long enough to cause GTT faults. Attempt to hook
> > up vblank evasions into the legacy cursor path to avoid this.
> > 
> > Also revert a dangerous wm/ddb change related to cursors.
> 
> I have already RB'ed the changes in the series but somehow patchwork had issues and
> not reflecting the same.
> 
> FWIW, this series is
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> Please merge once the CI results show green, seems one test
> igt@kms_cursor_legacy@torture-move@pipe-a throwing some warnings.

Seems we're still seeing some timeouts from the vblank evasion,
indicating the schedule_timeout(1ms) took approximately some
integer multiple of the frame time :(

To confirm what's happening I might need to pull the full
vblank evasion debugs to into the cursor path as well...

-- 
Ville Syrjälä
Intel
