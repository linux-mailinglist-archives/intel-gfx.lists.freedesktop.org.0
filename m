Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D294A484F2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 17:29:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6C610EB28;
	Thu, 27 Feb 2025 16:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="QJvbRy2j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com
 [209.85.128.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8AE10EA50
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2025 07:59:49 +0000 (UTC)
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-6fb2a0e4125so4460647b3.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 23:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1740643188; x=1741247988; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nSc+079+8A2UaaEbdk2s1TkABylJ9XU2/wDzELRwQHM=;
 b=QJvbRy2jwjkkZWF686xLLMmcZU1Vn3dRPa5PUue8Bn9hGH8qAucMG/EqckKbICVOP5
 55aIapaUuvVAX0nX7cLY1+qY+8s3pvFsvJa5uW4m99dZ72olJffOWR7A6mwNX04lM6mh
 JrDwRaE4tewI4eDpDKY91GH60RRTphOFk0I48nybnM3iHaLiJiyYhXl2Z0Ak5+ZM0YPo
 Jcosbnvh87fnZN+RLyi12tXF8+0MS7IqmBlT+BvgQ0HFk0uv/1dvqnOjqoI83jV3rOC7
 sFo9uI9Mq7/TUE4kxq50yPxtShgzRRk/YM2LnJtPLKo47qKFmaiT7ut2RC6AfFgG1Tnd
 9pXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740643188; x=1741247988;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nSc+079+8A2UaaEbdk2s1TkABylJ9XU2/wDzELRwQHM=;
 b=P1nfvhJO9ecxiPPFfcrgSnfS6QRTxF0f4oT5TxdflGOsoq0Lutr7effr8fLGCDJfEo
 qs9vpD7BPaIJdpq+Q3ziq6VwuPOEX//DrsCCTlUBrRADpwePeAA5pbwIqRHAibQhB1ox
 keTX/sfOPPPjMCgnrbOQQvD3S7jVwg3Ujj5TdrtJHt46omXt8NVbJh7Dq10A12FmNvsL
 QmvX5egGFE4215Ffps4MIxK8UUXydnlAuOLR6BptfeQM+mBzTFLjgal7vi8JRRhicTCF
 Cfi5zyYI8evAORlFNpiaIcEUneiWZc/VEI+XVFWrCKiVVZblDsyvtddAykWODnzW2EAU
 DB8w==
X-Gm-Message-State: AOJu0YxSoBCANyAvXyZnQGdhy5+8Ejr2Sfr4pKn7CIuF9DlTn7uZho6X
 +0secKSshmYJI/c/F91jf5CxOXhZGvMN0e8FZtEBhYxOoDtgR11aPtNMNJ9YhGAP2GY4qKT+B58
 9H2La+EoQG5vgC+SDi006APXGSE6S21OKQzAJQA==
X-Gm-Gg: ASbGncvfBVQNayhtmcHJR/1lizEwGvlUUxy7J8mA4TogOgEASV5kvUAebW/BURlwIly
 6gsV79Kg6JwlsWeXp6qKsktIJL85bVy1KIpbW9shAA1K3XK+99vphNmVyCJgt0hzgQwnhcIxxS9
 qF95LLdyvUMuIPbcuyKL73KFnnx055A0xwcOOhAy4=
X-Google-Smtp-Source: AGHT+IHVFYt2iVWqDyXx8Mvq/HZWoT02pDpPYRP6V8QTTL/psbz+obrHE062zj/fbkSbC2Zd+7nMGXcjVAVnYQYX01o=
X-Received: by 2002:a05:690c:62ca:b0:6f9:9e80:46bf with SMTP id
 00721157ae682-6fd10ac8628mr101291087b3.29.1740643187897; Wed, 26 Feb 2025
 23:59:47 -0800 (PST)
MIME-Version: 1.0
References: <SJ1PR11MB612979B35DD84F5AFFB789D5B9C22@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB612979B35DD84F5AFFB789D5B9C22@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Thu, 27 Feb 2025 08:59:37 +0100
X-Gm-Features: AQ5f1Joh6_ZfrOfMFX8XG1ZiJZIZZWuoVmnN5jaDFgcX94OQDJBurWds9xxECBo
Message-ID: <CACMJSeseiRfAHQX0+vjL0DO+Xd-+RwW5rs4RkYHCfP6NKz2DLA@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20250225)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, 
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 27 Feb 2025 16:29:37 +0000
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

