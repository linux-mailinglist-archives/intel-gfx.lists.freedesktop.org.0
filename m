Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +lA6Iy1VNWoOtQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:41:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A05B6A677A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:41:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC87C10F642;
	Fri, 19 Jun 2026 14:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDA410F63C;
 Fri, 19 Jun 2026 14:41:43 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 9F992601E2;
 Fri, 19 Jun 2026 14:41:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F3941F000E9;
 Fri, 19 Jun 2026 14:41:39 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: jgg@nvidia.com
Cc: airlied@gmail.com, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 patches@lists.linux.dev, rodrigo.vivi@intel.com, simona@ffwll.ch,
 sumit.semwal@linaro.org, tursulin@ursulin.net,
 Brendan Higgins <brendan.higgins@linux.dev>,
 David Gow <david@davidgow.net>, kunit-dev@googlegroups.com
Subject: Re: [PATCH 1/5] dma-buf: Change st-dma-resv.c to use kunit
Date: Fri, 19 Jun 2026 16:41:37 +0200
Message-ID: <20260619144137.1582409-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <1-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
References: <1-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.11 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[renesas];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[glider.be];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,linux.intel.com,lists.linaro.org,vger.kernel.org,lists.linux.dev,intel.com,ffwll.ch,linaro.org,ursulin.net,linux.dev,davidgow.net,googlegroups.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@glider.be,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,nvidia.com:email,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A05B6A677A

	Hi Jason,

> Modernize the open coded test framework by using kunit.
> 
> The kunit tool can be used to build a kernel and run it in a VM with:
> 
> $ tools/testing/kunit/kunit.py run --build_dir build_kunit_x86_64 --arch x86_64 --kunitconfig ./drivers/dma-buf/.kunitconfig
> 
> Along with the other ways to run kunits.
> 
> To make the kunit tool work like this the DMABUF_KUNIT_TEST kconfig must
> select DMA_SHARED_BUFFER to get it turned on without building a driver
> using it.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Thanks for your patch, which is now commit 15b9bde78baddc27 ("dma-buf:
Change st-dma-resv.c to use kunit") upstream.

> --- /dev/null
> +++ b/drivers/dma-buf/.kunitconfig
> @@ -0,0 +1,2 @@
> +CONFIG_KUNIT=y
> +CONFIG_DMABUF_KUNIT_TEST=y
> diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
> index 8d4f2f89f24e3c..7d13c8f4484dd3 100644
> --- a/drivers/dma-buf/Kconfig
> +++ b/drivers/dma-buf/Kconfig
> @@ -54,6 +54,14 @@ config DMABUF_SELFTESTS
>  	default n
>  	depends on DMA_SHARED_BUFFER
>  
> +config DMABUF_KUNIT_TEST
> +	tristate "KUnit tests for DMA-BUF" if !KUNIT_ALL_TESTS
> +	depends on KUNIT
> +	select DMA_SHARED_BUFFER

This select means that enabling KUNIT_ALL_TESTS also enables extra
functionality, which may not be desirable in a production system.
Unfortunately DMA_SHARED_BUFFER is invisible, so just changing this from
"select" to "depends on" may not be the most desirable solution.

> +	default KUNIT_ALL_TESTS
> +	help
> +	   Enable kunit tests for DMA-BUF
> +
>  menuconfig DMABUF_HEAPS
>  	bool "DMA-BUF Userland Memory Heaps"
>  	select DMA_SHARED_BUFFER

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
