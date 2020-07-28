Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 556C8230ADB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 15:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7006E1F4;
	Tue, 28 Jul 2020 13:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2E16E2DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 13:01:41 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id b30so10940994lfj.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 06:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ah4/dVMTv9HOOU6d9NjNLg/md1otc3qF6WLb5a/RUVA=;
 b=KiDUwSUDgzB8txYbD7xcbtmgOVO4rsg26AvwjJTv9Lh+GbNzsLq6aRAUjnw4rtXSK+
 1zVGc3vQ1yhkejhjvor4Ou2n9C9ElsC1kyRxOBad0RPUlA/g9NTx/0tr3lbDT78ElT7j
 1/bUu8hm1ZMYpRtltLZFonSDQ3bwRYg7g0JZyGbyGhfoZ2m0tYq2paoobj7mGy8cNcaU
 XZRwdlTxtbX6iEDpHym8T7bObjkT1fY+DUmmM+KSeb5uGiG/qGlLesiQFz3IpnxZfkk9
 VOycIhTaf1tko3Cw/zoOerexUDy3NfOVC6NA+W/TuNtao3Gd+SC0JV6Eou8jlSwYLp8T
 JaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ah4/dVMTv9HOOU6d9NjNLg/md1otc3qF6WLb5a/RUVA=;
 b=VykjNofUBFphVjClQ3JIRufREL79BKDx4YxUplm4Q9ijDutJDtvXpcumDi8k30wAma
 lQ/ILE2nyJdSPdIj6iKK6/7THztXeG/3B8mkzpnc7VLMhpYN+Ota+ZqvwpfBF0/iIM0i
 alG/rNzNE46zF8Dz+fdx7kXjs2tuVSAOBGz+TdODl9DGD+uQnWTcnZjaTcljMBNWRHYj
 gifPmXTXHq42TCZRU/7a65/mV2rrnTqmJX90GYJJ3hqlqP0dTJAt72ZFA9XYXQ92fUgJ
 vTyNQYQTMHYMr3D0a6vA+ufU2bEeRi6qtvAZmWl2UCkTQe+gWT6XnuM/59/fl2sxMSYI
 oN3A==
X-Gm-Message-State: AOAM5325Mc9RM9aGgPYZZibPffZlNiZxl3X6o1s/ha2wssRYY2PJKKMy
 07iPLdHW+3AoOqp9j3e/ZHJyqcS+TwZs2CLDl91xseshqZo=
X-Google-Smtp-Source: ABdhPJw21ilZjhiFNvC1R3jT+1Rn+eYtNVhyLo4yQtH0z4tNqJ8l9L1GGzo9jk8F1CLA65L/V7keszzdDYAc4TRqZLc=
X-Received: by 2002:ac2:5624:: with SMTP id b4mr7329561lff.131.1595941299375; 
 Tue, 28 Jul 2020 06:01:39 -0700 (PDT)
MIME-Version: 1.0
From: Jason Andryuk <jandryuk@gmail.com>
Date: Tue, 28 Jul 2020 09:01:27 -0400
Message-ID: <CAKf6xpsGwGVhihFgCr3-jaRk84O-LYABLGGXRG8J+Ltrgo31yA@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] Flashing display after link training failure (Bug 1378)
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

Hi,

I opened a bug ( https://gitlab.freedesktop.org/drm/intel/-/issues/1378 )
a few months back, but no one seems to have looked at it.  I'm
emailing here to hopefully get a suggestion on a path forward.

tl;dr: when resuming from DPMS, link training channel equalization
fails on the Dell 7200 Whiskey Lake tablet eDP display.  There is a
flash of the screen and then it goes black.  This repeats probably
until the display goes into DPMS again.  The system is sluggish when
this happens.

i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915]] Channel
equalization failed 5 times
i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915]]
[CONNECTOR:95:eDP-1] Link Training failed at link rate = 270000, lane
count = 2

Right now I have a hack to just return success from
intel_dp_link_training_channel_equalization() after the 5 failures and
the display seems to be usable.

The issue seems to be that while Lane 0 succeeds in link training,
Lane 1 does not.  The system boots up with a usable display and seems
to keep working as long as it doesn't go into DPMS.  And to repeat the
previous paragraph, hacking in "success", even though Lane 1 hasn't
succeeded, seems to give a working display after resuming from DPMS.

More details are in the bug.  Any thoughts or suggestions are greatly
appreciated.

Thanks,
Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
