Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E28B4F7B3B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 11:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE1610E73A;
	Thu,  7 Apr 2022 09:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7364210E685;
 Thu,  7 Apr 2022 09:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649322884; x=1680858884;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D3gIMkRiHLXcV951qsCOXaT7ZR2F2IWC1kbATTi4ZR4=;
 b=HOuMwOJXCMylROkdkUZixIhnTbtqjW/cN62/S32oBI4bnXuM21Rn5f0M
 IFenmrMJwq9Ztv3eF2r3AE+EDfSGQWS8iPhJ45emxj2NKWfm3p91PUApo
 FdwU9aLxT2HFs/ceb4caow7y3UDL8cdpQ0SeBqnqRS9Z27jP6GvQQQF6z
 zRkECHVtHdvNQLPjSzyRuzXNWljE2NYcg8OgQMCuKzjXUEoUQkIlekcjb
 K2fSXIYg7Cn+U44Uei11XQ+/jd7rfBFyBd7GyVwjkVgp+jMloPfT3+kvW
 sfC5TAXXssGcbSLKxhoMr/k+82TcJnmEa0YW/b53j7zsMtWBeEFkLOUcI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="347713259"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="347713259"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 02:14:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="570970371"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 02:14:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  7 Apr 2022 12:14:26 +0300
Message-Id: <cover.1649322799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/edid: low level EDID block read
 refactoring etc.
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ever so slowly moving towards cleaner EDID reading.

Jani Nikula (12):
  drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks
  drm/edid: have edid_block_check() detect blocks that are all zero
  drm/edid: refactor EDID block status printing
  drm/edid: add a helper to log dump an EDID block
  drm/edid: pass struct edid to connector_bad_edid()
  drm/edid: add typedef for block read function
  drm/edid: abstract an EDID block read helper
  drm/edid: use EDID block read helper in drm_do_get_edid()
  drm/edid: convert extension block read to EDID block read helper
  drm/edid: drop extra local var
  drm/edid: add single point of return to drm_do_get_edid()
  drm/edid: add EDID block count and size helpers

 drivers/gpu/drm/drm_edid.c | 350 ++++++++++++++++++++++++-------------
 1 file changed, 225 insertions(+), 125 deletions(-)

-- 
2.30.2

