Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA833F1D75
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 18:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545866E84F;
	Thu, 19 Aug 2021 16:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D4C6E84F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 16:07:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="214747044"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="214747044"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 09:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="522496007"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 19 Aug 2021 09:07:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Aug 2021 19:07:43 +0300
Date: Thu, 19 Aug 2021 19:07:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <YR6Bz5m1hAxVeZjA@intel.com>
References: <20210818004216.220279-1-jose.souza@intel.com>
 <20210818004216.220279-8-jose.souza@intel.com>
 <YR0fWUHZk9/4o33s@intel.com>
 <d00bde0b13b498b6fa141f4353caf168c95c8b4e.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d00bde0b13b498b6fa141f4353caf168c95c8b4e.camel@intel.com>
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

On Wed, Aug 18, 2021 at 07:48:03PM +0000, Souza, Jose wrote:
> On Wed, 2021-08-18 at 17:55 +0300, Ville Syrjälä wrote:
> > On Tue, Aug 17, 2021 at 05:42:15PM -0700, José Roberto de Souza wrote:
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
> > 
> > Blocking atomic commits instead of the current lightweight frontbuffer
> > interface sounds like a terrible plan. How unusable is X with this
> > approach?
> 
> 100% usable, had no issues when running X in TGL and ADL-P.
> Added a debug message in intel_user_framebuffer_dirty() and X is not even using frontbuffer rendering at all.

Turn off your compositor if you want to test front buffer rendering.

-- 
Ville Syrjälä
Intel
