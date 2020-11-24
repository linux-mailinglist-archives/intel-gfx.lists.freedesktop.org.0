Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5AC2C304D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 19:59:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA306E50B;
	Tue, 24 Nov 2020 18:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212A189AC2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 09:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=l2WBiCb5duYJRA9nKpihqrJOH1Qjg6utSrFiu8qAdtc=; b=ZJSAndn+5qtPYlK0pS4YJ2j8jQ
 ci2kO4FHy3MiwNhvslulEAEqrmyHuVX9Z/vY1RFqPrfIOEfirMxf9iH/P3Ts4ozdcxroYeeuHqqLZ
 3+Gvife8Djda1MauEz2ZU5CEt9mDxMauQIm5ct7WojA6HKSFIePbBydkypTW8D4v9bB3+4UndEA44
 ZLqXNOD6rHwb5sPSOhfcrsvwK0DNnsjGFHgvHKEdSIem0T++Oek78o/WT4nFFhHBmwfgF6AMrPvJ6
 2Jctr6bHMgIhGPVmhffdBjDyalP5aE3JIXEHOWXreT7cFHhm5bgZjpGG/+xHP/BBl1+4duKHFZFlM
 Oehq27ig==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1khUlB-0008PK-1S; Tue, 24 Nov 2020 09:37:17 +0000
Date: Tue, 24 Nov 2020 09:37:16 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201124093716.GA31963@infradead.org>
References: <cover.1606153547.git.jani.nikula@intel.com>
 <c69fff6e0cd485563604240bbfcc028434983bec.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c69fff6e0cd485563604240bbfcc028434983bec.1606153547.git.jani.nikula@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 24 Nov 2020 18:59:06 +0000
Subject: Re: [Intel-gfx] [PATCH 1/9] relay: remove unused buf_mapped and
 buf_unmapped callbacks
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

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
