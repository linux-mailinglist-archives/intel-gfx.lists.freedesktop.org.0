Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E132CA2062
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 01:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3D110E162;
	Thu,  4 Dec 2025 00:13:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="G0WgOBpQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8050C10E162
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Dec 2025 00:13:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8D57260176;
 Thu,  4 Dec 2025 00:13:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A84AC4CEF5;
 Thu,  4 Dec 2025 00:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1764807236;
 bh=QYBp7Dgo/eb9G8/N3QqB+6w0/y1YhATq/0UvwBEb9pk=;
 h=Date:From:To:Cc:Subject:From;
 b=G0WgOBpQQkfGSXUnNZwXlUtoZITjX2U1D1+s8TQc2QxgPf+ciYP8xD0OOTFFw9afj
 HeyjIskoUSgQrEThfyG/BtHqXTCtRJZHSWJJsNpHf9EdCJtagJJi8DuvQr3dPuzscE
 F874D9CWWZ4EbdeuEHAirpfl/ciTtY2BrcMfdX3afo1beHyFHDuWl/mrsp/DZpAL0U
 OZ8AhAnQe9AAoHbLPFcPiE7emY8d/BLbfcYXhjmZWQjOLQ4rqLSBowdx4Riv+nTWRr
 n8h66Q1NowTXiBbDsyHB3Osd+c59A0/Sk/ysnUgvpWhSvgi6cU9ebXxQ0sFY7GRIsU
 ittQP5p08UIpA==
Date: Wed, 3 Dec 2025 17:13:52 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Apply fc7bf4c0d65a342b29fe38c332db3fe900b481b9 to 5.15
Message-ID: <20251204001352.GB468348@ax162>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

Hi stable folks,

Please apply commit fc7bf4c0d65a ("drm/i915/selftests: Fix inconsistent
IS_ERR and PTR_ERR") to 5.15, where it resolves a couple of instances of
-Wuninitialized with clang-21 or newer that were introduced by commit
cdb35d1ed6d2 ("drm/i915/gem: Migrate to system at dma-buf attach time
(v7)") in 5.15.

  In file included from drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:329:
  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:105:18: error: variable 'dmabuf' is uninitialized when used here [-Werror,-Wuninitialized]
    105 |                        PTR_ERR(dmabuf));
        |                                ^~~~~~
  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:94:24: note: initialize the variable 'dmabuf' to silence this warning
     94 |         struct dma_buf *dmabuf;
        |                               ^
        |                                = NULL
  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:161:18: error: variable 'dmabuf' is uninitialized when used here [-Werror,-Wuninitialized]
    161 |                        PTR_ERR(dmabuf));
        |                                ^~~~~~
  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:149:24: note: initialize the variable 'dmabuf' to silence this warning
    149 |         struct dma_buf *dmabuf;
        |                               ^
        |                                = NULL

It applies and builds cleanly for me. If there are any issues, please
let me know.

Cheers,
Nathan
