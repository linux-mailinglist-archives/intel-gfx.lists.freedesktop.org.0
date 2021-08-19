Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B703F161F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 11:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F8F6E7D1;
	Thu, 19 Aug 2021 09:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144556E7D1;
 Thu, 19 Aug 2021 09:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=o71atK1N/ttros2m0GUwiV587h5QYRfIAhyzKk18UQQ=; b=iFi3JwVYlsdso3W4Dc3dMUU70s
 XK19q5yE4rJdVY/Sl0nQRrQcs3HQU+QdWs7bY2S/Gr4Tj9PyTUGNzQYrz+Y/khCli0gdeUHxt8xv7
 e2pz+vw0+beWpW7vjuoPPoYDMfBC3OAdeIHdKTl1oeB0gGA7X0MgcsgRDSq2mnM5vYeIQHiVikFMR
 0x51mSFLKcjeUESvZoZOgiRjbGX0bVOyLH5WuUF8c2Np42kh34ZGpOmT+fha6YQwrjP4LMFKFiua0
 qYPF547PsvMrvJF2HGkhmk4YL4o3fnbtOt8l77GP/jH9XCLv4Drdm01suCQ4bDnbNgamIu2S6SXlT
 wVHeRNTw==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1mGeJG-004ruk-MC; Thu, 19 Aug 2021 09:26:09 +0000
Date: Thu, 19 Aug 2021 10:26:02 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com, axboe@kernel.dk,
 oleg@redhat.com, tglx@linutronix.de, dvyukov@google.com,
 walter-zh.wu@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 kernel test robot <lkp@intel.com>
Message-ID: <YR4jqvZtu0gbaVmx@infradead.org>
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
 <20210818073824.1560124-9-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-9-desmondcheongzx@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [PATCH v3 8/9] kernel: export task_work_add
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

On Wed, Aug 18, 2021 at 03:38:23PM +0800, Desmond Cheong Zhi Xi wrote:
> +EXPORT_SYMBOL(task_work_add);

EXPORT_SYMBOL_GPL for this kinds of functionality, please.
