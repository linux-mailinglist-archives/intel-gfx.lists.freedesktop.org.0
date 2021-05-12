Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 332CC37D411
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 22:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 716D76E3AE;
	Wed, 12 May 2021 20:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42446E3AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 20:04:45 +0000 (UTC)
IronPort-SDR: Nkfm0hFjIiGGI/ahRGT23+ctDRx4r7XUSFLqFaRcylMEkQaaDLnQmN7zhgOMmeiqSxL8o3QmPv
 XMVW9eIfOwgA==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="197823139"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="197823139"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 13:04:29 -0700
IronPort-SDR: LjaW2ORB3PzcHY/JyN8CedlE9qz1cHSk4xfe2FiYVil+FIoBq+yTugnjULBI/KFVsEJ2Ab9EqQ
 x9Qq1uMzvoRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="430892634"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 12 May 2021 13:04:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 May 2021 23:04:26 +0300
Date: Wed, 12 May 2021 23:04:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Adam Chasen <adam@chasen.name>
Message-ID: <YJw0ysSSWXEEBtU+@intel.com>
References: <904b8186-4d49-4292-bc6e-04726c571138@beta.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <904b8186-4d49-4292-bc6e-04726c571138@beta.fastmail.com>
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

On Wed, May 12, 2021 at 12:31:14PM -0400, Adam Chasen wrote:
> Hoping I can (help) craft a patch to address what appears to be an issue =
with overaggressive mode pruning. I am having trouble with rejection of a D=
ual-DVI compatible mode out of the DisplayPort  specific to i915 in Fedora =
33. It seems that drm_mode_validate_pipeline is the wall I hit when digging=
 for why this mode is pruned. Requesting additional troubleshooting guidanc=
e.
> =

> ```
> kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "2560x1600": 60=
 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
> kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x1600 mode: CLOC=
K_HIGH
> ```
> =

> This is an HP LP3065 Dual-DVI monitor connected via DisplayPort with a Bi=
zLink "active" adapter (recommended by HP and DELL for their Dual-DVI monit=
ors).
> =

> The adapter appears to be "transparent" to the system (unlike some adapte=
rs reporting similar issues). I2C probes and EDIDs all appear to be direct =
from the monitor. Though, there is a mention of a m2DVIa "branch device" in=
 the `i915_display_info` output.
> =

> The pruned mode works with X-Org with manually setting the mode via `xran=
dr` on Xorg (my current fallback setup): =

> `xrandr --newmode "2560x1600R" 268.50 2560 2608 2640 2720 1600 1603 1609 =
1646 +hsync -vsync`
> =

> My setup is a bit different than some older reported "dual mode" issues (=
i.e. passive adapters), so I do not believe it is the "faulty dual mode det=
ection" (i.e. https://github.com/hansmi/fake-dp-dual-mode). I was thinking =
it could be related by some "state" of the port detection limiting output t=
o 165MHz clock.
> =

> Thanks,
> Adam
> =

> with `echo 0x6 > /sys/module/drm/parameters/debug`
> =

> ```
> kernel: [drm:drm_add_display_info [drm]] Supported Monitor Refresh rate r=
ange is 0 Hz - 0 Hz
> kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
> kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:95:D=
P-1] DFP max bpc 8, max dotclock 0, TMDS clock 25000-165000

That one seems to be saying that it's the adapter itself that's
telling us it can't handle >165MHz. What does the "DPCD DFP: ..." line say?

Alternatively you can do something like
 for aux in /dev/drm_dp_aux* ; do dd if=3D$aux bs=3D1 count=3D16 skip=3D$((=
0x80)) 2>/dev/null | hexdump -C ; done
to get the raw dump..

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
