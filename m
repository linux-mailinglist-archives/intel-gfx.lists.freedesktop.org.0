Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4AA142C8C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 14:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D50436E96C;
	Mon, 20 Jan 2020 13:51:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BCD96E96C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 13:51:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 05:51:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="221444851"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 20 Jan 2020 05:51:26 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7B4925C1E05; Mon, 20 Jan 2020 15:50:46 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
References: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 15:50:46 +0200
Message-ID: <87y2u2p77t.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] intel-ci: Drop gem_ctx_switch
 from fast feedback
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Only a couple of tests from gem_ctx_switch are run in BAT, to check we
> have multiple contexts on RCS. It doesn't actually verify the switch,
> just that the execbuf API accepts the context argument.
>
> This test is redundant as actual context switching (and more) is verified by
> live_gem_contexts and live_gt_contexts selftests.
>
> Instead of using the mediocre gem_ctx_switch stress test in BAT, use
> gem_exec_parallel/contexs and gem_exec_parallel/fds as both ensure
s/contexs/contexts

The gem_exec_parallel seems to use new topology api to set the context.
But the aim is to check the context id delivery through rsvd field
into execbuf?

> multiple contexts are supported for simultaneous use, in a fraction of
> the time.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/intel-ci/fast-feedback.testlist | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
> index 37a92b4e7..f697eb0cf 100644
> --- a/tests/intel-ci/fast-feedback.testlist
> +++ b/tests/intel-ci/fast-feedback.testlist
> @@ -14,8 +14,6 @@ igt@gem_ctx_create@basic-files
>  igt@gem_ctx_exec@basic
>  igt@gem_ctx_param@basic
>  igt@gem_ctx_param@basic-default
> -igt@gem_ctx_switch@legacy-render
> -igt@gem_ctx_switch@rcs0
>  igt@gem_exec_basic@basic
>  igt@gem_exec_create@basic
>  igt@gem_exec_fence@basic-busy-default
> @@ -24,6 +22,8 @@ igt@gem_exec_fence@basic-await-default
>  igt@gem_exec_fence@nb-await-default
>  igt@gem_exec_gttfill@basic
>  igt@gem_exec_parallel@basic
> +igt@gem_exec_parallel@contexts
> +igt@gem_exec_parallel@fds
>  igt@gem_exec_store@basic-all
>  igt@gem_exec_suspend@basic
>  igt@gem_exec_suspend@basic-s0
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
