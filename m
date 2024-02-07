Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DE584C5E6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 09:00:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D1211314B;
	Wed,  7 Feb 2024 08:00:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=pm.me header.i=@pm.me header.b="I6j90cST";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0123910F9F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 08:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
 s=protonmail3; t=1707292794; x=1707551994;
 bh=QwKd5rKdvXCahbQF/DyNZj/HaUdUhRF4XdUgdDA12NI=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=I6j90cSTvD/L2il3hF+UrL4BTsFZVl0biZN4cuIRUBWJh+bMwh1o5tqC3pYu/l2Uf
 LXEkPkf8UtgtHXinERKCZwNuOKwP0LdHccAj21Q7eEAIgQ2ADvhwhtVSg1Rwuw6agf
 +ydZA8w4M/2HKc0LQ0leJYEzzoximBjSTqjKjAay2XWnmoCAqjCnv8tXnMn3hVY4XO
 FlMBWEvyeGwluwu+VBRRFsVZDZY2I33DPK25BoTVWpHMN8cm47f49jTrkeCPr8XMwd
 VgYn44rS02FhsRjQWJ2/Gfxi2q8gEszsN2mXKwAstlE+bz5OmMG7DhVNO0GbepOwq0
 slglUobMARXig==
Date: Wed, 07 Feb 2024 07:59:44 +0000
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: natur.produkt@pm.me
Subject: GuC issue
Message-ID: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
Feedback-ID: 51504226:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

Hi,

I'm currently implementing GuC/HuC firmware support in one Safety Critical =
OS.
I'm following i915 code and I implemented all paths (I don't want GuC submi=
ssion or SLPC features). I need GuC to authenticate HuC firmware blob.

I mirrored GuC implementation in my code.

After GuC DMA transfer succeeds, I'm reading GUC_STATUS register.
HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom status and INTEL_GUC=
_LOAD_STATUS_LAPIC_DONE as GuC load status.

Unfortunately, after one second of waiting, the status didn't get changed t=
o INTEL_GUC_LOAD_STATUS_READY at all.

What is a potential issue here?
Could you please help me?

In addition to this, could you please point out some documentation about Gu=
C's ADS struct?

Thanks,
Maksym
