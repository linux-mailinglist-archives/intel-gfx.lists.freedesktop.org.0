Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E34756169D8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 17:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D83D10E4CA;
	Wed,  2 Nov 2022 16:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF1910E4CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 16:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667408278; x=1698944278;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HeHwbPhOHs42Kq6mnfMZGexb4iqh1X1MYkH7cuf67cI=;
 b=LY6Llq1U8VPQmxLJFj6VhFAiCqR5+ffqN2YxBorCCsp6NLpp3D4SfLxR
 YBW+GjMiO71XH8WcMPD9Vo376QsopQ/eQF29xoP/al57Nnk6jVmdG5mar
 5Os20LXQ/tfIFM9Xf+39iomXzuLexarWnhNBFv5DUOmgL6o/KF5YXZ7Yo
 e1ArtFnHU9VU3klk9N5kbEU+h3sr1SXCpHZwaiMHePKz2GBiVRhcHxYR8
 qxOP7pMj2kV20iHhX3rjzgIV9rqBM/Jj1yQN78aeulas5bgCtFS5drvzu
 jDLoGDqUFwN9+e6gqrhN7vXzQaGNUfo7eS5LbhroxV8aL4jAkKXxs//12 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="373689762"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="373689762"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 09:57:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="776967155"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="776967155"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 02 Nov 2022 09:57:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Nov 2022 18:57:51 +0200
Date: Wed, 2 Nov 2022 18:57:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <Y2Khj7n+tRq3r++O@intel.com>
References: <20220822111816.760285417@infradead.org>
 <20220822114649.055452969@infradead.org>
 <Y1LVYaPCCP3BBS4g@intel.com> <Y1drd2gzxUJWdz5F@intel.com>
 <Y1e/Kd+1UQqeSwzY@hirez.programming.kicks-ass.net>
 <Y1kMv1GpKwOSIt8f@intel.com>
 <Y1kdRNNfUeAU+FNl@hirez.programming.kicks-ass.net>
 <Y1qC7d7QVJB8NCHt@intel.com>
 <Y1q3gzbPUCvEMHGD@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1q3gzbPUCvEMHGD@hirez.programming.kicks-ass.net>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 6/6] freezer,
 sched: Rewrite core freezer logic
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 bigeasy@linutronix.de, rjw@rjwysocki.net, oleg@redhat.com, rostedt@goodmis.org,
 mingo@kernel.org, mgorman@suse.de, intel-gfx@lists.freedesktop.org,
 tj@kernel.org, Will Deacon <will@kernel.org>, dietmar.eggemann@arm.com,
 ebiederm@xmission.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 27, 2022 at 06:53:23PM +0200, Peter Zijlstra wrote:
> On Thu, Oct 27, 2022 at 04:09:01PM +0300, Ville Syrj�l� wrote:
> > On Wed, Oct 26, 2022 at 01:43:00PM +0200, Peter Zijlstra wrote:
> 
> > > Could you please give the below a spin?
> > 
> > Thanks. I've added this to our CI branch. I'll try to keep and eye
> > on it in the coming days and let you know if anything still trips.
> > And I'll report back maybe ~middle of next week if we haven't caught
> > anything by then.
> 
> Thanks!

Looks like we haven't caught anything since I put the patch in.
So the fix seems good.

-- 
Ville Syrj�l�
Intel
