Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 349EA302644
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6ED6E082;
	Mon, 25 Jan 2021 14:25:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E146E082
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:25:24 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D1002228A;
 Mon, 25 Jan 2021 14:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611584724;
 bh=Nh0hwKfWuuovNjFuNV1OJrKe8tPMi30Xe/6U1+0epYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NBi82+G0eQXXvThxyrUpm5lWq+C2YFGflcx2mTBkGyAt3XAlKVGGXd1lGmvf/M+BR
 sqOUjvWVFbag5dIlZhKyHozBx/C9tBDr4Pvo65vzafbdCwItk2eql9vG878EvGCoiK
 mtF4crFhPNK9uFUNKNPrNQF9NqcE+Zafqm1tcrWE=
Date: Mon, 25 Jan 2021 15:25:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YA7U0gT/mqE76sBP@kroah.com>
References: <161149524220215@kroah.com>
 <20210125132711.27101-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125132711.27101-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH stable-5.10] drm/i915: Only enable DFP
 4:4:4->4:2:0 conversion when outputting YCbCr 4:4:4
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 03:27:11PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> commit 1c4995b0a576d24bb7ead991fb037c8b47ab6e32 upstream.
> =

> Let's not enable the 4:4:4->4:2:0 conversion bit in the DFP unless we're
> actually outputting YCbCr 4:4:4. It would appear some protocol
> converters blindy consult this bit even when the source is outputting
> RGB, resulting in a visual mess.
> =

> Cc: <stable@vger.kernel.org> # 0e634efd858e: drm/i915: s/intel_dp_sink_dp=
ms/intel_dp_set_power/
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2914
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210111164111.13302-=
1-ville.syrjala@linux.intel.com
> Fixes: 181567aa9f0d ("drm/i915: Do YCbCr 444->420 conversion via DP proto=
col converters")
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> (cherry picked from commit 3170a21f7059c4660c469f59bf529f372a57da5f)
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210118154355.24453-=
1-ville.syrjala@linux.intel.com
> (cherry picked from commit 1c4995b0a576d24bb7ead991fb037c8b47ab6e32)
> ---
> Note the extra depdendency on commit 0e634efd858e
> ("drm/i915: s/intel_dp_sink_dpms/intel_dp_set_power/").

Thanks for this, now queued up.

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
