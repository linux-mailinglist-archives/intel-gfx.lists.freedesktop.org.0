Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F28047B7351
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 23:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6346F10E31E;
	Tue,  3 Oct 2023 21:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130C410E31E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696368594; x=1727904594;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xvylTcIYLUfC5ADNj47qKdD7q5bXfkFSTFyu3YXFkDs=;
 b=TGNQU6jeUTB/Rd8rWk0pDChC8EvWkSAq7UwMKptGAwuN5ULHYlnf1Dws
 +eitd1w8sy1QzuJzZbpfhOGB20/jIyFC/W3mGxMxNGjgLr7m8qEnp4wlk
 rhnSk0qajewxocjztTE94jTpAcgcMQj7ePVVVAgQqlihCFGHw2Y6U0+ju
 jVZRctCW1Z6V6QP895Q1c7BwCOdgqCd+s5I+v8M62wsS1EpAJISok9xCo
 G9jmGfH1jeBbhGH7lfq8FD2VDwmb+WVvYcSbTx13WdJVoui27hTbBswYp
 fTy/C3L3a/TjpSSNiwADlSSlfTluGTR0Gj2k+LUYKmS01v/pkxe3Wr2QL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="363250230"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="363250230"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="744649910"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="744649910"
Received: from adelynhu-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.214.161.181])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:29:28 -0700
Date: Tue, 3 Oct 2023 23:29:22 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZRyHsv/3olQsONmD@ashyti-mobl2.lan>
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <813ae801-b774-7d7a-df8a-00b5b0e36695@linux.intel.com>
 <ZRxEOCI6Xq1UEnlw@ashyti-mobl2.lan>
 <34c8cffc-ece1-dab4-1e41-4fc8b632157d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <34c8cffc-ece1-dab4-1e41-4fc8b632157d@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi John,

> > > > -		mmio_invalidate_full(gt);
> > > > +		if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc)) {
> > > > +			if (intel_guc_is_ready(guc))
> > > > +				intel_guc_invalidate_tlb_full(guc);
> > > > +		} else {
> > > > +			/*
> > > > +			 * Fall back to old path if GuC is disabled.
> > > > +			 * This is safe because GuC is not enabled and not writing to MMIO.
> > > > +			 */
> > > It is safe for intel_guc_is_ready() transitioning from false to true during GuC init? No way for some path to start issuing invalidations as that is happening?
> > > 
> > > > +			mmio_invalidate_full(gt);
> > > > +		}
> > supernitpick: as we are at this, brackets are not required.
> Braces are required on the first half of the 'if' because it is a double if
> and the else applies to the top level not the inner level. And my
> understanding of the style guide is that lop-sided bracing is incorrect.
> i.e. never have "} else". Plus while it might be syntactically valid to not
> have braces around the five line else clause because it is only one actual
> code statement, it massively helps readability of the code to have the
> braces present.

You are right, the 'else' would connect with the innermost 'if'
and besides gcc complains with a warning like this:

   warning: suggest explicit braces to avoid ambiguous ‘else’ [-Wdangling-else]

Thanks,
Andi
