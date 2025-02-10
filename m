Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E77AA2FE2C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 00:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CCD10E211;
	Mon, 10 Feb 2025 23:07:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YniOKWZd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C041A8926D
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 23:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739228861; x=1770764861;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5Ad+mDP0f4rkKnJARYGaDv1lwZ6hbqhdNqwk2x11ziE=;
 b=YniOKWZdnVEZsPmFZDJdqF3C1dpHEReZkUcOFYDpk5G5eftMUqFqt5JY
 3Z+9FF1K8l8H+9TpyhS6qCa9U0MNHdl55TcQML+zcc7lGP1xP6G6fmlzD
 c0wWtSYDM4+kf63rs19R4mYEwFxGeOxQpGC00dAS36gCkzNwjFpu3NIRE
 M8P0DHn6GOTjpf5MqPw2EIt7XZnW8exIWUnoo1Ajq7axj4Zgp3p8kIaXn
 CuIDXe8ZUM2dRTHIQ43LVeV6wPYhBdyC0Mzv2y8L3q0uNTDSGpJuUsDlt
 Md02+D3BFhUQkN2C4jgQIMVev8dHMAJJ+REAK/MqyeTbgN50ZVg9YZq2X w==;
X-CSE-ConnectionGUID: tEXyPMRWTY2GlAjAe5A2kg==
X-CSE-MsgGUID: KrtxsNKMQdayya7ZB0AENg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40099709"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="40099709"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 15:07:40 -0800
X-CSE-ConnectionGUID: W+uTPteqRxaqvriAKsP9+Q==
X-CSE-MsgGUID: Zkib2YFtSS+773YNKGPQMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112303550"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.18])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 15:07:38 -0800
Date: Tue, 11 Feb 2025 00:07:34 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Markus Theil <theil.markus@gmail.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, tytso@mit.edu
Subject: Re: [PATCH] prandom: remove next_pseudo_random32
Message-ID: <Z6qGtsEdjpz4ETvl@ashyti-mobl2.lan>
References: <20250210133556.66431-1-theil.markus@gmail.com>
 <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Mon, Feb 10, 2025 at 02:39:43PM +0100, Jason A. Donenfeld wrote:
> Hey Markus,
> 
> Thanks for this. I hadn't realized that next_pseudo_random32() only
> had two users left. Excellent.
> 
> I'll queue this up in the random tree (unless there are objections
> from the maintainers of that test code).

actually would be better if we apply the i915 part in drm-tip
rather than waiting for kernel releases to receive this change in
our branch. It has been source of conflicts and headaches.

May I ask Markus to split the patch in two parts and we handle
the i915 side?

Thanks,
Andi
