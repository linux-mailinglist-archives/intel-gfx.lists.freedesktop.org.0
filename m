Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96687B59828
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 15:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEB210E0A4;
	Tue, 16 Sep 2025 13:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1211 seconds by postgrey-1.36 at gabe;
 Tue, 16 Sep 2025 13:50:03 UTC
Received: from 8.mo575.mail-out.ovh.net (8.mo575.mail-out.ovh.net
 [46.105.74.219])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40FBA10E0A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 13:50:03 +0000 (UTC)
Received: from director3.ghost.mail-out.ovh.net (unknown [10.110.37.17])
 by mo575.mail-out.ovh.net (Postfix) with ESMTP id 4cR2M21NTMz62WH
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 13:10:21 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-fjnmh (unknown [10.110.96.84])
 by director3.ghost.mail-out.ovh.net (Postfix) with ESMTPS id A38DFC37A3;
 Tue, 16 Sep 2025 13:10:20 +0000 (UTC)
Received: from etezian.org ([37.59.142.97])
 by ghost-submission-5b5ff79f4f-fjnmh with ESMTPSA
 id bisbB7xhyWjWTAMAy1ZjMA
 (envelope-from <andi@etezian.org>); Tue, 16 Sep 2025 13:10:20 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-97G0026b1f8a62-7846-4fda-b859-737dd62869e7,
 15C4845B0CE7FC90BB5A3BE606FC2E1917F11B68) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.39.90.92
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Taotao Chen <chentaotao@didiglobal.com>
Subject: [CI 0/2] Some shmem fixes
Date: Tue, 16 Sep 2025 15:09:54 +0200
Message-ID: <20250916130956.3913547-1-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7042785394040244813
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegtdeiiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihdrshhhhihtiheskhgvrhhnvghlrdhorhhgqeenucggtffrrghtthgvrhhnpedtveeuieehfeetudejhfehleeijedvveetleefhfehuedtleektdevjedujefgvdenucfkphepuddvjedrtddrtddruddpudejkedrfeelrdeltddrledvpdefjedrheelrddugedvrdeljeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghdpoffvtefjohhsthepmhhoheejhegmpdhmohguvgepshhmthhpohhuth
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

Hi Taotao,

now that we have fixed the the drm-intel-gt-next branch we can
apply both the patches. I'm resending them both for CI tests.

Thanks for your patience,
Andi

Taotao Chen (2):
  drm/i915: set O_LARGEFILE in __create_shmem()
  drm/i915: Fix incorrect error handling in shmem_pwrite()

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

-- 
2.50.1

