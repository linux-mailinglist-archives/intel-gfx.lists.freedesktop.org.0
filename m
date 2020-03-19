Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEB018BC26
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 17:14:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A634B6E180;
	Thu, 19 Mar 2020 16:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D8B26E180
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 16:14:24 +0000 (UTC)
IronPort-SDR: 4RQcdsSCOU2q+qnw1i8rmTlMSL3X9ZUHNTkGLlEj4WA7VRIsSN86tchutxPQWm05uO0r1stf2s
 bNX+cp/uCoMA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 09:14:23 -0700
IronPort-SDR: SSzhJLipZxH1W875KRNAg8N2XFSIaICqXP0WWCkKqoU8zRbr2WIbjJToAlISJtQJYZ7umNhpcN
 BKvFYSq3ZRtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="238967231"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 19 Mar 2020 09:14:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Mar 2020 18:14:20 +0200
Date: Thu, 19 Mar 2020 18:14:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
Message-ID: <20200319161420.GM13686@intel.com>
References: <20200319092034.695709-1-arkadiusz.hiler@intel.com>
 <20200319093003.zagegwlakj35en56@ahiler-desk1.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319093003.zagegwlakj35en56@ahiler-desk1.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Increase the DDI idle
 timeout to 500us
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

On Thu, Mar 19, 2020 at 11:30:03AM +0200, Arkadiusz Hiler wrote:
> On Thu, Mar 19, 2020 at 11:20:34AM +0200, Arkadiusz Hiler wrote:
> > Bspec says that we should timeout after 500us. Let's match this in the
> > code. It may help with few of the timeouts we see here and there.
> =

> Plese disregard. it's 500us when waiting on non-idle and only 8 (16
> for BXT) for back to idle.

Could probably convert to intel_de_wait_for...() regardless. 1ms vs. 16us
isn't going to kill us in modeset code. The exact bspec value can be
kept as a comment.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
