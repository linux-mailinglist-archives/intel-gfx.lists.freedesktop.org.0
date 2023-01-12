Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C3D667234
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 13:29:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D834C10E0FC;
	Thu, 12 Jan 2023 12:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 695 seconds by postgrey-1.36 at gabe;
 Thu, 12 Jan 2023 12:28:57 UTC
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch [185.70.43.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 374CB10E0FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 12:28:57 +0000 (UTC)
Date: Thu, 12 Jan 2023 12:18:13 +0000
Authentication-Results: mail-4321.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="dClIetWF"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1673525905; x=1673785105;
 bh=juI0GFGF7FVCc6p0Z9TYJVq+dBfyTc/skTNGMY81Zdo=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=dClIetWFxuDkbm63wopjnsmqJkVPem4yBMWw265ypuM25/N7ltIH08qCCGwt7sVv4
 E1RGbu0q8tQU4kAvAm+NmO7YDXNZvfUEtXPuF0LchU8E5qRDpSrvUuf2+pJ5LkfcNm
 HB4deYHcyKew1Vl+4cDCoVWY1a2e4t7FNdikvAtqkWMf1rIfDFpqLZI/XI6NyHIuXD
 lNDaemfwrOiqrSIMAIcRdPmzIVsdIo2mBOkeCm5IPJraafM2oCZRG79bXdJsUpiTkl
 BfeuYK+o4QUh1+XqwafXFiXaLxv3v+0d2Vdqx8kNW/jXjyPJAPqUfe23SBwRNFuTjn
 vJSDd+9FL6qPA==
To: =?utf-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <jwSmlsqOGa2MOuW6XX_iVdi7q10qz92z9mXvo_XPI-WyGTM4i7cU7q9VQ-kKoPKdR1g5ucjZ-dOG_u0ZUJp22YgOwN6HzTkIqBpLSLfaGJw=@emersion.fr>
In-Reply-To: <20230109105807.18172-4-mcanal@igalia.com>
References: <20230109105807.18172-1-mcanal@igalia.com>
 <20230109105807.18172-4-mcanal@igalia.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Remove redundant framebuffer
 format check
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
Cc: =?utf-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Melissa Wen <mwen@igalia.com>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The Intel counterpart is also:

Reviewed-by: Simon Ser <contact@emersion.fr>
