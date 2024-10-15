Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ECD99F34A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 18:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575C210E5C1;
	Tue, 15 Oct 2024 16:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=emersion.fr header.i=@emersion.fr header.b="aGJ5BPjL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A36510E0D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 16:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1729011065; x=1729270265;
 bh=/bSWJYO4jW7IlsgZs8Xi6kcObbXH0r2hB0HglOrjTuw=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=aGJ5BPjLAs7XwbC6ugF3VgTww7pp1P1H2zQLb+AnPKtd+AiOKgQEPLORa2E2Dx/nP
 RZTE3MKHNMbXgRzVLKD337nnAv0PRWvyUdxx2AuKWh5gWWaMkVMOoEGqlZnryRLUE6
 8gQd0FP1IxW2zKGDu07XSS4CNITAVf6+bAcYQ9ypeiJQP3q12Q2B8fNr1xOVsAMS66
 6BrpS4yYtNcPJ7yw+8jCahkDuNDF8bVZamZ5fgqaL048EslcvRc3vAmq4mAGkvi78v
 ofK70WbnA5SzjSrsOX7IcG1xpu7UkDchgD9LoUK0EcauxR3cX/KCR3hqNNiNTYAhCs
 JaTJ3bDex03mQ==
Date: Tue, 15 Oct 2024 16:50:59 +0000
To: Ville Syrjala <ville.syrjala@linux.intel.com>
From: Simon Ser <contact@emersion.fr>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCH 2/2] drm/doc: Document that userspace should utilize CRTCs
 bottom up
Message-ID: <RAc9ufoHQcVRB3GfOjFuj-1MX1XXX1PzpCRW3DDB22k90I5dXkOgOssiYYFHOJ_k26DGGLZUThMx4B0vgVvNJbxU-BQ6NANJzfhNVv0wvk8=@emersion.fr>
In-Reply-To: <4S8WQcK5RB97ooUl9a2VlW9-9ZrzsD-n7-UQ2uuv_BKyviTS_jBhh1rVeGOq45_RyksdFJYLdNxml_H6qtvV9ih_-x4PZ-aCVQ20ymzXcus=@emersion.fr>
References: <20240612141903.17219-1-ville.syrjala@linux.intel.com>
 <20240612141903.17219-2-ville.syrjala@linux.intel.com>
 <4S8WQcK5RB97ooUl9a2VlW9-9ZrzsD-n7-UQ2uuv_BKyviTS_jBhh1rVeGOq45_RyksdFJYLdNxml_H6qtvV9ih_-x4PZ-aCVQ20ymzXcus=@emersion.fr>
Feedback-ID: 1358184:user:proton
X-Pm-Message-ID: dddc226c765843ecbaed66e8a5ab3f558635c02f
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

On Tuesday, August 20th, 2024 at 22:27, Simon Ser <contact@emersion.fr> wro=
te:

> Sorry for the huge delay. Generally this looks good but maybe we
> could explain a bit more what "bottom up" means exactly since it
> may not be super obvious.
>=20
> Maybe something among these lines?
>=20
> Bottom up means that the first CRTCs in the array should be used
> first. For instance, if the driver exposes 4 CRTCs and user-space
> needs 2, it should prioritize CRTCs with indices 0 and 1.

Gentle ping - what do you think, Ville?
