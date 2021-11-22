Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FE2459043
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 15:32:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55AEC89D9A;
	Mon, 22 Nov 2021 14:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A4D89D9A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:32:14 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id f20so16652335qtb.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 06:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zU64u3HXafIKmK30fWNJ+AeYZ8AO3/oMPeRF5mTX/TA=;
 b=nZz7dskCZ6FR2hqjme37Td1EkNYBDHa+DBTu633++Fkc+k5cFdX/BVOeOE6aQ79ZPw
 xNuw78tcnzIc8wXiJrKA44z/zY44i471vANkY6TqEbfMgLaoiz/DHevahauwx/MpBGrV
 qu0VcJtzKTv5utswX0Krih3oACi7Hb2cf1j+hR3x9nS/h4oORQcPIWduCL+pQXZqK+dQ
 UA03QykW/YpQqE6Uc0i1+F14ByXzaXGmE0tkGp5mASVxzv4wBSWmT1Zs36BzoBqaet94
 1FJ2oI7Ur+PwA58o6NoWYMpZ9GsoRTPXtdiSQC19lAbS/er8LNzCPdtOgJbXTq032hL3
 CmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zU64u3HXafIKmK30fWNJ+AeYZ8AO3/oMPeRF5mTX/TA=;
 b=DUF38CFZwzB9rnqBTjFUqAfe31faLyMj5CRQXEAFoEEyVYlfxBQaEj6Xxo7fyK2QSY
 XrtAQp9zNCALfT3UbOfWKtD27KlVcRL5kxbe2kLEIgffN3YGBEWaNtXwLRHk4CIqK+ds
 KIG2jww6DORGkm4Fw44zlsDD1AipUGOwfKJuvhH2WZqbKr2PjwvUMdyKSMfscF44mHM4
 ms3fA2dbtCRHchZU+GOH9M0+i7aJELzr5nb8N16TiLnQylviTfj6Loup8GTHTUgj2dCC
 MBoKhUl0XAdw4EVj9vM3ZlUl1/PefcLyAozRdtTZZJ2s0uIpKb60Kjs84zz/W1MOoDRA
 b83w==
X-Gm-Message-State: AOAM532hCRptd9C4DkkTGTppBM8mvVVpqAtLB7ZhgMt2QqcOuTm60Hi8
 Rdp4N1duzG6AtlXhkmJiR6wcAQVxD4ameOpPnpc=
X-Google-Smtp-Source: ABdhPJzTu7neS0IGBcc/LRIe08Calj71l12CyFxjshQkrRhNdLczKvCXWmO2lEhYLC+ucDdDNjhCcTWg0odqR0Bya8g=
X-Received: by 2002:ac8:5a01:: with SMTP id n1mr32107163qta.13.1637591533719; 
 Mon, 22 Nov 2021 06:32:13 -0800 (PST)
MIME-Version: 1.0
References: <20211122061438.GA2492@kili>
 <163759011978.5692.17677605074846455044@emeril.freedesktop.org>
 <20211122142059.GC10517@kadam>
In-Reply-To: <20211122142059.GC10517@kadam>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 22 Nov 2021 14:31:47 +0000
Message-ID: <CAM0jSHOrO1omJfrN-vYFzyKy++ymy9EFf8efEC6ens5JPLs7_w@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, lakshminarayana.vudum@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915/ttm=3A_Fix_error_code_in_i915=5Fttm=5Feviction=5Fv?=
	=?utf-8?b?YWx1YWJsZSgp?=
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 Nov 2021 at 14:21, Dan Carpenter <dan.carpenter@oracle.com> wrot=
e:
>
> On Mon, Nov 22, 2021 at 02:08:39PM -0000, Patchwork wrote:
> > =3D=3D Series Details =3D=3D
> >
> > Series: drm/i915/ttm: Fix error code in i915_ttm_eviction_valuable()
> > URL   : https://patchwork.freedesktop.org/series/97151/
> > State : failure
>
> Who is supposed to be reading these?  I feel like there should be a
> human reading them but it's not me...  The system is broken, but who is
> fixing it?
>
> regards,
> dan carpenter
>
> >
> > =3D=3D Summary =3D=3D
> >
> > CI Bug Log - changes from CI_DRM_10911_full -> Patchwork_21650_full
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> >
> > Summary
> > -------
> >
> >   **FAILURE**
> >
> >   Serious unknown changes coming with Patchwork_21650_full absolutely n=
eed to be
> >   verified manually.
> >
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_21650_full, please notify your bug team to al=
low them
> >   to document this new failure mode, which will reduce false positives =
in CI.
> >
> >
> >
> > Participating hosts (11 -> 11)
> > ------------------------------
> >
> >   No changes in participating hosts
> >
> > Possible new issues
> > -------------------
> >
> >   Here are the unknown changes that may have been introduced in Patchwo=
rk_21650_full:
> >
> > ### IGT changes ###
> >
> > #### Possible regressions ####
> >
> >   * igt@kms_flip@dpms-vs-vblank-race-interruptible@b-dp1:
> >     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-kbl=
2/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-dp1.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard-=
kbl7/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-dp1.html

