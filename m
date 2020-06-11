Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6FD1F6630
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 13:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29836E8EF;
	Thu, 11 Jun 2020 11:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D456E87B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 01:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591840226;
 bh=1bMTDHYNilN0wsjDD9VsVH+mfJI/tyVAqLliu2VoAQo=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Dwv3FcMRmPE4jHrpL4qrfrL20CPPK1WYdp7V+XX5Nm48vu9Jd4VEq0v7nl3qQ3i+v
 d+5vJdtNuWJR7cDaMdHdNAzict9tkNg7NHN0mGU3aY0deXjQ8wJifzik5mTHTb2YEH
 fnO5zWn6HwVlOfi4HkcVSiy3xSokPaw46X78fjb0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200610202837.GV23230@ZenIV.linux.org.uk>
References: <20200610202837.GV23230@ZenIV.linux.org.uk>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200610202837.GV23230@ZenIV.linux.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git uaccess.i915
X-PR-Tracked-Commit-Id: 7b3f0c4c56b08a86f890cad3599242c78c683aa9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3a8557e1aed0043d526f304a1f500108c8976b78
Message-Id: <159184022602.24802.16565146152387751985.pr-tracker-bot@kernel.org>
Date: Thu, 11 Jun 2020 01:50:26 +0000
To: Al Viro <viro@zeniv.linux.org.uk>
X-Mailman-Approved-At: Thu, 11 Jun 2020 11:04:05 +0000
Subject: Re: [Intel-gfx] [git pull] uaccess i915
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
Cc: intel-gfx@lists.freedesktop.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The pull request you sent on Wed, 10 Jun 2020 21:28:37 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git uaccess.i915

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3a8557e1aed0043d526f304a1f500108c8976b78

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
