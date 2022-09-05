Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 760095AD88E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 19:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB5410E472;
	Mon,  5 Sep 2022 17:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4096710E470
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 17:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662399903; x=1693935903;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jjxT245GBGLeprBEGGJz1lzVLrTcYsg5rQ7Hc+SUXhU=;
 b=J3rET/1YgCjytuAuVSy7iunqGDgSswwMInk8erqhzsTLsDORdxt0zzO/
 JE8noXnCsdI8Srf1DpJEWJPc7f0JVBs4onItZvZGUW2NA4L7yzsO5RCT/
 nbfcVN64un8SC6iLjfOANzx3ze4sotC3KShYN3I+rDUE+S8YKin8nVnmh
 /QI20jPJBdTWbonDhuNmEagQTEQkSVpuOr+FhWIAaVwy32o/tUZcaVWZ3
 CPLtCsjlZ53N4YiSdcUJ4POzzD1qDw1AXmv9lob+PnAAJDqBwhiy3tw1v
 XwvZpKH7TS6p0+51ng+PuVicwIWdoFjPgYy3m5bv4GIgcXrbF6qczscI4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="382729578"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="382729578"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 10:45:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="643874982"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 05 Sep 2022 10:44:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 05 Sep 2022 20:44:59 +0300
Date: Mon, 5 Sep 2022 20:44:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YxY1mznljBVkDHCw@intel.com>
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
 <YxXh+gGqGGahJc08@intel.com>
 <f9337b9b-4b06-cee8-4550-db7513b1a953@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f9337b9b-4b06-cee8-4550-db7513b1a953@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not reset PLANE_SURF on plane
 disable on older gens
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 05, 2022 at 07:02:40PM +0200, Andrzej Hajda wrote:
> 
> 
> On 05.09.2022 13:48, Ville Syrjälä wrote:
> > On Mon, Sep 05, 2022 at 10:05:00AM +0200, Andrzej Hajda wrote:
> >> In case of ICL and older generations disabling plane and/or disabling
> >> async update is always performed on vblank,
> > It should only be broken on bdw-glk (see. need_async_flip_disable_wa).
> 
> On CFL it is reported every drmtip run:
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?testfilter=tiled-max-hw
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html#dmesg-warnings402
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html#dmesg-warnings402
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1208/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> ...
> On APL it is less frequent, probably due to other bugs preventing run of 
> this test, last seen at:
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1190/fi-apl-guc/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> Similar for SKL:
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1181/fi-skl-guc/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
> I am not sure if I correctly read the docs but [1] says that 9th bit of 
> PLANE_CFG (Async Address Update Enable) is "not double buffered and the 
> changes will apply immediately" only for ICL, JSL, LKF1.

It got broken in bdw and fixed again in icl.

> So the change is not necessary in case of icl_plane_disable_arm.
> 
> [1]: https://gfxspecs.intel.com/Predator/Home/Index/7656
> >
> >> but if async update is enabled
> >> PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
> >> when plane is still enabled can cause DMAR/PIPE errors.
> >> On the other side PLANE_SURF is used to arm plane registers - we need to
> >> write to it to trigger update on VBLANK, writting current value should
> >> be safe - the buffer address is valid till vblank.
> > I think you're effectively saying that somehow the async
> > flip disable w/a is not kicking in sometimes.
> 
> I was not aware of existence of this w/a and I am little lost in 
> figuring out how this w/a can prevent zeroing PLANE_SURF too early.

When it works as designed it should:
1. turn off the async flip bit
2. wait for vblank so that gets latched
3. do the sync plane update/disable normally

-- 
Ville Syrjälä
Intel
