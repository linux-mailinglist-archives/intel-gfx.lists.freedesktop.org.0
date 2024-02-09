Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9263F84F0EA
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 08:42:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FFF310E7C9;
	Fri,  9 Feb 2024 07:42:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=pm.me header.i=@pm.me header.b="nBLTGeEQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 171739 seconds by postgrey-1.36 at gabe;
 Fri, 09 Feb 2024 07:42:17 UTC
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch
 [185.70.40.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A2410E718
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 07:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
 s=protonmail3; t=1707464535; x=1707723735;
 bh=AI7I9uIvqFweE8/UvKHpUBOR5WZWtrHzZjFa30oCj2U=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=nBLTGeEQkshTdeKSZmadI0+Ik54MZ262KmMmcDAuimhnDdrMgq0qXQvukHsXVrtTE
 UFGz+dJpOHS9EYbavrNL4LQUoJcKS3EMWRJf55R5JTSgiyZ74P/lO7DDfXBLVNPppD
 MBYZ9tzw9lEXPOaJemTYIjNfOOcJMU5GgrsqqhIVDxWUy2A3PJevMr6rCEkhxZL9xp
 G+t2ThQk+Uqhy6STxn2VWnGv55jE9Md1r1CgjDZYZQOfZMiZ8XueVXdnF41ugCRNer
 TjK+OGQ8LTidwk54jrHxpS07vnQ+ZNJ0+Yft49q5v5z7FIC11V6sCwumDpddT4B/xS
 6gkzh7Q/CYWGw==
Date: Fri, 09 Feb 2024 07:42:10 +0000
To: John Harrison <john.c.harrison@intel.com>
From: natur.produkt@pm.me
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: GuC issue
Message-ID: <dRxB0peDhbOHBqsX5rpWZN-qZtPdwWItk-L1ZAZm8RH8LQYpNBGa9qghm3dOCuM4fqbzOsNAFEafiu2zSrQNbnH6oCrlBb1fiAm5AhJQr64=@pm.me>
In-Reply-To: <af232621-ed88-466e-9162-7698b5583503@intel.com>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
 <af232621-ed88-466e-9162-7698b5583503@intel.com>
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

Hello,

Please see my comments below.

pi=C4=85tek, 9 lutego 2024 2:45 AM, John Harrison <john.c.harrison@intel.co=
m> napisa=C5=82(a):

>=20
>=20
> Hello,
>=20
> What platform is this on? And which GuC firmware version are you using?

It's TGL. I'm using tgl_guc_70.1.1.bin firmware blob.

>=20
> One thing you made need to do is force maximum GT frequency during GuC
> load. That is something the i915 driver does. If the system decides the
> GPU is idle and drops the frequency to minimum then it can take multiple
> seconds for the GuC initialisation to complete.

Thanks for the hint. I'm not doing that at all in my code. How am I suppose=
d to do this? Is there a specific register for that?

>=20
> Did the status change at all during that second of waiting? Or was it
> still reading LAPIC_DONE?

It's always LAPIC_DONE.

>=20
> For ADS documentation, I'm afraid that the best we currently have
> publicly available is the i915 driver code. If you are not intending to
> use GuC submission then most of the ADS can be ignored.

Ok, that great. Which part of ADS is must-have then?

>=20
> If you can share the GuC log, that might provide some clues as to what
> is happening. For just logging the boot process, you shouldn't need to
> allocate a large log. The default size of i915 for release builds is
> 64KB. That should be plenty.

I'll collect GuC log as soon as possible. Is it something that can be under=
stood without a knowledge of GuC internals? Or is it simply hex dumps?

>=20
> John.
>=20
>=20
> On 2/6/2024 23:59, natur.produkt@pm.me wrote:
>=20
> > Hi,
> >=20
> > I'm currently implementing GuC/HuC firmware support in one Safety Criti=
cal OS.
> > I'm following i915 code and I implemented all paths (I don't want GuC s=
ubmission or SLPC features). I need GuC to authenticate HuC firmware blob.
> >=20
> > I mirrored GuC implementation in my code.
> >=20
> > After GuC DMA transfer succeeds, I'm reading GUC_STATUS register.
> > HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom status and INTEL=
_GUC_LOAD_STATUS_LAPIC_DONE as GuC load status.
> >=20
> > Unfortunately, after one second of waiting, the status didn't get chang=
ed to INTEL_GUC_LOAD_STATUS_READY at all.
> >=20
> > What is a potential issue here?
> > Could you please help me?
> >=20
> > In addition to this, could you please point out some documentation abou=
t GuC's ADS struct?
> >=20
> > Thanks,
> > Maksym
