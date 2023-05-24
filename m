Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3034470F66D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 14:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D4310E667;
	Wed, 24 May 2023 12:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DE910E5D6;
 Wed, 24 May 2023 12:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684931444; x=1716467444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YmAguRmJDrKkystljgGmJM03Wrh+YA+fRIsPQsWbdGE=;
 b=QKI5cEY7TeCOjpC63teXyOZ/RtMRMhnkHowr4Kh6BTJLj2Fj1nBTwyCY
 sFVfFiaRCVHsSMgedymTqU2Jt6tni5LI0OUjzRtVpSS4cyYIZN/iADJcR
 ApP4nlUgfWAnlqNK0r+hKop8pwsRpTRdvADLU++cY2CwKIgAlkq52bHlt
 n5ECUVORl7RT8ttqe85LC61UASi5opaggruqf5vHYkBW9XW3tXzHo9tm6
 iEdXn3dOKnHArdtx0Kn0Pre0shVAce/VSPHlVE8OEesxl0+2gWwi9G4kv
 ftHB+Wvfo9c5dJYEVUf1vM1Q08fSEx1APAHz3wAiHTx4DlZ0rlqtjkVbk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="351058016"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="351058016"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="950997651"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="950997651"
Received: from dguzhaev-mobl2.ccr.corp.intel.com (HELO intel.com)
 ([10.252.54.61])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:30:40 -0700
Date: Wed, 24 May 2023 14:30:32 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZG4DaGBAPCcPcmNs@ashyti-mobl2.lan>
References: <20230519051103.3404990-1-fei.yang@intel.com>
 <ZGx7Quf+ArHnXOR0@ashyti-mobl2.lan>
 <37a0e8fc-efbc-973f-f163-235b9482f21c@linux.intel.com>
 <ZG4Az4fWMsxL5j7w@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZG4Az4fWMsxL5j7w@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] [PATCH v10 0/2] drm/i915: Allow user to set cache
 at BO creation
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi again,

> > > finally... pushed in drm-intel-gt-next! :)
> > 
> > I had to revert this (uapi commit only) by force pushing, luckily it was the
> > top commit.
> 
> OK, sorry!
> 
> > 1)
> > IGT is not merged yet.
> 
> if igt is merged without the kernel it would fail, though.

can we at least agree on having igt patches reviewed and merge
them right after?

> > 2)
> > The tools/include/uapi/drm/i915_drm.h part of the patch was not removed.
> 
> Will follow up on these two points.

three...

Andi
