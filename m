Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAZ5LIOeymmg+QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 18:02:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EA635E4E9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 18:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6055510E1D6;
	Mon, 30 Mar 2026 16:02:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="lRBCsvkU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D6A110E002;
 Mon, 30 Mar 2026 16:02:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 44FB5442D4;
 Mon, 30 Mar 2026 16:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E25EC2BCB2;
 Mon, 30 Mar 2026 16:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1774886528;
 bh=AZ0uldLaPK5hj2AgqSOwxEW6YqwCYBF18h01AvCu1nM=;
 h=Date:From:To:Cc:Subject:From;
 b=lRBCsvkUDgYCeFXwKP0ieKfVCrnq23WG2/iGygDx03+c4ybXzxe0a/zcmqU7lLnq/
 1G7dNSwqbrt0AE2gjT07Q+O3uHbJ5JiA6ql5GOIR+b7l9NhZNeX7lhk5G0sTSoY1b+
 0Q4aqz9wsT0JtKROcMN9P3lmoV0j7/4mNcTxFre6TsbS4Qv9w+RHAKWJu53nrtbeUv
 vt4VkmuyJQp6/RAEus2hIG/iEHc7/7sSB2taUf3bBwAmj1fWi23khbcD7vXDieuNo1
 9A1QXY1MulFAcg+G2rMIRCXJHwU3SDTS6jAtSaKr/p7hQBMW9igm1sHullKAfNG2yZ
 /Fv9r5EGaPsuQ==
Date: Mon, 30 Mar 2026 17:02:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Dave Airlie <airlied@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>
Subject: linux-next: manual merge of the drm-misc tree with the drm tree
Message-ID: <acqee1y4jIIuFlJe@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="q9oCtFYbqaFS5j8v"
Content-Disposition: inline
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
X-Spamd-Result: default: False [-3.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 17EA635E4E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--q9oCtFYbqaFS5j8v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-misc tree got a conflict in:

  drivers/gpu/drm/drm_gem_shmem_helper.c

between commits:

  d9a4a2021d4a5 ("Merge tag 'drm-misc-next-2026-03-12' of https://gitlab.fr=
eedesktop.org/drm/misc/kernel into drm-next")

=66rom the drm tree and commit:

  6fdfd24017756 ("Merge drm/drm-fixes into drm-misc-next-fixes")

=66rom the drm-misc tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --combined drivers/gpu/drm/drm_gem_shmem_helper.c
index 044f0d4ebf555,2062ca6078330..0000000000000
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@@ -554,20 -554,24 +554,20 @@@ int drm_gem_shmem_dumb_create(struct dr
  }
  EXPORT_SYMBOL_GPL(drm_gem_shmem_dumb_create);
 =20
 -static vm_fault_t try_insert_pfn(struct vm_fault *vmf, unsigned int order,
 -				 unsigned long pfn)
 +static vm_fault_t drm_gem_shmem_try_insert_pfn_pmd(struct vm_fault *vmf, =
unsigned long pfn)
  {
 -	if (!order) {
 -		return vmf_insert_pfn(vmf->vma, vmf->address, pfn);
  #ifdef CONFIG_ARCH_SUPPORTS_PMD_PFNMAP
 -	} else if (order =3D=3D PMD_ORDER) {
 -		unsigned long paddr =3D pfn << PAGE_SHIFT;
 -		bool aligned =3D (vmf->address & ~PMD_MASK) =3D=3D (paddr & ~PMD_MASK);
 +	unsigned long paddr =3D pfn << PAGE_SHIFT;
 +	bool aligned =3D (vmf->address & ~PMD_MASK) =3D=3D (paddr & ~PMD_MASK);
 =20
 -		if (aligned &&
 -		    folio_test_pmd_mappable(page_folio(pfn_to_page(pfn)))) {
 -			pfn &=3D PMD_MASK >> PAGE_SHIFT;
 -			return vmf_insert_pfn_pmd(vmf, pfn, false);
 -		}
 -#endif
 +	if (aligned && pmd_none(*vmf->pmd)) {
 +		/* Read-only mapping; split upon write fault */
 +		pfn &=3D PMD_MASK >> PAGE_SHIFT;
 +		return vmf_insert_pfn_pmd(vmf, pfn, false);
  	}
 -	return VM_FAULT_FALLBACK;
 +#endif
 +
 +	return 0;
  }
 =20
  static vm_fault_t drm_gem_shmem_any_fault(struct vm_fault *vmf, unsigned =
int order)
@@@ -584,6 -588,9 +584,9 @@@
  	struct folio *folio;
  	unsigned long pfn;
 =20
+ 	if (order && order !=3D PMD_ORDER)
+ 		return VM_FAULT_FALLBACK;
+=20
  	dma_resv_lock(obj->resv, NULL);
 =20
  	if (page_offset >=3D num_pages || drm_WARN_ON_ONCE(dev, !shmem->pages) ||
@@@ -597,11 -604,7 +600,11 @@@
 =20
  	pfn =3D page_to_pfn(page);
 =20
 -	ret =3D try_insert_pfn(vmf, order, pfn);
 +	if (folio_test_pmd_mappable(folio))
 +		ret =3D drm_gem_shmem_try_insert_pfn_pmd(vmf, pfn);
 +	if (ret !=3D VM_FAULT_NOPAGE)
 +		ret =3D vmf_insert_pfn(vma, vmf->address, pfn);
 +
  	if (ret =3D=3D VM_FAULT_NOPAGE)
  		folio_mark_accessed(folio);
 =20

--q9oCtFYbqaFS5j8v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnKnnsACgkQJNaLcl1U
h9ATtwf/XVwOAJ9jZAbFoRGmM+aLhW814fUUnre9YJFIUtrihvOzF+CSmQt6iiBY
UPuEhCRtw6qkP5+Dnf/nmlCx1F+99sN8QqV8GdgSPxeMp8krpMjHgpi3kkPbCSwq
tC7JwzlrzeyC6vVmBCQMlx9duUGt1BHb4QtF0iX2viJm4mhc0iEwFDqdfYWZNA5O
YGzTCoO1JdoCv9GN3PlsonncRHFnOwJzq47dVTMIl96bU0dAH0WU34kkVfH5QY1L
f3Ipkqtyxw4J2ueI+dPAuJsjn7gjyGLMMjC72vQKp9tHZfN/lNAlU1HJR4uKo3/9
ejY2wKNjnz963sg/5NdmhKqGZBtbZw==
=+Hwg
-----END PGP SIGNATURE-----

--q9oCtFYbqaFS5j8v--
