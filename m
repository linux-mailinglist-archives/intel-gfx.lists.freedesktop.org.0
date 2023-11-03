Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 682507DFD8F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 01:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3CD10E338;
	Fri,  3 Nov 2023 00:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBCA10E338
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 00:37:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 47C35CE19DC;
 Fri,  3 Nov 2023 00:37:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EB9BC433C7;
 Fri,  3 Nov 2023 00:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698971871;
 bh=Tn7ZiKU92Z3I+lrV2CtQT/r23bkf8NeDYVy3pTt5p6U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gu4jgwWwqT7lnOWjpm+vLH4H7qfUCfkuwAPz2twU0fCw2CzK7sPhMwpjgN00ZOPM1
 qtFtWGLCdoYhTsaUuDTE2FyjfpgJqxSvKk6aH5D+KuTiIiJeBI3EEx3sl6g9lzrZUE
 s5RAXpQ1Fur8eda380UMDp1uWaqOB9fS5Xva3pi14yIfvRjt4J+94xRP1bunCPN92D
 yHQVv4Bght4n5+VMMi1gw4sE9r/PKctgZd+pyCcEUGSCZlrp/47RWSAS4Ap0dA/GjR
 VcH5vZx9RmV12hBnFgbBwuE/x1HXqBsqkvqZsOk5AvjfZkEAcE4EkYLZCCGZ0T8Nj0
 Nx8sdS06C/y6w==
Date: Fri, 3 Nov 2023 01:37:45 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20231103003745.2utuejql36xdowjy@zenone.zhora.eu>
References: <20231027174745.4058-1-anonolitunya@gmail.com>
 <ZT_5InkXDfIzzonu@ashyti-mobl2.lan> <87jzr02vf1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87jzr02vf1.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove prohibited space after
 opening parenthesis
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
Cc: karolinadrobnik@gmail.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thu, Nov 02, 2023 at 02:26:26PM +0200, Jani Nikula wrote:
> On Mon, 30 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > Hi Dorcas,
> >
> > On Fri, Oct 27, 2023 at 08:47:45PM +0300, Dorcas AnonoLitunya wrote:
> >> Removes space after opening parenthesis.
> >> 
> >> Fixes the checkpatch.pl error:
> >> ERROR: space prohibited after that opening parenthesis '('
> >> 
> >> Signed-off-by: Dorcas AnonoLitunya <anonolitunya@gmail.com>
> >> ---
> >>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> index 4a11219e560e..40687806d22a 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> @@ -47,7 +47,7 @@
> >>  #define GEN9_LR_CONTEXT_RENDER_SIZE	(22 * PAGE_SIZE)
> >>  #define GEN11_LR_CONTEXT_RENDER_SIZE	(14 * PAGE_SIZE)
> >>  
> >> -#define GEN8_LR_CONTEXT_OTHER_SIZE	( 2 * PAGE_SIZE)
> >> +#define GEN8_LR_CONTEXT_OTHER_SIZE	(2 * PAGE_SIZE)
> >
> > I'm actually having second thoughts on this change. The space was
> > left on purpose in order to be aligned with the defines above.
> 
> I'd merge the patch.

thanks for your opinion!

Merged in drm-intel-gt-next.

Thanks,
Andi
