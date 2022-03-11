Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE784D6190
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 13:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350DD10E95F;
	Fri, 11 Mar 2022 12:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABFB10E95E;
 Fri, 11 Mar 2022 12:30:44 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1647001842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=iGjJ4TBsWHm5TiXi6/pffWagCsVPkn1ed0Af/pLc4uI=;
 b=3G7IszRPENmilBXPsqfS057rH0YJqxkNsG5ofMjoYlXPt3FioXcvYg2MyB0yqYrF6VBpMh
 DuvfANC9Tjatdb2fxtvYB8UHv/Nkq3Vf/2aMnClTd0cvkvDzXJw+2GLAJ29Iw95SJd4gYm
 SB4P+8V/nXmn1qF00T3UvPYoZj7FdCA+QP4+SqT2f0CQiXob4idc9e2NKbQTHKXrOuT48I
 zkSGQvXurq1LacNhZBqaJ0SJK1Bd4rDGubo9zvq8UVbxyrlGqdXxiF/Ja78vmZG7HZ44Lh
 Df5FNOa2Oq3dI0i2pc1c01RpYrrAML+T8RRfKaHLudXcs/9pawlHPizHdg1S9Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1647001842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=iGjJ4TBsWHm5TiXi6/pffWagCsVPkn1ed0Af/pLc4uI=;
 b=PwJfRu2EJJzE6fQSTKA/PBJT9I8IxONpOeq1GIsvW0It0FRhnO6sN3FkAAWjOdED54LVyF
 Fo2jbzewDi+IxXAg==
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 13:30:30 +0100
Message-Id: <20220311123032.4078431-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: Avoid explicit IRQ-off sections.
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
Cc: David Airlie <airlied@linux.ie>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

these two patches are from the RT queue. They avoid IRQ-off checks and
IRQ-off regions which are not valid/ possible on PREEMPT_RT and are not
needed on !PREEMPT_RT.

Sebastian


