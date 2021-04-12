Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBE035C10D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19EE189ECB;
	Mon, 12 Apr 2021 09:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8969689ECB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 09:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zS6sXBGdUsFphBAlFL9wxNMy6jNABiOFJl6yPbou+Z0=; b=F2S2z0ozp1hQ5jgdhoKa3ozAPo
 eBcD4uy+0ve2Z9T7KfCT0g13j5QHzGXJ7lHSHXYkwC7x3d86FtgxutsJUqHUK0Yd4r1ZxEn6RCZN3
 TUn/bVM8YasR85PJwrPmCr0nelUS3qKDAR5wceqY+oIMIFfcstZDnBT80AmZ/wsvBGynwBDH1S18t
 /Wd0cGPJQc25Nd6BSEvII8gZ5wC+tdYc1AU0Hhi600MHLUTS7fzMlPH7GggTTAwQuEsCm8mDcqlvz
 bWvgJnBsvOIsll1DZKEC1ViAYbke/7RBSXGuoTsJLtczbqBb/WK5NttHzRjusXo8c2P89jeVkV5pN
 RuqhLQAw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVsmn-0045gi-ON
 for intel-gfx@lists.freedesktop.org; Mon, 12 Apr 2021 09:23:22 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 2AD6D300033
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 11:23:13 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 10A2120224201; Mon, 12 Apr 2021 11:23:13 +0200 (CEST)
Date: Mon, 12 Apr 2021 11:23:12 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YHQRgLvrvxv/zvtG@hirez.programming.kicks-ass.net>
References: <20210412080012.357146277@infradead.org>
 <161821801624.8701.512016472387524468@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161821801624.8701.512016472387524468@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBt?=
 =?utf-8?b?bTogVW5leHBvcnQgYXBwbHlfdG9fcGFnZV9yYW5nZSgp?=
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

On Mon, Apr 12, 2021 at 09:00:16AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: mm: Unexport apply_to_page_range()
> URL   : https://patchwork.freedesktop.org/series/88943/
> State : failure
> 
> == Summary ==
> 
> CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND  objtool
>   CHK     include/generated/compile.h
> Kernel: arch/x86/boot/bzImage is ready  (#1)
>   MODPOST Module.symvers
> ERROR: modpost: "apply_to_page_range" [drivers/gpu/drm/i915/i915.ko] undefined!

This would be your robot not including the remap_pfn_range_notrack()
patches from Christoph I suppose..
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
