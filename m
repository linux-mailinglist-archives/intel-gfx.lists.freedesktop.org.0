Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CAD29D20A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 21:18:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F956E3D0;
	Wed, 28 Oct 2020 20:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F5EA6E3D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 20:18:35 +0000 (UTC)
IronPort-SDR: uVgaA0vhCs+1W3l4ELUXEBfEMaeFTviJOAqKybjwLXtQfigexgw2VZGBsUr3rg1coTtyKXtO0d
 iPXyBGZ599SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="168460916"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="168460916"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:18:19 -0700
IronPort-SDR: O0QJzU+I9xFxg6png5ziMy8t8fIS629XJwCtIQw5EEezynsaspA/zKHyQeNSaHMCJVf/UjtI6N
 QFXeiTERjhpA==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536374074"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 13:18:17 -0700
Date: Wed, 28 Oct 2020 22:18:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jason Andryuk <jandryuk@gmail.com>
Message-ID: <20201028201814.GE3693479@ideak-desk.fi.intel.com>
References: <20201027133600.3656665-1-imre.deak@intel.com>
 <CAKf6xpuYr3G_FdOgoc4sJ33m46oNR=GR7z8X2DegwsgXaOBQvA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKf6xpuYr3G_FdOgoc4sJ33m46oNR=GR7z8X2DegwsgXaOBQvA@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix error handling during DPRX
 link training
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 27, 2020 at 10:02:45AM -0400, Jason Andryuk wrote:
> On Tue, Oct 27, 2020 at 9:36 AM Imre Deak <imre.deak@intel.com> wrote:
> >
> > Make sure to propagate the error result from the DPRX link training
> > phase. The lack of this broke the link training fall-back logic if the
> > link training failed during the DPRX phase.
> >
> > Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode li=
nk training")
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/1378
> > Reported-by: Jason Andryuk <jandryuk@gmail.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> =

> Reviewed-by: Jason Andryuk <jandryuk@gmail.com>

Thanks.

> I haven't tested, but I assume this will cause my 7200 to fail link
> training (channel equalization) and cause the flashing display.  Any
> suggestions there?  Would a quirk like
> https://lore.kernel.org/lkml/20201023124804.11457-1-jandryuk@gmail.com/
> be acceptable?

I'd like to try finding the root cause, if you could provide some more
logs on the gitlab ticket (will follow-up there).

> =

> Regards,
> Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
