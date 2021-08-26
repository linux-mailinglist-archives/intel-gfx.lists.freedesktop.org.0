Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125123F8A9A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 17:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 137A56E86E;
	Thu, 26 Aug 2021 15:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03EFF6E86E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 15:00:17 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id 606BD5C0106;
 Thu, 26 Aug 2021 11:00:15 -0400 (EDT)
Received: from imap22 ([10.202.2.72])
 by compute2.internal (MEProxy); Thu, 26 Aug 2021 11:00:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chasen.name; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type:content-transfer-encoding; s=fm3; bh=GawRO
 BVol9KKYimuACVSTe1GE/kxnMT5Ob5khOjMjMY=; b=W/mXl5CfA1x79RB8WWI2O
 fqW78Zx8JDzNE8zU73y6QG08jQjgmbXtqtQpq/+3KJJpCKIipjBnJV36ARfrzwfe
 VyLLNgZVPcDgaeqwy/uJueJI/AxS2Fgr0nj6D9BKPAHMkuMEcLkr8wgb9ld4uP40
 VthHkLACL41IvCxIHmM7QzUVQ+TbZ5T+WmOyOQfnRVLutITauyRxHkSsk4Gqun6Q
 BHvR7rNPs29iEEB9g/9LQK2pOerjRY6LaKP6ytmsmi3fWgmJLdQ0Ss9LqCNwELcF
 jocQweLtITNgtaGOaG7xPRVG4sGRaWxHXlGAW9UuMLonxNECkfv9aejSGrMdV2BL
 w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=GawROBVol9KKYimuACVSTe1GE/kxnMT5Ob5khOjMj
 MY=; b=FqQqkXce3AtsRmJpGD94JvD9s3cDhAq7G8yEiZxgRvLWeCrE8RAnccZc9
 SmA1ig/l5tZh7yMvc0PcSF3YyhQnRD8QO6B3Uq3I1N/JhanOmihlO2TJshuTRxQs
 XBCQU8rmz0+bBsQu/Bj16ha2SF6giLTXlMZRQPjJAW2y1rN7V3Lnr6qtCkwUX7np
 cgWhV74slbPMQ+zYG0QtLwrb6E4h8WJkXM4dGI41dsAyucEu+ce1SZexYFdPzSn+
 JfSHKZuL2kA2x1BhIuAgfVoT1z2ygOoYZ23vgA+SrU1HbPw2LwJLdAH+CCW07B7Z
 edgbxXnhcPore9H6UxQqT9XsIM0Zg==
X-ME-Sender: <xms:fqwnYS2E4mWFMPnmEDujoz97f_qOackRqVepN2kBGD64Z7cz0CXNMg>
 <xme:fqwnYVHRpAuXEmsesAkz8-pM5DNcRoCS77IBrfdq3MBUux6VqyiPUmi0KNLd9Ulgf
 JMmFehtRCp9uPie-7s>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudduuddgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgfgsehtqhertderreejnecuhfhrohhmpedftegu
 rghmucevhhgrshgvnhdfuceorggurghmsegthhgrshgvnhdrnhgrmhgvqeenucggtffrrg
 htthgvrhhnpeehudfhgfevvdejleetjeekgefhleeiieefgfffkeevfeelgfefffethefg
 leffvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdgsohhothhlihhnrdgtohhmpd
 hfrhgvvgguvghskhhtohhprdhorhhgpdhgihhthhhusgdrtghomhenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegruggrmhestghhrghsvghnrd
 hnrghmvg
X-ME-Proxy: <xmx:fqwnYa49SDUQjCy1dFL1wQ7dUsZdjBzE_V5o4znZJ8hpXC4MB27DGA>
 <xmx:fqwnYT0DeJyuRU_anhTO8oGrJ0ni0FBBKIWagE0f8ZRTegEkHA978A>
 <xmx:fqwnYVHzgZDnsyQlQXSskxqY6aBcj5-C3t0NbAwU1Bh-NYsj_sX_QQ>
 <xmx:f6wnYVBsupxRXpNd-fjO9Dl4D4_8LCvQfcuTDx-eqhoiqyFo-CD80g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 94EE262C006D; Thu, 26 Aug 2021 11:00:14 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1125-g685cec594c-fm-20210825.001-g685cec59