Lakshmi, this one is for sure a false positive. Patch pushed to
drm-intel-gt-next. Thanks.

> >
> >
> > Known issues
> > ------------
> >
> >   Here are the changes found in Patchwork_21650_full that come from kno=
wn issues:
> >
> > ### CI changes ###
> >
> > #### Possible fixes ####
> >
> >   * boot:
> >     - shard-glk:          ([FAIL][3], [PASS][4], [PASS][5], [PASS][6], =
[PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS]=
[13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19=
], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], =
[PASS][26], [PASS][27]) ([i915#4392]) -> ([PASS][28], [PASS][29], [PASS][30=
], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], =
[PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PA=
SS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS]=
[49], [PASS][50], [PASS][51], [PASS][52])
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk=
3/boot.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk=
9/boot.html
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk=
9/boot.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk=
9/boot.html
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk=
8/boot.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk=
8/boot.html
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-glk=
8/boot.html
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k7/boot.html
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k7/boot.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k7/boot.html
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k6/boot.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k6/boot.html
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k5/boot.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k5/boot.html
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k4/boot.html
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k4/boot.html
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k4/boot.html
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k3/boot.html
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k3/boot.html
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k3/boot.html
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k2/boot.html
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k2/boot.html
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k1/boot.html
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k1/boot.html
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k1/boot.html
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk8/boot.html
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk1/boot.html
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk1/boot.html
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk1/boot.html
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk2/boot.html
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk2/boot.html
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk2/boot.html
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk3/boot.html
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk3/boot.html
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk3/boot.html
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk4/boot.html
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk4/boot.html
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk4/boot.html
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk5/boot.html
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk5/boot.html
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk6/boot.html
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk6/boot.html
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk6/boot.html
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk7/boot.html
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk7/boot.html
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk9/boot.html
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk9/boot.html
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk9/boot.html
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk8/boot.html
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk8/boot.html
> >
> >
> >
> > ### IGT changes ###
> >
> > #### Issues hit ####
> >
> >   * igt@gem_eio@unwedge-stress:
> >     - shard-iclb:         NOTRUN -> [TIMEOUT][53] ([i915#2369] / [i915#=
2481] / [i915#3070])
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@gem_eio@unwedge-stress.html
> >
> >   * igt@gem_exec_capture@pi@rcs0:
> >     - shard-iclb:         [PASS][54] -> [INCOMPLETE][55] ([i915#2369] /=
 [i915#3371])
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-ic=
lb6/igt@gem_exec_capture@pi@rcs0.html
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb2/igt@gem_exec_capture@pi@rcs0.html
> >
> >   * igt@gem_exec_fair@basic-deadline:
> >     - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#2846])
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-kbl1/igt@gem_exec_fair@basic-deadline.html
> >
> >   * igt@gem_exec_fair@basic-none-rrul@rcs0:
> >     - shard-iclb:         NOTRUN -> [FAIL][57] ([i915#2842])
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> >
> >   * igt@gem_exec_fair@basic-none-share@rcs0:
> >     - shard-kbl:          [PASS][58] -> [SKIP][59] ([fdo#109271])
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-kb=
l4/igt@gem_exec_fair@basic-none-share@rcs0.html
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html
> >
> >   * igt@gem_exec_fair@basic-pace@rcs0:
> >     - shard-tglb:         [PASS][60] -> [FAIL][61] ([i915#2842])
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-tg=
lb3/igt@gem_exec_fair@basic-pace@rcs0.html
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
> >
> >   * igt@gem_exec_fair@basic-throttle@rcs0:
> >     - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2842]) +1 sim=
ilar issue
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-gl=
k5/igt@gem_exec_fair@basic-throttle@rcs0.html
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
> >     - shard-iclb:         [PASS][64] -> [FAIL][65] ([i915#2849])
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-ic=
lb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> >
> >   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> >     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109313])
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> >
> >   * igt@gem_pread@exhaustion:
> >     - shard-apl:          NOTRUN -> [WARN][67] ([i915#2658])
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-apl4/igt@gem_pread@exhaustion.html
> >
> >   * igt@gem_pwrite@basic-exhaustion:
> >     - shard-iclb:         NOTRUN -> [WARN][68] ([i915#2658])
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb7/igt@gem_pwrite@basic-exhaustion.html
> >
> >   * igt@gem_pxp@create-protected-buffer:
> >     - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#4270]) +2 similar=
 issues
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@gem_pxp@create-protected-buffer.html
> >
> >   * igt@gem_pxp@create-regular-context-2:
> >     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#4270]) +3 similar=
 issues
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb3/igt@gem_pxp@create-regular-context-2.html
> >
> >   * igt@gem_render_copy@linear-to-vebox-y-tiled:
> >     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +99 simil=
ar issues
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-apl4/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> >
> >   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
> >     - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +121 simi=
lar issues
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-kbl2/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> >
> >   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
> >     - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#768])
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> >
> >   * igt@gem_userptr_blits@input-checking:
> >     - shard-apl:          NOTRUN -> [DMESG-WARN][74] ([i915#3002])
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-apl1/igt@gem_userptr_blits@input-checking.html
> >     - shard-kbl:          NOTRUN -> [DMESG-WARN][75] ([i915#3002])
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-kbl1/igt@gem_userptr_blits@input-checking.html
> >
> >   * igt@gem_userptr_blits@vma-merge:
> >     - shard-apl:          NOTRUN -> [FAIL][76] ([i915#3318])
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-apl7/igt@gem_userptr_blits@vma-merge.html
> >     - shard-iclb:         NOTRUN -> [FAIL][77] ([i915#3318])
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@gem_userptr_blits@vma-merge.html
> >     - shard-tglb:         NOTRUN -> [FAIL][78] ([i915#3318])
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb5/igt@gem_userptr_blits@vma-merge.html
> >
> >   * igt@gen9_exec_parse@allowed-all:
> >     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2856]) +2 similar=
 issues
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb6/igt@gen9_exec_parse@allowed-all.html
> >
> >   * igt@gen9_exec_parse@unaligned-jump:
> >     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2856])
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@gen9_exec_parse@unaligned-jump.html
> >
> >   * igt@i915_module_load@reload-with-fault-injection:
> >     - shard-skl:          [PASS][81] -> [DMESG-WARN][82] ([i915#1982])
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-sk=
l5/igt@i915_module_load@reload-with-fault-injection.html
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-skl9/igt@i915_module_load@reload-with-fault-injection.html
> >
> >   * igt@i915_pm_rpm@system-suspend:
> >     - shard-kbl:          [PASS][83] -> [INCOMPLETE][84] ([i915#151])
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-kb=
l6/igt@i915_pm_rpm@system-suspend.html
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-kbl4/igt@i915_pm_rpm@system-suspend.html
> >
> >   * igt@i915_suspend@fence-restore-tiled2untiled:
> >     - shard-tglb:         [PASS][85] -> [INCOMPLETE][86] ([i915#456] / =
[i915#750])
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-tg=
lb2/igt@i915_suspend@fence-restore-tiled2untiled.html
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html
> >
> >   * igt@kms_big_fb@linear-32bpp-rotate-90:
> >     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#110725] / [fdo#111=
614])
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@kms_big_fb@linear-32bpp-rotate-90.html
> >
> >   * igt@kms_big_fb@linear-8bpp-rotate-90:
> >     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111614]) +1 simila=
r issue
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb6/igt@kms_big_fb@linear-8bpp-rotate-90.html
> >
> >   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> >     - shard-skl:          NOTRUN -> [FAIL][89] ([i915#3743]) +1 similar=
 issue
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> >
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> >     - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#37=
77]) +1 similar issue
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> >
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> >     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#37=
77])
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> >     - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#37=
77])
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> >
> >   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
> >     - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#110723])
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
> >
> >   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
> >     - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#111615])
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> >
> >   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3689] / [i915#388=
6])
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> >
> >   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
> >     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#38=
86]) +7 similar issues
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-apl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> >
> >   * igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#111615] / [i915#36=
89])
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-tglb3/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html
> >
> >   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> >     - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#38=
86]) +7 similar issues
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> >
> >   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc=
:
> >     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278] / [i915#38=
86]) +1 similar issue
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shard=
-iclb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.=
html
> >
> >   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3=
886]) +2 similar issues
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> >
> >   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#3689]) +1 simila=
r issue
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb3/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html
> >
> >   * igt@kms_cdclk@plane-scaling:
> >     - shard-tglb:         NOTRUN -> [SKIP][102] ([i915#3742])
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb6/igt@kms_cdclk@plane-scaling.html
> >
> >   * igt@kms_chamelium@hdmi-aspect-ratio:
> >     - shard-glk:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#11=
1827]) +3 similar issues
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-glk9/igt@kms_chamelium@hdmi-aspect-ratio.html
> >     - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#11=
1827]) +8 similar issues
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl7/igt@kms_chamelium@hdmi-aspect-ratio.html
> >
> >   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
> >     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#11=
1827]) +8 similar issues
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> >     - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109284] / [fdo#11=
1827]) +3 similar issues
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb5/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> >
> >   * igt@kms_color_chamelium@pipe-b-gamma:
> >     - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109284] / [fdo#11=
1827]) +2 similar issues
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html
> >
> >   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
> >     - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [fdo#11=
1827]) +7 similar issues
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-kbl1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> >
> >   * igt@kms_content_protection@dp-mst-type-0:
> >     - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#3116])
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb5/igt@kms_content_protection@dp-mst-type-0.html
> >     - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#3116])
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb6/igt@kms_content_protection@dp-mst-type-0.html
> >
> >   * igt@kms_content_protection@uevent:
> >     - shard-kbl:          NOTRUN -> [FAIL][111] ([i915#2105])
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-kbl2/igt@kms_content_protection@uevent.html
> >
> >   * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
> >     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278] / [fdo#10=
9279])
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html
> >
> >   * igt@kms_cursor_crc@pipe-b-cursor-max-size-random:
> >     - shard-glk:          NOTRUN -> [SKIP][113] ([fdo#109271]) +38 simi=
lar issues
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-glk9/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html
> >
> >   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
> >     - shard-kbl:          [PASS][114] -> [DMESG-WARN][115] ([i915#180])
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-k=
bl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> >
> >   * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
> >     - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#3319]) +4 simila=
r issues
> >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html
> >
> >   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
> >     - shard-skl:          [PASS][117] -> [INCOMPLETE][118] ([i915#300])
> >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-s=
kl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> >
> >   * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
> >     - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109279] / [i915#3=
359])
> >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html
> >
> >   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
> >     - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109278]) +21 simi=
lar issues
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
> >
> >   * igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:
> >     - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#3359]) +1 simila=
r issue
> >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb5/igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement.html
> >
> >   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-siz=
e:
> >     - shard-iclb:         NOTRUN -> [FAIL][122] ([i915#2370])
> >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-siz=
e.html
> >
> >   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
> >     - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109274] / [fdo#10=
9278]) +2 similar issues
> >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> >
> >   * igt@kms_fbcon_fbt@psr-suspend:
> >     - shard-tglb:         [PASS][124] -> [INCOMPLETE][125] ([i915#2411]=
 / [i915#456])
> >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-t=
glb8/igt@kms_fbcon_fbt@psr-suspend.html
> >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb7/igt@kms_fbcon_fbt@psr-suspend.html
> >
> >   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
> >     - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109274]) +3 simil=
ar issues
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> >
> >   * igt@kms_flip@flip-vs-suspend@a-dp1:
> >     - shard-apl:          NOTRUN -> [DMESG-WARN][127] ([i915#180]) +2 s=
imilar issues
> >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
> >
> >   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
> >     - shard-skl:          [PASS][128] -> [FAIL][129] ([i915#2122])
> >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-s=
kl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> >
> >   * igt@kms_frontbuffer_tracking@fbc-suspend:
> >     - shard-tglb:         [PASS][130] -> [INCOMPLETE][131] ([i915#2828]=
 / [i915#456])
> >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-t=
glb1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> >
> >   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
> >     - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271]) +117 sim=
ilar issues
> >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> >
> >   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
> >     - shard-tglb:         NOTRUN -> [SKIP][133] ([fdo#111825]) +14 simi=
lar issues
> >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.htm=
l
> >
> >   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc=
:
> >     - shard-iclb:         NOTRUN -> [SKIP][134] ([fdo#109280]) +10 simi=
lar issues
> >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc=
.html
> >
> >   * igt@kms_hdr@bpc-switch:
> >     - shard-skl:          NOTRUN -> [FAIL][135] ([i915#1188])
> >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl4/igt@kms_hdr@bpc-switch.html
> >
> >   * igt@kms_hdr@static-swap:
> >     - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#1187])
> >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb3/igt@kms_hdr@static-swap.html
> >     - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#1187])
> >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb7/igt@kms_hdr@static-swap.html
> >
> >   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
> >     - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109289])
> >    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb3/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> >
> >   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
> >     - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#5=
33]) +1 similar issue
> >    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-apl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> >
> >   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
> >     - shard-kbl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#5=
33])
> >    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-kbl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> >
> >   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
> >     - shard-kbl:          NOTRUN -> [DMESG-WARN][141] ([i915#180])
> >    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> >
> >   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> >     - shard-apl:          [PASS][142] -> [DMESG-WARN][143] ([i915#180])
> >    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-a=
pl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> >    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> >
> >   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> >     - shard-tglb:         [PASS][144] -> [INCOMPLETE][145] ([i915#456])
> >    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10911/shard-t=
glb3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> >    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> >
> >   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> >     - shard-skl:          NOTRUN -> [FAIL][146] ([fdo#108145] / [i915#2=
65]) +1 similar issue
> >    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> >
> >   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> >     - shard-skl:          NOTRUN -> [FAIL][147] ([i915#265])
> >    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> >
> >   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> >     - shard-apl:          NOTRUN -> [FAIL][148] ([fdo#108145] / [i915#2=
65])
> >    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-apl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> >
> >   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> >     - shard-kbl:          NOTRUN -> [FAIL][149] ([fdo#108145] / [i915#2=
65]) +1 similar issue
> >    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-kbl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> >
> >   * igt@kms_plane_lowres@pipe-c-tiling-yf:
> >     - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#111615] / [fdo#11=
2054])
> >    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-tglb3/igt@kms_plane_lowres@pipe-c-tiling-yf.html
> >
> >   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-w=
ith-clipping-clamping:
> >     - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2=
733])
> >    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-wi=
th-clipping-clamping.html
> >
> >   * igt@kms_psr2_sf@cursor-plane-update-sf:
> >     - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#6=
58]) +1 similar issue
> >    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-apl1/igt@kms_psr2_sf@cursor-plane-update-sf.html
> >     - shard-kbl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#6=
58]) +2 similar issues
> >    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-kbl1/igt@kms_psr2_sf@cursor-plane-update-sf.html
> >
> >   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
> >     - shard-iclb:         NOTRUN -> [SKIP][154] ([i915#658]) +1 similar=
 issue
> >    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21650/shar=
d-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> >     - shard-tglb:         NOTRUN -> [SKIP][155] ([i915#
> >
> > =3D=3D Logs =3D=3D
> >
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21650/index.html
