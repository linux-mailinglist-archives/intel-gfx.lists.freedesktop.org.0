Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7026679522
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 11:26:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221DA10E65D;
	Tue, 24 Jan 2023 10:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E77410E65D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 10:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674556016; x=1706092016;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rORPcS3NiARyI6GqKzIU1r9NSPwvWa6phuaCnvoFqCg=;
 b=eMd9RS0sK3IDJbrH1twmUlzB2EUHQzStkXGjChNPF8cmySOvUDs4Zo6B
 7cNkz9vCy07lx77Y+Kilj8aobDN+O4t6VzbvoGc5Oy5mfQViz0MfgZpz5
 BzCUB9sV+e7JqWNX1UnoXZWVf0A8RCWQm4yhY/FX/h42tgxLlHXMEaRaV
 /aPdjt5KtVB3S4fS/M/HFfgamc0pWVJOyo8rT6QEuyTMT8xZlm9uhscFR
 3QdNE+lrEJqKxV9uLokG45wOl9xW8wjjtxgGa9PfwnuRzPB0hDQPykuj7
 ajXoRTnBF2yhXJjxKUvWkmUvTVdTWFfYoftZp3aCdmK2sKMzxpfphe29q g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="388611558"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="388611558"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 02:26:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="786027614"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="786027614"
Received: from dhenel-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.164])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 02:26:53 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 12:26:34 +0200
Message-Id: <20230124102636.2567292-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915/psr: PSR related workarounds
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement Wa_14014971492 and apply Wa_14013475917 for all MTL steppings

v2: Adjust platforms where Wa_14014971492 is applied

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (2):
  drm/i915/psr: Implement Wa_14014971492
  drm/i915/mtl: Apply Wa_14013475917 for all MTL steppings

 drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +---
 drivers/gpu/drm/i915/display/intel_psr.c  | 6 ++++++
 2 files changed, 7 insertions(+), 3 deletions(-)

-- 
2.34.1

