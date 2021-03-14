Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F69333A50C
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Mar 2021 14:48:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D5F6E23D;
	Sun, 14 Mar 2021 13:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614C26E23D
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 13:48:11 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 m20-20020a7bcb940000b029010cab7e5a9fso18653112wmi.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 06:48:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=tqv1ZJXL3HqCMD3zmmEEWUnkSO8nGjmjqlsWVdJR0sk=;
 b=HvX2KII7ow0woHnln7SAeQgpil2k0QA8UGmO1yBD5eSJ+4xptVNOEeyv0Jibb+XdwZ
 PEEK91nHXsUS+aYoOcYHd+ar8XwTNxdsxdGaq94EN4bnVQ0f/EBGHqTgajjm8H0/60Pl
 PxQ7/cHhBNy0WRlY10dq6ac/0SWCdY5AZVDZTiPmuDWD9X1nsNFohfXwdCDj6c1SdxKo
 JcgjeXk6WTVL2RornKI9YBcmFd2cebwb5Cz3DDyhsjDhnoQQbEHycNUsOOhd7kZi/qDd
 Mwiq4G8+xCTCYGvOOJ9ZKQOPA+EfUL5uzJ092Z9nmH65Zb9rHYZafE1xtDrqUKKQtP0h
 TiNQ==
X-Gm-Message-State: AOAM531Dw1xcI0mk6/HOBOqBeAdnllOISB6+sFCLRdx+cTTwXENAy555
 +9bwbTJ4cYV97BNdcHB1E9XlUKpC57s=
X-Google-Smtp-Source: ABdhPJzuK0jdAlPIoYejSx2NrRSPF2MDFzUFoDUrKWDEq0WZ4ZTX3ZH5L9GGiPb4ItYaASPgVG5uVg==
X-Received: by 2002:a05:600c:19d1:: with SMTP id
 u17mr21568387wmq.141.1615729689792; 
 Sun, 14 Mar 2021 06:48:09 -0700 (PDT)
Received: from ?IPv6:2003:c1:1f4f:ba00:f585:f458:b5b5:1f70?
 (p200300c11f4fba00f585f458b5b51f70.dip0.t-ipconnect.de.
 [2003:c1:1f4f:ba00:f585:f458:b5b5:1f70])
 by smtp.gmail.com with ESMTPSA id r2sm15048592wrt.8.2021.03.14.06.48.08
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 06:48:09 -0700 (PDT)
Message-ID: <769a4194df25ee2432284d8f10f876a17cc94fec.camel@linux.com>
From: Mario =?ISO-8859-1?Q?H=FCttel?= <mario.huettel@linux.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 Mar 2021 14:48:08 +0100
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
Subject: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown since
 commit fe0f1e3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

It seems, like the mailing list, didn't accept my previous emails. So
I'll send it again:

I want to report a bug. I've got a PC with Intel i7-6700K processor
(with integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6
mainboard. I use the CPU's integrated graphics.
My system is Archlinux with Kernel v5.11.6.

Using this setup, my PC works normally. However, when I shut it down,
the power is not cut. Fans keep spinning and LEDs stay on. I couldn't
detect any other problem when shutting down. Drives etc. stop as
expected and the video is blank. Even after waiting several hours, the
system doesn't power down. This behavior is 100% reproducible.

Restarts work normally.

I haven't yet found any other people on the internet that have the same
bug.

I used git bisect to find the commit that causes this behavior on my
machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is the
first bad commit (drm/i915: Shut down displays gracefully on reboot).

I hope this is the correct mailing list for this issue.

Let me know if you need more information or someone to test it.

Thanks

Mario

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
