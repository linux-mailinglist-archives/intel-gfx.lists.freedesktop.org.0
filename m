Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80EB8703CA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 15:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536231121F5;
	Mon,  4 Mar 2024 14:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 87272 seconds by postgrey-1.36 at gabe;
 Thu, 29 Feb 2024 12:58:25 UTC
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B574810E05E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 12:58:25 +0000 (UTC)
Date: Thu, 29 Feb 2024 12:57:59 +0000
To: John Harrison <john.c.harrison@intel.com>
From: maksym@wezdecki.pl
Cc: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: GuC issue
Message-ID: <U4cfwndB73jIwKvM3Wz78V_1_yPiYAHHr5dTyvb2RWVgUCNMD6rPdeGgwS1MM0GgFHsmQ69DzrE9D_2sVlgiw_Eb7lP0FV31VZbv2gQZMwA=@wezdecki.pl>
In-Reply-To: <1JSgtC758SlKR47nh7qSQrU7tAQO3cFutxOkLUgli0j20hYBwCwdigTM3J7UuEq073LOxvfpcFIjFkICDP332gGRK15rcojf2z66k4T9NV8=@wezdecki.pl>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
 <G6cnnxkrPv0dkDZ2VYL51hau5Mm-RdGVA74E0lhunn-U3XoV3d8OwF92LK-lCbQ24yM8ksZuOh9EAEpvAgz7Td0xtfFwT-Zy7M-5KJ73qqY=@wezdecki.pl>
 <jDjRWkHtb3G4vJFfktNDbWc_n_3WjYYvIOYbXmZHxbcITIeP3k6FnjerNyECm8NNpgs0H1DRJTaeiE5c9qYib5djHdq34VG4wOPZbNPEj-s=@wezdecki.pl>
 <bb9bd07a-5197-46e1-8541-aeb540b421a3@intel.com>
 <5_wII6n600vppHk7s--lu7jrLDbxtBBglPTXx8BxdhPfYS5YaArq9XZ3OhcuRnYKOfBIxSTUGk7CAz-d1KZ-_-7J9g3qVNkzxDvewTrIX-I=@wezdecki.pl>
 <CH3PR11MB84410E859B484FD84ACE65E4BD562@CH3PR11MB8441.namprd11.prod.outlook.com>
 <FJKNlVdWT4pcxEIPqrlrotvNF4LQ9IruZEgoFyoLOiuC06TeBWlw75UpxC5YGBbB3q4K2HGh34RNzJqipPPJV8DMDDQ3lY5yAYmTJezbDtg=@wezdecki.pl>
 <88784d1a-3b8b-44d2-8310-cf51a5e8569e@intel.com>
 <1JSgtC758SlKR47nh7qSQrU7tAQO3cFutxOkLUgli0j20hYBwCwdigTM3J7UuEq073LOxvfpcFIjFkICDP332gGRK15rcojf2z66k4T9NV8=@wezdecki.pl>
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

Micha=C5=82 has helped me a lot - no action is required!

Thank you for your time and help, I really appreciate it!

Maksym




=C5=9Broda, 28 lutego 2024 1:43 PM, maksym@wezdecki.pl <maksym@wezdecki.pl>=
 napisa=C5=82(a):

>=20
>=20
> Hello,
>=20
> Thanks again for reply.
>=20
> I have implemented __uc_sanitize() function in my code for resetting a Gu=
C just before uploading a HuC firmware blob.
>=20
> My current setup is as follows: I have TGL and Safety Critiical OS. I loa=
d GuC and authenticate HuC successfully. Then I kill my Safety Critical KMD=
 driver. I load it once again, which triggers GuC reset/HuC loading/GuC loa=
