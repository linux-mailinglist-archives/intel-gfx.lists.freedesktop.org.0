Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B58315890
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 22:29:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A076E11C;
	Tue,  9 Feb 2021 21:29:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87C56E140
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 21:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612906138;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=CXQsNSg6tBCzK0EkoRDp5wonSa/sOviGThVkn0O82PA=;
 b=KITwPsKUfXEs3xp4GG1Rzt3Z6U5HVQyehuGm4kjKCnUi/7qwiOC9Vnld9cBuhlNbhoId1F
 WSnPCJX5Xe4rTlWJ8ulfOnJvXPjz0MD1KD0V06WjH/E9wxicJyfNc2Fxjbrzz/y+7j4jVe
 qyvAZHsFlc2ju48T5zMhvpTSBLBLIkA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-IGEaC8sJP5ucrGkP9z36-g-1; Tue, 09 Feb 2021 16:28:55 -0500
X-MC-Unique: IGEaC8sJP5ucrGkP9z36-g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1CFA80196C;
 Tue,  9 Feb 2021 21:28:53 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-113-53.rdu2.redhat.com
 [10.10.113.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9AECE19C78;
 Tue,  9 Feb 2021 21:28:52 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Feb 2021 16:28:27 -0500
Message-Id: <20210209212832.1401815-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH v5 0/4] drm/i915/gen9_bc: Add TGP PCH support
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
Cc: Yijun Shen <Yijun.Shen@dell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is to add basic support for Intel's new gen9_bc platform, which
consists of a combination of a TGP PCH along with a CML CPU. This is
also a continuation of the work from Tejaskumar Surendrakumar Upadhyay
with the various review comments addressed.

Lyude Paul (4):
  drm/i915/gen9_bc: Recognize TGP PCH + CML combos
  drm/i915/gen9_bc: Introduce TGP PCH DDC pin mappings
  drm/i915/gen9_bc: Introduce HPD pin mappings for TGP PCH + CML combos
  drm/i915/gen9_bc: Add W/A for missing STRAP config on TGP PCH + CML
    combos

 drivers/gpu/drm/i915/display/intel_bios.c    |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c     | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  9 ++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pch.c             |  3 ++-
 5 files changed, 49 insertions(+), 2 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
