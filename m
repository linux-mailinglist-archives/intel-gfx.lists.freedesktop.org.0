Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9497BFCCC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 15:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5180010E36A;
	Tue, 10 Oct 2023 13:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C23B10E01F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 13:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696943032; x=1728479032;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2VG8epOd5WNBYvo6JVf0wJfl04xPr8sekgMK2hSf4Mc=;
 b=CxO9eBxO591QkUriWvPkI5UU6WonuoLHTrQ9OWf32YDbPHrimJa1Rx6g
 zYGNZRzO3Mdn8QPISZD74M6dT2KW4cyEkgeCg3gjYYrkjMOyI7E1md7/X
 f7RlyEDdEKV4ldq4m87NWX+csqcCv8so4rCfhpfkgbXgTAywIpYvGraIX
 18pqOSp2kstJer4LPMEjk54xA+w6+aztshwgDaZ2ZS2MtEQE1w2A+LB2i
 qCdmQSzOef8TjbY0a64nPBZCylrYej+qAGt2D/te/FW1FSrkIEQo3KBIu
 pirBga1TN1oJ9xCjMozwLjvpKvM3nOjcOzbX7rcILL0O3Y5/RMr18zpwR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415395536"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="415395536"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 06:03:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="753398927"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="753398927"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.148.82])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 06:03:44 -0700
Date: Tue, 10 Oct 2023 15:03:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZSVLquSf0NNX+uBC@ashyti-mobl2.lan>
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
 <20231009172919.1769055-7-jonathan.cavitt@intel.com>
 <4e59a9fe-d5d2-c696-1c4a-5e83ed2b9c69@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4e59a9fe-d5d2-c696-1c4a-5e83ed2b9c69@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v9 6/7] drm/i915/gt: Increase sleep in
 gt_tlb selftest sanitycheck
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 saurabhg.gupta@intel.com, chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

> On 09/10/2023 18:29, Jonathan Cavitt wrote:
> > For the gt_tlb live selftest, when operating on the GSC engine,
> > increase the timeout from 10 ms to 200 ms because the GSC
> > engine is a bit slower than the rest.
> 
> And others from 10ms to 20ms. By accident or deliberate?

yes, accident :-)

Andi

> 
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
> >   1 file changed, 9 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> > index 7e41f69fc818f..24beb94aa7a37 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> > @@ -136,8 +136,15 @@ pte_tlbinv(struct intel_context *ce,
> >   	i915_request_get(rq);
> >   	i915_request_add(rq);
> > -	/* Short sleep to sanitycheck the batch is spinning before we begin */
> > -	msleep(10);
> > +	/*
> > +	 * Short sleep to sanitycheck the batch is spinning before we begin.
> > +	 * FIXME: Why is GSC so slow?
> > +	 */
> > +	if (ce->engine->class == OTHER_CLASS)
> > +		msleep(200);
> > +	else
> > +		msleep(20);
> > +
> >   	if (va == vb) {
> >   		if (!i915_request_completed(rq)) {
> >   			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",
