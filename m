Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B87B98C9DD4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 15:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC1110E700;
	Mon, 20 May 2024 13:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="m/LbXgjW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 333 seconds by postgrey-1.36 at gabe;
 Sun, 19 May 2024 15:40:03 UTC
Received: from mr85p00im-hyfv06021401.me.com (mr85p00im-hyfv06021401.me.com
 [17.58.23.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00A410E174
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 May 2024 15:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1716132867; bh=+mCGBENVlQIS+dvweTnVDii2QJywLVkSDXoaeBGEjgA=;
 h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
 b=m/LbXgjWQt8OESRD0vDsAkXiqDi+7obhuI3lCjNL3bLkZpfKpxExy0k+/CouJUuNG
 OWD/zPKAEFvNNcsrSrWiF1xMxNiFtdDzZiS+zehPlGniZONCUe3oQk1fdgH9k2cs7i
 Fqm5PBGP715ZQrOVIheh6EHIJTVb6RQ5pSsceN9Yw2NjJyMXbE2N4/QDod6wzTLyjp
 nRQmGE4brkTdGLuiE8EwktJbD5GJPWbkPhF7DCGE5eNwytm2LVsivhl2VIDV3amtNM
 yqsw82kYb+hYxvxa6cfdkQ69qKO6PBdIVbn43NJHdKWzMqNaQS9GIHSLOz2cP8+JXo
 idB8NfECJr4iw==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com
 [17.57.152.18])
 by mr85p00im-hyfv06021401.me.com (Postfix) with ESMTPSA id 1358D30382FD;
 Sun, 19 May 2024 15:34:24 +0000 (UTC)
From: Gnattu OC <gnattuoc@me.com>
Message-Id: <EC3326C7-3810-47A3-9BDE-6F9B2EA37D6B@me.com>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_56A64CEC-8DFB-4238-9CE5-C02766CF18BE"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH] drm/i915/gt: Fix CCS id's calculation for CCS mode setting
Date: Sun, 19 May 2024 23:34:12 +0800
In-Reply-To: <20240517090616.242529-1-andi.shyti@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@kernel.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Jian Ye <jian.ye@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20240517090616.242529-1-andi.shyti@linux.intel.com>
X-Mailer: Apple Mail (2.3774.600.62)
X-Proofpoint-GUID: KngUkHdT1eYE2UcbP-pTQ-52z3LlU31W
X-Proofpoint-ORIG-GUID: KngUkHdT1eYE2UcbP-pTQ-52z3LlU31W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-19_06,2024-05-17_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 malwarescore=0
 adultscore=0 phishscore=0 mlxlogscore=999 mlxscore=0 clxscore=1011
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2405190136
X-Mailman-Approved-At: Mon, 20 May 2024 13:07:16 +0000
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


--Apple-Mail=_56A64CEC-8DFB-4238-9CE5-C02766CF18BE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On May 17, 2024, at 17:06, Andi Shyti <andi.shyti@linux.intel.com> =
wrote:
>=20
> The whole point of the previous fixes has been to change the CCS
> hardware configuration to generate only one stream available to
> the compute users. We did this by changing the info.engine_mask
> that is set during device probe, reset during the detection of
> the fused engines, and finally reset again when choosing the CCS
> mode.
>=20
> We can't use the engine_mask variable anymore, as with the
> current configuration, it imposes only one CCS no matter what the
> hardware configuration is.
>=20
> Before changing the engine_mask for the third time, save it and
> use it for calculating the CCS mode.
>=20
> After the previous changes, the user reported a performance drop
> to around 1/4. We have tested that the compute operations, with
> the current patch, have improved by the same factor.
>=20
> Fixes: 6db31251bb26 ("drm/i915/gt: Enable only one CCS for compute =
workload")
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Cc: Gnattu OC <gnattuoc@me.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Tested-by: Jian Ye <jian.ye@intel.com>
> ---
> Hi,
>=20
> This ensures that all four CCS engines work properly. However,
> during the tests, Jian detected that the performance during
> memory copy assigned to the CCS engines is negatively impacted.
>=20
> I believe this might be expected, considering that based on the
> engines' availability, the media user might decide to reduce the
> copy in multitasking.
>=20
> With the upcoming work that will give the user the chance to
> configure the CCS mode, this might improve.
>=20
> Gnattu, can I use your kindness to ask for a test on this patch
> and check whether the performance improve on your side as well?
>=20
> Thanks,
> Andi
>=20
> drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 6 ++++++
> drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 2 +-
> drivers/gpu/drm/i915/gt/intel_gt_types.h    | 8 ++++++++
> 3 files changed, 15 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c =
b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 5c8e9ee3b008..3b740ca25000 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -885,6 +885,12 @@ static intel_engine_mask_t =
init_engine_mask(struct intel_gt *gt)
> 	if (IS_DG2(gt->i915)) {
> 		u8 first_ccs =3D __ffs(CCS_MASK(gt));
>=20
> +		/*
> +		 * Store the number of active cslices before
> +		 * changing the CCS engine configuration
> +		 */
> +		gt->ccs.cslices =3D CCS_MASK(gt);
> +
> 		/* Mask off all the CCS engine */
> 		info->engine_mask &=3D ~GENMASK(CCS3, CCS0);
> 		/* Put back in the first CCS engine */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c =
b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
> index 99b71bb7da0a..3c62a44e9106 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
> @@ -19,7 +19,7 @@ unsigned int intel_gt_apply_ccs_mode(struct intel_gt =
*gt)
>=20
> 	/* Build the value for the fixed CCS load balancing */
> 	for (cslice =3D 0; cslice < I915_MAX_CCS; cslice++) {
> -		if (CCS_MASK(gt) & BIT(cslice))
> +		if (gt->ccs.cslices & BIT(cslice))
> 			/*
> 			 * If available, assign the cslice
> 			 * to the first available engine...
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h =
b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index def7dd0eb6f1..cfdd2ad5e954 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -207,6 +207,14 @@ struct intel_gt {
> 					    [MAX_ENGINE_INSTANCE + 1];
> 	enum intel_submission_method submission_method;
>=20
> +	struct {
> +		/*
> +		 * Mask of the non fused CCS slices
> +		 * to be used for the load balancing
> +		 */
> +		intel_engine_mask_t cslices;
> +	} ccs;
> +
> 	/*
> 	 * Default address space (either GGTT or ppGTT depending on =
arch).
> 	 *
> --=20
> 2.43.0

Hi Andi,

I can confirm that this patch restores most of the performance we had =
before the CCS change.=20

I do notice a reduction in memcpy performance, but it is good enough for =
our use case since our video processing pipeline is zero-copy once the =
video is loaded to the VRAM.

Tested-by: Gnattu OC <gnattuoc@me.com <mailto:gnattuoc@me.com>>


--Apple-Mail=_56A64CEC-8DFB-4238-9CE5-C02766CF18BE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><blockquote =
type=3D"cite"><div>On May 17, 2024, at 17:06, Andi Shyti =
&lt;andi.shyti@linux.intel.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div>The whole point of the =
previous fixes has been to change the CCS<br>hardware configuration to =
generate only one stream available to<br>the compute users. We did this =
by changing the info.engine_mask<br>that is set during device probe, =
reset during the detection of<br>the fused engines, and finally reset =
again when choosing the CCS<br>mode.<br><br>We can't use the engine_mask =
variable anymore, as with the<br>current configuration, it imposes only =
one CCS no matter what the<br>hardware configuration is.<br><br>Before =
changing the engine_mask for the third time, save it and<br>use it for =
calculating the CCS mode.<br><br>After the previous changes, the user =
reported a performance drop<br>to around 1/4. We have tested that the =
compute operations, with<br>the current patch, have improved by the same =
factor.<br><br>Fixes: 6db31251bb26 ("drm/i915/gt: Enable only one CCS =
for compute workload")<br>Cc: Chris Wilson =
&lt;chris.p.wilson@linux.intel.com&gt;<br>Cc: Gnattu OC =
&lt;gnattuoc@me.com&gt;<br>Cc: Joonas Lahtinen =
&lt;joonas.lahtinen@linux.intel.com&gt;<br>Cc: Matt Roper =
&lt;matthew.d.roper@intel.com&gt;<br>Tested-by: Jian Ye =
&lt;jian.ye@intel.com&gt;<br>---<br>Hi,<br><br>This ensures that all =
four CCS engines work properly. However,<br>during the tests, Jian =
detected that the performance during<br>memory copy assigned to the CCS =
engines is negatively impacted.<br><br>I believe this might be expected, =
considering that based on the<br>engines' availability, the media user =
might decide to reduce the<br>copy in multitasking.<br><br>With the =
upcoming work that will give the user the chance to<br>configure the CCS =
mode, this might improve.<br><br>Gnattu, can I use your kindness to ask =
for a test on this patch<br>and check whether the performance improve on =
your side as well?<br><br>Thanks,<br>Andi<br><br> =
drivers/gpu/drm/i915/gt/intel_engine_cs.c &nbsp;&nbsp;| 6 ++++++<br> =
drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 2 +-<br> =
drivers/gpu/drm/i915/gt/intel_gt_types.h &nbsp;&nbsp;&nbsp;| 8 =
++++++++<br> 3 files changed, 15 insertions(+), 1 =
deletion(-)<br><br>diff --git =
a/drivers/gpu/drm/i915/gt/intel_engine_cs.c =
b/drivers/gpu/drm/i915/gt/intel_engine_cs.c<br>index =
5c8e9ee3b008..3b740ca25000 100644<br>--- =
a/drivers/gpu/drm/i915/gt/intel_engine_cs.c<br>+++ =
b/drivers/gpu/drm/i915/gt/intel_engine_cs.c<br>@@ -885,6 +885,12 @@ =
static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)<br> =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>if (IS_DG2(gt-&gt;i915)) {<br> <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>u8 first_ccs =3D =
__ffs(CCS_MASK(gt));<br><br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>/*<br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * Store =
the number of active cslices before<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span> * changing the CCS engine =
configuration<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span> */<br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>gt-&gt;ccs.cslices =3D CCS_MASK(gt);<br>+<br> <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Mask =
off all the CCS engine */<br> <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>info-&gt;engine_mask &amp;=3D =
~GENMASK(CCS3, CCS0);<br> <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>/* Put back in the first CCS =
engine */<br>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c =
b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c<br>index =
99b71bb7da0a..3c62a44e9106 100644<br>--- =
a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c<br>+++ =
b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c<br>@@ -19,7 +19,7 @@ =
unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)<br><br> <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Build =
the value for the fixed CCS load balancing */<br> <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>for =
(cslice =3D 0; cslice &lt; I915_MAX_CCS; cslice++) {<br>-<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if =
(CCS_MASK(gt) &amp; BIT(cslice))<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>if (gt-&gt;ccs.cslices &amp; =
BIT(cslice))<br> <span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>/*<br> <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> * If available, assign the cslice<br> <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * to the =
first available engine...<br>diff --git =
a/drivers/gpu/drm/i915/gt/intel_gt_types.h =
b/drivers/gpu/drm/i915/gt/intel_gt_types.h<br>index =
def7dd0eb6f1..cfdd2ad5e954 100644<br>--- =
a/drivers/gpu/drm/i915/gt/intel_gt_types.h<br>+++ =
b/drivers/gpu/drm/i915/gt/intel_gt_types.h<br>@@ -207,6 +207,14 @@ =
struct intel_gt {<br> <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span> =
&nbsp;&nbsp;&nbsp;[MAX_ENGINE_INSTANCE + 1];<br> <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>enum =
intel_submission_method submission_method;<br><br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>struct =
{<br>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>/*<br>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> * Mask of the non fused CCS slices<br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * to be =
used for the load balancing<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span> */<br>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>intel_engine_mask_t cslices;<br>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>} ccs;<br>+<br> <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/*<br> =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =
* Default address space (either GGTT or ppGTT depending on arch).<br> =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =
*<br>-- =
<br>2.43.0<br></div></div></blockquote><div><br></div><div><div>Hi =
Andi,</div><div><br></div><div>I can confirm that this patch restores =
most of the performance we had before the CCS =
change.&nbsp;</div><div><br></div><div>I do notice a reduction in memcpy =
performance, but it is good enough for our use case since our video =
processing pipeline is zero-copy once the video is loaded to the =
VRAM.</div><div><br></div></div></div><div>Tested-by: Gnattu OC &lt;<a =
href=3D"mailto:gnattuoc@me.com">gnattuoc@me.com</a>&gt;</div><br></body></=
html>=

--Apple-Mail=_56A64CEC-8DFB-4238-9CE5-C02766CF18BE--
