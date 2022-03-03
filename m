Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FDF4CBB35
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 11:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157E110EF8D;
	Thu,  3 Mar 2022 10:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A709710EF89;
 Thu,  3 Mar 2022 10:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646303012; x=1677839012;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TaKD/KZEV83fUqkFQusEr5F+HjLRwzHveoDDHwQOrzk=;
 b=N6wzpsnPtvd91Nm7RjLhijn0x+h6NEe5uqyuNuXGXH+PWUMEModfX7PP
 suqbEmOOuAHy3yY9YrhwMaqUY7VthvaDdQDmLWi5axxt/AbgXGYKccMm4
 EiWK+O1E4stahRsgnEM21a8cMfPGJPsoJm0+E3TExbumMK/ERT9gWWH6W
 eaNVVgUPhtL12UHAQFbGrIRL8b6X0J2T7KiEsNWQle3VP/kltAAwU0Qo+
 tB6fqWD8IaobwZ+jPzY95YGv5pRpm1zsT3MnFjTwB2TuJXjnutK0BDrbH
 fZa6dLjQtgcZgS1yJK6BAMnnkEa5zRM304TeYN1U3ZGblh7QUrOvsHI+K Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="234250473"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="234250473"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 02:23:31 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="508539646"
Received: from gerar12x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.222.145])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 02:23:28 -0800
Date: Thu, 3 Mar 2022 10:23:26 +0000
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YiCXHiTyCE7TbopG@tursulin-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave,  Daniel,

Two small fixes for -rc7.

GuC SLPC is for future platform work and other one is fixing
misidentification of Ice Lake MacBook Pro's.

Regards,

Tvrtko

drm-intel-fixes-2022-03-03:
- Fix GuC SLPC unset command. (Vinay Belgaumkar)
- Fix misidentification of some Apple MacBook Pro laptops as Jasper Lake. (Ville Syrjälä)
The following changes since commit 7e57714cd0ad2d5bb90e50b5096a0e671dec1ef3:

  Linux 5.17-rc6 (2022-02-27 14:36:33 -0800)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2022-03-03

for you to fetch changes up to 08783aa7693f55619859f4f63f384abf17cb58c5:

  drm/i915: s/JSP2/ICP2/ PCH (2022-02-28 11:59:01 +0000)

----------------------------------------------------------------
- Fix GuC SLPC unset command. (Vinay Belgaumkar)
- Fix misidentification of some Apple MacBook Pro laptops as Jasper Lake. (Ville Syrjälä)

----------------------------------------------------------------
Ville Syrjälä (1):
      drm/i915: s/JSP2/ICP2/ PCH

Vinay Belgaumkar (1):
      drm/i915/guc/slpc: Correct the param count for unset param

 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 2 +-
 drivers/gpu/drm/i915/intel_pch.c            | 2 +-
 drivers/gpu/drm/i915/intel_pch.h            | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)
