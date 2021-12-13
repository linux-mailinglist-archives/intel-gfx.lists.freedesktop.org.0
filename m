Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B03472DDE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 14:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037DC10E7C1;
	Mon, 13 Dec 2021 13:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nmtao101.oxsus-vadesecure.net (unknown [51.81.61.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DBAE10E7C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 13:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; bh=LnQNouBWvqRgjvbchuw+pBhNmzyP/LTRfCsDwX
 RJuZU=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-subscribe:list-post:
 list-owner:list-archive; q=dns/txt; s=dk12062016; t=1639403458;
 x=1640008258; b=GkRgBorAYMKBer4wIN04mc8y1elmo3qXydd3Wr5jpckncoHE66achnv
 Q0fTNMS3JH1TCyoUjKsF+pF87Qi7NnDT+D121upyRoQw9uTtxk9vlq+mbw2wABzd2BXvYzQ
 lqq+N5eY1g73nxTe8LkJ7J6oHGQF4v5XS1njzD0qIkp9MTI/4MmK9OEAEt0OZSciv44HdYs
 aYBqWFLxYsS0nxYoUJYQCwPpSbjn4xdgYQMI3XgLlobYl1nDWVq5J0TmMn1l6N2z+tZ+WGb
 2/m6CbagrZmapXYTEQL5f1R3nw6BikH0oQoMeuctx5Z1HnDpOKTBbA5AUx6rI8LDvCbGRRg
 HvQ==
Received: from [192.168.0.11] ([24.50.25.135])
 by smtp.oxsus-vadesecure.net ESMTP oxsus1nmtao01p with ngmta
 id 9ba52335-16c054c28534ee1c; Mon, 13 Dec 2021 13:50:58 +0000
From: Felix Miata <mrmazda@earthlink.net>
To: intel-gfx@lists.freedesktop.org
References: <e63cb7d2-4d6f-ce11-6ba1-0d44b21cde75@earthlink.net>
Organization: less than infinite
Message-ID: <a919824d-081c-f149-b12e-17ebeae58714@earthlink.net>
Date: Mon, 13 Dec 2021 08:50:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 SeaMonkey/2.49.5
MIME-Version: 1.0
In-Reply-To: <e63cb7d2-4d6f-ce11-6ba1-0d44b21cde75@earthlink.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] KMS start locks up RocketLake-S GT1
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

Felix Miata composed on 2021-12-12 00:37 (UTC-0500):

> Is there a command line option needed for RocketLake-S GT1 on i5-11400? Is it
> supposed to use some module other than i915? Tumbleweed kernel 5.15.6 locks up,
> apparently when KMS should be kicking in. I can't get any logs or dmesg except
> when booting with nomodeset.
											
Reported:
https://gitlab.freedesktop.org/drm/intel/-/issues/4762
-- 
Evolution as taught in public schools is, like religion,
	based on faith, not based on science.

 Team OS/2 ** Reg. Linux User #211409 ** a11y rocks!

Felix Miata
