Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0158A8703C1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 15:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E2E1121D9;
	Mon,  4 Mar 2024 14:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com
 [51.77.79.158])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4988710E78D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 16:31:08 +0000 (UTC)
Date: Mon, 26 Feb 2024 16:30:52 +0000
To: "Harrison, John C" <john.c.harrison@intel.com>
From: maksym@wezdecki.pl
Cc: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: GuC issue
Message-ID: <FJKNlVdWT4pcxEIPqrlrotvNF4LQ9IruZEgoFyoLOiuC06TeBWlw75UpxC5YGBbB3q4K2HGh34RNzJqipPPJV8DMDDQ3lY5yAYmTJezbDtg=@wezdecki.pl>
In-Reply-To: <CH3PR11MB84410E859B484FD84ACE65E4BD562@CH3PR11MB8441.namprd11.prod.outlook.com>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
 <af232621-ed88-466e-9162-7698b5583503@intel.com>
 <dRxB0peDhbOHBqsX5rpWZN-qZtPdwWItk-L1ZAZm8RH8LQYpNBGa9qghm3dOCuM4fqbzOsNAFEafiu2zSrQNbnH6oCrlBb1fiAm5AhJQr64=@pm.me>
 <G6cnnxkrPv0dkDZ2VYL51hau5Mm-RdGVA74E0lhunn-U3XoV3d8OwF92LK-lCbQ24yM8ksZuOh9EAEpvAgz7Td0xtfFwT-Zy7M-5KJ73qqY=@wezdecki.pl>
 <jDjRWkHtb3G4vJFfktNDbWc_n_3WjYYvIOYbXmZHxbcITIeP3k6FnjerNyECm8NNpgs0H1DRJTaeiE5c9qYib5djHdq34VG4wOPZbNPEj-s=@wezdecki.pl>
 <bb9bd07a-5197-46e1-8541-aeb540b421a3@intel.com>
 <5_wII6n600vppHk7s--lu7jrLDbxtBBglPTXx8BxdhPfYS5YaArq9XZ3OhcuRnYKOfBIxSTUGk7CAz-d1KZ-_-7J9g3qVNkzxDvewTrIX-I=@wezdecki.pl>
 <CH3PR11MB84410E859B484FD84ACE65E4BD562@CH3PR11MB8441.namprd11.prod.outlook.com>
Feedback-ID: 47772235:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 04 Mar 2024 14:11:34 +0000
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

Thank you for your help.

Is there a possibility to load GuC, then "unload" it and load it again with=
out cold reset?
By loading I mean HuC firmware upload, GuC ADS/log init, GuC firmware uploa=
d, CT init, HuC authentication by GuC.

I'm asking because I need to perform severe testing on the target for safet=
y purposes without GPU cold reset.
What should be done in order to "unload" the GuC? Is it __uc_sanitize() and=
 __uc_fini()?

Maksym

czwartek, 22 lutego 2024 20:31, Harrison, John C <john.c.harrison@intel.com=
> napisa=C5=82(a):

