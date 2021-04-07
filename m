Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA32B3570E6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 17:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9696E939;
	Wed,  7 Apr 2021 15:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D386E939
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 15:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5iclkl6OPmzxu69Z9uPlRgzh4j06rdiU/d2Dg/4lVis=; b=nA93mZylFzmahI5Sty1VNc+0VK
 h+cFTtWndwCW0V1fQ01qJQynp4bgdfuDIk9RZhRPuUV1JycxsKHUm0ZJk61D7ayLD+dhoEtCE3Y2D
 9fYw1RT0u9aVe4Jmv4+bS8iS66hrBAyfcbrgZPyJzUHUqdfTe0Ixl1LV6h3yCqGn7koCoZI4k1T6h
 Qp7EUyr8Dvt5UVQEKv3h0s9ovMrDK1WXZ9qLwEkEEXE42SaOeKwlkfB1I3rKIoVgtOR3/a4kAfzB5
 i5YF3YvbnuM9npnjUYACRW9f8G29iJ9T0V0HQd9BAh9mEZbIZ5nldBfxpjW0Z3IrGx55wTEyfaJs/
 CpJ3JNag==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lUAPf-00EhWR-FW; Wed, 07 Apr 2021 15:48:29 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 8F2AE30005A;
 Wed,  7 Apr 2021 17:48:14 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 702C32BF09266; Wed,  7 Apr 2021 17:48:14 +0200 (CEST)
Date: Wed, 7 Apr 2021 17:48:14 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YG3UPnw9VyOd2iIb@hirez.programming.kicks-ass.net>
References: <20200602174639.GB2604@hirez.programming.kicks-ass.net>
 <5a40182c8a865d6c5603de4a1ff72c450ff403c3.camel@intel.com>
 <20200602182710.GD2604@hirez.programming.kicks-ass.net>
 <20200604101107.GA2948@hirez.programming.kicks-ass.net>
 <YG2xO6zQesvoSecr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YG2xO6zQesvoSecr@intel.com>
Subject: Re: [Intel-gfx] [drm:gen8_de_irq_handler [i915]] *ERROR* Fault
 errors on pipe B: 0x00000080
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 07, 2021 at 09:18:51AM -0400, Rodrigo Vivi wrote:
> On Thu, Jun 04, 2020 at 12:11:07PM +0200, Peter Zijlstra wrote:
> > On Tue, Jun 02, 2020 at 08:27:10PM +0200, Peter Zijlstra wrote:
> > > On Tue, Jun 02, 2020 at 06:08:03PM +0000, Souza, Jose wrote:
> > > > Hi Peter
> > > > Please file a bug by follow this instructions: https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
> > > 
> > > *sigh*, top posting and webforms :-(
> > > 
> > > Steps to reproduce: Boot into X
> > > 
> > > How often: Always
> > > 
> > > uname -r: 5.6.0-2-amd64
> > > 
> > > Machine: Supermicro X11SSZ-F
> > > 
> > > Display connector:
> > > 
> > > [    14.907] (II) intel(0): switch to mode 3840x2160@60.0 on DP2 using pipe 0, position (0, 0), rotation normal, reflection none
> > > [    14.918] (II) intel(0): switch to mode 3840x2160@60.0 on DP3 using pipe 1, position (0, 0), rotation normal, reflection none
> > > 
> > > 
> > > I'll add the kernel parameters next time I reboot this thing, I'll also
> > > add the latest drm next time I build a kernel for this machine.
> > 
> > dmesg attached, I've yet to build a new kernel for this box..
> 
> Hi Peter,
> do you still face this issue?
> 
> Could you please add some information to https://gitlab.freedesktop.org/drm/intel/-/issues/2004

It went away when I disabled the mitigation crud. Consider it solved.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
