Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94434AC7E1B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 May 2025 14:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B02A10E14F;
	Thu, 29 May 2025 12:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I8bZi9gN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D171410E63E;
 Wed, 28 May 2025 15:41:22 +0000 (UTC)
Received: by mail-ua1-f54.google.com with SMTP id
 a1e0cc1a2514c-87e075fe92fso779638241.3; 
 Wed, 28 May 2025 08:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1748446882; x=1749051682; darn=lists.freedesktop.org;
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=aHeF9dRNQaPdZw883K5F95ZIz4dvl+LHYp8TlSC3SEc=;
 b=I8bZi9gN9JYU+RvrW0dxqVb18ZKhR26dSyX/yF1UkryyBOCN9bYOApiC8dEbqIMmHz
 JVPEsd5QgKXBZ8E//mNJ34Z3S6U6bjpy6OkVVCzuJW7wYoV4wyyKeL+GGwt8NUjS0aMr
 sivS4WnqzamxkZitXMdeMF0r6Y7JibQ7ZqH7wVnzK+cf6uGe6ot5iqLGFMdHG39Pkc5/
 3IshqfYLc/PHs+EWFhVMfK8SJ/ElS0bc6rIaJlwvuW0348FM90eDIIwqckr5mq4KiJAh
 VoXmz45VD96LlRx3Ya6mckqWf26xZadAnwcHD3rpeeiZhpmHfYUV4C1b47VW/jfDQxJG
 5y5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748446882; x=1749051682;
 h=in-reply-to:references:to:from:subject:cc:message-id:date
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aHeF9dRNQaPdZw883K5F95ZIz4dvl+LHYp8TlSC3SEc=;
 b=mWUaE894J1ht6Jg9cs+WKHNCRwdCbtswnuHoNv6BwIM2QUrD3m3Rqzk8MEHN7srzzr
 mrGkVqTqWLTwNbpUKK5skYuF/GUgL2BwHRuh9gvs2RVqKseZyWYOPH1Vj1Y91r8dYNkB
 7E/c5+bXwv7dxxDSZ1NwLIXOC5HwOqhWhFltfxTltEheucVO+qWtYMJ1uosAF8sw95jH
 fUqc/dkn+OZwR/s8FTfSCan+ZuKWOuGut3Z8R+hQ+/wlzPLctzeKQbOg2M+Stp1t86Em
 mb9G35NCrAPqd7x0N1mf3mZmqE9xpEFJCJb0lhrHNnEOBKhDX/rFJRnX+YEhWHFKGRsF
 3MVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUsFRbBiHp6hPe0ewPK2nHNkb05R5FqIm+XFkEh0IP3shDJdYhTgAtKdnyVug5n5ukDMKMSDEd9/xE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwFLXPRh3Zu86htRGhQk5fVgXPabAGtnoc679c8uqgknaNnqs+B
 +x/p3LcFCqyz8jhDTjIsf48yVfF6qBFLtl377UnpfQMOZsxd0oarDrpyR0VDBg==
X-Gm-Gg: ASbGnct3u+i/fU9HWGCjnQMi9P866aVPsgrW4WKed1x1m4Ua/ihF1kDwnVwajokt/on
 pvbG04igzU9HjNLb/3oP6+UEM3FeP5+iq80YEs3FgeN9iZv2WOQt7+cHc7TUfw0DLwftJtcGwTA
 LPZBE0oR4ppmAbTzD8bbF+qceys7MGwo/I3/s07AsjYinPubDg5hHmUX821011CNPVA2Jsc0Eoo
 dPxki0Zx+fOVkvG0m6uA2kyZTMYCzL+razOpMPbTLrlATvGKsL1K1V/fX42Jq68FGcqNIYuBXQa
 gpmPD/9qhdV5rNaEKICedjb+lN1dcXK0p3cWacfpF4A=
X-Google-Smtp-Source: AGHT+IFwOFh6bT+TpEVHmhtDwrPDVL8un+Se3cuaNqSs3DUl8Y0SdzFZ18x/C3cRHj5+NnvSxUK+Wg==
X-Received: by 2002:a05:6122:4682:b0:530:6dc2:ba9c with SMTP id
 71dfb90a1353d-5306dc2bcbfmr1617728e0c.2.1748446881418; 
 Wed, 28 May 2025 08:41:21 -0700 (PDT)
