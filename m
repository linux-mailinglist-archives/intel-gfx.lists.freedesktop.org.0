Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 102EF495FBB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:25:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D8410E6F9;
	Fri, 21 Jan 2022 13:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1153A10E916
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 07:38:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5609DB81F10;
 Fri, 21 Jan 2022 07:38:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 101D1C340E3;
 Fri, 21 Jan 2022 07:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642750692;
 bh=zXkb2ok2mgiZpR8XJNcz4+niW6G1cJSkJ5qEilrGpBA=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=f8Zgttx8hT26mKKl0CR7BZMmDst7ukqWrt88qp5uUhdIzQc2/Sshz9T5bcg1yVGnT
 ChvK43vwM3FbvQ6xU5XOxId4uaKr0J0yF/pV53HoAvt0YYIlokr/PojnoPe/AnSLWs
 eDf5jruxbu0XfwHtPVBVvjJA6fHmkgYCiWDFfL/UYDDZQedc1EaIzQD3NCNmCFEBUL
 7SUanhjXQzgoRAauorEvG5qMXwpaDc1dvCmh/703toJYJTRq42scfg6jK3mRRkjWHi
 eLTuFjNRglcUoX95dkx3AzTgd8yOQtUR1dyE/7pKz6bj4V4e08xpMFlhFn2DB8SOMP
 lMD/m+vvcKVDA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 F1635F6079C; Fri, 21 Jan 2022 07:38:11 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20220120204817.GA1065181@bhelgaas>
References: <20220120204817.GA1065181@bhelgaas>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20220120204817.GA1065181@bhelgaas>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git
 tags/pci-v5.17-fixes-1
X-PR-Tracked-Commit-Id: 9c494ca4d3a535f9ca11ad6af1813983c1c6cbdd
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 4141a5e694588897cbec955bc4a646075dc0afd7
Message-Id: <164275069198.15932.5725510103578792675.pr-tracker-bot@kernel.org>
Date: Fri, 21 Jan 2022 07:38:11 +0000
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Approved-At: Fri, 21 Jan 2022 13:25:01 +0000
Subject: Re: [Intel-gfx] [GIT PULL] PCI fixes for v5.17
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
Cc: x86@kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The pull request you sent on Thu, 20 Jan 2022 14:48:17 -0600:

> git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git tags/pci-v5.17-fixes-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/4141a5e694588897cbec955bc4a646075dc0afd7

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
