Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D25274897
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 20:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034E76E2D7;
	Tue, 22 Sep 2020 18:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E666E2D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 18:51:17 +0000 (UTC)
IronPort-SDR: oAdfDjKNjDXdJZHLYAGnII4rQ4RU5zwc3TJmQaWvUG4F7yZANGEkYnBmhPe9wR5J2YY6XJbM2U
 pVZklfC4jnHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="140167170"
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="140167170"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 11:51:17 -0700
IronPort-SDR: HYKb9Vv20eSq/2eZCH8dgzxTRU5mT4LEaltOx/1WGzlfhcuQRUtjNOzgoTZPslAmNvs4Od/8E1
 5riiI83C57xA==
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="511325942"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 11:51:17 -0700
Date: Tue, 22 Sep 2020 11:52:09 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200922185209.GA24216@labuser-Z97X-UD5H>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-2-manasi.d.navare@intel.com>
 <20200903174944.GW6112@intel.com>
 <20200903180432.GA22804@labuser-Z97X-UD5H>
 <20200903184044.GZ6112@intel.com> <20200907123523.GG6112@intel.com>
 <20200914183242.GA28634@labuser-Z97X-UD5H>
 <20200914185257.GW6112@intel.com>
 <20200921210118.GA18761@labuser-Z97X-UD5H>
 <20200922101915.GN6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922101915.GN6112@intel.com>
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

On Tue, Sep 22, 2020 at 01:19:15PM +0300, Ville Syrj=E4l=E4 wrote:
> On Mon, Sep 21, 2020 at 02:01:25PM -0700, Navare, Manasi wrote:
> > On Mon, Sep 14, 2020 at 09:52:57PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Mon, Sep 14, 2020 at 11:32:48AM -0700, Navare, Manasi wrote:
> > > > On Mon, Sep 07, 2020 at 03:35:23PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Thu, Sep 03, 2020 at 09:40:44PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > > On Thu, Sep 03, 2020 at 11:04:33AM -0700, Navare, Manasi wrote:
> > > > > > > On Thu, Sep 03, 2020 at 08:49:44PM +0300, Ville Syrj=E4l=E4 w=
rote:
> > > > > > > > On Wed, Jul 15, 2020 at 03:42:13PM -0700, Manasi Navare wro=
te:
> > > > > > > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.co=
m>
> > > > > > > > > =

> > > > > > > > > The members in hw.mode can be used from adjusted_mode as =
well,
> > > > > > > > > use that when available.
> > > > > > > > > =

> > > > > > > > > Some places that use hw.mode can be converted to use adju=
sted_mode
> > > > > > > > > as well.
> > > > > > > > > =

> > > > > > > > > v2:
> > > > > > > > > * Manual rebase (Manasi)
> > > > > > > > > * remove the use of pipe_mode defined in patch 3 (Manasi)
> > > > > > > > > =

> > > > > > > > > v3:
> > > > > > > > > * Rebase on drm-tip (Manasi)
> > > > > > > > =

> > > > > > > > Previous review was apparently ignored. Or is there a bette=
r version
> > > > > > > > somewhere? If not, this still looks very wrong.
> > > > > > > =

> > > > > > > This was the latest rev that Maarten had in his local tree wh=
ich he said should address all the review comments.
> > > > > > > What in particular looks wrong or what review comments were u=
naddressed here?
> > > > > > =

> > > > > > The dvo/sdvo changes.
> > > > > =

> > > > > I recommend just dropping this patch entirely. It doesn't seem to=
 have
> > > > > anything to do with the bigjoiner anyway.
> > > > =

> > > > So for the dvo/svdo changes, no need to use the adjusted_mode inste=
ad keep using hw.mode?
> > > > How about other cleanups like: intel_crtc_copy_hw_to_uapi_state(crt=
c_state, &mode); and
> > > > static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_stat=
e *crtc_state,
> > > > +					     struct drm_display_mode *user_mode)
> > > > =

> > > > You think we dont need mode as an argument there either?
> > > =

> > > Not in this patch if all the other stuff disappears. No idea if some
> > > later patch might need something like it.
> > =

> > Hi Ville,
> > =

> > So this patch basically removes the hw.mode and just keeps hw.adjusted_=
mode
> > So no need to remove that? =

> > But basically from this patch onwards we say that there is hw.pipe_mode
> > and hw.adjusted_mode, there is no hw.mode.
> > Are you suggesting keeping hw.mode as well? Would this be replacing hw.=
pipe_mode then?
> =

> No. hw.mode is the original timings, adjusted_mode is the output timings,
> pipe_mode is the the pipe timings.

So is the suggestion to keep hw.mode so the original timings as well as adj=
usted_mode and
then have pipe_mode for per pipe timings.
So get rid of this patch meaning do not remove hw.mode?

Manasi

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