Received: from localhost ([181.85.227.70]) by smtp.gmail.com with ESMTPSA id
 71dfb90a1353d-53066944b39sm1203974e0c.38.2025.05.28.08.40.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 May 2025 08:41:20 -0700 (PDT)
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=a09c3051dc945d6dd8179406732b8dbe60814d6ec71b2152304be90541f1;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 28 May 2025 12:40:52 -0300
Message-Id: <DA7WOJH0HZDH.36EH3U8BQJ0JF@gmail.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Subject: Re: [REGRESSSION] on linux-next (next-20250509)
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Luke Jones" <luke@ljones.dev>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <SJ1PR11MB6129F730EEDCD051DAD8A5DCB967A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <0325a50d-8499-4602-aa8c-67445b626587@app.fastmail.com>
In-Reply-To: <0325a50d-8499-4602-aa8c-67445b626587@app.fastmail.com>
X-Mailman-Approved-At: Thu, 29 May 2025 12:47:08 +0000
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

--a09c3051dc945d6dd8179406732b8dbe60814d6ec71b2152304be90541f1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Luke,

On Wed May 28, 2025 at 10:07 AM -03, Luke Jones wrote:
> On Wed, 28 May 2025, at 12:08 PM, Borah, Chaitanya Kumar wrote:
>> Hello Luke,
>>
>> Hope you are doing well. I am Chaitanya from the linux graphics team in =
Intel.
>>
>> This mail is regarding a regression we are seeing in our CI runs[1] on=
=20
>> linux-next repository.
>
> Can you tell me if the fix here was included?
> https://lkml.org/lkml/2025/5/24/152
>
> I could change to:
> static void asus_s2idle_check_register(void)
> {
>     // Only register for Ally devices
>     if (dmi_check_system(asus_rog_ally_device)) {
>         if (acpi_register_lps0_dev(&asus_ally_s2idle_dev_ops))
>             pr_warn("failed to register LPS0 sleep handler in asus-wmi\n"=
);
>     }
> }
>
> but I don't really understand what is happening here. The inner lps0 func=
tions won't run unless use_ally_mcu_hack is set.

The RIP is caused by a "list_add double add" warning.

After reading the log, I believe this is happening because
asus_wmi_register_driver() is called a second time by eeepc_wmi after
asus_nb_wmi, which implies

	asus_wmi_probe()
	  -> acpi_register_lps0_dev(&asus_ally_s2idle_dev_ops)

is called twice and the warning is triggered.

Line [1] makes me think this could be a race condition, as
asus_wmi_register_driver() may be called concurrently.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-=
x86.git/tree/drivers/platform/x86/asus-wmi.c?h=3Dfor-next#n5101

