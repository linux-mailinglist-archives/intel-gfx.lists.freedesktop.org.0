Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB7E2B84EA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 20:32:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37E86E439;
	Wed, 18 Nov 2020 19:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from z5.mailgun.us (z5.mailgun.us [104.130.96.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C5689FD9
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 17:20:49 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1605720049; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=Qwb7+Z0qTFHABo6HkPNQB09jo+POFlAbgIBYxxd3DtA=;
 b=JgsZjQiag00gipSk/O+Ivw0YkttlwuS2ESV5eqInk8A13mnX4CDCqRnHxiIS0pCNOABwQrJo
 V5Xyoegblb9S6WaCboCZ5bXkYpyGZ9f2iYXIgxbzLLYuUrbIjVSqiSZElwIyWM6QEd+/MLX6
 hk9F0cqTZM2qwkL0sz9pgBD/6XM=
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5fb556bf1dba509aaea567f4 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 18 Nov 2020 17:15:43
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D05CBC43461; Wed, 18 Nov 2020 17:15:43 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EE464C433C6;
 Wed, 18 Nov 2020 17:15:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EE464C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jani Nikula <jani.nikula@intel.com>
References: <20201118165320.26829-1-jani.nikula@intel.com>
 <20201118165320.26829-5-jani.nikula@intel.com>
 <87y2iyvbpr.fsf@codeaurora.org>
Date: Wed, 18 Nov 2020 19:15:39 +0200
In-Reply-To: <87y2iyvbpr.fsf@codeaurora.org> (Kalle Valo's message of "Wed, 18
 Nov 2020 19:03:44 +0200")
Message-ID: <87eekqvb5w.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 18 Nov 2020 19:32:49 +0000
Subject: Re: [Intel-gfx] [PATCH 5/6] ath9k: make relay callbacks const
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
Cc: intel-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 QCA ath9k Development <ath9k-devel@qca.qualcomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Kalle Valo <kvalo@codeaurora.org> writes:

> Jani Nikula <jani.nikula@intel.com> writes:
>
>> Now that relay_open() accepts const callbacks, make relay callbacks
>> const.
>>
>> Cc: Kalle Valo <kvalo@codeaurora.org>
>> Cc: QCA ath9k Development <ath9k-devel@qca.qualcomm.com>
>> Cc: linux-wireless@vger.kernel.org
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Can I take this to my ath tree or what's the plan?

Ah, saw patch 1 only now. So I assume this goes via some other tree:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
