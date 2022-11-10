Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA0F62416E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 12:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A98410E6E2;
	Thu, 10 Nov 2022 11:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C091910E6E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 11:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668079821; x=1699615821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cUdFiGXF/+tjfUTHyRqfTqMCE7A8mkyb1UblyOGLEmQ=;
 b=YN3qzKWglhoHmPoiVno0tTuBqkCBMj4RJEmTiXgGVCkbTr92AydEpQSW
 qgUOVmjIHtYOwalQDZRyKlcEemhW3kC3SODM8b8i4R9zF3Iv/3OnP47Ye
 OzP+ZGcjvuFQN3E1lOxtS6eAuu8wMqKvzkwt0pZW7wXtttnG+lOXjCymn
 5TUfJBwaqyJROCjeA8EMBcXZrWaYtYblfC0kHaFbXupQI+xmLmMALkhn1
 FI6M4OTk74P7C4fuPoPyZ+CUutdpBxfo/EOQhhPIJu3edStlnRoX76Vbo
 G9L0cFtYz8jILLF9AJedBZsYV7mZrZErfzQrTldYuPUK30tS07KD7SoGV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="311286367"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="311286367"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 03:30:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="631627136"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="631627136"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.22.77])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 03:30:17 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 12:30:14 +0100
Message-ID: <1933631.usQuhbGJ8B@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
References: <20221109190937.64155-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH 0/3] Fix timeout handling when retiring
 requests
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, 9 November 2022 20:09:34 CET Janusz Krzysztofik wrote:
> Fixes for issues discovered via code review while working on
> https://gitlab.freedesktop.org/drm/intel/issues/7349.
> 
> Janusz Krzysztofik (3):
>   drm/i915: Fix timeout handling when retiring requests
>   drm/i915: Fix unintended submission flush after retire times out
>   drm/i915: Fix 0 return value from DMA fence wait on i915 requests

Based on some comments received, I'm going to rework this series and resubmit.  
Please ignore this one.

Thanks,
Janusz

> 
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 19 +++++++++++++++----
>  drivers/gpu/drm/i915/i915_request.c         |  2 +-
>  2 files changed, 16 insertions(+), 5 deletions(-)
> 
> 




