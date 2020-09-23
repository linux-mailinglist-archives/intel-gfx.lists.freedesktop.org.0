Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1519275ACD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 16:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D836E9C9;
	Wed, 23 Sep 2020 14:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2376E9C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 14:53:23 +0000 (UTC)
IronPort-SDR: ZJvc0n732haKtnsrDFXbT+6ZTKvmaWjm+5fo0EXAepWN+fUwUxp/53NkEDNWSg4d/qChnfBKg/
 R61PCe0+ig3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="158261077"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="158261077"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 07:53:23 -0700
IronPort-SDR: TZl5T4aCpJBWVDkarokXtwmYTZxr3MrwPSyGwFxIl1AC6jYXwlcmpT6b6jDRTchPomcfR51BdU
 KMYZynDx7JaQ==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="322615203"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 07:53:22 -0700
Date: Wed, 23 Sep 2020 07:54:17 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200923145416.GA27329@labuser-Z97X-UD5H>
References: <20200715224222.7557-2-manasi.d.navare@intel.com>
 <20200903174944.GW6112@intel.com>
 <20200903180432.GA22804@labuser-Z97X-UD5H>
 <20200903184044.GZ6112@intel.com> <20200907123523.GG6112@intel.com>
 <20200914183242.GA28634@labuser-Z97X-UD5H>
 <20200914185257.GW6112@intel.com>
 <20200921210118.GA18761@labuser-Z97X-UD5H>
 <20200922101915.GN6112@intel.com>
 <20200922185209.GA24216@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922185209.GA24216@labuser-Z97X-UD5H>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 02/11] drm/i915: Remove hw.mode
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

Hi Ville,

So to confirm I am skipping this patch completely.
So basically keeping hw.mode as well

Manasi

On Tue, Sep 22, 2020 at 11:52:09AM -0700, Navare, Manasi wrote:
> On Tue, Sep 22, 2020 at 01:19:15PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Sep 21, 2020 at 02:01:25PM -0700, Navare, Manasi wrote:
> > > On Mon, Sep 14, 2020 at 09:52:57PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Sep 14, 2020 at 11:32:48AM -0700, Navare, Manasi wrote:
> > > > > On Mon, Sep 07, 2020 at 03:35:23PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > > On Thu, Sep 03, 2020 at 09:40:44PM +0300, Ville Syrj=E4l=E4 wro=
te:
> > > > > > > On Thu, Sep 03, 2020 at 11:04:33AM -0700, Navare, Manasi wrot=
e:
> > > > > > > > On Thu, Sep 03, 2020 at 08:49:44PM +0300, Ville Syrj=E4l=E4=
 wrote:
> > > > > > > > > On Wed, Jul 15, 2020 at 03:42:13PM -0700, Manasi Navare w=
rote:
> > > > > > > > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.=
com>
> > > > > > > > > > =

> > > > > > > > > > The members in hw.mode can be used from adjusted_mode a=
s well,
> > > > > > > > > > use that when available.
> > > > > > > > > > =

> > > > > > > > > > Some places that use hw.mode can be converted to use ad=
justed_mode
> > > > > > > > > > as well.
> > > > > > > > > > =

> > > > > > > > > > v2:
> > > > > > > > > > * Manual rebase (Manasi)
> > > > > > > > > > * remove the use of pipe_mode defined in patch 3 (Manas=
i)
> > > > > > > > > > =

> > > > > > > > > > v3:
> > > > > > > > > > * Rebase on drm-tip (Manasi)
> > > > > > > > > =

> > > > > > > > > Previous review was apparently ignored. Or is there a bet=
ter version
> > > > > > > > > somewhere? If not, this still looks very wrong.
> > > > > > > > =

> > > > > > > > This was the latest rev that Maarten had in his local tree =
which he said should address all the review comments.
> > > > > > > > What in particular looks wrong or what review comments were=
 unaddressed here?
> > > > > > > =

> > > > > > > The dvo/sdvo changes.
> > > > > > =

> > > > > > I recommend just dropping this patch entirely. It doesn't seem =
to have
> > > > > > anything to do with the bigjoiner anyway.
> > > > > =

> > > > > So for the dvo/svdo changes, no need to use the adjusted_mode ins=
tead keep using hw.mode?
> > > > > How about other cleanups like: intel_crtc_copy_hw_to_uapi_state(c=
rtc_state, &mode); and
> > > > > static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_st=
ate *crtc_state,
> > > > > +					     struct drm_display_mode *user_mode)
> > > > > =

> > > > > You think we dont need mode as an argument there either?
> > > > =

> > > > Not in this patch if all the other stuff disappears. No idea if some
> > > > later patch might need something like it.
> > > =

> > > Hi Ville,
> > > =

> > > So this patch basically removes the hw.mode and just keeps hw.adjuste=
d_mode
> > > So no need to remove that? =

> > > But basically from this patch onwards we say that there is hw.pipe_mo=
de
> > > and hw.adjusted_mode, there is no hw.mode.
> > > Are you suggesting keeping hw.mode as well? Would this be replacing h=
w.pipe_mode then?
> > =

> > No. hw.mode is the original timings, adjusted_mode is the output timing=
s,
> > pipe_mode is the the pipe timings.
> =

> So is the suggestion to keep hw.mode so the original timings as well as a=
djusted_mode and
> then have pipe_mode for per pipe timings.
> So get rid of this patch meaning do not remove hw.mode?
> =

> Manasi
> =

> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
