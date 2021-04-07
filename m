Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6A3356EC0
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 16:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1816E91C;
	Wed,  7 Apr 2021 14:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C77BD6E91C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 14:34:03 +0000 (UTC)
IronPort-SDR: LfKZbkAlWg3QDuRKvTMvwyZZ5Wb/IrPZqyD4K6LC15MP2xVT75aoEAGCV8cl6UuaLTe+BSGjw8
 D5ybaD96zwBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="191158805"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="191158805"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 07:34:03 -0700
IronPort-SDR: ldihhA/59HDnMc+e64owLkHua+A4oRtugQoCGxW98enhMXXiwJrmezE3a0GLXehmH+8+7ZuGfd
 2hFWBlBWXItA==
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="448271910"
Received: from ldmccree-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.209.131.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 07:34:02 -0700
Date: Wed, 7 Apr 2021 10:34:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Jani Saarinen <jani.saarinen@intel.com>
Message-ID: <YG3C2iCZPPw+TwZU@intel.com>
References: <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
 <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
 <30685BA7-1D02-48A0-9B7A-4933ED2B8F0D@canonical.com>
 <20200824180438.GI6112@intel.com>
 <BYAPR11MB31903D08E7BF1B2084309E80B2560@BYAPR11MB3190.namprd11.prod.outlook.com>
 <010FB10D-B1EF-4C2E-A8AD-B7409E771BD0@canonical.com>
 <20200826130511.GN6112@intel.com>
 <432E1B70-7F52-4DF7-8887-0769F17DAD30@canonical.com>
 <E1DE5E53-2C0B-4D5A-8D86-736639426A9D@canonical.com>
 <20201013111532.GY6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201013111532.GY6112@intel.com>
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
Cc: "Runyan, Arthur J" <arthur.j.runyan@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 13, 2020 at 02:15:32PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Oct 13, 2020 at 01:20:35PM +0800, Kai-Heng Feng wrote:
> > =

> > =

> > > On Sep 3, 2020, at 14:26, Kai-Heng Feng <kai.heng.feng@canonical.com>=
 wrote:
> > > =

> > > =

> > > =

> > >> On Aug 26, 2020, at 21:05, Ville Syrj=E4l=E4 <ville.syrjala@linux.in=
tel.com> wrote:
> > >> =

> > >> On Wed, Aug 26, 2020 at 12:40:15PM +0800, Kai-Heng Feng wrote:
> > >>> Hi,
> > >>> =

> > >>>> On Aug 25, 2020, at 02:46, Runyan, Arthur J <arthur.j.runyan@intel=
.com> wrote:
> > >>>> =

> > >>>> I remember some strangeness about the blnclegdisbl.  I'll see if I=
 can dig up some more.
> > >>> =

> > >>> =

> > >>> The register read can be found at [1] and [2].
> > >>> =

> > >>> [1] https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/co=
mments/119
> > >>> [2] https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/co=
mments/120
> > >> =

> > >> Looks like it's using the 400mV/0dB setting. Can we get the same dum=
ps
> > >> with the driver loaded just to confirm whether we're using different
> > >> settings? =

> > >> =

> > >> Also a dump of /sys/kernel/debug/dri/0/i915_vbt would be good
> > >> to have.
> > > =

> > > https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comments=
/124
> > > https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comments=
/125
> > > https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comments=
/126
> > =

> > A gentle ping...
> =

> I cooked up some hacks for you to try:
> git://github.com/vsyrjala/linux.git skl_vswing_wa_hacks
> =

> An upstream bug report would probably be a good idea so that the
> communication doesn't have to go through a middle man over email...

any update on this?
Cc: Jani

> =

> > =

> > > =

> > > Kai-Heng
> > > =

> > >> =

> > >>> =

> > >>> Kai-Heng
> > >>> =

> > >>>> =

> > >>>> -----Original Message-----
> > >>>> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

