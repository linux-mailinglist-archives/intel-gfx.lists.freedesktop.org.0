Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791E74DC3B3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 11:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D7A10E097;
	Thu, 17 Mar 2022 10:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A54410E08E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 10:10:27 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id b19so6580656wrh.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 03:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=n70HmzZVdLijjxLiNDucOb2ll1rNpufgjGPmlNhGyr8=;
 b=OXBNP8bBR8sxmIweW+P63jBmO24j8zd9kMqOaIUm86vTb/O9M+7BmHwru7JC/m4P+u
 6iYVr5JYtlnUPYFvQExQqOYEBbPVLH5TiBc4ChA99xbpclvs8LLjRCRcl3zU6dwoykJJ
 CIxkoHHad4oCgUPSPgwTYQNrDwOjGuw7L0zqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=n70HmzZVdLijjxLiNDucOb2ll1rNpufgjGPmlNhGyr8=;
 b=3HahAVCVcaugBhNxuzdXWE/uG8EwkPyllyAmcoPfklan+UOc5hBYoNQ8Sc/ZwQLmmz
 iDfyaipwgLeRHleZQsXvKUX7YpggRYYT/0rD3q+rOiv2ShPlytcgZA4/mjc3dFh9u/Sl
 DUDkj+WZHZKOb7jgSrxjzB7BqX6GDHgsES83y/3oJSfmYQRjKaH2YedaFZwlvuy5y35r
 LgODU/n9qvG2ln5kRHSdJ7D2xO3gfwDlUJ85zWMwfZWVErSwZt4VDxjvw24tzRnbQf65
 cGdN19m2p9/F9En4a1C7d83OZ8iemEU0LYXW/A8A6zK7iSkJ3FKFWlymoJXx3NLSaH24
 p6VA==
X-Gm-Message-State: AOAM533nvbaV+lLfUzmt2pZva8MQNmyoBrfc0x0ZV30HOedYAMDJmKvI
 aNdSJ/Deuia4lEcqKX3sJD8BCg==
X-Google-Smtp-Source: ABdhPJz8TrKsIhtld30slkDjMnAhpLs/okH+9TWj5KHwnp3/wL7+EG8o2DEQ5qLK+IPqO/oSt0371g==
X-Received: by 2002:a5d:6b0f:0:b0:1e7:9432:ee8c with SMTP id
 v15-20020a5d6b0f000000b001e79432ee8cmr3274281wrw.216.1647511825905; 
 Thu, 17 Mar 2022 03:10:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 o11-20020adf9d4b000000b001f0077ea337sm3719366wre.22.2022.03.17.03.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 03:10:25 -0700 (PDT)
