Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJUrMhD8vWkgEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2026 03:01:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD8B2E2D97
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2026 03:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323D010E1D3;
	Sat, 21 Mar 2026 02:01:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=aol.com header.i=@aol.com header.b="ALKtNkbf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sonic304-25.consmr.mail.gq1.yahoo.com
 (sonic304-25.consmr.mail.gq1.yahoo.com [98.137.68.206])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD1010E1DE
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Mar 2026 02:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1774058507; bh=kx1pS2qNzdpSZtoShiS1OPh6zV/l1gZqpN/NNnWjv38=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject:Reply-To;
 b=ALKtNkbfjooMkQK5RsyeuY3t50m+6BTYrYCiXQ7g2todmm3Pb/eWGCaXUpWwRrDxgmug6x/52fibU5ks2kiuFt9fLIu1xRpsg3wMpFboi3oXOfgT7zhrkxeiUFjsk8U+IlYYdTgfVZsEe2+Kjw5PwFfmXfEGKC7crYX2TNkQLsDdWKaZrLlHsU79TFbvzK5Xx5+oQ8B7Ml7IM7ZR6xafETSuO15Ajj8kFlWTNaekKvaBqeVMm5emLEEGjohZiDA+BzBV/tSVeM1zWawOOEB75+MDtQewrgQSfvqOW+P1dNQp1mtf3koMBuRBpwL0/7f0aowvoGqwvrJ8DNDw+TD/0g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1774058507; bh=jFpN53lvHO4kOZHOoycYYq2Gl+dRB1dEy4gKCnjCVC+=;
 h=X-Sonic-MF:Subject:From:To:Date:From:Subject;
 b=CT7fmVUH74ituD/pBVBvhM8fJe34D03rbHli2SY2LthURCdUYyqAKG6Vo3OM+Ynv0ghBKVtSW5NkaxXEG0KUgsRAHjwKc7Eh4auZa+gkaqMsGzp8fCeji1W2igIg6kAa/dyT+2E6zqUJDgvCqZhFVkxZ2BINbr5vF/VdU5Ta78YJYBCQRV7P4DlxmZioIziFZ5r1H0/cd2jYiW8ER+NnrN9rFcAfojDCmHW9xuiBz4xeB+XGjPkzYjs4TegudLher46UjokPdza0IZIHwydYX8ID80RVCDeQofc/VYFqczzoXqu5vSWEA0NQU2tOcm+qUFHOHPm2OdpGL/NkEtAROA==
