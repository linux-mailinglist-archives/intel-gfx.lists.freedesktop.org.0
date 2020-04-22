Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C1A1B4C7B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 20:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 384B56E121;
	Wed, 22 Apr 2020 18:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49AD36E121;
 Wed, 22 Apr 2020 18:03:06 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 921185C0234;
 Wed, 22 Apr 2020 14:03:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 22 Apr 2020 14:03:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=rc+bNVMYmTRhZkKcz+9vbnRjE0U
 he1/O0mLVy3TK7JI=; b=F1hB92rzc2hVzN1kq0jDKM00fQzLGEsjTBaAmphuQwb
 U79SQl3xGGX52xYgFFlZcX4QUnL4tHN9yUF2Kp2fdoBaKmDLDxz643CcgMfgk2hC
 vO5ep5pUbYw7EDr4VB406VF89NdMWAhDa6l9UERgRxmbUVjpd13TSl9qPYagc39U
 kLh+tDNxR/R+/vyk4B9ox4oMS+8Qh8O32fQzD2/8NxjdCE/swTwF+M3EVjoQWTwV
 hRbdrMjoiElMgIjduflLDL9dHObll3aIj2+j3Nc/pNNLbkZpoS5pXrDhHOQnqxV1
 CBTpQgzweuyr6hsepJYHAsc9+xHbzxHfg5U6OfE8EWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=rc+bNV
 MYmTRhZkKcz+9vbnRjE0Uhe1/O0mLVy3TK7JI=; b=L072+ViygIzFpl8iF6nADR
 K8S1Gqo5sRwaNSO5Xmhdnusn/4elMqTJPs0R5bJSB7dlXMvrYSIulcHZFLpWw42/
 m3nfsnIGNuNCaCM9FMbodfIar0y4xcbf1rx9t13KYX1uVnbGSC3yRJEZQY45OQuL
 rBffcP/Vo9/+I+KPYkwjCVfGohYux0larPpDD4Y2acqB1rZlNbX4cUZ7jj8T2ggP
 hWxUmo42sY2AVydqaSoPkN2mTfwHVkKiKa+iYdhevgabNDGcwnIuncX/v/iFqZLk
 jfdPboSeNgO9gInGom3qNoFyWAGPWVcZ9XJIzvRvEJdvKBVXmE4ZFQGPrZrz1Z9g
 ==
X-ME-Sender: <xms:14agXjXHyGWOcJr5mV53ytxOpSxzxmMwgG4QuLtpfcLRk7Ywzg8AzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeejgdduudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehmtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:14agXnfg3XId77fcGQ9Uu0JVqrftAkqHJS_PAgg717pxHtFbQNCDdg>
 <xmx:14agXmyOn8uV61lKk5Julq5EcmUVeBFQeekw9TXAxQzxfFVK3m4KdQ>
 <xmx:14agXu3lYY4LLZC1GfYFnkucVnh7ClMHmWYMgRMcpE6RukESPEZ7xg>
 <xmx:2IagXk7xtefBLcxc-7fB-a1S_gRy6kJJ_Ns-2jZy83GrHFRmk8Ugxg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 818073280064;
 Wed, 22 Apr 2020 14:03:03 -0400 (EDT)
Date: Wed, 22 Apr 2020 20:03:01 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Message-ID: <20200422180301.kvvrbhq4j33q6mb6@gilmour.lan>
References: <20191022010032.pgqop52v4gz5omlc@smtp.gmail.com>
 <20200415094533.teqmhp7hoz5hbllw@gilmour.lan>
 <20200421210705.igifp4zckhxxmlll@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3q75q52ttdrwod3s"
Content-Disposition: inline
In-Reply-To: <20200421210705.igifp4zckhxxmlll@smtp.gmail.com>
X-Mailman-Approved-At: Wed, 22 Apr 2020 18:08:18 +0000
Subject: Re: [Intel-gfx] [PATCH v7 i-g-t 4/4] kms_writeback: Add
 writeback-check-output
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
Cc: Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org, nd <nd@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--3q75q52ttdrwod3s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Apr 21, 2020 at 05:07:05PM -0400, Rodrigo Siqueira wrote:
> On 04/15, Maxime Ripard wrote:
> > On Mon, Oct 21, 2019 at 10:00:39PM -0300, Brian Starkey wrote:
> > > Add a test which makes commits using the writeback connector, and
> > > checks the output buffer hash to make sure it is/isn't written as
> > > appropriate.
> > >
> > > V6: Simon Ser
> > >  - Add igt documentation with igt_describe
> > >  - Replace int ret by unsigned int fd_id when calling igt_create_fb
> > >  - Add a descriptive error message if sync_fence_wait fail
> > >  - Replace color_idx variable by i
> > >  - Use in_fb instead of out_fb for getting the expected CRC
> > >  - Drop unnecessary parentheses
> > >  - Replace igt_fb_mod_to_tiling to DRM_FORMAT_MOD_LINEAR
> > >
> > > Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> > > [rebased and updated the patch to address feedback]
> > > Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
> > > ---
> > >  tests/kms_writeback.c | 123 ++++++++++++++++++++++++++++++++++++++++=
++
> > >  1 file changed, 123 insertions(+)
> > >
> > > diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
> > > index a373ec4d..068595b9 100644
> > > --- a/tests/kms_writeback.c
> > > +++ b/tests/kms_writeback.c
> > > @@ -30,6 +30,7 @@
> > >  #include "igt.h"
> > >  #include "igt_core.h"
> > >  #include "igt_fb.h"
> > > +#include "sw_sync.h"
> > >
> > >  IGT_TEST_DESCRIPTION("Exercise writeback feature.");
> > >
> > > @@ -196,6 +197,115 @@ static void writeback_test_fb(igt_output_t *out=
put, igt_fb_t *valid_fb, igt_fb_t
> > >  	igt_assert(ret =3D=3D -EINVAL);
> > >  }
> > >
> > > +static void fill_fb(igt_fb_t *fb, double color[3])
> > > +{
> > > +	cairo_t *cr =3D igt_get_cairo_ctx(fb->fd, fb);
> > > +	igt_assert(cr);
> > > +
> > > +	igt_paint_color(cr, 0, 0, fb->width, fb->height,
> > > +			color[0], color[1], color[2]);
> > > +}
> > > +
> >=20
> > On which platform did you test this? On Arm (but I would assume
> > anything !i915), this will fire up an assert.
> >=20
> > I've replaced this with a igt_fb_map_buffer/memset, and it works as
> > expected.
>
> Could you share your fix for this issue? Since you already have a
> solution that you know that works on ARM, I can just use it for avoiding
> an unnecessary round of review in the next version.

