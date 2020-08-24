Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E1C25071C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 20:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A6B6E428;
	Mon, 24 Aug 2020 18:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128E66E428
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 18:04:42 +0000 (UTC)
IronPort-SDR: OAHtWAF+yr78+Bv2bFVSq93c1d4aa6uUs8h4PGsXAzCp56zxvfGjqAhfh3krPF6iSRvFmQZuoD
 B/nLedBRmE2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="157016088"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="157016088"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 11:04:41 -0700
IronPort-SDR: LaPzsUVRKsJAjxQTXGLpnz9bcVE2WfRx/LmUZnP6AVdLKNQlZ0fhliD0KnuniXJ9Mo3ZfSSegI
 rI2dWLSvUcqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="298806113"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 24 Aug 2020 11:04:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Aug 2020 21:04:38 +0300
Date: Mon, 24 Aug 2020 21:04:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20200824180438.GI6112@intel.com>
References: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
 <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
 <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
 <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
 <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
 <30685BA7-1D02-48A0-9B7A-4933ED2B8F0D@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30685BA7-1D02-48A0-9B7A-4933ED2B8F0D@canonical.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [Regression] "drm/i915: Implement display w/a
 #1143" breaks HDMI on ASUS GL552VW
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Runyan,
 Arthur J" <arthur.j.runyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 17, 2020 at 02:17:49PM +0800, Kai-Heng Feng wrote:
> =

> =

> > On Aug 17, 2020, at 00:22, Runyan, Arthur J <arthur.j.runyan@intel.com>=
 wrote:
> > =

> > You'll need to read out the DDI_BUF_TRANS_* and DISPIO_CR_TX_BMU_CR0 re=
gisters at boot before i915 programs them and compare with what driver prog=
rams.  =

> > Rodrigo can probably show you how. =

> =

> Right, I'll wait for a patch then :)

To grab the BIOS reg values we just have to make sure the driver
doesn't load. Eg. pass something like =

"modprobe.blacklist=3Di915,snd_hda_intel 3" to the kernel cmdline
(+ whatever other magic ubuntu might require). Confirm with
something like "lsmod | grep i915" to make sure the driver didn't
sneak in despite our best efforts.

Then we can dump the registers with intel_reg from igt-gpu-tools:
intel_reg read --count 20 0x64E00 0x64E60 0x64EC0 0x64F20 0x64F80
intel_reg read 0x64000 0x64100 0x64200 0x64300 0x64400 0x6C00C

The only somewhat suspicious thing I noticed is that we treat
DISPIO_CR_TX_BMU_CR0:tx_blnclegdisbl as a bitmask (bit 23 -> DDI A,
bit 24 -> DDI B, etc.) whereas the spec seems to be saying that we
should just zero out all the bits of tx_blnclegdisbl when any DDI
needs iboost. Art, is our interpretation of the bits correct or just
a fairy tale?

> =

> Kai-Heng
> =

> > =

> > -----Original Message-----
> > From: Kai-Heng Feng <kai.heng.feng@canonical.com> =

> > Sent: Thursday, August 13, 2020 10:14 PM
> > To: Runyan, Arthur J <arthur.j.runyan@intel.com>
> > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Ville Syrj=E4l=E4 <ville.sy=
rjala@linux.intel.com>; intel-gfx <intel-gfx@lists.freedesktop.org>
> > Subject: Re: [Regression] "drm/i915: Implement display w/a #1143" break=
s HDMI on ASUS GL552VW
> > =

> > Hi,
> > =

> >> On Aug 14, 2020, at 01:56, Runyan, Arthur J <arthur.j.runyan@intel.com=
> wrote:
> >> =

> >> The workaround is freeing up stuck vswing values to let new vswing pro=
gramming kick in.  Maybe the new vswing values are wrong.
> >> Try checking the vswing that driver programs against what BIOS/GOP pro=
grams.
> > =

> > Do you mean to print out value of I915_READ()?
> > val =3D I915_READ(CHICKEN_TRANS(transcoder));
> > =

> > Kai-Heng
> > =

> >> =

> >> -----Original Message-----
> >> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> Sent: Thursday, August 13, 2020 9:50 AM
> >> To: Kai-Heng Feng <kai.heng.feng@canonical.com>; Runyan, Arthur J =

> >> <arthur.j.runyan@intel.com>
> >> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; intel-gfx =

> >> <intel-gfx@lists.freedesktop.org>
> >> Subject: Re: [Regression] "drm/i915: Implement display w/a #1143" =

> >> breaks HDMI on ASUS GL552VW
> >> =

> >> Art, any comment here?
> >> =

> >> I just checked and the  W/a 1143 is implemented as described, but it i=
s failing HDMI on this hybrid system.
> >> =

> >>> On Aug 12, 2020, at 9:07 PM, Kai-Heng Feng <kai.heng.feng@canonical.c=
om> wrote:
> >>> =

> >>> Hi,
> >>> =

> >>> There's a regression reported that HDMI output stops working after os=
 upgrade:
> >>> https://bugs.launchpad.net/bugs/1871721
> >>> =

> >>> Here's the bisect result:
> >>> 0519c102f5285476d7868a387bdb6c58385e4074 is the first bad commit =

> >>> commit 0519c102f5285476d7868a387bdb6c58385e4074
> >>> Author: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>> Date:   Mon Jan 22 19:41:31 2018 +0200
> >>> =

> >>>  drm/i915: Implement display w/a #1143
> >>> =

> >>>  Apparently SKL/KBL/CFL need some manual help to get the
> >>>  programmed HDMI vswing to stick. Implement the relevant
> >>>  workaround (display w/a #1143).
> >>> =

> >>>  Note that the relevant chicken bits live in a transcoder register
> >>>  even though the bits affect a specific DDI port rather than a
> >>>  specific transcoder. Hence we must pick the correct transcoder
> >>>  register instance based on the port rather than based on the
> >>>  cpu_transcoder.
> >>> =

> >>>  Also note that for completeness I included support for DDI A/E
> >>>  in the code even though we never have HDMI on those ports.
> >>> =

> >>>  v2: CFL needs the w/a as well (Rodrigo and Art)
> >>> =

> >>>  Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >>>  Cc: Art Runyan <arthur.j.runyan@intel.com>
> >>>  Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>>  Link: https://patchwork.freedesktop.org/patch/msgid/20180122174131.2=
8046-1-ville.syrjala@linux.intel.com
> >>>  Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >>> =

> >>> =

> >>> dmesg from drm-tip with drm.debug=3D0xe can be found here:
> >>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comments
> >>> /
> >>> 64
> >>> =

> >>> Kai-Heng
> >> =

> >> =

> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
