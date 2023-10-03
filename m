Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E207B6DA8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 17:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6B110E04B;
	Tue,  3 Oct 2023 15:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F2810E04B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 15:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696348764; x=1727884764;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cFQWLMUSl+RMRSwF0hbEN66H0medMND/KnpZYoA3Cpc=;
 b=Wp5qKa7ldfzn8iitfo2u02Zr5RVPHPZ5XVPfS4O9GrkUssD5YXOlaw9L
 7/hLgPKD21O5cixm7x4PUxLmeChWUbMPAo8zyNCqS6RLI/LeFOkCOvXEt
 8BeRNTsP7RgJ/5altDrMj1GZvJJHGf0RS7MoAHr0Vcvj3VhgiPx13NoO6
 SrH4fk30MMwYzwAVu9TnTAEM29m6qQQB8HYFA6pdiMUIA9LGCBcsHY5Ov
 Ttnj5sW3KpyzI8fIqYR+ljkU5LPiwVEGu8zo7qscTMtOqjp7g1u6XtWCO
 fs4giLiy++2qbXc/McIv0fHzPIcL/teT2Y9c9KDJ4cF/TjjRtOLSkdfEQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="385735545"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="385735545"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 08:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="821315567"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="821315567"
Received: from leejiahx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.172.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 08:59:16 -0700
Date: Tue, 3 Oct 2023 17:59:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZRw6UNs8IeFN+/tD@ashyti-mobl2.lan>
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <20231002172419.1017044-3-jonathan.cavitt@intel.com>
 <8734ysgc5c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8734ysgc5c.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915: Perform TLB invalidation
 on all GTs during suspend/resume
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
Cc: janusz.krzysztofik@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

> > Consider multi-gt support when cancelling all tlb invalidations on
> > suspend, and when submitting tlb invalidations on resume.
> >
> > Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Signed-off-by: Fei Yang <fei.yang@intel.com>
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > CC: John Harrison <John.C.Harrison@Intel.com>
> 
> I guess I'm wondering why the top level suspend hook needs to iterate
> gts instead of some lower level thing. We should aim to reduce
> gem/gt/display details from the top level.

I'm not sure I am understanding the question.

The TLB invalidation details are kept under the GT. But when
suspend is called, then the GT invalidation has to be triggered
by the top levels for each GT. Right?

Thanks,
Andi
