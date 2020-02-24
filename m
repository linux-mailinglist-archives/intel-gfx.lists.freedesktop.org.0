Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C83C16A477
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4996E429;
	Mon, 24 Feb 2020 10:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB31E6E429
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 10:59:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20329888-1500050 for multiple; Mon, 24 Feb 2020 10:59:35 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200224102429.4076883-1-chris@chris-wilson.co.uk>
 <87r1yktfpg.fsf@intel.com>
In-Reply-To: <87r1yktfpg.fsf@intel.com>
Message-ID: <158254197297.15220.2765513740644444333@skylake-alporthouse-com>
Date: Mon, 24 Feb 2020 10:59:33 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix inverted WARN_ON
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

Quoting Jani Nikula (2020-02-24 10:58:03)
> On Mon, 24 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Restore the previous WARN_ON(cond) so that we don't complain about poor
> > old Cherryview.
> >
> > Fixes: eb020ca3d43f ("drm/i915/display/dp: Make WARN* drm specific where drm_device ptr is available")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> 
> Why the resubmission? Already r-b'd the original.

Because I couldn't find it in patchwork this morning.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
