Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4998714D089
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 19:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CFF86E3F5;
	Wed, 29 Jan 2020 18:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2588D6E3F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 18:32:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20051609-1500050 for multiple; Wed, 29 Jan 2020 18:32:05 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
 <20200129182034.26138-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20200129182034.26138-6-ville.syrjala@linux.intel.com>
Message-ID: <158032272436.13511.14294498438655990456@skylake-alporthouse-com>
Date: Wed, 29 Jan 2020 18:32:04 +0000
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/dsb: Inline DSB_CTRL writes
 into intel_dsb_commit()
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

Quoting Ville Syrjala (2020-01-29 18:20:31)
> +       intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
> +                      DSB_ENABLE);
> +       intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
> +                      i915_ggtt_offset(dsb->vma));
>         intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
>                        i915_ggtt_offset(dsb->vma) + tail);

I still say this order looks dodgy for a ringbuffer. Is it all truly
latched by DSB_TAIL or might it start passing on being enabled and HEAD
!= TAIL?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
