Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA57AED133
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Jun 2025 23:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4BA210E103;
	Sun, 29 Jun 2025 21:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 605 seconds by postgrey-1.36 at gabe;
 Sun, 29 Jun 2025 21:15:04 UTC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58CA210E103;
 Sun, 29 Jun 2025 21:15:04 +0000 (UTC)
Received: from [192.168.2.196] (p5b13a6da.dip0.t-ipconnect.de [91.19.166.218])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8C7B461E64787;
 Sun, 29 Jun 2025 23:04:32 +0200 (CEST)
Message-ID: <e8c595d4-716f-474c-99ae-c95a56e65d3d@molgen.mpg.de>
Date: Sun, 29 Jun 2025 23:04:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 LKML <linux-kernel@vger.kernel.org>, regressions@lists.linux.dev
From: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: [Regression] Panel flickering on Dell XPS 13 9360 with
 drm-fixes-2025-06-28 merged (Linux 6.16-rc4)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Dear Linux folks,


Just a heads-up, that very likely, merging of branch 
*drm-fixes-2025-06-28* causes flickering of the panel of the Intel Kaby 
Lake laptop Dell XPS 13 9360. 6.16.0-rc3 works fine, and with 
6.16-rc3-00329-gdfba48a70cb6 the panel flickers. I try to bisect, but 
maybe you already have an idea.


Kind regards,

Paul


$ lspci -nn
00:00.0 Host bridge [0600]: Intel Corporation Xeon E3-1200 v6/7th Gen 
Core Processor Host Bridge/DRAM Registers [8086:5904] (rev 02)
00:02.0 VGA compatible controller [0300]: Intel Corporation HD Graphics 
620 [8086:5916] (rev 02)
00:04.0 Signal processing controller [1180]: Intel Corporation Xeon 
E3-1200 v5/E3-1500 v5/6th Gen Core Processor Thermal Subsystem 
[8086:1903] (rev 02)
00:14.0 USB controller [0c03]: Intel Corporation Sunrise Point-LP USB 
3.0 xHCI Controller [8086:9d2f] (rev 21)
00:14.2 Signal processing controller [1180]: Intel Corporation Sunrise 
Point-LP Thermal subsystem [8086:9d31] (rev 21)
00:15.0 Signal processing controller [1180]: Intel Corporation Sunrise 
Point-LP Serial IO I2C Controller #0 [8086:9d60] (rev 21)
00:15.1 Signal processing controller [1180]: Intel Corporation Sunrise 
Point-LP Serial IO I2C Controller #1 [8086:9d61] (rev 21)
00:16.0 Communication controller [0780]: Intel Corporation Sunrise 
Point-LP CSME HECI #1 [8086:9d3a] (rev 21)
00:1c.0 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI 
Express Root Port #1 [8086:9d10] (rev f1)
00:1c.4 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI 
Express Root Port #5 [8086:9d14] (rev f1)
00:1c.5 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI 
Express Root Port #6 [8086:9d15] (rev f1)
00:1d.0 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI 
Express Root Port #9 [8086:9d18] (rev f1)
00:1f.0 ISA bridge [0601]: Intel Corporation Sunrise Point-LP LPC 
Controller [8086:9d58] (rev 21)
00:1f.2 Memory controller [0580]: Intel Corporation Sunrise Point-LP PMC 
[8086:9d21] (rev 21)
00:1f.3 Audio device [0403]: Intel Corporation Sunrise Point-LP HD Audio 
[8086:9d71] (rev 21)
00:1f.4 SMBus [0c05]: Intel Corporation Sunrise Point-LP SMBus 
[8086:9d23] (rev 21)
3a:00.0 Network controller [0280]: Qualcomm Atheros QCA6174 802.11ac 
Wireless Network Adapter [168c:003e] (rev 32)
3b:00.0 Unassigned class [ff00]: Realtek Semiconductor Co., Ltd. RTS525A 
PCI Express Card Reader [10ec:525a] (rev 01)
3c:00.0 Non-Volatile memory controller [0108]: SK hynix PC300 NVMe Solid 
State Drive 512GB [1c5c:1284]
