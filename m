Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAECFB08EB6
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 16:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57BD110E82B;
	Thu, 17 Jul 2025 14:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=valentine.burley@collabora.com header.b="WfdI/L9B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB7F10E7B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 11:34:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1752665650; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=jM8480z33WiClEztPFhrCOG9Qlx13se3UgrCJ/rSZudDPQb9MAGrZwCCmKFAjXJzB3wxNvNBzWxHAmoxmJuvhj/cjodK8zxInUEv2nVEoiCSF2R0YZsJak4SVv2lFWAe9nGXC3x6eaIIvopQIQYQVD3IuhIccmeLoSbdH8UnjJA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1752665650;
 h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=MfKSQQ1QidhHEoBCmMPirBJbKD4E7VVLZwaX7ylrMP0=; 
 b=a4wjWC4OwNgqx8a6XGIhgvC6wLvsU7becgrIwGUB1qbWccXvriafkXX3BDWjGrkXcGlsOiPPIhU5lcJSVxGFnhv/o4RJmNFLB2gxthDIB/ymi8sVyv+WLm9vuHaovqhwYQO7RYMP6VRsmwGqI7aNS1wbY+NIN+4TBQVaQ+pnMJA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=valentine.burley@collabora.com;
 dmarc=pass header.from=<valentine.burley@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1752665650; 
 s=zohomail; d=collabora.com; i=valentine.burley@collabora.com; 
 h=Date:Date:From:From:To:To:Cc:Cc:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To;
 bh=MfKSQQ1QidhHEoBCmMPirBJbKD4E7VVLZwaX7ylrMP0=;
 b=WfdI/L9Byjr7kNFkR7YGT1U4KsPI8/g9VeON+dNAHBq5C4hEJ5X1tAN5h4W0LIsI
 SKdSPzFM/Veo77p/9pVAH27huxEI+qe4Xs0L+Zfna85kRI0bEdhnjZo0rwRyqx1mbMM
 0s9ScgUNOlZFg063MoSPoUcyva9oFgib+aWMWCws=
Received: from mail.zoho.com by mx.zohomail.com
 with SMTP id 175266564866647.30672877929089;
 Wed, 16 Jul 2025 04:34:08 -0700 (PDT)
Date: Wed, 16 Jul 2025 13:34:08 +0200
From: Valentine Burley <valentine.burley@collabora.com>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: "intel-gfx" <intel-gfx@lists.freedesktop.org>,
 "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Alexander Usyskin" <alexander.usyskin@intel.com>,
 "Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-Id: <19813036e03.546c166b2607290.4657211250310977639@collabora.com>
In-Reply-To: <20250715225959.488109-6-daniele.ceraolospurio@intel.com>
References: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
 <20250715225959.488109-6-daniele.ceraolospurio@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/pxp: Do not support PXP if CSME is not
 available
MIME-Version: 1.0
Content-Type: multipart/alternative; 
 boundary="----=_Part_8976324_590075631.1752665648643"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Approved-At: Thu, 17 Jul 2025 14:01:50 +0000
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

------=_Part_8976324_590075631.1752665648643
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the fix! This worked around the issue and disabled PXP,
which allowed our virtual machine to boot.

Tested-by: Valentine Burley < mailto:valentine.burley@collabora.com >







---- On Wed, 16 Jul 2025 01:00:02 +0200 Daniele Ceraolo Spurio <daniele.cer=
aolospurio@intel.com> wrote ---



