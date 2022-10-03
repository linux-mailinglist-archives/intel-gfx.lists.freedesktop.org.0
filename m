Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479595F2E51
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 11:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F078810E2A1;
	Mon,  3 Oct 2022 09:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960D610E2A1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 09:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664790204; x=1696326204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nmA9xKXmRlTA3WOVj0MfonzI25WJjfjIiWDCWK7qRFg=;
 b=e4PF0Wp8Y0zXtgUT/8V7JF6qtx9dEESd5vgYURBzVJeYCSc2SMKpFl3S
 YVA6qfIfrEjE8kaiNFPEjwl5JoLIz7GwJi+7r4lgsqkmGH9cbQGiwet8j
 U6TyNrRg2kPW0OivLi38Hk3Xb5vurL04NmYpV92GTvun1LUov46pfHuWq
 eYcGXwD2PG6z1Y0Zn3ThwtnCibh8FbvU93W/7NAW5+2vp+N9rcqIIOmu/
 vinmkVY9aqcXDi+kIC+fX9jbUe70s4JbBFd7vH+H4S1gRlRCgb+gZkgw0
 0D5m4ClC6tO6uHLCKiUshY/vuXgmgZva2J5g9XUDoBNgPyitwjv+fP6zN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="364435371"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="364435371"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 02:43:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="712526234"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="712526234"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 03 Oct 2022 02:43:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 12:43:20 +0300
Date: Mon, 3 Oct 2022 12:43:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <YzquuCtZtz1XX48Q@intel.com>
References: <20220823222116.3696068-1-chaitanya.kumar.borah@intel.com>
 <87pmgpiw2f.fsf@intel.com>
 <alpine.DEB.2.22.394.2208241856550.3989@eliteleevi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.22.394.2208241856550.3989@eliteleevi>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: compute config for audio
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
Cc: kai.vehmanen@intel.com, Borah@freedesktop.org,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 24, 2022 at 06:57:04PM +0300, Kai Vehmanen wrote:
> Hi,
> 
> On Wed, 24 Aug 2022, Jani Nikula wrote:
> 
> > On Wed, 24 Aug 2022, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> > > In certain scenarios, we might have to filter out some audio
> > > configuration depending on HW limitation. For example, in
> > > GLK DP port more than 2 channels are not supported for audio.
> [...]
> > > +			for (i = 0; i < drm_eld_sad_count(temp_buf); i++, sad += 3) {
> > > +				if (!(intel_encoder->supported_sads & (1 << i)))
> > > +					memset(&sad[0], 0, 3);
> > 
> > Here's the main question I have about the change, really. The ELD
> > (literally EDID-like-data) and SAD are supposed to describe the *sink*
> > capabilities. Why are we filtering the data here, telling the audio
> > controller driver this is what the *sink* supports, when the limitation
> > comes from the *source*?
> > 
> > I could just be clueless about how audio works, but semantically this
> > feels the same as modifying the EDID based on what the *source*
> > supports.
> 
> I provided early input to this patchset and I think this is a pragmatic 
> approach to take. What the audio controller really wants is intersection 
> of capabilities supported both by source and the sink. E.g. no need to 
> advertise to the audio user-space about an audio format xyz, if the full 
> pipeline, including source and sink, cannot support it.

Yeah, I think filtering the SADs would probably be the right thing
to do, eg. depending on the available bandwidth given the current
display timings/etc.

However what this patch implements is some fairy tale constraint
of (GLK && DP && channels>2). I'm fairly sure no such limitation
exists in the hardware.

-- 
Ville Syrjälä
Intel
