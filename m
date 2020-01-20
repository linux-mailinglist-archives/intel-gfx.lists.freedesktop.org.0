Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97259142C94
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 14:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF676E96F;
	Mon, 20 Jan 2020 13:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F0D6E96F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 13:54:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 05:54:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="244408457"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 20 Jan 2020 05:54:37 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 262485C1E05; Mon, 20 Jan 2020 15:53:57 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200120113642.4121605-3-chris@chris-wilson.co.uk>
References: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
 <20200120113642.4121605-3-chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 15:53:57 +0200
Message-ID: <87v9p6p72i.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] intel-ci: Use one ringfull example
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

> The principle under test is that we fill the ring and the kernel waits
> rather than overrun the ring buffer. We only need one test to exercise
> that basic behaviour in BAT.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  tests/intel-ci/fast-feedback.testlist | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
> index 8c574d910..40d273c1d 100644
> --- a/tests/intel-ci/fast-feedback.testlist
> +++ b/tests/intel-ci/fast-feedback.testlist
> @@ -39,10 +39,7 @@ igt@gem_mmap@basic
>  igt@gem_mmap_gtt@basic
>  igt@gem_render_linear_blits@basic
>  igt@gem_render_tiled_blits@basic
> -igt@gem_ringfill@basic-default
> -igt@gem_ringfill@basic-default-interruptible
>  igt@gem_ringfill@basic-default-forked
> -igt@gem_ringfill@basic-default-fd
>  igt@gem_sync@basic-all
>  igt@gem_sync@basic-each
>  igt@gem_tiled_blits@basic
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
