Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D05486D26
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 23:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818D610E1D1;
	Thu,  6 Jan 2022 22:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DA610E1D1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 22:23:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 677ADB8238B;
 Thu,  6 Jan 2022 22:23:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8807C36AE3;
 Thu,  6 Jan 2022 22:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641507807;
 bh=BUZA4PkjJue9aKMuM71VSU82nzvtFBnl9gq1O7WyGOE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=XVtgSVJwrkzSp+bFvxgSkD8e29Jcy1AT1FqJYepwIKoEaRbxmJZKktWzk+HzVHPnf
 4PnPiggao7S29xY/woy0UEk2/kqAbjvLz/fdH1fKYlfFala0+VWXAuWERlW6OQNE5/
 yVq0qpk3oJHmVkm9mVq5r2iz1y+xO+Ol3e8f4KPy0H/noBqwFXBpMahSPx3ukbMU1J
 l2ZZT4ki9365RMqWXrKQIBneRXBQ2KN1pvJ+1QspGmEPkSeuHWN1WRamP5ArrRTaon
 p7SNVFMCBt7jpMcx785wNpzuzMW/3opIYKcU+Q+p4ShSYFhqG0i3+70+4upIo4pa9S
 QaMUp2tnnYVaA==
Date: Thu, 6 Jan 2022 16:23:25 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20220106222325.GA329826@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220106003654.770316-2-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] x86/quirks: better wrap quirk
 conditions
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 05, 2022 at 04:36:54PM -0800, Lucas De Marchi wrote:
> Remove extra parenthesis and wrap lines so it's easier to read what are
> the conditions being checked. The call to the hook also had an extra
> indentation: remove here to conform to coding style.

It's nice when your subject lines are consistent.  These look like:

  x86/quirks: Fix logic to apply quirk once
  x86/quirks: better wrap quirk conditions

The second isn't capitalized like the first.  Obviously if you split
the first patch, you'll have three subject lines, and one will mention
Alderlake.

Bjorn
