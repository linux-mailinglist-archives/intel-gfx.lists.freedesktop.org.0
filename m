Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A75843C856
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 13:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5706E884;
	Wed, 27 Oct 2021 11:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66CC6E882;
 Wed, 27 Oct 2021 11:12:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217308086"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="217308086"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 04:12:11 -0700
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="537488950"
Received: from aeremina-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.249.254.123])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 04:12:07 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAPM=9tzVb=LAjK1-dii-Dq0xmSZjkVFeuu6L74jx1Ltf+o3OyQ@mail.gmail.com>
References: <20211025134907.20078-1-joonas.lahtinen@linux.intel.com>
 <CAKMK7uHTdVY2VOGb89aKE1z_mwjMk5pmBmidNmVMX4xuLNqDxw@mail.gmail.com>
 <CAPM=9tzVb=LAjK1-dii-Dq0xmSZjkVFeuu6L74jx1Ltf+o3OyQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>, Dave Airlie <airlied@gmail.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163533312434.68716.17893587096109808953@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 27 Oct 2021 14:12:04 +0300
Subject: Re: [Intel-gfx] [PATCH] MAINTAINERS: Add Tvrtko as drm/i915
 co-maintainer
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

Quoting Dave Airlie (2021-10-26 03:34:52)
> On Mon, 25 Oct 2021 at 23:51, Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Mon, Oct 25, 2021 at 3:49 PM Joonas Lahtinen
> > <joonas.lahtinen@linux.intel.com> wrote:
> > >
> > > Add Tvrtko Ursulin as a co-maintainer for drm/i915 driver.
> > > Tvrtko will bring added bandwidth and focus to the GT/GEM domain
> > > (drm-intel-gt-next).
> > >
> > > This will help with the increased driver maintenance efforts, allows
> > > alternating the drm-intel-gt-next pull requests and also should incre=
ase
> > > the coverage for the maintenance in general.
> > >
> > > Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: David Airlie <airlied@linux.ie>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> > > Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Acked-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: Sean Paul <sean@poorly.run>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Maxime Ripard <mripard@kernel.org>
> > > Cc: dri-devel@lists.freedesktop.org
> >
> > Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>=20
> Acked-by: Dave Airlie <airlied@redhat.com>

Thanks for the Acks, this is now merged.

Regards, Joonas