> > >>>> Sent: Monday, August 24, 2020 11:05 AM
> > >>>> To: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > >>>> Cc: Runyan, Arthur J <arthur.j.runyan@intel.com>; Vivi, Rodrigo <r=
odrigo.vivi@intel.com>; intel-gfx <intel-gfx@lists.freedesktop.org>
> > >>>> Subject: Re: [Regression] "drm/i915: Implement display w/a #1143" =
breaks HDMI on ASUS GL552VW
> > >>>> =

> > >>>> On Mon, Aug 17, 2020 at 02:17:49PM +0800, Kai-Heng Feng wrote:
> > >>>>> =

> > >>>>> =

> > >>>>>> On Aug 17, 2020, at 00:22, Runyan, Arthur J <arthur.j.runyan@int=
el.com> wrote:
> > >>>>>> =

> > >>>>>> You'll need to read out the DDI_BUF_TRANS_* and DISPIO_CR_TX_BMU=
_CR0 registers at boot before i915 programs them and compare with what driv=
er programs.  =

> > >>>>>> Rodrigo can probably show you how. =

> > >>>>> =

> > >>>>> Right, I'll wait for a patch then :)
> > >>>> =

> > >>>> To grab the BIOS reg values we just have to make sure the driver d=
oesn't load. Eg. pass something like "modprobe.blacklist=3Di915,snd_hda_int=
el 3" to the kernel cmdline (+ whatever other magic ubuntu might require). =
Confirm with something like "lsmod | grep i915" to make sure the driver did=
n't sneak in despite our best efforts.
> > >>>> =

> > >>>> Then we can dump the registers with intel_reg from igt-gpu-tools:
> > >>>> intel_reg read --count 20 0x64E00 0x64E60 0x64EC0 0x64F20 0x64F80 =
intel_reg read 0x64000 0x64100 0x64200 0x64300 0x64400 0x6C00C
> > >>>> =

> > >>>> The only somewhat suspicious thing I noticed is that we treat DISP=
IO_CR_TX_BMU_CR0:tx_blnclegdisbl as a bitmask (bit 23 -> DDI A, bit 24 -> D=
DI B, etc.) whereas the spec seems to be saying that we should just zero ou=
t all the bits of tx_blnclegdisbl when any DDI needs iboost. Art, is our in=
terpretation of the bits correct or just a fairy tale?
> > >>>> =

> > >>>>> =

> > >>>>> Kai-Heng
> > >>>>> =

> > >>>>>> =

> > >>>>>> -----Original Message-----
> > >>>>>> From: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > >>>>>> Sent: Thursday, August 13, 2020 10:14 PM
> > >>>>>> To: Runyan, Arthur J <arthur.j.runyan@intel.com>
> > >>>>>> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Ville Syrj=E4l=E4 =

> > >>>>>> <ville.syrjala@linux.intel.com>; intel-gfx =

> > >>>>>> <intel-gfx@lists.freedesktop.org>
> > >>>>>> Subject: Re: [Regression] "drm/i915: Implement display w/a #1143=
" =

> > >>>>>> breaks HDMI on ASUS GL552VW
> > >>>>>> =

> > >>>>>> Hi,
> > >>>>>> =

> > >>>>>>> On Aug 14, 2020, at 01:56, Runyan, Arthur J <arthur.j.runyan@in=
tel.com> wrote:
> > >>>>>>> =

> > >>>>>>> The workaround is freeing up stuck vswing values to let new vsw=
ing programming kick in.  Maybe the new vswing values are wrong.
> > >>>>>>> Try checking the vswing that driver programs against what BIOS/=
GOP programs.
> > >>>>>> =

> > >>>>>> Do you mean to print out value of I915_READ()?
> > >>>>>> val =3D I915_READ(CHICKEN_TRANS(transcoder));
> > >>>>>> =

> > >>>>>> Kai-Heng
> > >>>>>> =

> > >>>>>>> =

