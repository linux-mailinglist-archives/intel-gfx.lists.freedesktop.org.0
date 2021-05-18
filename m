Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 876FE387519
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 11:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9546E85E;
	Tue, 18 May 2021 09:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1736A6E85E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 09:28:42 +0000 (UTC)
IronPort-SDR: DSh3PNdIAeooCg1AzbaFuh6QfUTYzcRw+H+2ml4lOQARR5uhJtHJWnlviHaGgTVx0umXhmo91I
 Qepb6S9oioEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="286198891"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="286198891"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 02:28:42 -0700
IronPort-SDR: s4/YpV65u7qXWBbIU0VNgF7/SmPU4nIjltm3nEUBtyCU5H9hSAdzXPavgQQUxBqQq5K+xZfc0+
 jGB0mWSRMF5w==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="472869205"
Received: from lmrad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.52.115])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 02:28:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>
In-Reply-To: <20210512115736.GA10444@lst.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <b6b61cf0-5874-f4c0-1fcc-4b3848451c31@redhat.com>
 <YJu4tzXmCJbKp7Fm@hirez.programming.kicks-ass.net>
 <20210512115736.GA10444@lst.de>
Date: Tue, 18 May 2021 12:28:36 +0300
Message-ID: <87eee4fl17.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 5.13 i915/PAT regression on Brasswell,
 adding nopat to the kernel commandline worksaround this
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
Cc: intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 May 2021, Christoph Hellwig <hch@lst.de> wrote:
> On Wed, May 12, 2021 at 01:15:03PM +0200, Peter Zijlstra wrote:
>> IIRC it's because of 74ffa5a3e685 ("mm: add remap_pfn_range_notrack"),
>> which added a sanity check to make sure expectations were met. It turns
>> out they were not.
>> 
>> The bug is not new, the warning is. AFAIK the i915 team is aware, but
>> other than that I've not followed.
>
>
> The actual culprit is b12d691ea5e0 ("i915: fix remap_io_sg to verify the
> pgprot"), but otherwise agreed.  Someone the i915 maintainers all seem
> to be on vacation as the previous report did not manage to trigger any
> kind of reply.

We are aware. I've been rattling the cages to get more attention.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