Mime-Version: 1.0
Message-Id: <ad2c8cc5-57fb-462a-9e31-0444ae52f289@www.fastmail.com>
In-Reply-To: <YLpfOOiLnckvZe8A@intel.com>
References: <904b8186-4d49-4292-bc6e-04726c571138@beta.fastmail.com>
 <YJw0ysSSWXEEBtU+@intel.com>
 <2b087694-6698-4970-9baa-b408e9ab1641@beta.fastmail.com>
 <275c025e-4366-4347-aeb5-c002b5ac00f3@beta.fastmail.com>
 <YLTvfj+WfKMv8qid@intel.com>
 <a3768e4a-976b-49f1-b47b-c088ea232d33@www.fastmail.com>
 <8697eab6-ed7c-45b3-8055-53beff47f844@beta.fastmail.com>
 <YLpfOOiLnckvZe8A@intel.com>
Date: Thu, 26 Aug 2021 10:59:54 -0400
From: "Adam Chasen" <adam@chasen.name>
To: =?UTF-8?Q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] Tracing a "drm_mode_prune_invalid"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ville,
It appears we are receiving some minimal information about the DP to dua=
l-link DVI adapter which may be used to indicate dual-link support. Any =
chance we can use this information to augment the EDID to not filter out=
 the higher clocks?

> EDID can't help us since it would only tell us whether the display
> supports dual-link or not. The dongle may still be single link only.

[CONNECTOR:95:DP-1]: status: connected
...
	DP branch device present: yes
		Type: DVI
		ID: ***m2DVIa***
		HW: 0.1
		SW: 2.0
...

I very well may be barking up the wrong tree with the following:

The "DP-1" reports a "branch device" with an "ID" of m2DVIa which is men=
tioned in another (amd) video driver:

> +/*DP to Dual link DVI converter*/
> +static const uint8_t DP_DVI_CONVERTER_ID_4[] =3D "m2DVIa";
> +static const uint8_t DP_DVI_CONVERTER_ID_5[] =3D "3393N2";
 from https://lore.kernel.org/patchwork/patch/1338037/

This is used here which appears to do something with I2C: https://elixir=
.bootlin.com/linux/latest/source/drivers/gpu/drm/amd/display/dc/core/dc_=
link_ddc.c#L309

There are mention of a small number of "external converter chips" which =
are used in the above conditional: https://elixir.bootlin.com/linux/late=
st/source/drivers/gpu/drm/amd/display/include/ddc_service_types.h#L30

Thanks,
Adam

