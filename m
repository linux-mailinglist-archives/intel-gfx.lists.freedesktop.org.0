Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DB91508B4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 15:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0D26EC0E;
	Mon,  3 Feb 2020 14:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F93A6EC0E
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 14:46:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 06:46:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="263441193"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2020 06:46:33 -0800
Date: Mon, 3 Feb 2020 16:46:32 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200203132317.GZ13686@intel.com>
Message-ID: <alpine.DEB.2.21.2002031636000.2957@eliteleevi.tm.intel.com>
References: <20200201094641.3572295-1-chris@chris-wilson.co.uk>
 <20200203132317.GZ13686@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-2079791448-1580741194=:2957"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: Skip the cdclk modeset if
 no pipes attached
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-2079791448-1580741194=:2957
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hey,

On Mon, 3 Feb 2020, Ville Syrjälä wrote:

> >  	/* need to hold at least one crtc lock for the global state */
> > -	crtc = intel_get_crtc_for_pipe(dev_priv, PIPE_A);
> 
> Was thinking a simple 'return 0' would do the trick, but maybe we
> don't want to call this at all. OTOH not sure why we would even
> register the audio component if there are no pipes. Does the audio
> driver get confused if we don't do that?

that's ok as well, audio driver will return fail for the probe, but in 
this case I guess this is ok (and even expected).

Br, Kai

---318106570-2079791448-1580741194=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-2079791448-1580741194=:2957--
