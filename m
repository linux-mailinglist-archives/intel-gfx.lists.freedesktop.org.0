Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EC239BE43
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 19:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2244D6F61E;
	Fri,  4 Jun 2021 17:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3206E255
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 17:13:34 +0000 (UTC)
IronPort-SDR: o7QMArgBk2XTh2k6LUp3J8MQ3xdh4HfuPRHiPj8xZ3LOXMrhF5X1FHZEYgMAbAZ5wMGAyK6TP2
 biroIX9nNlBg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184703650"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="184703650"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:13:33 -0700
IronPort-SDR: a36I8k+cNcgQQcCpL1P56COhnDWETZNpOKM94sIlwvNp4wBOAwMb5nbZzuRy6otImalrCHKy2l
 1Rz3YuHPnuLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="401021385"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 04 Jun 2021 10:13:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Jun 2021 20:13:28 +0300
Date: Fri, 4 Jun 2021 20:13:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Adam Chasen <adam@chasen.name>
Message-ID: <YLpfOOiLnckvZe8A@intel.com>
References: <904b8186-4d49-4292-bc6e-04726c571138@beta.fastmail.com>
 <YJw0ysSSWXEEBtU+@intel.com>
 <2b087694-6698-4970-9baa-b408e9ab1641@beta.fastmail.com>
 <275c025e-4366-4347-aeb5-c002b5ac00f3@beta.fastmail.com>
 <YLTvfj+WfKMv8qid@intel.com>
 <a3768e4a-976b-49f1-b47b-c088ea232d33@www.fastmail.com>
 <8697eab6-ed7c-45b3-8055-53beff47f844@beta.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8697eab6-ed7c-45b3-8055-53beff47f844@beta.fastmail.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 04, 2021 at 12:57:25PM -0400, Adam Chasen wrote:
> Thanks for staying with me! Still hoping I can get back to using KMS/Wayl=
and combination with my setup.
> =

> I understand the current recommendation is to push the mode setting to th=
e wayland compositor per Ville here: https://gitlab.freedesktop.org/drm/int=
el/-/issues/393#note_337616
> =

