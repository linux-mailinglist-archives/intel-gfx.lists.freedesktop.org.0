Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CAF395FE5
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 16:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648F46E50D;
	Mon, 31 May 2021 14:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4986E4CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 14:15:31 +0000 (UTC)
IronPort-SDR: KajsFyhBpSNp6JRIflmfho9bNtKzJiLmmpWHReiXFPHE0pEdFVLq3jx2ijvPnNqwpvxaswlI2W
 LUGRyRRBpKLA==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="183721908"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="183721908"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 07:15:29 -0700
IronPort-SDR: eYCQItADfWhf7ZNmUEkvueOxxo6ZFcEM5MrT9OaGgHuilhyPotrJ9Qyf2UzHVhNJONxDv+ff+e
 12MJwpfFKuYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="478927533"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 31 May 2021 07:15:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 May 2021 17:15:26 +0300
Date: Mon, 31 May 2021 17:15:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Adam Chasen <adam@chasen.name>
Message-ID: <YLTvfj+WfKMv8qid@intel.com>
References: <904b8186-4d49-4292-bc6e-04726c571138@beta.fastmail.com>
 <YJw0ysSSWXEEBtU+@intel.com>
 <2b087694-6698-4970-9baa-b408e9ab1641@beta.fastmail.com>
 <275c025e-4366-4347-aeb5-c002b5ac00f3@beta.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <275c025e-4366-4347-aeb5-c002b5ac00f3@beta.fastmail.com>
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

On Fri, May 28, 2021 at 02:15:46PM -0400, Adam Chasen wrote:
> Any further advice on tracing what is triggering what appears to be the l=
imitation of the clock? My guess is it is imposing a DVI Single-Link speed =
(165000) limitation on the dual-link DVI adapter.
> =

> > TMDS clock 25000-165000
> =

> I am able to override in xorg with xrandr to 268500
> =

> Per Ville's request:
> DPCD DFP: 0a
> =

> What is the DPCD DFP?

It indicates the port is DVI with HPD capability. But unfortunately it's
using the one byte caps format which doesn't let us differentiate
between single link and dual link DVI. So we take the more cautious
apporach and assume it's single link.

> =

> Thanks,
> Adam
> =

> On Wed, May 12, 2021, at 5:07 PM, Adam Chasen wrote:
> > Ville,
> > DPCD DFP: 0a
> > =

> > What is the DPCD DFP?
> > =

> > Additional info, this is the first time there has been an issue with =

> > this adapter not working (i.e. it must have been operating above =

> > 165MHz), but it is possible other drivers have "ignored" things and =

> > just followed the EDID.
> > =

> > Thanks!
> > Adam
> > =

> > kernel: [drm:drm_helper_probe_single_connector_modes [drm_kms_helper]] =

> > [CONNECTOR:95:DP-1] =

> > kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] =

> > [CONNECTOR:95:DP-1]
> > kernel: [drm:drm_dp_read_dpcd_caps [drm_kms_helper]] AUX C/DDI C/PHY C: =

> > DPCD: 11 0a 84 01 00 05 00 81 00 00 00 00 00 00 00
> > kernel: [drm:drm_dp_read_desc [drm_kms_helper]] AUX C/DDI C/PHY C: DP =

> > branch: OUI 00-80-e1 dev-ID m2DVIa HW-rev 0.1 SW-rev 2.0 quirks 0x0000
> > kernel: [drm:drm_dp_read_downstream_info [drm_kms_helper]] AUX C/DDI =

> > C/PHY C: DPCD DFP: 0a
> > kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:94:DDI =

> > C/PHY C] MST support: port: yes, sink: no, modparam: yes
> > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] source =

> > rates: 162000, 216000, 270000, 324000, 432000, 540000
> > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =

> > rates: 162000, 270000
> > kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] common =

> > rates: 162000, 270000
> > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY C: =

> > native defer
> > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY C: =

> > native defer
> > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY C: =

> > native defer
> > kernel: [drm:drm_dp_i2c_do_msg [drm_kms_helper]] AUX C/DDI C/PHY C: =

> > native defer
> > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] =

> > [CONNECTOR:95:DP-1] DFP max bpc 8, max dotclock 0, TMDS clock =

> > 25000-165000
> > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] =

> > [CONNECTOR:95:DP-1] YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:2:0 =

> > conversion? no =

> > kernel: [drm:drm_dp_get_edid_quirks [drm_kms_helper]] DP sink: EDID mfg =

> > 22-f0 prod-ID 90-26 quirks: 0x0000
> > kernel: [drm:drm_add_edid_modes [drm]] ELD: no CEA Extension found
> > kernel: [drm:drm_add_display_info [drm]] Supported Monitor Refresh rate =

