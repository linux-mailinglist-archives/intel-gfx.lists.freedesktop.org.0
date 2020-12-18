Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 589EB2DE531
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 15:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A6B6E1B8;
	Fri, 18 Dec 2020 14:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBE3A6E1B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 14:56:18 +0000 (UTC)
IronPort-SDR: 00Zo0ieAV5SBzDXxDTWEpVE/RCOYsgVmeEJpwU6Lul0/9Rq60RZG+ZHZ+7aHapewbu4OZib2b/
 E30wgzjr0hrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="239536610"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="239536610"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 06:56:17 -0800
IronPort-SDR: oeG2FRG+ZjWthvVLU5Eb5QfK7VYutKxJAIfDL2IaR7wRnIbiczbn2A/AxCFJCHnrS4moIJjFx0
 bpTAqewPa5qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="414043293"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 18 Dec 2020 06:56:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Dec 2020 16:56:15 +0200
Date: Fri, 18 Dec 2020 16:56:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9zDD1WSg7X9NSF1@intel.com>
References: <20201218060420.3203-1-airlied@gmail.com>
 <20201218060420.3203-7-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218060420.3203-7-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915: refactor some crtc code out
 of intel display. (v2)
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

On Fri, Dec 18, 2020 at 04:04:13PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> There may be more crtc code that can be pulled out, but this
> is a good start.
> =

> v2: move plane before this.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> [Jani: cleaned up intel_crtc.h a bit.]
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

lgtm
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
