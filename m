Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 896632CAE66
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 22:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E5F6E928;
	Tue,  1 Dec 2020 21:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017B86E928
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 21:31:18 +0000 (UTC)
IronPort-SDR: eHyeBFx2jzOnsc1AUcsQr0t1FA9k881bUoH7Avk+Jw+ZlTEvAY725rumvgARxHRLoatLPuj5z/
 TKw77BniHJMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173069958"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="173069958"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 13:31:16 -0800
IronPort-SDR: LdOcyL+QRHfWFLVX3N17c3ZUqlUEUs5GwiInojCZZoCgfgCvzL70d67eJR5nDf9vzY5lzCGAIm
 Hx2bYyQFYP/Q==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="335274488"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 13:31:14 -0800
Date: Tue, 1 Dec 2020 23:31:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201201213109.GA2934188@ideak-desk.fi.intel.com>
References: <20201123182631.1740781-1-imre.deak@intel.com>
 <20201123182631.1740781-2-imre.deak@intel.com>
 <160682607520.4024.5213539229190522123@build.alporthouse.com>
 <20201201205021.GD2849269@ideak-desk.fi.intel.com>
 <160685704629.19969.3005909283019006262@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160685704629.19969.3005909283019006262@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add Clear Color support
 for TGL Render Decompression
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
Reply-To: imre.deak@intel.com
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Rafael Antognolli <rafael.antognolli@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Ville Syrjala <ville.syrjala@intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 01, 2020 at 09:10:46PM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2020-12-01 20:50:21)
> > On Tue, Dec 01, 2020 at 12:34:35PM +0000, Chris Wilson wrote:
> > > There's also the matter of coherency. Is the object coherent for reads
> > > from the CPU? -- in most cases it will not be, but you should check
> > > obj->cache_coherency to see if the read requires a preceding
> > > cache_clflush_range() / drm_clflush_virt_range().
> > 
> > Ok, at this point for the TGL-only modifier, we could then just
> > warn_on(!bo_cache_coherent_for_read) due to HAS_LLC.
> 
> Stupid question, is the same path required for dg1?
> 
> That makes everything more difficult as the struct pages are gone.

Yes, same path. So we do need a different way to map.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
