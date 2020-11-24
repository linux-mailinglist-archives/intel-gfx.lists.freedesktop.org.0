Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8972C304B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 19:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C36A6E50C;
	Tue, 24 Nov 2020 18:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CB989EB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7Z4sCBK7+r3zxiDTPSYcv0Xe629cAkXNqDnpxaka9BI=; b=kiCSZDEgg3lnkgExk/osaqCd9M
 ULK/cxluf5kC4iJST/I3Ul0DnxDBfU3QAGlbeA8q7avb0PHFcWZVVhSW3iqtM6ihK5yNIA7IOk5Hk
 DnQZovtZqURQZbw/kpyVF4AxKFpUoBiLJmz7vfxKVTU0dNlPQWNHSDK0UrnwqBTD7Ik2FHtzQ7m2X
 5N/DIPf9z5ygV9AjUpu+3q+8L2YNu8GP8qMJ8LqQGi+XyG1UeUtqvNWUHjOsqvTSm1ATTc2mQHvLG
 /OcZGPX86MAHIASoVJVwPqBaOpT/YmN34xAqUeLKmYFOrnh7Rv1E4hV47ZlVS0oUt/eXqBYssoin9
 lpso3lNg==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1khUpt-0000OQ-6d; Tue, 24 Nov 2020 09:42:09 +0000
Date: Tue, 24 Nov 2020 09:42:09 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201124094209.GD31963@infradead.org>
References: <cover.1606153547.git.jani.nikula@intel.com>
 <cc3ff292e4eb4fdc56bee3d690c7b8e39209cd37.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc3ff292e4eb4fdc56bee3d690c7b8e39209cd37.1606153547.git.jani.nikula@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 24 Nov 2020 18:59:06 +0000
Subject: Re: [Intel-gfx] [PATCH 4/9] relay: allow the use of const callback
 structs
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, ath11k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> +/* subbuf_start callback wrapper */
> +static int cb_subbuf_start(struct rchan_buf *buf, void *subbuf,
> +			   void *prev_subbuf, size_t prev_padding)

I don't think the comment adds any information over just looking at the
function and the two callers.  I'd also name it relay_subbuf_start
instead of the cb_ prefix not used anywhere else in the file.


>  {
> +	if (buf->chan->cb->subbuf_start)
> +		return buf->chan->cb->subbuf_start(buf, subbuf,
> +						   prev_subbuf, prev_padding);
> +
>  	if (relay_buf_full(buf))
>  		return 0;

This could also be simplified a bit more to:

	if (!buf->chan->cb->subbuf_start)
		return !relay_buf_full(buf);
	return buf->chan->cb->subbuf_start(buf, subbuf, prev_subbuf,
					   prev_padding);

Otherwise this looks good to me:

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
