Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77149534759
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 02:11:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6D610F74F;
	Thu, 26 May 2022 00:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6D610F74F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 00:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653523891; x=1685059891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2rabF13CBj0PdVy8b0nEOQ53MCJn1s010Dz97yS2DXg=;
 b=ZvVvOjky5ktrihzEMuzRvvp83FGIlCk6p4Hq4zPGdP3Rc2i34qVr+L6v
 62ohL55Rohsdio/w/ojQEhfA853ECRM5I8/xafmAvsaxBL3ra6cbR/DoI
 3Lh4XYHGQEOdaw0GeRvpQK1izJbZ3dFkodP9g4O8z8PDXMBqTaHz8AkbC
 7fr5rIzDybnc4ll9J+dMKBDRXNhWFZqGQk6qjfLhcIxRpIWMecDTRbQaN
 9tJojc9476BPAUOoVVbFtCe3ZUJhLBotFiLNdFh0LW72zavv0Mwbo7yfk
 VndoYeV0C9bSynkkmH4jf2vJtS0XregP7Tok2OL/8Jcdb9sSjfDfpPoTK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="337021549"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="337021549"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 17:11:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="901730667"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 25 May 2022 17:11:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 17:11:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 17:11:20 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.027;
 Wed, 25 May 2022 17:11:20 -0700
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset
 if an associated Type-C port is disconnected
Thread-Index: AQHYaQTzXwLlPdkwqEG7fOawjIhIF60huRWAgAJ0k8CAAlpRgP///4WwgAZKYwD//9DEEIACEZyAgAFDYRA=
Date: Thu, 26 May 2022 00:11:20 +0000
Message-ID: <7727ede08b364d4db75ff5a0270d3785@intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
 <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
 <6117cb32773745e980bc02bfab96bb21@intel.com>
 <YoYnzRo6gbF416Ek@ideak-desk.fi.intel.com>
 <a0e6dca24e6a4b92b5870592aaeff05a@intel.com>
 <YotuSk4x8kcwX+Mk@ideak-desk.fi.intel.com>
 <68eff4780929468a97e68e40780b0cd5@intel.com>
 <Yo0C7yUpdSBdnyof@ideak-desk.fi.intel.com>
In-Reply-To: <Yo0C7yUpdSBdnyof@ideak-desk.fi.intel.com>
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