>
> I will do my best to fix but I need to understand what happened a bit bet=
ter.
>
> regards,
> Luke.
>
>> Since the version next-20250509 [2], we are seeing the following regress=
ion
>>
>> ````````````````````````````````````````````````````````````````````````=
`````````
>> <4>[    5.400826] ------------[ cut here ]------------
>> <4>[    5.400832] list_add double add: new=3Dffffffffa07c0ca0,=20
>> prev=3Dffffffff837e9a60, next=3Dffffffffa07c0ca0.
>> <4>[    5.400845] WARNING: CPU: 0 PID: 379 at lib/list_debug.c:35=20
>> __list_add_valid_or_report+0xdc/0xf0
>> <4>[    5.400850] Modules linked in: cmdlinepart(+) eeepc_wmi(+)=20
>> asus_nb_wmi(+) asus_wmi spi_nor(+) sparse_keymap mei_pxp mtd=20
>> platform_profile kvm_intel(+) mei_hdcp wmi_bmof kvm irqbypass=20
>> polyval_clmulni usbhid ghash_clmulni_intel snd_hda_intel hid sha1_ssse3=
=20
>> r8152(+) binfmt_misc aesni_intel snd_intel_dspcfg mii r8169=20
>> snd_hda_codec rapl video snd_hda_core intel_cstate snd_hwdep realtek=20
>> snd_pcm snd_timer mei_me snd i2c_i801 i2c_mux spi_intel_pci idma64=20
>> soundcore spi_intel i2c_smbus mei intel_pmc_core nls_iso8859_1=20
>> pmt_telemetry pmt_class intel_pmc_ssram_telemetry pinctrl_alderlake=20
>> intel_vsec acpi_tad wmi acpi_pad dm_multipath msr nvme_fabrics fuse=20
>> efi_pstore nfnetlink ip_tables x_tables autofs4
>> <4>[    5.400904] CPU: 0 UID: 0 PID: 379 Comm: (udev-worker) Tainted: G=
=20
>> S                 =20
>> 6.15.0-rc7-next-20250526-next-20250526-g3be1a7a31fbd+ #1=20
>> PREEMPT(voluntary)=20
>> <4>[    5.400907] Tainted: [S]=3DCPU_OUT_OF_SPEC
>> <4>[    5.400908] Hardware name: ASUS System Product Name/PRIME Z790-P=
=20
>> WIFI, BIOS 0812 02/24/2023
>> <4>[    5.400909] RIP: 0010:__list_add_valid_or_report+0xdc/0xf0
>> <4>[    5.400912] Code: 16 48 89 f1 4c 89 e6 e8 a2 c5 5f ff 0f 0b 31 c0=
=20
>> e9 72 ff ff ff 48 89 f2 4c 89 e1 48 89 fe 48 c7 c7 68 ba 0f 83 e8 84 c5=
=20
>> 5f ff <0f> 0b 31 c0 e9 54 ff ff ff 66 66 2e 0f 1f 84 00 00 00 00 00 90=
=20
>> 90
>> <4>[    5.400914] RSP: 0018:ffffc90002763588 EFLAGS: 00010246
>> <4>[    5.400916] RAX: 0000000000000000 RBX: ffffffffa07c0ca0 RCX:=20
>> 0000000000000000
>> <4>[    5.400918] RDX: 0000000000000000 RSI: 0000000000000000 RDI:=20
>> 0000000000000000
>> <4>[    5.400919] RBP: ffffc90002763598 R08: 0000000000000000 R09:=20
>> 0000000000000000
>> <4>[    5.400920] R10: 0000000000000000 R11: 0000000000000000 R12:=20
>> ffffffffa07c0ca0
>> <4>[    5.400921] R13: ffffffffa07c0ca0 R14: 0000000000000000 R15:=20
>> ffff8881212d6da0
>> <4>[    5.400923] FS:  0000778637b418c0(0000) GS:ffff8888dad0c000(0000)=
=20
>> knlGS:0000000000000000
>> <4>[    5.400926] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> <4>[    5.400928] CR2: 00007786373b80b2 CR3: 0000000116faa000 CR4:=20
>> 0000000000f50ef0
>> <4>[    5.400931] PKRU: 55555554
>> <4>[    5.400933] Call Trace:
>> <4>[    5.400935]  <TASK>
>> <4>[    5.400937]  ? lock_system_sleep+0x2b/0x40
>> <4>[    5.400942]  acpi_register_lps0_dev+0x58/0xb0
>> <4>[    5.400949]  asus_wmi_probe+0x7f/0x1930 [asus_wmi]
>> <4>[    5.400956]  ? kernfs_create_link+0x69/0xe0
>> ````````````````````````````````````````````````````````````````````````=
`````````
>> Detailed log can be found in [3].
>>
>> After bisecting the tree, the following patch [4] seems to be the first =
"bad"
>> commit
>>
>> ````````````````````````````````````````````````````````````````````````=
`````````````````````````````````
>> commit feea7bd6b02d43a794e3f065650d89cf8d8e8e59
>> Author: Luke D. Jones mailto:luke@ljones.dev
>> Date:=C2=A0=C2=A0 Sun Mar 23 15:34:21 2025 +1300
>>
>> =C2=A0=C2=A0=C2=A0 platform/x86: asus-wmi: Refactor Ally suspend/resume
>> ````````````````````````````````````````````````````````````````````````=
`````````````````````````````````
>>
>> We could not revert the patch because of merge conflict but resetting=20
>> to the parent of the commit seems to fix the issue
>>
>> Could you please check why the patch causes this regression and provide=
=20
>> a fix if necessary?
>>
>> Thank you.
>>
>> Regards
>>
>> Chaitanya
>>
>> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
>> [2]=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/comm=
it/?h=3Dnext-20250509=20
>> [3]=20
>> https://intel-gfx-ci.01.org/tree/linux-next/next-20250526/bat-rpls-4/boo=
t0.txt=20
>> [4]=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/comm=
it/?h=3Dnext-20250509&id=3Dfeea7bd6b02d43a794e3f065650d89cf8d8e8e59


--=20
 ~ Kurt


--a09c3051dc945d6dd8179406732b8dbe60814d6ec71b2152304be90541f1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSHYKL24lpu7U7AVd8WYEM49J/UZgUCaDcuiAAKCRAWYEM49J/U
ZqoBAP9SwYHM8Gc+tH3n5J1bu9OzHppBGaIBEj1lwuA6CWUzQwEAq6cQYiMMfNcC
KEhB3WjD+KP2d2cbRYLPFoCvYeyjnwc=
=zE1e
-----END PGP SIGNATURE-----

--a09c3051dc945d6dd8179406732b8dbe60814d6ec71b2152304be90541f1--
