Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6CD4725F7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 10:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF18910E72C;
	Mon, 13 Dec 2021 09:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAE110E72B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 09:50:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238923493"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; 
 d="scan'208,217";a="238923493"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 01:50:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; 
 d="scan'208,217";a="481459029"
Received: from skofoed-mobl.ger.corp.intel.com (HELO [10.249.254.92])
 ([10.249.254.92])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 01:50:44 -0800
Message-ID: <041b4bc60800f4061c3355f3fce76cbcc7705412.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, Lakshminarayana Vudum
 <lakshminarayana.vudum@intel.com>
Date: Mon, 13 Dec 2021 10:50:41 +0100
In-Reply-To: <163921616973.10522.4137847844050413505@emeril.freedesktop.org>
References: <20211209141304.393479-1-thomas.hellstrom@linux.intel.com>
 <163921616973.10522.4137847844050413505@emeril.freedesktop.org>
Content-Type: multipart/alternative; boundary="=-G9rjDnRf70DH/7AhniS9"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_leak_the_capture_list_items_=28rev2=29?=
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


--=-G9rjDnRf70DH/7AhniS9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2021-12-11 at 09:49 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915: Don't leak the capture list items
> (rev2)URL:https://patchwork.freedesktop.org/series/97804/State:failur
> e
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21820/index.html
> CI Bug Log - changes from CI_DRM_10988_full -> Patchwork_21820_fullSummaryFAILURE
> Serious unknown changes coming with Patchwork_21820_full absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21820_full, please notify your bug team to
> allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (10 -> 10)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introduced in
> Patchwork_21820_full:
> IGT changesPossible regressions * igt@kms_big_fb@linear-64bpp-rotate-180:shard-iclb: PASS -> FAIL
>  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
>     - shard-glk: PASS -> FAIL


Lakshmi,
The above errors are unrelated.

Thanks,
Thomas


--=-G9rjDnRf70DH/7AhniS9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>On Sat, 2021-12-11 at 09:49 +0000, Patchwork wrote:</div><blockq=
uote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf soli=
d;padding-left:1ex"><div><b>Patch Details</b></div><div><table><tbody><tr><=
td><b>Series:</b></td><td>drm/i915: Don't leak the capture list items (rev2=
)</td></tr><tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedes=
ktop.org/series/97804/">https://patchwork.freedesktop.org/series/97804/</a>=
</td></tr><tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Detail=
s:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21820/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2182=
0/index.html</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes f=
rom CI_DRM_10988_full -&gt; Patchwork_21820_full</h1><h2>Summary</h2><p><st=
rong>FAILURE</strong></p><p>Serious unknown changes coming with Patchwork_2=
1820_full absolutely need to be<br> verified manually.</p><p>If you think t=
he reported changes have nothing to do with the changes<br> introduced in P=
atchwork_21820_full, please notify your bug team to allow them<br> to docum=
ent this new failure mode, which will reduce false positives in CI.</p><h2>=
Participating hosts (10 -&gt; 10)</h2><p>No changes in participating hosts<=
/p><h2>Possible new issues</h2><p>Here are the unknown changes that may hav=
e been introduced in Patchwork_21820_full:</p><h3>IGT changes</h3><h4>Possi=
ble regressions</h4><ul><li><p>igt@kms_big_fb@linear-64bpp-rotate-180:</p><=
ul><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10988/shard-iclb2/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21820/s=
hard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-180.html">FAIL</a></li></ul><=
/li><li><p>igt@kms_plane_cursor@pipe-a-viewport-size-64:</p></li><ul><li>sh=
ard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/s=
hard-glk1/igt@kms_plane_cursor@pipe-a-viewport-size-64.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21820/shard-=
glk3/igt@kms_plane_cursor@pipe-a-viewport-size-64.html">FAIL</a></li></ul><=
/ul></blockquote><div><br></div><div><br></div><div>Lakshmi,</div><div>The =
above errors are unrelated.</div><div><br></div><div>Thanks,</div><div>Thom=
as</div><div><br></div><div><span></span></div></body></html>

--=-G9rjDnRf70DH/7AhniS9--