> On Tue, May 24, 2022 at 11:29:54AM +0300, Kasireddy, Vivek wrote:
> > Hi Imre,
> >
> > > On Fri, May 20, 2022 at 10:28:31AM +0300, Kasireddy, Vivek wrote:
> > > > Hi Imre,
> > > > [...]
> > > > > > > > @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_che=
ck(struct
> > > drm_connector *conn,
> > > > > > > >
> > > > > > > >  	crtc_state =3D drm_atomic_get_new_crtc_state(state, new_s=
tate-
> >crtc);
> > > > > > > >
> > > > > > > > +	/*
> > > > > > > > +	 * The spec says that it is not safe to use a disconnecte=
d Type-C port.
> > > > > > > > +	 * Therefore, check to see if this connector is connected=
 and reject
> > > > > > > > +	 * the modeset if there is no sink detected.
> > > > > > > > +	 */
> > > > > > > > +	if (dig_port && !dig_port->connected(encoder) &&
> > > > > > >
> > > > > > > This check is racy, as right after dig_port->connected() retu=
rns true,
> > > > > > > the port can become disconnected.
> > > > > >
> > > > > > [Kasireddy, Vivek] Given that, do you think the only way to rel=
iably determine
> > > > > > if the Type-C port has a sink is to check the live status and i=
gnore dig_port-
> > > >tc_mode?
> > > > > >
> > > > > > If that is the case, should I just add a function pointer to di=
g_port to call
> > > > > > tc_port_live_status_mask()? Or, should I just change intel_tc_p=
ort_connected()
> > > > > > to ignore dig_port->tc_mode like below:
> > > > > > @@ -764,8 +764,7 @@ bool intel_tc_port_connected(struct intel_e=
ncoder
> > > *encoder)
> > > > > >
> > > > > >         intel_tc_port_lock(dig_port);
> > > > > >
> > > > > > -       is_connected =3D tc_port_live_status_mask(dig_port) &
> > > > > > -                      BIT(dig_port->tc_mode);
> > > > > > +       is_connected =3D tc_port_live_status_mask(dig_port);
> > > > > >
> > > > > > Or, are there any other elegant ways that you can think of to d=
etermine whether
> > > > > > a tc port has a sink or not?
> > > > >
> > > > > I meant that I don't think there is a way to prevent a modeset on=
 a
> > > > > disconnected port.
> > > >
> > > > But we need to find a way right given that the spec clearly states =
that the driver
> > > > must not use or access (PHY/FIA registers of) a disconnected tc por=
t.
> > >
> > > The driver does not access the PHY/FIA regs on a disconnected port/PH=
Y.
> >
> > [Kasireddy, Vivek] I think it does after the first patch in this series=
 is applied if
> > the userspace (Weston) forces a modeset on a disconnected tc legacy por=
t (HDMI).
> > For instance, some of the FIA/PHY regs accesses I noticed include progr=
amming
> > the lane count (intel_tc_port_set_fia_lane_count() called by intel_ddi_=
pre_pll_enable()),
> > reading the pin assignment mask (intel_tc_port_get_pin_assignment_mask(=
) called
> > by icl_program_mg_dp_mode() which is called by intel_ddi_pre_enable_hdm=
i()), etc.
>=20
> The FW/HW will setup a legacy TC port's PHY once during system boot and
> resume, so I don't see any problem modesetting those later, regardless
> of a sink being plugged on them or not. We need the first patch which
> fixes a bug selecting the wrong PLL.
>=20
> > Of-course, these accesses would probably not occur if the disconnected =
tc port
> > defaults to TBT mode but this brings other problems like I described in=
 the
> > commit description of the first patch and the cover letter.
> >
> > > > > Live status is what provides the connected state, but
> > > > > it can change right after it is read out.
> > > >
> > > > Does this change happen after giving up the ownership (in
> > > > icl_tc_phy_disconnect)?
> > >
> > > The HPD live status changes whenever a user plugs/unplugs a sink.
> > >
> > > > But shouldn't we distinguish between the cases where we are
> > > > deliberately disconnecting the phy for power-savings reason vs when
> > > > the port actually becomes disconnected? The port can still be
> > > > considered connected in the former case right?
> > >
> > > The driver - based on the spec - needs to avoid accessing the PHY/FIA
> > > regs whenever the PHY is disconnected either by FW/HW (because the us=
er
> > > unplugged the sink) or the driver (during the suspend, modeset disabl=
e
> > > sequence).
> >
> > [Kasireddy, Vivek] Regardless of whether the PHY/FIA regs are accessed =
or
> > not, I don't think the driver should let the userspace's modeset to suc=
ceed on
> > a disconnected tc port. Do you not agree?
>=20
> I don't think a modeset can or should be prevented if the user unplugs a
> monitor midway.
>=20
> > > > Under what other situations would the live status change or become
> > > > unreliable after the port has a connected sink?
> > >
> > > It's not unreliable, it reflects the state of a sink being plugged to
> > > the connector or not.
> >
> > [Kasireddy, Vivek] Ok, assuming that the state of the sink is "connecte=
d"
> > during intel_atomic_check() phase (which is where this patch checks for
> > connected status), are you concerned about the case where the user may
> > unplug the sink before we get to the intel_atomic_commit() phase? Is
> > this what you meant when you said this earlier: "This check is racy, as
> > right after dig_port->connected() returns true, the port can become
> > disconnected"? I am just trying to figure out the scenarios when this
> > might happen.
>=20
> Yes, checking the HPD live state and attempting to prevent a modeset
> based on it doesn't work as this state can change at any moment. I don't
> see a reason either why this should be done.
>=20
> > > > And, since we rely on SDEISR to detect the live status for tc legac=
y
> > > > ports, could this not be considered reliable?
> > >
> > > Changes in the HPD live status is used as a hint to user space to
> > > follow up with connector detection and modeset enable/disable request=
s
> > > as necessary.
> >
> > [Kasireddy, Vivek] Right, that is the ideal case but user/userspace can=
 commit
> > mistakes where for example they can assume that HDMI-A-1 is connected
> > (while it is not) instead of HDMI-A-3 which is the one actually connect=
ed.
> > During such cases, I think the driver should not let the userspace hang=
 the
> > system or lead to unexpected states and instead should return an error.
>=20
> I can't see a problem modesetting a TC connector, when there is no sink
> connected to it or the sink gets unplugged at an arbitrary time during
> the modeset.
[Kasireddy, Vivek] I think modesetting a TC connector with no sink connecte=
d
would be equivalent to "using" it which is against what the spec says: "Dis=
play
software must not use a disconnected port".

Anyway, let me send a v2 of the first patch to include your suggestion.

Thanks,
Vivek

>=20
> --Imre
