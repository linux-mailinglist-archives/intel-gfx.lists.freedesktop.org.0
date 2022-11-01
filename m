Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA22A61546A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 22:48:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CED10E427;
	Tue,  1 Nov 2022 21:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD5E10E427
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 21:48:09 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id p16so4040488wmc.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Nov 2022 14:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Xyu+/ufH3fYbluVnuh1FycRyonaiDEWqgxo/KpA5re0=;
 b=aNXdS51UK05mPSrrcmYvBPihbzUWvyvV907qErqGoijLHlBl5DETXuObm5tsz3UCDM
 wyrrgNSaXKnaDT73/RcN3mJOngb2H/U2vtgjpDiWAIo6p2SzwOvaNDn0BMDD2gncq8Bf
 xwjTefN+rjFgUXNdxD+ij05TjFZZ65IQjANQXEvssvA5Xp4D6QRAzBIqO5xf8Wsk2h5T
 sUTUI2EQ2x7RunGafcXahkFmF4EP5sHJDxqyoWzzBWjuuxtzuGyge5pk3Ky6y0smAT4z
 XvABmWGhNpugwpUePfZeTHoT6Ngh9SCjn31ls6GA0ZTJB51I7NgcGpqTQAmCw//y3Vw4
 t9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Xyu+/ufH3fYbluVnuh1FycRyonaiDEWqgxo/KpA5re0=;
 b=JzJG0fcpMbA0C93uFpgaMKQwItzjz/X6zjtY6q3yZh0IoyryJE/pzi9fM47sZT9r5U
 9XnvX2mM0qvAL57RazdUwzVADfNBFjtcC1ryWk04b2v8yCAUE9gfjeK8IGNEeJcuxhHu
 mMZQf2T4R/ItKYdwJScGoXr+mlEK+dy3cDXOWSyhmdg9tqCaNWKo5GcksuGkze6GDfvM
 211uIACDG46CvQ3GjMuwWqpQjCzRVZpUpZlJg5JEVKbCD+DjnoS1mPVAH2HE3v2saLei
 GidFOl9kCQQ1J9v3EzzHyX+F17Qoo5uO8mOuAlD9ILr8YIMUGnulmmkiF5nUj6T6l5ak
 pnXg==
X-Gm-Message-State: ACrzQf2FZK0RiIu5W692snDQRDYrNb6NffMPclCn4f7FWO19TywlcDP1
 ljinBGUvCwfila/ecvE4N4RjZSuOScX8ag==
X-Google-Smtp-Source: AMsMyM5YVunQ0TI5WzBmi6Ftr/LgyuU6zHbbO3jcUQU2wcyNo8y9PtUMbQC14CS7bUDhvH7zOHVilQ==
X-Received: by 2002:a05:600c:4588:b0:3c6:f645:dad0 with SMTP id
 r8-20020a05600c458800b003c6f645dad0mr13847340wmo.114.1667339287151; 
 Tue, 01 Nov 2022 14:48:07 -0700 (PDT)
Received: from suse.localnet (host-79-43-11-206.retail.telecomitalia.it.
 [79.43.11.206]) by smtp.gmail.com with ESMTPSA id
 t2-20020a05600c41c200b003c21ba7d7d6sm11135591wmh.44.2022.11.01.14.48.05
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Nov 2022 14:48:06 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Nov 2022 22:48:05 +0100
Message-ID: <2665295.mvXUDI8C0e@suse>
In-Reply-To: <166603821088.13569.2827876193913746967@emeril.freedesktop.org>
References: <20221016180938.17403-1-fmdefrancesco@gmail.com>
 <166603821088.13569.2827876193913746967@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915=3A_Replace_kmap=28=29_with_kmap=5Flocal=5Fpage=28=29_?=
 =?utf-8?b?KHJldjIp?=
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

On luned=EC 17 ottobre 2022 22:23:30 CET Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Replace kmap() with kmap_local_page() (rev2)
> URL   : https://patchwork.freedesktop.org/series/107277/
> State : warning
>=20
> =3D=3D Summary =3D=3D
>=20
> Error: dim sparse failed
> Sparse version: v0.6.2
> Fast mode used, each commit won't be checked separately.

I received this and other messages with regards to the same series, however=
,=20
after due inspection of my patches, I haven't yet been able to understand w=
hat=20
these reports may mean or even if they are reporting bugs.

Can anyone please provide any help?

Thanks,

=46abio

P.S.: Similar requests for the other messages will follow ASAP.




