Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1723FC779
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 14:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0DC8917E;
	Tue, 31 Aug 2021 12:43:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D8A8917E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 12:43:40 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id z4so27465776wrr.6
 for <Intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 05:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0eDqauXKGTNMKedPNITzQrMvhIAJT4shn/5MiSEH11o=;
 b=ddkWr7i9n83+E2YBRK4rg4fqwSima9AeiWr404cI/hoiGhlFMgM58V22128x6GWVM0
 shXo/S4EbrW3eCRiLnJBWaxBJrQ/FO+p+4xBu9wm7PDqJifKUSGzbgeiXqPat/TX2pE7
 kiFI6y41SEL+U33UpvGxnK8t0si4dMjGUx4Qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0eDqauXKGTNMKedPNITzQrMvhIAJT4shn/5MiSEH11o=;
 b=Od135zYNAcnWcKoTm5uLpKRphcAscR8xc4B3ecz35ai+uAG5g8gCOQuY7VUErnGZGe
 oFsub3v51rxEe8a9PO7SCJJvCrj+Cm4Ly4R/C68MMkCY22ZYhXBqnLSdxDTAoELTusXv
 QTN2oxfszMe7w8eckLbWYUfPP8+XtLwGVqdCLG2nVsHY0GEwqD1nMrY1ftwgXIybf3dw
 BjsplfGLQZ+FdZjwd7ypMxQtPcCGB7nL9nOiOPOHSaiIiO5AofEJvGcQcnVbOfltmlVb
 a5pXeqvGwTwfx4LvIRnPV6Vu0Gh1jwOeaPafp76C6GDm7zLGAb8YZRSf7YCQ4oaf5TO+
 vGtg==
X-Gm-Message-State: AOAM533WMSRZR30xmff711DQp1OY1U2KnJ3fk7/SHso60GoUJuMhl4k3
 05HRCF7wSUJkrOUbOHgaGK34bs5mbcX3oA==
X-Google-Smtp-Source: ABdhPJzUPnDGqngg4R+zIU/wSL2gDhX8BqRuYB0FjP7RTVaRCIfDy0ayF9OkoK2iCIzW4hsC+tlw5A==
X-Received: by 2002:adf:c506:: with SMTP id q6mr30327927wrf.78.1630413818768; 
 Tue, 31 Aug 2021 05:43:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o12sm2392780wmr.2.2021.08.31.05.43.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 05:43:37 -0700 (PDT)
Date: Tue, 31 Aug 2021 14:43:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Message-ID: <YS4j+PbS8ImB/p9v@phenom.ffwll.local>
References: <20210827133039.287075-1-tvrtko.ursulin@linux.intel.com>
 <20210827143941.287958-1-tvrtko.ursulin@linux.intel.com>
 <9c042851-9a27-6bc7-0749-ed0c573e9c80@linux.intel.com>
 <YSyWMxUyxgTYZCYw@phenom.ffwll.local>
 <a382488e-cf1e-e61e-f132-d0868f4f23cf@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a382488e-cf1e-e61e-f132-d0868f4f23cf@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Handle Intel igfx + Intel dgfx
 hybrid graphics setup
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