On Fri, Jun 4, 2021, at 1:13 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Fri, Jun 04, 2021 at 12:57:25PM -0400, Adam Chasen wrote:
> > Thanks for staying with me! Still hoping I can get back to using KMS=
/Wayland combination with my setup.
> >=20
> > I understand the current recommendation is to push the mode setting =
to the wayland compositor per Ville here: https://gitlab.freedesktop.org=
/drm/intel/-/issues/393#note_337616
> >=20
> > Alas, I am using Mutter (similar to issue #393) which (historically)=
 doesn't support mode setting (yet?).
> >=20
> > There is mention of drm_dp_downstream_max_clock() in an i915 comment=
, which looks like could be a reference to drm_dp_downstream_max_tmds_cl=
ock().=20
> >=20
> > It seems there is a hard coded 165MHz max for DP_DWN_STRM_PORT_TYPE_=
TMDS or (note the comment in the below code):
> >=20
> > 	case DP_DS_PORT_TYPE_DVI:
> > 		if ((dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DETAILED_CAP_INFO_AVAILA=
BLE) =3D=3D 0)
> > 			return 165000;
> > 		/* FIXME what to do about DVI dual link? */
> > 		return port_cap[1] * 2500;
> >=20
> > Still wondering about the "one byte" format is for configuration, bu=
t I presume it is setting DP_DETAILED_CAP_INFO_AVAILABLE to 0 which trig=
gers this.
> >=20
> > Is there a recommended approach to setting the port to support Dual-=
Link based on EDID response (or is it too late by the time we get  the E=
DID)?
>=20
> EDID can't help us since it would only tell us whether the display
> supports dual-link or not. The dongle may still be single link only.
>=20
> >=20
> > Is there a recommended approach for a "disable filter", or "manual m=
odeset"? There are others who seem interested in overriding the filterin=
g logic (e.g. "do what I say even though it isn't clear it will work"). =
https://gitlab.freedesktop.org/drm/intel/-/issues/393#note_829142
>=20
> Userspace is free to force any it wants. But I guess mutter+wayland
> doesn't support that for some reason.
>=20
> I've occasionally pondered about adding some kind of connector property
> for this, but not sure wht it should look like. And it would still
> require userspace support to set it. Another idea would be to extend t=
he
> video=3D cmdline with some kind of knob that lets you override these
> limits. But again it's a bit hard to come up with a decent solution si=
nce
> there are various different clock limits involved (TMDS clock for HDMI
> vs. link rate for DP, dotclock for everyting). And just saying "ignore
> all limits" is not a very flexible solution since there may be some
> limit you do want to enforce, just not as low as what we would
> auto-detect.
>=20
> >=20
> > -Adam
> >=20
> > -- Related --
> >=20
> > I found these following a thread on the 165MHz clock limit in the co=
ntext of DP dual mode HDMI dongles with a patch experimenting with turni=
ng off the limit: https://bugs.freedesktop.org/show_bug.cgi?id=3D112018#=
c2 (now https://gitlab.freedesktop.org/drm/intel/-/issues/511) There is =
even a hack for what appears to be a similar limitation
> > (using Dual mode DP): https://github.com/hansmi/fake-dp-dual-mode
> >=20
> > Researching answers for previous questions:=20
> >=20
> > "one byte" cap:
> > /*
> >  * 0x80-0x8f describe downstream port capabilities, but there are tw=
o layouts
> >  * based on whether DP_DETAILED_CAP_INFO_AVAILABLE was set.  If it w=
as not,
> >  * each port's descriptor is one byte wide.  If it was set, each por=
t's is
> >  * four bytes wide, starting with the one byte from the base info.  =
As of
> >  * DP interop v1.1a only VGA defines additional detail.
> >  */
> >=20
> > And from a commit:
> > * Fixup logic for calculating the downstream port length to account =
for
> >   the fact that downstream port caps can be either 1 byte or 4 bytes
> >   long. We can actually skip fixing the max_clock/max_bpc helpers he=
re
> >   since they all check for DP_DETAILED_CAP_INFO_AVAILABLE anyway.
> >=20
> > DPCD =3D DisplayPort Configuration Data
> > DFP appears to be a structure to hold configuration data as part of =
intel_attached_dp(connector):
> > 	/* Downstream facing port caps */
> > 	struct {
> > 		int min_tmds_clock, max_tmds_clock;
> > 		int max_dotclock;
> > 		u8 max_bpc;
> > 		bool ycbcr_444_to_420;
> > 	} dfp;
> >=20
> > On Mon, May 31, 2021, at 10:28 AM, Adam Chasen wrote:
> > > Ville,
> > > Thanks for the additional detail!
> > >=20
> > > I looked up HPD and understand it is hot plug detection, but I did=
n't=20
> > > find much for "one byte caps format". I assume this is short hand =
for=20
> > > "capability format".
> > >=20
> > > Is the "one byte" format a limitation from the monitor, the dongle=
, the=20
> > > motherboard, or the chipset?
> > >=20
> > > What are some examples of other "capability formats"?
> > >=20
> > > Is there a recommended approach to setting the port to support=20
> > > Dual-Link based on EDID response (or is it too late by the time we=
 get=20
> > > the EDID)?
> > >=20
> > > If there is no obvious automatic solution, do you have an example =
of a=20
> > > "manual override" (i.e. module argument) for another situation I c=
an=20
> > > use as a guide?
> > >=20
> > > Still curious what DPCD DFP stands for.
> > >=20
> > > Thanks,
> > > Adam
> > >=20
> > > On Mon, May 31, 2021, at 10:15 AM, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > > On Fri, May 28, 2021 at 02:15:46PM -0400, Adam Chasen wrote:
> > > > > Any further advice on tracing what is triggering what appears =
to be the limitation of the clock? My guess is it is imposing a DVI Sing=
le-Link speed (165000) limitation on the dual-link DVI adapter.
> > > > >=20
> > > > > > TMDS clock 25000-165000
> > > > >=20
> > > > > I am able to override in xorg with xrandr to 268500
> > > > >=20
> > > > > Per Ville's request:
> > > > > DPCD DFP: 0a
> > > > >=20
> > > > > What is the DPCD DFP?
> > > >=20
> > > > It indicates the port is DVI with HPD capability. But unfortunat=
ely it's
> > > > using the one byte caps format which doesn't let us differentiate
> > > > between single link and dual link DVI. So we take the more cauti=
ous
> > > > apporach and assume it's single link.
> > > >=20
> > > > >=20
> > > > > Thanks,
> > > > > Adam
> > > > >=20
> > > > > On Wed, May 12, 2021, at 5:07 PM, Adam Chasen wrote:
> > > > > > Ville,
> > > > > > DPCD DFP: 0a
> > > > > >=20
> > > > > > What is the DPCD DFP?
> > > > > >=20
> > > > > > Additional info, this is the first time there has been an is=
sue with=20
> > > > > > this adapter not working (i.e. it must have been operating a=
bove=20
> > > > > > 165MHz), but it is possible other drivers have "ignored" thi=
ngs and=20
> > > > > > just followed the EDID.
> > > > > >=20
> > > > > > Thanks!
> > > > > > Adam
> > > > > >=20
> > > > > > kernel: [drm:drm_helper_probe_single_connector_modes [drm_km=
s_helper]]=20
> > > > > > [CONNECTOR:95:DP-1]=20
> > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]]=20
> > > > > > [CONNECTOR:95:DP-1]
> > > > > > kernel: [drm:drm_dp_read_dpcd_caps [drm_kms_helper]] AUX C/D=
DI C/PHY C:=20
> > > > > > DPCD: 11 0a 84 01 00 05 00 81 00 00 00 00 00 00 00
> > > > > > kernel: [drm:drm_dp_read_desc [drm_kms_helper]] AUX C/DDI C/=
PHY C: DP=20
> > > > > > branch: OUI 00-80-e1 dev-ID m2DVIa HW-rev 0.1 SW-rev 2.0 qui=
rks 0x0000
> > > > > > kernel: [drm:drm_dp_read_downstream_info [drm_kms_helper]] A=
UX C/DDI=20
> > > > > > C/PHY C: DPCD DFP: 0a
> > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENC=
ODER:94:DDI=20
> > > > > > C/PHY C] MST support: port: yes, sink: no, modparam: yes
> > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]]=
 source=20
