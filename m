Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE7E203CB4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE586E0F2;
	Mon, 22 Jun 2020 16:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03A16E0F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 16:37:27 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z13so5594110wrw.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=RR7Dr2z+5lOxj+N2NVbRCcIekzaWb1z/d9XmonkDvhY=;
 b=HXwzK7sZ4OHtVRPFbbp4qEZm1uDajGBowEhWIsuAsNWYRh9PMFYqxAVCQcHvn0u8Ko
 xvKQ7CKyMdH7/+cDQl5Ess7PGQAOz3N60NUKSpkNgZ+lJrJ+ZBmu5rSdGnR++QdlcojE
 L0ats/32pXaS752soKg8TKPoJU1i84N4aGVeiiu7B9b7zbIfEgJ06EVf55WimxFV+Zms
 OI9kEVZ4M4OLPvtI31uHK9Lvat239LZA3MttnNkUk3NToU4XIXi4wOkobtHgLauL+XLa
 Skjlw3Z9pe7KXNnFGZ0HAdNvaFZOaoJUlVPV19yGyuGWEoPnreVeYfzHto+yvQqZermS
 IW4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=RR7Dr2z+5lOxj+N2NVbRCcIekzaWb1z/d9XmonkDvhY=;
 b=eNtcvKq7X8ctmBS8bkC6sViYJ4SRkK+iBZNrvHUoeu1Mh8iqgDIsv21whejxARt++j
 WKWaodOAfStCM2h7aX5ymUwJwyh3ihZGcKoz2kgM5Xx8FDGM2AauVaHXjejRF1gOz9Z8
 OTxtHnbYd4MmdkyZmVLvV9+/iYlW5CFOP88T68g/YIC0ssCrK6z2Qr1zkpTYtx1V2QCu
 Dn2IxGFO+0XENHXQ5ikT/vsN/xX7zZ8Rzh+WbNLuDZRXrXDv2O4jwbnfWjryMyCn/aLW
 BE0SX+pK6dn24ck4VGr6kQ+Dup6Y2ngqwcvFy/4vGwfwPRTiuMl10s0JDH3LqwELOOcC
 dOXg==
X-Gm-Message-State: AOAM533PEXiw8SPoXLLa0sK2Xx/rxen+cqOeF46OLHPVA1CN9j39371J
 V5FiFUxV9wKK4vTzpbItQwrm0HnJ
X-Google-Smtp-Source: ABdhPJwJI9MdSE8B9K8k28UM5BHI0j4sMLgUluGyjXXnhzCuGr7WKUz6SMq6GaqBCygF3oT57452OQ==
X-Received: by 2002:a5d:56d0:: with SMTP id m16mr19401238wrw.194.1592843845918; 
 Mon, 22 Jun 2020 09:37:25 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:a4ba:2182:c4c1:3b20])
 by smtp.gmail.com with ESMTPSA id f14sm690498wro.90.2020.06.22.09.37.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 09:37:25 -0700 (PDT)
Date: Mon, 22 Jun 2020 13:37:19 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <cover.1592840756.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PATCH i-g-t 0/2] test/kms_cursor_crc: tie some loose
 ends in the prepare_crtc
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
Cc: kernel-usp@googlegroups.com, Rodrigo.Siqueira@amd.com,
 rodrigosiqueiramelo@gmail.com, twoerner@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using vkms, when running a sequence of subtests from kms_cursor_crc,
several strange timeout failures occurred. For example, running the
alpha-opaque cursor twice, the first run is successful and the second
fails. In addition, if we run the entire test in a call (i.e.: sudo
IGT_FORCE_DRIVER=vkms build/tests/kms_cursor_crc), the first subtest
passes and the rest of the subtests fail - even those that succeed when
run in isolation.

igt_debugfs-DEBUG: Opening debugfs directory '/sys/kernel/debug/dri/0'
igt_core-INFO: Timed out: Opening crc fd, and poll for first CRC.

During my debugging process, I found two issues that were blocking
execution and the solution is in this patchset:

1 - When a subtest fails, it exits and skips the cleaning step, leaving
the pipe_crc allocated and blocked for the next subtest. The first patch
fixes it by releasing any old pipe_crc before creating a new one.

2 - When the CRC capture process starts, it enters an endless wait; this
seems to be related to the fact that the VKMS simulates vblank events,
generating a time mismatch between vblank and CRC capture. Waiting for
vblank before starting the capture process sets the pace, as shown in
the second patch.

Melissa Wen (2):
  test/kms_cursor_crc: release old pipe_crc before create a new one
  test/kms_cursor_crc: align the start of the CRC capture to a vblank

 tests/kms_cursor_crc.c | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
