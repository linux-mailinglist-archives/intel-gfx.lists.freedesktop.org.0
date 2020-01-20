Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F61142C99
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 14:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06226E972;
	Mon, 20 Jan 2020 13:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BB5C6E972
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 13:55:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 05:55:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="249972157"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jan 2020 05:55:41 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 43B595C1E05; Mon, 20 Jan 2020 15:55:01 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200120113642.4121605-2-chris@chris-wilson.co.uk>
References: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
 <20200120113642.4121605-2-chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 15:55:01 +0200
Message-ID: <87sgkap70q.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/3] intel-ci: Reduce variety of
 gem_sync in BAT
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

> Historically, we've had many problems with missed interrupt/seqno
> syndrome and so have focus on testing with gem_sync. However, these
> tests rely on the kernel itself reporting the issue which it no longer
> does. So why the extra variety may impose different timing of execution
> on the HW (and so different interrupt timings which may or may not help
> uncover issues), they do not have any variety in driver coverage. Reduce
> the variety (halving the associated runtime) as they are no more likely
> to spot an issue than multiple runs through BAT.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  tests/intel-ci/fast-feedback.testlist | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
> index f697eb0cf..8c574d910 100644
> --- a/tests/intel-ci/fast-feedback.testlist
> +++ b/tests/intel-ci/fast-feedback.testlist
> @@ -45,9 +45,6 @@ igt@gem_ringfill@basic-default-forked
>  igt@gem_ringfill@basic-default-fd
>  igt@gem_sync@basic-all
>  igt@gem_sync@basic-each
> -igt@gem_sync@basic-many-each
> -igt@gem_sync@basic-store-all
> -igt@gem_sync@basic-store-each
>  igt@gem_tiled_blits@basic
>  igt@gem_tiled_fence_blits@basic
>  igt@gem_tiled_pread_basic
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
