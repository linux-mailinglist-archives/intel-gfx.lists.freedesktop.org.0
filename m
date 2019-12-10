Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FD911929B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 22:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A05689F27;
	Tue, 10 Dec 2019 21:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB9289F27
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 21:00:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19532564-1500050 for multiple; Tue, 10 Dec 2019 21:00:39 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191210204744.65276-5-michal.wajdeczko@intel.com>
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
 <20191210204744.65276-5-michal.wajdeczko@intel.com>
Message-ID: <157601163956.17013.379009805423126881@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Dec 2019 21:00:39 +0000
Subject: Re: [Intel-gfx] [RFC 4/4] drm/i915/uc: Add sanitize to to
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

Quoting Michal Wajdeczko (2019-12-10 20:47:44)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> index 2bd8326130f1..3410d35f8b0c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> @@ -19,6 +19,7 @@ struct intel_uc_ops {
>         void (*fini)(struct intel_uc *uc);
>         int (*init_hw)(struct intel_uc *uc);
>         void (*fini_hw)(struct intel_uc *uc);
> +       int (*sanitize)(struct intel_uc *uc);

In the order of ops, first?

The series looks sane. Looks a bit overkill, but if you can convince
Daniele of your vision, fine by me.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
