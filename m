Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D034270A9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 20:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A346F525;
	Fri,  8 Oct 2021 18:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 367 seconds by postgrey-1.36 at gabe;
 Fri, 08 Oct 2021 18:20:36 UTC
Received: from mail-4321.protonmail.ch (mail-4321.protonmail.ch [185.70.43.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3776F525
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 18:20:36 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-4321.protonmail.ch (Postfix) with ESMTPS id 4HQxD34Wt8z4x0XJ
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 18:14:27 +0000 (UTC)
Authentication-Results: mail-4321.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="NOhM4xtz"
Date: Fri, 08 Oct 2021 18:14:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1633716862;
 bh=BhsA1aKlglGjpRdMu2peVecDmERAuTyLLhI53Hw2hvM=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=NOhM4xtz90A+U5fTcAvceuaOBBdeDfqHVRIxTAAAWJDGR/QCmgPSMeKzmv8tLCwqO
 AtKKcThPvlqaWcny7YRWKKPr+npe027hHR5e6T8ulEqY5eR85lAiNTWKS1qiwFMUBD
 zFdZ0LvL0hpb8BhAnGIb8doLhJ8oILi1tXObedngR3ZsuV2qdH5SOLpGOKP8dfHy7t
 sqm7gx/B9i+3369jsG+SIUj3eYjLX3Fkyt0C1P3ApSfxcwSkcOjgYlzO7QRQkMKmII
 6FNOQwRwhetgY/+RsXzv/Z6hdSkI0cZMiYylxNiw+ltmOgDXW5OG+cs+Ph0W5tnY1V
 4vpaD1iBJX5HA==
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Cc: harry.wentland@amd.com, alexander.deucher@amd.com, michel@daenzer.net,
 pekka.paalanen@collabora.com, daniel@fooishbar.org, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org
Message-ID: <YjBu36cgPhB1Mp597TghjDDoO0mKv0pUBPn9e1RNjC_wbBgcTm7emTIPnFidE3SuvjvWMBuOjSthILB1qB4UrbCTgClb2Q69ysb1KL-rvCQ=@emersion.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,TVD_SPACE_RATIO shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/sysfs: introduce
 drm_sysfs_connector_hotplug_event
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
Reply-To: Simon Ser <contact@emersion.fr>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ping
