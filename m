Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0521B22C1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 11:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9AA089D79;
	Tue, 21 Apr 2020 09:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7BB589D79
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 09:29:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20968428-1500050 for multiple; Tue, 21 Apr 2020 10:29:15 +0100
MIME-Version: 1.0
In-Reply-To: <20200421084128.36839-1-liwei.song@windriver.com>
References: <20200421084128.36839-1-liwei.song@windriver.com>
To: Liwei Song <liwei.song@windriver.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158746135414.19285.11110388744126468886@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 10:29:14 +0100
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v4] Sync i915_pciids upto
 8717c6b7414f
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

Quoting Liwei Song (2020-04-21 09:41:28)
> +static const struct intel_device_info intel_cannonlake_info = {
> +       .gen = 0115,
.gen = 0120 /* 10 */

> +};
> +
> +static const struct intel_device_info intel_icelake_info = {
> +       .gen = 0116,
.gen = 0130 /* 11 */

> +};
> +
> +static const struct intel_device_info intel_elkhartlake_info = {
> +       .gen = 0117,
.gen = 0131

> +};
> +
> +static const struct intel_device_info intel_tigerlake_info = {
> +       .gen = 0120,
.gen = 0140 /* 12 */

You definitely do not want to feed them through the gen9 assembler.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