The PXP flow requires us to communicate with CSME, which we do via a=20
mei component. Since the mei component binding is async and can take=20
a bit to complete, we don't wait for it during i915 load. If userspace=20
queries the state before the async binding is complete, we return an=20
"init in progress" state, with the expectation that it will eventually=20
transition to "init complete" if the CSME device is functional.=20
=20
Mesa CI is flashing a custom coreboot on their Chromebooks that hides=20
the CSME device, which means that we never transition to the "init=20
complete" state. While from an interface POV it is not incorrect to not=20
end up in "init complete" if the CSME is missing, we can mitigate the=20
impact of this by simply checking if the CSME device is available at=20
all before attempting to initialize PXP.=20
=20
Reported-by: Valentine Burley < mailto:valentine.burley@collabora.com >=20
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516 =20
Signed-off-by: Daniele Ceraolo Spurio < mailto:daniele.ceraolospurio@intel.=
com >=20
Cc: Rodrigo Vivi < mailto:rodrigo.vivi@intel.com >=20
Cc: Alexander Usyskin < mailto:alexander.usyskin@intel.com >=20
Cc: Alan Previn < mailto:alan.previn.teres.alexis@intel.com >=20
---=20
 drivers/gpu/drm/i915/i915_module.c   | 1 +=20
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 5 +++++=20
 2 files changed, 6 insertions(+)=20
=20
diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915=
_module.c=20
index 5862754c662c..07118a1ea14d 100644=20
--- a/drivers/gpu/drm/i915/i915_module.c=20
+++ b/drivers/gpu/drm/i915/i915_module.c=20
@@ -126,3 +126,4 @@ MODULE_AUTHOR("Intel Corporation");=20
=20
 MODULE_DESCRIPTION(DRIVER_DESC);=20
 MODULE_LICENSE("GPL and additional rights");=20
+=20
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/px=
p/intel_pxp.c=20
index c077a1c464cf..e476c1d82c2f 100644=20
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c=20
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c=20
@@ -2,6 +2,7 @@=20
 /*=20
 * Copyright(c) 2020 Intel Corporation.=20
 */=20
+#include <linux/mei_me.h>=20
 #include <linux/workqueue.h>=20
=20
 #include "gem/i915_gem_context.h"=20
