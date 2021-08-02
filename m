Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EABF3DD14D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 09:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27BD89FD9;
	Mon,  2 Aug 2021 07:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983C889FCE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 07:36:45 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
 [188.165.51.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (No client certificate requested)
 by mail-41103.protonmail.ch (Postfix) with ESMTPS id 4GdVF75Wx0z4wwdK
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 07:36:43 +0000 (UTC)
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="EiVi0SO5"
Date: Mon, 02 Aug 2021 07:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1627889798;
 bh=bjGffO3ZyKLdM/0/V0E+cpS4f8EA+Sr8NhZrFgsBfas=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=EiVi0SO5cR0KLiV0k3XsQkyqBrUOAnBZXLU44g3m5Lt2OSleOLOj20Pn3oEtY3CZQ
 vtvPVeI9/yUkLHoMkJb3LUTTk0mNYVrUbO7xzhuCevx5l9SVOa0GzxzESp5hG0MWYS
 dF1QUAw0QcyqF1vtAbis6q5TQSbruGnBPA7Kt8pYV+1ri2eG6jV2yQXyWfCydOvZzF
 Ttpio6064MyHDDm4uwWHd3S3DminXTyqiLV2cNAZZiC0j6C81B65twXUif8pShgBbZ
 QHTg8rBpDfmiMoNDXFDvDGBu+d3yZavPw53CJauqjtCZQRvYPiMADIVi+BrNT8IPLf
 feWBiYSkNwxNQ==
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Cc: harry.wentland@amd.com, alexander.deucher@amd.com, michel@daenzer.net,
 pekka.paalanen@collabora.com, daniel@fooishbar.org, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org
Message-ID: <TEH7vVN12SkH1d2BAwcP18Ho63wY_uGecogrNv7qEOs2fMGMmGyNpOsj5b_hZ3rW-s9XhLmM09ETMau1PQ3ifgDDCLqKZfPWzZcNrU1ohLE=@emersion.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/connector: add ref to
 drm_connector_get in iter docs
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

Pushed this one doc patch with Daniel's R-b on IRC.
