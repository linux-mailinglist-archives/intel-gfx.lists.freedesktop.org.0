Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBD612D14F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 15:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A47A89D87;
	Mon, 30 Dec 2019 14:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1D689D87
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 14:58:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 06:58:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="215804993"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga008.fm.intel.com with ESMTP; 30 Dec 2019 06:58:48 -0800
Date: Mon, 30 Dec 2019 16:58:48 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: =?ISO-8859-15?Q?Bla=B8_Hrastnik?= <blaz@mxxn.io>
In-Reply-To: <27deab96-4008-44bc-82ea-edc16b837b31@www.fastmail.com>
Message-ID: <alpine.DEB.2.21.1912301624240.16459@zeliteleevi>
References: <27deab96-4008-44bc-82ea-edc16b837b31@www.fastmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1503929292-1577716090=:16459"
Content-ID: <alpine.DEB.2.21.1912301628300.16459@zeliteleevi>
Subject: Re: [Intel-gfx] [bug] i915 flickering display after some of the
 5.5rc3 patches
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

--8323329-1503929292-1577716090=:16459
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.21.1912301628301.16459@zeliteleevi>

Hi Bla¸,

On Fri, 27 Dec 2019, Bla¸ Hrastnik wrote:

> Hi! I'm using a Surface Laptop 3 (Intel version, i7-1065G7) which is 
> running the i915 driver. I have a screen flicker issue in 5.5rc that I 
[...]
> It works on commit "x86/intel: Disable HPET on Intel Ice Lake 
> platforms". But it doesn't work on "drm/i915: extend audio CDCLK>=2*BCLK 
> constraint to more platforms"
[...]
> - https://patchwork.freedesktop.org/patch/334111/

thanks for the report. The flicker seems to be a side-effect of #334111,
"drm/i915: extend audio CDCLK>=2*BCLK constraint to more 
platforms"

One of the platforms the constraint was extended to, was your i7-1065G7, 
so there's a clear link.

Fixing this is a bit more complicated. To give some context, my patches 
relate to HDMI/DP audio support, and specifically to fix issues in audio 
driver probe. When audio driver is probed (or audio device opened, as 
happens when you start a desktop session), audio driver will ask for 
display audio codec to be powered up. With my patch, this may lead to 
bumping up the CDCLK clock, to ensure error-free communication with audio. 
Same sequence happens in reverse when audio communication stops and audio 
driver releases resources from i915. Unfortunately the changes 
to CDCLK clock can lead to modeset changes and visible flicker.

We've discussed the options with Ville (cc'ed) a bit, but no clear
consensus yet. I've filed a ticket for this for easier tracking:
https://gitlab.freedesktop.org/drm/intel/issues/913

Reverting #334111 will remove the flicker, but you may hit issue in audio 
driver probe (original bug here:
https://github.com/thesofproject/linux/issues/1184 ).

Br, Kai
--8323329-1503929292-1577716090=:16459
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--8323329-1503929292-1577716090=:16459--