On Tue, Aug 31, 2021 at 10:15:03AM +0100, Tvrtko Ursulin wrote:
> 
> On 30/08/2021 09:26, Daniel Vetter wrote:
> > On Fri, Aug 27, 2021 at 03:44:42PM +0100, Tvrtko Ursulin wrote:
> > > 
> > > On 27/08/2021 15:39, Tvrtko Ursulin wrote:
> > > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > 
> > > > In short this makes i915 work for hybrid setups (DRI_PRIME=1 with Mesa)
> > > > when rendering is done on Intel dgfx and scanout/composition on Intel
> > > > igfx.
> > > > 
> > > > Before this patch the driver was not quite ready for that setup, mainly
> > > > because it was able to emit a semaphore wait between the two GPUs, which
> > > > results in deadlocks because semaphore target location in HWSP is neither
> > > > shared between the two, nor mapped in both GGTT spaces.
> > > > 
> > > > To fix it the patch adds an additional check to a couple of relevant code
> > > > paths in order to prevent using semaphores for inter-engine
> > > > synchronisation between different driver instances.
> > > > 
> > > > Patch also moves singly used i915_gem_object_last_write_engine to be
> > > > private in its only calling unit (debugfs), while modifying it to only
> > > > show activity belonging to the respective driver instance.
> > > > 
> > > > What remains in this problem space is the question of the GEM busy ioctl.
> > > > We have a somewhat ambigous comment there saying only status of native
> > > > fences will be reported, which could be interpreted as either i915, or
> > > > native to the drm fd. For now I have decided to leave that as is, meaning
> > > > any i915 instance activity continues to be reported.
> > > > 
> > > > v2:
> > > >    * Avoid adding rq->i915. (Chris)
> > > > 
> > > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > 
> > Can't we just delete semaphore code and done?
> > - GuC won't have it
> > - media team benchmarked on top of softpin media driver, found no
> >    difference
> 
> You have S-curve for saturated workloads or something else? How thorough and
> which media team I guess.
> 
> From memory it was a nice win for some benchmarks (non-saturated ones), but
> as I have told you previously, we haven't been putting numbers in commit
> messages since it wasn't allowed. I may be able to dig out some more details
> if I went trawling through GEM channel IRC logs, although probably not the
> actual numbers since those were usually on pastebin. Or you go an talk with
> Chris since he probably remembers more details. Or you just decide you don't
> care and remove it. I wouldn't do that without putting the complete story in
> writing, but it's your call after all.

Media has also changed, they're not using relocations anymore.

Unless there's solid data performance tuning of any kind that gets in the
way simply needs to be removed. Yes this is radical, but the codebase is
in a state to require this.

So either way we'd need to rebenchmark this if it's really required. Also
if we really need this code still someone needs to fix the design, the
current code is making layering violations an art form.

> Anyway, without the debugfs churn it is more or less two line patch to fix
> igfx + dgfx hybrid setup. So while mulling it over this could go in. I'd
> just refine it to use a GGTT check instead of GT. And unless DG1 ends up
> being GuC only.

The minimal robust fix here is imo to stop us from upcasting dma_fence to
i915_request if it's not for our device. Not sprinkle code here into the
semaphore code. We shouldn't even get this far with foreign fences.
-Daniel

