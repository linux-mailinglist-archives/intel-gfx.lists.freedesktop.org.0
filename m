Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9B414BFCE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 19:29:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4EE6F375;
	Tue, 28 Jan 2020 18:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F50E6F372;
 Tue, 28 Jan 2020 18:29:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20039350-1500050 for multiple; Tue, 28 Jan 2020 18:28:28 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Wambui Karuga <wambui.karugax@gmail.com>, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com
References: <20200122125750.9737-1-wambui.karugax@gmail.com>
 <20200122125750.9737-2-wambui.karugax@gmail.com>
 <b97de5b8-b87f-3b2d-e8bc-942fc21b266e@linux.intel.com>
 <87h80fd751.fsf@intel.com>
In-Reply-To: <87h80fd751.fsf@intel.com>
Message-ID: <158023610727.2129.14756905957829283843@skylake-alporthouse-com>
Date: Tue, 28 Jan 2020 18:28:27 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: initial conversion to new
 logging macros using coccinelle
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-01-28 13:48:10)
> On Tue, 28 Jan 2020, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> >> -DRM_DEBUG(
> >> +drm_dbg(&T->drm,
> >
> > This changes DRM_UT_CORE to DRM_UT_DRIVER so our typical drm.debug=0xe 
> > becomes much more spammy.
> 
> This is what I've instructed Wambui to do in i915. It's my mistake that
> I haven't requested this to be pointed out in the commit message.
> 
> DRM_DEBUG() and DRM_DEBUG_DRIVER() have been conflated over the
> years. The former is supposed to be for drm core code only, but drivers
> are littered with it. I'm hoping drivers are less likely to use the new
> drm_dbg_core() which maps to DRM_DEBUG(). The shorter drm_dbg() is the
> new DRM_DEBUG_DRIVER().
> 
> If you think drm.debug=0xe is too spammy now, the fix is not to abuse
> DRM_UT_CORE as a spare category

That mistake was made when that category was assigned to user debug like
ioctls.

Shall I send a revert to remove the spam?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
