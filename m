Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB464955A2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 21:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5920210E519;
	Thu, 20 Jan 2022 20:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C451110E519
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 20:48:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B08D7B81E55;
 Thu, 20 Jan 2022 20:48:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36B62C340E0;
 Thu, 20 Jan 2022 20:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642711699;
 bh=w4VcuI/3zhWQl6ui5BVYNLaRbVfgrW/jIa3EPwGsGew=;
 h=Date:From:To:Cc:Subject:From;
 b=RrYZEAwegilX/Cs6ioExmUZfcShhX2NrNRBY2sL8NAIPYklsEJrNwUI3Sqfft5uTn
 ca6if3JFve3hUDsKzwoYjyhyaU1sWSHYm3mP3H64vnZm8mswOlhHr4G9hbCH0DqpEY
 MvTeH5O8LUgBfkZeBbjNN3cWptyeHIFjd98sXYYsAt5cFMxhty2/j+CeZX6yMBpFlO
 E98WRCgY8ED+ljmB8pQKV2KluyeuQDln5slrdvyjuHktErnOWHa2A2dMyq9wJ5HDcH
 1DWIhpHczLVCQeM9l2bPaxewpFkO+Krzhnvk9g4gB3IB0ZH42sGAbFp8vDl44MPgC6
 9aQtoGOgc9M4Q==
Date: Thu, 20 Jan 2022 14:48:17 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20220120204817.GA1065181@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [GIT PULL] PCI fixes for v5.17
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
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf:

  Linux 5.16-rc1 (2021-11-14 13:56:52 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git tags/pci-v5.17-fixes-1

for you to fetch changes up to 9c494ca4d3a535f9ca11ad6af1813983c1c6cbdd:

  x86/gpu: Reserve stolen memory for first integrated Intel GPU (2022-01-18 14:19:06 -0600)

----------------------------------------------------------------
PCI fixes:

  - Reserve "stolen memory" for integrated Intel GPU, even if it's not
    the first GPU to be enumerated (Lucas De Marchi)

----------------------------------------------------------------
Lucas De Marchi (1):
      x86/gpu: Reserve stolen memory for first integrated Intel GPU

 arch/x86/kernel/early-quirks.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)
