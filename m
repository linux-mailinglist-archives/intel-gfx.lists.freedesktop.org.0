Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 378A76B0B64
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 15:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1102E10E0CA;
	Wed,  8 Mar 2023 14:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B2B10E0CA;
 Wed,  8 Mar 2023 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678286213; x=1709822213;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=INV4kkpzN84uk5AqvrBrlZEMnH3kTpcrsYKTBCKR2qA=;
 b=HIqm+LdmzFYzUC4/MDboAhK8+Rt+INhEqKvTpDTDIomU1ddxdz4G/qcE
 ZdlehhV4/+s7EvEEsvo1egRonceC8OFV5nJCk3l5COR3zw+EvBdRFXuxQ
 NwB6RRRDhTeKXeDe9xPvd+4diJv2zE7WOO/A7h8yaMMyjt9WZsWd8sr2o
 tOkmg+cBulGocRdH4/z+JXhxi0zYYlrc2UiQQVj+FrHoT7YQdEL12LrBv
 G30GUAa5SzolCZMMceryZJ9AdZcCckbAW0SgOsYrV963I43K4li2lGcAE
 qTHiXP2gHGggeML+DqMXc0PXLLJUq+HIWMpNtzzze6i/VAmTsSHLVKNGG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="337684013"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="337684013"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 06:36:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="676993038"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="676993038"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Mar 2023 06:36:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 16:36:48 +0200
Date: Wed, 8 Mar 2023 16:36:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZAidgBm8854cWKpD@intel.com>
References: <20230306141638.196359-1-maarten.lankhorst@linux.intel.com>
 <edae44735190c4d5fbbe8959f999ad7ca65f3677.camel@intel.com>
 <073f5ef3-523a-2997-c7e9-771cce8f4c24@linux.intel.com>
 <ZAZT6jJlsiTF1A5a@intel.com>
 <fc1c5bf4-8174-50e4-5109-cbf73aafe771@linux.intel.com>
 <ZAiPTaBhfhddI+DU@intel.com>
 <e917ebb7-3cf3-cec1-d247-edb25cb0b681@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e917ebb7-3cf3-cec1-d247-edb25cb0b681@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/xe/display: Do not use i915
 frontbuffer tracking implementation
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 03:29:45PM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> 
> On 2023-03-08 14:36, Ville Syrj�l� wrote:
> > On Wed, Mar 08, 2023 at 01:47:12PM +0100, Maarten Lankhorst wrote:
> >> On 2023-03-06 21:58, Ville Syrj�l� wrote:
> >>> On Mon, Mar 06, 2023 at 09:23:50PM +0100, Maarten Lankhorst wrote:
> >>>> Hey,
> >>>>
> >>>> On 2023-03-06 16:23, Souza, Jose wrote:
> >>>>> On Mon, 2023-03-06 at 15:16 +0100, Maarten Lankhorst wrote:
> >>>>>> As a fallback if we decide not to merge the frontbuffer tracking, allow
> >>>>>> i915 to keep its own implementation, and do the right thing in Xe.
> >>>>>>
> >>>>>> The frontbuffer tracking for Xe is still done per-fb, while i915 can
> >>>>>> keep doing the weird intel_frontbuffer + i915_active thing without
> >>>>>> blocking Xe.
> >>>>> Please also disable PSR and FBC with this or at least add a way for users to disable those features.
> >>>>> Without frontbuffer tracker those two features will break in some cases.
> >>>> FBC and PSR work completely as expected. I don't remove frontbuffer
> >>>> tracking; I only remove the GEM parts.
> >>>>
> >>>> Explicit invalidation using pageflip or CPU rendering + DirtyFB continue
> >>>> to work, as I validated on my laptop with FBC.
> >>> Neither of which are relevant to the removal of the gem hooks.
> >>>
> >>> Like I already said ~10 times in the last meeting, we need a proper
> >>> testcase. Here's a rough idea what it should do:
> >>>
> >>> prepare a batch with
> >>> 1. spinner
> >>> 2. something that clobbers the fb
> >>>
> >>> Then
> >>> 1. grab reference crc
> >>> 2. execbuffer
> >>> 3. dirtyfb
> >>> 4. wait long enough for fbc to recompress
> >>> 5. terminate spinner
> >>> 6. gem_sync
> >>> 7. grab crc and compare with reference
> >>>
> >>> No idea what the current status of PSR+CRC is, so not sure
> >>> whether we can actually test PSR or not.
> >> This test doesn't make sense. DirtyFB should simply not return before
> >> execbuffer finishes.
> > Of course it should. It's not a blocking ioctl, and can't
> > be because that will make X unusable.
> 
> Except it actually is.
> 
> DirtyFB blocks in its default implementation, and waits for the next vblank.
> 
> drm_atomic_helper_dirtyfb() blocks by default as it's a synchronous 
> plane update.
> 
> Considering every driver except i915 uses it, it works just fine. :)

No it doesn't. We tries to use it, but that was an utter failure.

-- 
Ville Syrj�l�
Intel
