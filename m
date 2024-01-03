Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0849822FE3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 15:52:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BE810E11D;
	Wed,  3 Jan 2024 14:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6B910E0C0;
 Wed,  3 Jan 2024 14:52:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2680287041795675495=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Add_workaround_?=
 =?utf-8?q?14019877138?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejas.upadhyay@intel.com>
Date: Wed, 03 Jan 2024 14:52:37 -0000
Message-ID: <170429355723.151.6014803042152779731@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240103053111.763172-1-tejas.upadhyay@intel.com>
In-Reply-To: <20240103053111.763172-1-tejas.upadhyay@intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2680287041795675495==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

=3D=3D Series Details =3D=3D

Series: drm/i915: Add workaround 14019877138
URL   : https://patchwork.freedesktop.org/series/128143/
State : failure

=3D=3D Summary =3D=3D

CI Bug Log - changes from CI_DRM_14072_full -> Patchwork_128143v1_full
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128143v1_full absolutely ne=
ed to be
  verified manually.
 =20
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128143v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in C=
I.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1=
/index.html

Participating hosts (8 -> 9)
------------------------------

  Additional (1): shard-snb-0=20

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_1=
28143v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][1] -> ([PASS][2], [ABORT][3], [PASS][4])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb2/ig=
t@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-s=
nb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-s=
nb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-s=
nb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:
    - shard-tglu:         [PASS][5] -> ([PASS][6], [INCOMPLETE][7], [PASS][=
8])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-10=
/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-t=
glu-9/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-t=
glu-6/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-t=
glu-5/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b:
    - shard-mtlp:         [PASS][9] -> ([ABORT][10], [PASS][11], [PASS][12])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-mtlp-2/=
igt@kms_plane@pixel-format-source-clamping@pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
mtlp-2/igt@kms_plane@pixel-format-source-clamping@pipe-b.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
mtlp-8/igt@kms_plane@pixel-format-source-clamping@pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-b.html

  * igt@prime_busy@hang-wait@vecs0:
    - shard-glk:          [PASS][13] -> ([INCOMPLETE][14], [PASS][15])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/i=
gt@prime_busy@hang-wait@vecs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk6/igt@prime_busy@hang-wait@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk8/igt@prime_busy@hang-wait@vecs0.html

 =20
New tests
---------

  New tests have been introduced between CI_DRM_14072_full and Patchwork_12=
8143v1_full:

### New IGT tests (5) ###

  * igt@kms_flip@flip-vs-expired-vblank@a-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.92] s

  * igt@kms_flip@flip-vs-expired-vblank@b-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.76] s

  * igt@kms_flip@flip-vs-panning-interruptible@a-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.84] s

  * igt@kms_flip@flip-vs-panning-interruptible@b-dp4:
    - Statuses : 1 pass(s)
    - Exec time: [7.79] s

  * igt@kms_psr:
    - Statuses :
    - Exec time: [None] s

 =20

Known issues
------------

  Here are the changes found in Patchwork_128143v1_full that come from know=
n issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][16], [PASS][17], [PASS][18], [PASS][19], =
[PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PA=
SS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS]=
[32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38=
]) -> ([PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL][4=
4], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50],=
 [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [P=
ASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS=
][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][6=
9], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75],=
 [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [P=
ASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS=
][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][9=
4], [PASS][95], [PASS][96]) ([i915#8293])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/b=
oot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/b=
oot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/b=
oot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/b=
oot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/b=
oot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/b=
oot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/b=
oot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/b=
oot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/b=
oot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/b=
oot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/b=
oot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/b=
oot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/b=
oot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/b=
oot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/b=
oot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/b=
oot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/b=
oot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/b=
oot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/b=
oot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/b=
oot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/b=
oot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/b=
oot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/b=
oot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk8/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk8/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk8/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk6/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk6/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk6/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk9/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk8/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk7/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk7/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk7/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk3/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
glk1/boot.html

 =20

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#8411]) +1 other test =
skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> ([SKIP][98], [SKIP][99], [SKIP][100]) (=
[i915#7701])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
mtlp-8/igt@device_reset@unbind-cold-reset-rebind.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-=
mtlp-7/igt@device_reset@unbind-cold-reset-rebind.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy@ccs0:
    - shard-dg2:          NOTRUN -> ([SKIP][101], [SKIP][102]) ([i915#8414]=
) +10 other tests ( 2 skip )
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@drm_fdinfo@busy@ccs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@drm_fdinfo@busy@ccs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#8414]) +19 other tes=
ts skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-dg1:          NOTRUN -> ([SKIP][104], [SKIP][105]) ([i915#8414])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@drm_fdinfo@virtual-busy-idle.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@fbdev@pan:
    - shard-snb:          [PASS][106] -> ([PASS][107], [PASS][108], [FAIL][=
109]) ([i915#4435])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb4/=
igt@fbdev@pan.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb4/igt@fbdev@pan.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb1/igt@fbdev@pan.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb7/igt@fbdev@pan.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> ([SKIP][110], [SKIP][111]) ([i915#3281]=
) +5 other tests ( 2 skip )
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> ([SKIP][112], [SKIP][113]) ([i915#9323])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@gem_ccs@block-multicopy-compressed.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][114] -> ([PASS][115], [INCOMPLETE][116]) (=
[i915#7297])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2-1=
0/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.h=
tml
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.ht=
ml

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][117] -> [INCOMPLETE][118] ([i915#7297])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2-1=
0/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.ht=
ml

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> ([SKIP][119], [SKIP][120]) ([i915#7697])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gem_close_race@multigpu-basic-process.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#7697])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> ([SKIP][122], [SKIP][123], [SKIP][124])=
 ([i915#6335])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gem_create@create-ext-cpu-access-big.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gem_create@create-ext-cpu-access-big.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@hog-create@smem0:
    - shard-mtlp:         NOTRUN -> ([FAIL][125], [FAIL][126]) ([i915#8758])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_create@hog-create@smem0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#109314])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-mtlp:         NOTRUN -> ([SKIP][128], [SKIP][129], [SKIP][130])=
 ([i915#8555])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gem_ctx_persistence@heartbeat-hang.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gem_ctx_persistence@heartbeat-hang.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> ([SKIP][131], [SKIP][132]) ([i915#8555])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@gem_ctx_persistence@heartbeat-hostile.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@legacy-engines-hostile:
    - shard-snb:          NOTRUN -> ([SKIP][133], [SKIP][134]) ([fdo#109271=
] / [i915#1099])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb6/igt@gem_ctx_persistence@legacy-engines-hostile.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb4/igt@gem_ctx_persistence@legacy-engines-hostile.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> ([SKIP][135], [SKIP][136]) ([i915#280])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@gem_ctx_sseu@invalid-sseu.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> ([SKIP][137], [SKIP][138]) ([i915#280])=
 +1 other test ( 2 skip )
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gem_ctx_sseu@mmap-args.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> ([PASS][139], [ABORT][140], [ABORT][141=
]) ([i915#7975] / [i915#8213])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_eio@hibernate.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_eio@hibernate.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg1:          NOTRUN -> ([FAIL][142], [FAIL][143]) ([i915#5784])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gem_eio@kms.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4771])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4812]) +1 other test=
 skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> ([SKIP][146], [SKIP][147]) ([i915#4525])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gem_exec_balancer@parallel-contexts.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> ([SKIP][148], [SKIP][149]) ([i915#6334]=
) +1 other test ( 2 skip )
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> ([SKIP][150], [SKIP][151], [SKIP][152])=
 ([fdo#109271] / [i915#6334])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk1/igt@gem_exec_capture@capture-invisible@smem0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk5/igt@gem_exec_capture@capture-invisible@smem0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-mtlp:         NOTRUN -> ([SKIP][153], [SKIP][154]) ([i915#6334])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_exec_capture@capture-invisible@smem0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-none:
    - shard-snb:          NOTRUN -> ([SKIP][155], [SKIP][156]) ([fdo#109271=
]) +70 other tests ( 2 skip )
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb6/igt@gem_exec_fair@basic-none.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb4/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> ([SKIP][157], [SKIP][158], [SKIP][159])=
 ([i915#3539] / [i915#4852])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_exec_fair@basic-none-share.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_exec_fair@basic-none-share.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          [PASS][160] -> ([FAIL][161], [PASS][162]) ([i915#=
2842])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl-4=
/igt@gem_exec_fair@basic-none-share@rcs0.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][163] -> ([FAIL][164], [PASS][165]) ([i915#=
2842])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/=
igt@gem_exec_fair@basic-pace-share@rcs0.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-mtlp:         NOTRUN -> ([SKIP][166], [SKIP][167], [SKIP][168])=
 ([i915#4473] / [i915#4771])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gem_exec_fair@basic-sync.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gem_exec_fair@basic-sync.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          NOTRUN -> ([FAIL][169], [FAIL][170]) ([i915#2842])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> ([SKIP][171], [SKIP][172]) ([i915#4812])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gem_exec_fence@submit.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-dg2:          NOTRUN -> ([SKIP][173], [SKIP][174]) ([i915#3539]=
 / [i915#4852]) +3 other tests ( 2 skip )
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
    - shard-dg1:          NOTRUN -> ([SKIP][175], [SKIP][176], [SKIP][177])=
 ([i915#3539] / [i915#4852])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> ([SKIP][178], [SKIP][179]) ([i915#3539])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> ([SKIP][180], [SKIP][181]) ([i915#3281]=
) +4 other tests ( 2 skip )
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
    - shard-mtlp:         NOTRUN -> ([SKIP][182], [SKIP][183]) ([i915#3281])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> ([SKIP][184], [SKIP][185], [SKIP][186])=
 ([i915#3281]) +3 other tests ( 3 skip )
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gem_exec_reloc@basic-gtt-noreloc.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gem_exec_reloc@basic-gtt-noreloc.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-dg1:          NOTRUN -> ([SKIP][187], [SKIP][188]) ([i915#3281])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gem_exec_reloc@basic-wc-read-active.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> ([SKIP][189], [SKIP][190], [SKIP][191])=
 ([i915#3281]) +1 other test ( 3 skip )
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gem_exec_reloc@basic-write-cpu-active.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@gem_exec_reloc@basic-write-cpu-active.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3281]) +3 other test=
s skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4537] / [i915#4812])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][194] -> ([ABORT][195], [ABORT][196], [ABOR=
T][197]) ([i915#7975] / [i915#8213])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2-1=
1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][198] -> ([PASS][199], [ABORT][200], [PASS]=
[201]) ([i915#7975] / [i915#8213])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-=
6/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-tglu:         [PASS][202] -> ([PASS][203], [INCOMPLETE][204], [=
PASS][205]) ([i915#6755] / [i915#7392] / [i915#9857])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-=
8/igt@gem_exec_whisper@basic-fds-forked-all.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-4/igt@gem_exec_whisper@basic-fds-forked-all.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-5/igt@gem_exec_whisper@basic-fds-forked-all.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-tglu:         [PASS][206] -> ([INCOMPLETE][207], [PASS][208]) (=
[i915#6755] / [i915#7392] / [i915#9857])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-=
8/igt@gem_exec_whisper@basic-fds-priority-all.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-2/igt@gem_exec_whisper@basic-fds-priority-all.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-4/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> ([SKIP][209], [SKIP][210]) ([i915#4860])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_fence_thrash@bo-write-verify-y.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html
    - shard-mtlp:         NOTRUN -> ([SKIP][211], [SKIP][212]) ([i915#4860])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_fence_thrash@bo-write-verify-y.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> ([SKIP][213], [SKIP][214]) ([fdo#109271=
] / [i915#2190])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@gem_huc_copy@huc-copy.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-rkl:          NOTRUN -> ([SKIP][215], [SKIP][216]) ([i915#4613]=
) +1 other test ( 2 skip )
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gem_lmem_swapping@heavy-multi.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@massive:
    - shard-glk:          NOTRUN -> ([SKIP][217], [SKIP][218], [SKIP][219])=
 ([fdo#109271] / [i915#4613])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@gem_lmem_swapping@massive.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk5/igt@gem_lmem_swapping@massive.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk1/igt@gem_lmem_swapping@massive.html
    - shard-mtlp:         NOTRUN -> ([SKIP][220], [SKIP][221]) ([i915#4613])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_lmem_swapping@massive.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> ([SKIP][222], [SKIP][223]) ([fdo#109271=
] / [i915#4613])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk7/igt@gem_lmem_swapping@random.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@gem_lmem_swapping@random.html
    - shard-mtlp:         NOTRUN -> ([SKIP][224], [SKIP][225], [SKIP][226])=
 ([i915#4613])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gem_lmem_swapping@random.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gem_lmem_swapping@random.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gem_lmem_swapping@random.html

  * igt@gem_mmap_gtt@basic:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#4077]) +6 other test=
s skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_mmap_gtt@basic.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> ([SKIP][228], [SKIP][229]) ([i915#4077]=
) +1 other test ( 2 skip )
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> ([SKIP][230], [SKIP][231]) ([i915#4077]=
) +13 other tests ( 2 skip )
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> ([SKIP][232], [SKIP][233]) ([i915#4077]=
) +1 other test ( 2 skip )
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gem_mmap_gtt@fault-concurrent.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg1:          NOTRUN -> ([SKIP][234], [SKIP][235], [SKIP][236])=
 ([i915#4077]) +3 other tests ( 3 skip )
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-13/igt@gem_mmap_gtt@zero-extend.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-17/igt@gem_mmap_gtt@zero-extend.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-19/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#4083])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_mmap_wc@read-write-distinct.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-mtlp:         NOTRUN -> ([SKIP][238], [SKIP][239], [SKIP][240])=
 ([i915#4083])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gem_mmap_wc@write-prefaulted.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gem_mmap_wc@write-prefaulted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][241], [SKIP][242]) ([i915#4083]=
) +3 other tests ( 2 skip )
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html
    - shard-mtlp:         NOTRUN -> ([SKIP][243], [SKIP][244]) ([i915#4083]=
) +2 other tests ( 2 skip )
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_mmap_wc@write-wc-read-gtt.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> ([SKIP][245], [SKIP][246]) ([i915#3282]=
) +3 other tests ( 2 skip )
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_partial_pwrite_pread@reads-uncached.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html
    - shard-dg1:          NOTRUN -> ([SKIP][247], [SKIP][248]) ([i915#3282])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gem_partial_pwrite_pread@reads-uncached.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#4270]) +1 other test=
 skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> ([SKIP][250], [SKIP][251]) ([i915#4270]=
) +2 other tests ( 2 skip )
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> ([SKIP][252], [SKIP][253]) ([i915#4270])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_readwrite@new-obj:
    - shard-dg1:          NOTRUN -> ([SKIP][254], [SKIP][255], [SKIP][256])=
 ([i915#3282])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-17/igt@gem_readwrite@new-obj.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-19/igt@gem_readwrite@new-obj.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-13/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][257], [SKIP][258], [SKIP][259])=
 ([i915#5190])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-glk:          NOTRUN -> [SKIP][260] ([fdo#109271]) +32 other te=
sts skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
    - shard-mtlp:         NOTRUN -> ([SKIP][261], [SKIP][262], [SKIP][263])=
 ([i915#8428]) +1 other test ( 3 skip )
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][264], [SKIP][265]) ([i915#4079])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-rkl:          NOTRUN -> ([SKIP][266], [SKIP][267]) ([fdo#109312=
])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@gem_softpin@evict-snoop-interruptible.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> ([SKIP][268], [SKIP][269]) ([i915#3282]=
) +1 other test ( 2 skip )
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> ([SKIP][270], [SKIP][271]) ([i915#3297])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gem_userptr_blits@coherency-unsync.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-mtlp:         NOTRUN -> ([SKIP][272], [SKIP][273]) ([i915#3282])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_userptr_blits@forbidden-operations.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> ([SKIP][274], [SKIP][275]) ([i915#3297]=
 / [i915#4880])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
    - shard-dg1:          NOTRUN -> ([SKIP][276], [SKIP][277]) ([i915#3297]=
 / [i915#4880])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3297]) +2 other test=
s skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg2:          NOTRUN -> ([SKIP][279], [SKIP][280]) ([i915#3297])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-mtlp:         NOTRUN -> ([SKIP][281], [SKIP][282]) ([i915#3297])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-mtlp:         NOTRUN -> ([SKIP][283], [SKIP][284], [SKIP][285])=
 ([fdo#109289])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gen7_exec_parse@basic-allocation.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gen7_exec_parse@basic-allocation.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-dg2:          NOTRUN -> ([SKIP][286], [SKIP][287]) ([fdo#109289=
]) +5 other tests ( 2 skip )
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@gen7_exec_parse@batch-without-end.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> ([SKIP][288], [SKIP][289]) ([fdo#109289=
])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@gen7_exec_parse@chained-batch.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@gen7_exec_parse@chained-batch.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-mtlp:         NOTRUN -> ([SKIP][290], [SKIP][291]) ([fdo#109289=
])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@gen7_exec_parse@load-register-reg.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          NOTRUN -> ([PASS][292], [INCOMPLETE][293]) ([i915=
#5566])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk7/igt@gen9_exec_parse@allowed-single.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> ([SKIP][294], [SKIP][295], [SKIP][296])=
 ([i915#2527])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> ([SKIP][297], [SKIP][298]) ([i915#2527])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#2856]) +1 other test=
 skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> ([SKIP][300], [SKIP][301]) ([i915#2856]=
) +3 other tests ( 2 skip )
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@gen9_exec_parse@unaligned-access.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@gen9_exec_parse@unaligned-access.html
    - shard-dg1:          NOTRUN -> ([SKIP][302], [SKIP][303]) ([i915#2527])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@gen9_exec_parse@unaligned-access.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@gen9_exec_parse@unaligned-access.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-mtlp:         NOTRUN -> ([SKIP][304], [SKIP][305], [SKIP][306])=
 ([i915#2856]) +1 other test ( 3 skip )
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@gen9_exec_parse@valid-registers.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@gen9_exec_parse@valid-registers.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> ([SKIP][307], [SKIP][308]) ([i915#6227])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@i915_module_load@load.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][309] -> ([PASS][310], [INCOMPLETE][311], [=
PASS][312]) ([i915#9849])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl-7=
/igt@i915_module_load@reload-with-fault-injection.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][313] -> ([INCOMPLETE][314], [INCOMPLETE][3=
15], [PASS][316]) ([i915#9200])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-=
2/igt@i915_module_load@reload-with-fault-injection.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-dg1:          NOTRUN -> ([SKIP][317], [SKIP][318], [SKIP][319])=
 ([fdo#109289])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][320] -> ([PASS][321], [FAIL][322]) ([i915#=
3591]) +2 other tests ( 1 fail, 1 pass )
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg1-1=
6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> ([SKIP][323], [SKIP][324]) ([fdo#109293=
] / [fdo#109506])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> ([SKIP][325], [SKIP][326], [SKIP][327])=
 ([i915#6621])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@i915_pm_rps@basic-api.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@i915_pm_rps@basic-api.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> ([SKIP][328], [SKIP][329], [SKIP][330])=
 ([i915#6621])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@i915_pm_rps@min-max-config-idle.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@i915_pm_rps@min-max-config-idle.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#6621])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> ([SKIP][332], [SKIP][333]) ([i915#6188])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          NOTRUN -> ([SKIP][334], [SKIP][335]) ([fdo#109303=
])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@i915_query@query-topology-known-pci-ids.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> ([DMESG-WARN][336], [DMESG-WARN][337]) =
([i915#9311])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@i915_selftest@mock@memory_region.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@i915_selftest@mock@memory_region.html
    - shard-dg1:          NOTRUN -> ([DMESG-WARN][338], [DMESG-WARN][339], =
[DMESG-WARN][340]) ([i915#9311])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@i915_selftest@mock@memory_region.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@i915_selftest@mock@memory_region.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][341] -> ([PASS][342], [FAIL][343], [PASS][=
344]) ([fdo#103375])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl-4=
/igt@i915_suspend@basic-s3-without-i915.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][345] ([i915#4212])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> ([PASS][346], [FAIL][347]) ([i915#2521])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-=
rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][348] ([i915#8709]) +3 other test=
s skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2=
-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-=
mc-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][349], [SKIP][350]) ([i915#8709]=
) +11 other tests ( 2 skip )
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3=
-4-mc-ccs.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3=
-4-mc-ccs.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][351] ([i915#8247]) +3 other test=
s fail
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([FAIL][352], [FAIL][353]) ([i915#8247]=
) +3 other tests ( 2 fail )
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][354] ([i915#8247]) +3 other test=
s fail
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> ([SKIP][355], [SKIP][356]) ([i915#3555])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg2:          NOTRUN -> ([SKIP][357], [SKIP][358]) ([i915#9531])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal=
-panels:
    - shard-glk:          NOTRUN -> ([SKIP][359], [SKIP][360]) ([fdo#109271=
] / [i915#1769])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-intern=
al-panels.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-intern=
al-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][361] ([i915#1769] / [i915#3555])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-pan=
els.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> ([SKIP][362], [SKIP][363]) ([i915#5286]=
) +3 other tests ( 2 skip )
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> ([SKIP][364], [SKIP][365]) ([fdo#111614=
]) +2 other tests ( 2 skip )
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
    - shard-dg1:          NOTRUN -> ([SKIP][366], [SKIP][367]) ([i915#4538]=
 / [i915#5286])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> ([SKIP][368], [SKIP][369], [SKIP][370])=
 ([fdo#111614]) +1 other test ( 3 skip )
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][371] ([fdo#111614]) +1 other tes=
t skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][372] -> ([FAIL][373], [FAIL][374], [PASS][=
375]) ([i915#3743])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-=
6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][376] -> ([PASS][377], [FAIL][378], [PASS][=
379]) ([i915#3743]) +1 other test ( 1 fail, 2 pass )
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-=
10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.h=
tml
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-f=
lip.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-f=
lip.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-f=
lip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> ([SKIP][380], [SKIP][381]) ([i915#5190]=
) +11 other tests ( 2 skip )
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#5190]) +6 other test=
s skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> ([SKIP][383], [SKIP][384]) ([fdo#111614=
] / [i915#3638]) +1 other test ( 2 skip )
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-mtlp:         NOTRUN -> ([SKIP][385], [SKIP][386]) ([i915#6187]=
) +1 other test ( 2 skip )
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#4538] / [i915#5190])=
 +1 other test skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg1:          NOTRUN -> ([SKIP][388], [SKIP][389]) ([i915#4538])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> ([SKIP][390], [SKIP][391]) ([fdo#111615=
])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> ([SKIP][392], [SKIP][393], [SKIP][394])=
 ([fdo#111615]) +2 other tests ( 3 skip )
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> ([SKIP][395], [SKIP][396]) ([i915#4538]=
 / [i915#5190]) +4 other tests ( 2 skip )
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
    - shard-mtlp:         NOTRUN -> ([SKIP][397], [SKIP][398]) ([fdo#111615=
])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> ([SKIP][399], [SKIP][400]) ([fdo#110723=
]) +1 other test ( 2 skip )
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-fli=
p.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-fli=
p.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> ([SKIP][401], [SKIP][402], [SKIP][403])=
 ([i915#5354] / [i915#6095]) +7 other tests ( 3 skip )
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> ([SKIP][404], [SKIP][405], [SKIP][406])=
 ([i915#5354] / [i915#6095]) +8 other tests ( 3 skip )
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][407], [SKIP][408]) ([i915#5354]=
) +61 other tests ( 2 skip )
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> ([SKIP][409], [SKIP][410], [SKIP][411])=
 ([i915#5354]) +2 other tests ( 3 skip )
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> ([SKIP][412], [SKIP][413]) ([i915#5354]=
 / [i915#6095]) +9 other tests ( 2 skip )
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs:
    - shard-rkl:          NOTRUN -> ([SKIP][414], [SKIP][415]) ([i915#5354]=
) +13 other tests ( 2 skip )
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> ([SKIP][416], [SKIP][417]) ([i915#5354]=
 / [i915#6095]) +6 other tests ( 2 skip )
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> ([SKIP][418], [SKIP][419]) ([i915#5354]=
 / [i915#6095]) +7 other tests ( 2 skip )
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][420] ([i915#5354]) +33 other tes=
ts skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][421] ([i915#4087] / [i915#7213])=
 +3 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][422] ([i915#4087]) +3 other test=
s skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-blue-to-red:
    - shard-dg2:          NOTRUN -> ([SKIP][423], [SKIP][424]) ([fdo#111827=
])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@kms_chamelium_color@ctm-blue-to-red.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@kms_chamelium_color@ctm-blue-to-red.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-glk:          NOTRUN -> ([SKIP][425], [SKIP][426]) ([fdo#109271=
]) +92 other tests ( 2 skip )
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk9/igt@kms_chamelium_color@ctm-negative.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-rkl:          NOTRUN -> ([SKIP][427], [SKIP][428]) ([fdo#111827=
])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_chamelium_color@ctm-red-to-blue.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-rkl:          NOTRUN -> ([SKIP][429], [SKIP][430]) ([i915#7828]=
) +2 other tests ( 2 skip )
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@kms_chamelium_edid@dp-edid-read.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> ([SKIP][431], [SKIP][432], [SKIP][433])=
 ([i915#7828]) +1 other test ( 3 skip )
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-mtlp:         NOTRUN -> ([SKIP][434], [SKIP][435], [SKIP][436])=
 ([i915#7828]) +1 other test ( 3 skip )
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_chamelium_edid@hdmi-edid-read.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_chamelium_edid@hdmi-edid-read.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][437] ([i915#7828]) +3 other test=
s skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][438], [SKIP][439]) ([i915#7828]=
) +4 other tests ( 2 skip )
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
    - shard-dg1:          NOTRUN -> ([SKIP][440], [SKIP][441]) ([i915#7828])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-mtlp:         NOTRUN -> ([SKIP][442], [SKIP][443]) ([i915#7828])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> ([SKIP][444], [SKIP][445]) ([i915#7118])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@kms_content_protection@atomic-dpms.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> ([SKIP][446], [SKIP][447]) ([i915#3299])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-dg1:          NOTRUN -> ([SKIP][448], [SKIP][449], [SKIP][450])=
 ([i915#3299])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_content_protection@dp-mst-lic-type-0.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@kms_content_protection@dp-mst-lic-type-0.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> ([SKIP][451], [SKIP][452], [SKIP][453])=
 ([i915#3299])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> ([SKIP][454], [SKIP][455], [SKIP][456])=
 ([i915#7118]) +1 other test ( 3 skip )
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_content_protection@legacy.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-1/igt@kms_content_protection@legacy.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][457] ([i915#7173])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-128x42:
    - shard-mtlp:         NOTRUN -> ([SKIP][458], [SKIP][459], [SKIP][460])=
 ([i915#8814]) +1 other test ( 3 skip )
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_cursor_crc@cursor-offscreen-128x42.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-128x42.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-128x42.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> ([SKIP][461], [SKIP][462]) ([fdo#109279=
] / [i915#3359])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> ([SKIP][463], [SKIP][464], [SKIP][465])=
 ([i915#3555]) +2 other tests ( 3 skip )
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][466] ([i915#3359]) +1 other test=
 skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-mtlp:         NOTRUN -> ([SKIP][467], [SKIP][468]) ([i915#8814]=
) +1 other test ( 2 skip )
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          NOTRUN -> ([SKIP][469], [SKIP][470]) ([i915#3555]=
) +3 other tests ( 2 skip )
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-mtlp:         NOTRUN -> ([SKIP][471], [SKIP][472], [SKIP][473])=
 ([i915#9809])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][474] ([fdo#109274] / [fdo#111767=
] / [i915#5354])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-snb:          [PASS][475] -> ([SKIP][476], [SKIP][477], [SKIP][=
478]) ([fdo#109271] / [fdo#111767])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb7/=
igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> ([SKIP][479], [SKIP][480]) ([fdo#111825=
]) +8 other tests ( 2 skip )
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> ([SKIP][481], [SKIP][482]) ([i915#4103])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-mtlp:         NOTRUN -> ([SKIP][483], [SKIP][484]) ([i915#9809]=
) +1 other test ( 2 skip )
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> ([SKIP][485], [SKIP][486]) ([fdo#109274=
] / [i915#5354]) +4 other tests ( 2 skip )
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
    - shard-dg1:          NOTRUN -> ([SKIP][487], [SKIP][488], [SKIP][489])=
 ([fdo#111825]) +6 other tests ( 3 skip )
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][490] ([fdo#109274] / [i915#5354]=
) +2 other tests skip
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
    - shard-snb:          [PASS][491] -> ([SKIP][492], [PASS][493]) ([fdo#1=
09271]) +3 other tests ( 1 pass, 1 skip )
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb7/=
igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-mtlp:         NOTRUN -> ([SKIP][494], [SKIP][495], [SKIP][496])=
 ([fdo#111767])
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][497] -> [FAIL][498] ([i915#2346])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][499] -> ([FAIL][500], [PASS][501]) ([i915#=
2346])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.=
html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.=
html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][502] ([i915#9067])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> ([SKIP][503], [SKIP][504]) ([i915#4103]=
 / [i915#4213])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
    - shard-dg1:          NOTRUN -> ([SKIP][505], [SKIP][506], [SKIP][507])=
 ([i915#4103] / [i915#4213])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][508], [SKIP][509]) ([i915#9723]=
) +1 other test ( 2 skip )
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][510], [SKIP][511]) ([i915#9227])
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-1/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][512], [SKIP][513], [SKIP][514])=
 ([i915#9723])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][515] ([i915#9833])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][516] ([i915#9841]) +3 other test=
s fail
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb7/igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-=
1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          NOTRUN -> [SKIP][517] ([i915#3555])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> ([SKIP][518], [SKIP][519]) ([i915#3555]=
) +4 other tests ( 2 skip )
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> ([SKIP][520], [SKIP][521], [SKIP][522])=
 ([i915#3555] / [i915#3840])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_dsc@dsc-with-bpc.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_dsc@dsc-with-bpc.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][523] ([i915#3469])
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> ([SKIP][524], [SKIP][525]) ([i915#1839])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-10/igt@kms_feature_discovery@display-2x.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-7/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> ([SKIP][526], [SKIP][527]) ([i915#1839])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-5/igt@kms_feature_discovery@display-3x.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-rkl-2/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][528] ([i915#658])
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-mtlp:         NOTRUN -> ([SKIP][529], [SKIP][530]) ([fdo#111767=
] / [i915#3637])
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
    - shard-dg2:          NOTRUN -> ([SKIP][531], [SKIP][532]) ([fdo#109274=
] / [fdo#111767])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][533] ([fdo#109274]) +2 other tes=
ts skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][534], [SKIP][535]) ([fdo#109274=
]) +5 other tests ( 2 skip )
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
    - shard-mtlp:         NOTRUN -> ([SKIP][536], [SKIP][537]) ([i915#3637])
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-mtlp:         NOTRUN -> ([SKIP][538], [SKIP][539], [SKIP][540])=
 ([i915#3637]) +3 other tests ( 3 skip )
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_flip@2x-nonexisting-fb.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_flip@2x-nonexisting-fb.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg1:          NOTRUN -> ([SKIP][541], [SKIP][542], [SKIP][543])=
 ([fdo#111825] / [i915#9934])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-18/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interrupt=
ible.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-14/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interrupt=
ible.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg1-15/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interrupt=
ible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][544] ([i915#8381])
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscali=
ng@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> ([SKIP][545], [SKIP][546], [SKIP][547])=
 ([i915#2672]) +1 other test ( 3 skip )
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-ups=
caling@pipe-a-default-mode.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-ups=
caling@pipe-a-default-mode.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-ups=
caling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscalin=
g@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][548], [SKIP][549]) ([i915#2672]=
) +1 other test ( 2 skip )
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downsca=
ling@pipe-a-valid-mode.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-

=3D=3D Logs =3D=3D

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/index.html

--===============2680287041795675495==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Add workaround 14019877138</td></t=
r>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/128143/">https://patchwork.freedesktop.org/series/128143/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14072_full -&gt; Patchwork_128143v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128143v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_128143v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v=
1/index.html</p>
<h2>Participating hosts (8 -&gt; 9)</h2>
<p>Additional (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
128143v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1=
-hdmi-a1.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-snb5/igt@kms_flip@2x-flip-vs-blocking-wf-v=
blank@ab-vga1-hdmi-a1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-snb4/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank@ab-vga1-hdmi-a1.html">ABORT</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@kms_flip@2x-flip-v=
s-blocking-wf-vblank@ab-vga1-hdmi-a1.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-10/igt@kms_flip@flip-vs-suspend-interruptible@d-hd=
mi-a1.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-tglu-9/igt@kms_flip@flip-vs-suspend-interrupt=
ible@d-hdmi-a1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-tglu-6/igt@kms_flip@flip-vs-suspend-interr=
uptible@d-hdmi-a1.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-tglu-5/igt@kms_flip@flip-vs-suspe=
nd-interruptible@d-hdmi-a1.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping@pipe-=
b.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping=
@pipe-b.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-mtlp-8/igt@kms_plane@pixel-format-source-clampin=
g@pipe-b.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-mtlp-6/igt@kms_plane@pixel-format-source-clampin=
g@pipe-b.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang-wait@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk9/igt@prime_busy@hang-wait@vecs0.html">PASS</a> -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/s=
hard-glk6/igt@prime_busy@hang-wait@vecs0.html">INCOMPLETE</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/igt@p=
rime_busy@hang-wait@vecs0.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14072_full and Patchwork_1=
28143v1_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.84] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@b-dp4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128143v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14072/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14072/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14072/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14072/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14072/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14072/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14072/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4072/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14072/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1/boot.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/s=
hard-glk7/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
8143v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_128143v1/shard-glk1/boot.html">PASS</a>) ([i915#8=
293])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@api_intel_bb@blit-reloc-p=
urge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@device_reset@unbind-cold=
-reset-rebind.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-mtlp-7/igt@device_reset@unbind-cold-reset-r=
ebind.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-mtlp-1/igt@device_reset@unbind-cold-reset-rebind.ht=
ml">SKIP</a>) ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@drm_fdinfo@busy@ccs0.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-dg2-10/igt@drm_fdinfo@busy@ccs0.html">SKIP</a>) ([i915#8414])=
 +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@drm_fdinfo@most-busy-idle=
-check-all@vecs1.html">SKIP</a> ([i915#8414]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@drm_fdinfo@virtual-busy-=
idle.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy-idle.html">SKIP</=
a>) ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb4/igt@fbdev@pan.html">PASS</a> -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb4/igt@fbd=
ev@pan.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-snb1/igt@fbdev@pan.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-snb7/igt@fbde=
v@pan.html">FAIL</a>) ([i915#4435])</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_bad_reloc@negative-re=
loc-lut.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html">=
SKIP</a>) ([i915#3281]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.ht=
ml">SKIP</a>) ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-com=
pfmt0-lmem0-lmem0.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_ccs@suspend-resume=
@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@gem_ccs=
@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a>=
) ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-com=
pfmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_ccs@suspend-resume@x=
major-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_close_race@multigpu-basic-pro=
cess.html">SKIP</a>) ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_create@create-ext-cp=
u-access-big.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_create@create-ext-cpu-access-=
big.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_128143v1/shard-mtlp-8/igt@gem_create@create-ext-cpu-access-big.html"=
>SKIP</a>) ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_create@hog-create@sm=
em0.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_128143v1/shard-mtlp-2/igt@gem_create@hog-create@smem0.html">FAIL</a>=
) ([i915#8758])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_ctx_persistence@hear=
tbeat-hang.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_ctx_persistence@heartbeat-hang.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_128143v1/shard-mtlp-8/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP<=
/a>) ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-host=
ile.html">SKIP</a>) ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@gem_ctx_persistence@legacy=
-engines-hostile.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-snb4/igt@gem_ctx_persistence@legacy-engi=
nes-hostile.html">SKIP</a>) ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a>) ([i9=
15#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html">SKIP</a>) ([i915#28=
0]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_eio@hibernate.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128=
143v1/shard-dg2-5/igt@gem_eio@hibernate.html">ABORT</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_e=
io@hibernate.html">ABORT</a>) ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@gem_eio@kms.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/=
shard-dg1-15/igt@gem_eio@kms.html">FAIL</a>) ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_exec_balancer@paralle=
l-contexts.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.=
html">SKIP</a>) ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_capture@capture-=
invisible@lmem0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_capture@capture-invisi=
ble@lmem0.html">SKIP</a>) ([i915#6334]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk1/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-glk5/igt@gem_exec_capture@capture-invisibl=
e@smem0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-glk3/igt@gem_exec_capture@capture-invisible@smem0=
.html">SKIP</a>) ([fdo#109271] / [i915#6334])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gem_exec_capture@capture=
-invisible@smem0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_exec_capture@capture-invi=
sible@smem0.html">SKIP</a>) ([i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-snb6/igt@gem_exec_fair@basic-none.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_128143v1/shard-snb4/igt@gem_exec_fair@basic-none.html">SKIP</a>) ([fdo#10=
9271]) +70 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_fair@basic-none=
-share.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-dg2-10/igt@gem_exec_fair@basic-none-share.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12814=
3v1/shard-dg2-5/igt@gem_exec_fair@basic-none-share.html">SKIP</a>) ([i915#3=
539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sh=
ard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a>) ([i915#28=
42])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#2842]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_exec_fair@basic-sync=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-mtlp-8/igt@gem_exec_fair@basic-sync.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mt=
lp-7/igt@gem_exec_fair@basic-sync.html">SKIP</a>) ([i915#4473] / [i915#4771=
])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_exec_fair@basic-throt=
tle@rcs0.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html=
">FAIL</a>) ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_exec_fence@submit.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-dg2-3/igt@gem_exec_fence@submit.html">SKIP</a>) ([i915#4812]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_flush@basic-batc=
h-kernel-default-uc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_flush@basic-batch=
-kernel-default-uc.html">SKIP</a>) ([i915#3539] / [i915#4852]) +3 other tes=
ts ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@gem_exec_flush@basic-bat=
ch-kernel-default-uc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gem_exec_flush@basic-batc=
h-kernel-default-uc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_flush@basic-batch=
-kernel-default-uc.html">SKIP</a>) ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-s=
et-default.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-set-default.=
html">SKIP</a>) ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-=
gtt-noreloc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-norelo=
c.html">SKIP</a>) ([i915#3281]) +4 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gem_exec_reloc@basic-cpu=
-gtt-noreloc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_exec_reloc@basic-cpu-gtt-nore=
loc.html">SKIP</a>) ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt=
-noreloc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-mtlp-7/igt@gem_exec_reloc@basic-gtt-noreloc.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-mtlp-1/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a>) (=
[i915#3281]) +3 other tests ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-=
read-active.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg1-18/igt@gem_exec_reloc@basic-wc-read-activ=
e.html">SKIP</a>) ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_exec_reloc@basic-wri=
te-cpu-active.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-dg1-14/igt@gem_exec_reloc@basic-write-cpu-a=
ctive.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-dg1-18/igt@gem_exec_reloc@basic-write-cpu-active.ht=
ml">SKIP</a>) ([i915#3281]) +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_reloc@basic-writ=
e-read-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html"=
>ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v=
1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a>)=
 ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html"=
>PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128=
143v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1=
/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a>) ([=
i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-8/igt@gem_exec_whisper@basic-fds-forked-all.html">=
PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_128143v1/shard-tglu-4/igt@gem_exec_whisper@basic-fds-forked-all.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12814=
3v1/shard-tglu-5/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOMPLETE=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v=
1/shard-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a>) (=
[i915#6755] / [i915#7392] / [i915#9857])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-8/igt@gem_exec_whisper@basic-fds-priority-all.html=
">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-tglu-2/igt@gem_exec_whisper@basic-fds-priority-all.html=
">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-tglu-4/igt@gem_exec_whisper@basic-fds-priority-all.html=
">PASS</a>) ([i915#6755] / [i915#7392] / [i915#9857])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.ht=
ml">SKIP</a>) ([i915#4860])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gem_fence_thrash@bo-writ=
e-verify-y.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_fence_thrash@bo-write-verify-y.=
html">SKIP</a>) ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gem_huc_copy@huc-copy.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-glk7/igt@gem_huc_copy@huc-copy.html">SKIP</a>) ([fdo#109271] =
/ [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_lmem_swapping@heavy-m=
ulti.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-rkl-4/igt@gem_lmem_swapping@heavy-multi.html">SKIP</=
a>) ([i915#4613]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@gem_lmem_swapping@massive.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_128143v1/shard-glk5/igt@gem_lmem_swapping@massive.html">SKIP</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk1=
/igt@gem_lmem_swapping@massive.html">SKIP</a>) ([fdo#109271] / [i915#4613])=
</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_lmem_swapping@massiv=
e.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-mtlp-2/igt@gem_lmem_swapping@massive.html">SKIP</a>) ([=
i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gem_lmem_swapping@random.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_128143v1/shard-glk3/igt@gem_lmem_swapping@random.html">SKIP</a>) ([fdo#10=
9271] / [i915#4613])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_lmem_swapping@random=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-mtlp-8/igt@gem_lmem_swapping@random.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mt=
lp-7/igt@gem_lmem_swapping@random.html">SKIP</a>) ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_mmap_gtt@basic.html">=
SKIP</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gem_mmap_gtt@cpuset-medi=
um-copy-odd.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy-od=
d.html">SKIP</a>) ([i915#4077]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-xy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-dg2-3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.ht=
ml">SKIP</a>) ([i915#4077]) +13 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_mmap_gtt@fault-concu=
rrent.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-dg1-18/igt@gem_mmap_gtt@fault-concurrent.html">SKIP=
</a>) ([i915#4077]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-13/igt@gem_mmap_gtt@zero-extend=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_128143v1/shard-dg1-17/igt@gem_mmap_gtt@zero-extend.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg=
1-19/igt@gem_mmap_gtt@zero-extend.html">SKIP</a>) ([i915#4077]) +3 other te=
sts ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_mmap_wc@read-write-di=
stinct.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_mmap_wc@write-prefau=
lted.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-mtlp-8/igt@gem_mmap_wc@write-prefaulted.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/=
shard-mtlp-7/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a>) ([i915#4083])=
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read=
-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</=
a>) ([i915#4083]) +3 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gem_mmap_wc@write-wc-rea=
d-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-mtlp-6/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP=
</a>) ([i915#4083]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-=
uncached.html">SKIP</a>) ([i915#3282]) +3 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@gem_partial_pwrite_pread=
@reads-uncached.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_partial_pwrite_pread@reads=
-uncached.html">SKIP</a>) ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a>) ([i915#4270]) +2 other tests ( 2 skip=
 )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@gem_pxp@verify-pxp-execu=
tion-after-suspend-resume.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_pxp@verify-pxp-ex=
ecution-after-suspend-resume.html">SKIP</a>) ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@gem_readwrite@new-obj.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-dg1-19/igt@gem_readwrite@new-obj.html">SKIP</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-13/i=
gt@gem_readwrite@new-obj.html">SKIP</a>) ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_render_copy@linear-t=
o-vebox-yf-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_render_copy@linear-to-vebo=
x-yf-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-10/igt@gem_render_copy@linear-to-vebox-yf-=
tiled.html">SKIP</a>) ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gem_render_copy@y-tiled-to-=
vebox-y-tiled.html">SKIP</a> ([fdo#109271]) +32 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@gem_render_copy@y-tiled-=
to-vebox-y-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-ve=
box-y-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-y=
-tiled.html">SKIP</a>) ([i915#8428]) +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-dg2-3/igt@gem_set_tiling_vs_blt@untiled-to-=
tiled.html">SKIP</a>) ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-rkl-2/igt@gem_softpin@evict-snoop-interrupti=
ble.html">SKIP</a>) ([fdo#109312])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@gem_tiled_partial_pwrite_=
pread@writes-after-reads.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_tiled_partial_pwri=
te_pread@writes-after-reads.html">SKIP</a>) ([i915#3282]) +1 other test ( 2=
 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.ht=
ml">SKIP</a>) ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gem_userptr_blits@forbid=
den-operations.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_userptr_blits@forbidden-ope=
rations.html">SKIP</a>) ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed=
-invalidate-busy.html">SKIP</a>) ([i915#3297] / [i915#4880])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@gem_userptr_blits@map-fi=
xed-invalidate-busy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a>) ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gem_userptr_blits@unsync-=
overlap.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@gem_userptr_blits@unsync-unma=
p-after-close.html">SKIP</a>) ([i915#3297])</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gem_userptr_blits@unsync=
-unmap-after-close.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@gem_userptr_blits@unsync-un=
map-after-close.html">SKIP</a>) ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@gen7_exec_parse@basic-al=
location.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-mtlp-7/igt@gen7_exec_parse@basic-allocation.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-mtlp-1/igt@gen7_exec_parse@basic-allocation.html">SKIP</a>) (=
[fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@gen7_exec_parse@batch-wit=
hout-end.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg2-10/igt@gen7_exec_parse@batch-without-end.htm=
l">SKIP</a>) ([fdo#109289]) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@gen7_exec_parse@chained-b=
atch.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-rkl-4/igt@gen7_exec_parse@chained-batch.html">SKIP</=
a>) ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@gen7_exec_parse@load-reg=
ister-reg.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-mtlp-6/igt@gen7_exec_parse@load-register-reg.ht=
ml">SKIP</a>) ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@gen9_exec_parse@allowed-si=
ngle.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">INCOMP=
LETE</a>) ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@gen9_exec_parse@bb-start=
-cmd.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/=
shard-dg1-18/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a>) ([i915#2527])=
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html">SKIP=
</a>) ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@gen9_exec_parse@unaligne=
d-access.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg2-2/igt@gen9_exec_parse@unaligned-access.html"=
>SKIP</a>) ([i915#2856]) +3 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@gen9_exec_parse@unaligne=
d-access.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg1-18/igt@gen9_exec_parse@unaligned-access.html=
">SKIP</a>) ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@gen9_exec_parse@valid-re=
gisters.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-mtlp-7/igt@gen9_exec_parse@valid-registers.html">=
SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128=
143v1/shard-mtlp-1/igt@gen9_exec_parse@valid-registers.html">SKIP</a>) ([i9=
15#2856]) +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@i915_module_load@load.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-rkl-1/igt@i915_module_load@load.html">SKIP</a>) ([i915#6227]=
)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_128143v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-inject=
ion.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_128143v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injectio=
n.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-rkl-7/igt@i915_module_load@reload-with-fault-inje=
ction.html">PASS</a>) ([i915#9849])</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-tglu-8/igt@i915_module_load@reload-with-fault-inje=
ction.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-tglu-2/igt@i915_module_load@reload-with-fault=
-injection.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-tglu-6/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a>) ([i915#9200])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@i915_pm_rc6_residency@me=
dia-rc6-accuracy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@i915_pm_rc6_residency@media-r=
c6-accuracy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg1-18/igt@i915_pm_rc6_residency@media-rc6-ac=
curacy.html">SKIP</a>) ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_128143v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">F=
AIL</a>) ([i915#3591]) +2 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-=
stress-pc8.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.h=
tml">SKIP</a>) ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@i915_pm_rps@basic-api.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-mtlp-8/igt@i915_pm_rps@basic-api.html">SKIP</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/i=
gt@i915_pm_rps@basic-api.html">SKIP</a>) ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html">S=
KIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1281=
43v1/shard-dg2-10/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a>) ([i91=
5#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_query@query-topolog=
y-coherent-slice-mask.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@i915_query@query-topology=
-coherent-slice-mask.html">SKIP</a>) ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@i915_query@query-topolog=
y-known-pci-ids.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@i915_query@query-topology-known=
-pci-ids.html">SKIP</a>) ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@i915_selftest@mock@memor=
y_region.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-dg2-2/igt@i915_selftest@mock@memory_region=
.html">DMESG-WARN</a>) ([i915#9311])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@i915_selftest@mock@memor=
y_region.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-dg1-15/igt@i915_selftest@mock@memory_regio=
n.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-dg1-14/igt@i915_selftest@mock@memory_region.html"=
>DMESG-WARN</a>) ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-rkl-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@=
i915_suspend@basic-s3-without-i915.html">PASS</a>) ([fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_async_flips@alternate-=
sync-async-flip@pipe-a-hdmi-a-2.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk7/igt@kms_async_flips@=
alternate-sync-async-flip@pipe-a-hdmi-a-2.html">FAIL</a>) ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-6/ig=
t@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs=
.html">SKIP</a>) ([i915#8709]) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-3/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-2.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_async_flips@crc@pipe-=
a-hdmi-a-3.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-5/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.=
html">FAIL</a>) ([i915#8247]) +3 other tests ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_atomic@plane-primary=
-overlay-mutable-zpos.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_atomic@plane-primary=
-overlay-mutable-zpos.html">SKIP</a>) ([i915#3555])</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a>) ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt=
@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels=
.html">SKIP</a>) ([fdo#109271] / [i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-=
rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html=
">SKIP</a>) ([i915#5286]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@4-tiled-16bpp=
-rotate-90.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.h=
tml">SKIP</a>) ([fdo#111614]) +2 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_big_fb@4-tiled-16bpp=
-rotate-90.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-90.=
html">SKIP</a>) ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_big_fb@linear-8bpp-r=
otate-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-mtlp-8/igt@kms_big_fb@linear-8bpp-rotate-270.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-mtlp-7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a>=
) ([fdo#111614]) +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-=
rotate-90.html">SKIP</a> ([fdo#111614]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-5/igt@kms_big_fb@x=
-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-3/igt=
@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a>)=
 ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rota=
te-180-hflip-async-flip.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-4/igt@kms_big_fb@x-til=
ed-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-tglu-=
2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-18=
0-hflip-async-flip.html">PASS</a>) ([i915#3743]) +1 other test ( 1 fail, 2 =
pass )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_big_fb@y-tiled-64bpp=
-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.htm=
l">SKIP</a>) ([i915#5190]) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-=
rotate-180.html">SKIP</a> ([i915#5190]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.ht=
ml">SKIP</a>) ([fdo#111614] / [i915#3638]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_big_fb@y-tiled-addfb=
-size-overflow.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb-size-o=
verflow.html">SKIP</a>) ([i915#6187]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-8bpp=
-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.ht=
ml">SKIP</a>) ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-addfb=
-size-overflow.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-o=
verflow.html">SKIP</a>) ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-max-=
hw-stride-32bpp-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@kms_big_fb@yf-tiled-m=
ax-hw-stride-32bpp-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_big_fb@yf-tile=
d-max-hw-stride-32bpp-rotate-0.html">SKIP</a>) ([fdo#111615]) +2 other test=
s ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max=
-hw-stride-64bpp-rotate-0.html">SKIP</a>) ([i915#4538] / [i915#5190]) +4 ot=
her tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-=
hw-stride-64bpp-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-m=
ax-hw-stride-64bpp-rotate-0.html">SKIP</a>) ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_bi=
g_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a>)=
 ([fdo#110723]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_ccs@pipe-a-bad-aux-s=
tride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_ccs@pipe-a-bad=
-aux-stride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_ccs@pipe=
-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>) ([i915#5354] / [i91=
5#6095]) +7 other tests ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@kms_ccs@pipe-a-bad-rotat=
ion-90-4-tiled-dg2-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_ccs@pipe-a-bad-r=
otation-90-4-tiled-dg2-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_ccs@pipe-a-b=
ad-rotation-90-4-tiled-dg2-mc-ccs.html">SKIP</a>) ([i915#5354] / [i915#6095=
]) +8 other tests ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_ccs@pipe-a-crc-sprite=
-planes-basic-yf-tiled-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_ccs@pipe-a-crc-s=
prite-planes-basic-yf-tiled-ccs.html">SKIP</a>) ([i915#5354]) +61 other tes=
ts ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_ccs@pipe-a-missing-c=
cs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_ccs@pipe-a-=
missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_c=
cs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>) ([i915#5=
354]) +2 other tests ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_ccs@pipe-b-crc-primar=
y-basic-4-tiled-mtl-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_ccs@pipe-b-crc-p=
rimary-basic-4-tiled-mtl-mc-ccs.html">SKIP</a>) ([i915#5354] / [i915#6095])=
 +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_ccs@pipe-c-bad-pixel-=
format-y-tiled-gen12-rc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_ccs@pipe-c-bad-=
pixel-format-y-tiled-gen12-rc-ccs.html">SKIP</a>) ([i915#5354]) +13 other t=
ests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_ccs@pipe-c-crc-prima=
ry-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_ccs@pipe-c-=
crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a>) ([i915#5354] / [i91=
5#6095]) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_ccs@pipe-d-ccs-on-an=
other-bo-yf-tiled-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_ccs@pipe-d-ccs-on-an=
other-bo-yf-tiled-ccs.html">SKIP</a>) ([i915#5354] / [i915#6095]) +7 other =
tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_ccs@pipe-d-missing-cc=
s-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#5354]) +33 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cdclk@mode-transition=
@pipe-d-dp-4.html">SKIP</a> ([i915#4087] / [i915#7213]) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-7/igt@kms_chamelium_color@ctm-b=
lue-to-red.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-dg2-3/igt@kms_chamelium_color@ctm-blue-to-red.=
html">SKIP</a>) ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-glk3/igt@kms_chamelium_color@ctm-negative.html">SK=
IP</a>) ([fdo#109271]) +92 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_chamelium_color@ctm-r=
ed-to-blue.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-rkl-4/igt@kms_chamelium_color@ctm-red-to-blue.=
html">SKIP</a>) ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_chamelium_edid@dp-edi=
d-read.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-rkl-5/igt@kms_chamelium_edid@dp-edid-read.html">SK=
IP</a>) ([i915#7828]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_chamelium_edid@hdmi-=
edid-change-during-suspend.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_chamelium_edid@=
hdmi-edid-change-during-suspend.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_chamelium_=
edid@hdmi-edid-change-during-suspend.html">SKIP</a>) ([i915#7828]) +1 other=
 test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_chamelium_edid@hdmi-=
edid-read.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-edid-read.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-mtlp-8/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a>=
) ([i915#7828]) +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_chamelium_edid@hdmi-e=
did-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-h=
pd-with-enabled-mode.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_chamelium_hpd@hdmi-hpd=
-with-enabled-mode.html">SKIP</a>) ([i915#7828]) +4 other tests ( 2 skip )<=
/li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-h=
pd-with-enabled-mode.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a>) ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hp=
d-fast.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_128143v1/shard-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-fast.html">SK=
IP</a>) ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_128143v1/shard-rkl-5/igt@kms_content_protection@atomic-dpms.ht=
ml">SKIP</a>) ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_content_protection@d=
p-mst-lic-type-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_content_protection@dp-mst-=
lic-type-0.html">SKIP</a>) ([i915#3299])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_content_protection@d=
p-mst-lic-type-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_content_protection@dp-mst-lic-=
type-0.html">SKIP</a>) ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_content_protection@d=
p-mst-lic-type-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_content_protection@dp-mst=
-lic-type-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-t=
ype-1.html">SKIP</a>) ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_content_protection@le=
gacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_128143v1/shard-dg2-1/igt@kms_content_protection@legacy.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/=
shard-dg2-3/igt@kms_content_protection@legacy.html">SKIP</a>) ([i915#7118])=
 +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-of=
fscreen-128x42.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen=
-128x42.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-128x42=
.html">SKIP</a>) ([i915#8814]) +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-=
512x170.html">SKIP</a>) ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_crc@cursor-on=
screen-32x32.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-32=
x32.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_128143v1/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-32x32.html"=
>SKIP</a>) ([i915#3555]) +2 other tests ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-sl=
iding-128x42.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-128=
x42.html">SKIP</a>) ([i915#8814]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.=
html">SKIP</a>) ([i915#3555]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_legacy@2x-cur=
sor-vs-flip-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@kms_cursor_legacy@2x-cursor=
-vs-flip-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-cursor-vs=
-flip-legacy.html">SKIP</a>) ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#111767] / [i915#5354]=
)</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_128143v1/shard-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_128143v1/shard-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">S=
KIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1281=
43v1/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</=
a>) ([fdo#109271] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-=
cursor-legacy.html">SKIP</a>) ([fdo#111825]) +8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-4/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-rkl-1/igt@kms_cursor_legacy=
@basic-busy-flip-before-cursor-legacy.html">SKIP</a>) ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_cursor_legacy@cursor=
a-vs-flipb-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_cursor_legacy@cursora-vs=
-flipb-legacy.html">SKIP</a>) ([i915#9809]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a>) ([fdo#109274] / [i915#5354]) +4 other tests ( =
2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_cursor_legacy@cursor=
b-vs-flipb-atomic.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs=
-flipb-atomic.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-fli=
pb-atomic.html">SKIP</a>) ([fdo#111825]) +6 other tests ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipb-legacy.html">SKIP</a> ([fdo#109274] / [i915#5354]) +2 other tests=
 skip</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html=
">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_128143v1/shard-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
28143v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">PASS=
</a>) ([fdo#109271]) +3 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_cursor_legacy@cursor=
b-vs-flipb-toggle.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs=
-flipb-toggle.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-fli=
pb-toggle.html">SKIP</a>) ([fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_128143v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14072/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-glk3/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions-varying-size.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-glk9/igt@kms_cu=
rsor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) =
([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_cursor_legacy@short-=
busy-flip-before-cursor-toggle.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_cursor_legac=
y@short-busy-flip-before-cursor-toggle.html">SKIP</a>) ([i915#4103] / [i915=
#4213])</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_cursor_legacy@short-=
busy-flip-before-cursor-toggle.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@kms_cursor_lega=
cy@short-busy-flip-before-cursor-toggle.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_cu=
rsor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a>) ([i915#410=
3] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-7/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a=
-hdmi-a-1.html">SKIP</a>) ([i915#9723]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-3.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_128143v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a=
-hdmi-a-3.html">SKIP</a>) ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-=
ioctl@a-hdmi-a-4.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_128143v1/shard-dg1-15/igt@kms_dirtyfb@fbc-dirtyfb-ioctl=
@a-hdmi-a-4.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_128143v1/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hd=
mi-a-4.html">SKIP</a>) ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-1:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-snb7/igt@kms_display_modes@extended-=
mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-1.html">FAIL</a> ([i915#9841]) +3 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-pan=
el-8bpc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">=
SKIP</a>) ([i915#3555]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@kms_dsc@dsc-with-bpc.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/shard-mtlp-7/igt@kms_dsc@dsc-with-bpc.html">SKIP</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt=
@kms_dsc@dsc-with-bpc.html">SKIP</a>) ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-10/igt@kms_feature_discovery@di=
splay-2x.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_128143v1/shard-dg2-7/igt@kms_feature_discovery@display-2x.html"=
>SKIP</a>) ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-rkl-5/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_128143v1/shard-rkl-2/igt@kms_feature_discovery@display-3x.html">=
SKIP</a>) ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_feature_discovery@psr=
1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-expi=
red-vblank-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-e=
xpired-vblank-interruptible.html">SKIP</a>) ([fdo#111767] / [i915#3637])</l=
i>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-exp=
ired-vblank-interruptible.html">SKIP</a>) ([fdo#109274] / [fdo#111767])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> ([fdo#109274]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_128143v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblan=
k-interruptible.html">SKIP</a>) ([fdo#109274]) +5 other tests ( 2 skip )</l=
i>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-wf_v=
blank-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_128143v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vbl=
ank-interruptible.html">SKIP</a>) ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-7/igt@kms_flip@2x-nonexisting-=
fb.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_128143v1/shard-mtlp-8/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-mtlp-1/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a>) ([i915#3637]) +3 ot=
her tests ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg1-18/igt@kms_flip@2x-single-buffe=
r-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-dg1-14/igt@km=
s_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143=
v1/shard-dg1-15/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-i=
nterruptible.html">SKIP</a>) ([fdo#111825] / [i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_128143v1/shard-dg2-11/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip=
-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143=
v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2r=
cccs-upscaling@pipe-a-default-mode.html">SKIP</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard-mtlp-1/igt@kms_flip_sc=
aled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-m=
ode.html">SKIP</a>) ([i915#2672]) +1 other test ( 3 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_128143v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/s=
hard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-">SKIP</a>) ([i915#2672]) +1=
 other test ( 2 skip )</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2680287041795675495==--
