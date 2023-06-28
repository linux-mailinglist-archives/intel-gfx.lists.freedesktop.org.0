Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F086741714
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 19:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE4E10E371;
	Wed, 28 Jun 2023 17:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C8D10E371
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 17:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687972683; x=1719508683;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6xFwhg21DggV0HuBDZVlRbpUTHlynvKzxQ0F/aoM2Zs=;
 b=FbpN2G/PfIA9Mvdgn6XL9AjDfeBZZbeLucB+axStARzcLASiGVLN5fZW
 QpB0Nf9ZKTNWfQw4EbIdYF0ap0iCbKH8yF9dOTuNf9x096R+1350vKgC9
 bAsejGPghsMFoy+eO1AzUrz0PMlfyadKsHauf6ZMb6bg/o88taV/RIwcn
 QYLePFXrubB8iyM8//NLfI1oJvyq6++x8YgMO7Ie1q8DgNXB55qnYBK8R
 7aGiqkWHgvHeu6PN14J17JHnUxxx3Rp6BKLf37s7N8k0JcKJUn3uVtKvP
 p7iE0wBoz1LJsRqH93agjfjsm4fcF8VGzhw7hkkSLXwXrsCh0Ha/ccL3t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="359398534"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="359398534"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 10:18:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="720291103"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="720291103"
Received: from atkalcec-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.40.132])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 10:18:00 -0700
Date: Wed, 28 Jun 2023 19:17:57 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZJxrRW+Kv0PF0fdC@ashyti-mobl2.lan>
References: <20230621183805.251128-1-jani.nikula@intel.com>
 <ZJRV0ngY8zv/Vo5H@ashyti-mobl2.lan> <87leg5tk82.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87leg5tk82.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove display raw reg
 read/write micro-optimizations
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Tue, Jun 27, 2023 at 10:53:01AM +0300, Jani Nikula wrote:
> On Thu, 22 Jun 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > Hi Jani,
> >
> > On Wed, Jun 21, 2023 at 09:38:05PM +0300, Jani Nikula wrote:
> >> Convert the raw_reg_read() and raw_reg_write() calls in display GU MISC
> >> and INT CTL handling to regular intel_uncore_read() and
> >> intel_uncore_write(). These were neglible micro-optimizations, and
> >
> > /neglible/negligible/
> >
> >> removing them helps the display code reuse in the Xe driver.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 
> 
> Thanks, but back to the drawing board:
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119703v1/bat-dg2-9/igt@i915_pm_rpm@module-reload.html#dmesg-warnings1253

Have you tried using intel_uncore_{read,write}_fw()?

Andi
