Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0A340C911
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 17:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4DF96E971;
	Wed, 15 Sep 2021 15:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B4B06E971
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 15:57:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="307910703"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="307910703"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 08:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="508852886"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 15 Sep 2021 08:57:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Sep 2021 18:57:19 +0300
Date: Wed, 15 Sep 2021 18:57:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <YUIX3+B3tHTk/SwW@intel.com>
References: <20210909194917.66433-1-jose.souza@intel.com>
 <YTpsh3WkLIDm96h7@intel.com>
 <32357a14fd9926ac5c332868e3aadfbb8105caf9.camel@intel.com>
 <YTpuaUI6rpPzHDFS@intel.com>
 <2a05f1b5555f5d5d0e66f447e4a8c51a4bb2905b.camel@intel.com>
 <YUH5wR96pc0D09BD@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YUH5wR96pc0D09BD@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH CI 1/2] drm/i915/display/skl+: Drop
 frontbuffer rendering support
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

On Wed, Sep 15, 2021 at 04:48:49PM +0300, Ville Syrjälä wrote:
> On Mon, Sep 13, 2021 at 10:54:14PM +0000, Souza, Jose wrote:
> > On Thu, 2021-09-09 at 23:28 +0300, Ville Syrjälä wrote:
> > > On Thu, Sep 09, 2021 at 08:23:20PM +0000, Souza, Jose wrote:
> > > > On Thu, 2021-09-09 at 23:20 +0300, Ville Syrjälä wrote:
> > > > > On Thu, Sep 09, 2021 at 12:49:16PM -0700, José Roberto de Souza wrote:
> > > > > > By now all the userspace applications should have migrated to atomic
> > > > > > or at least be calling DRM_IOCTL_MODE_DIRTYFB.
> > > > > > 
> > > > > > With that we can kill frontbuffer rendering support in i915 for
> > > > > > modern platforms.
> > > > > > 
> > > > > > So here converting legacy APIs into atomic commits so it can be
> > > > > > properly handled by driver i915.
> > > > > > 
> > > > > > Several IGT tests will fail with this changes, because some tests
> > > > > > were stressing those frontbuffer rendering scenarios that no userspace
> > > > > > should be using by now, fixes to IGT should be sent soon.
> > > > > > 
> > > > > 
> > > > > I just gave this a try here and it's unusable. glxgears went from
> > > > > 9000 to 120 fps (was expecting 60fps tbh, not sure why I get
> > > > > double), everything lags like mad, if I drag a window around
> > > > > glxgears/other windows stop updating entirely, etc. NAK
> > > > 
> > > > Can you share your setup? What GPU? Desktop environment? Mesa version? resolutions of sinks?
> > > > Will try it in my end.
> > > 
> > > Doesn't really matter as long as you don't have a compositor making a
> > > mess of things. This machine is a cfl running mate w/ compositor off,
> > > and some 1920x1200 display.
> > > 
> > 
> > Making drm_atomic_helper_dirtyfb() do a non-blocking atomic commit makes user experience pretty similar to the one with compositing enabled:
> > drm_atomic_commit() + compositor off: https://youtu.be/NBt6smXs99U
> > drm_atomic_nonblocking_commit() + compositor off: https://youtu.be/QiMhkeGX_L8
> > drm_atomic_nonblocking_commit() + compositor on: https://youtu.be/KdpJyJ5k6sQ
> > 
> > 
> > I do not completly agree with the comment in drm_atomic_helper_dirtyfb() about why it uses a blocking implementation.
> > With frontbuffer rendering the registers are programmed but the content could only show up for user a whole frame later.
> > 
> > Perhaps if this solutions is accetable we could have a non-blocking version of drm_atomic_helper_dirtyfb() so the drivers current using it don't have
> > their behavior changed.
> 
> Non-blocking update would make sense to me, whereas a blocking
> update makes no sense given how this is used by actual userspace.

Actually neither maybe makes total sense since userspace probably
isn't expecting -EBUSY from dirtyfb. So we might end up with stale
junk on the screen if no further updates come in after an -EBUSY.

The current frontbuffer stuff works much more like a mailbox style
update so we don't lose stuff and neither do we block.

-- 
Ville Syrjälä
Intel
