Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D6519F1FA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 11:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB77A6E2F2;
	Mon,  6 Apr 2020 09:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C376E2F2;
 Mon,  6 Apr 2020 09:01:56 +0000 (UTC)
IronPort-SDR: Laqd8WFA6eew0WKYc+pZE6OfcZH5psYbm6qgQIkDHj9mNtIsLItFr9Q/26wmcAZizCdNjMdmDj
 XHMQ4QKCrjFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 02:01:51 -0700
IronPort-SDR: sKzZKKfqJ8HITpZgplb398OnuLv/4VEaGZZLDWyllSjtScZAc+hnzp9dNdiPSdlX+yOw4mNX/B
 onRAm6N7xFQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,350,1580803200"; d="scan'208";a="285829058"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2020 02:01:50 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jLNdd-0001j3-Ts; Mon, 06 Apr 2020 12:01:49 +0300
Date: Mon, 6 Apr 2020 12:01:49 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200406090149.GK9497@platvala-desk.ger.corp.intel.com>
References: <20200406085309.1585743-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406085309.1585743-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Add the missing
 igt_dynamic to dynamic rcs* test selection
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 06, 2020 at 09:53:09AM +0100, Chris Wilson wrote:
> An important ingredient to using igt_subtest_with_dynamic is to include
> an igt_dynamic at some point.
> 
> Reported-by: Petri Latvala <petri.latvala@intel.com>
> Fixes: 311cb1b360b7 ("i915/perf_pmu: Dynamic active engine tests")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Petri Latvala <petri.latvala@intel.com>

Thanks,

Reviewed-by: Petri Latvala <petri.latvala@intel.com>


If someone (tm) is feeling like there's not enough to do, perf_pmu
could use a refactoring with the dynamic subtests to do


igt_subtest_with_dynamic() {
  igt_require(system-wide things);

  igt_dynamic_f() { igt_require(engine-specific thing); }
}

so that skips happen for a whole subtest at a time for things like gen
checks.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
