Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEFE50D5C1
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 00:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5683F10EA64;
	Sun, 24 Apr 2022 22:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA76010EA64
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Apr 2022 22:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650839463; x=1682375463;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YLvvYmF3/fjhm8mhC8zNZIHZCK7vVmZigFTILlm71o0=;
 b=Ok4TR93jfmzgntk/vtWl5YmGwL5mjl/t8dE4aEnPqNoGrNUwpGJ8Zhir
 NxI8D2b9+OIAGTwhBXZX+JVuSL4H59Y+smAs5K+zqSZkVvdtpdepDfM+y
 q5ZqyIWBDNI8cVZdiQF+00SMgnqclc5LXegMCLaVHwav1IP8HC5nuqhGO
 FcF8cKK6aDuodnTLKOuEgztlf+m+H1xTbxzw2RPfv9tKi8TEUJ2TZ8Bdy
 bzdiQLZcBOU/RKLyX29wBrjbuMB/FmC0vkbjb3Rr2l7+D5+/5pT1FJgYp
 r9YgiOgBuOuHlAVnERG0h6q2WU4MOZbTig4UCaKDp/htM+6VzSEe2W5aq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264603985"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="264603985"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:31:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="578954117"
Received: from fmihut-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 15:31:01 -0700
Date: Mon, 25 Apr 2022 00:30:59 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YmXPo2vpPS6rXGV6@intel.intel>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
 <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650435571.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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

Hi Ashutosh,

[...]

> -static struct kobj_type kobj_gt_type = {
> -	.release = kobj_gt_release,
> +static struct kobj_type kobj_gtn_type = {

what does it mean GTN? Or is it GTn? Please use just GT, gtn is
confusing.

Same for all the rest of the gtn's you have used below.

Thanks,
Andi
