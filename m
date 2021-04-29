Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A160C36ED7F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 17:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5602F6EE5C;
	Thu, 29 Apr 2021 15:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726FF6EE5C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 15:37:45 +0000 (UTC)
IronPort-SDR: /1BZpCxzr68XHb7wTREYq25TudFM/lbjAW3ebpzRI91/qD8/DEHmT7fI2s/upJuPe5WDmb8ykB
 oPO9rgN+zgAQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="196592699"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="196592699"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 08:37:44 -0700
IronPort-SDR: kYljJPkZABznCQiJZg2loZbnwvw+++ojQ3wLn9VSpAWh6YBv8DSoV/c6mdJNrgwjJpMaS/+lmO
 FwG7Img59c8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="426048771"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 29 Apr 2021 08:37:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Apr 2021 18:37:41 +0300
Date: Thu, 29 Apr 2021 18:37:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YIrSxTrhAao9YPNc@intel.com>
References: <20210429023535.1653-1-ville.syrjala@linux.intel.com>
 <87r1it33yq.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1it33yq.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include intel_de_{read,
 write}_fw() in i915_reg_rw traces
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 29, 2021 at 11:11:25AM +0300, Jani Nikula wrote:
> On Thu, 29 Apr 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > We lost the i915_reg_rw tracepoint for a lot of display registers
> > when we switched from the heavyweight normal register accessors to
> > the lightweight _fw() variants.
> =

> Sorry, which change was that exactly?

commit dd584fc0711a ("drm/i915: Use I915_READ_FW for plane updates")
and probably a few others like it.

> =

> > Put the tracepoints back so that
> > the register traces might actually be useful. Hopefully these should
> > be close to free when the tracepoint is not enabled and thus not
> > slow down our vblank critical sections significantly.
> >
> > The biggest hurdle is untangling the include order. Fortunately just
> > pulling intel_de.h out from intel_display_types.h seems to have been
> > sufficient to make it build.
> =

> This is something I've been meaning to fix independently. Thanks.

Hmm. Maybe I should split this into two commits...

> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