X-YMail-OSG: YftLvOIVM1lj.1qC.XIeb04d1X545SXTbHc_fuGvglLYJqrn6dXdgN_rDXkh53S
 6r7KlivO9i44xWlx1xi.b07noCdHNAqH12xBZV3eJlsvQqc4QnHfDXxkB.Gr5ICeSmQotdPEFwHs
 MxLUcPYJQhyrBRk6rGy3ogaXUZDhmUyfnHhy8yR10Ii25DOzlGiT8xORChR.TnkC4N1hEMGsKVtX
 m7zGfbKkCUQV23gIRY3YMLmCv58kUB1GNG1d4ZzFFNmH2zzkOHt5YItTkm1jxC7fS4nDc42ekAHU
 lbfiZ1HxxKpvl6OIBY56Q2shJTU2VM0_0D3GMzZ208VC94PB5CqtvPWCOqjuOIBQL6F6pUxVCEjz
 GNgH8AG1c8IHx5ftJmnBXzAb4pcASGYFe13qA467Hvq.f3EjbNkCHAxmN8Jz.8u.0KkGM8HB1JvG
 Gav3YleNYfjVXZ8C9CIeuOElrCpK3df4ZSUVEm5CVfaFD42EAg566_XC5RLsyhnEuoePjj2h2stE
 6s7UKaYlnXM6dKKVZgyiV.4Ff.xj_tnpJ7QSSWYreYdUEPU_JgFyNuLSmghgI9qGrgOQ2PpcyGKN
 Dyj_jlytzxse0z2ZIbARm152qdjjFRjmPiwxamfhlNvu7VZbOXmc_8.pf5MHfgu9cb1oJgA7CgOb
 KEhugwQowC6aiMD5y4HEZhuBijHdNWujhHI9pUYFuBVol9Ime2q9zPI6FZTErbVGrRzz7eobmkUc
 lKKRyQQWoa7L6k2gReZpFLFOPJsBBLh12ZjytEB6ibmUNHEarS6gyzUf5g1vizwpTVYQUec7jHpm
 HouG6lxmae.wWp2iqPo3ZznYKLUFBVefax7Iw3U5EAQWLnZmnexdnPGk1wsyEMd7pLsDydlnZ4wv
 MdHsh6kpf9J.HSANHk1zBHAaNQMfxJJG3FW8t.rwm7p.kRLD.yga.uzqmPEOAxhU93EF.WR9MpoO
 rJQbISkgvbtb_PL6CBvKItJfs3ujppaLKU3V7vg12deEgFMIJRdray_ZwAVbyuI9W_IJtkDgBr.u
 0cAKveY6pmZfq7tjo64x1DONjlxn3ZTdZKVBnXlkMEPZdqka1Ibp5DnS9HkIGbhcbssI13qqYDVo
 aDgLv_P222xK7MemSP6UqGt114C68h3wrUG70Q.xEbTEjFL53eH4jV7kb0Itdyr3jW..lhwG7VYL
 KLMnVVqguZ7ILUmFTVzWLKf7LpjUqWE1lRjY7itaYQ1VMnHTTBnI.FE4PWakG9ldL5JGc5uD6mNI
 ucaAnGZIc.Ox9UnaPP26jHdHYnMFKycdkogQHOomfscgvZcgGLJtTY7Rn3m8Q44pjGRZVHl1mUBc
 sFsKqaVFCRG9OL3zTgIex87.sMx.1KtcdJBa4eYtoGdKRjguuDCt_NGmiNIkfBQpXL8NWYDj3dr6
 SH99qGF8QNiNDQ9lnKd.hZ0IOYbcozhSPikSHjdOSO69rlq_AhmrboXDEV8qAJXa3_2MjLk0muPV
 tSknejGvR3fW5byFCPLtRYWHxxkJQrhfqwwCuCEJ2UePNeOytZrd0GCBjE6q67tkaWK1lkFI0tBT
 OhwaSe4tjuVCCW3oa8WjYifblVrn9obnh00CVhdfOndWE_bP7SgaxnlSn0c5q6R7rNXEqCYpQDZ0
 C85jROITiiINnllZmi8kq1aJTKr55Y8X7iWr.23QUOI2Z7Ts_4xZI7baQfXGG2R7WhDXp1XSDYTw
 .JliNIK8H1yJjqrqLTChRU4Bo_KM76JyUj9kfObw5JV6Vqx4bImaQp7Zl1CFw_pADTlcB25LcoDD
 WzMcc3UE9FaglWuRQ.gvPJEWmhjUpVmo4OXR_hxE.Bv5gxyn0kIpLS3_x4TkjV4AXndE9x.GugA7
 Jomai54MfxqfKN2RMQr3NgUSsOhEdYpLOGYeB2oC.okRFANNzBba8Qg5VJDpxqo753SFQLlCo_VZ
 G3.8D0BDuww8XD5p8bpQo0nk7WwveBkOE707wO8esY8zXpwYu7r.lEQV_ojw1BThbmPPr4ueNOkD
 bz0Ui4yWqVkdQTNAue91GKgfDGXalPNfOFTvJO74KYBYNfSIZc3sTjsnefb30q4uW4lLYVccXA5I
 kCgK.4MtzL2N9WzPI7sVlpiqyXE3U0JvvNtSkDDnGwEgd4rt1UumqEc3TCVwK5vGIKkyviFYL1ti
 35XS8JdyGdgM1wl09vZu02NJnlKNCP.txPdl66u1DXrF5U3mPKNcPMQSP0h8FNVn.ST_ScbZfUkn
 8KpviU._f3_z8LyfamStQ6pvYPLzB6IAMsPfQTneXRFTuiINz
