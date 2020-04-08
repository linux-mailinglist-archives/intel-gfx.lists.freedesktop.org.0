Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9DF1A2071
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D486E0E1;
	Wed,  8 Apr 2020 11:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5E26E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:55:30 +0000 (UTC)
IronPort-SDR: abMXg7PsWjMEkD88nfS/2T5HCRcIlp1YdDK8LmcJuiuhTlGPhp5p/dGqepLQxrqzeYRV0+F+f9
 otKyuGuGqSdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 04:55:30 -0700
IronPort-SDR: 0Ijpk2RVdGcybt14Rfp+FuzIYMdBR2gKgTuxTGPouYMTn6D7/XijATfjHSAjMI16gvHmYv4wZu
 FeN3IC16likQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="254777975"
Received: from dmiles-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.93.51])
 by orsmga006.jf.intel.com with ESMTP; 08 Apr 2020 04:55:27 -0700
Date: Wed, 8 Apr 2020 14:55:26 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200408115526.GA12719@intel.intel>
References: <20200407214502.217567-1-andi@etezian.org>
 <20200407214502.217567-2-andi@etezian.org>
 <09803740-08b8-bf29-8b56-4ab11e6bf95f@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09803740-08b8-bf29-8b56-4ab11e6bf95f@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 1/2] drm/i915: remove broken
 i915_sseu_status interface
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

I start by saying that this patch was mainly sent to kickstart a
discussion about cleanups required in debugfs and how debugfs can
be inconsistent and how much it looks to me that we are relying
on its current state.

> > The i915_sseu_status is broken and the tests on this interface
> > are disabled. There is no reason to drag it along.
> 
> Not saying we need it, but can you say how it is broken?

well tests in igt are failing because we don't get the results we
expect, I don't know where it is actually broken but the igt test
looks straight forward to me.

I assume (with some hints I received, though) that the sseu
reads are inconsistent.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