>=20
>=20
> Hello,
>=20
> That worked better. The complaint is that the engine mapping table is inv=
alid. See the i915 code in guc_mapping_table_init () in gt/uc/intel_guc_ads=
.c for an example of how to initialise the table.
>=20
> John.
>=20
>=20
> -----Original Message-----
> From: maksym@wezdecki.pl maksym@wezdecki.pl
>=20
> Sent: Wednesday, February 21, 2024 07:15
> To: Harrison, John C john.c.harrison@intel.com
>=20
> Cc: maksym@wezdecki.pl; Wajdeczko, Michal Michal.Wajdeczko@intel.com; int=
el-gfx@lists.freedesktop.org
>=20
> Subject: Re: GuC issue
>=20
> Ah, I dumped them with Windows new line characters.
>=20
> Here is a new log binary dump.
>=20
> I moved to the newest TGL GuC firmware from linux-firmware repo.
>=20
>=20
> =C5=9Broda, 21 lutego 2024 12:16 AM, John Harrison john.c.harrison@intel.=
com napisa=C5=82(a):
>=20
> > Hello,
> >=20
> > Something is very corrupted with that GuC log. The log consists of a
> > header page and then a stream of log entry structures. The structure
> > is supposed to be 20 bytes long and starts with a four byte time
> > stamp. But I am seeing what is conceivably a 32bit timestamp appearing
> > at 21 byte increments through the log. Even more curiously, the time
> > stamp seems to have an 0x0D, 0x0A after it. Are you doing any printf
> > type operation in order to write the log out from memory to disk?
> >=20
> > INTEL_GUC_LOAD_STATUS_INIT_DATA_INVALID means that the GuC did not
> > like the initialisation data passed in. Most likely, something in the
> > ADS structure is not valid. If you try with the latest GuC version,
> > that might give you more information as to what is the incorrect. More
> > status codes have been added since 70.1.1.
> >=20
> > John.
> >=20
> > On 2/20/2024 05:03, maksym@wezdecki.pl wrote:
> >=20
> > > Hi,
> > >=20
> > > Please see GuC log attached to this email.
> > >=20
> > > Log size is "PAGE_SIZE+Debug Log(64KB) + Crash Log (8KB) + Capture Lo=
g (1M)"
> > >=20
> > > Can anybody from Intel decode this log buffer? Thanks.
> > >=20
> > > What am I doing wrong?
> > >=20
> > > Maksym
> > >=20
> > > poniedzia=C5=82ek, 19 lutego 2024 09:44, maksym@wezdecki.pl maksym@we=
zdecki.pl napisa=C5=82(a):
> > >=20
> > > > Hi,
> > > >=20
> > > > I fixed one issue in my driver. Log address was set incorrectly.
> > > >=20
> > > > Right now, after GuC uploading, GUC_STATUS changed.
> > > > Right now, intel_guc_load_status is INTEL_GUC_LOAD_STATUS_INIT_DATA=
_INVALID =3D 0x71.
> > > >=20
> > > > What does it mean?
> > > > Could you please help me with this?
> > > >=20
> > > > Thanks,
> > > > Maksym
> > > >=20
> > > > pi=C4=85tek, 9 lutego 2024 08:42, natur.produkt@pm.me natur.produkt=
@pm.me napisa=C5=82(a):
> > > >=20
> > > > > Hello,
> > > > >=20
> > > > > Please see my comments below.
> > > > >=20
> > > > > pi=C4=85tek, 9 lutego 2024 2:45 AM, John Harrison john.c.harrison=
@intel.com napisa=C5=82(a):
> > > > >=20
> > > > > > Hello,
> > > > > >=20
> > > > > > What platform is this on? And which GuC firmware version are yo=
u using?
> > > > > > It's TGL. I'm using tgl_guc_70.1.1.bin firmware blob.
> > > > >=20
> > > > > > One thing you made need to do is force maximum GT frequency
> > > > > > during GuC load. That is something the i915 driver does. If
> > > > > > the system decides the GPU is idle and drops the frequency to
> > > > > > minimum then it can take multiple seconds for the GuC initialis=
ation to complete.
> > > > > > Thanks for the hint. I'm not doing that at all in my code. How =
am I supposed to do this? Is there a specific register for that?
> > > > >=20
> > > > > > Did the status change at all during that second of waiting? Or
> > > > > > was it still reading LAPIC_DONE?
> > > > > > It's always LAPIC_DONE.
> > > > >=20
> > > > > > For ADS documentation, I'm afraid that the best we currently
> > > > > > have publicly available is the i915 driver code. If you are
> > > > > > not intending to use GuC submission then most of the ADS can be=
 ignored.
> > > > > > Ok, that great. Which part of ADS is must-have then?
> > > > >=20
> > > > > > If you can share the GuC log, that might provide some clues as
> > > > > > to what is happening. For just logging the boot process, you
> > > > > > shouldn't need to allocate a large log. The default size of
> > > > > > i915 for release builds is 64KB. That should be plenty.
> > > > > > I'll collect GuC log as soon as possible. Is it something that =
can be understood without a knowledge of GuC internals? Or is it simply hex=
 dumps?
> > > > >=20
> > > > > > John.
> > > > > >=20
> > > > > > On 2/6/2024 23:59, natur.produkt@pm.me wrote:
> > > > > >=20
> > > > > > > Hi,
> > > > > > >=20
> > > > > > > I'm currently implementing GuC/HuC firmware support in one Sa=
fety Critical OS.
> > > > > > > I'm following i915 code and I implemented all paths (I don't =
want GuC submission or SLPC features). I need GuC to authenticate HuC firmw=
are blob.
> > > > > > >=20
> > > > > > > I mirrored GuC implementation in my code.
> > > > > > >=20
> > > > > > > After GuC DMA transfer succeeds, I'm reading GUC_STATUS regis=
ter.
> > > > > > > HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom status=
 and INTEL_GUC_LOAD_STATUS_LAPIC_DONE as GuC load status.
> > > > > > >=20
> > > > > > > Unfortunately, after one second of waiting, the status didn't=
 get changed to INTEL_GUC_LOAD_STATUS_READY at all.
> > > > > > >=20
> > > > > > > What is a potential issue here?
> > > > > > > Could you please help me?
> > > > > > >=20
> > > > > > > In addition to this, could you please point out some document=
ation about GuC's ADS struct?
> > > > > > >=20
> > > > > > > Thanks,
> > > > > > > Maksym
