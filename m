Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40C41B1499
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 20:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689136E840;
	Mon, 20 Apr 2020 18:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1DD6E840
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 18:34:47 +0000 (UTC)
IronPort-SDR: DzjBNGG1aZ7tXt24sQmaeawYWBQvENbLk48k1r4bWKgK3C/hc4S0W3h93ltMOFG111ZZT6PxdB
 mvM/NzWdB8LA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 11:34:46 -0700
IronPort-SDR: waTZLtbQz9hzosy1vnHaauFTpf/TSQ+S0vZfel+Aw7PsPgTmejSVLc5nVs6tkJ6K9yYq0lYfEg
 MtFMcN+LAMvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="290188308"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 20 Apr 2020 11:34:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 21:34:41 +0300
Date: Mon, 20 Apr 2020 21:34:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200420183441.GB6112@intel.com>
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
 <20200417134720.16654-3-ville.syrjala@linux.intel.com>
 <158715309508.2062.2790073223349657193@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158715309508.2062.2790073223349657193@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Push TRANS_DDI_FUNC_CTL into
 the encoder->enable() hook
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 17, 2020 at 08:51:35PM +0100, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-04-17 14:47:19)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Push the TRANS_DDI_FUNC_CTL into the encoder enable hook. The disable
> > is already there, and as a followup will enable us to pass the encoder
> > all the way down.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> In intel_ddi_transcoder_func_reg_val_get() I found a list of ddi
> crtc types (HDMI, ANALOG, DP_MST, DP_SST). Now hdmi/dp =3D=3D ddi, and so=
 we
> are left with dp_mst and crt callbacks.
> =

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> =

> Is it possible to have more BUG_ON(!transcoder_is_ddi()) scatter around
> the entry points?

I guess we could assert something about either the output_types or the
encoder type, but not sure that would get us much. Bunch of that is
anyway the same for pre-DDI stuff.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
