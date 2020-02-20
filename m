Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D00165FB4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 15:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145146EDA4;
	Thu, 20 Feb 2020 14:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E53E6EDA3;
 Thu, 20 Feb 2020 14:28:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 06:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="349178297"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 20 Feb 2020 06:28:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Feb 2020 16:27:59 +0200
Date: Thu, 20 Feb 2020 16:27:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Message-ID: <20200220142759.GA13686@intel.com>
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
 <CACvgo50pCb4OafEs9tLm7YEPqHc+BtDAvagRnwjXtZeQDNwUwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo50pCb4OafEs9tLm7YEPqHc+BtDAvagRnwjXtZeQDNwUwg@mail.gmail.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 00/12] drm: Put drm_display_mode on diet
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 20, 2020 at 01:21:03PM +0000, Emil Velikov wrote:
> On Wed, 19 Feb 2020 at 20:35, Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > struct drm_display_mode is extremely fat. Put it on diet.
> >
> > Some stats for the whole series:
> >
> > 64bit sizeof(struct drm_display_mode):
> > 200 -> 136 bytes (-32%)
> >
> > 64bit bloat-o-meter -c drm.ko:
> > add/remove: 1/0 grow/shrink: 29/47 up/down: 893/-1544 (-651)
> > Function                                     old     new   delta
> > ...
> > Total: Before=3D189430, After=3D188779, chg -0.34%
> > add/remove: 0/0 grow/shrink: 0/0 up/down: 0/0 (0)
> > Data                                         old     new   delta
> > Total: Before=3D11667, After=3D11667, chg +0.00%
> > add/remove: 0/0 grow/shrink: 0/5 up/down: 0/-16896 (-16896)
> > RO Data                                      old     new   delta
> > edid_4k_modes                               1000     680    -320
> > edid_est_modes                              3400    2312   -1088
> > edid_cea_modes_193                          5400    3672   -1728
> > drm_dmt_modes                              17600   11968   -5632
> > edid_cea_modes_1                           25400   17272   -8128
> > Total: Before=3D71239, After=3D54343, chg -23.72%
> >
> >
> > 64bit bloat-o-meter drm.ko:
> > add/remove: 1/0 grow/shrink: 29/52 up/down: 893/-18440 (-17547)
> > ...
> > Total: Before=3D272336, After=3D254789, chg -6.44%
> >
> >
> > 32bit sizeof(struct drm_display_mode):
> > 184 -> 120 bytes (-34%)
> >
> > 32bit bloat-o-meter -c drm.ko
> > add/remove: 1/0 grow/shrink: 19/21 up/down: 743/-1368 (-625)
> > Function                                     old     new   delta
> > ...
> > Total: Before=3D172359, After=3D171734, chg -0.36%
> > add/remove: 0/0 grow/shrink: 0/0 up/down: 0/0 (0)
> > Data                                         old     new   delta
> > Total: Before=3D4227, After=3D4227, chg +0.00%
> > add/remove: 0/0 grow/shrink: 0/5 up/down: 0/-16896 (-16896)
> > RO Data                                      old     new   delta
> > edid_4k_modes                                920     600    -320
> > edid_est_modes                              3128    2040   -1088
> > edid_cea_modes_193                          4968    3240   -1728
> > drm_dmt_modes                              16192   10560   -5632
> > edid_cea_modes_1                           23368   15240   -8128
> > Total: Before=3D59230, After=3D42334, chg -28.53%
> >
> > 32bit bloat-o-meter drm.ko:
> > add/remove: 1/0 grow/shrink: 19/26 up/down: 743/-18264 (-17521)
> > ...
> > Total: Before=3D235816, After=3D218295, chg -7.43%
> >
> >
> > Some ideas for further reduction:
> > - Convert mode->name to a pointer (saves 24/28 bytes in the
> >   struct but would often require a heap alloc for the name (though
> >   typical mode name is <10 bytes so still overall win perhaps)
> > - Get rid of mode->name entirely? I guess setcrtc & co. is the only
> >   place where we have to preserve the user provided name, elsewhere
> >   could pehaps just generate on demand? Not sure how tricky this
> >   would get.
> =

> The series does some great work, with future work reaching the cache
> line for 64bit.
> Doing much more than that might be an overkill IMHO.
> =

> In particular, if we change DRM_DISPLAY_MODE_LEN to 24 we get there,
> avoiding the heap alloc/calc on demand fun.
> While also ensuring the name is sufficiently large for the next decade or=
 so.

Unfortunately it's part of the uabi. So can't change it without some
risk of userspace breakage.

The least demanding option is probably to nuke export_head. We need
one bit to replace it, which we can get by either:
- stealing from eg. mode->type, or perhaps mode->private_flags
- nuke private_flags outright and replace it with a bool for this
  purpose

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