Date: Thu, 17 Mar 2022 11:10:23 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YjMJD7NfXdXxUHTO@phenom.ffwll.local>
References: <20220307202121.389550-1-vivek.kasireddy@intel.com>
 <20220307202121.389550-3-vivek.kasireddy@intel.com>
 <CAKMK7uGxvC+mzmH7EPcqggZ05u--D6N29Ati0YuuEc-Tgd-0Gw@mail.gmail.com>
 <1f9db89a-0d31-d9f5-2b4d-7856aa9ffa01@linux.intel.com>
 <db9ecbf6e27f4a7d8e3d2aa24c13c9c0@intel.com>
 <a072da3c-5267-07cd-7710-7cd0ad840cb8@linux.intel.com>
 <YjMDoJ7ownASO/by@phenom.ffwll.local>
 <6b0fdece-7436-4970-f5fe-4bf831cc8e20@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6b0fdece-7436-4970-f5fe-4bf831cc8e20@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH v6 2/2] drm/i915/gem: Don't try to map and
 fence large scanout buffers (v9)
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 17, 2022 at 10:04:36AM +0000, Tvrtko Ursulin wrote:
> 
> On 17/03/2022 09:47, Daniel Vetter wrote:
> > On Tue, Mar 15, 2022 at 09:45:20AM +0000, Tvrtko Ursulin wrote:
> > > 
> > > On 15/03/2022 07:28, Kasireddy, Vivek wrote:
> > > > Hi Tvrtko, Daniel,
> > > > 
> > > > > 
> > > > > On 11/03/2022 09:39, Daniel Vetter wrote:
> > > > > > On Mon, 7 Mar 2022 at 21:38, Vivek Kasireddy <vivek.kasireddy@intel.com> wrote:
> > > > > > > 
> > > > > > > On platforms capable of allowing 8K (7680 x 4320) modes, pinning 2 or
> > > > > > > more framebuffers/scanout buffers results in only one that is mappable/
> > > > > > > fenceable. Therefore, pageflipping between these 2 FBs where only one
> > > > > > > is mappable/fenceable creates latencies large enough to miss alternate
> > > > > > > vblanks thereby producing less optimal framerate.
> > > > > > > 
> > > > > > > This mainly happens because when i915_gem_object_pin_to_display_plane()
> > > > > > > is called to pin one of the FB objs, the associated vma is identified
> > > > > > > as misplaced and therefore i915_vma_unbind() is called which unbinds and
> > > > > > > evicts it. This misplaced vma gets subseqently pinned only when
> > > > > > > i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. This
> > > > > > > results in a latency of ~10ms and happens every other vblank/repaint cycle.
> > > > > > > Therefore, to fix this issue, we try to see if there is space to map
> > > > > > > at-least two objects of a given size and return early if there isn't. This
> > > > > > > would ensure that we do not try with PIN_MAPPABLE for any objects that
> > > > > > > are too big to map thereby preventing unncessary unbind.
> > > > > > > 
> > > > > > > Testcase:
> > > > > > > Running Weston and weston-simple-egl on an Alderlake_S (ADLS) platform
> > > > > > > with a 8K@60 mode results in only ~40 FPS. Since upstream Weston submits
> > > > > > > a frame ~7ms before the next vblank, the latencies seen between atomic
> > > > > > > commit and flip event are 7, 24 (7 + 16.66), 7, 24..... suggesting that
> > > > > > > it misses the vblank every other frame.
> > > > > > > 
> > > > > > > Here is the ftrace snippet that shows the source of the ~10ms latency:
> > > > > > >                  i915_gem_object_pin_to_display_plane() {
> > > > > > > 0.102 us   |    i915_gem_object_set_cache_level();
> > > > > > >                    i915_gem_object_ggtt_pin_ww() {
> > > > > > > 0.390 us   |      i915_vma_instance();
> > > > > > > 0.178 us   |      i915_vma_misplaced();
> > > > > > >                      i915_vma_unbind() {
> > > > > > >                      __i915_active_wait() {
> > > > > > > 0.082 us   |        i915_active_acquire_if_busy();
> > > > > > > 0.475 us   |      }
> > > > > > >                      intel_runtime_pm_get() {
> > > > > > > 0.087 us   |        intel_runtime_pm_acquire();
> > > > > > > 0.259 us   |      }
> > > > > > >                      __i915_active_wait() {
> > > > > > > 0.085 us   |        i915_active_acquire_if_busy();
> > > > > > > 0.240 us   |      }
> > > > > > >                      __i915_vma_evict() {
> > > > > > >                        ggtt_unbind_vma() {
> > > > > > >                          gen8_ggtt_clear_range() {
> > > > > > > 10507.255 us |        }
> > > > > > > 10507.689 us |      }
> > > > > > > 10508.516 us |   }
> > > > > > > 
> > > > > > > v2: Instead of using bigjoiner checks, determine whether a scanout
> > > > > > >        buffer is too big by checking to see if it is possible to map
> > > > > > >        two of them into the ggtt.
> > > > > > > 
> > > > > > > v3 (Ville):
> > > > > > > - Count how many fb objects can be fit into the available holes
> > > > > > >      instead of checking for a hole twice the object size.
> > > > > > > - Take alignment constraints into account.
> > > > > > > - Limit this large scanout buffer check to >= Gen 11 platforms.
> > > > > > > 
> > > > > > > v4:
> > > > > > > - Remove existing heuristic that checks just for size. (Ville)
> > > > > > > - Return early if we find space to map at-least two objects. (Tvrtko)
> > > > > > > - Slightly update the commit message.
> > > > > > > 
> > > > > > > v5: (Tvrtko)
> > > > > > > - Rename the function to indicate that the object may be too big to
> > > > > > >      map into the aperture.
> > > > > > > - Account for guard pages while calculating the total size required
> > > > > > >      for the object.
> > > > > > > - Do not subject all objects to the heuristic check and instead
> > > > > > >      consider objects only of a certain size.
> > > > > > > - Do the hole walk using the rbtree.
> > > > > > > - Preserve the existing PIN_NONBLOCK logic.
> > > > > > > - Drop the PIN_MAPPABLE check while pinning the VMA.
> > > > > > > 
> > > > > > > v6: (Tvrtko)
> > > > > > > - Return 0 on success and the specific error code on failure to
> > > > > > >      preserve the existing behavior.
> > > > > > > 
> > > > > > > v7: (Ville)
> > > > > > > - Drop the HAS_GMCH(i915), DISPLAY_VER(i915) < 11 and
> > > > > > >      size < ggtt->mappable_end / 4 checks.
> > > > > > > - Drop the redundant check that is based on previous heuristic.
> > > > > > > 
> > > > > > > v8:
> > > > > > > - Make sure that we are holding the mutex associated with ggtt vm
> > > > > > >      as we traverse the hole nodes.
> > > > > > > 
> > > > > > > v9: (Tvrtko)
> > > > > > > - Use mutex_lock_interruptible_nested() instead of mutex_lock().
> > > > > > > 
> > > > > > > Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > > > > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > > > > > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > > > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > > > > > ---
> > > > > > >     drivers/gpu/drm/i915/i915_gem.c | 128 +++++++++++++++++++++++---------
> > > > > > >     1 file changed, 94 insertions(+), 34 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > > > > > > index 9747924cc57b..e0d731b3f215 100644
> > > > > > > --- a/drivers/gpu/drm/i915/i915_gem.c
> > > > > > > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > > > > > > @@ -49,6 +49,7 @@
> > > > > > >     #include "gem/i915_gem_pm.h"
> > > > > > >     #include "gem/i915_gem_region.h"
> > > > > > >     #include "gem/i915_gem_userptr.h"
> > > > > > > +#include "gem/i915_gem_tiling.h"
> > > > > > >     #include "gt/intel_engine_user.h"
> > > > > > >     #include "gt/intel_gt.h"
> > > > > > >     #include "gt/intel_gt_pm.h"
> > > > > > > @@ -882,6 +883,96 @@ static void discard_ggtt_vma(struct i915_vma *vma)
> > > > > > >            spin_unlock(&obj->vma.lock);
> > > > > > >     }
> > > > > > > 
> > > > > > > +static int
> > > > > > > +i915_gem_object_fits_in_aperture(struct drm_i915_gem_object *obj,
> > > > > > > +                                u64 alignment, u64 flags)
> > > > > > 
> > > > > > Tvrtko asked me to ack the first patch, but then I looked at this and
> > > > > > started wondering.
> > > > > > 
> > > > > > Conceptually this doesn't pass the smell test. What if we have
> > > > > > multiple per-crtc buffers? Multiple planes on the same crtc? What if
> > > > > > the app does triple buffer? You'll be forever busy tuning this
> > > > > > heuristics, which can't fundamentally be fixed I think. The old "half
> > > > > > of mappable" heuristic isn't really better, but at least it was dead
> > > > > > simple.
> > > > > > 
> > > > > > Imo what we need here is a change in approach:
> > > > > > 1. Check whether the useable view for scanout exists already. If yes,
> > > > > > use that. This should avoid the constant unbinding stalls.
> > > > > > 2. Try to in buffer to mappabley, but without evicting anything (so
> > > > > > not the non-blocking thing)
> > > > > > 3. Pin the buffer with the most lenient approach
> > > > > > 
> > > > > > Even the non-blocking interim stage is dangerous, since it'll just
> > > > > > result in other buffers (e.g. when triple-buffering) getting unbound
> > > > > > and we're back to the same stall. Note that this could have an impact
> > > > > > on cpu rendering compositors, where we might end up relying a lot more
> > > > > > partial views. But as long as we are a tad more aggressive (i.e. the
> > > > > > non-blocking binding) in the mmap path that should work out to keep
> > > > > > everything balanced, since usually you render first before you display
> > > > > > anything. And so the buffer should end up in the ideal place.
> > > > > > 
> > > > > > I'd try to first skip the 2. step since I think it'll require a bit of
> > > > > > work, and frankly I don't think we care about the potential fallout.
> > > > > 
> > > > > To be sure I understand, you propose to stop trying to pin mappable by default. Ie. stop
> > > > > respecting this comment from i915_gem_object_pin_to_display_plane:
> > > > > 
> > > > > 	/*
> > > > > 	 * As the user may map the buffer once pinned in the display plane
> > > > > 	 * (e.g. libkms for the bootup splash), we have to ensure that we
> > > > > 	 * always use map_and_fenceable for all scanout buffers. However,
> > > > > 	 * it may simply be too big to fit into mappable, in which case
> > > > > 	 * put it anyway and hope that userspace can cope (but always first
> > > > > 	 * try to preserve the existing ABI).
> > > > > 	 */
> > > > [Kasireddy, Vivek] Digging further, this is what the commit message that added
> > > > the above comment says:
> > > > commit 2efb813d5388e18255c54afac77bd91acd586908
> > > > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Date:   Thu Aug 18 17:17:06 2016 +0100
> > > > 
> > > >       drm/i915: Fallback to using unmappable memory for scanout
> > > > 
> > > >       The existing ABI says that scanouts are pinned into the mappable region
> > > >       so that legacy clients (e.g. old Xorg or plymouthd) can write directly
> > > >       into the scanout through a GTT mapping. However if the surface does not
> > > >       fit into the mappable region, we are better off just trying to fit it
> > > >       anywhere and hoping for the best. (Any userspace that is capable of
> > > >       using ginormous scanouts is also likely not to rely on pure GTT
> > > >       updates.) With the partial vma fault support, we are no longer
> > > >       restricted to only using scanouts that we can pin (though it is still
> > > >       preferred for performance reasons and for powersaving features like
> > > >       FBC).
> > > > 
> > > > > 
> > > > > By a quick look, for this case it appears we would end up creating partial views for CPU
> > > > > access (since the normal mapping would be busy/unpinnable). Worst case for this is to
> > > > > create a bunch of 1MiB VMAs so something to check would be how long those persist in
> > > > > memory before they get released. Or perhaps the bootup splash use case is not common
> > > > > these days?
> > > > [Kasireddy, Vivek] AFAIK, Plymouth is still the default bootup splash service on Fedora,
> > > > Ubuntu and most other distributions. And, I took a quick look at it and IIUC, it (Plymouth's
> > > > drm plugin) seems to create a dumb FB, mmap and update it via the dirty_fb ioctl. This
> > > > would not to be a problem on ADL-S where there is space in mappable for one 8K FB.
> > > > 
> > > 
> > > FBC is a good point - correct me if I am wrong, but if we dropped trying to
> > > map in aperture by default it looks like we would lose it and that would be
> > > a significant power regression. In which case it doesn't seem like that
> > > would be an option.
> > 
> > FBC fence is only required for frontbuffer hw tracking, which is another
> > thing that's somewhere between "meh" and "we should just sunset set it
> > right away". I think that work has even been done.
> > 
> > So I wouldn't worry about this.
> > 
> > If you are worried, then I'd check with display folks whether we need
> > a platform based cut-off for this heuristics.
> > 
> > > Which I think leaves us with _some_ heuristics in any case.
> > > 
> > > 1) N-holes heuristics.
> > > 
> > > 2) Don't ever try PIN_MAPPABLE for framebuffers larger than some percentage
> > > of aperture.
> > > 
> > > Could this solve the 8k issue, most of the time, maybe? Could the current
> > > "aperture / 2" test be expressed generically in some terms? Like "(aperture
> > > - 10% (or some absolute value)) / 2" to account for non-fb objects? I forgot
> > > what you said the relationship between aperture size and 8k fb size was.
> > > 
> > > 3) Don't evict for PIN_MAPPABLE mismatches when
> > > i915_gem_object_ggtt_pin_ww->i915_vma_misplaced is called on behalf of
> > > i915_gem_object_pin_to_display_plane. Assumption being if we ended up with a
> > > non-mappable fb to start with, we must not try to re-bind it or we risk
> > > ping-pong latencies.
> > > 
> > > The last would I guess need to distinguish between PIN_MAPPABLE passed in
> > > versus opportunistically added by i915_gem_object_pin_to_display_plane.
> > > 
> > > How intrusive would it be to implement this option I am not sure without
> > > trying myself.
> > 
> > This won't work, see my initial mail. All you need is triple buffering (or
> > multiple per-crtc buffers that flip)
> 
> I asked for clarifications on your initial email but you went a bit quiet on
> us, which is why I tried to drive this forward.

