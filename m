Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 272BD3CEB1C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A59B89ACC;
	Mon, 19 Jul 2021 18:48:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2FEA89ACC
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:48:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="272229228"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="272229228"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 11:48:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="468689538"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 11:48:54 -0700
Date: Mon, 19 Jul 2021 11:58:40 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <20210719185840.GA30216@labuser-Z97X-UD5H>
References: <20210714223414.9849-1-manasi.d.navare@intel.com>
 <9fb23633-cbeb-b4c8-d548-95323c7a71b3@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fb23633-cbeb-b4c8-d548-95323c7a71b3@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix shared dpll mismatch
 for bigjoiner slave
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

On Mon, Jul 19, 2021 at 11:47:51AM +0530, Nautiyal, Ankit K wrote:
> Patch looks good to me.
> =

> Please find below some suggestions
> =

> On 7/15/2021 4:04 AM, Manasi Navare wrote:
> >Currently when we do the HW state readout, we dont set the shared dpll t=
o NULL
> >for the bigjoiner slave which should not have a DPLL assigned. So it has
> >some garbage while the HW state readout is NULL. So explicitly reset
> >the shared dpll for bigjoiner slave pipe.
> >
> >Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/3465
> >Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >Tested-By: Swati Sharma <swati2.sharma@intel.com>
> checkpatch warning about tested-by tag.
> >Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> >---
> >  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
> >index 65ddb6ca16e6..c274bfb8e549 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display.c
> >@@ -9006,6 +9006,10 @@ verify_crtc_state(struct intel_crtc *crtc,
> >  	if (!new_crtc_state->hw.active)
> >  		return;
> >+	if (new_crtc_state->bigjoiner_slave)
> >+		/* No PLLs set for slave */
> >+		pipe_config->shared_dpll =3D NULL;
> >+
> =

> there is a check for bigjoiner_slave, couple of lines above this:
> =

> if (new_crtc_state->bigjoiner_slave)
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 master =3D new_crtc_state->=
bigjoiner_linked_crtc;
> =

> Perhaps it will make sense to club the set shared_dpll to NULL, along with
> these lines.

Yup, thats where I was resetting in earlier patch but then it actually gets=
 overridden in a function call
after this point so need to reset it after separately.

Manasi

> =

> In any case:
> =

> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> =

> >  	intel_pipe_config_sanity_check(dev_priv, pipe_config);
> >  	if (!intel_pipe_config_compare(new_crtc_state,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
