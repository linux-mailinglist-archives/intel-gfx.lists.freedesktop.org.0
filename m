Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4888F4DDBA1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 15:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D94810E7E5;
	Fri, 18 Mar 2022 14:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E8010E7E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647613585; x=1679149585;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LHhrxEQ/O4aBQhXzxe7DOj6/RlJuQuWS5EixvDiSEeY=;
 b=RAHdwQIiiyR7q0FU3YRLZk41ahTq5qoiR4jgWtt+p1orTiseNLMouleB
 xPtrlAxj4661rRhJeiNAZKpba3q6Z+JZq9oviZxTRetcAo80IGB0E1nSs
 BmjoY2DvPtMAxszGV5owF4GvQPr0MSyIMz5Ri3JkjBWCwWApsPPFTevo0
 BHeul4K7AKWP35wv8MgrzW9i/6iIqsEGGuXkvb4wyhi4ijX/8FRgZJSjV
 0mQdFVs5dXTsxqGmMYZ6IvDEyEu/xJ1eyC8eSZGgKI7OQSkMbdUZHRNLj
 ehH0JNAbyz7Rnz8qu5YnrS4U3M2RZOhEPAY7OyAcbZs9Frr76dc8zthAJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244600642"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="244600642"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:26:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="645534807"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:26:23 -0700
Date: Fri, 18 Mar 2022 16:26:20 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YjSWjIkv6Sto+B+1@intel.intel>
References: <20220318021046.40348-1-andi.shyti@linux.intel.com>
 <164758234860.31587.1988393489717053112@emeril.freedesktop.org>
 <YjRANNv09keROx9t@intel.intel>
 <CAM0jSHOkszx0n9HecVCZKTRj9whjAk4ozTK3B6JwdkVc=f0vFg@mail.gmail.com>
 <30e2f6e4-197c-bc7a-bde2-8fe9c95d0511@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <30e2f6e4-197c-bc7a-bde2-8fe9c95d0511@linux.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIElu?=
 =?utf-8?q?troduce_multitile_support?=
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt and Tvrtko,

> On 18/03/2022 13:25, Matthew Auld wrote:
> > On Fri, 18 Mar 2022 at 08:18, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > 
> > > >    • igt@i915_selftest@mock@requests:
> > > > 
> > > >        □ shard-kbl: PASS -> DMESG-FAIL
> > > > 
> > > >        □ shard-tglb: PASS -> DMESG-FAIL
> > > > 
> > > >        □ shard-apl: PASS -> DMESG-FAIL
> > > > 
> > > >        □ shard-glk: PASS -> DMESG-FAIL
> > > > 
> > > >        □ shard-skl: PASS -> DMESG-FAIL
> > > > 
> > > >        □ shard-snb: PASS -> DMESG-FAIL
> > > > 
> > > >        □ shard-iclb: PASS -> DMESG-FAIL
> > > 
> > > I don't see how these failures can be related to the series I
> > > sent.
> > > 
> > > Maybe a false positive?
> > 
> > AFAICT these look new. Did we forget to do something for the
> > mock_device? Maybe something in patch 3? Nothing is jumping out at
> > me...

it was of course suspicious, but I spent quite a lot of time at
fixing the mock selftests, until I got all greens on trybot. But
then, another refactoring happened...

> Yeah to "sus" :)
> 
> [I like so don't recognise much of that patch I am supposed to be author of... I think it moved on a lot since my version. Anyway.. onto the bug.]
> 
> Module init (executed in order):
> 
> 	{ .init = i915_mock_selftests }, -> this is the part which runs mock selftests
> ...
> 	{ .init = i915_pci_register_driver, -> this is the part which sets up i915->gt[0]
> 
> It happens via i915_pci_register_driver -> i915_pci_probe -> i915_driver_probe -> intel_gt_probe_all.
> 
> Mock cleanup does:
> 
> mock_device_release
> 
> +	intel_gt_driver_late_release(i915);
> 
>  ->
> 
> +	for_each_gt(gt, i915, id) {
> +		intel_uc_driver_late_release(&gt->uc);
> +		intel_gt_fini_requests(gt);
> +		intel_gt_fini_reset(gt);
> +		intel_gt_fini_timelines(gt);
> +		intel_engines_free(gt);
> +	}
> 
> Hence I think for_each_gt does not see i915->gt[0] being set ergo does nothing.

goot point, I'm missing a

	i915->gt[0] = gt;

somewhere, that is supposed to happen in the probe_all. Thanks!

> I also don't like the signature changes like:
> 
> -void intel_gt_driver_late_release(struct intel_gt *gt)
> +void intel_gt_driver_late_release(struct drm_i915_private *i915)
> 
> If it has to live in intel_gt.c, maybe at least use the "_all" suffix more consistently?

yes... not nice indeed. Also Michal complained. I will add the
"_all" suffix. Didn't want to make very long function names at
first.

Andi
