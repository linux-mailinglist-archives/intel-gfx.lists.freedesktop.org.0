Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB77228CCB8
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 13:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB656E2D5;
	Tue, 13 Oct 2020 11:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33EF96E2D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 11:50:27 +0000 (UTC)
IronPort-SDR: 6f/62C96Rbv74AoABMuFCgROGTGJMBonA7tFIsvQUtUNsGYCvX7ClNcrVCIFnq1vLS2fFAvbQW
 tKU4O0+ySycg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="163257858"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="163257858"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 04:50:26 -0700
IronPort-SDR: p5dbuYpOtfOOIar2s4CnlUQN/oKclRTCXJTgNiYzx0n2NumCfqfbUHEl6Z4d0BIri8evGyIB7x
 52YDuDVfPfVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="530365915"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga005.jf.intel.com with ESMTP; 13 Oct 2020 04:50:25 -0700
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Oct 2020 12:50:24 +0100
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Tue, 13 Oct 2020 12:50:24 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Thread-Topic: [Intel-gfx] [Regression] "drm/i915: Implement display w/a #1143"
 breaks HDMI on ASUS GL552VW
Thread-Index: AQHWekb7ifJ+EaK+xE29hC+UxF2s76lJwKqAgACNE4CADCMyAIA+yueAgABjLACAABpisA==
Date: Tue, 13 Oct 2020 11:50:24 +0000
Message-ID: <34051428b30c46a9b04858124fe3932c@intel.com>
References: <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
 <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
 <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
 <30685BA7-1D02-48A0-9B7A-4933ED2B8F0D@canonical.com>
 <20200824180438.GI6112@intel.com>
 <BYAPR11MB31903D08E7BF1B2084309E80B2560@BYAPR11MB3190.namprd11.prod.outlook.com>
 <010FB10D-B1EF-4C2E-A8AD-B7409E771BD0@canonical.com>
 <20200826130511.GN6112@intel.com>
 <432E1B70-7F52-4DF7-8887-0769F17DAD30@canonical.com>
 <E1DE5E53-2C0B-4D5A-8D86-736639426A9D@canonical.com>
 <20201013111532.GY6112@intel.com>
In-Reply-To: <20201013111532.GY6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
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

Hi, =

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
lle
> Syrj=E4l=E4
> Sent: tiistai 13. lokakuuta 2020 14.16
> To: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Cc: intel-gfx <intel-gfx@lists.freedesktop.org>; Runyan, Arthur J
> <arthur.j.runyan@intel.com>
> Subject: Re: [Intel-gfx] [Regression] "drm/i915: Implement display w/a #1=
143"
> breaks HDMI on ASUS GL552VW
> =

> On Tue, Oct 13, 2020 at 01:20:35PM +0800, Kai-Heng Feng wrote:
> >
> >
> > > On Sep 3, 2020, at 14:26, Kai-Heng Feng <kai.heng.feng@canonical.com>
> wrote:
> > >
> > >
> > >
> > >> On Aug 26, 2020, at 21:05, Ville Syrj=E4l=E4 <ville.syrjala@linux.in=
tel.com>
> wrote:
> > >>
> > >> On Wed, Aug 26, 2020 at 12:40:15PM +0800, Kai-Heng Feng wrote:
> > >>> Hi,
> > >>>
> > >>>> On Aug 25, 2020, at 02:46, Runyan, Arthur J
> <arthur.j.runyan@intel.com> wrote:
> > >>>>
> > >>>> I remember some strangeness about the blnclegdisbl.  I'll see if I=
 can dig
> up some more.
> > >>>
> > >>>
> > >>> The register read can be found at [1] and [2].
> > >>>
> > >>> [1]
> > >>>
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comme
> > >>> nts/119 [2]
> > >>>
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comme
> > >>> nts/120
> > >>
> > >> Looks like it's using the 400mV/0dB setting. Can we get the same
> > >> dumps with the driver loaded just to confirm whether we're using
> > >> different settings?
> > >>
> > >> Also a dump of /sys/kernel/debug/dri/0/i915_vbt would be good to
> > >> have.
> > >
> > >
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comment
> > > s/124
> > >
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comment
> > > s/125
> > >
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/comment
> > > s/126
> >
> > A gentle ping...
> =

