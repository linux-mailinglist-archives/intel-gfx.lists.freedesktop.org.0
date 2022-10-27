Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF4D60FD8E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 18:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D7810E6A5;
	Thu, 27 Oct 2022 16:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CF910E6A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 16:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=/U8S3Hm7GM0N6bSRIg6fGWmqOXH9FpB3PcS4vcOVE4s=; b=LssFHjU3t3g7NhCPsPAUbQXcNS
 /acApWjgm1hBREBZAMSdkS+j4BidQLmuo0qgb16z1ZemttbxkkAiAhb3KNonWYweDrx9fmJwx2+eJ
 HscLMxV5H4nw3V1np3WxeeY8HKUIaYtDjvFGi21dnd2vxyXIsGjyYtbBe/Zxlmj9thgIWDc8eAc0b
 adhHkvlG35IqPDYoV+kT6hiHUBye/VPnBk6WB8AVsenW87uV37WQn7PBbkBKquyoWW0c8wCVgTKLv
 5AqWnbk0e0eIqrWQOIeZv6MFdezzYUn3IZxlaH4wQLgYDzAdkUGRE8u/LKOjNz+7UsRWKPmowhbPF
 aIDUDNzQ==;
Received: from j130084.upc-j.chello.nl ([24.132.130.84]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1oo68C-006uwr-8y; Thu, 27 Oct 2022 16:53:24 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3746230020C;
 Thu, 27 Oct 2022 18:53:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 1BEDC2C646598; Thu, 27 Oct 2022 18:53:23 +0200 (CEST)
Date: Thu, 27 Oct 2022 18:53:23 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y1q3gzbPUCvEMHGD@hirez.programming.kicks-ass.net>
References: <20220822111816.760285417@infradead.org>
 <20220822114649.055452969@infradead.org>
 <Y1LVYaPCCP3BBS4g@intel.com> <Y1drd2gzxUJWdz5F@intel.com>
 <Y1e/Kd+1UQqeSwzY@hirez.programming.kicks-ass.net>
 <Y1kMv1GpKwOSIt8f@intel.com>
 <Y1kdRNNfUeAU+FNl@hirez.programming.kicks-ass.net>
 <Y1qC7d7QVJB8NCHt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1qC7d7QVJB8NCHt@intel.com>
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

On Thu, Oct 27, 2022 at 04:09:01PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 26, 2022 at 01:43:00PM +0200, Peter Zijlstra wrote:

> > Could you please give the below a spin?
> 
> Thanks. I've added this to our CI branch. I'll try to keep and eye
> on it in the coming days and let you know if anything still trips.
> And I'll report back maybe ~middle of next week if we haven't caught
> anything by then.

Thanks!
