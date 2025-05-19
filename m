Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBF8ABC8D5
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 23:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBEBA10E26D;
	Mon, 19 May 2025 21:02:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="dfZNUU8T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F67310E26D
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 May 2025 21:02:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4E44DA4E36D;
 Mon, 19 May 2025 21:02:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75F0DC4CEE9;
 Mon, 19 May 2025 21:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747688552;
 bh=UqtjN8F3UXYTYQRq0OkVwHTE0Q87SJHdzDiB9tNKITg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dfZNUU8Ttt+zj/33eS19U9MEJYL5TbB6Wdk7ofRL+GTUrIKitWZmmhjwqYBxZpngT
 Mbri+DXkH8Lll9PGmhpuca+wTcy+ZoQ4ajJk+35V6gJ6LoXNycd6ASUzi3NRdNLjre
 c04deAc2V2xplYoB/bvt0zII2kQVVzOa1muWaIiLlMoD6akflQ3TcvrkfQtGZjIYMk
 V1EwwjRAKjJuikl9KY8iBgPsdCG5vRTnjsH4vfVXwWEf8Q1fnsinLac5D7wdhQ/gGK
 8+OQC216yHHs10zSgEFITElRtdf62iR4B+fclXKdayXqlEVX5tYL/lWKeZS5Qxmfvu
 RnjgzUdkTZdIA==
Date: Mon, 19 May 2025 23:02:28 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, kernel-dev@rsta79.anonaddy.me,
 linux-ide@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: ahci + intel iGPU problems
Message-ID: <aCucZBwxga0y93uI@ryzen>
References: <aCdAvkKOfBEQCnZd@ryzen>
 <875xhwvj7j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875xhwvj7j.fsf@intel.com>
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

On Mon, May 19, 2025 at 04:11:28PM +0300, Jani Nikula wrote:
> On Fri, 16 May 2025, Niklas Cassel <cassel@kernel.org> wrote:
> > I do however see a bunch of i915 timeouts.
> 
> The i915 timeouts are normal for when its unable to talk to the display,
> perhaps because it isn't there.

Hello rsta79,

The kernel version you tested with in:
https://bugzilla.kernel.org/show_bug.cgi?id=220111

is v6.12:
May 02 08:02:43 dom0 kernel: Linux version 6.12.21-1.qubes.fc37.x86_64 (mockbuild@f95d19f3373b43faae4cae417a952c59) (gcc (GCC) 12.3.1 20230508 (Red Hat 12.3.1-1), GNU ld version 2.38-27.fc37) #1 SMP PREEMPT_DYNAMIC Fri Apr 25 08:58:31 EDT 2025

Do you see the same problem on v6.15-rc7?


I did find an old commit from Hans de Goede that claims to fix system lockups
for another ST1000* drive, but perhaps your model has the same issue:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=31f6264e225fb92cf6f4b63031424f20797c297d

However, before considering adding a quirk for your exact model, could
you perhaps try updating firmware for the HDD?

You are using firmware C43:
May 02 08:02:43 dom0 kernel: ata6.00: ATA-8: ST1000DM010-2EP102, CC43, max UDMA/133
There appears to be a CC46:
https://smarthdd.com/database/ST1000DM010-2EP102/CC46/


Since LPM also allows the system to enter deeper PC-states,
it could be an ACPI bug for your motherboth, have you tried
updating BIOS for this motherboard?

Your logs show a bunch of warnings about ACPI and ASPM that does not look good:
May 02 08:02:43 dom0 kernel: ACPI FADT declares the system doesn't support PCIe ASPM, so disable it
May 02 08:02:43 dom0 kernel: acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI EDR HPX-Type3]
May 02 08:02:43 dom0 kernel: acpi PNP0A08:00: FADT indicates ASPM is unsupported, using BIOS configuration
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: Disabling ASPM L0s/L1
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: can't disable ASPM; OS doesn't have ASPM control


Kind regards,
Niklas
