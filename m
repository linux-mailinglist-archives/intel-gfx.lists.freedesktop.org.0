Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B749204E06
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 11:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A116E6E966;
	Tue, 23 Jun 2020 09:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C1B6E966
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 09:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id B3EAB4139B;
 Tue, 23 Jun 2020 11:33:29 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=FAS1unA0; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LBl9oVlpr8qR; Tue, 23 Jun 2020 11:33:28 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id AA2B73F80C;
 Tue, 23 Jun 2020 11:33:27 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 96693360157;
 Tue, 23 Jun 2020 11:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592904806; bh=LTeFzWiH+3e8412vIsMKxCBZEBJKJDPxHGPRVdZa7lo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=FAS1unA0TbZ3Ds2jds4ZmgJ1wzf8lMGiBKRB5KKeEe0KFVCYllXuPqjYlWMT5kGGG
 70fn23qVViv+v8xPKApZPUEraaxknU9PEGx2JJo7FVbX1tYlzXYScq5WNPf1zQ1PEV
 F1VvBqWxDe8Pod5Hz4bhkLOCpkMe38CqpFuq9+hE=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
Date: Tue, 23 Jun 2020 11:33:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200622095921.15530-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Chris!

On 6/22/20 11:59 AM, Chris Wilson wrote:
> In order to actually handle eviction and what not, we need to process
> all the objects together under a common lock, reservation_ww_class. As
> such, do a memory reservation pass after looking up the object/vma,
> which then feeds into the rest of execbuf [relocation, cmdparsing,
> flushing and ofc execution].
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 91 ++++++++++++++-----
>   1 file changed, 70 insertions(+), 21 deletions(-)
>
Which tree is this against? The series doesn't apply cleanly against 
drm-tip?

...

> +static int eb_reserve_mm(struct i915_execbuffer *eb)
> +{
> +	const u64 idx = eb->context->timeline->fence_context;
> +	struct ww_acquire_ctx acquire;
> +	struct eb_vma *ev;
> +	int err;
> +
> +	eb->mm_fence = __dma_fence_create_proxy(0, 0);
> +	if (!eb->mm_fence)
> +		return -ENOMEM;

Where are the proxy fence functions defined?

Thanks,

Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