X-Sonic-MF: <rubenru09@aol.com>
X-Sonic-ID: dd41a5bf-915a-486e-80cf-5ff40d5df02c
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Sat, 21 Mar 2026 02:01:47 +0000
Received: by hermes--production-ir2-bbcfb4457-64r94 (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 3495a30f1c817afd98565a1b91cd6be9; 
 Sat, 21 Mar 2026 02:01:42 +0000 (UTC)
Message-ID: <a8998ac5b19353d1cd2fe02b2267cf7cd78619bc.camel@aol.com>
Subject: Re: [PATCH v11 55/65] drm-dyndbg: add DRM_CLASSMAP_USE to the gud
 driver
From: Ruben Wauters <rubenru09@aol.com>
To: Jim Cromie <jim.cromie@gmail.com>, airlied@gmail.com, simona@ffwll.ch, 
 jbaron@akamai.com, gregkh@linuxfoundation.org, Maarten Lankhorst	
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, 
 christian.koenig@amd.com, matthew.auld@intel.com, 
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Date: Sat, 21 Mar 2026 02:01:24 +0000
In-Reply-To: <20260313132103.2529746-56-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-56-jim.cromie@gmail.com>
Autocrypt: addr=rubenru09@aol.com; prefer-encrypt=mutual;
 keydata=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
 eIvzsqg==
Content-Type: multipart/signed; micalg="pgp-sha256";
 protocol="application/pgp-signature"; boundary="=-11M1noyJ2aKHasFTr+wM"
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
X-Mailer: WebService/1.1.25380
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
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
X-Spamd-Result: default: False [-1.91 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[aol.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[aol.com:s=a2048];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jim.cromie@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[rubenru09@aol.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[aol.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rubenru09@aol.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aol.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7DD8B2E2D97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--=-11M1noyJ2aKHasFTr+wM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2026-03-13 at 07:20 -0600, Jim Cromie wrote:
> The gud driver has a number of DRM_UT_* debugs, make them
> controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=3Dy by telling dyndbg
> that the module uses them.
>=20
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Acked-by: Ruben Wauters <rubenru09@aol.com>
> ---
>  drivers/gpu/drm/gud/gud_drv.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/gud/gud_drv.c b/drivers/gpu/drm/gud/gud_drv.=
c
> index d0122d477610..cf2692d89bc5 100644
> --- a/drivers/gpu/drm/gud/gud_drv.c
> +++ b/drivers/gpu/drm/gud/gud_drv.c
> @@ -32,6 +32,8 @@
> =20
>  #include "gud_internal.h"
> =20
> +DRM_CLASSMAP_USE(drm_debug_classes);
> +
>  /* Only used internally */
>  static const struct drm_format_info gud_drm_format_r1 =3D {
>  	.format =3D GUD_DRM_FORMAT_R1,

--=-11M1noyJ2aKHasFTr+wM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEE3obNNdPQ9V5CQi2Y0n5QwFCuDOEFAmm9+/QbFIAAAAAABAAO
bWFudTIsMi41KzEuMTEsMiwyAAoJENJ+UMBQrgzhJ24P/iXzCAcmeDVxtX4B5yks
4It3LgRCZuFPmzCkBGQI2OhytBcMbgUSM/koeF/6eomt2NkoZwYbikIzWrRDqCPy
JgGD+hh7jypYIL8UGBew4BcCKunC2C1iXQ1duBv6+Jng59eNFQkl1qOK7fWhzgF8
KQ5LJjQjirygICdGMEJBLS5+E8y5jL4fLJGt7DNDSu2+ZZ6ZHA2trnHCvKboBYOb
3hd/T9FUl+xiExeFmprkXswPl92/iNv8YQrNXlFuYRSMYuqguc4aUpkgG2mev5TZ
u9F7c+EwghJjPIlYsOWVBo1ENij0cAtujHJnnp5+Hg+jBFYA0HYe+2Ds3DPDTOr/
oGnp8UL55/nf2URtxtZ18DhFy60EuwyrQVAC77KCAJC5kpyzxiPZ5IVboy3NO5EP
0Rolu1/F1Fz1xaODohlORniIA34EogwEqOPwjsIcW0pXxWJuC89ufl2g9F05lfYH
IjGXqcPRzYBcUAbeKWkta+K1eBxuOEwKAKpslthnS6pVUm0bEMgT0PdLyGB5imyC
IqZs8erCuJRh6h+a+qYR5coMYURgt6033j6WHrywVn5demYB7f7kmZaBB5f9WvIr
NwO/e7sEQKT5MlZ7R9CY7/Av5L5q0C3OUh8fKcpjy4dtHiWTqEZGxgA2rAJL1L+3
/JSXCuOaFKnTn/uR8IYStXOH
=426v
-----END PGP SIGNATURE-----

--=-11M1noyJ2aKHasFTr+wM--