> Alas, I am using Mutter (similar to issue #393) which (historically) does=
n't support mode setting (yet?).
> =

> There is mention of drm_dp_downstream_max_clock() in an i915 comment, whi=
ch looks like could be a reference to drm_dp_downstream_max_tmds_clock(). =

> =

> It seems there is a hard coded 165MHz max for DP_DWN_STRM_PORT_TYPE_TMDS =
or (note the comment in the below code):
> =

> 	case DP_DS_PORT_TYPE_DVI:
> 		if ((dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DETAILED_CAP_INFO_AVAILABLE) =
=3D=3D 0)
> 			return 165000;
> 		/* FIXME what to do about DVI dual link? */
> 		return port_cap[1] * 2500;
> =

> Still wondering about the "one byte" format is for configuration, but I p=
resume it is setting DP_DETAILED_CAP_INFO_AVAILABLE to 0 which triggers thi=
s.
> =

> Is there a recommended approach to setting the port to support Dual-Link =
based on EDID response (or is it too late by the time we get  the EDID)?

EDID can't help us since it would only tell us whether the display
supports dual-link or not. The dongle may still be single link only.

> =

> Is there a recommended approach for a "disable filter", or "manual modese=
t"? There are others who seem interested in overriding the filtering logic =
(e.g. "do what I say even though it isn't clear it will work"). https://git=
lab.freedesktop.org/drm/intel/-/issues/393#note_829142

Userspace is free to force any it wants. But I guess mutter+wayland
doesn't support that for some reason.

I've occasionally pondered about adding some kind of connector property
for this, but not sure wht it should look like. And it would still
require userspace support to set it. Another idea would be to extend the
video=3D cmdline with some kind of knob that lets you override these
limits. But again it's a bit hard to come up with a decent solution since
there are various different clock limits involved (TMDS clock for HDMI
vs. link rate for DP, dotclock for everyting). And just saying "ignore
all limits" is not a very flexible solution since there may be some
limit you do want to enforce, just not as low as what we would
auto-detect.

> =

> -Adam
> =

> -- Related --
> =

> I found these following a thread on the 165MHz clock limit in the context=
 of DP dual mode HDMI dongles with a patch experimenting with turning off t=
he limit: https://bugs.freedesktop.org/show_bug.cgi?id=3D112018#c2 (now htt=
ps://gitlab.freedesktop.org/drm/intel/-/issues/511) There is even a hack fo=
r what appears to be a similar limitation
> (using Dual mode DP): https://github.com/hansmi/fake-dp-dual-mode
> =

> Researching answers for previous questions: =

> =

> "one byte" cap:
> /*
>  * 0x80-0x8f describe downstream port capabilities, but there are two lay=
outs
>  * based on whether DP_DETAILED_CAP_INFO_AVAILABLE was set.  If it was no=
t,
>  * each port's descriptor is one byte wide.  If it was set, each port's is
>  * four bytes wide, starting with the one byte from the base info.  As of
>  * DP interop v1.1a only VGA defines additional detail.
>  */
> =

> And from a commit:
> * Fixup logic for calculating the downstream port length to account for
>   the fact that downstream port caps can be either 1 byte or 4 bytes
>   long. We can actually skip fixing the max_clock/max_bpc helpers here
>   since they all check for DP_DETAILED_CAP_INFO_AVAILABLE anyway.
> =

> DPCD =3D DisplayPort Configuration Data
> DFP appears to be a structure to hold configuration data as part of intel=
_attached_dp(connector):
> 	/* Downstream facing port caps */
> 	struct {
> 		int min_tmds_clock, max_tmds_clock;
> 		int max_dotclock;
> 		u8 max_bpc;
> 		bool ycbcr_444_to_420;
> 	} dfp;
> =

> On Mon, May 31, 2021, at 10:28 AM, Adam Chasen wrote:
> > Ville,
> > Thanks for the additional detail!
> > =

> > I looked up HPD and understand it is hot plug detection, but I didn't =

> > find much for "one byte caps format". I assume this is short hand for =

> > "capability format".
> > =

> > Is the "one byte" format a limitation from the monitor, the dongle, the =

> > motherboard, or the chipset?
> > =

> > What are some examples of other "capability formats"?
> > =

> > Is there a recommended approach to setting the port to support =

> > Dual-Link based on EDID response (or is it too late by the time we get =

> > the EDID)?
> > =

> > If there is no obvious automatic solution, do you have an example of a =

> > "manual override" (i.e. module argument) for another situation I can =

> > use as a guide?
> > =

> > Still curious what DPCD DFP stands for.
> > =

> > Thanks,
> > Adam
> > =

> > On Mon, May 31, 2021, at 10:15 AM, Ville Syrj=E4l=E4 wrote:
> > > On Fri, May 28, 2021 at 02:15:46PM -0400, Adam Chasen wrote:
> > > > Any further advice on tracing what is triggering what appears to be=
 the limitation of the clock? My guess is it is imposing a DVI Single-Link =
speed (165000) limitation on the dual-link DVI adapter.
> > > > =

> > > > > TMDS clock 25000-165000
> > > > =

> > > > I am able to override in xorg with xrandr to 268500
> > > > =

> > > > Per Ville's request:
> > > > DPCD DFP: 0a
> > > > =

> > > > What is the DPCD DFP?
> > > =

> > > It indicates the port is DVI with HPD capability. But unfortunately i=
t's
> > > using the one byte caps format which doesn't let us differentiate
> > > between single link and dual link DVI. So we take the more cautious
> > > apporach and assume it's single link.
> > > =

> > > > =

> > > > Thanks,
> > > > Adam
> > > > =

> > > > On Wed, May 12, 2021, at 5:07 PM, Adam Chasen wrote:
> > > > > Ville,
> > > > > DPCD DFP: 0a
> > > > > =

> > > > > What is the DPCD DFP?
> > > > > =

> > > > > Additional info, this is the first time there has been an issue w=
ith =

> > > > > this adapter not working (i.e. it must have been operating above =

> > > > > 165MHz), but it is possible other drivers have "ignored" things a=
nd =

> > > > > just followed the EDID.
> > > > > =

> > > > > Thanks!
> > > > > Adam
> > > > > =

> > > > > kernel: [drm:drm_helper_probe_single_connector_modes [drm_kms_hel=
per]] =

> > > > > [CONNECTOR:95:DP-1] =

> > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] =

