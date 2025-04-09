Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B366FA81CA0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 08:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF3510E7DF;
	Wed,  9 Apr 2025 06:07:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="a2q5XJXf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B7F10E7DC;
 Wed,  9 Apr 2025 06:07:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 038D268432;
 Wed,  9 Apr 2025 06:07:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 278DEC4CEEA;
 Wed,  9 Apr 2025 06:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1744178833;
 bh=4VLTyB/y7fkkvfWGsIq6TQQScgFpmsOfPSy/CVaTpCI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a2q5XJXfXzgTGzQ8rtqXQ1wfl6bje9XAyaitY8ebevgyyCjtgTGemzOD5EGsMdk/5
 /etVDMjxsiBPkqae7KZF27vcnMrqkOOWgp2Gku1rAPHAEkNCJ+OBWPTLfDN9VMyBzA
 pYcWavr95wg9TsqOdMWX7qXu3yvoCNLobbdszV+sOX0+SqVJw4vQgXGcGM7jt4JZt1
 5EGcwNbqLIcRQ64iFIk3/tzAJIhpWV1EWK7xpgzkmRFMU6NgapGWH+n59hH6na/l1Z
 vgy6GTNQtqOW51NwWmGRZvIRl/rx4LzsryiMLl82BwzJJ8RSQO6PkAUsqUzf32SKjE
 BuV03CWUvwsVQ==
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-549b159c84cso4397249e87.3; 
 Tue, 08 Apr 2025 23:07:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWxue5EP+74N6Nx72VdAY+738Vg1Qa+7pRA7ByM/G9ubJkajqQoBOKKUnI+EcIXWugBl+OhECS2qos=@lists.freedesktop.org,
 AJvYcCXL1kZOfw20bvzqydhX1fO0WVVM37jEPc5jLTG4Gj8JgZYzZh9z9pv1fhWsqgR9KeVl/6+hSBu9flg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx3BEXDJhPoUv33emfEUbPhloUz1gU/7j76l2qJUyvjlBAEIeYw
 7rEC7ZV6sRJ0DafvZ9ch0SITgaXMRdkOfZ57bfofgZw+BXB1Xp95bGZBBy40BL4CL/NR9ATDSqg
 98AJ/J5L6Sz7myUDo9ss2yUarVYA=
X-Google-Smtp-Source: AGHT+IHUuvqmuMZmnHu1Ea/lodHpPFpjpt+v62cdN4A0tXOT10coLDa6MCZKyZGwcCNGxLXdn6hM6+Ii6OY8YLXa/eQ=
X-Received: by 2002:a05:6512:23a8:b0:545:743:cf44 with SMTP id
 2adb3069b0e04-54c444b33d5mr349808e87.12.1744178831493; Tue, 08 Apr 2025
 23:07:11 -0700 (PDT)
MIME-Version: 1.0
References: <SJ1PR11MB6129DE70566C6FB5E73400C7B9B42@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129DE70566C6FB5E73400C7B9B42@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 9 Apr 2025 08:06:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEfBMczOmA2+dMMubuD-qE59GTAiV2E_9m8KNG4-rgP6Q@mail.gmail.com>
X-Gm-Features: ATxdqUGtqKqQkXZ_e2kA5a79FnqkuCOGA_SinGq6AWPbToN1IRaLDpSKB9AOnVc
Message-ID: <CAMj1kXEfBMczOmA2+dMMubuD-qE59GTAiV2E_9m8KNG4-rgP6Q@mail.gmail.com>
Subject: Re: Build Failure on linux-next (next-20250407)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, 9 Apr 2025 at 07:01, Borah, Chaitanya Kumar
<chaitanya.kumar.borah@intel.com> wrote:
>
> Hello Ard,
>
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
>
> This mail is regarding a build failure we are seeing in our CI runs[1] on linux-next repository.
>
> Since the version next-20250407[2], we are seeing the following build error.
>
> `````````````````````````````````````````````````````````````````````````````````
> CALL    scripts/checksyscalls.sh
>   DESCEND objtool
>   INSTALL libsubcmd_headers
>   AS      arch/x86/boot/startup/efi-mixed.o
> arch/x86/boot/startup/efi-mixed.o: error: objtool: efi64_stub_entry(): can't find starting instruction
> make[3]: *** [scripts/Makefile.build:335: arch/x86/boot/startup/efi-mixed.o] Error 255
> make[3]: *** Deleting file 'arch/x86/boot/startup/efi-mixed.o'
> make[2]: *** [scripts/Makefile.build:461: arch/x86/boot/startup] Error 2
> make[1]: *** [/home/kbuild2/kernel/Makefile:2006: .] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
> `````````````````````````````````````````````````````````````````````````````````
>
> After bisecting the tree, the following patch [3] seems to be the first "bad" commit
>
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit 4f2d1bbc2c92a32fd612e6c3b51832d5c1c3678e
> Author: Ard Biesheuvel mailto:ardb@kernel.org
> Date:   Tue Apr 1 15:34:20 2025 +0200
>
>     x86/boot: Move the EFI mixed mode startup code back under arch/x86, into startup/
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Another observation is that build passes when run on "Ubuntu 20.04", in contrast our CI systems uses "Ubuntu 24.04".
>
> Could you please check why the patch causes this regression and provide a fix if necessary?
>

This should fix it. Please reply to the patch with a tested-by if it
fixes the issue for you.

https://lore.kernel.org/linux-efi/20250408085254.836788-10-ardb+git@google.com/T/#u
