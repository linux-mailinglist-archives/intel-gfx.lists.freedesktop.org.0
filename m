Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1828A20FCC1
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 21:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7473E6E17F;
	Tue, 30 Jun 2020 19:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32706E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 19:28:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21667302-1500050 for multiple; Tue, 30 Jun 2020 20:28:31 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663011D9A4FBB@FMSMSX108.amr.corp.intel.com>
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
 <20200629113616.10618-1-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663011D9A4FBB@FMSMSX108.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 20:28:32 +0100
Message-ID: <159354531220.22902.2935750807524355172@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Move obj->lut_list under
 its own lock
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

Quoting Ruhl, Michael J (2020-06-30 20:11:16)
> >-----Original Message-----
> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> >Wilson
> >Sent: Monday, June 29, 2020 7:36 AM
> >To: intel-gfx@lists.freedesktop.org
> >Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Move obj->lut_list under its
> >own lock
> >
> >The obj->lut_list is traversed when the object is closed as the file
> >table is destroyed during process termination. As this occurs before we
> >kill any outstanding context if, due to some bug or another, the closure
> >is blocked, then we fail to shootdown any inflight operations
> >potentially leaving the GPU spinning forever. As we only need to guard
> >the list against concurrent closures and insertions, the hold is short
> >and merits being treated as a simple spinlock.
> 
> The comment:
> 
> /* Break long locks, and carefully continue on from this spot */
> 
> seems to be contrary to your "the hold is short" comment.  Is calling out
> this apparent worst case scenario (i.e. how it could happen), worth
> documenting?

It's paranoia, because list iterating can be slow and historically slow
object closure has been reported as an issue. Only a few objects will be
shared between multiple contexts, and even then you would only expect a
couple of contexts to share an object. One of the OglDrvCtx would show up
here, which convinced us to move to the per-object lists to shrink the
number of elements walked.

Even the close race igts do not cause the list to become long enough to
schedule, but it would be possible to create an object that was shared
by 64k contexts. Just not wise in practice. [However, I should make sure
an igt does hit the bookmark.]

> >@@ -104,21 +105,29 @@ void i915_gem_close_object(struct
> >drm_gem_object *gem, struct drm_file *file)
> > {
> >       struct drm_i915_gem_object *obj = to_intel_bo(gem);
> >       struct drm_i915_file_private *fpriv = file->driver_priv;
> >+      struct i915_lut_handle bookmark = {};
> >       struct i915_mmap_offset *mmo, *mn;
> >       struct i915_lut_handle *lut, *ln;
> >       LIST_HEAD(close);
> >
> >-      i915_gem_object_lock(obj);
> >+      spin_lock(&obj->lut_lock);
> >       list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
> >               struct i915_gem_context *ctx = lut->ctx;
> >
> >-              if (ctx->file_priv != fpriv)
> >-                      continue;
> >+              if (ctx && ctx->file_priv == fpriv) {
> 
> Null checking ctx was not done before.  I think this changed with the possible cond_resched?

The bookmark introduces the lut->ctx == NULL to identify it as being
special, hence the need to check.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
