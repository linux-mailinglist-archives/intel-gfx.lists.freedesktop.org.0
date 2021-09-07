Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4360D402621
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 11:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93D9089D66;
	Tue,  7 Sep 2021 09:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch [185.70.43.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D86A89D5E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 09:21:26 +0000 (UTC)
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com
 [51.77.79.158])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-4321.protonmail.ch (Postfix) with ESMTPS id 4H3flP5lc9z4x34y
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 09:16:17 +0000 (UTC)
Authentication-Results: mail-4321.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="GOt3t+4l"
Date: Tue, 07 Sep 2021 09:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1631006172;
 bh=kb+kPQrQ0XOUiHCLlMhIRUuVEoyp2oTFgoWLLWS5944=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=GOt3t+4li9I7nI45sPvj7K7hWjJycfLSx2Jwj/5xlOePb4qVgyAYVy18TpPWZEPOk
 cKdfFOs1afgalDVzhKVb6JEC8lFXtRjo2no3/9Ny8Gy/AAqXa07Z6tCDf8xcKovvGL
 LNY/TaRfvo6e+15FxBUNt6yhFmrAYSM9PC4y280dWKkskWnYO0rp6Qyvw8NPbWsGEV
 sUWw9WVFkigNbSRCoMsMO+M9lS1bF3yl51/+ZK114/N8ky4vKNasAF7Sy6CFapogP4
 VI14O6Gvr5SAeTOkgiHVIYimnSsZHtghEv0jWIwOUxpEEbv7Hnq5ul3hJOp+o7ab/E
 IXS+cupywY46g==
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Cc: harry.wentland@amd.com, alexander.deucher@amd.com, michel@daenzer.net,
 pekka.paalanen@collabora.com, daniel@fooishbar.org, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org
Message-ID: <K_o7SuToYSYL9tTtvLoykIFhHGamEksX-WI1P5skYeWJqO55oOgKurPlx4Ix0xl0PEpVVdt7xQPWM4MbpihIQ2B__rVyB1thiTTXmmcQ7mk=@emersion.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v2 0/7] drm: add per-connector hotplug events
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

Ping, anyone up for a review?
