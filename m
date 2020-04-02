Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2F619BF50
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 12:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0BB6EA41;
	Thu,  2 Apr 2020 10:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A56B66EA41
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 10:28:07 +0000 (UTC)
IronPort-SDR: Too8wZj/4zlHo6zQQTnPGmQNyL6zsrlyDkmNZL4qo/AovzcdsJzGRM1DlvMMz1AIPYGQXmj4Kp
 +/I2Notqc3KQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:28:07 -0700
IronPort-SDR: 2ylLtGTrh140LDaOdYju2HvyYJp3z8IsesmDvSRpVp0Lkq0DdK/+YeZA7nRhR9Ph8S7vd2oddn
 jyfuRYazxK7g==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="273514460"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:28:06 -0700
Message-ID: <76357b91f247b1fddf17e49546cb3c16088f19cc.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Thu, 02 Apr 2020 12:28:03 +0200
In-Reply-To: <158582291010.5852.5907909973655746744@build.alporthouse.com>
References: <20200402101906.26770-1-janusz.krzysztofik@linux.intel.com>
 <158582291010.5852.5907909973655746744@build.alporthouse.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Suppress page allocation
 warnings on engine park
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2020-04-02 at 11:21 +0100, Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-04-02 11:19:06)
> > On memory constrained systems it may happen that no pages are available
> > for serving object creation attempt during engine park.  Since we can
> > and we do ignore that failure, let's suppress possible warnings from
> > page allocator to avoid confusion and make CI happy.
> 
> The effect of ignoring it though is dangerous, hence why I had a
> warning.

Then maybe just WARN() from switch_to_kernel_context() on
__i915_request_create() returning -ENOMEM instead?

Thanks,
Janusz

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
