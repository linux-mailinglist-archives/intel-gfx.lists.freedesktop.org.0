Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD39A616B26
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A78010E263;
	Wed,  2 Nov 2022 17:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7479010E263
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411168; x=1698947168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T8Ed/hVrGKeff+akE0dp0GFs+tWWtM75X42P8ncrWKY=;
 b=FpO5f5Q0Qi1RN3LlOj3r+jKimDABSQVKO7ciK0oqzOwyEPA5hD57yGC/
 7PfnnCkVlPKk8q7CK3bgAhTIIbm3Pd1s69q4paOp5UTvX9Osk8Gtq3KsC
 OS6GP57dWCQbZr4JSw20UiOXLaM3G1k3W20paTMPIDr6Fzy8ttCduaIZt
 QeFIkJVEtXmzc4ju05AfQcIYpDee1EeP5rEz9lgE9mgyZv1C9gD605mUc
 MoWD6Uchta64sZ0bFtQ79YJxTDYsdlo5ExIBRYLiLx2z2Pk7aVAl1SwoB
 Q7EXrLPC72qE8ze8Why3WssbRzqhnrEHZpgcZrBYE7+DhxWsZyx/HucB2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308197875"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="308197875"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:45:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="759640197"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="759640197"
Received: from asridha2-mobl.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.216.192])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:45:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:45:42 +0200
Message-Id: <20221102174544.2288205-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] DSC slice/PSR2 SU panel y granularity
 alignment
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

This patchset ensures panel y granularity aligns with DSC slice height
and disable PSR2 if this is not the case.  Also inappropriate DSC
alignment warning is removed.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (2):
  drm/i915/psr: Ensure panel granularity aligns with DSC slice height
  drm/i915/psr: Remove inappropriate DSC slice alignment warning

 drivers/gpu/drm/i915/display/intel_psr.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

-- 
2.34.1

