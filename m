Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 040D1119278
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 21:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5479F89ACC;
	Tue, 10 Dec 2019 20:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78ED289ACC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 20:53:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19532513-1500050 for multiple; Tue, 10 Dec 2019 20:52:52 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191210204744.65276-3-michal.wajdeczko@intel.com>
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
 <20191210204744.65276-3-michal.wajdeczko@intel.com>
Message-ID: <157601116298.17013.2578292038495417542@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Dec 2019 20:52:43 +0000
Subject: Re: [Intel-gfx] [RFC 2/4] drm/i915/uc: Add init_fw/fini_fw to to
 intel_uc_ops
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

Quoting Michal Wajdeczko (2019-12-10 20:47:42)
>  const struct intel_uc_ops uc_ops_on = {
> +       .init_fw = __uc_fetch_firmwares,
> +       .fini_fw = __uc_cleanup_firmwares,

Whitespace between the pairs, or fullname _firmware?

>         .init_hw = __uc_init_hw,
>         .fini_hw = __uc_fini_hw,

It did require a double take :)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
