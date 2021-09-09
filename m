Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6630405E03
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 22:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FB66E905;
	Thu,  9 Sep 2021 20:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1451F6E905
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 20:28:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="208126516"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="208126516"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 13:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="548743217"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 09 Sep 2021 13:28:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Sep 2021 23:28:25 +0300
Date: Thu, 9 Sep 2021 23:28:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <YTpuaUI6rpPzHDFS@intel.com>
References: <20210909194917.66433-1-jose.souza@intel.com>
 <YTpsh3WkLIDm96h7@intel.com>
 <32357a14fd9926ac5c332868e3aadfbb8105caf9.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <32357a14fd9926ac5c332868e3aadfbb8105caf9.camel@intel.com>
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

On Thu, Sep 09, 2021 at 08:23:20PM +0000, Souza, Jose wrote:
> On Thu, 2021-09-09 at 23:20 +0300, Ville Syrjälä wrote:
> > On Thu, Sep 09, 2021 at 12:49:16PM -0700, José Roberto de Souza wrote:
> > > By now all the userspace applications should have migrated to atomic
> > > or at least be calling DRM_IOCTL_MODE_DIRTYFB.
> > > 
> > > With that we can kill frontbuffer rendering support in i915 for
> > > modern platforms.
> > > 
> > > So here converting legacy APIs into atomic commits so it can be
> > > properly handled by driver i915.
> > > 
> > > Several IGT tests will fail with this changes, because some tests
> > > were stressing those frontbuffer rendering scenarios that no userspace
> > > should be using by now, fixes to IGT should be sent soon.
> > > 
> > 
> > I just gave this a try here and it's unusable. glxgears went from
> > 9000 to 120 fps (was expecting 60fps tbh, not sure why I get
> > double), everything lags like mad, if I drag a window around
> > glxgears/other windows stop updating entirely, etc. NAK
> 
> Can you share your setup? What GPU? Desktop environment? Mesa version? resolutions of sinks?
> Will try it in my end.

Doesn't really matter as long as you don't have a compositor making a
mess of things. This machine is a cfl running mate w/ compositor off,
and some 1920x1200 display.

-- 
Ville Syrjälä
Intel
