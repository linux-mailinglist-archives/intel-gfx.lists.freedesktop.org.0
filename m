Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2568A958F2E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 22:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA5510E34B;
	Tue, 20 Aug 2024 20:27:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=emersion.fr header.i=@emersion.fr header.b="FxhtJ5Bx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch [185.70.43.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD7210E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2024 20:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1724185629; x=1724444829;
 bh=ZqOF3B/RWCMd2c2A/GS/1PRE8emn9jIi2+7GAN6VMhk=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=FxhtJ5BxMN3mFQrSmu34PbeGHje65ub94IgAr2ZiZ9A6aeTotUI/iHafHQwRwTKwc
 yhVVgVqOzuCkaCzbJpNugM8WL8QyKxAJetzO2C6S8pBG6FUAa0iD4ZVl5/Ph7SdyCX
 ApsoLgkfFIHdluKzt2lwZuCVUX9e1DUw3g0GwiFf9tIJvykWGt6oFHHNi3LDO83C5z
 IV/cKnzA/QvYpoxRvYlRuPylXzdfbHxi2eew3I7s0l6BM6J4v3g33DraxHKVAOtOSP
 r3MKqRT7+T+G/t+YmzQQcSq2dtyLaix3Ap8sXwV/7xwZfYkm17OCIb7V+USitCdeg+
 Mcjo2EMmmqzRA==
Date: Tue, 20 Aug 2024 20:27:05 +0000
To: Ville Syrjala <ville.syrjala@linux.intel.com>
From: Simon Ser <contact@emersion.fr>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCH 2/2] drm/doc: Document that userspace should utilize CRTCs
 bottom up
Message-ID: <4S8WQcK5RB97ooUl9a2VlW9-9ZrzsD-n7-UQ2uuv_BKyviTS_jBhh1rVeGOq45_RyksdFJYLdNxml_H6qtvV9ih_-x4PZ-aCVQ20ymzXcus=@emersion.fr>
In-Reply-To: <20240612141903.17219-2-ville.syrjala@linux.intel.com>
References: <20240612141903.17219-1-ville.syrjala@linux.intel.com>
 <20240612141903.17219-2-ville.syrjala@linux.intel.com>
Feedback-ID: 1358184:user:proton
X-Pm-Message-ID: 6d2bf50843775d6a9e35f925d0ce45cfcea9f347
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

Sorry for the huge delay. Generally this looks good but maybe we
could explain a bit more what "bottom up" means exactly since it
may not be super obvious.

Maybe something among these lines?

    Bottom up means that the first CRTCs in the array should be used
    first. For instance, if the driver exposes 4 CRTCs and user-space
    needs 2, it should prioritize CRTCs with indices 0 and 1.
