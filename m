Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B64686E68
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 19:51:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365EB10E188;
	Wed,  1 Feb 2023 18:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DF5410E188
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 18:51:46 +0000 (UTC)
Date: Wed, 01 Feb 2023 18:51:25 +0000
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com
 header.b="DrWjIDRV"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail3; t=1675277499; x=1675536699;
 bh=zjTIE2oPy22V3XGKgrjTv72oEHVy+8aT7MHpLGiQuVU=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=DrWjIDRV3KgeS11EYqzioyHQpUUqTVHRHVIs+fC/bxmLUGBv8KXOgZ2PyEfK8M5Nc
 tUU1IIQLYeLFcV2FC1ENvQZ05an8mhhKGyFDJMKzOUrA3w0wfurD7MTrJJzDIwMvOZ
 1AdkXc1Z4m44XerkgNqskoz5XMj5cfuSaTuj07D+lTs8ja27nVlfpRcOCH5TIwZexW
 U6KDZ/5txubh+7MDMzBX3LuwyTo+tWXUrQb1SXwp4HPTmGT/1HtqUUjsgxbTQMxQIi
 47DZoW+e5vIHfZAToM/q6E6BL3OI1StZQE1FmGdJC1tVL3eF5wFd4qAx4q+2MLhPO/
 x/dYx+Kwvdwpw==
To: intel-gfx@lists.freedesktop.org
From: Mavroudis Chatzilaridis <mavchatz@protonmail.com>
Message-ID: <20230201184947.8835-1-mavchatz@protonmail.com>
Feedback-ID: 20039310:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH] drm/i915/quirks: Add inverted backlight quirk
 for HP 14-r206nv
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

This laptop uses inverted backlight PWM. Thus, without this quirk,
backlight brightness decreases as the brightness value increases and
vice versa.

Signed-off-by: Mavroudis Chatzilaridis <mavchatz@protonmail.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/=
i915/display/intel_quirks.c
index 6e48d3bcdfec..a280448df771 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -199,6 +199,8 @@ static struct intel_quirk intel_quirks[] =3D {
 =09/* ECS Liva Q2 */
 =09{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
 =09{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
+=09/* HP Notebook - 14-r206nv */
+=09{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
 };

 void intel_init_quirks(struct drm_i915_private *i915)
--
2.34.1


