Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD51DF9FF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 03:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0126E2E8;
	Tue, 22 Oct 2019 01:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0DE6E2E8;
 Tue, 22 Oct 2019 01:00:03 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id y189so14708804qkc.3;
 Mon, 21 Oct 2019 18:00:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=F2nIv1H2HDYLyeNUtb846D2apA8DKhE1syXPDRt8JTs=;
 b=mDm3UXAPyW6nV/X9BWgmtgjMRtZjrhO+kLE/gV7YCGur/AinB3dPuBwYL1MqN8IpuR
 aSviaReEM1GB/w4xYQtJpQbsb876sGur9fnFft4r8tuUk9jIi7f1mgiM7IEZkqSdxeiO
 NRhMJgSK3B7QJpPdj78eObkqxblwRunBEDMaXiIhnGtx5Ye/hf1WqI/KpjT43PN29UhC
 uO0qfKUNAvyQQa7143pSF8ztfA5rgNG/Wm/nslAhY931ZhFQxejFzmFo2e8i3cfczC0N
 jtkwyWOmx9ndUMuWz1jITN23vbrejCiALqrmbZERcdgTXOzPFIsYGaiCfzdpJJ6o9lPS
 3DfQ==
X-Gm-Message-State: APjAAAXk6pbvLFeIkl6gFll1ztTwlYDVUuJ/cOGq6vAZbjLcXA37s5G3
 q0ng4TU45xfyOYooQleEhE0=
X-Google-Smtp-Source: APXvYqynSJ6aiV3vbTPMb5R5/TtaSf4rVmdzu8WD15C4rhDllxaJ7DRdgxYcEkIKuDaOi2PGb4m2sA==
X-Received: by 2002:a05:620a:204b:: with SMTP id
 d11mr652317qka.379.1571706001814; 
 Mon, 21 Oct 2019 18:00:01 -0700 (PDT)
Received: from smtp.gmail.com (toroon12-3096782342.sdsl.bell.ca.
 [184.149.38.6])
 by smtp.gmail.com with ESMTPSA id f35sm487257qtd.35.2019.10.21.18.00.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 18:00:01 -0700 (PDT)
From: Brian Starkey <rodrigosiqueiramelo@gmail.com>
X-Google-Original-From: Brian Starkey <brian.starkey@arm.com>
Date: Mon, 21 Oct 2019 22:00:00 -0300
To: Simon Ser <contact@emersion.fr>, Brian Starkey <Brian.Starkey@arm.com>,
 Liviu Dudau <Liviu.Dudau@arm.com>, Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20191022005952.tkdtftzbxk4b2lzk@smtp.gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=F2nIv1H2HDYLyeNUtb846D2apA8DKhE1syXPDRt8JTs=;
 b=NPTFELfecq+OwZotJzjI1MQjmaIh4d+x54bSf54bOVA4o6wlqrUEQM9VhQ71j+AxAg
 2xpW1449dN/HO0SvtIx6uk0Hd5jVfz0iegK1VXn5S4v6/rgZ8StqMIqTa6SZcJrzUeQ5
 CXSXGKOiQSNAi60NUmVsc4zYV04EraMA4ClFMM3HgroXt4pDFTaVhk6CjvERq3VjaPaE
 s6IP2ldnfO2yIB8WfMs9q2rLuGFSIcW1bNpuAMoihuq47E9L5Of3ei5+yXPSGwC7q7T2
 YwVLi5Cn+oYbgoPLzOWGqQgeEVNkskUbJAZAVsByIqFhAz+Rb6iAbmmmiNJ2yhKFq/v8
 txOg==
Subject: [Intel-gfx] [PATCH v7 i-g-t 3/4] lib: Add function to hash a
 framebuffer
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============1438215969=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1438215969==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="infmbgnf3bp4flp2"
Content-Disposition: inline


--infmbgnf3bp4flp2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

To use writeback buffers as a CRC source, we need to be able to hash
them. Implement a simple FVA-1a hashing routine for this purpose.

Doing a bytewise hash on the framebuffer directly can be very slow if
the memory is noncached. By making a copy of each line in the FB first
(which can take advantage of word-access speedup), we can do the hash
on a cached copy, which is much faster (10x speedup on my platform).

V6: Simon Sir
 - Replace #define by plain uint32_t variables
 - Return -EINVAL in case fb->num_planes !=3D 1
 - Directly assign the mmap result to ptr
 - No need to copy the whole stride, just copy fb->width * cpp since
we're only going to read that

v5: use igt_memcpy_from_wc() instead of plain memcpy, as suggested by
    Chris Wilson

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated to the most recent API]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
[rebased and updated the patch to address feedback]
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Reviewed-by: Simon Ser <simon.ser@intel.com>
---
 lib/igt_fb.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_fb.h |  2 ++
 2 files changed, 70 insertions(+)

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index 6b674c1b..64d52634 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -3491,6 +3491,74 @@ bool igt_fb_supported_format(uint32_t drm_format)
 	return false;
 }
