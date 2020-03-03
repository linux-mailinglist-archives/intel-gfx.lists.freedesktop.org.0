Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD5117791D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 15:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0106EA75;
	Tue,  3 Mar 2020 14:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5516EA75;
 Tue,  3 Mar 2020 14:35:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 06:35:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="274220234"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 03 Mar 2020 06:35:24 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 46F205C1D7C; Tue,  3 Mar 2020 16:34:09 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200303141842.1575190-1-chris@chris-wilson.co.uk>
References: <20200303141842.1575190-1-chris@chris-wilson.co.uk>
Date: Tue, 03 Mar 2020 16:34:09 +0200
Message-ID: <87o8td5wym.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_create: Trim loop
 counters
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> gem_create + gem_execbuf should be long enough that the accuracy of
> gettime is insignificant; and this is a test not a benchmark! Remove the
> 1024 loop so that we check for timeout more frequently.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  tests/i915/gem_exec_create.c | 26 ++++++++++++--------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
>
> diff --git a/tests/i915/gem_exec_create.c b/tests/i915/gem_exec_create.c
> index 102a161d5..e3ceb3f5c 100644
> --- a/tests/i915/gem_exec_create.c
> +++ b/tests/i915/gem_exec_create.c
> @@ -93,23 +93,21 @@ static void all(int fd, unsigned flags, int timeout, int ncpus)
>  		count = 0;
>  		clock_gettime(CLOCK_MONOTONIC, &start);
>  		do {
> -			for (int loop = 0; loop < 1024; loop++) {
> -				for (int n = 0; n < nengine; n++) {
> -					obj.handle =  gem_create(fd, 4096);
> -					gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
> -					execbuf.flags &= ~ENGINE_FLAGS;
> -					execbuf.flags |= engines[n];
> -					gem_execbuf(fd, &execbuf);
> -					if (flags & LEAK)
> -						gem_madvise(fd, obj.handle, I915_MADV_DONTNEED);
> -					else
> -						gem_close(fd, obj.handle);
> -				}
> +			for (int n = 0; n < nengine; n++) {
> +				obj.handle = gem_create(fd, 4096);
> +				gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
> +				execbuf.flags &= ~ENGINE_FLAGS;
> +				execbuf.flags |= engines[n];
> +				gem_execbuf(fd, &execbuf);
> +				if (flags & LEAK)
> +					gem_madvise(fd, obj.handle, I915_MADV_DONTNEED);
> +				else
> +					gem_close(fd, obj.handle);
>  			}
> -			count += nengine * 1024;
> +			count += nengine;
>  			clock_gettime(CLOCK_MONOTONIC, &now);
>  		} while (elapsed(&start, &now) < timeout); /* Hang detection ~120s */
> -		obj.handle =  gem_create(fd, 4096);
> +		obj.handle = gem_create(fd, 4096);
>  		gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
>  		for (int n = 0; n < nengine; n++) {
>  			execbuf.flags &= ~ENGINE_FLAGS;
> -- 
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