@@ -203,6 +204,10 @@ int intel_pxp_init(struct drm_i915_private *i915)=20
 =C2=A0=C2=A0=C2=A0=C2=A0if (intel_gt_is_wedged(to_gt(i915)))=20
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENOTCONN;=20
=20
+=C2=A0=C2=A0=C2=A0=C2=A0/* iGPUs require CSME to be available to use PXP *=
/=20
+=C2=A0=C2=A0=C2=A0=C2=A0if (!IS_DGFX(i915) && !mei_me_device_present())=20
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENODEV;=20
+=20
 =C2=A0=C2=A0=C2=A0=C2=A0/*=20
 =C2=A0=C2=A0=C2=A0=C2=A0 * NOTE: Get the ctrl_gt before checking intel_pxp=
_is_supported since=20
 =C2=A0=C2=A0=C2=A0=C2=A0 * we still need it if PXP's backend tee transport=
 is needed.=20
--=20
2.43.0
------=_Part_8976324_590075631.1752665648643
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif=
; font-size: 10pt;"><div>Thank you for the fix! This worked around the issu=
e and disabled PXP,<br>which allowed our virtual machine to boot.<br><br>Te=
sted-by: Valentine Burley &lt;<a target=3D"_blank" href=3D"mailto:valentine=
.burley@collabora.com">valentine.burley@collabora.com</a>&gt;<br></div><div=
><br></div><div class=3D"zmail_extra_hr" style=3D"border-top: 1px solid rgb=
(204, 204, 204); height: 0px; margin-top: 10px; margin-bottom: 10px; line-h=
eight: 0px;"><br></div><div class=3D"zmail_extra" data-zbluepencil-ignore=
=3D"true"><div><br></div><div id=3D"Zm-_Id_-Sgn1">---- On Wed, 16 Jul 2025 =
01:00:02 +0200 <b>Daniele Ceraolo Spurio &lt;daniele.ceraolospurio@intel.co=
m&gt;</b> wrote ---<br></div><div><br></div><blockquote id=3D"blockquote_zm=
ail" style=3D"margin: 0px;"><div>The PXP flow requires us to communicate wi=
th CSME, which we do via a <br>mei component. Since the mei component bindi=
ng is async and can take <br>a bit to complete, we don't wait for it during=
 i915 load. If userspace <br>queries the state before the async binding is =
complete, we return an <br>"init in progress" state, with the expectation t=
hat it will eventually <br>transition to "init complete" if the CSME device=
 is functional. <br> <br>Mesa CI is flashing a custom coreboot on their Chr=
omebooks that hides <br>the CSME device, which means that we never transiti=
on to the "init <br>complete" state. While from an interface POV it is not =
incorrect to not <br>end up in "init complete" if the CSME is missing, we c=
an mitigate the <br>impact of this by simply checking if the CSME device is=
 available at <br>all before attempting to initialize PXP. <br> <br>Reporte=
d-by: Valentine Burley &lt;<a target=3D"_blank" href=3D"mailto:valentine.bu=
rley@collabora.com">valentine.burley@collabora.com</a>&gt; <br>Closes: <a t=
arget=3D"_blank" href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14516">https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516<=
/a> <br>Signed-off-by: Daniele Ceraolo Spurio &lt;<a target=3D"_blank" href=
=3D"mailto:daniele.ceraolospurio@intel.com">daniele.ceraolospurio@intel.com=
</a>&gt; <br>Cc: Rodrigo Vivi &lt;<a target=3D"_blank" href=3D"mailto:rodri=
go.vivi@intel.com">rodrigo.vivi@intel.com</a>&gt; <br>Cc: Alexander Usyskin=
 &lt;<a target=3D"_blank" href=3D"mailto:alexander.usyskin@intel.com">alexa=
nder.usyskin@intel.com</a>&gt; <br>Cc: Alan Previn &lt;<a target=3D"_blank"=
 href=3D"mailto:alan.previn.teres.alexis@intel.com">alan.previn.teres.alexi=
s@intel.com</a>&gt; <br>--- <br> drivers/gpu/drm/i915/i915_module.c   | 1 +=
 <br> drivers/gpu/drm/i915/pxp/intel_pxp.c | 5 +++++ <br> 2 files changed, =
6 insertions(+) <br> <br>diff --git a/drivers/gpu/drm/i915/i915_module.c b/=
drivers/gpu/drm/i915/i915_module.c <br>index 5862754c662c..07118a1ea14d 100=
644 <br>--- a/drivers/gpu/drm/i915/i915_module.c <br>+++ b/drivers/gpu/drm/=
i915/i915_module.c <br>@@ -126,3 +126,4 @@ MODULE_AUTHOR("Intel Corporation=
"); <br> <br> MODULE_DESCRIPTION(DRIVER_DESC); <br> MODULE_LICENSE("GPL and=
 additional rights"); <br>+ <br>diff --git a/drivers/gpu/drm/i915/pxp/intel=
_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c <br>index c077a1c464cf..e476c=
1d82c2f 100644 <br>--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c <br>+++ b/dri=
vers/gpu/drm/i915/pxp/intel_pxp.c <br>@@ -2,6 +2,7 @@ <br> /* <br> * Copyri=
ght(c) 2020 Intel Corporation. <br> */ <br>+#include &lt;linux/mei_me.h&gt;=
 <br> #include &lt;linux/workqueue.h&gt; <br> <br> #include "gem/i915_gem_c=
ontext.h" <br>@@ -203,6 +204,10 @@ int intel_pxp_init(struct drm_i915_priva=
te *i915) <br> &nbsp;&nbsp;&nbsp;&nbsp;if (intel_gt_is_wedged(to_gt(i915)))=
 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -ENOTCONN; <br=
> <br>+&nbsp;&nbsp;&nbsp;&nbsp;/* iGPUs require CSME to be available to use=
 PXP */ <br>+&nbsp;&nbsp;&nbsp;&nbsp;if (!IS_DGFX(i915) &amp;&amp; !mei_me_=
device_present()) <br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;retu=
rn -ENODEV; <br>+ <br> &nbsp;&nbsp;&nbsp;&nbsp;/* <br> &nbsp;&nbsp;&nbsp;&n=
bsp; * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since <=
br> &nbsp;&nbsp;&nbsp;&nbsp; * we still need it if PXP's backend tee transp=
ort is needed. <br>-- <br>2.43.0 <br> <br></div></blockquote></div><div><br=
></div></div><br></body></html>
------=_Part_8976324_590075631.1752665648643--

