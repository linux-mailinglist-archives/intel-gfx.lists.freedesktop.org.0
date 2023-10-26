Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474E17D8611
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 17:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5EA10E83A;
	Thu, 26 Oct 2023 15:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3223810E83C;
 Thu, 26 Oct 2023 15:34:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2A4356352C;
 Thu, 26 Oct 2023 15:34:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77398C433C7;
 Thu, 26 Oct 2023 15:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698334450;
 bh=WlnOzBHEslW7auiw0OQwFlM3UIEQxiB3h6xa2FYhXD8=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=XDLhyice58rh/uUv7OvhKCFL0YqZ96mVJJZ7ryrPkBzgCe8Ckc1dwVkcFt8MINDR2
 a8fBohwsAijNXq25EoUNELjMZrV2J5pcuieu1UWPzLVCSoxLWmwYizVsyoWNjWikow
 UgA+lVYBoRj0AcknN1FHOgwkZZUfMHKAhVPW6Rrjo7vZC921i51E6IlnSVqLzgiTVU
 VG8ZuE9kJ5iEjm+HFcgv32oTcM4g3Gu37v7uGiz/ca0shJzGuRpbaQskQ12sT/xv7L
 8fYF2FDSvPane+sX5uC0e3+YrQSiI0O/Py4r/GU8E5zhE9Wpoqgbex9RfodWfBTGV8
 42xuzs5WEvfsg==
From: Maxime Ripard <mripard@kernel.org>
To: dri-devel@lists.freedesktop.org, Helen Koike <helen.koike@collabora.com>
In-Reply-To: <20230919182249.153499-1-helen.koike@collabora.com>
References: <20230919182249.153499-1-helen.koike@collabora.com>
Message-Id: <169833444817.1001410.15120310571741480170.b4-ty@kernel.org>
Date: Thu, 26 Oct 2023 17:34:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
Subject: Re: [Intel-gfx] [PATCH] MAINTAINERS: drm/ci: add entries for xfail
 files
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
Cc: neil.armstrong@linaro.org, heiko@sntech.de, michel.daenzer@mailbox.org,
 daniel@ffwll.ch, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 p.zabel@pengutronix.de, airlied@redhat.com, alexander.deucher@amd.com,
 linux-amlogic@lists.infradead.org, daniel@fooishbar.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 19 Sep 2023 15:22:49 -0300, Helen Koike wrote:
> DRM CI keeps track of which tests are failing, flaking or being skipped
> by the ci in the expectations files. Add entries for those files to the
> corresponding driver maintainer, so they can be notified when they
> change.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

