Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ACC41AE9D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 14:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E676E51A;
	Tue, 28 Sep 2021 12:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A0B6E888
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 09:04:25 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1632819867; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=09C7+Iq0CKL2hGEdanYSFMJLK30HPDjpfQExa8Wp094=;
 b=H8FJWUfe6IjMvSQmUJVNARTUoc3rrUKCXm6zWML00TG65aw4E3smPjwdUISsViNQ87W9eBuE
 Gp7cC2noKl0ApA9hG4Ml57fKC4G+yGsHfnFPkydWVGzSyrCDKNmfnUCgPd/gKhjXDcrDkntI
 mk7uenUedObAlij597JItHuIsWY=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 6152da839ffb413149952e5a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 28 Sep 2021 09:04:03
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3ADDBC43617; Tue, 28 Sep 2021 09:04:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
 version=3.4.0
Received: from tykki.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6E798C4338F;
 Tue, 28 Sep 2021 09:03:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 6E798C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20210322160253.4032422-5-arnd@kernel.org>
References: <20210322160253.4032422-5-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-kernel@vger.kernel.org, Martin Sebor <msebor@gcc.gnu.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, x86@kernel.org, Ning Sun <ning.sun@intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Simon Kelley <simon@thekelleys.org.uk>,
 James Smart <james.smart@broadcom.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Anders Larsen <al@alarsen.net>,
 Tejun Heo <tj@kernel.org>, Serge Hallyn <serge@hallyn.com>,
 Imre Deak <imre.deak@intel.com>, linux-arm-kernel@lists.infradead.org,
 tboot-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, ath11k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-scsi@vger.kernel.org, cgroups@vger.kernel.org,
 linux-security-module@vger.kernel.org, Carl Huang <cjhuang@codeaurora.org>,
 Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Ritesh Singh <ritesi@codeaurora.org>,
 Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Aloka Dixit <alokad@codeaurora.org>, Felix Fietkau <nbd@nbd.name>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-Id: <20210928090402.3ADDBC43617@smtp.codeaurora.org>
Date: Tue, 28 Sep 2021 09:04:02 +0000 (UTC)
X-Mailman-Approved-At: Tue, 28 Sep 2021 12:16:46 +0000
Subject: Re: [Intel-gfx] [PATCH 04/11] ath11: Wstringop-overread warning
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Arnd Bergmann <arnd@kernel.org> wrote:

> gcc-11 with the kernel address sanitizer prints a warning for this
> driver:
> 
> In function 'ath11k_peer_assoc_h_vht',
>     inlined from 'ath11k_peer_assoc_prepare' at drivers/net/wireless/ath/ath11k/mac.c:1632:2:
> drivers/net/wireless/ath/ath11k/mac.c:1164:13: error: 'ath11k_peer_assoc_h_vht_masked' reading 16 bytes from a region of size 4 [-Werror=stringop-overread]
>  1164 |         if (ath11k_peer_assoc_h_vht_masked(vht_mcs_mask))
>       |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath11k/mac.c: In function 'ath11k_peer_assoc_prepare':
> drivers/net/wireless/ath/ath11k/mac.c:1164:13: note: referencing argument 1 of type 'const u16 *' {aka 'const short unsigned int *'}
> drivers/net/wireless/ath/ath11k/mac.c:969:1: note: in a call to function 'ath11k_peer_assoc_h_vht_masked'
>   969 | ath11k_peer_assoc_h_vht_masked(const u16 vht_mcs_mask[NL80211_VHT_NSS_MAX])
>       | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> According to analysis from gcc developers, this is a glitch in the
> way gcc tracks the size of struct members. This should really get
> fixed in gcc, but it's also easy to work around this instance
> by changing the function prototype to no include the length of
> the array.
> 
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=99673
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

eb19efed836a ath11k: Wstringop-overread warning

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20210322160253.4032422-5-arnd@kernel.org/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

