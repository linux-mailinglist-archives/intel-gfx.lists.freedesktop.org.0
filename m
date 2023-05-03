Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4486F56EE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 13:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBC0010E121;
	Wed,  3 May 2023 11:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECC3010E121;
 Wed,  3 May 2023 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683112028; x=1714648028;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=isSEaTcczQehorA2XyFTb7Qg8MalrslW5ar7lNBTlZw=;
 b=ktNfqAdZnZHrYLTAtxO1sP7jPLrk63jW8C8+lBOKHisXXVZ1K3ruyZWt
 +juNiY5GMKeWA9Wh5Bsv9ysSpi2u4MjKvkenWdURC0+7SdSRevKmm9/NI
 yTNtFqLystIHxGIViqzZvMB97VUh40otN83h/qQLU+rPCF/7KTMsAkOWg
 6ZL7Tr7K5RlqLgqreFEV6z09V8v0Eo35Y4PfDLnoQDWxaHKpAQDzF4SJw
 B2YOHghTcHHb7QP3rXrMj/A6f7x2lOUV37TW2AYcx+wlIoHVJORHt2lqq
 wEf1cCBFMoAD/rpIvqJZ5WKW+On8CjJjzi+1lk/UB07vnx0G35LJ4faKC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="411780903"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="411780903"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 04:07:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="699326439"
X-IronPort-AV: E=Sophos;i="5.99,247,1677571200"; d="scan'208";a="699326439"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 03 May 2023 04:07:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 May 2023 14:07:04 +0300
Date: Wed, 3 May 2023 14:07:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZFJAWCGuWcLDQOfS@intel.com>
References: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
 <20230502143906.2401-3-ville.syrjala@linux.intel.com>
 <ZFIPCm+k9TCyfMfS@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFIPCm+k9TCyfMfS@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/mst: Remove broken MST DSC
 support
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 03, 2023 at 10:36:42AM +0300, Lisovskiy, Stanislav wrote:
> On Tue, May 02, 2023 at 05:38:57PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > 
> > The MST DSC code has a myriad of issues:
> > - Platform checks are wrong (MST+DSC is TGL+ only IIRC)
> > - Return values of .mode_valid_ctx() are wrong
> > - .mode_valid_ctx() assumes bigjoiner might be used, but ther rest
> >   of the code doesn't agree
> > - compressed bpp calculations don't make sense
> > - FEC handling needs to consider the entire link as opposed to just
> >   the single stream. Currently FEC would only get enabled if the
> >   first enabled stream is compressed. Also I'm not seeing anything
> >   that would account for the FEC overhead in any bandwidth calculations
> > - PPS SDP is only handled for the first stream via the dig_port
> >   hooks, other streams will not be transmittitng any PPS SDPs
> > - PPS SDP readout is missing (also missing for SST!)
> > - VDSC readout is missing (also missing for SST!)
> > 
> > The FEC issues is really the big one since we have no way currently
> > to apply such link wide configuration constraints. Changing that is
> > going to require a much bigger rework of the higher level modeset
> > .compute_config() logic. We will also need such a rework to properly
> > distribute the available bandwidth across all the streams on the
> > same link (which is a must to eg. enable deep color).
> 
> Also all the things you mentioned are subject for discussion, for example
> I see that FEC overhead is actually accounted for bpp calculation for instance.

AFAICS FEC is only accounted for in the data M/N calculations,
assuming that particular stream happened to be compressed. I'm
not sure if that actually matters since at least the link M/N
are not even used by the MST sink. I suppose the data M/N might
still be used for something though. For any uncompressed stream
on the same link the data M/N values will be calculated
incorrectly without FEC.

And as mentioned, the FEC bandwidth overhead doesn't seem to
be accounted anywhere so no guarantee that we won't try to
oversubcribe the link.

And FEC will only be enabled if the first stream to be enabled
is compressed, otherwise we will enable the link without FEC
and still try to cram other compressed streams through it
(albeit without the PPS SDP so who knows what will happen)
and that is illegal.

> We usually improve things by gradually fixing, because if we act same way towards
> all wrong code in the driver, we could end up removing the whole i915.

We ususally don't merge code that has this many obvious and/or
fundemental issues.

Now, most of the issues I listed above are probably fixable
in a way that could be backported to stable kernels, but
unfortunately the FEC issue is not one of those. That one
will likely need massive amounts of work all over the driver
modeset code, making a backport impossible.

> So from my side I would nack it, at least until you have a code which handles
> all of this better - I have no doubt you probably have some ideas in your mind, so lets be constructive at least and propose something better first.
> This code doesn't cause any regressions, but still provides "some" support to DP MST DSC to say the least and even if that would be removed, if some of those users 
> refer to me, I would probably then just point to this mail discussion everytime.

It seems very likely that it will cause regressions at some point,
it just needs a specific multi-display MST setup. The resulting
problems will be very confusing to debug since the order in which
you enable/disable the outputs will have an impact on what actually
goes wrong on account of the FEC and PPS SDP issues. The longer
we wait disabling this the harder it will be to deal with those
regressions since we the probably can't revert anymore (a straight
revert was already not possible) but also can't fix it in a way
that can be backported (due to the FEC issues in particular).

-- 
Ville Syrj�l�
Intel
