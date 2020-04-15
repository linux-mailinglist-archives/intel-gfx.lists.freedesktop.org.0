Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EEB1AA47D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 15:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614506E9DF;
	Wed, 15 Apr 2020 13:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 539 seconds by postgrey-1.36 at gabe;
 Wed, 15 Apr 2020 09:51:07 UTC
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64B76E938;
 Wed, 15 Apr 2020 09:51:07 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 2C9095C00C6;
 Wed, 15 Apr 2020 05:42:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 05:42:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=sKLeB1HmJMYnwAXuc8CzS1VVrie
 wHg/AFoIOqoXS2yw=; b=cPuS1hyEqYM4tUTHqjQgmwDAF0XYwAkjHeUQ1BaoBYn
 BEhuPJ8FxceBzKRxOFzaXyMgaSTe+r3GcHU9a32GUwbZ+2UB2EYFJQNzA8Vzl/uZ
 dnuxspEdfvOvVfQjHyrBK6x1s2GV6aNj6XctUewlo+5wX5tJYe+C47dGhxPLTcyu
 Ga+JJneR9byv9jdojPa0s+vydePKcqs9xXgJv0lCwAUfq7ymwXwuOh0VfRWBSGHA
 K3xSui7yXy41UazE+71FR/Rq/4IlrdPa5yjYe6ifMgeW9fPWRNaHMedzErNFG9vR
 Qalfuwv4sjodaBWMLX8iHZwgp8MqkGRa6kaiIATIYJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=sKLeB1
 HmJMYnwAXuc8CzS1VVriewHg/AFoIOqoXS2yw=; b=biGj/+EdMz2B7FTH6isfzG
 PbN822n9nwd6x4NQ0rgJmue9luhQOB3hA33SCLtejuTUuGrur2PJM1dr7v5l2WZy
 JySZpPa3Eog8my96C8WR8qdU59s7EW1z43eIMSuxhOUktwCPgUr5KRsm95rKND7A
 aeZacFGnFyZsBfuc9Q/BpyNrATUB8CT0byC6xVIiqcmwmTLoHHm9XyTIimQDgAMt
 5i2fGDE1q2se7Td21cCWqsuMf0GWwObuq7p+Y6LpYnhieRkj8criwnaZYBOpj81g
 lLAtp2qNLJ/sbHsVBqhcY92eoe+/9hD4T3xGjwoa3RYjt4aZ9EeR/GlwxqmdtxmQ
 ==
X-ME-Sender: <xms:7daWXt8n1sHOS1DeKMnOBB7Bhzo-pxcySHBKzoKu-4F5yElgC5X8iw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgddtjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epihhsthhhvgdrtghomhenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnoh
 drthgvtghh
X-ME-Proxy: <xmx:7daWXv-DCesCnylH2_UgA3lLXpyplyPdNShcpiv1nYf-kLqrSf1L9w>
 <xmx:7daWXkJFgQ-3PoTj5122BGfO4UB5d8YPLrvgdRAKuqFCEeTOWa0-kg>
 <xmx:7daWXirzsGC3ksK8ieq_ksF-OmSPNLbVFuZggvd-meWKp_CNAkbT2w>
 <xmx:79aWXg_xOLahRIUCfzZIklKPRK6G-XVGn7510nFg_buwZ3qFbRRc5g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3A56F328005A;
 Wed, 15 Apr 2020 05:42:05 -0400 (EDT)
Date: Wed, 15 Apr 2020 11:42:03 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Message-ID: <20200415094203.stjco4xo4uw23vmh@gilmour.lan>
References: <20191022005952.tkdtftzbxk4b2lzk@smtp.gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191022005952.tkdtftzbxk4b2lzk@smtp.gmail.com>
X-Mailman-Approved-At: Wed, 15 Apr 2020 13:32:12 +0000
Subject: Re: [Intel-gfx] [PATCH v7 i-g-t 3/4] lib: Add function to hash a
 framebuffer
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
Content-Type: multipart/mixed; boundary="===============0371747235=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0371747235==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zi63wbjyfazzdjj3"
Content-Disposition: inline


--zi63wbjyfazzdjj3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rodrigo,

