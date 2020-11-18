Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 367FF2B84EC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 20:32:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877AF6E440;
	Wed, 18 Nov 2020 19:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 309 seconds by postgrey-1.36 at gabe;
 Wed, 18 Nov 2020 17:18:42 UTC
Received: from z5.mailgun.us (z5.mailgun.us [104.130.96.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04BE6E479
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 17:18:42 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1605719924; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=5nESMJmnxUHbx6t5k8rqAYtDrNGqPSU8af4XuSF6aX8=;
 b=L6TY6qHR1WY2KsexAHM/GCLS5tzEKcIF3ajJeBcTZeoaiFUeq1bNWljpfaATeNW1DBzbmFKB
 424y2v9vtGUsmSIUNKY4QU1FaTyfJ5BtRbsivgpvPlSlYE0kMuLUmph3nfvtXNBs6PikcOmU
 5EoYM9k1l8Gzvy0hJuNbJzy+0jQ=
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5fb55637fa67d9becf55927c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 18 Nov 2020 17:13:27
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 81A26C433C6; Wed, 18 Nov 2020 17:13:26 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D1942C433ED;
 Wed, 18 Nov 2020 17:13:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D1942C433ED
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jani Nikula <jani.nikula@intel.com>
References: <20201118165320.26829-1-jani.nikula@intel.com>
 <20201118165320.26829-3-jani.nikula@intel.com>
Date: Wed, 18 Nov 2020 19:13:22 +0200
In-Reply-To: <20201118165320.26829-3-jani.nikula@intel.com> (Jani Nikula's
 message of "Wed, 18 Nov 2020 18:53:17 +0200")
Message-ID: <87ima2vb9p.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 18 Nov 2020 19:32:49 +0000
Subject: Re: [Intel-gfx] [PATCH 3/6] ath10k: make relay callbacks const
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Jani Nikula <jani.nikula@intel.com> writes:

> Now that relay_open() accepts const callbacks, make relay callbacks
> const.
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: ath10k@lists.infradead.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I assume this goes via some other tree:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