On Wed, 26 Feb 2025 at 21:29, Borah, Chaitanya Kumar
<chaitanya.kumar.borah@intel.com> wrote:
>
> Hello Bartosz,
>
> Hope you are doing well. I am Chaitanya from the linux graphics team in I=
ntel.
>
> This mail is regarding a regression we are seeing in our CI runs[1] on li=
nux-next repository.
>
> Since the version next-20250225 [2], we are seeing the following regressi=
on
>
> `````````````````````````````````````````````````````````````````````````=
````````
> <4>[    8.483421] gpio gpiochip1: gpiochip_add_data_with_key: get_directi=
on failed: -22
> <4>[    8.483427] ------------[ cut here ]------------
> <4>[    8.483428] WARNING: CPU: 20 PID: 444 at drivers/gpio/gpiolib.c:349=
 gpiochip_get_direction+0x63/0x90
> <4>[    8.483430] Modules linked in: intel_ish_ipc(+) e1000e(+) spi_intel=
(+) i2c_smbus idma64(+) mei intel_ishtp realtek(+) processor_thermal_device=
_pci(+) processor_thermal_device processor_thermal_wt_hint video processor_=
thermal_rfim int3403_thermal intel_pmc_core(+) processor_thermal_rapl intel=
_rapl_common intel_vpu processor_thermal_wt_req ucsi_acpi(+) processor_ther=
mal_power_floor drm_shmem_helper pmt_telemetry processor_thermal_mbox pmt_c=
lass typec_ucsi int3400_thermal drm_kms_helper acpi_tad intel_hid int340x_t=
hermal_zone thunderbolt(+) acpi_thermal_rel intel_vsec typec pinctrl_meteor=
point(+) sparse_keymap wmi pinctrl_meteorlake acpi_pad dm_multipath msr nvm=
e_fabrics fuse efi_pstore nfnetlink ip_tables x_tables autofs4
> <4>[    8.483465] CPU: 20 UID: 0 PID: 444 Comm: (udev-worker) Tainted: G =
       W          6.14.0-rc4-next-20250225-next-20250225-g0226d0ce98a4+ #1
> <4>[    8.483467] Tainted: [W]=3DWARN
> <4>[    8.483467] Hardware name: Intel Corporation Arrow Lake Client Plat=
form/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.4400.D85.2410100007 10/10/20=
24
> <4>[    8.483468] RIP: 0010:gpiochip_get_direction+0x63/0x90
> <4>[    8.483470] Code: f8 02 5d 0f 4d c2 31 d2 31 f6 31 ff c3 cc cc cc c=
c 48 8b 47 08 be ff ff ff ff 48 8d b8 c0 06 00 00 e8 31 2d 95 00 85 c0 75 b=
9 <0f> 0b 48 8b 43 38 48 85 c0 75 b7 0f 0b b8 a1 ff ff ff 5b 41 5c 5d
> <4>[    8.483472] RSP: 0018:ffffc9000206f590 EFLAGS: 00010246
> <4>[    8.483473] RAX: 0000000000000000 RBX: ffff8881087964d0 RCX: 000000=
0000000000
> <4>[    8.483474] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 000000=
0000000000
> <4>[    8.483476] RBP: ffffc9000206f5a0 R08: 0000000000000000 R09: 000000=
0000000000
> <4>[    8.483477] R10: 0000000000000000 R11: 0000000000000000 R12: 000000=
00000001a4
> <4>[    8.483478] R13: ffffffff87f39780 R14: ffff8881087964d0 R15: 000000=
00000001a4
> <4>[    8.483479] FS:  00007f4df7e6f8c0(0000) GS:ffff8888dbf09000(0000) k=
nlGS:0000000000000000
> <4>[    8.483480] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4>[    8.483481] CR2: 00007f4df8003966 CR3: 0000000118522005 CR4: 000000=
0000f70ef0
> <4>[    8.483482] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 000000=
0000000000
> <4>[    8.483483] DR3: 0000000000000000 DR6: 00000000ffff07f0 DR7: 000000=
0000000400
> <4>[    8.483484] PKRU: 55555554
> <4>[    8.483485] Call Trace:
> <4>[    8.483486]  <TASK>
> <4>[    8.483487]  ? show_regs+0x6c/0x80
> <4>[    8.483490]  ? __warn+0x93/0x1c0
> <4>[    8.483492]  ? gpiochip_get_direction+0x63/0x90
> `````````````````````````````````````````````````````````````````````````=
````````
> Detailed log can be found in [3].
>
> After bisecting the tree, the following patch [4] seems to be the first "=
bad"
> commit
>
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
> commit e623c4303ed112a1fc20aec8427ba8407e2842e6
> Author: Bartosz Golaszewski mailto:bartosz.golaszewski@linaro.org
> Date:   Mon Feb 10 11:52:02 2025 +0100
>
>     gpiolib: sanitize the return value of gpio_chip::get_direction()
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Could you please check why the patch causes this regression and provide a=
 fix if necessary?
>

Hi!

This is fixed in my tree and should be in next tomorrow, sorry for the trou=
ble.

Bartosz
