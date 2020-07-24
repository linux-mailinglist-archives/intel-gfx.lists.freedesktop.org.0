Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 751D622CEDA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 21:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77BDE6E865;
	Fri, 24 Jul 2020 19:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79B06E865
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 19:46:31 +0000 (UTC)
IronPort-SDR: dhQmMrc2aTS1t4D/CQJrwhOkVGf1jcPWoX5VUUZ+YAMmX6S5wEB9PwuuTBlaoyojVI69SizRec
 Y5Apt6PK3HPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149959120"
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="149959120"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 12:46:18 -0700
IronPort-SDR: DhxMdEsCx4KvN+d2xfzuXz796H1DKXSb+HwBg7DoKCkavy9iC3Jyj/oRTKXk7rNOrKmqGjmIF8
 qWNS5RFj/UWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="327412808"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.227.31])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2020 12:46:17 -0700
MIME-Version: 1.0
In-Reply-To: <20200724193511.GD28353@orsosgc001.amr.corp.intel.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-5-umesh.nerlige.ramappa@intel.com>
 <159559455387.21069.937949659631730547@build.alporthouse.com>
 <20200724162956.GB28353@orsosgc001.amr.corp.intel.com>
 <159560845126.2889.3198879925052513730@build.alporthouse.com>
 <20200724184737.GC28353@orsosgc001.amr.corp.intel.com>
 <159561690616.2889.9530939268194445382@build.alporthouse.com>
 <20200724193511.GD28353@orsosgc001.amr.corp.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Fri, 24 Jul 2020 20:46:16 +0100
Message-ID: <159561997670.2889.17841435571962923785@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Umesh Nerlige Ramappa (2020-07-24 20:35:11)
> I agree, but strangely, with mmap sequence below, I don't see 
> i915_perf_release() called at all.  So destroy() is not called.
> 
> perf_fd = i915_perf_open_ioctl()
> mmap(..., perf_fd...)
> close(perf_fd)
> delay for a few seconds.
> 
> If I call munmap() after the close(), I see i915_perf_release() -> 
> destroy() -> unmap_mapping_range()

Hmm, vma->vm_file is pointing to the perf-fd. Ah, that's a big
difference to what I'm used to. So all the references are handled for
you by the correct vma->vm_file, and you don't need the
vm_open/vm_close, the kref or the closed. Sorry.
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
