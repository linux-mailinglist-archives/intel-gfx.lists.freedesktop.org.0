Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CADC4F7EA1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA8210E9E6;
	Thu,  7 Apr 2022 12:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C02410E9C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649333103; x=1680869103;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=t3tjjaixhYqeYX6mR/NlXj8c+Pkpt4mXQOjGVck8Kgc=;
 b=lqLg8v5z6JhlxBAa5fs5FdLlIsGRbHjzfMKMFVdHsMbRarMxLi0r6YrO
 VjJH/WKpYLeX2TYWlEdgiZH1WyLFQsZsB+hRuMmqDNT5zxpdR4MRLFH4D
 TsZ9lQo76kIwUIgWlkyxsjCD1hHb89bqDS6JESMBKEbjBWoS6iHXD4pre
 gVMasfPd+3gGZBa5TnNWQZ03XfwmvBP+FNQGUMUenayNi3qCU2ySJ3hBb
 msFc7t3Havn43i7kmoh7qqm5dhttJA1QAl+1c00d7/AlC0d0AL2Zsvmeu
 L4KMAUqmdaN6MOhE+LRRMqJ3RnnPr7wRWSb6Y1akO3gmbFTHk9CBaQ1oA g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="261298409"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="261298409"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="697770680"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 07 Apr 2022 05:04:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Apr 2022 15:04:59 +0300
Date: Thu, 7 Apr 2022 15:04:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yk7Ta4TsnN1xLreF@intel.com>
References: <20220407084235.9526-1-stanislav.lisovskiy@intel.com>
 <Yk7GvHfxpwTuq1Wm@intel.com> <20220407112417.GA20534@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220407112417.GA20534@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix FIFO underruns caused by
 missing cumulative bpp W/A
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 07, 2022 at 02:24:17PM +0300, Lisovskiy, Stanislav wrote:
> On Thu, Apr 07, 2022 at 02:10:52PM +0300, Ville Syrjälä wrote:
> > On Thu, Apr 07, 2022 at 11:42:35AM +0300, Stanislav Lisovskiy wrote:
> > > We had some FIFO underruns appearing on platforms like ADL,
> > > which could be fixed though by increasing CDCLK, however we were
> > > lacking explanation for that - we were not calculating CDCLK,
> > > also based on cumulative bpp W/A formula, mentioned in BSpec 64631.
> > 
> > We already have that in intel_bw_crtc_min_cdclk().
> 
> It actually is not quite what BSpec is talking about it adds
> data_rate per plane, instead of bpp, I think it confuses 
> those 2 from BSpec:
> 
> "
> Plane required bandwidth MB/s = pixel rate MHz * source pixel format in bytes 
> * plane down scale amount * pipe down scale amount
> Display required memory bandwidth MB/s += Plane required bandwidth
> Pipe cumulative bytes per pixel += plane source pixel format in bytes
> "
> 
> then we have to different formulas used to estimate whats the CDCLK
> should be, one is "DBUF maximum data buffer bandwidth MB/s = CDCLK frequency MHz * 64 Bytes"
> 
> another is pipe CDCLK = cumulative bytes per pixel * (pixel rate MHz * 
> plane down scale amount * pipe down scale amount)) * 51.2)

That specific statement in the spec is kinda nonsense. Mixing
"plane up/down scale amount" (which is per plane) with this
"cumulative bytes per pixel" thing (which is sum of bytes per pixel
across all planes) doesn't make sense.

What we so is sum bytes_per_pixel*pixel_rate*plane_up/down_scale from
all planes, which I think is what the spec is trying to say as that
is the cumulative bw used up by all the planes.

-- 
Ville Syrjälä
Intel