> > > > > [CONNECTOR:95:DP-1]
> > > > > kernel: [drm:drm_dp_read_dpcd_caps [drm_kms_helper]] AUX C/DDI C/=
PHY C: =

> > > > > DPCD: 11 0a 84 01 00 05 00 81 00 00 00 00 00 00 00
> > > > > kernel: [drm:drm_dp_read_desc [drm_kms_helper]] AUX C/DDI C/PHY C=
: DP =

> > > > > branch: OUI 00-80-e1 dev-ID m2DVIa HW-rev 0.1 SW-rev 2.0 quirks 0=
x0000
> > > > > kernel: [drm:drm_dp_read_downstream_info [drm_kms_helper]] AUX C/=
DDI =

> > > > > C/PHY C: DPCD DFP: 0a
> > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:=
94:DDI =

> > > > > C/PHY C] MST support: port: yes, sink: no, modparam: yes
> > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sour=
ce =

> > > > > rates: 162000, 216000, 270000, 324000, 432000, 540000
> > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =

> > > > > rates: 162000, 270000
> > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] comm=
on =

> > > > > rates: 162000, 270000
> > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY =
C: =

> > > > > native defer
> > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY =
C: =

> > > > > native defer
> > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY =
C: =

> > > > > native defer
> > > > > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY =
C: =

> > > > > native defer
> > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] =

> > > > > [CONNECTOR:95:DP-1] DFP max bpc 8, max dotclock 0, TMDS clock =

> > > > > 25000-165000
> > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] =

> > > > > [CONNECTOR:95:DP-1] YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:2:0 =

> > > > > conversion? no =

> > > > > kernel: [drm:drm_dp_get_edid_quirks [drm_kms_helper]] DP sink: ED=
ID mfg =

> > > > > 22-f0 prod-ID 90-26 quirks: 0x0000
> > > > > kernel: [drm:drm_add_edid_modes [drm]] ELD: no CEA Extension found
> > > > > kernel: [drm:drm_add_display_info [drm]] Supported Monitor Refres=
h rate =

> > > > > range is 0 Hz - 0 Hz
> > > > > kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
> > > > > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "2560x1=
600": =

> > > > > 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
> > > > > kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x1600 mo=
de: =

> > > > > CLOCK_HIGH
> > > > > kernel: [drm:drm_helper_probe_single_connector_modes [drm_kms_hel=
per]] =

> > > > > [CONNECTOR:95:DP-1] probed modes :
> > > > > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "1280x8=
00": =

> > > > > 60 71000 1280 1328 1360 1440 800 803 809 823 0x40 0x9
> > > > > =

> > > > > # for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 count=3D16 =

> > > > > skip=3D$((0x80)) 2>/dev/null | hexdump -C ; done
> > > > > 00000000  0a 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > 00000010
> > > > > 00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > 00000010
> > > > > =

> > > > > # for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 2>/dev/nul=
l | =

> > > > > hexdump -C ; done
> > > > > 00000000  11 0a 84 01 00 05 00 81  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > 00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000080  0a 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > 00000090  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000100  0a 84 00 08 08 08 08 00  01 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > 00000110  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000200  01 00 77 77 81 00 44 44  00 00 00 00 00 00 00 00  =

