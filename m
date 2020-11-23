Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34862C1439
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 20:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFBF6E06E;
	Mon, 23 Nov 2020 19:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4F16E06D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 18:06:17 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1606154779; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=+GWPIHuQwAD1Es+0RdG56GcW72pfXIcFQM3ufPZO2KA=;
 b=UTyHkPw9c1QIatXgtyV/wQfXApysarjS6Af54aVB2Wrj7ji0aZYKDeBB+Vj8JAE4dauUqIMJ
 DiNhorWYgqTPVBZnTfxfG1rOA2sU+8KeNtiHAUYV4TlKRt8OagQu/31Atn++lZTT3CeL6qbw
 X+ipL0SLne7L1GJ7pK7ZWtejaxQ=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-west-2.postgun.com with SMTP id
 5fbbfa0f7ef0a8d8438217ce (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 23 Nov 2020 18:06:07
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 89A2CC43465; Mon, 23 Nov 2020 18:06:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED, BAYES_00,
 SPF_FAIL, 
 URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C9F60C433ED;
 Mon, 23 Nov 2020 18:06:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C9F60C433ED
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jani Nikula <jani.nikula@intel.com>
References: <cover.1606153547.git.jani.nikula@intel.com>
Date: Mon, 23 Nov 2020 20:06:00 +0200
In-Reply-To: <cover.1606153547.git.jani.nikula@intel.com> (Jani Nikula's
 message of "Mon, 23 Nov 2020 19:59:20 +0200")
Message-ID: <87mtz8q77b.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 23 Nov 2020 19:11:00 +0000
Subject: Re: [Intel-gfx] [PATCH 0/9] relay: cleanup and const callbacks,
 take 2
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
Cc: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@infradead.org>,
 intel-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>,
 linux-block@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 ath11k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Jani Nikula <jani.nikula@intel.com> writes:

> This is v2 of [1], with a number of cleanups added first based on
> Christoph's feedback, making the actual constness patch much smaller and
> cleaner.
>
> I don't know who actually maintains relay, it's not in MAINTAINERS -
> Cc'd Andrew just in case.
>
> I'd think it would be simplest to queue patches 5-9 via whichever tree
> the relay patches get merged. They're all one-liners so neglible
> conflict potential.
>
> BR,
> Jani.
>
>
> [1] http://lore.kernel.org/r/20201118165320.26829-1-jani.nikula@intel.com
>
>
> Cc: linux-block@vger.kernel.org
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: ath11k@lists.infradead.org
> Cc: ath10k@lists.infradead.org
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: linux-wireless@vger.kernel.org
> Cc: QCA ath9k Development <ath9k-devel@qca.qualcomm.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: Christoph Hellwig <hch@infradead.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
>
>
> Jani Nikula (9):
>   relay: remove unused buf_mapped and buf_unmapped callbacks
>   relay: require non-NULL callbacks in relay_open()
>   relay: make create_buf_file and remove_buf_file callbacks mandatory
>   relay: allow the use of const callback structs
>   drm/i915: make relay callbacks const
>   ath10k: make relay callbacks const
>   ath11k: make relay callbacks const
>   ath9k: make relay callbacks const
>   blktrace: make relay callbacks const

For ath9k, ath10k & ath11k:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
