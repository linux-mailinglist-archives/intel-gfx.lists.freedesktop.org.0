Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D214685A28F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 12:55:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F270910E33E;
	Mon, 19 Feb 2024 11:55:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Klqqv0X1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com
 [209.85.160.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F47F10E62B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 23:26:50 +0000 (UTC)
Received: by mail-oa1-f45.google.com with SMTP id
 586e51a60fabf-2196dd318f5so3722032fac.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 15:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707866807; x=1708471607; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=k8osd+7UgwR3WzbjF0h23JbEb6SKqFrtZOpJr2zqHps=;
 b=Klqqv0X1OButyMBr0rZVhm/9iJbX7wIyk90L4wgfIy6JDVGN3YcmcpIcHdsAoopt9F
 kebssllepvWrPLJKxW4iILHcaaqRkUbi92amW9JqONhp6KqyCvATQ5hoOCaWA0SqLnAg
 ekX4FRe5pEJUcgNX+XryS40Y4vYVyS0HOkOWnGjugp+qoBcK8Ejqp56hXsC1s00ht6gK
 e5/80M9lgwWoKnUMhELPaLWWwV73R7/cSok5RCN2O7Ke/Fdvx1zGKh9cS9POhv3ff19Z
 yuuoGyjawa2Cp/hbHBvCs/x1ehEZuh/qxulL+KEPNj2R2+FIJLv5oWnUrJox4i781j9s
 LfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707866807; x=1708471607;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=k8osd+7UgwR3WzbjF0h23JbEb6SKqFrtZOpJr2zqHps=;
 b=bSufWYTGydzae1BwTiFBOvS6NuomqTxaVGXRRsTF5cHQc8PzaoY5ykLohlw6GVUszM
 GQaPPheliJfJasR3nFYCMJYHBDLqwHUxOctvvm2Toux5ib9r3XVxQrDmM495XjnX8vXr
 t7GiSFCNr5DDH+UTYmwi5EsQCIcYOUkSa1MNKwtgKhLsZn4prmV3sDJqEbaf769t98e/
 Sa7T4lc88AULJcc4BUAnHVIKzH71nZRIIsXDyZE9DaxYTjmpUN2d/Zm0dsNSZdmNamRe
 zg6Bfjif8nX8pMmwnFcrM0NAwf6stRpybY/oTkfjLL6n4qnuihP8CFj2S6/IlpyRqvH8
 QqtA==
X-Gm-Message-State: AOJu0YwVk2kmKpe46s13NgNB8v9XXDCHnuxhig5gaqac4BQJgd5U82kQ
 ZBvCOGCI6havZ/y0RYKO7Fz8C/scUfxpea3aFGHQ+B5/+XdV1uCvwDErcEUu7Rf2qx/q426PP95
 rtwBy5MmFhoUlpV5r2H0V0FnwU/KXlY/HTyE=
X-Google-Smtp-Source: AGHT+IFvsWCGK8fg4hMDVOHArjKYmI/f7VFM8bN5XDTgMh7AopGFIT7MhpD8xsN6AR64BHlpBT2dtllj6H55YcH7oDU=
X-Received: by 2002:a05:6870:f10c:b0:219:7dc1:70ee with SMTP id
 k12-20020a056870f10c00b002197dc170eemr1016045oac.2.1707866806813; Tue, 13 Feb
 2024 15:26:46 -0800 (PST)
MIME-Version: 1.0
From: Roman Lozko <lozko.roma@gmail.com>
Date: Wed, 14 Feb 2024 00:26:35 +0100
Message-ID: <CAEhC_BmNE-RQZv35tBO5sO2n8=+BNHCMNRHnZc87EP_nBiq26w@mail.gmail.com>
Subject: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GSC proxy"
 error
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 19 Feb 2024 11:55:12 +0000
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
I've first filled the bug in openSUSE Tumbleweed bugtracker
(https://bugzilla.opensuse.org/show_bug.cgi?id=1219899) and then found
Intel GFX CI and that it reliably triggers the same error in Arrow
Lake BAT runs.

Don't know what else to say, so yeah, system does not boot. Is it
expected? I'm trying to install other distributions now to see if
there is something different in their kernels.
