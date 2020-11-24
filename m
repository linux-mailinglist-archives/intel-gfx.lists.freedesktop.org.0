Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6292C304E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 19:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823996E512;
	Tue, 24 Nov 2020 18:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F79889AC2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 09:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=erVBEbSZXU0xKU0/OCceptXO8BMpPV2CdOs+DwG0M+s=; b=TbCvdo4FiP+XH83lk1czbsUuEA
 OTyCX3rCda0+ppk1biGGK9vHwCEtdw2l5r2hzwbfQhNDIHJfR0sCwpLA+DoNaxYDvK6qe6xCnfHPb
 lKBJM+WQ0UHQrhWZKyhLKrcjXbpI9XjAeY5gIN0QlLi+NG9OOZuJuwPCke5RBSUW/z6TFkSEg0FAD
 1wizpRmJ3u2zDT81oClpAEsX5u7AOH1Aq2STW23L7gdlFx3bFtYO/gq3e5Hya0qvaFalo/KeRZTP7
 UipqfF9bjU9WbEdfaDI0epSlOQx+reUs5Ob/Mnc0fP3t0jV+v5S1CDzWs1EZUqNYemD6JBN0tgf52
 hmtJmLDg==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1khUlm-0008Q5-Dm; Tue, 24 Nov 2020 09:37:54 +0000
Date: Tue, 24 Nov 2020 09:37:54 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201124093754.GC31963@infradead.org>
References: <cover.1606153547.git.jani.nikula@intel.com>
 <88003c1527386b93036e286e7917f1e33aec84ac.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88003c1527386b93036e286e7917f1e33aec84ac.1606153547.git.jani.nikula@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 24 Nov 2020 18:59:06 +0000
Subject: Re: [Intel-gfx] [PATCH 3/9] relay: make create_buf_file and
 remove_buf_file callbacks mandatory
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
Cc: Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 23, 2020 at 07:59:23PM +0200, Jani Nikula wrote:
> All clients provide create_buf_file and remove_buf_file callbacks, and
> they're required for relay to make sense. There is no point in them
> being optional.
> 
> Also document whether each callback is mandatory/optional.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
