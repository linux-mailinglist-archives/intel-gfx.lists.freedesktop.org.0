Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F46F1C23F6
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 09:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04016E0DC;
	Sat,  2 May 2020 07:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378E26E0DC
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 07:57:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21090365-1500050 for multiple; Sat, 02 May 2020 08:57:00 +0100
MIME-Version: 1.0
In-Reply-To: <20200502045744.407060-2-matthew.d.roper@intel.com>
References: <20200502045744.407060-1-matthew.d.roper@intel.com>
 <20200502045744.407060-2-matthew.d.roper@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158840622116.27785.13994594747456121837@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 02 May 2020 08:57:01 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Setup multicast register
 steering for all gen >= 10
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

Quoting Matt Roper (2020-05-02 05:57:42)
> @@ -961,6 +955,9 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  static void
>  gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  {
> +       if (INTEL_GEN(i915) >= 10)
> +               wa_init_mcr(i915, wal);

The interaction between the MCR steering and the replay of w/a is not
obvious, it could do with a comment to avoid future mistakes.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
