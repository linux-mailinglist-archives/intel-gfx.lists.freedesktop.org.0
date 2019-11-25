Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BE1108E4A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 13:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E975589F41;
	Mon, 25 Nov 2019 12:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C2589F41
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 12:54:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 04:54:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="260392954"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Nov 2019 04:54:11 -0800
Date: Mon, 25 Nov 2019 14:54:11 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20191122140151.GM1208@intel.com>
Message-ID: <alpine.DEB.2.21.1911251453400.16459@zeliteleevi>
References: <20191122134603.11496-1-kai.vehmanen@linux.intel.com>
 <20191122140151.GM1208@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2016423879-1574686452=:16459"
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: fix DP audio for PORT_A on
 gen12+
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2016423879-1574686452=:16459
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hi,

On Fri, 22 Nov 2019, Ville Syrjälä wrote:

> > -	if (IS_G4X(dev_priv) || port == PORT_A)
> > +	if (IS_G4X(dev_priv) || (INTEL_GEN(dev_priv) < 12 && port == PORT_A))
> 
> Getting a bit messy.
> 
> Hoovering that into something like
> static bool intel_dp_port_has_audio(struct intel_encoder *encoder);
> or
> static bool intel_dp_port_has_audio(struct drm_i915_private *dev_priv, enum port port);
> might be nice.

thanks for the review! I went for the latter option in the v2 I just
sent out.

Br, Kai

--8323329-2016423879-1574686452=:16459
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--8323329-2016423879-1574686452=:16459--
