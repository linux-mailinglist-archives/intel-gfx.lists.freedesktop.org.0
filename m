Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CB9173D59
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 17:45:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A196F47E;
	Fri, 28 Feb 2020 16:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265AD6F47E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 16:44:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20388052-1500050 for multiple; Fri, 28 Feb 2020 16:44:55 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200228160229.1683087-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200228160229.1683087-1-lionel.g.landwerlin@intel.com>
Message-ID: <158290829314.24106.1112142885915634527@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 16:44:53 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: introduce global sseu pinning
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

Quoting Lionel Landwerlin (2020-02-28 16:02:29)
> On Gen11 powergating half the execution units is a functional
> requirement when using the VME samplers. Not fullfilling this
> requirement can lead to hangs.
> 
> This unfortunately plays fairly poorly with the NOA requirements. NOA
> requires a stable power configuration to maintain its configuration.
> 
> As a result using OA (and NOA feeding into it) so far has required us
> to use a power configuration that can work for all contexts. The only
> power configuration fullfilling this is powergating half the execution
> units.
> 
> This makes performance analysis for 3D workloads somewhat pointless.
> 
> Failing to find a solution that would work for everybody, this change
> introduces a new i915-perf stream open parameter that punts the
> decision off to userspace. If this parameter is omitted, the existing
> Gen11 behavior remains (half EU array powergating).
> 
> This change takes the initiative to move all perf related sseu
> configuration into i915_perf.c

The code looks fine, your argument is sound. My only reservation is the
danger of this becoming the defacto default and so catching users's
profiling their system by surprise.

> @@ -3628,6 +3678,16 @@ static int read_properties_unlocked(struct i915_perf *perf,
>                 case DRM_I915_PERF_PROP_HOLD_PREEMPTION:
>                         props->hold_preemption = !!value;
>                         break;
> +               case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
> +                       if (copy_from_user(&props->user_sseu,
> +                                          u64_to_user_ptr(value),
> +                                          sizeof(props->user_sseu))) {
> +                               DRM_DEBUG("Unable to copy global sseu parameter\n");
> +                               return -EFAULT;
> +                       }

Since this affects system state for other users, I would suggest this
has a privilege check

> +                       props->user_sseu_present = true;
> +                       break;

i915_perf_ioctl_open_locked:
	if (props->user_sseu_present && IS_GEN(11))
		privileged_op = true;
?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
