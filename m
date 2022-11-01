Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A55261544C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 22:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF08510E010;
	Tue,  1 Nov 2022 21:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CCC10E010
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 21:34:04 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id h9so21943920wrt.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Nov 2022 14:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vFge8UC7yO+DBCOzBlZLD4s17KrsZKNpjE0SBXuniJA=;
 b=BCgWfy6IdzAcsw9TET180WJT8rw8sj3RuYbro3n0XLWlZwFBSHjLqitRhIv4lTgwLd
 JAm613mNWxtAjhnPnC4wR1BSABfJyKd0ieXV/NnmBxuRyD3icSWj8lYwCcPZz4b0Gpxk
 rhU2+PvRcNThNlT/MG53shuFAF7Z4KzSB5AtDHKvht6RwiOgQ1orBNvQjLud3r4F9us1
 bAsCUFgiOvozXy4vNLIb6d2LxWmtSVmkgxDWGBa5IHaiLYfr7KPCtVpcVdtzZupnhEph
 FCg9tbm9pgMl1tXgcKfDrSa1RoCScd8sPgdWz50etl6Ox1MnCdWiF05IBxqKL15wTMNV
 M2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vFge8UC7yO+DBCOzBlZLD4s17KrsZKNpjE0SBXuniJA=;
 b=rSR4AY1H3hxO6sZePTQPoq679UUvd6ozlSN1qsEsl+8uzHT4etAF9t+AAtXimQZXck
 Xf7s3HKwXKc4QXtpT9ccFuNre1bzBdLk5dCYEyo9inyiFyQ4/hUEsXHjqWspsbENHP5X
 3WpcUXKkFzc0RbvgUmTXQaZbbk6uGY9I9yVqhTs6BncJx9zEOSL1rZtVDruRs4kH5CLR
 b4DmiPY0MjBlvlDolPhNazMDRs/Mb6iv6bu9TFOOVRdt9cb1Tp6PVvU30qtcIamP5FlK
 SRl3UEqw3tTnM7g728jLu5yRN4OFWgWlWo32dJV+/KlaPsK35aiIlzd4aGvgHrOlHiYv
 GUYQ==
X-Gm-Message-State: ACrzQf2r6c9PaQgrRG1lWkau03RVmnhgE8mLQiZ95PGgDK8q/D96TErq
 0TL6t/JEcthOyaviolooFjxhTDbVdiURjw==
X-Google-Smtp-Source: AMsMyM75CBy7EKzYAAkjzE/kL0RkhMbC9+bbSW0VYn5SpH+es/j+6/LRlMSBR+f3rH5kHNKosyz+/Q==
X-Received: by 2002:a5d:5942:0:b0:225:7425:4e39 with SMTP id
 e2-20020a5d5942000000b0022574254e39mr12669591wri.566.1667338442484; 
 Tue, 01 Nov 2022 14:34:02 -0700 (PDT)
Received: from suse.localnet (host-79-43-11-206.retail.telecomitalia.it.
 [79.43.11.206]) by smtp.gmail.com with ESMTPSA id
 bx10-20020a5d5b0a000000b0022e47b57735sm11380239wrb.97.2022.11.01.14.34.00
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Nov 2022 14:34:01 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Nov 2022 22:34:00 +0100
Message-ID: <12093903.O9o76ZdvQC@suse>
In-Reply-To: <166603888465.13569.4419851095635257064@emeril.freedesktop.org>
References: <20221016180938.17403-1-fmdefrancesco@gmail.com>
 <166603888465.13569.4419851095635257064@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Replace_kmap=28=29_with_kmap=5Flocal=5Fpage=28=29_=28r?=
 =?utf-8?q?ev2=29?=
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

On luned=EC 17 ottobre 2022 22:34:44 CET Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Replace kmap() with kmap_local_page() (rev2)
> URL   : https://patchwork.freedesktop.org/series/107277/
> State : success
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_12252 -> Patchwork_107277v2
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **SUCCESS**
>=20
>   No regressions found.
>=20
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277=
v2/
index.html
>=20
> Participating hosts (46 -> 43)
> ------------------------------
>=20
>   Additional (1): fi-icl-u2
>   Missing    (4): fi-bxt-dsi fi-cfl-8700k bat-atsm-1 fi-bdw-samus
>=20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_107277v2 that come from known=20
issues:
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@gem_exec_gttfill@basic:
>     - fi-pnv-d510:        [PASS][1] -> [FAIL][2] ([i915#7229])
>    [1]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12252/fi-pnv-d510/
igt@gem_exec_gttfill@
> basic.html [2]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-pnv-d510/
igt@gem_exec_gt
> tfill@basic.html
>=20
>   * igt@gem_linear_blits@basic:
>     - fi-pnv-d510:        [PASS][3] -> [SKIP][4] ([fdo#109271])
>    [3]:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12252/fi-pnv-d510/
igt@gem_linear_blits@
> basic.html [4]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-pnv-d510/
igt@gem_linear_
> blits@basic.html
>=20
>   * igt@runner@aborted:
>     - fi-icl-u2:          NOTRUN -> [FAIL][5] ([i915#7220])
>    [5]:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/fi-icl-u2/
igt@runner@aborte
> d.html
>=20
>=20
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109271
>   [i915#7220]: https://gitlab.freedesktop.org/drm/intel/issues/7220
>   [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
>=20
>=20
> Build changes
> -------------
>=20
>   * Linux: CI_DRM_12252 -> Patchwork_107277v2
>=20
>   CI-20190529: 20190529
>   CI_DRM_12252: 14867082ef288af10c90732e31b633af30e304c0 @
> git://anongit.freedesktop.org/gfx-ci/linux IGT_7017:
> 193c8bdd7df32556129482c52011e1b7a233b699 @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git Patchwork_107277v2:
> 14867082ef288af10c90732e31b633af30e304c0 @ git://anongit.freedesktop.org/
gfx-ci/linux
>=20
>=20
> ### Linux commits
>=20
> 83c34dd3b2a2 drm/i915/gem: Replace kmap() with kmap_local_page()
> ade39e0c9963 drm/i915/gt: Replace kmap() with kmap_local_page()
> cd89efceb13c drm/i915: Replace kmap() with kmap_local_page()
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107277v2/index.html

This is the second of the three messages with regards to the same series.
My kind request is the same of the previous...

Can anyone please provide any help?

Thanks,

=46abio





