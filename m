Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u+nWLuMuLmq0qQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jun 2026 06:32:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917A76805AC
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jun 2026 06:32:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=F1IKW2PD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4872F10E02F;
	Sun, 14 Jun 2026 04:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0F210E02F;
 Sun, 14 Jun 2026 04:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781411552; x=1812947552;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pEzwc33I+vz9xZ829eO2FVzpDvYkQciYxWWKN3oXB3A=;
 b=F1IKW2PDIrPJKgGWzMrHkUoEETlo0wJgpa0zsHQGXXsnUYwVMm6OFuVH
 QOfQ1VYRkf5xVLbbbKV0/YRdmjPei9jKCtWlxfm1vSdEkq5MY8lOHT7wd
 hieD6ka06A7OglxgkH0G4oExU5zx5bYy5JLapFtk7+B0d0AI4ng3XMDEh
 kVRrLxoLMpqSuD+3Ird7dUV2tAhAudOYId+i1IUC/g5eCVVX8cgYc1URM
 +MeBvQEdB1ouJRzwUrgYYMXEpRNL0rYmgwQ9lGxLxw+sJ7oQBZ+Hfs6zf
 BCg/2EIQr813s7IUfZkrrfkF3lMgfNKESrhLRkfT4UhGIP87G3eUIogEc A==;
X-CSE-ConnectionGUID: OBCc987+S+m3L25Vuhh/JA==
X-CSE-MsgGUID: znZecObRQlaIxXeiCySLEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11816"; a="92511785"
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="92511785"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2026 21:32:31 -0700
X-CSE-ConnectionGUID: 6y8kqXZFQ+OiGU/dMaGFPw==
X-CSE-MsgGUID: nH2iJGEgRICFpNUxtlq1fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,204,1774335600"; d="scan'208";a="277368509"
Received: from lkp-server01.sh.intel.com (HELO f0d55cb201f0) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 13 Jun 2026 21:32:29 -0700
Received: from kbuild by f0d55cb201f0 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wYcWI-00000000QYE-1c2b;
 Sun, 14 Jun 2026 04:32:26 +0000
Date: Sun, 14 Jun 2026 12:31:45 +0800
From: kernel test robot <lkp@intel.com>
To: Dave Airlie <airlied@redhat.com>
Cc: oe-kbuild-all@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>
Subject: [drm-tip:drm-tip 1/9]
 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c:203:1: warning: label 'retry' defined
 but not used
Message-ID: <202606141218.CqTOhIHC-lkp@intel.com>
User-Agent: s-nail v14.9.25
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,amd.com:email,lists.freedesktop.org:from_smtp];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 917A76805AC

tree:   https://gitlab.freedesktop.org/drm/tip.git drm-tip
head:   5fc0f82c971ea3b4e1c58602c0be573a802a8670
commit: f8363c190f6fe6cffebc8733c2375330112327f9 [1/9] Merge remote-trackin=
g branch 'drm/drm-next' into drm-tip
config: um-allyesconfig (https://download.01.org/0day-ci/archive/20260614/2=
02606141218.CqTOhIHC-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20260614/202606141218.CqTOhIHC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202606141218.CqTOhIHC-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c: In function 'amdgpu_hmm_range_g=
et_pages':
>> drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c:203:1: warning: label 'retry' de=
fined but not used [-Wunused-label]
     203 | retry:
         | ^~~~~


vim +/retry +203 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c

04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  168 =20
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  169  int amdgpu_hmm_range_get_pages(struct mmu_interval_notifi=
er *notifier,
d4cbff464d2932 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2022-11-09  170  			       uint64_t start, uint64_t npages, bool read=
only,
c5b3cc417b0260 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Sunil Khatri        =
 2025-09-17  171  			       void *owner,
737da5363cc07c drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Sunil Khatri        =
 2025-10-10  172  			       struct amdgpu_hmm_range *range)
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  173  {
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  174  	const u64 max_bytes =3D SZ_2G;
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  175 =20
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  176  	struct hmm_range *hmm_range =3D &range->hmm_range;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  177  	unsigned long *pfns;
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  178  	unsigned long end;
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  179  	int r;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  180 =20
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  181  	pfns =3D kvmalloc_array(npages, sizeof(*pfns), GFP_KERNE=
L);
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  182  	if (unlikely(!pfns)) {
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  183  		r =3D -ENOMEM;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  184  		goto out_free_range;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  185  	}
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  186 =20
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  187  	hmm_range->notifier =3D notifier;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  188  	hmm_range->default_flags =3D HMM_PFN_REQ_FAULT;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  189  	if (!readonly)
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  190  		hmm_range->default_flags |=3D HMM_PFN_REQ_WRITE;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  191  	hmm_range->hmm_pfns =3D pfns;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  192  	hmm_range->start =3D start;
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  193  	end =3D start + npages * PAGE_SIZE;
8c21fc49a8e637 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Alex Sierra         =
 2021-05-06  194  	hmm_range->dev_private_owner =3D owner;
d8a3c1c80ceb65 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2021-03-30  195 =20
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  196  	hmm_range->notifier_seq =3D mmu_interval_read_begin=
(notifier);
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  197  	do {
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  198  		hmm_range->end =3D min(hmm_range->start + max_byte=
s, end);
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  199 =20
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  200  		pr_debug("hmm range: start =3D 0x%lx, end =3D 0x%lx",
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  201  			hmm_range->start, hmm_range->end);
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  202 =20
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24 @203  retry:
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  204  		r =3D hmm_range_fault(hmm_range);
342981fff32802 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Honglei Huang       =
 2026-05-29  205  		if (unlikely(r))
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  206  			goto out_free_pfns;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  207 =20
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  208  		if (hmm_range->end =3D=3D end)
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  209  			break;
962d684b5dc074 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Christian K=C3=B6nig=
      2026-02-18  210  		hmm_range->hmm_pfns +=3D max_bytes >> PAGE_SHIFT;
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  211  		hmm_range->start =3D hmm_range->end;
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  212  	} while (hmm_range->end < end);
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  213 =20
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  214  	hmm_range->start =3D start;
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  215  	hmm_range->hmm_pfns =3D pfns;
c1420a5dd4dd2a drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c James Zhu           =
 2022-11-17  216 =20
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  217  	return 0;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  218 =20
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  219  out_free_pfns:
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  220  	kvfree(pfns);
dfc74e37bdb487 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Srinivasan Shanmugam=
 2025-10-23  221  	hmm_range->hmm_pfns =3D NULL;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  222  out_free_range:
9095e5544061b1 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Philip Yang         =
 2024-04-30  223  	if (r =3D=3D -EBUSY)
9095e5544061b1 drivers/gpu/drm/amd/amdgpu/amdgpu_hmm.c Philip Yang         =
 2024-04-30  224  		r =3D -EAGAIN;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  225  	return r;
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  226  }
04d8d73dbcbe64 drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c  Philip Yang         =
 2020-02-24  227 =20

:::::: The code at line 203 was first introduced by commit
:::::: 04d8d73dbcbe645a378fca6adc6f0e7111e46c17 drm/amdgpu: add common HMM =
get pages function

:::::: TO: Philip Yang <Philip.Yang@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
