Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515566EAC51
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A530910EE36;
	Fri, 21 Apr 2023 14:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 323 seconds by postgrey-1.36 at gabe;
 Wed, 12 Apr 2023 09:48:55 UTC
Received: from mail78-58.sinamail.sina.com.cn (mail78-58.sinamail.sina.com.cn
 [219.142.78.58])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96DA510E74E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 09:48:55 +0000 (UTC)
X-SMAIL-HELO: localhost.localdomain
Received: from 106.23.202.1.static.bjtelecom.net (HELO
 localhost.localdomain)([1.202.23.106])
 by sina.com (172.16.235.25) with ESMTP
 id 64367D3D00007DDC; Wed, 12 Apr 2023 17:43:27 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
Authentication-Results: sina.com; spf=none smtp.mailfrom=hdanton@sina.com;
 dkim=none header.i=none;
 dmarc=none action=none header.from=hdanton@sina.com
X-SMAIL-MID: 5956834209835
From: Hillf Danton <hdanton@sina.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 12 Apr 2023 17:43:15 +0800
Message-Id: <20230412094315.1445-1-hdanton@sina.com>
In-Reply-To: <CALjTZvZ=Y1psyd0nmfzm6GhqMKvq5V_NQCWb_X02nasp1CpfcQ@mail.gmail.com>
References: 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 21 Apr 2023 14:09:19 +0000
Subject: Re: [Intel-gfx] INFO: rcu_sched detected expedited stalls
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
Cc: paulmck@kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Apr 2023 10:15:29 +0100 Rui Salvaterra <rsalvaterra@gmail.com>
> Hi, everyone,
> 
> I apologise in advance if I've sent this to {too many, the wrong}
> people. For some time now, I've been getting sporadic (in about one
> out of five boots) DRM-related RCU complaints on an Ivy Bridge-based
> (Core i7-3720QM) Mac Mini. Call trace (on Linux 6.3-rc6) follows:

Feel free to post again after taking a look at the popular format of
syzbot report[1].

[1] https://lore.kernel.org/lkml/000000000000f1a9d205f909f327@google.com/

> [    5.794026] rcu: INFO: rcu_sched detected expedited stalls on
> CPUs/tasks: { 0-.... } 3 jiffies s: 309 root: 0x1/.
> [    5.794044] rcu: blocking rcu_node structures (internal RCU debug):
> [    5.794045] Sending NMI from CPU 1 to CPUs 0:
> [    5.794049] NMI backtrace for cpu 0
> [    5.794051] CPU: 0 PID: 537 Comm: Xorg Not tainted 6.3.0-rc6-debug+ #57
> [    5.794053] Hardware name: Apple Inc. Macmini6,2/Mac-F65AE981FFA204ED, BIOS 429.0.0.0.0 03/18/2022
