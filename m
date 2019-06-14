Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABB646C28
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 23:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC77B89598;
	Fri, 14 Jun 2019 21:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 369A6894EB;
 Fri, 14 Jun 2019 21:56:45 +0000 (UTC)
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F9D821874;
 Fri, 14 Jun 2019 21:56:44 +0000 (UTC)
Date: Fri, 14 Jun 2019 21:56:43 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Juston Li <juston.li@intel.com>
To: Lyude <cpaul@redhat.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20181024021925.27026-2-juston.li@intel.com>
References: <20181024021925.27026-2-juston.li@intel.com>
Message-Id: <20190614215644.8F9D821874@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1560549404;
 bh=FgCIlp6s90iMdDIOr6oSAg5OdFyR8CDqfNv81Bsvkww=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=VZy8SsGo4dGZa5MUcDZ+IIxh83wjq2nYse4s2rkCdCYtgK4uNrzS91WkfeM+sZQJO
 NNawkkK5/iXnu8qzNrQKab/qRP+pcYXdXHjF8FqmEOndgB7gczcqP00f2dKu2cKBkl
 XZ10QNojeYkR6gttfcQceFgX4geKGZy9uiokUREQ=
Subject: Re: [Intel-gfx] [RESEND PATCH v2 1/2] drm/dp/mst: Reprobe EDID for
 MST ports on resume
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: , stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0800250322=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0800250322==
Content-Type: text/plain

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.1.9, v4.19.50, v4.14.125, v4.9.181, v4.4.181.

v5.1.9: Build failed! Errors:
    drivers/gpu/drm/drm_dp_mst_topology.c:2672:9: error: implicit declaration of function ‘drm_dp_get_validated_port_ref’; did you mean ‘drm_mode_validate_driver’? [-Werror=implicit-function-declaration]
    drivers/gpu/drm/drm_dp_mst_topology.c:2676:9: error: implicit declaration of function ‘drm_dp_get_validated_mstb_ref’; did you mean ‘drm_mode_validate_size’? [-Werror=implicit-function-declaration]
    drivers/gpu/drm/drm_dp_mst_topology.c:2684:3: error: implicit declaration of function ‘drm_dp_put_mst_branch_device’; did you mean ‘drm_dp_get_mst_branch_device’? [-Werror=implicit-function-declaration]
    drivers/gpu/drm/drm_dp_mst_topology.c:2715:2: error: implicit declaration of function ‘drm_dp_put_port’; did you mean ‘drm_dp_get_port’? [-Werror=implicit-function-declaration]

v4.19.50: Build OK!
v4.14.125: Build OK!
v4.9.181: Build OK!
v4.4.181: Build OK!

How should we proceed with this patch?

--
Thanks,
Sasha

--===============0800250322==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0800250322==--
