Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0A73D151F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 19:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E026E922;
	Wed, 21 Jul 2021 17:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815BA6E922
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 17:32:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="191757647"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="191757647"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 10:32:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="495432391"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 10:32:18 -0700
Date: Wed, 21 Jul 2021 10:42:08 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <20210721174208.GA31398@labuser-Z97X-UD5H>
References: <20210714223414.9849-1-manasi.d.navare@intel.com>
 <9fb23633-cbeb-b4c8-d548-95323c7a71b3@intel.com>
 <20210719185840.GA30216@labuser-Z97X-UD5H>
 <7e483a82-b997-4eb1-d585-484fc98b3914@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e483a82-b997-4eb1-d585-484fc98b3914@intel.com>
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

Pushed to drm-intel-next, tahnks for the reviews.

Manasi

On Tue, Jul 20, 2021 at 12:53:23PM +0530, Nautiyal, Ankit K wrote:
> =

> On 7/20/2021 12:28 AM, Navare, Manasi wrote:
> >On Mon, Jul 19, 2021 at 11:47:51AM +0530, Nautiyal, Ankit K wrote:
> >>Patch looks good to me.
> >>
> >>Please find below some suggestions
> >>
> >>On 7/15/2021 4:04 AM, Manasi Navare wrote:
> >>>Currently when we do the HW state readout, we dont set the shared dpll=
 to NULL
> >>>for the bigjoiner slave which should not have a DPLL assigned. So it h=
as
> >>>some garbage while the HW state readout is NULL. So explicitly reset
> >>>the shared dpll for bigjoiner slave pipe.
> >>>
> >>>Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/3465
> >>>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>>Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>Tested-By: Swati Sharma <swati2.sharma@intel.com>
> >>checkpatch warning about tested-by tag.
> >>>Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> >>>---
> >>>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
> >>>  1 file changed, 4 insertions(+)
> >>>
> >>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
> >>>index 65ddb6ca16e6..c274bfb8e549 100644
> >>>--- a/drivers/gpu/drm/i915/display/intel_display.c
> >>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>>@@ -9006,6 +9006,10 @@ verify_crtc_state(struct intel_crtc *crtc,
> >>>  	if (!new_crtc_state->hw.active)
> >>>  		return;
> >>>+	if (new_crtc_state->bigjoiner_slave)
> >>>+		/* No PLLs set for slave */
> >>>+		pipe_config->shared_dpll =3D NULL;
> >>>+
> >>there is a check for bigjoiner_slave, couple of lines above this:
> >>
> >>if (new_crtc_state->bigjoiner_slave)
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 master =3D new_crtc_stat=
e->bigjoiner_linked_crtc;
> >>
> >>Perhaps it will make sense to club the set shared_dpll to NULL, along w=
ith
> >>these lines.
> >Yup, thats where I was resetting in earlier patch but then it actually g=
ets overridden in a function call
> >after this point so need to reset it after separately.
> >
> >Manasi
> =

> You are right. I missed that, pipe_config gets overwritten just before th=
is
> point, so the change is at the right place.
> =

> Regards,
> =

> Ankit
> =

> =

> >
> >>In any case:
> >>
> >>Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>
> >>>  	intel_pipe_config_sanity_check(dev_priv, pipe_config);
> >>>  	if (!intel_pipe_config_compare(new_crtc_state,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