> > range is 0 Hz - 0 Hz
> > kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
> > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "2560x1600": =

> > 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
> > kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x1600 mode: =

> > CLOCK_HIGH
> > kernel: [drm:drm_helper_probe_single_connector_modes [drm_kms_helper]] =

> > [CONNECTOR:95:DP-1] probed modes :
> > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "1280x800": =

> > 60 71000 1280 1328 1360 1440 800 803 809 823 0x40 0x9
> > =

> > # for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 count=3D16 =

> > skip=3D$((0x80)) 2>/dev/null | hexdump -C ; done
> > 00000000  0a 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > 00000010
> > 00000000  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > 00000010
> > =

> > # for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 2>/dev/null | =

> > hexdump -C ; done
> > 00000000  11 0a 84 01 00 05 00 81  00 00 00 00 00 00 00 00  =

> > |................|
> > 00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000080  0a 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > 00000090  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000100  0a 84 00 08 08 08 08 00  01 00 00 00 00 00 00 00  =

> > |................|
> > 00000110  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000200  01 00 77 77 81 00 44 44  00 00 00 00 00 00 00 00  =

> > |..ww..DD........|
> > 00000210  00 80 00 80 00 80 00 80  00 00 00 00 00 00 00 00  =

> > |................|
> > 00000220  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000240  00 00 00 00 00 00 20 00  00 00 00 00 00 00 00 00  |...... =

> > .........|
> > 00000250  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000300  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 80  =

> > |................|
> > 00000310  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000400  47 53 53 00 00 01 01 00  01 00 00 90 02 00 00 90  =

> > |GSS.............|
> > 00000410  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000500  00 80 e1 6d 32 44 56 49  61 01 02 00 00 cf 00 00  =

> > |...m2DVIa.......|
> > 00000510  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > 00000600  01 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > 00000610  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  =

> > |................|
> > *
> > =

> > On Wed, May 12, 2021, at 4:04 PM, Ville Syrj=E4l=E4 wrote:
> > > On Wed, May 12, 2021 at 12:31:14PM -0400, Adam Chasen wrote:
> > > > Hoping I can (help) craft a patch to address what appears to be an =
issue with overaggressive mode pruning. I am having trouble with rejection =
of a Dual-DVI compatible mode out of the DisplayPort  specific to i915 in F=
edora 33. It seems that drm_mode_validate_pipeline is the wall I hit when d=
igging for why this mode is pruned. Requesting additional troubleshooting g=
uidance.
> > > > =

> > > > ```
> > > > kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "2560x160=
0": 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
> > > > kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x1600 mode=
: CLOCK_HIGH
> > > > ```
> > > > =

> > > > This is an HP LP3065 Dual-DVI monitor connected via DisplayPort wit=
h a BizLink "active" adapter (recommended by HP and DELL for their Dual-DVI=
 monitors).
> > > > =

> > > > The adapter appears to be "transparent" to the system (unlike some =
adapters reporting similar issues). I2C probes and EDIDs all appear to be d=
irect from the monitor. Though, there is a mention of a m2DVIa "branch devi=
ce" in the `i915_display_info` output.
> > > > =

> > > > The pruned mode works with X-Org with manually setting the mode via=
 `xrandr` on Xorg (my current fallback setup): =

> > > > `xrandr --newmode "2560x1600R" 268.50 2560 2608 2640 2720 1600 1603=
 1609 1646 +hsync -vsync`
> > > > =

> > > > My setup is a bit different than some older reported "dual mode" is=
sues (i.e. passive adapters), so I do not believe it is the "faulty dual mo=
de detection" (i.e. https://github.com/hansmi/fake-dp-dual-mode). I was thi=
nking it could be related by some "state" of the port detection limiting ou=
tput to 165MHz clock.
> > > > =

> > > > Thanks,
> > > > Adam
> > > > =

> > > > with `echo 0x6 > /sys/module/drm/parameters/debug`
> > > > =

> > > > ```
> > > > kernel: [drm:drm_add_display_info [drm]] Supported Monitor Refresh =
rate range is 0 Hz - 0 Hz
> > > > kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
> > > > kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTO=
R:95:DP-1] DFP max bpc 8, max dotclock 0, TMDS clock 25000-165000
> > > =

> > > That one seems to be saying that it's the adapter itself that's
> > > telling us it can't handle >165MHz. What does the "DPCD DFP: ..." lin=
e say?
> > > =

> > > Alternatively you can do something like
> > >  for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 count=3D16 =

> > > skip=3D$((0x80)) 2>/dev/null | hexdump -C ; done
> > > to get the raw dump..
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
