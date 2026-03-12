Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNCsNjiBsmm6NAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 10:02:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 352E926F532
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 10:02:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE5210E9F5;
	Thu, 12 Mar 2026 09:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="Sm8cjlgb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E06BA10E9D4;
 Thu, 12 Mar 2026 09:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ssD/aexp1TPZVxZYeIQ8/tAxE6E0FX14OtVZZgzqR0M=; b=Sm8cjlgbjqKLfJO+NYIMCk1EVQ
 CzobYawbs9hMQX7wnRNOkeeLEIwaWK8MWsnzA0G8+ftC9ruq5eY6yjTAIN6lLl2eDm73evMpD1Y6Q
 IITOl67vMwGNzpFR8lMOAlZRBW6GQW1MmGU5I9NfXTT2oPgOqvSJoVBLrl2gdf5VlHlLmO0bdiggj
 guFZ1i5SmFhM26ZjW8aulYGYnqfdkOOsKSQkcLc1LR7aDiHYC2GVfrTPEdP1Ywy2o92fagKWSDxlp
 ZElXGclnUAo2qyNQInLmxVnlRalgf1kwXuQfYJzxFUE1XXekbwJuIb/0428eg6b1JpG26eyNcKoz+
 t8Y8qc5A==;
Received: from [90.240.106.137] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1w0bvx-00EPaT-3j; Thu, 12 Mar 2026 10:02:21 +0100
Date: Thu, 12 Mar 2026 09:02:20 +0000
From: Tvrtko Ursulin <tursulin@igalia.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-intel-gt-next
Message-ID: <abKBHNFsBQCv2h3e@linux>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
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
X-Spamd-Result: default: False [0.99 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.315];
	FROM_NEQ_ENVFROM(0.00)[tursulin@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 352E926F532
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Hi Dave, Sima,

Here is the first drm-intel-gt-next pull request for 7.1.

Only notable change is a fix for sg table overflow with sg segments over
4GB due large folio allocations, but that one is already in
drm-intel-fixes as well. The rest are just minor cleanups.

drm-intel-gt-next-2026-03-12:
Driver Changes:

Fixes/improvements/new stuff:

- Fix potential overflow of shmem scatterlist length (Janusz Krzysztofik)

Miscellaneous:

- Keep mock file open during unfaultable migrate with fill [selftests] (Krzysztof Karas)
- Test for imported buffers with drm_gem_is_imported() (Thomas Zimmermann)
- Fix corrupted copyright symbols in selftest files [guc] (Konstantin Khorenko)
The following changes since commit 9512d9fc2a7a4fee14854fbb3af89a8bf599f361:

  drm/i915/guc: Recommend GuC v70.53.0 for DG2, MTL (2026-01-12 14:21:10 -0800)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-gt-next-2026-03-12

for you to fetch changes up to 06249b4e691a75694c014a61708c007fb5755f60:

  drm/i915: Fix potential overflow of shmem scatterlist length (2026-03-06 12:52:13 +0100)

----------------------------------------------------------------
Driver Changes:

Fixes/improvements/new stuff:

- Fix potential overflow of shmem scatterlist length (Janusz Krzysztofik)

Miscellaneous:

- Keep mock file open during unfaultable migrate with fill [selftests] (Krzysztof Karas)
- Test for imported buffers with drm_gem_is_imported() (Thomas Zimmermann)
- Fix corrupted copyright symbols in selftest files [guc] (Konstantin Khorenko)

----------------------------------------------------------------
Janusz Krzysztofik (1):
      drm/i915: Fix potential overflow of shmem scatterlist length

Konstantin Khorenko (1):
      drm/i915/guc: Fix corrupted copyright symbols in selftest files

Krzysztof Karas (1):
      drm/i915/selftests: Keep mock file open during unfaultable migrate with fill

Thomas Zimmermann (1):
      drm/i915: Test for imported buffers with drm_gem_is_imported()

 drivers/gpu/drm/i915/gem/i915_gem_object.c         |  6 +--
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c          | 12 ++++--
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 27 ++++++++++----
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c          |  2 +-
 .../gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c    |  2 +-
 drivers/gpu/drm/i915/selftests/igt_mmap.c          | 43 ++++++++++++++--------
 drivers/gpu/drm/i915/selftests/igt_mmap.h          |  8 ++++
 7 files changed, 70 insertions(+), 30 deletions(-)
