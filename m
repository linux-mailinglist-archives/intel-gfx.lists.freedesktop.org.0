Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9A9857637
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F2110EAA6;
	Fri, 16 Feb 2024 06:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="CD9yVN3+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056AC10EAA6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4DFCECE1A97;
 Fri, 16 Feb 2024 06:54:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CF8CC433C7;
 Fri, 16 Feb 2024 06:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066465;
 bh=guZaFSqSf3MqQt8V36466MzszKjuXHWltT0kqFLvhWY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CD9yVN3+t6Oxc4Su6jO9CPZk5HJwbk1hnn9GS0N9rM148G0KprQN5AW+JnV49jYzM
 Vy1se9Y35OI1KnxNf8NkYYyTMb1AP7/PAEe0d8Wt186IepDpbl2ApTLK4CXigB3mTe
 5QJDpTfy6FvqP/w7B+wbF/I+v2b50yEclWqyQ1T2L1Dpo59qQu7k7jlI+XRU9br8X3
 pco+MMsyC+qsoDJtNAp+Z2Ni5C/FOEqLgZZeB5JC3nuJ80Scwa7ig5Z3fGG1dOrPVb
 LHHjT4UoQWO4CxvjoIo6pT1s22I+pGeB/OWDTbqqYM46jxc8cUxRm+LfWLj3Ycs+rG
 d6XkQFoG5UK4A==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 17/21] drm/i915: remove intel_gvt_event_info::policy
Date: Fri, 16 Feb 2024 07:53:22 +0100
Message-ID: <20240216065326.6910-18-jirislaby@kernel.org>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240216065326.6910-1-jirislaby@kernel.org>
References: <20240216065326.6910-1-jirislaby@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

intel_gvt_event_info::policy was never used since its addition in
commit c8fe6a6811a7 (drm/i915/gvt: vGPU interrupt virtualization.).
Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/interrupt.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/interrupt.h b/drivers/gpu/drm/i915/gvt/interrupt.h
index e60ad476fe60..b1fd6ed4e34a 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.h
+++ b/drivers/gpu/drm/i915/gvt/interrupt.h
@@ -177,7 +177,6 @@ enum intel_gvt_irq_type {
 /* per-event information */
 struct intel_gvt_event_info {
 	int bit;				/* map to register bit */
-	int policy;				/* forwarding policy */
 	struct intel_gvt_irq_info *info;	/* register info */
 	gvt_event_virt_handler_t v_handler;	/* for v_event */
 };
-- 
2.43.1

