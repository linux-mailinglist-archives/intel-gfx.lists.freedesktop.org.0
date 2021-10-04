Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D089A420489
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 02:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BE16E12D;
	Mon,  4 Oct 2021 00:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C81B6E8C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 00:31:49 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-HxW4DUJTNgK-R3gcSrTfaA-1; Sun, 03 Oct 2021 20:31:44 -0400
X-MC-Unique: HxW4DUJTNgK-R3gcSrTfaA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C29951006AA2;
 Mon,  4 Oct 2021 00:31:43 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD77160657;
 Mon,  4 Oct 2021 00:31:38 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Mon,  4 Oct 2021 10:31:33 +1000
Message-Id: <20211004003133.2279446-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH] drm/i915: fix regression with uncore
 refactoring.
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

From: Dave Airlie <airlied@redhat.com>

This was causing infinite recursion on snb/ivb.

Fixes: 5716c8c6f4b6 ("drm/i915/uncore: split the fw get function into separ=
ate vfunc")
Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/int=
el_uncore.c
index 2dac69d92c1b..f1b816ebcdf6 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -346,7 +346,7 @@ static void __gen6_gt_wait_for_thread_c0(struct intel_u=
ncore *uncore)
 static void fw_domains_get_with_thread_status(struct intel_uncore *uncore,
 =09=09=09=09=09      enum forcewake_domains fw_domains)
 {
-=09fw_domains_get(uncore, fw_domains);
+=09fw_domains_get_normal(uncore, fw_domains);
=20
 =09/* WaRsForcewakeWaitTC0:snb,ivb,hsw,bdw,vlv */
 =09__gen6_gt_wait_for_thread_c0(uncore);
--=20
2.25.4

