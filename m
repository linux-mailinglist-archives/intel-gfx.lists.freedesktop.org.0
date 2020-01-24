Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3B914866C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0516E4B7;
	Fri, 24 Jan 2020 13:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E35956E4B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:55:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19995798-1500050 for multiple; Fri, 24 Jan 2020 13:55:00 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
Message-ID: <157987409843.2524.2998401254997919669@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 13:54:58 +0000
Subject: Re: [Intel-gfx] [RFC 00/33] drm/i915/display: mass conversion to
 intel_de_*() register accessors
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-01-24 13:25:21)
> Hey all,
> 
> So I sent [1] to convert some forcewake register accessors... but what if we
> just ripped off the bandage once and for all? It's going to hurt, a lot, but
> we'd get it done.
> 
> This completely rids us of the "dev_priv" dependency in display/.
> 
> All the patches here are per-file and independent of each other. We could also
> pick and apply the ones that are least likely to conflict.
> 
> Opinions?
> 
> 
> BR,
> Jani.
> 
> 
> PS. I didn't bother looking at the checkpatch warnings this may generate at this
> point. I just used the --linux-spacing option for spatch, and closed my eyes. I
> completely scripted the generation of the series, apart from just a couple of
> build fixes.

Yup. Suck it all in, clean up with the usual code refreshes.
Schadenfreude-by: Chris Wilson <chris@chris-wilson.co.uk>

I've looked at a couple of patches to confirm that it does appear purely
mechanical,
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
