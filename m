Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8623D1E089D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1FD589AAD;
	Mon, 25 May 2020 08:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14F789AAD
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:19:28 +0000 (UTC)
IronPort-SDR: 76mRYA5qR68/tEh8XkKNvXQR5nn2/NJPrc4wPtTKhBNknrbE566/CHqPZuN8RsiE0blbM5w5lA
 42DJGPEWpK7A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:19:28 -0700
IronPort-SDR: ZfHucAD5Y/tf+kTjyz0mcsvVqD2A2ZZPSHQZITzeAlUI/NZHZYR+ZPRQTlPnjqMvQ+psGt8aDk
 B33fcoFsqq4w==
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="256174399"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:19:27 -0700
Date: Mon, 25 May 2020 11:15:31 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200525081530.GA32239@intel.com>
References: <20200525080731.2244-1-chris@chris-wilson.co.uk>
 <20200525080754.GA32204@intel.com>
 <159039461424.30979.17871163129232770512@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159039461424.30979.17871163129232770512@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert CDCLK changes to unbreak
 geminilake
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

On Mon, May 25, 2020 at 09:16:54AM +0100, Chris Wilson wrote:
> Quoting Lisovskiy, Stanislav (2020-05-25 09:07:54)
> > On Mon, May 25, 2020 at 09:07:31AM +0100, Chris Wilson wrote:
> > > This reverts
> > > cac91e671ad5 ("drm/i915: Fix includes and local vars order")
> > > 82ea174dc542 ("drm/i915: Remove unneeded hack now for CDCLK")
> > > cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw need=
s")
> > > =

> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Cc: "Ville Syrj=E4l=E4" <ville.syrjala@linux.intel.com>
> > =

> > =

> > I guess we still need to check more precisely if this patch caused
> > this - or have you already bisected that?
> =

> This was found by unwinding the patches on CI.
> =

> > It is rather strange that it breaks only a GLK and only single test.
> =

> Bug detection is purely serendipitous.
> -Chris

Ok then lets rewind those - then it will become clear at least.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
