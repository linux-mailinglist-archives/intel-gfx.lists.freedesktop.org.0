Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78642424393
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 18:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C9E6EDBB;
	Wed,  6 Oct 2021 16:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF356EDBB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 16:59:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="312254000"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="312254000"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 09:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="522299052"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 06 Oct 2021 09:56:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 19:56:05 +0300
Date: Wed, 6 Oct 2021 19:56:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 jani.nikula@intel.com
Message-ID: <YV3VJWPAhi553eXs@intel.com>
References: <20210913164004.3999218-1-kai.vehmanen@linux.intel.com>
 <YV2pbdFxdGfZkQ3B@intel.com>
 <alpine.DEB.2.22.394.2110061844070.3554566@eliteleevi.tm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.22.394.2110061844070.3554566@eliteleevi.tm.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: program audio CDCLK-TS
 for keepalives
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

On Wed, Oct 06, 2021 at 06:45:31PM +0300, Kai Vehmanen wrote:
> Hi,
> 
> On Wed, 6 Oct 2021, Ville Syrjälä wrote:
> 
> > On Mon, Sep 13, 2021 at 07:40:04PM +0300, Kai Vehmanen wrote:
> > > XE_LPD display adds support for display audio codec keepalive feature.
> > > This feature works also when display codec is in D3 state and the audio
> > > link is off (BCLK off). To enable this functionality, display driver
> > > must update the AUD_TS_CDCLK_M/N registers whenever CDCLK is changed.
> > > Actual timestamps are generated only when the audio codec driver
> > > specifically enables the KeepAlive (KAE) feature.
> [...]
> > > +	if (refclk == 24000)
> > > +		aud_ts->m = 12;
> > 
> > Wasn't there a single exception to this rule? Ie. should this be 
> > if (refclk == 24000 && cdclk != something) ?
> 
> ack. I had a discussion with hw folks on this and concluded we can go
> with the simple formula.

OK. Seems fine by me.

Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
