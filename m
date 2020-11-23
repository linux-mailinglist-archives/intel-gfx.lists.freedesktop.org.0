Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C9E2C1294
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 19:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC2016E069;
	Mon, 23 Nov 2020 18:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A236E069
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 18:01:28 +0000 (UTC)
IronPort-SDR: ljkVt6NPOegYpEKBBUK0D19j2J28QTswTjEafj82FzX/jK0UTMH5NFr1Mi1mb/ncRziffqlctU
 oL8kfrFFCz/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="233424714"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="233424714"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 10:01:27 -0800
IronPort-SDR: MsDe+LYjN7TG23OEkvmmtHMZmPbqJYdHJcKYbJQVatrwwaDMQWr3/64N4q9lac123QLiRYaKVf
 Rq+rUZkFhx6A==
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="327279699"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.108])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 10:01:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Christoph Hellwig <hch@infradead.org>
In-Reply-To: <20201119081120.GA6149@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201118165320.26829-1-jani.nikula@intel.com>
 <20201119081120.GA6149@infradead.org>
Date: Mon, 23 Nov 2020 20:01:17 +0200
Message-ID: <87pn44lzpu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] relay: allow the use of const callback
 structs
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
Cc: Jens Axboe <axboe@kernel.dk>, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 linux-block@vger.kernel.org, ath11k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 19 Nov 2020, Christoph Hellwig <hch@infradead.org> wrote:
> But taking one step back:  All instances implement create_buf_file
> and remove_buf_file, which makes sense as that is the prime aim
> of these methods.  So there is no point in making those optional.
> subbuf_start_callback is overriden by two instances, so making that
> optional totally makes sense.  buf_mapped and buf_unmapped are
> never overriden, so they should be removed entirely.
>
> More importantly there is no case that passes a NULL rchan_callbacks,
> which makes complete sense as it wouldn't even create a file.  So
> remove that case as well and just replace it with a sanity check in
> relay_open().

Many thanks for the feedback; sent v2 [1].

BR,
Jani.


[1] http://lore.kernel.org/r/cover.1606153547.git.jani.nikula@intel.com


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
