Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDA41EC1C5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 20:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A126E44F;
	Tue,  2 Jun 2020 18:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from merlin.infradead.org (unknown [IPv6:2001:8b0:10b:1231::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFCF36E44F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 18:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mnP60qmDvJBK+oeZajNupIFQxagGGPX7hhMp3BlM0i8=; b=genksd7TLeyouyjL69LP4Ba6ny
 jjCHXzS25q1KXP66UCHiZLVtGM8dvstHLx4g684CGRzaI8mf4i0jXv9RNrMuV/cAktiCE9vdqgWcO
 6nVb8pBomS1/2fMIvnuaHYp54r/fzJWE3doMHLLpSlmFgsPelQngRR3mrnTul49lcSmPtdmDu6D9P
 JMym6CGYz+UU5DyfyUwilNag14rAiOBx/BHOi5zZzvG4wkc90bVZtO4m45Y+AYOz99Y2Z0ZqRlN6z
 8hhc/jJbOmOBvzH3q94biC7sfbqPQ5QJyC6WpDR6onNU/kjJs0Eorc8vn3lGSBzmqYe1AeNRHLRNR
 p2SQQ/qQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBd2-0001Wu-Ck; Tue, 02 Jun 2020 18:27:12 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6EE663011B2;
 Tue,  2 Jun 2020 20:27:10 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 3ED662020B7BF; Tue,  2 Jun 2020 20:27:10 +0200 (CEST)
Date: Tue, 2 Jun 2020 20:27:10 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200602182710.GD2604@hirez.programming.kicks-ass.net>
References: <20200602174639.GB2604@hirez.programming.kicks-ass.net>
 <5a40182c8a865d6c5603de4a1ff72c450ff403c3.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a40182c8a865d6c5603de4a1ff72c450ff403c3.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 02, 2020 at 06:08:03PM +0000, Souza, Jose wrote:
> Hi Peter
> Please file a bug by follow this instructions: https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

*sigh*, top posting and webforms :-(

Steps to reproduce: Boot into X

How often: Always

uname -r: 5.6.0-2-amd64

Machine: Supermicro X11SSZ-F

Display connector:

[    14.907] (II) intel(0): switch to mode 3840x2160@60.0 on DP2 using pipe 0, position (0, 0), rotation normal, reflection none
[    14.918] (II) intel(0): switch to mode 3840x2160@60.0 on DP3 using pipe 1, position (0, 0), rotation normal, reflection none


I'll add the kernel parameters next time I reboot this thing, I'll also
add the latest drm next time I build a kernel for this machine.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
