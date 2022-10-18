Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0A0602F8B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 17:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CBC110EF3C;
	Tue, 18 Oct 2022 15:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D64310EF3C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 15:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666106558; x=1697642558;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mfj6y1zJxsesul+cRLpD8qGCSovxPAibwGwx8EhLNW0=;
 b=dXG1oiKZRFAXpr7bUb+KMRv0P/vVQM+mf4dcw9lEeADVUsH+5M3ABXk/
 Th5luqrUQgA4M1NqCXAur4i0oKFSwBd8viAJsO2v7sOFllCZFbxqRWGAT
 xTS5uuOgE/6KRho+S2tHkG8zAxG9lFKgechHjq0kmPZy3n4T/58aH0TR7
 ymzfiyLn9DNyH3S0xnpWqBCFbxpdIfnBC5S9WLa33namJDQvvnbx/dCW+
 uTUIyNbwoibGtjF8VZG2pLVBIRm8MQ+nGSqpmYq9wx8+2wCy941PqQX1q
 rstusvs6YSlc9uJ4w8yn4p5EdGNQ6rWfVxHrOjWqg/1Rdry1APrVVahOF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="332684748"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="332684748"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 08:22:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="659843953"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="659843953"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 08:22:37 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: linux-firmware@kernel.org
Date: Tue, 18 Oct 2022 08:24:46 -0700
Message-Id: <20221018152446.1927225-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for HuC 7.10.3
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit 48407ffd7adb9511701547068b1e6f0956bd1c94:

  cnm: update chips&media wave521c firmware. (2022-10-17 10:20:43 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_huc_7.10.3_pr

for you to fetch changes up to 8f86b5ab3e051170ea240fc409d457e16e24bc21:

  i915: Add HuC 7.10.3 for DG2 (2022-10-18 08:18:19 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add HuC 7.10.3 for DG2

 WHENCE               |   3 +++
 i915/dg2_huc_gsc.bin | Bin 0 -> 622592 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/dg2_huc_gsc.bin