Yeah I'm burried on mailing list stuff pretty badly.

> > 1. fb A gets pinned as mappable
> > 2. fb B gets pinned as mappable, fb A is unpinned
> > 3. fb C gets pinned as mappable, we don't have space and end up evicting
> > fb A
> > 
> > Repeat, and you have exactly the same old eviction loop as with two
> > buffers. Not good.
> 
> Maybe a misunderstanding of what I wrote above? Idea was specifically not to
> evict for "opportunistic" PIN_MAPPABLE. Anyway, with the current solution to
> implement that, this is what would happen (see latest patch):
> 
> 1. fb A get pinned as mappable
> 2. fb B gets pinned as mappable, assuming there is space, fb A unpinned
> 3. fb C, assuming there is no space, does not get pinned as mappable so
> nothing is evicted
> 
> > Therefore for this to work we don't just need to make sure that we don't
> > move our own buffer, but also that we don't move any other buffer.
> 
> I think we achieved it by failing the "opportunistic" PIN_MAPPABLE attempts
> for all vmas which weren't already bound mappable in the past.

Ah yeah if that all works like that then I think we're fine.
-Daniel

> > The downside of that is that if a buffer is ever misplaced as mappable, we
> > never fix up that mistake (at least not until the application entirely
> > destroys all the involved fb and bo). I think that's acceptable, but
> > definitely deserves a comment.
> 
> This is true yes.
> 
> Regards,
> 
> Tvrtko

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
