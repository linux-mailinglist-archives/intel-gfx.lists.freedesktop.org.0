Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873363650D2
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 05:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118FB89D42;
	Tue, 20 Apr 2021 03:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B9389D42
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 03:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618888946;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=58zPbmPvGcTifaZQ3IlLZUDJ+/WIViEwp3MjXXxQ4uU=;
 b=DQJ9Ck2Kmo35lb9MsW0N1bpWxy3UhBr0f1gYjXcnb5tjCD0BuGE8fza+m8ahTIui+1yeR1
 oEgfEdYAVcGniVc5KNtRK/sfFE/ZqPzUueLcmEqgZIcDYyLdS+IKc3VGSZi7Gnz3nfb/jU
 +G39YIf6TzZGvU1eC92/rTp80MJNDco=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-Y7S2OiREMECQSiwxl_nGBg-1; Mon, 19 Apr 2021 23:22:19 -0400
X-MC-Unique: Y7S2OiREMECQSiwxl_nGBg-1
Received: by mail-qt1-f197.google.com with SMTP id
 7-20020ac857070000b02901ba5c36e1b2so1057956qtw.21
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Apr 2021 20:22:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=sF7bkmjv8/s3dA/ly3TyMINObczoeYmmB0vlYWtg7Dw=;
 b=Q+gDsIVw8PAImnZFy8RGlriuq2ofOsic+nSdZKhwU+8d6qnEfEOSedUzoPETNWvii5
 SdupJYaNO61uNwBvaq/RYgH58oxt2eP6rphUAhLin6DVT3U1rHviQRx3Wl+r06TFOFF7
 4rEasNjkA2JGCVoY+d0vnghR3Y2lrxQNmh5lMhZr7P2dLdYWrZndbS+/EiAadW47Zb4H
 IbV14T6Dugr1s+kfc0f2rQucndPjosVJUkaxalBPYL7kaUd9ITv1ctOiFeaLz2rXQvQP
 Y470nbXZ4ScizaVdWZP7h/Gg+rX7gNk0BtPtBTC8iGI+NywK1ek+bkQDoAM1xm2Ktah9
 lKpg==
X-Gm-Message-State: AOAM5333kOFUp0ECPdU9hF7DqHFwBDwSEpWOOdMH4D04VRYW5NuMtp+b
 XuhFSCnTE5hVCcyziiUDiyGiECy+crdng2M+Ee1j/5EK3zbrBot71q7iNJNqUzFotL8FfnxQ3dV
 e12c/vl+ZEQpILb2Uihs5LVlSR5rcoK6lnAH/VG3E0rSxW0GigxAuJ0O+o9VzOW8lL0X9AXnl+r
 QP
X-Received: by 2002:ac8:5155:: with SMTP id h21mr158849qtn.262.1618888939141; 
 Mon, 19 Apr 2021 20:22:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhdjCX2pBCdAg3ZlGXLOsQpquMcjCtF8hsaSAXqQ10Vj9dMcnfixXTsncnlY1Xz4rFAugBbg==
X-Received: by 2002:ac8:5155:: with SMTP id h21mr158835qtn.262.1618888938881; 
 Mon, 19 Apr 2021 20:22:18 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id 8sm11196054qkb.32.2021.04.19.20.22.18
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Apr 2021 20:22:18 -0700 (PDT)
Message-ID: <d85c193bbf47be432fdb61d4589f1853ea9d094d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Apr 2021 23:22:17 -0400
In-Reply-To: <161887471746.27827.6587761246133636159@emeril.freedesktop.org>
References: <20210419225523.184856-1-lyude@redhat.com>
 <161887471746.27827.6587761246133636159@emeril.freedesktop.org>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29=29_in_?=
 =?utf-8?q?DP_helpers_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============0130379337=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0130379337==
Content-Type: multipart/alternative; boundary="=-sxGzbRlaf8inYBKwNpPj"

--=-sxGzbRlaf8inYBKwNpPj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

whoops, will definitely fix this and respin tomorrow

