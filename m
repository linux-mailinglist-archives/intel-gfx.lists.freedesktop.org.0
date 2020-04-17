Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EED1ADF06
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 16:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EBE6EC1E;
	Fri, 17 Apr 2020 14:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9346EC1B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 14:08:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20934013-1500050 for multiple; Fri, 17 Apr 2020 15:08:20 +0100
MIME-Version: 1.0
In-Reply-To: <20200417130109.12791-1-jani.nikula@intel.com>
References: <20200417130109.12791-1-jani.nikula@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158713249868.2062.16583016796681686099@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 15:08:18 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix Sphinx build duplicate label
 warning
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-04-17 14:01:09)
> Fix the warning caused by enabling the autosectionlabel extension in the
> kernel Sphinx build:
> 
> Documentation/gpu/i915.rst:610: WARNING: duplicate label
> gpu/i915:layout, other instance in Documentation/gpu/i915.rst
> 
> In the warning message, Sphinx is unable to reference the labels in
> their true locations in the kernel-doc comments in source. In this case,
> there's "Layout" sections in both gt/intel_workarounds.c and
> i915_reg.h. Rename the section in the latter to "File Layout".
> 
> Fixes: 58ad30cf91f0 ("docs: fix reference to core-api/namespaces.rst")
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed is probably too strong, but I comprehend your problem
statement, if not entirely grokking Sphinx,

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