> > >>>>>>> -----Original Message-----
> > >>>>>>> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > >>>>>>> Sent: Thursday, August 13, 2020 9:50 AM
> > >>>>>>> To: Kai-Heng Feng <kai.heng.feng@canonical.com>; Runyan, Arthur=
 J =

> > >>>>>>> <arthur.j.runyan@intel.com>
> > >>>>>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; intel-gf=
x =

> > >>>>>>> <intel-gfx@lists.freedesktop.org>
> > >>>>>>> Subject: Re: [Regression] "drm/i915: Implement display w/a #114=
3" =

> > >>>>>>> breaks HDMI on ASUS GL552VW
> > >>>>>>> =

> > >>>>>>> Art, any comment here?
> > >>>>>>> =

> > >>>>>>> I just checked and the  W/a 1143 is implemented as described, b=
ut it is failing HDMI on this hybrid system.
> > >>>>>>> =

> > >>>>>>>> On Aug 12, 2020, at 9:07 PM, Kai-Heng Feng <kai.heng.feng@cano=
nical.com> wrote:
> > >>>>>>>> =

> > >>>>>>>> Hi,
> > >>>>>>>> =

> > >>>>>>>> There's a regression reported that HDMI output stops working a=
fter os upgrade:
> > >>>>>>>> https://bugs.launchpad.net/bugs/1871721
> > >>>>>>>> =

> > >>>>>>>> Here's the bisect result:
> > >>>>>>>> 0519c102f5285476d7868a387bdb6c58385e4074 is the first bad comm=
it =

> > >>>>>>>> commit 0519c102f5285476d7868a387bdb6c58385e4074
> > >>>>>>>> Author: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >>>>>>>> Date:   Mon Jan 22 19:41:31 2018 +0200
> > >>>>>>>> =

> > >>>>>>>> drm/i915: Implement display w/a #1143
> > >>>>>>>> =

> > >>>>>>>> Apparently SKL/KBL/CFL need some manual help to get the  =

> > >>>>>>>> programmed HDMI vswing to stick. Implement the relevant  =

> > >>>>>>>> workaround (display w/a #1143).
> > >>>>>>>> =

> > >>>>>>>> Note that the relevant chicken bits live in a transcoder regis=
ter  =

> > >>>>>>>> even though the bits affect a specific DDI port rather than a  =

> > >>>>>>>> specific transcoder. Hence we must pick the correct transcoder=
  =

> > >>>>>>>> register instance based on the port rather than based on the  =

> > >>>>>>>> cpu_transcoder.
> > >>>>>>>> =

> > >>>>>>>> Also note that for completeness I included support for DDI A/E=
  =

> > >>>>>>>> in the code even though we never have HDMI on those ports.
> > >>>>>>>> =

> > >>>>>>>> v2: CFL needs the w/a as well (Rodrigo and Art)
> > >>>>>>>> =

> > >>>>>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >>>>>>>> Cc: Art Runyan <arthur.j.runyan@intel.com>
> > >>>>>>>> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.co=
m>
> > >>>>>>>> Link: =

> > >>>>>>>> https://patchwork.freedesktop.org/patch/msgid/20180122174131.2=
8046
> > >>>>>>>> -1-ville.syrjala@linux.intel.com
> > >>>>>>>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >>>>>>>> =

> > >>>>>>>> =

> > >>>>>>>> dmesg from drm-tip with drm.debug=3D0xe can be found here:
> > >>>>>>>> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/c=
omme
> > >>>>>>>> nts
> > >>>>>>>> /
> > >>>>>>>> 64
> > >>>>>>>> =

> > >>>>>>>> Kai-Heng
> > >>>>>>> =

> > >>>>>>> =

> > >>>>>> =

> > >>>> =

> > >>>> --
> > >>>> Ville Syrj=E4l=E4
> > >>>> Intel
> > >> =

> > >> -- =

> > >> Ville Syrj=E4l=E4
> > >> Intel
> > > =

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
