Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C055294D79
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:26:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E596E167;
	Wed, 21 Oct 2020 13:26:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69C46E167
 for <Intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:26:43 +0000 (UTC)
IronPort-SDR: aHE9oyhBWESak4QALRqWY6NkLtJny9MoUNs8LEpBR9BZ8Kpz21sVN96hXxH+ksM9tdRKVMgz+f
 FaGsNWnX+JsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="164758347"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="164758347"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:26:43 -0700
IronPort-SDR: OZwoqwlvrqS4Ch3EgG6HhF9xLyldEBAp8IbR9i4e+lGeD/9bt8CM7j7Ta6sTyYYNliZI3O+M2E
 W1Z0kQlrJ5oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="392726104"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 21 Oct 2020 06:26:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Oct 2020 16:26:39 +0300
Date: Wed, 21 Oct 2020 16:26:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20201021132639.GF6112@intel.com>
References: <20201020074555.24315-1-khaled.almahallawy@intel.com>
 <20201020124108.GX6112@intel.com>
 <ded1023ff55d62717e6c7a7055b8e7f651e19c5b.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ded1023ff55d62717e6c7a7055b8e7f651e19c5b.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Set
 drm_crtc_state.active=false for all added disconnected CRTCs sharing MST
 stream.
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 20, 2020 at 11:25:53PM +0000, Souza, Jose wrote:
> On Tue, 2020-10-20 at 15:41 +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, Oct 20, 2020 at 12:45:55AM -0700, Khaled Almahallawy wrote:
> > > This patch avoids failing atomic commits sent by user space by making=
 sure CRTC/Connector added to drm_atomic_state by the driver are in valid s=
tate.
> > > =

> > > When disconnecting MST hub with two or more connected displays. The u=
ser space sends IOCTL for each MST pipe to disable.
> > > drm_atomic_state object sent from user space contains only the state =
of the crtc/pipe intended to disable.
> > > In TGL, intel_dp_mst_atomic_master_trans_check will add all other CRT=
C and connectors that share the MST stream to drm_atomic_state:
> > > =

> > > drm_atomic_commit
> > > =A0=A0=A0drm_atomic_helper_check_modeset
> > > =A0=A0=A0=A0=A0=A0=A0update_connector_routing
> > > =A0=A0=A0=A0=A0=A0=A0intel_dp_mst_atomic_check =3D funcs->atomic_chec=
k(connector, state);
> > > =A0=A0=A0=A0=A0=A0=A0	   intel_dp_mst_atomic_master_trans_check
> > > 		intel_atomic_get_digital_connector_state
> > > 			drm_atomic_get_connector_state   <-- Add all Connectors
> > > 			    drm_atomic_get_crtc_state <-- Add all CRTCs
> > > =A0=A0=A0=A0=A0=A0=A0update_connector_routing <-- Check added Connect=
or/CRTCs - Will fail
> > > =

> > > However the added crtc/connector pair will be in invalid state (enabl=
ed state for a removed connector)
> > > triggering this condition in drm_atomic_helper.c/update_connector_rou=
ting:
> > > =

> > > 	if (!state->duplicated && drm_connector_is_unregistered(connector) &&
> > > 	    crtc_state->active) {
> > > 		DRM_DEBUG_ATOMIC("[CONNECTOR:%d:%s] is not registered\n",
> > > 				 connector->base.id, connector->name);
> > > 		return -EINVAL;
> > > 	}
> > =

> > Yeah, I think that "reject modeset on unregistered connectors" idea is
> > a bit broken given how the uapi has worked in the past. Cc:ing danvet
> > and lyude who IIRC were involved with that.
> > =

> > Hmm. Maybe we could add the other stuff to the state only after the
> > connector .atomic_check() stuff has been done? I don't quite remember
> > why we decided to do it here. Jos=E9 do you recall the details?
> =

> Because the connector check function runs twice in drm_atomic_helper_chec=
k_modeset(), in the first iteration it will add all connectors that share t=
he
> same MST stream to state, the second one will make sure all other checks =
passed in all connectors of the MST stream.
> =

> To me looks like the Chrome userspace is not doing the right thing, it is=
 sending asynchronous atomic commits with conflicting state between each
> commit.
> If it had a pool that dispatch one atomic state at time waiting for compl=
etion before dispatch the next one it would not be a issue.

Yeah, with atomic userspace could avoid this potentially. Though it
may be racy depending on whether it has noticed all the MST connectors
disappearing yet or not. Either way it's still an issue for legacy
uapi.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
