Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A328513F3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 14:00:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A2A010E57D;
	Mon, 12 Feb 2024 13:00:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=pm.me header.i=@pm.me header.b="FYNkyjhm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 401 seconds by postgrey-1.36 at gabe;
 Mon, 12 Feb 2024 13:00:24 UTC
Received: from mail-4321.protonmail.ch (mail-4321.protonmail.ch [185.70.43.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD4110E57D
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 13:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
 s=protonmail3; t=1707742421; x=1708001621;
 bh=ZyectClKL9NCleC10msgSUE2ZAZgF/0r6DabfDur1aQ=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=FYNkyjhm5GaPbqCxkamxwBVJYMu2WndvWDtN4MXVIIU7JsM4cMatpCRG/ja2KUrqX
 9arm8q9+NUGRy5fePNMSsq+dhfJBSndtah0arxmrhQ8EL9xLFWubYndkCbBAH9x1dZ
 LKucQTNe9OhFzKTLfRkQN16XBZWEPd0ijwycjqZQRKsJLxr45WqV9jJOfJ8F7QFRyv
 Qb1TNOaxUzrNUHEveFCZubSfoeCEQKhv+MjbPbHy/8z2d6ELR1oAYAx/PVWWb4AAVL
 SsLWWg28mxkZ0QRyJPo6wilcTuhwooI2jQQXaoULs8pjZN75h93nycgDE+RlgCtVM+
 5UBrlQ3mQeZ5g==
Date: Mon, 12 Feb 2024 12:53:34 +0000
To: John Harrison <john.c.harrison@intel.com>
From: natur.produkt@pm.me
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: GuC issue
Message-ID: <MwtgFVtDjHlF_pYa82sniJgHjR8U-ZCcn9YKaRTrEev6rk7ZzwYaaJg18PIpAJ-qXQJx3twqElL2-592NruK16IBO6_BUcl0UxpJKg72ld0=@pm.me>
In-Reply-To: <dRxB0peDhbOHBqsX5rpWZN-qZtPdwWItk-L1ZAZm8RH8LQYpNBGa9qghm3dOCuM4fqbzOsNAFEafiu2zSrQNbnH6oCrlBb1fiAm5AhJQr64=@pm.me>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
 <af232621-ed88-466e-9162-7698b5583503@intel.com>
 <dRxB0peDhbOHBqsX5rpWZN-qZtPdwWItk-L1ZAZm8RH8LQYpNBGa9qghm3dOCuM4fqbzOsNAFEafiu2zSrQNbnH6oCrlBb1fiAm5AhJQr64=@pm.me>
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

Hi John,

Could you please confirm that if ADS struct is filled incorrectly, then GuC=
 fails to load and change GUC_STATUS?

I checked LOG buffer and memory is empty. I believe, that I have not set AD=
S correctly and GuC gets some kind of fatal failure.

Thanks,
Maksym

pi=C4=85tek, 9 lutego 2024 8:42 AM, natur.produkt@pm.me <natur.produkt@pm.m=
e> napisa=C5=82(a):

>=20
>=20
> Hello,
>=20
> Please see my comments below.
>=20
> pi=C4=85tek, 9 lutego 2024 2:45 AM, John Harrison john.c.harrison@intel.c=
om napisa=C5=82(a):
>=20
> > Hello,
> >=20
> > What platform is this on? And which GuC firmware version are you using?
>=20
>=20
> It's TGL. I'm using tgl_guc_70.1.1.bin firmware blob.
>=20
> > One thing you made need to do is force maximum GT frequency during GuC
> > load. That is something the i915 driver does. If the system decides the
> > GPU is idle and drops the frequency to minimum then it can take multipl=
e
> > seconds for the GuC initialisation to complete.
>=20
>=20
> Thanks for the hint. I'm not doing that at all in my code. How am I suppo=
sed to do this? Is there a specific register for that?
>=20
> > Did the status change at all during that second of waiting? Or was it
> > still reading LAPIC_DONE?
>=20
>=20
> It's always LAPIC_DONE.
>=20
> > For ADS documentation, I'm afraid that the best we currently have
> > publicly available is the i915 driver code. If you are not intending to
> > use GuC submission then most of the ADS can be ignored.
>=20
>=20
> Ok, that great. Which part of ADS is must-have then?
>=20
> > If you can share the GuC log, that might provide some clues as to what
> > is happening. For just logging the boot process, you shouldn't need to
> > allocate a large log. The default size of i915 for release builds is
> > 64KB. That should be plenty.
>=20
>=20
> I'll collect GuC log as soon as possible. Is it something that can be und=
erstood without a knowledge of GuC internals? Or is it simply hex dumps?
>=20
> > John.
> >=20
> > On 2/6/2024 23:59, natur.produkt@pm.me wrote:
> >=20
> > > Hi,
> > >=20
> > > I'm currently implementing GuC/HuC firmware support in one Safety Cri=
tical OS.
> > > I'm following i915 code and I implemented all paths (I don't want GuC=
 submission or SLPC features). I need GuC to authenticate HuC firmware blob=
.
> > >=20
> > > I mirrored GuC implementation in my code.
> > >=20
> > > After GuC DMA transfer succeeds, I'm reading GUC_STATUS register.
> > > HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom status and INT=
EL_GUC_LOAD_STATUS_LAPIC_DONE as GuC load status.
> > >=20
> > > Unfortunately, after one second of waiting, the status didn't get cha=
nged to INTEL_GUC_LOAD_STATUS_READY at all.
> > >=20
> > > What is a potential issue here?
> > > Could you please help me?
> > >=20
> > > In addition to this, could you please point out some documentation ab=
out GuC's ADS struct?
> > >=20
> > > Thanks,
> > > Maksym
