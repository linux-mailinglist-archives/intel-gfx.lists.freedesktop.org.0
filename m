Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1369B0114
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 13:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D8610E092;
	Fri, 25 Oct 2024 11:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZdCNOVv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CFF10E092
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 11:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729855280; x=1761391280;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KnbYgWiewhvdkcBQZO1wNxEgt6/c8Pd8F3KX2SuOurA=;
 b=WZdCNOVvqkqUsTbHbwbJUKE8qosPSRbGYYI3IioF35PB3p83oSmoP3i3
 417oVFSC7HufbFZuTMHRmhY5ffPCw873BHI9dXj0pedks+Pk1z7g5alFu
 hXkzmPEgvQQRe7SMhtxMLxyxfvh83yIpTwD0rHgm0QuUEj4TJl+dwtYZY
 6dDEEYdxngC2UfdX6IlsR+GgrO5M3utHSVzCW0KHplcv6CJuDyUx0KQcu
 Gr0/y5rdk1WiwY4OJiYlFQjNJA59+VfyB6gSQlxA+iXZ6E0LgOaXFMxIr
 c8bZjvqEMDalJMdfaoypYQrrC2a7NFvOPVAEEYtufCzSkYR9r0itSjZae Q==;
X-CSE-ConnectionGUID: 1tTivDxXTaGfXfMbPE/FqA==
X-CSE-MsgGUID: HtF+bNvvQw6Mq8uI323PNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40075138"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40075138"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 04:21:20 -0700
X-CSE-ConnectionGUID: VS8qeNcPQ1atbFbOySCijQ==
X-CSE-MsgGUID: AAe5KwAPQaGZd7GOCKqWxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="118347684"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.204])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 04:21:16 -0700
Date: Fri, 25 Oct 2024 13:21:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Nitin Gote <nitin.r.gote@intel.com>,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 nirmoy.das@intel.com
Subject: Re: [PATCH v2] drm/i915/gt: Use ENGINE_TRACE for tracing.
Message-ID: <Zxt_KGuS_HjxfHv1@ashyti-mobl2.lan>
References: <20241024103917.3231206-1-nitin.r.gote@intel.com>
 <20241024185813.GK5725@mdroper-desk1.amr.corp.intel.com>
 <0e9813a8-0af6-4d06-971e-7909796bd9b5@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0e9813a8-0af6-4d06-971e-7909796bd9b5@ursulin.net>
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

On Fri, Oct 25, 2024 at 09:02:16AM +0100, Tvrtko Ursulin wrote:
> 
> On 24/10/2024 19:58, Matt Roper wrote:
> > On Thu, Oct 24, 2024 at 04:09:17PM +0530, Nitin Gote wrote:
> > > There is ENGINE_TRACE() macro which introduce engine name
> > > with GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
> > > over drm_err() drm_device based logging for engine debug log.
> > 
> > Doesn't this just eliminate the logging completely if the driver is
> > built without CONFIG_DRM_I915_TRACE_GEM?  That means that most users
> > will probably get no dmesg output at all on failure now, which could
> > make it harder for us to understand and debug user-reported bugs.
> > 
> > Of course intel_ring_submission.c only gets used for the old
> > pre-execlist platforms (HSW and older) so maybe there are few enough of
> > those in active usage that we don't really get too many new bug reports
> > anyway?
> 
> Yeah, plus, the justification about engine name does not appear to hold,
> since the old message was printing it already. So if there is something more
> happening here under the covers please do explain it properly in the commit
> message.

I'm sorry, but I already applied the patch.

I agree with it because most of the information provided are not
really useful to the failure, but more to who is actually
debugging the code.

Would it make sense to add a gt_err() after or before the
ENGINE_TRACE() so that we have the error printing along with
debug information?

Thanks,
Andi