I gave your (and Brian's) patches on a RPi, and there's a couple of
things that need to be fixed.

On Mon, Oct 21, 2019 at 10:00:00PM -0300, Brian Starkey wrote:
> To use writeback buffers as a CRC source, we need to be able to hash
> them. Implement a simple FVA-1a hashing routine for this purpose.
>
> Doing a bytewise hash on the framebuffer directly can be very slow if
> the memory is noncached. By making a copy of each line in the FB first
> (which can take advantage of word-access speedup), we can do the hash
> on a cached copy, which is much faster (10x speedup on my platform).
>
> V6: Simon Sir
>  - Replace #define by plain uint32_t variables
>  - Return -EINVAL in case fb->num_planes != 1
>  - Directly assign the mmap result to ptr
>  - No need to copy the whole stride, just copy fb->width * cpp since
> we're only going to read that
>
> v5: use igt_memcpy_from_wc() instead of plain memcpy, as suggested by
>     Chris Wilson
>
> Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> [rebased and updated to the most recent API]
> Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
> [rebased and updated the patch to address feedback]
> Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
> Reviewed-by: Simon Ser <simon.ser@intel.com>
> ---
>  lib/igt_fb.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  lib/igt_fb.h |  2 ++
>  2 files changed, 70 insertions(+)
>
> diff --git a/lib/igt_fb.c b/lib/igt_fb.c
> index 6b674c1b..64d52634 100644
> --- a/lib/igt_fb.c
> +++ b/lib/igt_fb.c
> @@ -3491,6 +3491,74 @@ bool igt_fb_supported_format(uint32_t drm_format)
>  	return false;
>  }
>
> +/*
> + * This implements the FNV-1a hashing algorithm instead of CRC, for
> + * simplicity
> + * http://www.isthe.com/chongo/tech/comp/fnv/index.html
> + *
> + * hash = offset_basis
> + * for each octet_of_data to be hashed
> + *         hash = hash xor octet_of_data
> + *         hash = hash * FNV_prime
> + * return hash
> + *
> + * 32 bit offset_basis = 2166136261
> + * 32 bit FNV_prime = 224 + 28 + 0x93 = 16777619
> + */
> +int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *crc)
> +{
> +	uint32_t FNV1a_OFFSET_BIAS = 2166136261;
> +	uint32_t FNV1a_PRIME = 16777619;
> +	uint32_t hash;
> +	void *map;
> +	char *ptr, *line = NULL;
> +	int x, y, cpp = igt_drm_format_to_bpp(fb->drm_format) / 8;
> +	uint32_t stride = calc_plane_stride(fb, 0);
> +
> +	if (fb->num_planes != 1)
> +		return -EINVAL;
> +
> +	if (fb->is_dumb)
> +		ptr = kmstest_dumb_map_buffer(fb->fd, fb->gem_handle, fb->size,
> +					      PROT_READ);
> +	else
> +		ptr = gem_mmap__gtt(fb->fd, fb->gem_handle, fb->size,
> +				    PROT_READ);

You should be using igt_fb_map_buffer here

> +	/*
> +	 * Framebuffers are often uncached, which can make byte-wise accesses
> +	 * very slow. We copy each line of the FB into a local buffer to speed
> +	 * up the hashing.
> +	 */
> +	line = malloc(stride);
> +	if (!line) {
> +		munmap(map, fb->size);
> +		return -ENOMEM;
> +	}
> +
> +	hash = FNV1a_OFFSET_BIAS;
> +
> +	for (y = 0; y < fb->height; y++, ptr += stride) {
> +
> +		igt_memcpy_from_wc(line, ptr, fb->width * cpp);
> +
> +		for (x = 0; x < fb->width * cpp; x++) {
> +			hash ^= line[x];
> +			hash *= FNV1a_PRIME;
> +		}
> +	}
> +
> +	crc->n_words = 1;
> +	crc->crc[0] = hash;
> +
> +	free(line);
> +	munmap(map, fb->size);

And this will lead to a segfault here, since map has not been
initialized. I'm assuming the intention is to have map be the returned
value of mmap, and ptr to be initialized to that same value, and use
that as your current line pointer later on (the error path from the
malloc has the same issue).

Maxime

--zi63wbjyfazzdjj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpbW6wAKCRDj7w1vZxhR
xQSbAP4r9akJqPhLGb+Hhjbhg3KOSFkG1W4yNCy+kPL9mgffngD/bkW2RdQhZfFV
f2tU1p/woukPDwcgKVSMNPrQwGOoHQQ=
=xROn
-----END PGP SIGNATURE-----

--zi63wbjyfazzdjj3--

--===============0371747235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0371747235==--
