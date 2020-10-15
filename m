Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDC928F78E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 19:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0DB56E092;
	Thu, 15 Oct 2020 17:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035A46E092;
 Thu, 15 Oct 2020 17:18:57 +0000 (UTC)
IronPort-SDR: Q2zyTGC9eh+8BEDbakF3z1w/jzzQmRVR/7Wa8quwZL5rsMlMIl8k5h/rtsAXUeZsP/7rwwhcHl
 9VOM4134AryA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="165627667"
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="165627667"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 10:18:57 -0700
IronPort-SDR: roa/QIq3Z3+iB7PnDW2ECwUYsU8Y49cWwp4fTu08MUc8apLHe0lN3TVmdYopZHBZwrN90gqvfC
 5ODoMEI0q4TA==
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="319106718"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 10:18:55 -0700
Message-ID: <7e13ba8833d8fbb887c01e420591a10944965147.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>, 
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 19:18:53 +0200
In-Reply-To: <80c901a14b3e4976fa670b410b96926cd97b370d.camel@linux.intel.com>
References: <20201014165535.25668-1-janusz.krzysztofik@linux.intel.com>
 <80c901a14b3e4976fa670b410b96926cd97b370d.camel@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/core_hotunplug: Take
 care of closing fences before failing
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-10-15 at 09:40 +0200, Marcin Bernatowicz wrote:
> On Wed, 2020-10-14 at 18:55 +0200, Janusz Krzysztofik wrote:
> > The test was designed to keep track of open device file descriptors
> > for safe driver unbind on recovery from a failed subtest.  In that
> > context, fences introduced by commit 1fbd127bd4e1 ("core_hotplug:
> > Teach the healthcheck how to check execution status") can affect
> > device
> > recovery as much as an open device file if not closed before unbind.
> > 
> > Moreover, forced GPU reset which used to be applied on recovery from
> > a
> > failed i915 GPU health check is no longer reachable since a GPU hang
> > hopefully detected by the new health check algorithm can now break
> > the
> > whole recovery procedure prematurely.
> > 
> > Refactor local_i915_healthcheck() so it takes care of closing fences
> > and returns a result to its caller instead of long jumping on
> > failures
> > believed to be recoverable.  While avoiding use of igt_assert() and
> > friends, report actual source and error code of failures via
> > igt_warn_on_f().
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  tests/core_hotunplug.c | 46 ++++++++++++++++++++++++++++++++------
> > ----
> >  1 file changed, 35 insertions(+), 11 deletions(-)
> > 
> > diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> > index 70669c590..d6db02bad 100644
> > --- a/tests/core_hotunplug.c
> > +++ b/tests/core_hotunplug.c
> > @@ -233,9 +233,9 @@ static int merge_fences(int old, int new)
> >  		return new;
> >  
> >  	merge = sync_fence_merge(old, new);
> > -	igt_assert(merge != -1);
> > -	close(old);
> > -	close(new);
> > +	/* Assume fence close errors don't affect device close status
> > */
> > +	igt_ignore_warn(local_close(old, "old fence close failed"));
> > +	igt_ignore_warn(local_close(new, "new fence close failed"));
> >  
> >  	return merge;
> >  }
> > @@ -249,29 +249,53 @@ static int local_i915_healthcheck(int i915,
> > const char *prefix)
> >  		.buffer_count = 1,
> >  	};
> >  	const struct intel_execution_engine2 *engine;
> > -	int fence = -1;
> > +	int fence = -1, err = 0, status = 1;
> >  
> >  	local_debug("%s%s\n", prefix, "running i915 GPU healthcheck");
> > -	if (local_i915_is_wedged(i915))
> > +	if (igt_warn_on_f(local_i915_is_wedged(i915), "GPU found
> > wedged\n"))
> >  		return -EIO;
> >  
> > +	/* Assume gem_create()/gem_write() failures are unrecoverable
> > */
> >  	obj.handle = gem_create(i915, 4096);
> >  	gem_write(i915, obj.handle, 0, &bbe, sizeof(bbe));
> >  
> > +	/* As soon as a fence is open, don't fail before closing it */
> >  	__for_each_physical_engine(i915, engine) {
> >  		execbuf.flags = engine->flags | I915_EXEC_FENCE_OUT;
> > -		gem_execbuf_wr(i915, &execbuf);
> > +		err = __gem_execbuf_wr(i915, &execbuf);
> > +		if (igt_warn_on_f(err < 0, "__gem_execbuf_wr() returned
> > %d\n",
> > +				  err))
> > +			break;
> >  
> >  		fence = merge_fences(fence, execbuf.rsvd2 >> 32);
> > +		if (igt_warn_on_f(fence < 0, "merge_fences() returned
> > %d\n",
> > +				  fence)) {
> > +			err = fence;
> > +			break;
> > +		}
> > +	}
> > +	if (fence >= 0) {
> > +		status = sync_fence_wait(fence, -1);
> > +		if (igt_warn_on_f(status < 0, "sync_fence_wait()
> > returned %d\n",
> > +				  status))
> > +			err = status;
> > +		if (!err)
> > +			status = sync_fence_status(fence);
> > +
> > +		/* Assume fence close errors don't affect device close
> > status */
> > +		igt_ignore_warn(local_close(fence, "fence close
> > failed"));
> >  	}
> > -	igt_assert(fence != -1);
> > +
> > +	/* Assume gem_close() failure is unrecoverable */
> >  	gem_close(i915, obj.handle);
> >  
> > -	igt_assert_eq(sync_fence_wait(fence, -1), 0);
> > -	igt_assert_eq(sync_fence_status(fence), 1);
> > -	close(fence);
> > +	if (err < 0)
> > +		return err;
> > +	if (igt_warn_on_f(status != 1, "sync_fence_status() returned
> > %d\n",
> > +			  status))
> > +		return -1;
> >  
> > -	if (local_i915_is_wedged(i915))
> > +	if (igt_warn_on_f(local_i915_is_wedged(i915), "GPU turned
> > wedged\n"))
> >  		return -EIO;
> LGTM,
> Reviewed-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>

Thanks Marcin, pushed.

Unfortunately I forgot to include the R-b and pushed without it so it
will exist only in the list archives, sorry.

Thanks,
Janusz

> 
> >  
> >  	return 0;

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
