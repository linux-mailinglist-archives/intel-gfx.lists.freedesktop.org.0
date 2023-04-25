Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F065F6EDDA0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 10:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55E310E6C0;
	Tue, 25 Apr 2023 08:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EAB10E6C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 08:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682410001; x=1713946001;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XndkAeKgxbndZybxJrO9tpr/zOkh7nZ6bkLaPUoq8jA=;
 b=A48xS4/Be6tiube3m51x9wOWBEiR00Rtn/UXaNyW0NGyyKE7PiIdesq3
 MON1INrR+ANBjanesEGl0ZWZWgs7+tzUOAX/toLYOsAiFb+lVHM9VxkuH
 jrNqprljG+j/hNIVtGJnyDaL5qv/heMGUlA8ZG75aagWk8iBw/XUilL1i
 NMRpFfgHoPP4fDvlOA7Bhp18uGh0q1Pi/bbWUr/rigtp9QXKGz/n/GITw
 J6ouwjpefitdhDX4T3lYYsRaxlhyWgOuzZqiXRWTmENTx1LC7YcvQ5p27
 ioUAkcg/+B+lGLCREjdLRcmhHZBSs4WoDFjD5Mfp04SMO++Dy4kHlQYP1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="327001114"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="327001114"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 01:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="723927352"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="723927352"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.59.107])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 01:06:39 -0700
Date: Tue, 25 Apr 2023 10:06:37 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZEeKDYQcAf5eAwfN@ashyti-mobl2.lan>
References: <20230424133607.3736825-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230424133607.3736825-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Record GT error for gt
 failure
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

Hi Tejas,

On Mon, Apr 24, 2023 at 07:06:07PM +0530, Tejas Upadhyay wrote:
> igt_live_test has pr_err dumped in case of some
> GT failures. It will be more informative regarding
> GT if we use gt_err instead.
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Thanks for taking care of this.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
