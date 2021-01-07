Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C292ECD76
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 11:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7D86E417;
	Thu,  7 Jan 2021 10:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709FC6E417;
 Thu,  7 Jan 2021 10:06:55 +0000 (UTC)
IronPort-SDR: zVYkIW1Lcm4v72zIHxjgjLAx2HsZpp4CSMw0mL/s6avyaLEggHe6XQqMpIkd5KNI6T23yPwMSB
 1yc24kIYE6mQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="241480481"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="241480481"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 02:06:54 -0800
IronPort-SDR: +nJQAM85wvBw2lYf3cV9lb97l4AmR5WGVt9af+b0/k0ipbm8EgR6t7GJh/s0bL4ruCCR7tm5CD
 MuL1rvb6EjCw==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="422518509"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 02:06:53 -0800
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1kxSBv-000480-DV; Thu, 07 Jan 2021 12:06:51 +0200
Date: Thu, 7 Jan 2021 12:06:51 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210107100651.GN7444@platvala-desk.ger.corp.intel.com>
References: <20201204195007.10215-1-janusz.krzysztofik@linux.intel.com>
 <160992609788.26089.16341465923272154441@build.alporthouse.com>
 <20210107094002.GL7444@platvala-desk.ger.corp.intel.com>
 <161001296371.839.15704890818022752458@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161001296371.839.15704890818022752458@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] runner: Don't kill a
 test on taint if watching timeouts
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 07, 2021 at 09:49:23AM +0000, Chris Wilson wrote:
> Quoting Petri Latvala (2021-01-07 09:40:02)
> > On Wed, Jan 06, 2021 at 09:41:37AM +0000, Chris Wilson wrote:
> > > Quoting Janusz Krzysztofik (2020-12-04 19:50:07)
> > > > We may still be interested in results of a test even if it has tainted
> > > > the kernel.  On the other hand, we need to kill the test on taint if no
> > > > other means of killing it on a jam is active.
> > > > 
> > > > If abort on both kernel taint or a timeout is requested, decrease all
> > > > potential timeouts significantly while the taint is detected instead of
> > > > aborting immediately.  However, report the taint as the reason of the
> > > > abort if a timeout decreased by the taint expires.
> > > 
> > > This has the nasty side effect of not stopping the test run after a
> > > kernel taint. Instead the next test inherits the tainted condition from
> > > the previous test and usually ends up being declared incomplete.
> > > 
> > > False positives are frustrating.
> > > -Chris
> > 
> > 
> > Do you have a link to a test run where this happened? This patch
> > didn't change the between-tests abort checks.
> 
> The taint is from the warnings in the penultimate test:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9550/shard-skl7/igt_runner20.txt

Ah, I see.

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9550/shard-skl7/dmesg20.txt

This is the tainting WARN I presume:

<4>[  917.575173] Memory manager not clean during takedown.
<4>[  917.575272] WARNING: CPU: 2 PID: 7 at drivers/gpu/drm/drm_mm.c:999 drm_mm_takedown+0x51/0x100

That happens after @gem, before @evict.

In other words, this is all in the same exec() of i915_selftest
--run-subtest live. Incorrect _dynamic_ subtest gets blamed.

Getting the killing right here is a bit tricky, possibly doable. Or
rather, getting the blame right is doable, killing will be inherently
racy...


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
