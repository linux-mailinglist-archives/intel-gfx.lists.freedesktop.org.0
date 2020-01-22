Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0416B145491
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 13:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03EC6F4EA;
	Wed, 22 Jan 2020 12:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DA56F4EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 12:52:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19970330-1500050 for multiple; Wed, 22 Jan 2020 12:52:06 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Fernando Pacheco <fernando.pacheco@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200122001822.12872-1-fernando.pacheco@intel.com>
 <20200122001822.12872-2-fernando.pacheco@intel.com>
In-Reply-To: <20200122001822.12872-2-fernando.pacheco@intel.com>
Message-ID: <157969752459.7477.17596563244499908955@skylake-alporthouse-com>
Date: Wed, 22 Jan 2020 12:52:04 +0000
Subject: Re: [Intel-gfx] [CI 2/2] HAX: force enable_guc=2
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

Quoting Fernando Pacheco (2020-01-22 00:18:22)
> Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_params.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 947d0a38fa3c..4d17235c33bd 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -56,7 +56,7 @@ struct drm_printer;
>         param(int, disable_power_well, -1, 0400) \
>         param(int, enable_ips, 1, 0600) \
>         param(int, invert_brightness, 0, 0600) \
> -       param(int, enable_guc, 0, 0400) \
> +       param(int, enable_guc, 2, 0400) \
>         param(int, guc_log_level, -1, 0400) \
>         param(char *, guc_firmware_path, NULL, 0400) \
>         param(char *, huc_firmware_path, NULL, 0400) \

intel_guc_reset_engine() is only used in guc submission mode. This tests
nothing.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
