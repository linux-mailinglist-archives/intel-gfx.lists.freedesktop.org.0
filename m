Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BBC1BFF52
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 16:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C75E6E91B;
	Thu, 30 Apr 2020 14:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6405C6E91B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 14:55:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21072526-1500050 for multiple; Thu, 30 Apr 2020 15:55:06 +0100
MIME-Version: 1.0
In-Reply-To: <20200430135536.1141443-4-lionel.g.landwerlin@intel.com>
References: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
 <20200430135536.1141443-4-lionel.g.landwerlin@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158825850531.7361.958274130340194506@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 30 Apr 2020 15:55:05 +0100
Subject: Re: [Intel-gfx] [PATCH v10 3/4] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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

Quoting Lionel Landwerlin (2020-04-30 14:55:35)
> @@ -1382,6 +1446,12 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>  
>         BUG_ON(stream != perf->exclusive_stream);
>  
> +       err = intel_context_pin(stream->config_context);
> +       if (err) {
> +               drm_err(&perf->i915->drm,
> +                       "Error pinning i915-perf context\n");
> +       }

Reading through, this is the last thing that leapt out at me.

Taking an error here would be nasty, and we do allow the pin to be
interrupted (which would be a surprise for most people who call
close()).

The only suggestion I can make, is that the stream always keeps it
pinned.

From the robustness point of view, it's better if we break
stream->config_context than if we break stream->engine->kernel_context,
but equally pinning another context image [about 80k in total] just for
safety? Probably worth it. [If we break the kernel_context, we cannot do
hang detection or pm/idle, the driver comes grinding to a halt.]
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
