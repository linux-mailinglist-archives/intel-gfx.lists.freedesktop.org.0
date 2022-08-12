Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F048D59FE46
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 17:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EABA10E838;
	Wed, 24 Aug 2022 15:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C068D535
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 21:24:14 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id j8so3998771ejx.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 14:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:date:to:from
 :subject:message-id:from:to:cc;
 bh=6sLlVa5bv9fddso3aGZXeVZ815lIACQU4NMr1Arbw3I=;
 b=lEdQfwoArxfCfMAR18cTK/A5mRqpYXHouEGdAeFgaZHI5J+0clpLhoGdGjAV3iTOtY
 pI/d9J2GW9q06oUIU742rxvN0COvVArLEQfU00WEymfvyEYFWhCLLpDUevpr1yTrLPQg
 dYvD36O1VSE0SBj/iUEllEX8oLfVKDrj5XJxzVEBr7I2fbLYG6Xo7Q+IHXVPRg0r90ZR
 m+UPWB8qPo/Mp6HsDXvRIFwJ1Cdo3ULIa/++631BpCO2bmiWw18HCRktpM9Oznq2uuWT
 eVULc8Sm9tnqGhRfm7fvANvN/+RQqdVmvUAGbUQDZ7qwJUw5gz2pvsIIIR/3noHSGbDS
 JK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:date:to:from
 :subject:message-id:x-gm-message-state:from:to:cc;
 bh=6sLlVa5bv9fddso3aGZXeVZ815lIACQU4NMr1Arbw3I=;
 b=RvouHHmjqQDXW2Eeh9YLVLLUK3oF5YDUV0zW9eUG+6uo8cH46pK6rbrS+nHE1ncLRB
 ci2ebFd+bG11K5xDq5GB5StA2u+ZIJ8QLNjhxnh2da3qwrOBcqwgban0s/wzEkelg5u1
 4vsapxMrcLYOA1ZE+IX+Nu8mu36YBZBwnNBQLT2P7y41ndRtZjXX95Gj+s0G8+qQyhER
 Tx5WTBEqfnWMJySLvrKCItvPkKCtuinighqkb6CxqK6yf3lhgSs/hbpZw9Cw3cstU3Vo
 Huer0MBBAS1C9ymMx3eVcVXXtTDI+MmpYG2CCmBBqrWcdwtquOwNgSiYJ5ZI1o+a0zT1
 jCpQ==
X-Gm-Message-State: ACgBeo252vI6BDtCOXwndveLvghVKuNWx+xVjSaiDf9jKso/GB+GyKxE
 RxQrNIFhJsryUgFSJ+c4Cki0P3Le28k=
X-Google-Smtp-Source: AA6agR6FyVpEWJ9cff6A2kT9fDL3qtYQtOu1Nxl3xr2q87+yuRn8onOCdC3hdlK7y5iXl0qCa6rF3g==
X-Received: by 2002:a17:907:a068:b0:731:366a:6005 with SMTP id
 ia8-20020a170907a06800b00731366a6005mr3856039ejc.344.1660339452881; 
 Fri, 12 Aug 2022 14:24:12 -0700 (PDT)
Received: from [192.168.11.137] (188-143-71-136.pool.digikabel.hu.
 [188.143.71.136]) by smtp.gmail.com with ESMTPSA id
 ky21-20020a170907779500b00730453877b1sm1176197ejc.217.2022.08.12.14.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Aug 2022 14:24:12 -0700 (PDT)
Message-ID: <4e478787ecbee62b8c2d420df895f5a8b531eb6b.camel@gmail.com>
From: =?ISO-8859-1?Q?Baltaz=E1r?= Radics <baltazar.radics@gmail.com>
To: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Date: Fri, 12 Aug 2022 23:24:11 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 15 Aug 2022 13:18:12 +0000
Subject: [Intel-gfx] Intel gpu memory corruption
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

Hello!

My laptop (ThinkPad T460) seems to have a memory corruption issue that
only occures when the gpu is in use (it has `Intel Corporation Skylake
GT2 [HD Graphics 520] (rev 07)` as reported by lspci).

I haven't been able to reproduce the corruption with standard memory
testing utilities like lenovo's builtin hardware diagnostic tool,
memtest86+, or even the user-space program memtester when it's the only
thing running.

However, running memtester alongside vkmark for example can reproduce
it quite consistently. It will always be a single address for a given
instance of memtester, but looking into /proc/[pid]/pagemap revealed
that seemingly it's always the same hardware address.

With this information, I think I managed to stop it from happening by
appending `memmap=3D4K$0x1F9D7C000` to my kernel commandline to stop that
address from being allocated. Since then I haven't been able to catch
it with memtester, but I did have a crash that kinda resembled the ones
I had earlier. Many processes segfaulted and I had some `Bad swap file
entry` errors in my dmesg.

I haven't been able to do testing on other OSes yet, but since none of
the regular memtests have found any issues, I'm fairly certain this is
not a hardware issue with my ram. Could still be a hardware issue with
the gpu itself, but for now I'm guessing this is a gpu driver bug.

Is there anything else I can test to confirm that this is i915's fault,
and if so, anything I can do to help track down the bug?

Thanks!