> I cooked up some hacks for you to try:
> git://github.com/vsyrjala/linux.git skl_vswing_wa_hacks
> =

> An upstream bug report would probably be a good idea so that the
> communication doesn't have to go through a middle man over email...
Agree, please make gitlab issue on this. =


> =

> >
> > >
> > > Kai-Heng
> > >
> > >>
> > >>>
> > >>> Kai-Heng
> > >>>
> > >>>>
> > >>>> -----Original Message-----
> > >>>> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >>>> Sent: Monday, August 24, 2020 11:05 AM
> > >>>> To: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > >>>> Cc: Runyan, Arthur J <arthur.j.runyan@intel.com>; Vivi, Rodrigo
> > >>>> <rodrigo.vivi@intel.com>; intel-gfx
> > >>>> <intel-gfx@lists.freedesktop.org>
> > >>>> Subject: Re: [Regression] "drm/i915: Implement display w/a #1143"
> > >>>> breaks HDMI on ASUS GL552VW
> > >>>>
> > >>>> On Mon, Aug 17, 2020 at 02:17:49PM +0800, Kai-Heng Feng wrote:
> > >>>>>
> > >>>>>
> > >>>>>> On Aug 17, 2020, at 00:22, Runyan, Arthur J
> <arthur.j.runyan@intel.com> wrote:
> > >>>>>>
> > >>>>>> You'll need to read out the DDI_BUF_TRANS_* and
> DISPIO_CR_TX_BMU_CR0 registers at boot before i915 programs them and
> compare with what driver programs.
> > >>>>>> Rodrigo can probably show you how.
> > >>>>>
> > >>>>> Right, I'll wait for a patch then :)
> > >>>>
> > >>>> To grab the BIOS reg values we just have to make sure the driver d=
oesn't
> load. Eg. pass something like "modprobe.blacklist=3Di915,snd_hda_intel 3"=
 to the
> kernel cmdline (+ whatever other magic ubuntu might require). Confirm with
> something like "lsmod | grep i915" to make sure the driver didn't sneak in
> despite our best efforts.
> > >>>>
> > >>>> Then we can dump the registers with intel_reg from igt-gpu-tools:
> > >>>> intel_reg read --count 20 0x64E00 0x64E60 0x64EC0 0x64F20 0x64F80
> > >>>> intel_reg read 0x64000 0x64100 0x64200 0x64300 0x64400 0x6C00C
> > >>>>
> > >>>> The only somewhat suspicious thing I noticed is that we treat
> DISPIO_CR_TX_BMU_CR0:tx_blnclegdisbl as a bitmask (bit 23 -> DDI A, bit 2=
4 ->
> DDI B, etc.) whereas the spec seems to be saying that we should just zero=
 out all
