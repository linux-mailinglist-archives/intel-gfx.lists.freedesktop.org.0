Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8E62C8B97
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 18:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00BA16E7D5;
	Mon, 30 Nov 2020 17:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD626E7DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 17:46:43 +0000 (UTC)
IronPort-SDR: 8atTVUAWyy3WyG59vfmSbXSK9YaEx2kFLi1q4nI+Ko1f4upHov21TrwlsXIW2EXlkGfNhFXVyz
 EgPtjpQfT0pQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="169180174"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="169180174"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 09:46:42 -0800
IronPort-SDR: dJjBHyFTsyACE/abR4ZU20XHzHqhEFoQVPy0/PUcc9uSrdStz80Pn2mvYTHaoaT1FRY2WWUuLt
 fsQezNpNiK2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="404807915"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 30 Nov 2020 09:46:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Nov 2020 19:46:39 +0200
Date: Mon, 30 Nov 2020 19:46:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201130174639.GU6112@intel.com>
References: <20201127145748.29491-1-chris@chris-wilson.co.uk>
 <20201128045229.kvxiqjin7k67zkod@ldmartin-desk1>
 <20201130141954.GS6112@intel.com>
 <20201130173104.xw5gzrs3t6rmpby6@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201130173104.xw5gzrs3t6rmpby6@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: re-order if/else ladder
 for hpd_irq_setup"
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 30, 2020 at 09:31:04AM -0800, Lucas De Marchi wrote:
> On Mon, Nov 30, 2020 at 04:19:54PM +0200, Ville Syrj=E4l=E4 wrote:
> >On Fri, Nov 27, 2020 at 08:52:29PM -0800, Lucas De Marchi wrote:
> >> On Fri, Nov 27, 2020 at 02:57:48PM +0000, Chris Wilson wrote:
> >> >We now use ilk_hpd_irq_setup for all GMCH platforms that do not have
> >> >hotplug. These are early gen3 and gen2 devices that now explode on bo=
ot
> >> >as they try to access non-existent registers.
> >>
> >> humn... true, my bad. But I don't think a revert is the right fix. It
> >> would be much better if we would not be setting up the hpd setup
> >> function at all for platforms that do not have hotplug. I think a
> >> separate early check for I915_HAS_HOTPLUG() would be deserved.
> >
> >I think it generally leads to much less convoluted logic when we keep
> >gmch vs. rest separate. So I'm confused as to what we're even trying
> >to achieve here?
> =

> 1) Stop trying to setup hotplug in a platform that doesn't have hotplug
> was the main focus. Later it would be better to move some of these
> hotplug to display/  as they are clearly display related and account for
> a great portion of i915_irq.c.
> =

> I left the I915_HAS_HOTPLUG() in the middle by
> mistake, it should had been an earlier call.
> =

> 2) semi-related is the move of GMCH to the middle and I guess this is
> what you're complaining here. I find it's cumbersome to have it
> separate as we go and extend these checks for newer platforms. Almost
> everywhere we settled on having last platform first in the if/else
> ladders - this makes it much more clear on how/where to add a new
> platform.

You never touch the gmch path for new platforms. What could be more
clear than that?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