> > > > > > rates: 162000, 216000, 270000, 324000, 432000, 540000
> > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]]=
 sink=20
> > > > > > rates: 162000, 270000
> > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]]=
 common=20
> > > > > > rates: 162000, 270000
> > > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C=
/PHY C:=20
> > > > > > native defer
> > > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C=
/PHY C:=20
> > > > > > native defer
> > > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C=
/PHY C:=20
> > > > > > native defer
> > > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C=
/PHY C:=20
> > > > > > native defer
> > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]]=20
> > > > > > [CONNECTOR:95:DP-1] DFP max bpc 8, max dotclock 0, TMDS cloc=
k=20
> > > > > > 25000-165000
> > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]]=20
> > > > > > [CONNECTOR:95:DP-1] YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:=
2:0=20
> > > > > > conversion? no=20
> > > > > > kernel: [drm:drm_dp_get_edid_quirks [drm_kms_helper]] DP sin=
k: EDID mfg=20
> > > > > > 22-f0 prod-ID 90-26 quirks: 0x0000
> > > > > > kernel: [drm:drm_add_edid_modes [drm]] ELD: no CEA Extension=
 found
> > > > > > kernel: [drm:drm_add_display_info [drm]] Supported Monitor R=
efresh rate=20
> > > > > > range is 0 Hz - 0 Hz
> > > > > > kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
> > > > > > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "2=
560x1600":=20
> > > > > > 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
> > > > > > kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x16=
00 mode:=20
> > > > > > CLOCK_HIGH
> > > > > > kernel: [drm:drm_helper_probe_single_connector_modes [drm_km=
s_helper]]=20
> > > > > > [CONNECTOR:95:DP-1] probed modes :
> > > > > > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "1=
280x800":=20
> > > > > > 60 71000 1280 1328 1360 1440 800 803 809 823 0x40 0x9
> > > > > >=20
> > > > > > # for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 count=
=3D16=20
> > > > > > skip=3D$((0x80)) 2>/dev/null | hexdump -C ; done
> > > > > > 00000000  0a 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > 00000010
> > > > > > 00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > 00000010
> > > > > >=20
> > > > > > # for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 2>/de=
v/null |=20
> > > > > > hexdump -C ; done
> > > > > > 00000000  11 0a 84 01 00 05 00 81  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > 00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000080  0a 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > 00000090  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000100  0a 84 00 08 08 08 08 00  01 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > 00000110  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000200  01 00 77 77 81 00 44 44  00 00 00 00 00 00 00 00 =20
> > > > > > |..ww..DD........|
> > > > > > 00000210  00 80 00 80 00 80 00 80  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > 00000220  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000240  00 00 00 00 00 00 20 00  00 00 00 00 00 00 00 00  =
|......=20
> > > > > > .........|
> > > > > > 00000250  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000300  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 80 =20
> > > > > > |................|
> > > > > > 00000310  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000400  47 53 53 00 00 01 01 00  01 00 00 90 02 00 00 90 =20
> > > > > > |GSS.............|
> > > > > > 00000410  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000500  00 80 e1 6d 32 44 56 49  61 01 02 00 00 cf 00 00 =20
> > > > > > |...m2DVIa.......|
> > > > > > 00000510  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > > 00000600  01 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > 00000610  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 =20
> > > > > > |................|
> > > > > > *
> > > > > >=20
> > > > > > On Wed, May 12, 2021, at 4:04 PM, Ville Syrj=C3=A4l=C3=A4 wr=
ote:
> > > > > > > On Wed, May 12, 2021 at 12:31:14PM -0400, Adam Chasen wrot=
e:
> > > > > > > > Hoping I can (help) craft a patch to address what appear=
s to be an issue with overaggressive mode pruning. I am having trouble w=
ith rejection of a Dual-DVI compatible mode out of the DisplayPort  spec=
ific to i915 in Fedora 33. It seems that drm_mode_validate_pipeline is t=
he wall I hit when digging for why this mode is pruned. Requesting addit=
ional troubleshooting guidance.
> > > > > > > >=20
> > > > > > > > ```
> > > > > > > > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modelin=
e "2560x1600": 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
> > > > > > > > kernel: [drm:drm_mode_prune_invalid [drm]] Not using 256=
0x1600 mode: CLOCK_HIGH
> > > > > > > > ```
> > > > > > > >=20
> > > > > > > > This is an HP LP3065 Dual-DVI monitor connected via Disp=
layPort with a BizLink "active" adapter (recommended by HP and DELL for =
their Dual-DVI monitors).
> > > > > > > >=20
> > > > > > > > The adapter appears to be "transparent" to the system (u=
nlike some adapters reporting similar issues). I2C probes and EDIDs all =
appear to be direct from the monitor. Though, there is a mention of a m2=
DVIa "branch device" in the `i915_display_info` output.
> > > > > > > >=20
> > > > > > > > The pruned mode works with X-Org with manually setting t=
he mode via `xrandr` on Xorg (my current fallback setup):=20
> > > > > > > > `xrandr --newmode "2560x1600R" 268.50 2560 2608 2640 272=
0 1600 1603 1609 1646 +hsync -vsync`
> > > > > > > >=20
> > > > > > > > My setup is a bit different than some older reported "du=
al mode" issues (i.e. passive adapters), so I do not believe it is the "=
faulty dual mode detection" (i.e. https://github.com/hansmi/fake-dp-dual=
-mode). I was thinking it could be related by some "state" of the port d=
etection limiting output to 165MHz clock.
> > > > > > > >=20
> > > > > > > > Thanks,
> > > > > > > > Adam
> > > > > > > >=20
> > > > > > > > with `echo 0x6 > /sys/module/drm/parameters/debug`
> > > > > > > >=20
> > > > > > > > ```
> > > > > > > > kernel: [drm:drm_add_display_info [drm]] Supported Monit=
or Refresh rate range is 0 Hz - 0 Hz
> > > > > > > > kernel: [drm:drm_add_display_info [drm]] non_desktop set=
 to 0
> > > > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]=
] [CONNECTOR:95:DP-1] DFP max bpc 8, max dotclock 0, TMDS clock 25000-16=
5000
> > > > > > >=20
> > > > > > > That one seems to be saying that it's the adapter itself t=
hat's
> > > > > > > telling us it can't handle >165MHz. What does the "DPCD DF=
P: ..." line say?
> > > > > > >=20
> > > > > > > Alternatively you can do something like
> > > > > > >  for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 coun=
t=3D16=20
> > > > > > > skip=3D$((0x80)) 2>/dev/null | hexdump -C ; done
> > > > > > > to get the raw dump..
> > > > > > >=20
> > > > > > > --=20
> > > > > > > Ville Syrj=C3=A4l=C3=A4
> > > > > > > Intel
> > > > > > >=20
> > > > > > _______________________________________________
> > > > > > Intel-gfx mailing list
> > > > > > Intel-gfx@lists.freedesktop.org
> > > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > > > >=20
> > > >=20
> > > > --=20
> > > > Ville Syrj=C3=A4l=C3=A4
> > > > Intel
> > > >=20
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > >=20
>=20
> --=20
> Ville Syrj=C3=A4l=C3=A4
> Intel
>=20