> the bits of tx_blnclegdisbl when any DDI needs iboost. Art, is our interp=
retation
> of the bits correct or just a fairy tale?
> > >>>>
> > >>>>>
> > >>>>> Kai-Heng
> > >>>>>
> > >>>>>>
> > >>>>>> -----Original Message-----
> > >>>>>> From: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > >>>>>> Sent: Thursday, August 13, 2020 10:14 PM
> > >>>>>> To: Runyan, Arthur J <arthur.j.runyan@intel.com>
> > >>>>>> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Ville Syrj=E4l=E4
> > >>>>>> <ville.syrjala@linux.intel.com>; intel-gfx
> > >>>>>> <intel-gfx@lists.freedesktop.org>
> > >>>>>> Subject: Re: [Regression] "drm/i915: Implement display w/a #1143"
> > >>>>>> breaks HDMI on ASUS GL552VW
> > >>>>>>
> > >>>>>> Hi,
> > >>>>>>
> > >>>>>>> On Aug 14, 2020, at 01:56, Runyan, Arthur J
> <arthur.j.runyan@intel.com> wrote:
> > >>>>>>>
> > >>>>>>> The workaround is freeing up stuck vswing values to let new vsw=
ing
> programming kick in.  Maybe the new vswing values are wrong.
> > >>>>>>> Try checking the vswing that driver programs against what
> BIOS/GOP programs.
> > >>>>>>
> > >>>>>> Do you mean to print out value of I915_READ()?
> > >>>>>> val =3D I915_READ(CHICKEN_TRANS(transcoder));
> > >>>>>>
> > >>>>>> Kai-Heng
> > >>>>>>
> > >>>>>>>
> > >>>>>>> -----Original Message-----
> > >>>>>>> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > >>>>>>> Sent: Thursday, August 13, 2020 9:50 AM
> > >>>>>>> To: Kai-Heng Feng <kai.heng.feng@canonical.com>; Runyan,
> > >>>>>>> Arthur J <arthur.j.runyan@intel.com>
> > >>>>>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; intel-gfx
> > >>>>>>> <intel-gfx@lists.freedesktop.org>
> > >>>>>>> Subject: Re: [Regression] "drm/i915: Implement display w/a #114=
3"
> > >>>>>>> breaks HDMI on ASUS GL552VW
> > >>>>>>>
> > >>>>>>> Art, any comment here?
> > >>>>>>>
> > >>>>>>> I just checked and the  W/a 1143 is implemented as described, b=
ut it
> is failing HDMI on this hybrid system.
> > >>>>>>>
> > >>>>>>>> On Aug 12, 2020, at 9:07 PM, Kai-Heng Feng
> <kai.heng.feng@canonical.com> wrote:
> > >>>>>>>>
> > >>>>>>>> Hi,
> > >>>>>>>>
> > >>>>>>>> There's a regression reported that HDMI output stops working
> after os upgrade:
> > >>>>>>>> https://bugs.launchpad.net/bugs/1871721
> > >>>>>>>>
> > >>>>>>>> Here's the bisect result:
> > >>>>>>>> 0519c102f5285476d7868a387bdb6c58385e4074 is the first bad
> > >>>>>>>> commit commit 0519c102f5285476d7868a387bdb6c58385e4074
> > >>>>>>>> Author: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >>>>>>>> Date:   Mon Jan 22 19:41:31 2018 +0200
> > >>>>>>>>
> > >>>>>>>> drm/i915: Implement display w/a #1143
> > >>>>>>>>
> > >>>>>>>> Apparently SKL/KBL/CFL need some manual help to get the
> > >>>>>>>> programmed HDMI vswing to stick. Implement the relevant
> > >>>>>>>> workaround (display w/a #1143).
> > >>>>>>>>
> > >>>>>>>> Note that the relevant chicken bits live in a transcoder
> > >>>>>>>> register even though the bits affect a specific DDI port
> > >>>>>>>> rather than a specific transcoder. Hence we must pick the
> > >>>>>>>> correct transcoder register instance based on the port rather
> > >>>>>>>> than based on the cpu_transcoder.
> > >>>>>>>>
> > >>>>>>>> Also note that for completeness I included support for DDI
> > >>>>>>>> A/E in the code even though we never have HDMI on those ports.
> > >>>>>>>>
> > >>>>>>>> v2: CFL needs the w/a as well (Rodrigo and Art)
> > >>>>>>>>
> > >>>>>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >>>>>>>> Cc: Art Runyan <arthur.j.runyan@intel.com>
> > >>>>>>>> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.co=
m>
> > >>>>>>>> Link:
> > >>>>>>>>
> https://patchwork.freedesktop.org/patch/msgid/20180122174131.
> > >>>>>>>> 28046 -1-ville.syrjala@linux.intel.com
> > >>>>>>>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >>>>>>>>
> > >>>>>>>>
> > >>>>>>>> dmesg from drm-tip with drm.debug=3D0xe can be found here:
> > >>>>>>>>
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1871721/
> > >>>>>>>> comme
> > >>>>>>>> nts
> > >>>>>>>> /
> > >>>>>>>> 64
> > >>>>>>>>
> > >>>>>>>> Kai-Heng
> > >>>>>>>
> > >>>>>>>
> > >>>>>>
> > >>>>
> > >>>> --
> > >>>> Ville Syrj=E4l=E4
> > >>>> Intel
> > >>
> > >> --
> > >> Ville Syrj=E4l=E4
> > >> Intel
> > >
> =

> --
> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
