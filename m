Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FB13F754F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 14:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D5D6E213;
	Wed, 25 Aug 2021 12:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59F86E213
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 12:47:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="215670719"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="215670719"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 05:47:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="473831553"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 25 Aug 2021 05:47:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Aug 2021 15:47:12 +0300
Date: Wed, 25 Aug 2021 15:47:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <YSY70P8JCDsJotvl@intel.com>
References: <20210818004216.220279-1-jose.souza@intel.com>
 <20210818004216.220279-8-jose.souza@intel.com>
 <YR0fWUHZk9/4o33s@intel.com>
 <d00bde0b13b498b6fa141f4353caf168c95c8b4e.camel@intel.com>
 <YR6Bz5m1hAxVeZjA@intel.com>
 <e1ac87ec1939ab763b924a3f70f79bdfef14b77d.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e1ac87ec1939ab763b924a3f70f79bdfef14b77d.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/display/skl+: Drop frontbuffer
 rendering support
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

On Wed, Aug 25, 2021 at 12:49:25AM +0000, Souza, Jose wrote:
> On Thu, 2021-08-19 at 19:07 +0300, Ville Syrjälä wrote:
> > On Wed, Aug 18, 2021 at 07:48:03PM +0000, Souza, Jose wrote:
> > > On Wed, 2021-08-18 at 17:55 +0300, Ville Syrjälä wrote:
> > > > On Tue, Aug 17, 2021 at 05:42:15PM -0700, José Roberto de Souza wrote:
> > > > > By now all the userspace applications should have migrated to atomic
> > > > > or at least be calling DRM_IOCTL_MODE_DIRTYFB.
> > > > > 
> > > > > With that we can kill frontbuffer rendering support in i915 for
> > > > > modern platforms.
> > > > > 
> > > > > So here converting legacy APIs into atomic commits so it can be
> > > > > properly handled by driver i915.
> > > > > 
> > > > > Several IGT tests will fail with this changes, because some tests
> > > > > were stressing those frontbuffer rendering scenarios that no userspace
> > > > > should be using by now, fixes to IGT should be sent soon.
> > > > 
> > > > Blocking atomic commits instead of the current lightweight frontbuffer
> > > > interface sounds like a terrible plan. How unusable is X with this
> > > > approach?
> > > 
> > > 100% usable, had no issues when running X in TGL and ADL-P.
> > > Added a debug message in intel_user_framebuffer_dirty() and X is not even using frontbuffer rendering at all.
> > 
> > Turn off your compositor if you want to test front buffer rendering.
> 
> Worked fine on Plasma with a 4K panel, was not able to find how to do that in Gnome.

I didn't think you can turn off composition with either one of those.
You actually confirmed it's running with everytithing unredirected and
eg. there was no lag moving windows around and wiggling the mouse?

Avoiding that lag is pretty much the sole reason why the legacy
cursor unsynced update stuff even exists in the driver. Hard to
imagine you wouldn't hit the same issue with the server getting
blocked on dirtyfb all the time.

-- 
Ville Syrjälä
Intel
