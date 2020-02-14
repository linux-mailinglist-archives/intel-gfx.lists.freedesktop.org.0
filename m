Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B7A15D7A4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 13:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A33E6F909;
	Fri, 14 Feb 2020 12:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F926F909
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 12:48:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20223820-1500050 for multiple; Fri, 14 Feb 2020 12:48:46 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87h7zt61pm.fsf@intel.com>
References: <20200213232338.3746869-1-chris@chris-wilson.co.uk>
 <87h7zt61pm.fsf@intel.com>
Message-ID: <158168452298.10420.12849863473563631386@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Feb 2020 12:48:43 +0000
Subject: Re: [Intel-gfx] [PATCH] lib: Add a YAML emitter
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

Quoting Jani Nikula (2020-02-14 07:57:09)
> On Thu, 13 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Provide a library to generate correct YAML for use in structured debugfs
> > or similar information dumps. This will be useful to pull our large
> > information dumps into a forwards compatible, parse-able file-format by
> > forcing some structure upon ourselves!
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> I like the idea. I like the prospect of converting *all* of our bigger
> debugfs files to have some structure. Why not smaller ones too, to be
> uniform. Not entirely sold on using it in sysfs, like the example code
> did, but even that might be justified for capturing a state.

Fair enough, I shall not mention sysfs in the first pass :)
And I'll do a couple more large and small debugfs to help flesh out the
API and demonstrate its usecases.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