ding/Enable communication etc.
>=20
> Unfortunately, when I try to enable communication for the second time (wi=
thout cold reset), then guc_action_control_ctb(), especially intel_guc_send=
_mmio() returns GUC_HXG_TYPE_RESPONSE_FAILURE with error 774 or 0x306.
>=20
> I'm not sure what it means.
>=20
> The log buffer just after guc_action_control_ctb() is attached to this em=
ail.
>=20
> Could anybody look into it?
>=20
> I really appreciate you help,
> Maksym
>=20
>=20
>=20
>=20
> wtorek, 27 lutego 2024 9:03 PM, John Harrison john.c.harrison@intel.com n=
apisa=C5=82(a):
>=20
> > On 2/26/2024 08:30, maksym@wezdecki.pl wrote:
> >=20
> > > Hello,
> > >=20
> > > Thank you for your help.
> > >=20
> > > Is there a possibility to load GuC, then "unload" it and load it agai=
n without cold reset?
> >=20
> > You need to reset the GuC at least - bit 3 of GDRST. The GuC cannot be
> > reloaded 'live'. It must be put into reset first. The last line of
> > __uc_sanitize() is a call to reset the GuC, so yes that would be an
> > option. Note that fini is more about cleaning up to unload the driver.
> > Whereas the sanitise functions are about resets with the potential to
> > restart again.
> >=20
> > John.
> >=20
> > > By loading I mean HuC firmware upload, GuC ADS/log init, GuC firmware=
 upload, CT init, HuC authentication by GuC.
> > >=20
> > > I'm asking because I need to perform severe testing on the target for=
 safety purposes without GPU cold reset.
> > > What should be done in order to "unload" the GuC? Is it __uc_sanitize=
() and __uc_fini()?
> > >=20
> > > Maksym
> > >=20
> > > czwartek, 22 lutego 2024 20:31, Harrison, John C john.c.harrison@inte=
l.com napisa=C5=82(a):
> > >=20
> > > > Hello,
> > > >=20
> > > > That worked better. The complaint is that the engine mapping table =
is invalid. See the i915 code in guc_mapping_table_init () in gt/uc/intel_g=
uc_ads.c for an example of how to initialise the table.
> > > >=20
> > > > John.
> > > >=20
> > > > -----Original Message-----
> > > > From: maksym@wezdecki.pl maksym@wezdecki.pl
> > > >=20
> > > > Sent: Wednesday, February 21, 2024 07:15
> > > > To: Harrison, John C john.c.harrison@intel.com
> > > >=20
> > > > Cc: maksym@wezdecki.pl; Wajdeczko, Michal Michal.Wajdeczko@intel.co=
m; intel-gfx@lists.freedesktop.org
> > > >=20
> > > > Subject: Re: GuC issue
> > > >=20
> > > > Ah, I dumped them with Windows new line characters.
> > > >=20
> > > > Here is a new log binary dump.
> > > >=20
> > > > I moved to the newest TGL GuC firmware from linux-firmware repo.
> > > >=20
> > > > =C5=9Broda, 21 lutego 2024 12:16 AM, John Harrison john.c.harrison@=
intel.com napisa=C5=82(a):
> > > >=20
> > > > > Hello,
> > > > >=20
> > > > > Something is very corrupted with that GuC log. The log consists o=
f a
> > > > > header page and then a stream of log entry structures. The struct=
ure
> > > > > is supposed to be 20 bytes long and starts with a four byte time
> > > > > stamp. But I am seeing what is conceivably a 32bit timestamp appe=
aring
> > > > > at 21 byte increments through the log. Even more curiously, the t=
ime
> > > > > stamp seems to have an 0x0D, 0x0A after it. Are you doing any pri=
ntf
> > > > > type operation in order to write the log out from memory to disk?
> > > > >=20
> > > > > INTEL_GUC_LOAD_STATUS_INIT_DATA_INVALID means that the GuC did no=
t
> > > > > like the initialisation data passed in. Most likely, something in=
 the
> > > > > ADS structure is not valid. If you try with the latest GuC versio=
n,
> > > > > that might give you more information as to what is the incorrect.=
 More
