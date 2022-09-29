Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9540F5EF45C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7F210E5E0;
	Thu, 29 Sep 2022 11:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1D0810E5E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664451163; x=1695987163;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=boZXrcHSL6TpYCZDdpY8833XXnn5BF00CC87y78AiOs=;
 b=oGxv7JLQBJ0qC67JHYNrvasGpkKFawDpr7+9IAUkuLdyfHasAZaWoQvx
 eNchwdsIeckgZX988UrO8qahBhVvvsKPMeaEEvw4MgXGEX2i05yyYfDqR
 FHJp5PB8l2885BEuc7Exp75qGIUBS5593CrC99eRKaV6kp+jE2X7Bfr15
 fpObk6i8q3N994c8urkIwKTeafVcLi5wjFnkRK1XaPjDCiHyebNmAcriH
 LO77Zhh4T/fhTeAtLUSsJt63n1swmOffFcUZmxTeglLP7AzDewSwOu3qL
 YSTbh54rvbByan4kQfs0LiPUQNid5tP69k6ZnW2HPyu2vifsmn0iY7K04 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="300587019"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="300587019"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:32:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="867356483"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="867356483"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.72])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:32:18 -0700
Date: Thu, 29 Sep 2022 13:32:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <YzWCQEzSjodmMkMV@ashyti-mobl2.lan>
References: <20220923073515.23093-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220923073515.23093-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Fri, Sep 23, 2022 at 09:35:14AM +0200, Nirmoy Das wrote:
> i915_gem_drain_freed_objects() might not be enough to
> free all the objects and RCU delayed work might get
> scheduled after the i915 device struct gets freed.
> 
> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
> 
> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

pushed to drm-intel-gt-next

Thanks,
Andi
