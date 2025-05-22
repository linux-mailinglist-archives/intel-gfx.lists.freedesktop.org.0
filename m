Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3AAAC0A52
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 13:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEBA10EC22;
	Thu, 22 May 2025 11:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GOPWLudC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CBA310ECA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 11:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747912228; x=1779448228;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8ofgiHW8Kwcc25P4Z8SQrs5ciMFqB+D9plMAvYRuUpk=;
 b=GOPWLudC8nsg5jqwjELr3ccCJJyET3UUUgbIy1+UkvYWkp+co670DLia
 eVQTGx4KFlIcpJHkbMTWEcqVGI3WFf33u4bUxMaySwrElnYSWhdZpWkJ2
 P7KsdY8Ox6wcUhAeBy36pR4tK2qRJcF8Ir/hZAEefcNw6NlgljrOQmxm/
 6jwhhpRXl948/7kcXGb2zmLaVZMgcUNRBUr+I4zQlXn+3fVsXMBQaehpS
 OfIjAdAA3Hz/mHOyINP/6an7aA4ogqR452R49SFD6JmcPYAz7U6JR1kDU
 v+xPmvkSs7NOO+kIxZM3/8n3nVouEjlru+auDvSKJz0CzeIDlHtL2R/v7 Q==;
X-CSE-ConnectionGUID: DB2IihJkTK20Yii8zNqBIA==
X-CSE-MsgGUID: cPUoDbwOS6GecDvOqA6zlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="60587043"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="60587043"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 04:10:28 -0700
X-CSE-ConnectionGUID: T96FvMLhQnyDyS2q6jcudg==
X-CSE-MsgGUID: cNoWXZ3qSsGy96Z6Ek/8ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="140405134"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.85])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 04:10:25 -0700
Date: Thu, 22 May 2025 13:10:23 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org,
 Ville =?iso-8859-15?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH] Revert "drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1"
Message-ID: <aC8GH-3_K4lQ6A9g@ashyti-mobl2.lan>
References: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
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

Hi Joonas,

On Thu, May 22, 2025 at 09:41:27AM +0300, Joonas Lahtinen wrote:
> This reverts commit d6e020819612a4a06207af858e0978be4d3e3140.
> 
> The IS_DGFX check was put in place because error capture of buffer
> objects is expected to be broken on devices with VRAM.
> 
> We seem to have already submitted the userspace fix to remove that
> flag, so lets just rely on that for DG1.

yes, sorry, I should have checked git bisect before accepting the
patch. I still think that a comment would help. In any case:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
