Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC4D2EA9BC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 12:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CC06E0DD;
	Tue,  5 Jan 2021 11:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E090A6E0DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 11:21:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23505973-1500050 for multiple; Tue, 05 Jan 2021 11:21:39 +0000
MIME-Version: 1.0
In-Reply-To: <20210105111927.3284573-1-chris@chris-wilson.co.uk>
References: <20210105111927.3284573-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Jan 2021 11:21:39 +0000
Message-ID: <160984569979.15859.478677673014267580@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_ctx_isolation: Protect
 inject_reset_context() from banning
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
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2021-01-05 11:19:26)
> Disable banning as we deliberately inject GPU resets to test isolation.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> ---
>  tests/i915/gem_ctx_isolation.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
> index 58a35b487..4f1742685 100644
> --- a/tests/i915/gem_ctx_isolation.c
> +++ b/tests/i915/gem_ctx_isolation.c
> @@ -762,10 +762,21 @@ static void isolation(int fd,
>  #define S4 (4 << 8)
>  #define SLEEP_MASK (0xf << 8)
>  
> +static uint32_t create_reset_context(int i915)
> +{
> +       struct drm_i915_gem_context_param param = {
> +               .ctx_id = gem_context_clone_with_engines(i915, 0),

An alternative is that we pass CLONE_FLAGS to
gem_context_clone_with_engines(). Danger is context_clone_with_engines
is widely used.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
