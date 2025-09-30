Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE830BB3FDD
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 15:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BEF710E192;
	Thu,  2 Oct 2025 13:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g01p2VEM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B2B10E5F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 15:14:52 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-b520539e95bso321355a12.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 08:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1759245292; x=1759850092; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sqQp7CJ0/ZUkBsxNzFP0LcZLdH18lJsedYddrwxvvpk=;
 b=g01p2VEMjqNv1jLShYNEN+MDF9mWBu+G7+eGoKW7T1beOPyEUflDEtcYaKkeVkHoSC
 ztBX/LapGM8TRmyg89OB6JoMz4VM8nsDq0qdzkvAX1HCgP4/UiFv4fkRbWZnvZzUsmqO
 r+RUrNfwD3MHpa40MW14aYhvnG0IlHwXsa4SWRx32fxazrH/8d8h34pEQ93dE+DL12PA
 91YArajCuVjllbnabExBo67xP9+S4/5sKSnjXEBhEkldgTJ3HX7Ed2E6WaXdEMBeBB75
 gWtz96322qoaSvay1tfg2oF4I/S/7VVbzJyxe6jH7bmvixA5In7f/YLXQOYIR9zN5izn
 FPFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759245292; x=1759850092;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sqQp7CJ0/ZUkBsxNzFP0LcZLdH18lJsedYddrwxvvpk=;
 b=tJd399q2XeJExai6s/aNxBAHRxg8DIQWbMZkRFeDoijXEtyOngeHdnHb/hAnj4FcGg
 YpPPINsOeD9I6ViBwfD4jnAHemlP6l+Dd4/PDMq5RKXQZz5YxnzhdHeIzg4rVce1vAqR
 ftaaHmeQxY6OgvHy9Kor6Xxo8kZIgByPriR8L9wDCl9/Tle/23LOCAfuWJ9eOiVTXrNX
 z38blaxxb8oZiGtXHflebHcfFZsvbWij6LKkjfVpTexFnzQhPmHFQko7GXka0cbGLCnk
 0jYEJVQx2he4gQ9xYqeo2UuUgoGHVpMPqUTJjUjYAF/Qz0T6ZIc4eVNHm/jEqZxe5YVx
 XUUw==
X-Gm-Message-State: AOJu0Yxi+ItknBYwELi8dp751QgWjQCnRX4dCF7O0A2gVuhH3WyAnDZM
 6AUsfTTx26GWuzq3Bo/dp1M6sZtqs37r0wFt9rVxtp9jk76A8BiEwEWJvRfNG6Q+Vpg9sKzAjT9
 ECfPySGm95eJ4N29G/ACXodwiMpzwVDc=
X-Gm-Gg: ASbGncs52Xb8P41/BMKI9pyZuDLgR50cWgGzYMDhsGZjFI5IyYyOEqQq8DQqwR64Lvl
 pNfXMyF4awMKlGFhLvEJa9TTPToXRlCe2/DiBz4TOYnP1lVj0e49NTagvnGTCnp6jZqk+cQwu91
 9jo64eumvqmRH6vQ90dYQwW4bXEWe8kQGs4qcNxz3JGcyiWUHxDX2wN1DoCwsb3z9pbUPs3OG+K
 2moRPlUCNXvbBo6eAgp+SiwYQmLpExQ45O0U38GRRw=
X-Google-Smtp-Source: AGHT+IExoZXRGA9mlKSnNf+W/ZNX3bZkUMtUXmlXaqFzDSzAGWgOOtRwh4IW/Lva8s/pV6iOzxj6lm0qRAbLvvk3MsE=
X-Received: by 2002:a17:90b:1c04:b0:330:7a07:edb5 with SMTP id
 98e67ed59e1d1-3342a22a7d9mr11752276a91.2.1759245291691; Tue, 30 Sep 2025
 08:14:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAGfirffPy5biFVLtSNEW60UCXa6_=-=NrQbU7iLQ8+BXnFQ=1A@mail.gmail.com>
 <175922381867.30706.10351894191632562572@jlahtine-mobl>
In-Reply-To: <175922381867.30706.10351894191632562572@jlahtine-mobl>
From: =?UTF-8?B?6rmA6rCV66+8?= <km.kim1503@gmail.com>
Date: Wed, 1 Oct 2025 00:14:41 +0900
X-Gm-Features: AS18NWAxKWtkalxkS1HEf0Xmhu8rrPNzm3u1MnhkYOFR4UIYsfyEiR54fm4Pd-8
Message-ID: <CAGfirfdDe879wFzABVZkTV7grEimpnc0XrrKpj2SX1w_TLtgNg@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in
 eb_release_vmas
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com, 
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com, 
 simona@ffwll.ch, andi.shyti@linux.intel.com, ville.syrjala@linux.intel.com, 
 nitin.r.gote@intel.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 02 Oct 2025 13:12:48 +0000
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

Ok, I will do it.

Best Regards,
GangMin Kim.

2025=EB=85=84 9=EC=9B=94 30=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 6:17, J=
oonas Lahtinen
<joonas.lahtinen@linux.intel.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
> Hi,
>
> Can you please open a bug as per the instructions in:
>
> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>
> Thanks in advance!
>
> Regards, Joonas
