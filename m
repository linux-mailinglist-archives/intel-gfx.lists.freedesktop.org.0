Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 139F2318D1F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB916EE2C;
	Thu, 11 Feb 2021 14:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7E16E42D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:18:30 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5A0C364EAA;
 Thu, 11 Feb 2021 14:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613053109;
 bh=80VxV4qEjUjaTOS07HnYGPxsGNaYJYSKYiOb+g4t7k0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TDRACuUUvJu+s88BF2pJD1cqhXSDSGoFKD58Zd0QG5V9WuBdlTLBy5xDQXb6pnY5x
 p2AsGcQQQ6NQzRynpEroj5i38nafgQnsipZrw0GF8w39fE1IoMJaR6MvliHZpR5BmX
 MoEgF2LtvrOJbou+lZ78ROSw2gEsWNdZ11YmGqQs=
Date: Thu, 11 Feb 2021 15:18:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YCU8szZLx8HtinOV@kroah.com>
References: <16127808794868@kroah.com>
 <20210208175341.8695-1-ville.syrjala@linux.intel.com>
 <20210208175341.8695-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210208175341.8695-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH stable-5.10 2/2] drm/i915: Skip vswing
 programming for TBT
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 08, 2021 at 07:53:41PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> commit eaf5bfe37db871031232d2bf2535b6ca92afbad8 upstream.
> =

> In thunderbolt mode the PHY is owned by the thunderbolt controller.
> We are not supposed to touch it. So skip the vswing programming
> as well (we already skipped the other steps not applicable to TBT).
> =

> Touching this stuff could supposedly interfere with the PHY
> programming done by the thunderbolt controller.
> =

> Cc: stable@vger.kernel.org
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210128155948.13678-=
1-ville.syrjala@linux.intel.com
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> (cherry picked from commit f8c6b615b921d8a1bcd74870f9105e62b0bceff3)
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> (cherry picked from commit eaf5bfe37db871031232d2bf2535b6ca92afbad8)
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Both n ow queued up,t hanks.

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