Sure, you'll find it attached

Maxime

--3q75q52ttdrwod3s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="arm32-fixes.patch"
Content-Transfer-Encoding: quoted-printable

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index 97a656c8..be825220 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -3812,12 +3812,9 @@ int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *crc)
 	if (fb->num_planes !=3D 1)
 		return -EINVAL;
=20
-	if (fb->is_dumb)
-		ptr =3D kmstest_dumb_map_buffer(fb->fd, fb->gem_handle, fb->size,
-					      PROT_READ);
-	else
-		ptr =3D gem_mmap__gtt(fb->fd, fb->gem_handle, fb->size,
-				    PROT_READ);
+	ptr =3D igt_fb_map_buffer(fb->fd, fb);
+	igt_assert(ptr);
+	map =3D ptr;
=20
 	/*
 	 * Framebuffers are often uncached, which can make byte-wise accesses
@@ -3846,7 +3843,7 @@ int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *crc)
 	crc->crc[0] =3D hash;
=20
 	free(line);
-	munmap(map, fb->size);
+	igt_fb_unmap_buffer(fb, map);
=20
 	return 0;
 #undef FNV1a_OFFSET_BIAS
diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
index 068595b9..c2ee05dd 100644
--- a/tests/kms_writeback.c
+++ b/tests/kms_writeback.c
@@ -149,7 +149,7 @@ static int do_writeback_test(igt_output_t *output, uint=
32_t fb_id,
=20
 	igt_output_set_prop_value(output, IGT_CONNECTOR_CRTC_ID, config->crtc->cr=
tc_id);
 	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, fb_id);
-	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR, =
(uint64_t)out_fence_ptr);
+	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR, =
(uint64_t)(uintptr_t)out_fence_ptr);
=20
 	if (ptr_valid)
 		*out_fence_ptr =3D 0;
@@ -197,13 +197,18 @@ static void writeback_test_fb(igt_output_t *output, i=
gt_fb_t *valid_fb, igt_fb_t
 	igt_assert(ret =3D=3D -EINVAL);
 }
=20
-static void fill_fb(igt_fb_t *fb, double color[3])
+static void fill_fb(igt_fb_t *fb, uint32_t pixel)
 {
-	cairo_t *cr =3D igt_get_cairo_ctx(fb->fd, fb);
-	igt_assert(cr);
+	void *ptr;
=20
-	igt_paint_color(cr, 0, 0, fb->width, fb->height,
-			color[0], color[1], color[2]);
+	igt_assert(fb->drm_format =3D=3D DRM_FORMAT_XRGB8888);
+
+	ptr =3D igt_fb_map_buffer(fb->fd, fb);
+	igt_assert(ptr);
+
+	memset(ptr, pixel, fb->strides[0] * fb->height);=20
+
+	igt_fb_unmap_buffer(fb, ptr);
 }
=20
 static void get_and_wait_out_fence(igt_output_t *output)
@@ -222,11 +227,8 @@ static void writeback_sequence(igt_output_t *output, i=
gt_plane_t *plane,
 				igt_fb_t *in_fb, igt_fb_t *out_fbs[], int n_commits)
 {
 	int i;
-	double in_fb_colors[2][3] =3D {
-		{ 1.0, 0.0, 0.0 },
-		{ 0.0, 1.0, 0.0 },
-	};
-	double clear_color[3] =3D { 1.0, 1.0, 1.0 };
+	uint32_t in_fb_colors[2] =3D { 0xffff0000, 0xff00ff00 };
+	uint32_t clear_color =3D 0xffffffff;
 	igt_crc_t cleared_crc, out_expected;
=20
 	for (i =3D 0; i < n_commits; i++) {

--3q75q52ttdrwod3s
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--3q75q52ttdrwod3s--