> > > > > status codes have been added since 70.1.1.
> > > > >=20
> > > > > John.
> > > > >=20
> > > > > On 2/20/2024 05:03, maksym@wezdecki.pl wrote:
> > > > >=20
> > > > > > Hi,
> > > > > >=20
> > > > > > Please see GuC log attached to this email.
> > > > > >=20
> > > > > > Log size is "PAGE_SIZE+Debug Log(64KB) + Crash Log (8KB) + Capt=
ure Log (1M)"
> > > > > >=20
> > > > > > Can anybody from Intel decode this log buffer? Thanks.
> > > > > >=20
> > > > > > What am I doing wrong?
> > > > > >=20
> > > > > > Maksym
> > > > > >=20
> > > > > > poniedzia=C5=82ek, 19 lutego 2024 09:44, maksym@wezdecki.pl mak=
sym@wezdecki.pl napisa=C5=82(a):
> > > > > >=20
> > > > > > > Hi,
> > > > > > >=20
> > > > > > > I fixed one issue in my driver. Log address was set incorrect=
ly.
> > > > > > >=20
> > > > > > > Right now, after GuC uploading, GUC_STATUS changed.
> > > > > > > Right now, intel_guc_load_status is INTEL_GUC_LOAD_STATUS_INI=
T_DATA_INVALID =3D 0x71.
> > > > > > >=20
> > > > > > > What does it mean?
> > > > > > > Could you please help me with this?
> > > > > > >=20
> > > > > > > Thanks,
> > > > > > > Maksym
> > > > > > >=20
> > > > > > > pi=C4=85tek, 9 lutego 2024 08:42, natur.produkt@pm.me natur.p=
rodukt@pm.me napisa=C5=82(a):
> > > > > > >=20
> > > > > > > > Hello,
> > > > > > > >=20
> > > > > > > > Please see my comments below.
> > > > > > > >=20
> > > > > > > > pi=C4=85tek, 9 lutego 2024 2:45 AM, John Harrison john.c.ha=
rrison@intel.com napisa=C5=82(a):
> > > > > > > >=20
> > > > > > > > > Hello,
> > > > > > > > >=20
> > > > > > > > > What platform is this on? And which GuC firmware version =
are you using?
> > > > > > > > > It's TGL. I'm using tgl_guc_70.1.1.bin firmware blob.
> > > > > > > > > One thing you made need to do is force maximum GT frequen=
cy
> > > > > > > > > during GuC load. That is something the i915 driver does. =
If
> > > > > > > > > the system decides the GPU is idle and drops the frequenc=
y to
> > > > > > > > > minimum then it can take multiple seconds for the GuC ini=
tialisation to complete.
> > > > > > > > > Thanks for the hint. I'm not doing that at all in my code=
. How am I supposed to do this? Is there a specific register for that?
> > > > > > > > > Did the status change at all during that second of waitin=
g? Or
> > > > > > > > > was it still reading LAPIC_DONE?
> > > > > > > > > It's always LAPIC_DONE.
> > > > > > > > > For ADS documentation, I'm afraid that the best we curren=
tly
> > > > > > > > > have publicly available is the i915 driver code. If you a=
re
> > > > > > > > > not intending to use GuC submission then most of the ADS =
can be ignored.
> > > > > > > > > Ok, that great. Which part of ADS is must-have then?
> > > > > > > > > If you can share the GuC log, that might provide some clu=
es as
> > > > > > > > > to what is happening. For just logging the boot process, =
you
> > > > > > > > > shouldn't need to allocate a large log. The default size =
of
> > > > > > > > > i915 for release builds is 64KB. That should be plenty.
> > > > > > > > > I'll collect GuC log as soon as possible. Is it something=
 that can be understood without a knowledge of GuC internals? Or is it simp=
ly hex dumps?
> > > > > > > > > John.
> > > > > > > > >=20
> > > > > > > > > On 2/6/2024 23:59, natur.produkt@pm.me wrote:
> > > > > > > > >=20
> > > > > > > > > > Hi,
> > > > > > > > > >=20
> > > > > > > > > > I'm currently implementing GuC/HuC firmware support in =
one Safety Critical OS.
> > > > > > > > > > I'm following i915 code and I implemented all paths (I =
don't want GuC submission or SLPC features). I need GuC to authenticate HuC=
 firmware blob.
> > > > > > > > > >=20
> > > > > > > > > > I mirrored GuC implementation in my code.
> > > > > > > > > >=20
> > > > > > > > > > After GuC DMA transfer succeeds, I'm reading GUC_STATUS=
 register.
> > > > > > > > > > HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom =
status and INTEL_GUC_LOAD_STATUS_LAPIC_DONE as GuC load status.
> > > > > > > > > >=20
> > > > > > > > > > Unfortunately, after one second of waiting, the status =
didn't get changed to INTEL_GUC_LOAD_STATUS_READY at all.
> > > > > > > > > >=20
> > > > > > > > > > What is a potential issue here?
> > > > > > > > > > Could you please help me?
> > > > > > > > > >=20
> > > > > > > > > > In addition to this, could you please point out some do=
cumentation about GuC's ADS struct?
> > > > > > > > > >=20
> > > > > > > > > > Thanks,
> > > > > > > > > > Maksym