> > > > > |..ww..DD........|
> > > > > 00000210  00 80 00 80 00 80 00 80  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > 00000220  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000240  00 00 00 00 00 00 20 00  00 00 00 00 00 00 00 00  |....=
.. =

> > > > > .........|
> > > > > 00000250  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000300  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 80  =

> > > > > |................|
> > > > > 00000310  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000400  47 53 53 00 00 01 01 00  01 00 00 90 02 00 00 90  =

> > > > > |GSS.............|
> > > > > 00000410  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000500  00 80 e1 6d 32 44 56 49  61 01 02 00 00 cf 00 00  =

> > > > > |...m2DVIa.......|
> > > > > 00000510  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > 00000600  01 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > 00000610  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > > > > |................|
> > > > > *
> > > > > =

> > > > > On Wed, May 12, 2021, at 4:04 PM, Ville Syrj=E4l=E4 wrote:
> > > > > > On Wed, May 12, 2021 at 12:31:14PM -0400, Adam Chasen wrote:
> > > > > > > Hoping I can (help) craft a patch to address what appears to =
be an issue with overaggressive mode pruning. I am having trouble with reje=
ction of a Dual-DVI compatible mode out of the DisplayPort  specific to i91=
5 in Fedora 33. It seems that drm_mode_validate_pipeline is the wall I hit =
when digging for why this mode is pruned. Requesting additional troubleshoo=
ting guidance.
> > > > > > > =

> > > > > > > ```
> > > > > > > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "25=
60x1600": 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
> > > > > > > kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x160=
0 mode: CLOCK_HIGH
> > > > > > > ```
> > > > > > > =

> > > > > > > This is an HP LP3065 Dual-DVI monitor connected via DisplayPo=
rt with a BizLink "active" adapter (recommended by HP and DELL for their Du=
al-DVI monitors).
> > > > > > > =

> > > > > > > The adapter appears to be "transparent" to the system (unlike=
 some adapters reporting similar issues). I2C probes and EDIDs all appear t=
o be direct from the monitor. Though, there is a mention of a m2DVIa "branc=
h device" in the `i915_display_info` output.
> > > > > > > =

> > > > > > > The pruned mode works with X-Org with manually setting the mo=
de via `xrandr` on Xorg (my current fallback setup): =

> > > > > > > `xrandr --newmode "2560x1600R" 268.50 2560 2608 2640 2720 160=
0 1603 1609 1646 +hsync -vsync`
> > > > > > > =

> > > > > > > My setup is a bit different than some older reported "dual mo=
de" issues (i.e. passive adapters), so I do not believe it is the "faulty d=
ual mode detection" (i.e. https://github.com/hansmi/fake-dp-dual-mode). I w=
as thinking it could be related by some "state" of the port detection limit=
ing output to 165MHz clock.
> > > > > > > =

> > > > > > > Thanks,
> > > > > > > Adam
> > > > > > > =

> > > > > > > with `echo 0x6 > /sys/module/drm/parameters/debug`
> > > > > > > =

> > > > > > > ```
> > > > > > > kernel: [drm:drm_add_display_info [drm]] Supported Monitor Re=
fresh rate range is 0 Hz - 0 Hz
> > > > > > > kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
> > > > > > > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CO=
NNECTOR:95:DP-1] DFP max bpc 8, max dotclock 0, TMDS clock 25000-165000
> > > > > > =

> > > > > > That one seems to be saying that it's the adapter itself that's
> > > > > > telling us it can't handle >165MHz. What does the "DPCD DFP: ..=
." line say?
> > > > > > =

> > > > > > Alternatively you can do something like
> > > > > >  for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 count=3D1=
6 =

> > > > > > skip=3D$((0x80)) 2>/dev/null | hexdump -C ; done
> > > > > > to get the raw dump..
> > > > > > =

> > > > > > -- =

> > > > > > Ville Syrj=E4l=E4
> > > > > > Intel
> > > > > > =

> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > > > =

> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> > > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
