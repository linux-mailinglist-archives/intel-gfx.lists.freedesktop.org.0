Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D62671CD43F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 10:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5FF89D83;
	Mon, 11 May 2020 08:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6590B89D83;
 Mon, 11 May 2020 08:51:18 +0000 (UTC)
IronPort-SDR: eRV4nW1R4Eym5xyluLh93t0n1JNSd79ODMpijkPtTG1OXNuplndFe1M8+OsgVxDzfhukvecsT3
 2evSaaMGe6Yg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 01:51:17 -0700
IronPort-SDR: NFQ4qyFRoUrEiWvCnr7y20K3CTO1cMOgocWEXUZfodEQeF1cfTn7Q0z6F4C4jbeRx8LX9IiVEm
 lzReiVXcot7w==
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; d="scan'208";a="436623660"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 01:51:15 -0700
Message-ID: <c391b824f21dd36956fbf95740e9ea4ba7548a24.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
Date: Mon, 11 May 2020 10:51:12 +0200
In-Reply-To: <158896045063.30605.10719204340280805143@build.alporthouse.com>
References: <20200508135631.8099-1-janusz.krzysztofik@linux.intel.com>
 <20200508135631.8099-3-janusz.krzysztofik@linux.intel.com>
 <158896045063.30605.10719204340280805143@build.alporthouse.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] tests/gem_exec_nop:
 Remove submission batching
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Fri, 2020-05-08 at 18:54 +0100, Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-05-08 14:56:31)
> >  static double nop_on_ring(int fd, uint32_t handle,
> >                           const struct intel_execution_engine2 *e, int timeout,
> > -                         unsigned long *out)
> > +                         unsigned long *count)
> >  {
> >         struct drm_i915_gem_execbuffer2 execbuf;
> >         struct drm_i915_gem_exec_object2 obj;
> >         struct timespec start, now;
> > -       unsigned long count;
> > +       unsigned long total;
> > +
> > +       igt_assert(*count);
> >  
> >         memset(&obj, 0, sizeof(obj));
> >         obj.handle = handle;
> > @@ -93,18 +95,18 @@ static double nop_on_ring(int fd, uint32_t handle,
> >         }
> >         intel_detect_and_clear_missed_interrupts(fd);
> >  
> > -       count = 0;
> > +       total = 0;
> >         clock_gettime(CLOCK_MONOTONIC, &start);
> >         do {
> > -               for (int loop = 0; loop < 1024; loop++)
> > +               for (int loop = 0; loop < *count; loop++)
> 
> This unnerves me. I expect to get this wrong when writing new callers.
> 
> There's no great reason to even have 1024 here, we can survive with
> doing clock_gettime() every iteration, and just accept it as part of the
> systematic cost.

Thanks for fixing this and merging the change.

Following our discussion on IRC which I probably didn't understand
precisely enough but maybe have a better understanding now after having
it reread, how about still addressing the "headless" requirement for
better precision with the following hunk?

@@ -373,10 +372,12 @@ stable_nop_on_ring(int fd, uint32_t handle,
 	while (reps--) {
 		unsigned long count;
 		double time;
 
 		time = nop_on_ring(fd, handle, e, timeout, &count);
+		igt_skip_on_f(count < 1000 * timeout,
+			      "submicrosecond precision of time measurement\n");
 		igt_stats_push_float(&s, time / count);
 	}
 
 	n = igt_stats_get_median(&s);
 	igt_stats_fini(&s);

Thanks,
Janusz


> >  
> > -               count += 1024;
> > +               total += *count;
> >                 clock_gettime(CLOCK_MONOTONIC, &now);
> >         } while (elapsed(&start, &now) < timeout);
> >         igt_assert_eq(intel_detect_and_clear_missed_interrupts(fd), 0);
> >  
> > -       *out = count;
> > +       *count = total;
> >         return elapsed(&start, &now);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
