Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7AD22C28B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 11:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331096E505;
	Fri, 24 Jul 2020 09:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E797F6E505
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 09:46:04 +0000 (UTC)
IronPort-SDR: qIQF1d3e3F8rT1zgSXirUu9kcAWIwpllV84uJB4b+9Ojct5rH1bcBlCGg5+If4W/LmiSReGbYZ
 X92whxpkkdOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="235561957"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="235561957"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 02:46:04 -0700
IronPort-SDR: 0W7kPpD+LfSUd2OBQCiLv/DSF0MjTVzgBDWMkMeSSngz8E3BWq1Cmobqy3u/ZKOD5+Nc/V88Bp
 nd8Wp3v4+A3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="328860333"
Received: from ahershco-mobl1.ger.corp.intel.com (HELO [10.254.144.190])
 ([10.254.144.190])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 02:46:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200723195110.11540-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <29ee42c5-ff73-9019-5aae-e246ef684052@intel.com>
Date: Fri, 24 Jul 2020 10:46:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200723195110.11540-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Filter wake_flags passed to
 default_wake_function
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23/07/2020 20:51, Chris Wilson wrote:
> The flags passed to the wait_entry.func are passed onwards to
> try_to_wake_up(), which has a very particular interpretation for its
> wake_flags. In particular, beyond the published WF_SYNC, it has a few
> internal flags as well. Since we passed the fence->error down the chain
> via the flags argument, these ended up in the default_wake_function
> confusing the kernel/sched.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2110
> Fixes: ef4688497512 ("drm/i915: Propagate fence errors")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