On Mon, 2021-04-19 at 23:25 +0000, Patchwork wrote:
> Patch Details
> Series:drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers
> (rev6)URL:https://patchwork.freedesktop.org/series/87242/State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/index.html
> CI Bug Log - changes from CI_DRM_9983 -> Patchwork_19953SummaryFAILURE
> Serious unknown changes coming with Patchwork_19953 absolutely need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_19953, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> External URL: https://intel-gfx-ci.01.org/tree/drm-
> tip/Patchwork_19953/index.html
> Possible new issuesHere are the unknown changes that may have been introduced in
> Patchwork_19953:
> CI changesPossible regressions * boot:fi-apl-guc: PASS -> FAILfi-kbl-8809g: PASS -> FAILfi-snb-2520m: PASS -
>    > FAILfi-bsw-nick: PASS -> FAILfi-icl-u2: PASS -> FAILfi-cfl-8109u: PASS ->
>    FAILfi-cfl-8700k: PASS -> FAILfi-bxt-dsi: PASS -> FAILfi-cml-u2: PASS ->
>    FAILfi-ilk-650: PASS -> FAILfi-tgl-u2: PASS -> FAILfi-hsw-4770: PASS ->
>    FAILfi-cfl-guc: PASS -> FAILfi-kbl-soraka: PASS -> FAILfi-cml-s: PASS ->
>    FAILfi-elk-e7500: PASS -> FAILfi-glk-dsi: PASS -> FAILfi-snb-2600: PASS ->
>    FAILfi-tgl-y: PASS -> FAILfi-kbl-guc: PASS -> FAILfi-kbl-x1275: PASS ->
>    FAILfi-bdw-gvtdvm: PASS -> FAILfi-kbl-7500u: PASS -> FAILfi-bdw-5557u: PASS
>    -> FAILfi-kbl-r: PASS -> FAILfi-kbl-7567u: PASS -> FAIL
> SuppressedThe following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>  * boot:{fi-tgl-dsi}: PASS -> FAIL{fi-hsw-gt1}: PASS -> FAIL{fi-jsl-1}: PASS -
>    > FAIL{fi-ehl-1}: PASS -> FAIL{fi-rkl-11500t}: PASS -> FAIL{fi-ehl-2}: PASS
>    -> FAIL
> Known issuesHere are the changes found in Patchwork_19953 that come from known issues:
> CI changesIssues hit * boot:fi-skl-6600u: PASS -> FAIL (i915#3174)fi-skl-6700k2: PASS -> FAIL
>    (i915#3174)fi-skl-guc: PASS -> FAIL (i915#3174)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> Participating hosts (42 -> 38)Missing (4): fi-icl-y fi-bsw-cyan fi-bsw-kefka fi-bdw-samus 
> Build changes * Linux: CI_DRM_9983 -> Patchwork_19953
> CI-20190529: 20190529
> CI_DRM_9983: 03ed13adf40fd6827c888186a9f356a537237c3f @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6070: 907705f0c3f6b5ae6358a4822434dd6d7a070cff @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_19953: 4d85fbc4cd3fcfecee0f4ea8d2cc5f7f3d29985c @
> git://anongit.freedesktop.org/gfx-ci/linux
> == Linux commits ==
> 4d85fbc4cd3f drm/dp_mst: Convert drm_dp_mst_topology.c to
> drm_err()/drm_dbg()
> 2cdf118000c8 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using
> drm_err/drm_dbg_kms()
> 8529dfa260fc drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_()
> fa4bf5cbb3bb drm/print: Handle potentially NULL drm_devices in drm_dbg_
> ce547d2b0cb9 drm/dp_mst: Pass drm_dp_mst_topology_mgr to
> drm_dp_get_vc_payload_bw()
> c4f143e80afd drm/dp_dual_mode: Pass drm_device to
> drm_lspcon_(get|set)_mode()
> 70e25b343fb6 drm/dp_dual_mode: Pass drm_device to
> drm_dp_dual_mode_get_tmds_output()
> 91c92d211983 drm/dp_dual_mode: Pass drm_device to
> drm_dp_dual_mode_max_tmds_clock()
> 8947ebf4721c drm/dp_dual_mode: Pass drm_device to
> drm_dp_dual_mode_set_tmds_output()
> 37dae984861b drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
> 33109c79827e drm/dp: Always print aux channel name in logs
> a12a22656307 drm/dp: Pass drm_dp_aux to drm_dp_link_train_channel_eq_delay()
> 764073b4a508 drm/dp: Pass drm_dp_aux to
> drm_dp_link_train_clock_recovery_delay()
> d52ff25d184a drm/dp: Clarify DP AUX registration time
> 057f5073ee57 drm/dp: Add backpointer to drm_device in drm_dp_aux
> b05faee9e18d drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late
> register/early unregister
> 0f2070c3486f drm/bridge/cdns-mhdp8546: Register DP aux channel with
> userspace
> 6b4b8b73edda drm/dp: Move i2c init to drm_dp_aux_init, add __must_check and
> fini
> 996c7d026bb9 drm/dp: Add __no_check to drm_dp_aux_register()
> fffba1b63bf6 drm/amdgpu: Add error handling to
> amdgpu_dm_initialize_dp_connector()

-- 
Cheers,
Lyude Paul (she/her)
Software Engineer at Red Hat

--=-sxGzbRlaf8inYBKwNpPj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>whoops, will definitely fix this and respin tomorrow</div><div><=
br></div><div>On Mon, 2021-04-19 at 23:25 +0000, Patchwork wrote:</div><blo=
ckquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf s=
olid;padding-left:1ex"><div><b>Patch Details</b></div><div><table><tbody><t=
r><td><b>Series:</b></td><td>drm: Use new DRM printk funcs (like drm_dbg_*(=
)) in DP helpers (rev6)</td></tr><tr><td><b>URL:</b></td><td><a href=3D"htt=
ps://patchwork.freedesktop.org/series/87242/">https://patchwork.freedesktop=
.org/series/87242/</a></td></tr><tr><td><b>State:</b></td><td>failure</td><=
/tr> <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19953/index.html">https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19953/index.html</a></td></tr></tbody></table> </div><h1>=
CI Bug Log - changes from CI_DRM_9983 -&gt; Patchwork_19953</h1><h2>Summary=
</h2><p><strong>FAILURE</strong></p><p>Serious unknown changes coming with =
Patchwork_19953 absolutely need to be<br> verified manually.</p><p>If you t=
hink the reported changes have nothing to do with the changes<br> introduce=
d in Patchwork_19953, please notify your bug team to allow them<br> to docu=
ment this new failure mode, which will reduce false positives in CI.</p><p>=
External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/inde=
x.html</p><h2>Possible new issues</h2><p>Here are the unknown changes that =
may have been introduced in Patchwork_19953:</p><h3>CI changes</h3><h4>Poss=
ible regressions</h4><ul><li><p>boot:</p><ul><li><p>fi-apl-guc: <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-apl-guc/boot.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19953/fi-apl-guc/boot.html">FAIL</a></p></li><li><p>fi-kbl-8809g: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-8809g/boot.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19953/fi-kbl-8809g/boot.html">FAIL</a></p></li><li><p>fi-snb-2520m:=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-snb-252=
0m/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19953/fi-snb-2520m/boot.html">FAIL</a></p></li><li><p>fi-bs=
w-nick: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-=
bsw-nick/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19953/fi-bsw-nick/boot.html">FAIL</a></p></li><li><p>=
fi-icl-u2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/=
fi-icl-u2/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19953/fi-icl-u2/boot.html">FAIL</a></p></li><li><p>f=
i-cfl-8109u: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_998=
3/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19953/fi-cfl-8109u/boot.html">FAIL</a></p></li>=
<li><p>fi-cfl-8700k: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9983/fi-cfl-8700k/boot.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-8700k/boot.html">FAIL</a><=
/p></li><li><p>fi-bxt-dsi: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_9983/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-bxt-dsi/boot.html">FAIL</a=
></p></li><li><p>fi-cml-u2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_9983/fi-cml-u2/boot.html">PASS</a> -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cml-u2/boot.html">FAIL</a>=
</p></li><li><p>fi-ilk-650: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_9983/fi-ilk-650/boot.html">PASS</a> -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-ilk-650/boot.html">FAIL</=
a></p></li><li><p>fi-tgl-u2: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_9983/fi-tgl-u2/boot.html">PASS</a> -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-tgl-u2/boot.html">FAIL</a=
></p></li><li><p>fi-hsw-4770: <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_9983/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-hsw-4770/boot.html">FA=
IL</a></p></li><li><p>fi-cfl-guc: <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_9983/fi-cfl-guc/boot.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cfl-guc/boot.html">=
FAIL</a></p></li><li><p>fi-kbl-soraka: <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_9983/fi-kbl-soraka/boot.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-kbl-soraka/=
boot.html">FAIL</a></p></li><li><p>fi-cml-s: <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_9983/fi-cml-s/boot.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-cml-s/boot=
.html">FAIL</a></p></li><li><p>fi-elk-e7500: <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_9983/fi-elk-e7500/boot.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-elk-e7=
500/boot.html">FAIL</a></p></li><li><p>fi-glk-dsi: <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-glk-dsi/boot.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-gl=
k-dsi/boot.html">FAIL</a></p></li><li><p>fi-snb-2600: <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-snb-2600/boot.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/f=
i-snb-2600/boot.html">FAIL</a></p></li><li><p>fi-tgl-y: <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-y/boot.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi=
-tgl-y/boot.html">FAIL</a></p></li><li><p>fi-kbl-guc: <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-guc/boot.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi=
-kbl-guc/boot.html">FAIL</a></p></li><li><p>fi-kbl-x1275: <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-x1275/boot.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
953/fi-kbl-x1275/boot.html">FAIL</a></p></li><li><p>fi-bdw-gvtdvm: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-bdw-gvtdvm/boot=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19953/fi-bdw-gvtdvm/boot.html">FAIL</a></p></li><li><p>fi-kbl-7500=
u: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-kbl-7=
500u/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19953/fi-kbl-7500u/boot.html">FAIL</a></p></li><li><p>fi-=
bdw-5557u: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/=
fi-bdw-5557u/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19953/fi-bdw-5557u/boot.html">FAIL</a></p></li><l=
i><p>fi-kbl-r: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
983/fi-kbl-r/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19953/fi-kbl-r/boot.html">FAIL</a></p></li><li><p=
>fi-kbl-7567u: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
983/fi-kbl-7567u/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19953/fi-kbl-7567u/boot.html">FAIL</a></p></l=
i></ul></li></ul><h4>Suppressed</h4><p>The following results come from untr=
usted machines, tests, or statuses.<br> They do not affect the overall resu=
lt.</p><ul><li><p>boot:</p><ul><li><p>{fi-tgl-dsi}: <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-tgl-dsi/boot.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-t=
gl-dsi/boot.html">FAIL</a></p></li><li><p>{fi-hsw-gt1}: <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-hsw-gt1/boot.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/=
fi-hsw-gt1/boot.html">FAIL</a></p></li><li><p>{fi-jsl-1}: <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-jsl-1/boot.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/=
fi-jsl-1/boot.html">FAIL</a></p></li><li><p>{fi-ehl-1}: <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ehl-1/boot.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi=
-ehl-1/boot.html">FAIL</a></p></li><li><p>{fi-rkl-11500t}: <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-rkl-11500t/boot.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19953/fi-rkl-11500t/boot.html">FAIL</a></p></li><li><p>{fi-ehl-2}: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-ehl-2/boot.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19953/fi-ehl-2/boot.html">FAIL</a></p></li></ul></li></ul><h2>Known iss=
ues</h2><p>Here are the changes found in Patchwork_19953 that come from kno=
wn issues:</p><h3>CI changes</h3><h4>Issues hit</h4><ul><li><p>boot:</p><ul=
><li><p>fi-skl-6600u: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_9983/fi-skl-6600u/boot.html">PASS</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-6600u/boot.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3174">i915#317=
4</a>)</p></li><li><p>fi-skl-6700k2: <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_9983/fi-skl-6700k2/boot.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-skl-6700k2/=
boot.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3174">i915#3174</a>)</p></li><li><p>fi-skl-guc: <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_9983/fi-skl-guc/boot.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19953/fi-=
skl-guc/boot.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3174">i915#3174</a>)</p></li></ul></li></ul><p>{name}: This el=
ement is suppressed. This means it is ignored when computing<br> the status=
 of the difference (SUCCESS, WARNING, or FAILURE).</p><h2>Participating hos=
ts (42 -&gt; 38)</h2><p>Missing (4): fi-icl-y fi-bsw-cyan fi-bsw-kefka fi-b=
dw-samus </p><h2>Build changes</h2><ul><li>Linux: CI_DRM_9983 -&gt; Patchwo=
rk_19953</li></ul><p>CI-20190529: 20190529<br> CI_DRM_9983: 03ed13adf40fd68=
27c888186a9f356a537237c3f @ git://anongit.freedesktop.org/gfx-ci/linux<br> =
IGT_6070: 907705f0c3f6b5ae6358a4822434dd6d7a070cff @ git://anongit.freedesk=
top.org/xorg/app/intel-gpu-tools<br> Patchwork_19953: 4d85fbc4cd3fcfecee0f4=
ea8d2cc5f7f3d29985c @ git://anongit.freedesktop.org/gfx-ci/linux</p><p>=3D=
=3D Linux commits =3D=3D</p><p>4d85fbc4cd3f drm/dp_mst: Convert drm_dp_mst_=
topology.c to drm_err()/drm_dbg<em>()<br>2cdf118000c8 drm/dp_dual_mode: Con=
vert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()<br>8529dfa260=
fc drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_</em>()<br>fa4b=
f5cbb3bb drm/print: Handle potentially NULL drm_devices in drm_dbg_<em><br>=
ce547d2b0cb9 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payl=
oad_bw()<br>c4f143e80afd drm/dp_dual_mode: Pass drm_device to drm_lspcon_(g=
et|set)_mode()<br>70e25b343fb6 drm/dp_dual_mode: Pass drm_device to drm_dp_=
dual_mode_get_tmds_output()<br>91c92d211983 drm/dp_dual_mode: Pass drm_devi=
ce to drm_dp_dual_mode_max_tmds_clock()<br>8947ebf4721c drm/dp_dual_mode: P=
ass drm_device to drm_dp_dual_mode_set_tmds_output()<br>37dae984861b drm/dp=
_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()<br>33109c79827e dr=
m/dp: Always print aux channel name in logs<br>a12a22656307 drm/dp: Pass dr=
m_dp_aux to drm_dp</em>_link_train_channel_eq_delay()<br>764073b4a508 drm/d=
p: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()<br>d52ff25d1=
84a drm/dp: Clarify DP AUX registration time<br>057f5073ee57 drm/dp: Add ba=
ckpointer to drm_device in drm_dp_aux<br>b05faee9e18d drm/nouveau/kms/nv50-=
: Move AUX adapter reg to connector late register/early unregister<br>0f207=
0c3486f drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace<br=
>6b4b8b73edda drm/dp: Move i2c init to drm_dp_aux_init, add __must_check an=
d fini<br>996c7d026bb9 drm/dp: Add __no_check to drm_dp_aux_register()<br>f=
ffba1b63bf6 drm/amdgpu: Add error handling to amdgpu_dm_initialize_dp_conne=
ctor()</p></blockquote><div><br></div><div><span><pre>-- <br></pre><div dat=
a-evo-paragraph=3D"" class=3D"" style=3D"width: 78ch;" data-evo-signature-p=
lain-text-mode=3D"">Cheers,</div><div data-evo-paragraph=3D"" class=3D"" st=
yle=3D"width: 78ch;"><span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">=09</span>Lyude Paul (she/her)</div><div data-evo-paragraph=3D"" class=
=3D"" style=3D"width: 78ch;"><span class=3D"Apple-tab-span" style=3D"white-=
space:pre">=09</span>Software Engineer at Red Hat</div></span></div></body>=
</html>

--=-sxGzbRlaf8inYBKwNpPj--


--===============0130379337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0130379337==--

