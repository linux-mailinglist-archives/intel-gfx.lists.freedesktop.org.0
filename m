Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7663369DBB4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 09:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8A910E2BB;
	Tue, 21 Feb 2023 08:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCFD10E2B9;
 Tue, 21 Feb 2023 08:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676967238; x=1708503238;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KP7vJdOv8C/anFSf+7Q0gXQC12jwfBaiTmovtc1w78s=;
 b=SUsMaX2M/w98+zVdnfZlzTgH3WnNCFH6en5nnNKu6P4Iob7zRaMl/i2x
 MS7xJJ5hetGIV8Fpa+3mDudDPPzmRzjRMZ8I3JWOsESp1rqMtxk05vfuB
 9rqKkKw5WT72vqjiPMBtwgkcmWRduSC1tYXinMSid924a67ONMcFcA8lh
 coO3Phqvjip89D7pnX9cxXTIJzzQC9lxTktXK6IM5jsoHpqhLL+IlF3J9
 kWr0LyzjyAY6QnNYerhmYv0UFvls7U3+CvB/+E+MiCa7CjYkMYzO7RNxr
 m96Q4Ga8wzWpVnssv5TWMBg9jNebzsfzDl8mZGmfNprcD4853Qi0u6qND Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="397258892"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="397258892"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 00:13:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="621413463"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="621413463"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.6.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 00:13:55 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Date: Tue, 21 Feb 2023 09:13:17 +0100
Message-ID: <5908304.lOV4Wx5bFT@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230220204946.7uy5krqzfb5qc4oz@kamilkon-desk1>
References: <20230220132445.32129-1-janusz.krzysztofik@linux.intel.com>
 <20230220204946.7uy5krqzfb5qc4oz@kamilkon-desk1>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_barrier_race: Extend
 support over compute engines
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

On Monday, 20 February 2023 21:49:46 CET Kamil Konieczny wrote:
> On 2023-02-20 at 14:24:45 +0100, Janusz Krzysztofik wrote:
> > This test can work not only on render engines, as its current code
> > suggests, but also on compute class engines.  Add them to the set of
> > engine classes supported by the test, in case a future platform has only
> > those and no RCS available.
> 
> Lgtm,
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thank you Kamil, pushed.

Janusz

> 
> --
> Kamil
> 
> > 
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/i915/gem_barrier_race.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tests/i915/gem_barrier_race.c b/tests/i915/gem_barrier_race.c
> > index 484fef85ac..053fa2069e 100644
> > --- a/tests/i915/gem_barrier_race.c
> > +++ b/tests/i915/gem_barrier_race.c
> > @@ -142,7 +142,8 @@ igt_main
> >  		struct intel_execution_engine2 *e;
> >  
> >  		for_each_physical_engine(fd, e) {
> > -			if (e->class != I915_ENGINE_CLASS_RENDER)
> > +			if (e->class != I915_ENGINE_CLASS_RENDER &&
> > +			    e->class != I915_ENGINE_CLASS_COMPUTE)
> >  				continue;
> >  
> >  			igt_dynamic(e->name)
> 




