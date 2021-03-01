Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7C532815D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 15:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7675389D64;
	Mon,  1 Mar 2021 14:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6751C6E581
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 10:11:17 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id l22so3351794wme.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Mar 2021 02:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MX15dBiXZcWyzGAvFkLUhEhdCV72/Xas5u1znK0dMvo=;
 b=rz8TKO5aIm0lGNGLoIJ6g2LZ6mkBp/InvHapV2RQ56HPWwABOPTeN1hP9F6GW3abf1
 msm/oDG8qqAN5B1Ol/NSv2NeilnG6cZN3qlkZ+zAb7ui4faJhHUZRZ53IY58qPyWYx5M
 5xtauoX7zVnWWHfg5oIAbYClCOmd3L/EXiezSG1CaeHx+l6rI9g2X4XqJX0sRQfLS+Wj
 QvzUmwMGuGQymH2WuaWea1J4sswrjU5BT+ixrk/UCruJZj9GJnXTSaLpABi2xWhtKuzU
 BzzFK6yM68L3aV9NcbN3T794EVrwrA4W1a22UzWXCgUH5wGbgCfEK5kZr59J1wN9rD1G
 Vtlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MX15dBiXZcWyzGAvFkLUhEhdCV72/Xas5u1znK0dMvo=;
 b=Jfu3+fNl4HJV59nEZw1XajpDoU8t5Sqdk7ix9qNC+kGt0GgKP4Pt95HFA/sKgX55tx
 Lgp7XZ0Ab+ejoGbWp0BsMOty8Eg7hG28fJ7zkwMBakx/0MoNloCsSpVhv/vMnKNndZAx
 F7lTLa69/18VYBKmsqX+OI4Snan9IMwKCRYyNWDFhEtZ6IAX/1XqdpYfkE6+DDEBK+RM
 Dw910qgBRlYRhu7wOqa1eunzZLKuBJRuaJgyfwk9RjEjdIZA3sF+vZ3sszasWSwjdbLJ
 TMA1/qy+nVGlM3dY1NBOEEIM2zxZmnQOOFo8dxCjOd9aFCJ8tY1stlptx4VER1/c2o6U
 G8Wg==
X-Gm-Message-State: AOAM530qEoTj4pWTTSAO1gc123K11q2FfX35ZXtB+BziFsXAsFvduNG8
 /mwnCVbzDxXXXqcMnsz7ENaiZoPlxuw=
X-Google-Smtp-Source: ABdhPJylH92j0+/cB/cJVh9sPvVbryZ/lnJ8NjoeB/vnuY9rnQ4t8z2WXNlKjurEyhPUUNxYtyJ4qw==
X-Received: by 2002:a1c:7301:: with SMTP id d1mr14910413wmb.33.1614593476136; 
 Mon, 01 Mar 2021 02:11:16 -0800 (PST)
Received: from archlinux.localnet (80.142.94.90.dynamic.jazztel.es.
 [90.94.142.80])
 by smtp.gmail.com with ESMTPSA id l15sm8530242wme.43.2021.03.01.02.11.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 02:11:15 -0800 (PST)
From: Diego Calleja <diegocg@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Mon, 01 Mar 2021 11:11:13 +0100
Message-ID: <1969510.QSeQnKm9EC@archlinux>
In-Reply-To: <YDyvNoiRAQwT4boR@kroah.com>
References: <3423617.kz1aARBMGD@archlinux> <1911334.sV3ZJath2r@archlinux>
 <YDyvNoiRAQwT4boR@kroah.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 01 Mar 2021 14:52:13 +0000
Subject: Re: [Intel-gfx] -stable regression in Intel graphics,
 introduced in Linux 5.10.9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

El lunes, 1 de marzo de 2021 10:09:10 (CET) Greg KH escribi=F3:
> I do not see all 3 commits in Linus's tree already, am I missing
> something?
> =

> What are the git ids that you are looking at?

I used grep on the git log, the commits are there but seem to have differen=
t commit ids (except for the first one)

commit e627d5923cae93fa4188f4c4afba6486169a1337
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Tue Jan 19 11:07:57 2021 +0000

    drm/i915/gt: One more flush for Baytrail clear residuals


commit d5109f739c9f14a3bda249cb48b16de1065932f0
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Mon Jan 25 22:02:47 2021 +0000

    drm/i915/gt: Flush before changing register state


commit 81ce8f04aa96f7f6cae05770f68b5d15be91f5a2
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Wed Feb 10 12:27:28 2021 +0000

    drm/i915/gt: Correct surface base address for renderclear


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
