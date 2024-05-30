Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D758D46DD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 10:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A270911B767;
	Thu, 30 May 2024 08:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=leemhuis.info header.i=@leemhuis.info header.b="WJVES9mK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBF211B767
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 08:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
 References; bh=2qSmcKQLSP52mEVww3DCCIcBrf2lLBSwwql8yWCKhrw=; t=1717057051;
 x=1717489051; b=WJVES9mKQhK/YmeQZArR2VwNJP3KLEXQ2KinTLCd33g3haDDTuLYOieGzYd0e
 Yf6kIZ2LXVgqswZhI92UxSlbe6pl+KqHtWMKTIiBxORwATuCAv6+j6BFn5vSQpnl2v2RY01jCiK0c
 wfVJim691H3H3F3AmaaIa2rPajaHB+7kukaBtAwywkvdOBG5mXY2y+LEUOsfFket2V4Gva1PFIL2e
 /TgMklxGsff9WfHiLZ/qMn4TX5dStPP7RD1XIEFD68dqAY84FzhPX3OFxsmwXIE6aN4ymUCadRB4b
 T3bsWyASaZQ5i0Rpt4IbezHqBSmMO1Vg4LHo3CJRcIA86GQDMg==;
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1sCayR-0008RD-QD; Thu, 30 May 2024 10:17:23 +0200
Message-ID: <6f9bcb19-b6ff-4a62-8cbc-8aa40d00ff07@leemhuis.info>
Date: Thu, 30 May 2024 10:17:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] REGRESSION: 86167183a17e ("igc: fix a log entry
 using uninitialized netdev")
To: Jani Nikula <jani.nikula@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Corinna Vinschen <vinschen@redhat.com>, Hariprasad Kelam
 <hkelam@marvell.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Naama Meir <naamax.meir@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <87o78rmkhu.fsf@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: en-US, de-DE
In-Reply-To: <87o78rmkhu.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1717057051;
 0d63414c; 
X-HE-SMSGID: 1sCayR-0008RD-QD
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

On 27.05.24 15:50, Jani Nikula wrote:
> 
> Hi all, the Intel graphics CI hits a lockdep issue with commit
> 86167183a17e ("igc: fix a log entry using uninitialized netdev") in
> v6.10-rc1.

FWIW, there is a earlier regression report bisected to that commit id:
https://lore.kernel.org/lkml/CABXGCsOkiGxAfA9tPKjYX7wqjBZQxqK2PzTcW-RgLfgo8G74EQ@mail.gmail.com/

And a revert is up for review:
https://lore.kernel.org/all/20240529051307.3094901-1-sasha.neftin@intel.com/

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.
