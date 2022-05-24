Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E900053253D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 10:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA1010E2C5;
	Tue, 24 May 2022 08:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E6010E2C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 08:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653380996; x=1684916996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QmUH4bsVqsdEvPDZG546kpB4rz9qr+squUy5z9vTv80=;
 b=beLt57EP1bFMbR/BQD+t9mpvc42dsWMujgz4SWCuIllkANEuhb7TiQR7
 gOAVMI5Z/68Cpw9Xq0yuG1eOAz2KTa/k+CUxaJwQDD/CUr/oUiWwW5fdu
 q/kMoCQJbzLd9TqQCCxHu1t14cgJ8kzI8L8NxfEgfauO9LJ69P+bR5bb/
 gpLmYLhhBpGpDxO5tY2XPABZHCE3SnN3RPrY0MBLcceoIzaUzAVyBk517
 a4Lo0Ci9LwWimNIy1HhlMnPbOGntv1SbEEcUUvOdFMx32yKBm5j34jfOJ
 mp4qumPlOieasHoxV29MVUH6+pyZnTGlnnBMRiYQTQ9pP+sUSLXnNmbyz Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="253342577"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="253342577"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 01:29:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="548371264"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 24 May 2022 01:29:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 01:29:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 01:29:55 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.027;
 Tue, 24 May 2022 01:29:55 -0700
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset
 if an associated Type-C port is disconnected
Thread-Index: AQHYaQTzXwLlPdkwqEG7fOawjIhIF60huRWAgAJ0k8CAAlpRgP///4WwgAZKYwD//9DEEA==
Date: Tue, 24 May 2022 08:29:54 +0000
Message-ID: <68eff4780929468a97e68e40780b0cd5@intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
 <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
 <6117cb32773745e980bc02bfab96bb21@intel.com>
 <YoYnzRo6gbF416Ek@ideak-desk.fi.intel.com>
 <a0e6dca24e6a4b92b5870592aaeff05a@intel.com>
 <YotuSk4x8kcwX+Mk@ideak-desk.fi.intel.com>
In-Reply-To: <YotuSk4x8kcwX+Mk@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset
 if an associated Type-C port is disconnected
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre,

>=20
> On Fri, May 20, 2022 at 10:28:31AM +0300, Kasireddy, Vivek wrote:
> > Hi Imre,
> > [...]
> > > > > > @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(s=
truct
> drm_connector *conn,
> > > > > >
> > > > > >  	crtc_state =3D drm_atomic_get_new_crtc_state(state, new_state=
->crtc);
> > > > > >
> > > > > > +	/*
> > > > > > +	 * The spec says that it is not safe to use a disconnected Ty=
pe-C port.
> > > > > > +	 * Therefore, check to see if this connector is connected and=
 reject
> > > > > > +	 * the modeset if there is no sink detected.
> > > > > > +	 */
> > > > > > +	if (dig_port && !dig_port->connected(encoder) &&
> > > > >
> > > > > This check is racy, as right after dig_port->connected() returns =
true,
> > > > > the port can become disconnected.
> > > >
> > > > [Kasireddy, Vivek] Given that, do you think the only way to reliabl=
y determine
> > > > if the Type-C port has a sink is to check the live status and ignor=
e dig_port-
> >tc_mode?
> > > >
> > > > If that is the case, should I just add a function pointer to dig_po=
rt to call
> > > > tc_port_live_status_mask()? Or, should I just change intel_tc_port_=
connected()
> > > > to ignore dig_port->tc_mode like below:
> > > > @@ -764,8 +764,7 @@ bool intel_tc_port_connected(struct intel_encod=
er
> *encoder)
> > > >
> > > >         intel_tc_port_lock(dig_port);
> > > >
> > > > -       is_connected =3D tc_port_live_status_mask(dig_port) &
> > > > -                      BIT(dig_port->tc_mode);
> > > > +       is_connected =3D tc_port_live_status_mask(dig_port);
> > > >
> > > > Or, are there any other elegant ways that you can think of to deter=
mine whether
> > > > a tc port has a sink or not?
> > >
> > > I meant that I don't think there is a way to prevent a modeset on a
> > > disconnected port.
> >
> > But we need to find a way right given that the spec clearly states that=
 the driver
> > must not use or access (PHY/FIA registers of) a disconnected tc port.
>=20
> The driver does not access the PHY/FIA regs on a disconnected port/PHY.
[Kasireddy, Vivek] I think it does after the first patch in this series is =
applied if
the userspace (Weston) forces a modeset on a disconnected tc legacy port (H=
DMI).
For instance, some of the FIA/PHY regs accesses I noticed include programmi=
ng
the lane count (intel_tc_port_set_fia_lane_count() called by intel_ddi_pre_=
pll_enable()),
reading the pin assignment mask (intel_tc_port_get_pin_assignment_mask() ca=
lled
by icl_program_mg_dp_mode() which is called by intel_ddi_pre_enable_hdmi())=
, etc.

Of-course, these accesses would probably not occur if the disconnected tc p=
ort
defaults to TBT mode but this brings other problems like I described in the
commit description of the first patch and the cover letter.
=20
>=20
> > > Live status is what provides the connected state, but
> > > it can change right after it is read out.
> >
> > Does this change happen after giving up the ownership (in
> > icl_tc_phy_disconnect)?
>=20
> The HPD live status changes whenever a user plugs/unplugs a sink.
>=20
> > But shouldn't we distinguish between the cases where we are
> > deliberately disconnecting the phy for power-savings reason vs when
> > the port actually becomes disconnected? The port can still be
> > considered connected in the former case right?
>=20
> The driver - based on the spec - needs to avoid accessing the PHY/FIA
> regs whenever the PHY is disconnected either by FW/HW (because the user
> unplugged the sink) or the driver (during the suspend, modeset disable
> sequence).
[Kasireddy, Vivek] Regardless of whether the PHY/FIA regs are accessed or
not, I don't think the driver should let the userspace's modeset to succeed=
 on
a disconnected tc port. Do you not agree?

>=20
> > Under what other situations would the live status change or become
> > unreliable after the port has a connected sink?
>=20
> It's not unreliable, it reflects the state of a sink being plugged to
> the connector or not.
[Kasireddy, Vivek] Ok, assuming that the state of the sink is "connected"
during intel_atomic_check() phase (which is where this patch checks for
connected status), are you concerned about the case where the user may
unplug the sink before we get to the intel_atomic_commit() phase? Is
this what you meant when you said this earlier: "This check is racy, as
right after dig_port->connected() returns true, the port can become
disconnected"? I am just trying to figure out the scenarios when this
might happen.

>=20
> > And, since we rely on SDEISR to detect the live status for tc legacy
> > ports, could this not be considered reliable?
>=20
> Changes in the HPD live status is used as a hint to user space to
> follow up with connector detection and modeset enable/disable requests
> as necessary.
[Kasireddy, Vivek] Right, that is the ideal case but user/userspace can com=
mit
mistakes where for example they can assume that HDMI-A-1 is connected=20
(while it is not) instead of HDMI-A-3 which is the one actually connected.
During such cases, I think the driver should not let the userspace hang the
system or lead to unexpected states and instead should return an error.

Thanks,
Vivek

>=20
> --Imre
