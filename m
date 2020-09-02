Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8415725C264
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 16:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6376E02F;
	Thu,  3 Sep 2020 14:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2621E6E4CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 16:39:27 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id g13so6456176ioo.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Sep 2020 09:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=bw76E/b3G6TO00iQTq0aa2fkxlofOPTqXo+FteOiyvg=;
 b=jFwclfIZNnYo+Se4tYekj49yAjjB1IFeoV9aFOOKdYEjsg2V/9r2u2un3Xpwf99Sbe
 B6SfcVNxBIs8zNRORiT1axYIuNa9wuqMQijD5GMgaYefYgELlq6rwleCjRrvHCrti+15
 O/UcYSrUL2QLaIneyqiwXDwTr1XkQV53B7BKYQlNUIqdt4po1Jg551vVyvwam+NFEd3d
 hsP43eUJTpzaj5cL8yCUl7S33UV0M1wQUYj5hLoP9E109MBicShVSIfibrB41WIsdWBA
 khnmMe+YiY0RcIKrXR6Iei98aVXWZzo7sr9z16ufwmdTkQe8iJ+ejbAM75qu5x2cVE4u
 5Ajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=bw76E/b3G6TO00iQTq0aa2fkxlofOPTqXo+FteOiyvg=;
 b=jytMEK/ENHegAY3fGxYOw66pt5Jw9oy47cun/X6Fqs6YKMWnp4qhm/xARgFE7OQF6v
 AeBoDjfAJ+lIvPtUUr6pU2Wsui9ql3pHt8QHbgmHZq4pOhg8rnrVwG/xiSKqJsQnRl44
 mUumyxJXuvAlxriBRbCNR9WD5XptV4dg0f/E+RLu3waUMOHZi7zZfHKFYXlYBf3OYBWJ
 QcgCkOPrrYe64VR6cgQ4GXpp9Za4gjUJPRmGVPiu3wRVTcYh7NWzBAeVywfzDi8sFfhZ
 3fH5aGBMruAJhngTX7WRblX5cFFZxlWlXVm9HAxeRYfVsCgAskqLs4bAPXOEKTnMiLya
 33vg==
X-Gm-Message-State: AOAM531E0R/KEC+pWku7xomuLl/kagc4mIIAdBlqx6/rSN/YtXxTMG7L
 P5Fz23wBhVWoFXkR4nkW7E8jagKOC1rcs7ugjaqsgEwLLRamRQ==
X-Google-Smtp-Source: ABdhPJzYhasNYViPGlbruk+WcqvxyUNwVQiVTdLwlZmf0UX+MIKST1MCHOsjZ7amHMvXoXpZkCPJ0hK4Cnb27j2Fxyk=
X-Received: by 2002:a5e:c309:: with SMTP id a9mr4228146iok.105.1599064766149; 
 Wed, 02 Sep 2020 09:39:26 -0700 (PDT)
MIME-Version: 1.0
From: Peter Vollmer <vollmerpeter@gmail.com>
Date: Wed, 2 Sep 2020 18:39:15 +0200
Message-ID: <CALdu-zH+yh2X7OSVQ7aTW2Dj=rEMD2MRYighJ-YGdEp9W4AXYA@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Thu, 03 Sep 2020 14:23:48 +0000
Subject: [Intel-gfx] i915: boot/load regression since Linux v5.7-rc1 on Iris
 Pro (Crystal Well)
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
Cc: Niklas Schnelle <niklas.schnelle@gmail.com>, peter.ganzhorn@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

since kernel v5.7-rc1 my graphical output hangs on boot or if the i915
module is blacklisted on modprobe.
I've already found and extended a bugzilla
https://bugzilla.kernel.org/show_bug.cgi?id=208737

But sadly there has been little reaction so I would appreciate any
help in further debugging or better yet resolving this issue.

Thanks in advance

Peter Vollmer
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
