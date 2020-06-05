Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801F61EFBA1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 16:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C631A6E91D;
	Fri,  5 Jun 2020 14:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDDB16E918;
 Fri,  5 Jun 2020 14:40:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21408010-1500050 for multiple; Fri, 05 Jun 2020 15:40:48 +0100
MIME-Version: 1.0
In-Reply-To: <202006050718.9D4FCFC2E@keescook>
References: <202006050718.9D4FCFC2E@keescook>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Kees Cook <keescook@chromium.org>
Message-ID: <159136804617.22562.13050948656630993484@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 05 Jun 2020 15:40:46 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix comments mentioning typo in
 IS_ENABLED()
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
Cc: Joe Perches <joe@perches.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Kees Cook (2020-06-05 15:19:53)
> This has no code changes, but the typo is clearly getting copy/pasted,
> so better to avoid this now and fix the typo. IS_ENABLED() takes full
> names, and must have the "CONFIG_" prefix.
> 
> Reported-by: Joe Perches <joe@perches.com>
> Link: https://lore.kernel.org/lkml/b08611018fdb6d88757c6008a5c02fa0e07b32fb.camel@perches.com
> Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
