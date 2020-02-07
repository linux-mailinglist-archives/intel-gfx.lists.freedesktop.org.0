Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 040A2155C5B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 18:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5DB6EAE9;
	Fri,  7 Feb 2020 17:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com
 [IPv6:2607:f8b0:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AFF6FD28
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:42:34 +0000 (UTC)
Received: by mail-il1-x12e.google.com with SMTP id f10so55701ils.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=tBmP7NcS7l5s86UEWYct732eggPFrK3A8NQ9Bc4NC1Q=;
 b=WYur/RQ5fpoBFdqQLRQbOQ2JofLElnEfbAfEIONtqOoQz8dbBE2l+hfooMIblCU6Mn
 +m8u7FZ3c/dDNeZGUojVYsL89+a69fO5Bxgfw3ay3GLD0wg7sXIASlCvNpZpIpnl4Iih
 xAGbiIP8yzJyTHA8mqzzNCgmjdo7h2jJzAGLkAFnTJhKLVKg07H7Rq58/bcJ0PsfiBqt
 i60L9ZYwnDhWLFNH0GgEjzYlmuaLA79Es+xYo7vXu3vg54oOdRwtbYcTh6ETKhAt+lqD
 REvlc2oyopKXahqfXjM+dGbu7Qtg3bGZ/3eFjhH+M2ZddUUa0bVXVJSDfhTkpZxzLfB8
 7t7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=tBmP7NcS7l5s86UEWYct732eggPFrK3A8NQ9Bc4NC1Q=;
 b=hCp++oRKb1VusZ4SOU6WraMfr9RXBDSp5oDkBnxPGzhHoNg05dD5GmzFif0uOUAGSI
 3dj14A/y5/0pEFkQn+E5lawJYltB+dHZ/5vzLkRpf28hokgmT1rhRhlEpa9AtLQLPxrH
 MCm8vbEfrD17mtldepnjq1UApgP9BvbCuEprAsjME3m+UZhLYILhA4TbHNs7Qwhni4Es
 0GqfHZ3KZd2XIo7LH8Q/4UyRpT/3gh0/BMODkLJd8/TDvlH14plOhZBPYew9AyV88DdH
 82xStpqgL5MSbLpuvBCn9btsk2JMb/RRYjYOnCiBD2y1eFhtvD+e2AbPnrzs4E3oEYbo
 tWBw==
X-Gm-Message-State: APjAAAU3OJ41U7EJofXNcy/Pbd7sXeaCT/AiICq4N6YQZuZJ5LdcadQh
 t27OFDuboSOmCUbXV5GaGmsI8RZbapIpmt4iCSzIYzEaGmKGeA==
X-Google-Smtp-Source: APXvYqz/sUBiIggkPw6YTfL3sseY49Wojke1yrRG4HdlqBV1fhQj5mZZkuza2nRnnyP3W3QpXeSZbFZY69BoyGEYBm4=
X-Received: by 2002:a92:860a:: with SMTP id g10mr240786ild.280.1581093753342; 
 Fri, 07 Feb 2020 08:42:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5442:0:0:0:0:0 with HTTP;
 Fri, 7 Feb 2020 08:42:32 -0800 (PST)
In-Reply-To: <158109328469.16098.11014223815188039767@skylake-alporthouse-com>
References: <20191219124353.8607-2-chris@chris-wilson.co.uk>
 <20200207163125.15903-1-youling257@gmail.com>
 <158109328469.16098.11014223815188039767@skylake-alporthouse-com>
From: youling 257 <youling257@gmail.com>
Date: Sat, 8 Feb 2020 00:42:32 +0800
Message-ID: <CAOzgRdbuR_wE77HKTcRr=irqTs3EP6CXMuRY_RZ6WACQwgL-Ag@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Approved-At: Fri, 07 Feb 2020 17:01:43 +0000
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Track engine round-trip times
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

That's my build many times test boot result.
https://github.com/youling257/android-4.9/commits/drm-intel
the "drm/i915/gt: Track engine round-trip times" is bad commit for my
Androidx86.

2020-02-08 0:34 GMT+08:00, Chris Wilson <chris@chris-wilson.co.uk>:
> Quoting youling257 (2020-02-07 16:31:25)
>> This patch cause GPU hang on my Bay trail z3735f.
>> https://gitlab.freedesktop.org/drm/intel/issues/1144
>
> No it didn't. The cause for that is unfortunately well known.
> -Chris
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
