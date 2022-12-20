Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C03651C5A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 09:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B4010E09C;
	Tue, 20 Dec 2022 08:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2055 seconds by postgrey-1.36 at gabe;
 Tue, 20 Dec 2022 08:31:53 UTC
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D7E10E09C
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 08:31:53 +0000 (UTC)
Received: from 91-156-4-168.elisa-laajakaista.fi ([91.156.4.168]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1p7XVF-005ItP-1c
 for intel-gfx@lists.freedesktop.org; Tue, 20 Dec 2022 09:57:34 +0200
Message-ID: <42c2034c1ca4135e4c586905360f7a28ea4a0059.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 09:57:32 +0200
In-Reply-To: <20221208143853.442803-1-luciano.coelho@intel.com>
References: <20221208143853.442803-1-luciano.coelho@intel.com>
Content-Type: multipart/alternative; boundary="=-SnkVzAEvs07BwTyCCgwe"
User-Agent: Evolution 3.46.2-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_MESSAGE,TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/mtl: Limit scaler input to 4k
 in plane scaling [RESEND]
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

--=-SnkVzAEvs07BwTyCCgwe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From: Animesh Manna <animesh.manna@intel.com>

As part of die area reduction max input source modified to 4096
for MTL so modified range check logic of scaler.

Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 31 +++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

In v2:
   * No changes;

In v3:
   * Removed stray reviewed-by tag;
   * Added my s-o-b.

In v4:
   * No changes.

For some reason this patch didn't reach the list before.  Resending.

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i9=
15/display/skl_scaler.c
index d7390067b7d4..6baa07142b03 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -103,6 +103,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, =
bool force_detach,
 	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
 	const struct drm_display_mode *adjusted_mode =3D
 		&crtc_state->hw.adjusted_mode;
+	int min_src_w, min_src_h, min_dst_w, min_dst_h;
+	int max_src_w, max_src_h, max_dst_w, max_dst_h;
=20
 	/*
 	 * Src coordinates are already rotated by 270 degrees for
@@ -157,15 +159,28 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
 		return -EINVAL;
 	}
=20
+	min_src_w =3D SKL_MIN_SRC_W;
+	min_src_h =3D SKL_MIN_SRC_H;
+	min_dst_w =3D SKL_MIN_DST_W;
+	min_dst_h =3D SKL_MIN_DST_H;
+
+	if (DISPLAY_VER(dev_priv) >=3D 11 && DISPLAY_VER(dev_priv) < 14) {
+		max_src_w =3D ICL_MAX_SRC_W;
+		max_src_h =3D ICL_MAX_SRC_H;
+		max_dst_w =3D ICL_MAX_DST_W;
+		max_dst_h =3D ICL_MAX_DST_H;
+	} else {
+		max_src_w =3D SKL_MAX_SRC_W;
+		max_src_h =3D SKL_MAX_SRC_H;
+		max_dst_w =3D SKL_MAX_DST_W;
+		max_dst_h =3D SKL_MAX_DST_H;
+	}
+
 	/* range checks */
-	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
-	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
-	    (DISPLAY_VER(dev_priv) >=3D 11 &&
-	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
-	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
-	    (DISPLAY_VER(dev_priv) < 11 &&
-	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
-	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
+	if (src_w < min_src_w || src_h < min_src_h ||
+	    dst_w < min_dst_w || dst_h < min_dst_h ||
+	    src_w > max_src_w || src_h > max_src_h ||
+	    dst_w > max_dst_w || dst_h > max_dst_h) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
 			    "size is out of scaler range\n",


--=-SnkVzAEvs07BwTyCCgwe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><pre>From: Animesh Manna &lt;<a href=3D"mailto:ani=
mesh.manna@intel.com">animesh.manna@intel.com</a>&gt;</pre><pre><br></pre><=
pre>As part of die area reduction max input source modified to 4096</pre><p=
re>for MTL so modified range check logic of scaler.</pre><pre><br></pre><pr=
e>Signed-off-by: Jos=C3=A9 Roberto de Souza &lt;<a href=3D"mailto:jose.souz=
a@intel.com">jose.souza@intel.com</a>&gt;</pre><pre>Signed-off-by: Animesh =
Manna &lt;<a href=3D"mailto:animesh.manna@intel.com">animesh.manna@intel.co=
m</a>&gt;</pre><pre>Signed-off-by: Luca Coelho &lt;<a href=3D"mailto:lucian=
o.coelho@intel.com">luciano.coelho@intel.com</a>&gt;</pre><pre>---</pre><pr=
e> drivers/gpu/drm/i915/display/skl_scaler.c | 31 +++++++++++++++++------</=
pre><pre> 1 file changed, 23 insertions(+), 8 deletions(-)</pre><pre><br></=
pre><pre>In v2:</pre><pre>   * No changes;</pre><pre><br></pre><pre>In v3:<=
/pre><pre>   * Removed stray reviewed-by tag;</pre><pre>   * Added my s-o-b=
.</pre><pre><br></pre><pre>In v4:</pre><pre>   * No changes.</pre><pre><br>=
</pre><pre>For some reason this patch didn't reach the list before.  Resend=
ing.</pre><pre><br></pre><pre>diff --git a/drivers/gpu/drm/i915/display/skl=
_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c</pre><pre>index d7390=
067b7d4..6baa07142b03 100644</pre><pre>--- a/drivers/gpu/drm/i915/display/s=
kl_scaler.c</pre><pre>+++ b/drivers/gpu/drm/i915/display/skl_scaler.c</pre>=
<pre>@@ -103,6 +103,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_st=
ate, bool force_detach,</pre><pre> 	struct drm_i915_private *dev_priv =3D t=
o_i915(crtc-&gt;base.dev);</pre><pre> 	const struct drm_display_mode *adjus=
ted_mode =3D</pre><pre> 		&amp;crtc_state-&gt;hw.adjusted_mode;</pre><pre>+=
	int min_src_w, min_src_h, min_dst_w, min_dst_h;</pre><pre>+	int max_src_w,=
 max_src_h, max_dst_w, max_dst_h;</pre><pre> </pre><pre> 	/*</pre><pre> 	 *=
 Src coordinates are already rotated by 270 degrees for</pre><pre>@@ -157,1=
5 +159,28 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool fo=
rce_detach,</pre><pre> 		return -EINVAL;</pre><pre> 	}</pre><pre> </pre><pr=
e>+	min_src_w =3D SKL_MIN_SRC_W;</pre><pre>+	min_src_h =3D SKL_MIN_SRC_H;</=
pre><pre>+	min_dst_w =3D SKL_MIN_DST_W;</pre><pre>+	min_dst_h =3D SKL_MIN_D=
ST_H;</pre><pre>+</pre><pre>+	if (DISPLAY_VER(dev_priv) &gt;=3D 11 &amp;&am=
p; DISPLAY_VER(dev_priv) &lt; 14) {</pre><pre>+		max_src_w =3D ICL_MAX_SRC_=
W;</pre><pre>+		max_src_h =3D ICL_MAX_SRC_H;</pre><pre>+		max_dst_w =3D ICL=
_MAX_DST_W;</pre><pre>+		max_dst_h =3D ICL_MAX_DST_H;</pre><pre>+	} else {<=
/pre><pre>+		max_src_w =3D SKL_MAX_SRC_W;</pre><pre>+		max_src_h =3D SKL_MA=
X_SRC_H;</pre><pre>+		max_dst_w =3D SKL_MAX_DST_W;</pre><pre>+		max_dst_h =
=3D SKL_MAX_DST_H;</pre><pre>+	}</pre><pre>+</pre><pre> 	/* range checks */=
</pre><pre>-	if (src_w &lt; SKL_MIN_SRC_W || src_h &lt; SKL_MIN_SRC_H ||</p=
re><pre>-	    dst_w &lt; SKL_MIN_DST_W || dst_h &lt; SKL_MIN_DST_H ||</pre>=
<pre>-	    (DISPLAY_VER(dev_priv) &gt;=3D 11 &amp;&amp;</pre><pre>-	     (s=
rc_w &gt; ICL_MAX_SRC_W || src_h &gt; ICL_MAX_SRC_H ||</pre><pre>-	      ds=
t_w &gt; ICL_MAX_DST_W || dst_h &gt; ICL_MAX_DST_H)) ||</pre><pre>-	    (DI=
SPLAY_VER(dev_priv) &lt; 11 &amp;&amp;</pre><pre>-	     (src_w &gt; SKL_MAX=
_SRC_W || src_h &gt; SKL_MAX_SRC_H ||</pre><pre>-	      dst_w &gt; SKL_MAX_=
DST_W || dst_h &gt; SKL_MAX_DST_H)))	{</pre><pre>+	if (src_w &lt; min_src_w=
 || src_h &lt; min_src_h ||</pre><pre>+	    dst_w &lt; min_dst_w || dst_h &=
lt; min_dst_h ||</pre><pre>+	    src_w &gt; max_src_w || src_h &gt; max_src=
_h ||</pre><pre>+	    dst_w &gt; max_dst_w || dst_h &gt; max_dst_h) {</pre>=
<pre> 		drm_dbg_kms(&amp;dev_priv-&gt;drm,</pre><pre> 			    "scaler_user i=
ndex %u.%u: src %ux%u dst %ux%u "</pre><pre> 			    "size is out of scaler =
range\n",</pre><div><br></div><div><span></span></div></body></html>

--=-SnkVzAEvs07BwTyCCgwe--
