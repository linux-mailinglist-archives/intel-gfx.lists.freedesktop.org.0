Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAD814A8C1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 18:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4176C6E2E5;
	Mon, 27 Jan 2020 17:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F216E2E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 17:14:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 09:01:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="401384018"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga005.jf.intel.com with ESMTP; 27 Jan 2020 09:01:24 -0800
Date: Mon, 27 Jan 2020 19:01:23 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200127132755.GD13686@intel.com>
Message-ID: <alpine.DEB.2.21.2001271847290.2957@eliteleevi.tm.intel.com>
References: <20200127113909.11263-1-kai.vehmanen@linux.intel.com>
 <20200127132755.GD13686@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1889353587-1580144485=:2957"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing HDMI audio pixel
 clocks for gen12
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

---318106570-1889353587-1580144485=:2957
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hi,

On Mon, 27 Jan 2020, Ville Syrjälä wrote:

> On Mon, Jan 27, 2020 at 01:39:09PM +0200, Kai Vehmanen wrote:
> > Gen12 hardware supports HDMI audio pixel clocks of 296.7/297Mhz
> > and 593.4/594Mhz. Add the missing rates and add logic to ignore
> > them if running on older hardware.
[...]
> >  	for (i = 0; i < ARRAY_SIZE(hdmi_audio_clock); i++) {
> > +		if (INTEL_GEN(dev_priv) < 12 &&
> > +		    hdmi_audio_clock[i].clock > 148500) {
> 
> Might be cleaner to do the check after the loop.

hmm, you are right. I'll wait for the CI results to come in and if nothing 
else found, I'll post V2 with the check moved outside the loop.

Thanks for the review Ville!

Br, Kai

---318106570-1889353587-1580144485=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-1889353587-1580144485=:2957--
