Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65999232F16
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 11:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C543C6E89C;
	Thu, 30 Jul 2020 09:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B13766E896
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 09:00:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21978511-1500050 for multiple; Thu, 30 Jul 2020 10:00:28 +0100
MIME-Version: 1.0
In-Reply-To: <20200730004826.8415-7-umesh.nerlige.ramappa@intel.com>
References: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
 <20200730004826.8415-7-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 10:00:26 +0100
Message-ID: <159609962682.13987.3159104941038594482@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
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

Quoting Umesh Nerlige Ramappa (2020-07-30 01:48:26)
> @@ -3318,12 +3354,87 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>         i915_perf_destroy_locked(stream);
>         mutex_unlock(&perf->lock);
>  
> +       /*
> +        * User could have multiple vmas from multiple mmaps. We want to zap
> +        * them all here.
> +        */
> +       unmap_mapping_range(file->f_mapping, 0, -1, 1);

I'd prefer to explicitly revoke the mapping before removing the
stream->oa_buffer (i.e. at the start of the release before
i915_perf_destroy). That way it takes far less thought to convince
oneself that there is no window for accessing the stale PTE. Include a
comment to explain that a fresh fault cannot occur as the mmap holds a
reference to the stream (via the vma->vm_file), and so before the user's
munmap, the stream cannot be destroy.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
