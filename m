Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0877E7D38
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 15:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5720B10E0D2;
	Fri, 10 Nov 2023 14:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com
 [IPv6:2607:f8b0:4864:20::112a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26DA10E0D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 14:59:17 +0000 (UTC)
Received: by mail-yw1-x112a.google.com with SMTP id
 00721157ae682-5b3b17d36d5so27859067b3.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 06:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699628356; x=1700233156; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=DePRXI5/5gmHgUQKtbXUycOFQc/q09P7llCduGLBnrw=;
 b=cls++RmM0KajC/MPN2IrGl1YNjg5JfLni1f4ymoZkLvqlEa50caVtaCKGbDaJC++9G
 Tgqsyt+x+OQERtRnAblQispQfthCdT25EZBM0LZPO3zwBBbn8ie7PcnLW13K0sTmKPV4
 dw/o5FPwRMXKLr5O5ar1PJYboyJBl8XfNmKR9MHX+TuNp5IfGs8V/T70JJp8ERSFlHMt
 RBFg1cgoQf7PXyehY5W8YoybWiwM5oOp/vvkwo2CoPK6zU8A+QsWCwoJlj34ASR1EF2x
 llPlh15a2Innjqyfc+IgsUoqMgk4XhXldN4FBxEaIgvwq64qnRSrZCsbJQzyjjzfuohG
 3lqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699628356; x=1700233156;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DePRXI5/5gmHgUQKtbXUycOFQc/q09P7llCduGLBnrw=;
 b=GsuKFmCfa1qOFrw56d4FnE2Ge3LWap+3AN4/5zaUzoUgkx4Nb+qEpay7+PmRQB7Bta
 0Zmxsf0tezoKvafqEMwe62KL3CS5ZKwl5inGFUGkm+ENRwiuFxSrThRhz8ywVRwtm7cP
 2H9EsaP9Gr9rOfS9PJbg/WIhfz6+jRp5GsdXo5WENqufEFtJcsW33YZaBWDq9LcDX3CO
 KNWA9vAnaYBQYiTKoUcyMbPdU4uf1Jy6dcCsyMddqBaDhKnILudHqFJy1CtHZS4ywz2m
 /xde7YsrVazcMQWjL2OczBi4w9jgPzn6x5Z4pDrwASSrd9/Hq4LfaQz3cBPbguRH7O9m
 x2Ww==
X-Gm-Message-State: AOJu0YwuSR3C0zB0U9wyQKE5telNJsEtOb+Ys6Y3Q+ztRxR4+1TL3U/v
 4XqARt8T35HYBUILDTEOpbIzhkTMO60iNwTcl9BnH2kwxXM=
X-Google-Smtp-Source: AGHT+IGyCESQ7jkiE/qcCG1QALhDngOgQ/VdCKEi8S9Purf3BvMHZEi7jzaL+bI4H4AVgzoC+y5Q7Y/XZDGUY9ahxkQ=
X-Received: by 2002:a0d:da82:0:b0:5b3:5732:bc42 with SMTP id
 c124-20020a0dda82000000b005b35732bc42mr1799696ywe.4.1699628356182; Fri, 10
 Nov 2023 06:59:16 -0800 (PST)
MIME-Version: 1.0
From: VDRU VDRU <user.vdr@gmail.com>
Date: Fri, 10 Nov 2023 06:59:04 -0800
Message-ID: <CAA7C2qgoUsXQDDFvK-kwqXVAxT7eXgQzY1eyTEzW+T+gncQXNg@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] Getting black screen with stable kernel 6.6
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

Hi,
I've been using kernel 6.5.10 on Debian Sid without issue. I just
tried kernel 6.6, (and consequently 6.6.1) but only get a black
screen. The system doesn't run a desktop environment but runs as a
Kodi client using GBM for display output. The system is a Beelink Mini
S12 Pro (12th gen Alder Lake N100 cpu w/integrated gpu Alder Lake-N
[UHD Graphics] [8086:46D1]) connected to an LG tv.

I'm not sure if the issue is the i915 driver itself or something else
that was changed between 6.5.10 and 6.6 and am hoping someone more
knowledgeable can help/point me in the right direction to finding that
out. If it is an i915 driver bug, I'd like to get it reported
correctly.

If this isn't the appropriate place for reporting this, please let me know.

Thanks,
Derek