=20
+/*
+ * This implements the FNV-1a hashing algorithm instead of CRC, for
+ * simplicity
+ * http://www.isthe.com/chongo/tech/comp/fnv/index.html
+ *
+ * hash =3D offset_basis
+ * for each octet_of_data to be hashed
+ *         hash =3D hash xor octet_of_data
+ *         hash =3D hash * FNV_prime
+ * return hash
+ *
+ * 32 bit offset_basis =3D 2166136261
+ * 32 bit FNV_prime =3D 224 + 28 + 0x93 =3D 16777619
+ */
+int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *crc)
+{
+	uint32_t FNV1a_OFFSET_BIAS =3D 2166136261;
+	uint32_t FNV1a_PRIME =3D 16777619;
+	uint32_t hash;
+	void *map;
+	char *ptr, *line =3D NULL;
+	int x, y, cpp =3D igt_drm_format_to_bpp(fb->drm_format) / 8;
+	uint32_t stride =3D calc_plane_stride(fb, 0);
+
+	if (fb->num_planes !=3D 1)
+		return -EINVAL;
+
+	if (fb->is_dumb)
+		ptr =3D kmstest_dumb_map_buffer(fb->fd, fb->gem_handle, fb->size,
+					      PROT_READ);
+	else
+		ptr =3D gem_mmap__gtt(fb->fd, fb->gem_handle, fb->size,
+				    PROT_READ);
+
+	/*
+	 * Framebuffers are often uncached, which can make byte-wise accesses
+	 * very slow. We copy each line of the FB into a local buffer to speed
+	 * up the hashing.
+	 */
+	line =3D malloc(stride);
+	if (!line) {
+		munmap(map, fb->size);
+		return -ENOMEM;
+	}
+
+	hash =3D FNV1a_OFFSET_BIAS;
+
+	for (y =3D 0; y < fb->height; y++, ptr +=3D stride) {
+
+		igt_memcpy_from_wc(line, ptr, fb->width * cpp);
+
+		for (x =3D 0; x < fb->width * cpp; x++) {
+			hash ^=3D line[x];
+			hash *=3D FNV1a_PRIME;
+		}
+	}
+
+	crc->n_words =3D 1;
+	crc->crc[0] =3D hash;
+
+	free(line);
+	munmap(map, fb->size);
+
+	return 0;
+#undef FNV1a_OFFSET_BIAS
+#undef FNV1a_PRIME
+}
+
 /**
  * igt_format_is_yuv:
  * @drm_format: drm fourcc
diff --git a/lib/igt_fb.h b/lib/igt_fb.h
index 69132b41..d2394638 100644
--- a/lib/igt_fb.h
+++ b/lib/igt_fb.h
@@ -202,5 +202,7 @@ int igt_format_plane_bpp(uint32_t drm_format, int plane=
);
 void igt_format_array_fill(uint32_t **formats_array, unsigned int *count,
 			   bool allow_yuv);
=20
+int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *crc);
+
 #endif /* __IGT_FB_H__ */
=20
--=20
2.23.0

--infmbgnf3bp4flp2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl2uVIgACgkQWJzP/com
vP8Ndg/+Iji6v4V95be61Zzjbmq3e3Yh8nqrfSgsoV0XehcijyCO+o0pnyOevnSZ
oVJonm5K4rFWu3Huw3078Dx3WAClnPNPTEyfk/iuwAOZHBLYLC2OnUoCBZvjWHPA
wT0ousGGwJxYIwaJyuBxCwYEq7leKbJ2ZSFxuUVQUkap8MR2KA74Nc8IuBlHsDCi
egkCNPjWAptpmZTXDX9/j7NEiqlABLpKAtf2wkhf6IsnrLbfikRSfIjK7fvfJq5K
KddwLzoDYuQ0UCHlN9drgzfOzOuYp4+PNPxyEd/zelECZJ7mSkn46XqxB3pf/98q
eu/3TeiAuYElLRqrS8jAqCQ2mwJfeW0zOKatxQojuwAO7jF+ZcHgFklf33Pnmdfm
h5fpChE+i/2Fy7pPG/UtYIP/Jrz4jFlqFBv+NSCE6z81TSnkuWayH+9DU1gmkdWt
gdt+A+exRMb8d1w3KLnLdF3r1aEpQ2mzzHK0alnopSb1wHCeYRYfY1tPGODYYhzX
eBbzUyw714/Dq0uG412/SEwgrUGgqztAqj28yYoIX2QQDATHwBDzcWZ17OgMsHEI
oMA10fC2ut6bknSNXZhEKf/CFK9GhV5v5J1URPudonX9q9IfRC1inpmaCWxgLVxa
5KVpJGPw7uvPeK5ExF9ty0NVGGBdeybQY4sHzkIz35QxzMdB9yk=
=HUfn
-----END PGP SIGNATURE-----

--infmbgnf3bp4flp2--

--===============1438215969==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1438215969==--
