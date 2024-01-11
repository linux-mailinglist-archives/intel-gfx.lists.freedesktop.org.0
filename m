Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABB182AFAA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 14:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B108810E096;
	Thu, 11 Jan 2024 13:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC9D10E096
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 13:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704979689; x=1736515689;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Q8cC6dmTFVW4BNghzg/Vrys1WiztTVzpzsf/fETdmgg=;
 b=h+uf9Xz9hDMKH3aqgHXW/Zxg3D7JAlwkC0fSddqA3E76pINIvtcTQSye
 w5cNfdrSQ59pmcv5yFGBjVtd4lDpDM9StBYdl5G1eU04tWI+VkuSlcjWw
 xbVlNZdz2FAGD/ZVH1uFlUrXcaFvZfUDFAYurs4iiI10/UlrWNKILU4tO
 SPAhVutZWVhr3ik/gl1Hkyls/SDYd/1eZzhrd6562qm+HluyL+w0zEhzM
 AJhf+Cn/sVhRFJqrf+5KdmPhqyvOLSY6iIFMRdduDP0qO0Ky6T/+SF5N8
 5B4BQJXOXehhgZeton1zq3UFFqw8uVoE7YgKBLj3UtJkrIGa0BlWE+LIS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="402617611"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="402617611"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 05:27:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="775606474"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="775606474"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Jan 2024 05:27:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jan 2024 15:27:46 +0200
Date: Thu, 11 Jan 2024 15:27:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH 3/3] drm/i915: Pin error_capture to high end of mappable
Message-ID: <ZZ_s0n4Ag2bXSjI3@intel.com>
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
 <20231215110933.9188-4-ville.syrjala@linux.intel.com>
 <a139f6b5-026b-4a82-93c1-ea8fd595276c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a139f6b5-026b-4a82-93c1-ea8fd595276c@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 10, 2024 at 05:09:38PM +0100, Andrzej Hajda wrote:
> On 15.12.2023 12:09, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > If we fail to pin error_capture to the start of ggtt (which
> > is likely given the BIOS fb is usually there), we currently
> > fall back to pinning it at the next available low address.
> > This seems somewhat sub-optimal to me in case we later discard
> > the BIOS fb (fairly likely if there are multiple different sized
> > displays connected at boot). We are then then left with a
> > permanenly pinned object somewhere in the middle of the mappable
> > range of ggtt. It seems more sensible to pin the error capture
> > object to the end of mappable as a fallback, so even if we discard
> > the BIOS fb we are left with the mappable region mostly in one
> > piece (potentially allowing for more/larger objects to be pinned
> > there later).
> > 
> > Though I suppose we are chopping the ggtt address space as a
> > whole into two chunks in a slightly different way. Essentially
> > reducing the size of the second (larger) chunk a bit. So perhaps
> > pinning truly massive objects (which don't strictly need to
> > be mappable) could become a bit more difficult.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_ggtt.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index 21a7e3191c18..f62008962eb5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -876,7 +876,7 @@ static int init_ggtt(struct i915_ggtt *ggtt)
> >   						    ggtt->error_capture.size, 0,
> >   						    ggtt->error_capture.color,
> >   						    0, ggtt->mappable_end,
> > -						    DRM_MM_INSERT_LOW);
> > +						    DRM_MM_INSERT_HIGH);
> 
> In this case Chris raised concern that since error_capture must be 
> mappable we will end up with worse fragmentation in case of 
> DRM_MM_INSERT_HIGH.
> 
> Also see the comment above the change (my concern):
>   * We strongly prefer taking address 0x0 in order to protect
>   * other critical buffers against accidental overwrites,
>   * as writing to address 0 is a very common mistake.
> 
> Maybe the ultimate solution would be to relocate BIOS fb vma also if it 
> is at 0, I don't know.

That would fragment things even worse as we then end up with the BIOS fb
somewhere in the middle of mappable. Maybe if we move that explciitly to
the end of mappable it might work. Although I'm not sure that's always
possible either, so we still probably have to deal with the case where
the BIOS fb is at the start of mappable.

But yeah, I'm not entirely sold on this change yet. I think we might be
pinning other stuff low in the mappable as well (rings/status pages/contexts/etc.).
We should probably do a real analysis what we have pinned and where and 
then try to come up with a good strategy how to handle it all.

-- 
Ville Syrjälä
Intel
