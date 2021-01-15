Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3522F771A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 12:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB59689EB8;
	Fri, 15 Jan 2021 11:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B315889EB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 11:01:54 +0000 (UTC)
IronPort-SDR: BokGW8zj6op9Is/Yjq6KsdN7jthlwFq+vtQvg0LxgRIHUBkt2Jecl3ty6vbFQiQFlJd9exSJN+
 82ea1uHbNt3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="157712734"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="157712734"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 03:01:54 -0800
IronPort-SDR: 3wYVj8hh9/G1LkxzCVqBjn/2AfHxiHIhW3KaErdQQvM/bcvJf5jfk9mXOLK4cr/SYMRvXqKgiD
 Q5cqGyL0rXIg==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="354270870"
Received: from lmmcalee-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.238])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 03:01:52 -0800
MIME-Version: 1.0
In-Reply-To: <878s8upj75.fsf@intel.com>
References: <87im8soq2w.fsf@intel.com>
 <20210114005819.4290-1-xiong.y.zhang@intel.com>
 <20210114051410.GU15982@zhen-hp.sh.intel.com> <878s8upj75.fsf@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Xiong Zhang <xiong.y.zhang@intel.com>, Zhenyu Wang <zhenyuw@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <161070850877.79726.12218329205250979912@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 15 Jan 2021 13:01:49 +0200
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2021-01-15 12:50:54)
> On Thu, 14 Jan 2021, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> > On 2021.01.14 08:58:19 +0800, Xiong Zhang wrote:
> >> From: Zhenyu Wang <zhenyuw@linux.intel.com>
> >> 
> >> Some vmm like hyperv and crosvm don't supply any ISA bridge to their guest,
> >> when igd passthrough is equipped on these vmm, guest i915 display may
> >> couldn't work as guest i915 detects PCH_NONE pch type.
> >> 
> >> When i915 runs as guest, this patch guess pch type through gpu type even
> >> without ISA bridge.
> >> 
> >> v2: Fix CI warning
> >> v3: Add HAS_DISPLAY()= true condition beforce guessing virt pch, then
> >>     refactori.
> >> v4: Fix CI warning
> >> 
> >> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> >> Signed-off-by: Xiong Zhang <xiong.y.zhang@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
> >>  drivers/gpu/drm/i915/intel_pch.c | 39 ++++++++++++++++++--------------
> >>  2 files changed, 28 insertions(+), 18 deletions(-)
> >>
> >
> > Good to me, thanks! I think this should change author to you. :)
> >
> > Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> 
> Pushed to drm-intel-next, thanks for the patch and review. I ended up
> retaining Zhenyu's authorship, and added
> 
> Co-developed-by: Xiong Zhang <xiong.y.zhang@intel.com>

This only works for the majority of SKUs which happen to use the PCH
that is most common. I NAKed very similar patch some years back asking
for a reliable means to detect the PCH type instead.

Has there been any attempt to introduce such mechanism?

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
