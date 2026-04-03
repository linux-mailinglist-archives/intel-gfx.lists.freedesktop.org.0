Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL8iKd7Bz2lH0QYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 15:34:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10745394880
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 15:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F9D010F09A;
	Fri,  3 Apr 2026 13:34:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="B76j39VB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5054810F09A;
 Fri,  3 Apr 2026 13:34:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8741860008;
 Fri,  3 Apr 2026 13:34:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC7CDC4CEF7;
 Fri,  3 Apr 2026 13:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1775223258;
 bh=DIQBYZ6MxzsBXUsvvT5LPGWQpjkKRzlO7KjSmq9vf/g=;
 h=Date:From:To:Cc:Subject:From;
 b=B76j39VBvZQCc1lZ+ZMYq5neJjLTDH000ePKPUmYheBMZeYqwkIyR6wd9gfpW1i44
 J0wcDAoJvBCCTddm+8LWUnb1+Rlgliv7VghoYbppbAbYhXuWjhnYvtyHgAvC5uAVpQ
 QrhU5X8BiMAsizLNrfxUUYQI1KtfYRWoJ94DIWXVE2ao3u8kkbUuzTNhxm5pw5h+Br
 2mXNYRllwe1ScKkAjhgDO2keu0I3ZYsmXu2/AzF/Rykkay6luc7fTXIkAHGBHKwCZL
 pSCYEYzokbgAD1kF2Yutui8Alrc8WF2axhPEKmNBPVGvY/4C35to4HXGduC+sI0itK
 nHpd5hdfx67Pw==
Date: Fri, 3 Apr 2026 14:34:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Dave Airlie <airlied@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>
Subject: linux-next: manual merge of the drm-misc tree with the drm tree
Message-ID: <ac_B1p2wNP2Nk1RM@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="vMrcI1uf3QTFOhA3"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 10745394880
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--vMrcI1uf3QTFOhA3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-misc tree got a conflict in:

  drivers/gpu/drm/drm_gem_shmem_helper.c

between commits:

  d9a4a2021d4a5 ("Merge tag 'drm-misc-next-2026-03-12' of https://gitlab.fr=
eedesktop.org/drm/misc/kernel into drm-next")
  f6225b546dfcc ("BackMerge tag 'v7.0-rc6' into drm-next")

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
index 2062ca6078330,545933c7f7121..0000000000000
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@@ -554,6 -554,21 +554,21 @@@ int drm_gem_shmem_dumb_create(struct dr
  }
  EXPORT_SYMBOL_GPL(drm_gem_shmem_dumb_create);
 =20
+ static void drm_gem_shmem_record_mkwrite(struct vm_fault *vmf)
+ {
+ 	struct vm_area_struct *vma =3D vmf->vma;
+ 	struct drm_gem_object *obj =3D vma->vm_private_data;
+ 	struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
+ 	loff_t num_pages =3D obj->size >> PAGE_SHIFT;
+ 	pgoff_t page_offset =3D vmf->pgoff - vma->vm_pgoff; /* page offset withi=
n VMA */
+=20
+ 	if (drm_WARN_ON(obj->dev, !shmem->pages || page_offset >=3D num_pages))
+ 		return;
+=20
+ 	file_update_time(vma->vm_file);
+ 	folio_mark_dirty(page_folio(shmem->pages[page_offset]));
+ }
+=20
  static vm_fault_t try_insert_pfn(struct vm_fault *vmf, unsigned int order,
  				 unsigned long pfn)
  {
@@@ -566,8 -581,23 +581,23 @@@
 =20
  		if (aligned &&
  		    folio_test_pmd_mappable(page_folio(pfn_to_page(pfn)))) {
+ 			vm_fault_t ret;
+=20
  			pfn &=3D PMD_MASK >> PAGE_SHIFT;
- 			return vmf_insert_pfn_pmd(vmf, pfn, false);
+=20
+ 			/* Unlike PTEs which are automatically upgraded to
+ 			 * writeable entries, the PMD upgrades go through
+ 			 * .huge_fault(). Make sure we pass the "write" info
+ 			 * along in that case.
+ 			 * This also means we have to record the write fault
+ 			 * here, instead of in .pfn_mkwrite().
+ 			 */
+ 			ret =3D vmf_insert_pfn_pmd(vmf, pfn,
+ 						 vmf->flags & FAULT_FLAG_WRITE);
+ 			if (ret =3D=3D VM_FAULT_NOPAGE && (vmf->flags & FAULT_FLAG_WRITE))
+ 				drm_gem_shmem_record_mkwrite(vmf);
+=20
+ 			return ret;
  		}
  #endif
  	}
@@@ -655,19 -685,7 +685,7 @@@ static void drm_gem_shmem_vm_close(stru
 =20
  static vm_fault_t drm_gem_shmem_pfn_mkwrite(struct vm_fault *vmf)
  {
- 	struct vm_area_struct *vma =3D vmf->vma;
- 	struct drm_gem_object *obj =3D vma->vm_private_data;
- 	struct drm_gem_shmem_object *shmem =3D to_drm_gem_shmem_obj(obj);
- 	loff_t num_pages =3D obj->size >> PAGE_SHIFT;
- 	pgoff_t page_offset =3D vmf->pgoff - vma->vm_pgoff; /* page offset withi=
n VMA */
-=20
- 	if (drm_WARN_ON(obj->dev, !shmem->pages || page_offset >=3D num_pages))
- 		return VM_FAULT_SIGBUS;
-=20
- 	file_update_time(vma->vm_file);
-=20
- 	folio_mark_dirty(page_folio(shmem->pages[page_offset]));
-=20
+ 	drm_gem_shmem_record_mkwrite(vmf);
  	return 0;
  }
 =20

--vMrcI1uf3QTFOhA3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnPwdUACgkQJNaLcl1U
h9B1Gwf+NXKrf2ldubiQjKciUi5bMoq+Jop0S+8phbRwnKtKTKlL5YfwwOkKBEtF
kUMjJX9O4EZSdCBDNGqPtG0IBnSprmyY6AYh7PiI7ZU2p/K3najYVsIh1G/5663/
jNpNH392O7mxgLUZ4JMNhZ5/hxDBrH+sKY24ndlhgb2Fr5oTLVwSOjCuBnia+oZy
v5cbO7eYqPXSEnWnVFx90B5NoDJyGTllG2/On63oGi7hItkr54g8nj5Br+7a+/px
0N19drURyfHRDXKItoY8v9LHOC8vYAKxQpZ94dPI7k06kP16nCZXZZZcN/DJaQLI
CbCBmfUO1Gz86rVj+dO+sRNAPMYvZQ==
=6sMy
-----END PGP SIGNATURE-----

--vMrcI1uf3QTFOhA3--