> 
> > - pre-gen8 semaphore code was also silently ditched and no one cared
> > 
> > Plus removing semaphore code would greatly simplify conversion to
> > drm/sched.
> > 
> > > > ---
> > > >    drivers/gpu/drm/i915/gem/i915_gem_object.h | 17 ----------
> > > >    drivers/gpu/drm/i915/i915_debugfs.c        | 39 ++++++++++++++++++++--
> > > >    drivers/gpu/drm/i915/i915_request.c        | 12 ++++++-
> > > >    3 files changed, 47 insertions(+), 21 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > index 48112b9d76df..3043fcbd31bd 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > @@ -503,23 +503,6 @@ i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
> > > >    	i915_gem_object_unpin_pages(obj);
> > > >    }
> > > > -static inline struct intel_engine_cs *
> > > > -i915_gem_object_last_write_engine(struct drm_i915_gem_object *obj)
> > > > -{
> > > > -	struct intel_engine_cs *engine = NULL;
> > > > -	struct dma_fence *fence;
> > > > -
> > > > -	rcu_read_lock();
> > > > -	fence = dma_resv_get_excl_unlocked(obj->base.resv);
> > > > -	rcu_read_unlock();
> > > > -
> > > > -	if (fence && dma_fence_is_i915(fence) && !dma_fence_is_signaled(fence))
> > > > -		engine = to_request(fence)->engine;
> > > > -	dma_fence_put(fence);
> > > > -
> > > > -	return engine;
> > > > -}
> > > > -
> > > >    void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
> > > >    					 unsigned int cache_level);
> > > >    void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj);
> > > > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > > > index 04351a851586..55fd6191eb32 100644
> > > > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > > > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > > > @@ -135,13 +135,46 @@ static const char *stringify_vma_type(const struct i915_vma *vma)
> > > >    	return "ppgtt";
> > > >    }
> > > > +static char *
> > > > +last_write_engine(struct drm_i915_private *i915,
> > > > +		  struct drm_i915_gem_object *obj)
> > > > +{
> > > > +	struct intel_engine_cs *engine;
> > > > +	struct dma_fence *fence;
> > > > +	char *res = NULL;
> > > > +
> > > > +	rcu_read_lock();
> > > > +	fence = dma_resv_get_excl_unlocked(obj->base.resv);
> > > > +	rcu_read_unlock();
> > > > +
> > > > +	if (!fence || dma_fence_is_signaled(fence))
> > > > +		goto out;
> > > > +
> > > > +	if (!dma_fence_is_i915(fence)) {
> > > > +		res = "<external-fence>";
> > > > +		goto out;
> > > > +	}
> > > > +
> > > > +	engine = to_request(fence)->engine;
> > > > +	if (engine->gt->i915 != i915) {
> > > > +		res = "<external-i915>";
> > > > +		goto out;
> > > > +	}
> > > > +
> > > > +	res = engine->name;
> > > > +
> > > > +out:
> > > > +	dma_fence_put(fence);
> > > > +	return res;
> > > > +}
> > > > +
> > > >    void
> > > >    i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
> > > >    {
> > > >    	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
> > > > -	struct intel_engine_cs *engine;
> > > >    	struct i915_vma *vma;
> > > >    	int pin_count = 0;
> > > > +	char *engine;
> > > >    	seq_printf(m, "%pK: %c%c%c %8zdKiB %02x %02x %s%s%s",
> > > >    		   &obj->base,
> > > > @@ -230,9 +263,9 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
> > > >    	if (i915_gem_object_is_framebuffer(obj))
> > > >    		seq_printf(m, " (fb)");
> > > > -	engine = i915_gem_object_last_write_engine(obj);
> > > > +	engine = last_write_engine(dev_priv, obj);
> > > >    	if (engine)
> > > > -		seq_printf(m, " (%s)", engine->name);
> > > > +		seq_printf(m, " (%s)", engine);
> > > 
> > > Or I zap this from the code altogether. Not sure it is very useful since the
> > > only caller is i915_gem_framebuffer debugfs file and how much it can care
> > > about maybe hitting the timing window when exclusive fence will contain
> > > something.
> > 
> > Ideally we'd just look at the fence timeline name. But i915 has this very
> > convoluted typesafe-by-rcu reuse which means we actually can't do that,
> > and our fence timeline name is very useless.
> 
> Why do we even care to output any of this here? I'd just remove it since it
> is a very transient state with an extremely short window of opportunity to
> make it show anything. Which I think makes it pretty useless in debugfs.
> 
> Regards,
> 
> Tvrtko
> 
> > 
> > Would be good to fix that, Matt Auld has started an attempt but didn't get
> > very far.
> > -Daniel
> > 
> > > 
> > > Regards,
> > > 
> > > Tvrtko
> > > 
> > > >    }
> > > >    static int i915_gem_object_info(struct seq_file *m, void *data)
> > > > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > > > index ce446716d092..64adf619fe82 100644
> > > > --- a/drivers/gpu/drm/i915/i915_request.c
> > > > +++ b/drivers/gpu/drm/i915/i915_request.c
> > > > @@ -1152,6 +1152,12 @@ __emit_semaphore_wait(struct i915_request *to,
> > > >    	return 0;
> > > >    }
> > > > +static bool
> > > > +can_use_semaphore_wait(struct i915_request *to, struct i915_request *from)
> > > > +{
> > > > +	return to->engine->gt == from->engine->gt;
> > > > +}
> > > > +
> > > >    static int
> > > >    emit_semaphore_wait(struct i915_request *to,
> > > >    		    struct i915_request *from,
> > > > @@ -1160,6 +1166,9 @@ emit_semaphore_wait(struct i915_request *to,
> > > >    	const intel_engine_mask_t mask = READ_ONCE(from->engine)->mask;
> > > >    	struct i915_sw_fence *wait = &to->submit;
> > > > +	if (!can_use_semaphore_wait(to, from))
> > > > +		goto await_fence;
> > > > +
> > > >    	if (!intel_context_use_semaphores(to->context))
> > > >    		goto await_fence;
> > > > @@ -1263,7 +1272,8 @@ __i915_request_await_execution(struct i915_request *to,
> > > >    	 * immediate execution, and so we must wait until it reaches the
> > > >    	 * active slot.
> > > >    	 */
> > > > -	if (intel_engine_has_semaphores(to->engine) &&
> > > > +	if (can_use_semaphore_wait(to, from) &&
> > > > +	    intel_engine_has_semaphores(to->engine) &&
> > > >    	    !i915_request_has_initial_breadcrumb(to)) {
> > > >    		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> > > >    		if (err < 0)
> > > > 
> > 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
