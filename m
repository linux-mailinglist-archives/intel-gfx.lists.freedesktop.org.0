Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD51D1AA47B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 15:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1386E82D;
	Wed, 15 Apr 2020 13:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07296E939;
 Wed, 15 Apr 2020 09:51:07 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DCB225C025D;
 Wed, 15 Apr 2020 05:45:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 05:45:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=7fGtIQAxiUuC+rt8tquSMkMyMu8
 0K6kIPJ4qo27RE/k=; b=WGL/Kr91eUFnf7WzHkKn0HcSRNas9GJFDw48t4HI1ux
 hfHXAbDP01rqhP+LIIYuJVi8e8vV5J6RkJOKnoDRMjYlfdxiLvBW+xWp31YhpIRa
 eHx8iNieD7PgRU+FTsIgrsSTn+rud9wkHEGPSm+ewoNAUECyUXP3IG+5VorlDPb3
 D4tj3eplo9Krb0cJCOkvrIDFRd1vi9jVstkVEr/Ea27i/kL9f0JSLUSu+uG66YXA
 5yNo5SrMjg28GZj2CJwm8IY/bEd85OTekFlL3arGWZa961KmEj+7BRvmxdYRisq3
 mdtZbuzjtSZl2HqphphoQU701nqXgKx2+9aNkq0gMmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7fGtIQ
 AxiUuC+rt8tquSMkMyMu80K6kIPJ4qo27RE/k=; b=wr87J/Wdz+w1FrScNPj6JU
 ElLdFjIktYu/etsMfNoZeqHIscxcGKQj2q5rlrnXPe7tCnv7YLDPKW6Emq6yOkd1
 Xbdt8PexmmNiMJ3Y4qcu/n5H+LJXoQQJ4OQ2H2JqpmpFx5k+YzwDkptn9QEvprs0
 ctXpqDbFvXeoZ48VK0Ztxt/qCkg1n8HR0Lub395aMEZkJhCAhIKnzupZvcHN/byy
 GqeojL53Vk+8WyRbIMR5jrmLmBaooA9aNakWbs21cfNAySMR/fEapq9QtHKHhHP/
 sDk3O1MLtoL6jAKZJEz/TQx4eAdp8zuCTYFGnTwaO3CbdugUqyn8CYZNeHJNJoWw
 ==
X-ME-Sender: <xms:vteWXiJOQlcJm4eEoFbt7oMoSfBKeDqEoFsieGgAh9aOPQ4VZPo6ng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:vteWXsj2NyClj36tQgBy9s0yanTvDS1pMVxs8Nfl01PItIrmtCjoGA>
 <xmx:vteWXr_EfumUfvpFMM9rg89y2P2SMhWVPq3TIozS7UqSMr7lAw4Qsw>
 <xmx:vteWXqgKkt0bDQEjSseHbjaotihKskpoTKvyrKkCsSnYCs3dnhXCcQ>
 <xmx:v9eWXk8AOmcfo4S0crcs1FL9Sqq70f5gXKSQZf5RZeZqQZ_hif0fIw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B14813060057;
 Wed, 15 Apr 2020 05:45:34 -0400 (EDT)
Date: Wed, 15 Apr 2020 11:45:33 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Message-ID: <20200415094533.teqmhp7hoz5hbllw@gilmour.lan>
References: <20191022010032.pgqop52v4gz5omlc@smtp.gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191022010032.pgqop52v4gz5omlc@smtp.gmail.com>
X-Mailman-Approved-At: Wed, 15 Apr 2020 13:32:12 +0000
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
Content-Type: multipart/mixed; boundary="===============0846904180=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0846904180==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vpcz6ucay7yepl5n"
Content-Disposition: inline


--vpcz6ucay7yepl5n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

On Mon, Oct 21, 2019 at 10:00:39PM -0300, Brian Starkey wrote:
> Add a test which makes commits using the writeback connector, and
> checks the output buffer hash to make sure it is/isn't written as
> appropriate.
>
> V6: Simon Ser
>  - Add igt documentation with igt_describe
>  - Replace int ret by unsigned int fd_id when calling igt_create_fb
>  - Add a descriptive error message if sync_fence_wait fail
>  - Replace color_idx variable by i
>  - Use in_fb instead of out_fb for getting the expected CRC
>  - Drop unnecessary parentheses
>  - Replace igt_fb_mod_to_tiling to DRM_FORMAT_MOD_LINEAR
>
> Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> [rebased and updated the patch to address feedback]
> Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
> ---
>  tests/kms_writeback.c | 123 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 123 insertions(+)
>
> diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
> index a373ec4d..068595b9 100644
> --- a/tests/kms_writeback.c
> +++ b/tests/kms_writeback.c
> @@ -30,6 +30,7 @@
>  #include "igt.h"
>  #include "igt_core.h"
>  #include "igt_fb.h"
> +#include "sw_sync.h"
>
>  IGT_TEST_DESCRIPTION("Exercise writeback feature.");
>
> @@ -196,6 +197,115 @@ static void writeback_test_fb(igt_output_t *output, igt_fb_t *valid_fb, igt_fb_t
>  	igt_assert(ret == -EINVAL);
>  }
>
> +static void fill_fb(igt_fb_t *fb, double color[3])
> +{
> +	cairo_t *cr = igt_get_cairo_ctx(fb->fd, fb);
> +	igt_assert(cr);
> +
> +	igt_paint_color(cr, 0, 0, fb->width, fb->height,
> +			color[0], color[1], color[2]);
> +}
> +

On which platform did you test this? On Arm (but I would assume
anything !i915), this will fire up an assert.

I've replaced this with a igt_fb_map_buffer/memset, and it works as
expected.

Maxime

--vpcz6ucay7yepl5n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpbXvQAKCRDj7w1vZxhR
xbBrAP9VV7WQPW0dXYTQMRezNrrZBZQoNz0Oay4JXl8tHXiDfgD+P6XSfseo2i9T
ntLDlJwMifHXeZaeU2zCIJVCnZZMLQ4=
=LWD0
-----END PGP SIGNATURE-----

--vpcz6ucay7yepl5n--

--===============0846904180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0846904180==--
