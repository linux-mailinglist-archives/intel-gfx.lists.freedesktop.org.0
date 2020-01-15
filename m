Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 432D413BD08
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 11:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA47C89EBD;
	Wed, 15 Jan 2020 10:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3E489EBD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 10:05:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19885703-1500050 for multiple; Wed, 15 Jan 2020 10:04:58 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <600101c8433e7caf9303663fc85a9972fa1f05e7.1575560168.git.jani.nikula@intel.com>
References: <cover.1575560168.git.jani.nikula@intel.com>
 <600101c8433e7caf9303663fc85a9972fa1f05e7.1575560168.git.jani.nikula@intel.com>
Message-ID: <157908269569.5559.17250369129638651910@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 Jan 2020 10:04:55 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/params: add i915 parameters to
 debugfs
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2019-12-05 15:43:40)
> Add a debugfs subdirectory i915_params with all the i915 module
> parameters. This is a first step, with lots of boilerplate, and not much
> benefit yet.

Right, creates a mirror [more or less] of /sys/module/i915/parameters. I
probably would have used parameters/ rather than i915_params/, but that
is immaterial.

> 
> This will result in a new device specific debugfs directory at
> /sys/kernel/debug/dri/<N>/i915_params duplicating the module specific
> sysfs directory at /sys/module/i915/parameters/. Going forward, all
> users of the parameters should use the debugfs, with the module
> parameters being phased out.
> 
> Add debugfs permissions to I915_PARAMS_FOR_EACH(). This duplicates the
> mode with module parameter sysfs, but the goal is to make the module
> parameters read-only initial values for device specific parameters.
> 
> 0 mode will bypass debugfs creation. Use it for verbose_state_checks
> which will need special attention in follow-up work.

The patch does what you say, hopefully a local entropy maxima.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
