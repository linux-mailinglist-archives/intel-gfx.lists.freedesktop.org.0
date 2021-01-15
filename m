Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C702F8027
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 16:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5FB6E42F;
	Fri, 15 Jan 2021 15:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0F56E42F;
 Fri, 15 Jan 2021 15:59:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23608384-1500050 for multiple; Fri, 15 Jan 2021 15:59:10 +0000
MIME-Version: 1.0
In-Reply-To: <20210115155226.3943181-1-daniel.vetter@ffwll.ch>
References: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
 <20210115155226.3943181-1-daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Fri, 15 Jan 2021 15:59:08 +0000
Message-ID: <161072634823.19482.13475673054687455694@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] dma-buf: Add debug option
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>, Christian König <christian.koenig@amd.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniel Vetter (2021-01-15 15:52:26)
> +static void mangle_sg_table(struct sg_table *sg_table)
> +{
> +#ifdef CONFIG_DMABUF_DEBUG
> +       int i;
> +       struct scatterlist *sg;
> +
> +       if (!sg_table)

if (!IS_ENABLED(CONFIG_DMABUF_DEBUG) || IS_ERR_OR_NULL(sg_table))
> +               return;

Although NULL is not meant to be returned.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
