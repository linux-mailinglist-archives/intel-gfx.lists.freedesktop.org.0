Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7127F415C24
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 12:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D4A89EEB;
	Thu, 23 Sep 2021 10:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966A289EEB
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 10:43:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="210892552"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="210892552"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 03:43:22 -0700
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="550849690"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 03:43:20 -0700
Date: Thu, 23 Sep 2021 13:44:11 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 maarten.lankhorst@linux.intel.com, matthew.d.roper@intel.com
Message-ID: <20210923104411.GA5676@intel.com>
References: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
 <87tuibbn7e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tuibbn7e.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tile F plane format support
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

On Thu, Sep 23, 2021 at 01:28:21PM +0300, Jani Nikula wrote:
> On Thu, 23 Sep 2021, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > @@ -1941,6 +1951,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >  			return false;
> >  		break;
> > +	case I915_FORMAT_MOD_F_TILED:
> > +		if (!HAS_FTILE(dev_priv))
> > +			return false;
> > +		fallthrough;
> >  	default:
> >  		return false;
> >  	}
> 
> Seems odd.

I agree, however this wasn't even added by me.
This patch got changed in ridiculous ways since last time,
I ever touched it. 
Currently we have it internally exactly same way(wondering why)
Unfortunately didn't pay attention to this, was assuming
that if its r-bed and pushed - can trust it.

Stan


> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
