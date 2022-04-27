Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AFC5110DA
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 08:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE99010EFCB;
	Wed, 27 Apr 2022 06:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9C710EFCB;
 Wed, 27 Apr 2022 06:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651039487; x=1682575487;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=ZJoHnkJ5srot6CIUGpRO/4/a3WJqAUFGKVvWNNYlMS4=;
 b=L5SlpQP6iBoDNGfyeiaKVyS2cuzJgmeRo35DLE5A6M1roknU8v2HA1Mi
 Paj4VZwRlVO9Vi9ufLZ3hrlO3MqEy5sdxYRlNawNs1CqZPOU1+7RSNzBk
 HVPPgFLjJEaFKZ6I1DVp5Ff0NZqo8TIwGqUPjfUIiO1WXKbcD3tA3bGOx
 EImfStzXevjWhJwaYCjHPGnF/31OxGmVG2fG11s66gGEFE2f/74LBf4tC
 oEJPuClv8zBTDUgKAU5zto7G6i4twjC9BCzhMHYImbrcAQpGsHvOTbs8I
 KFl7v4IG+x/kYRHd45F+E/QGKE6jH9/o2t82dh8nXCUaDUWN2hQUfl2n6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="245748171"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="245748171"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 23:04:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="580397963"
Received: from zbazanow-mobl.ger.corp.intel.com (HELO [10.252.46.190])
 ([10.252.46.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 23:04:43 -0700
Message-ID: <f692bb62-5620-1868-91b7-dffb8d6f9175@linux.intel.com>
Date: Wed, 27 Apr 2022 08:04:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.1
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm-misc-fixes-2022-04-27:
drm-misc-fixes for v5.18-rc5:
- Single fix removing applying PHYS_OFFSET twice in sunxi.
The following changes since commit 94f4c4965e5513ba624488f4b601d6b385635aec:

  drm/amdgpu: partial revert "remove ctx->lock" v2 (2022-04-21 11:26:20 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2022-04-27

for you to fetch changes up to dc3ae06c5f2170d879ff58696f629d8c3868aec3:

  drm/sun4i: Remove obsolete references to PHYS_OFFSET (2022-04-26 14:39:56 +0200)

----------------------------------------------------------------
drm-misc-fixes for v5.18-rc5:
- Single fix removing applying PHYS_OFFSET twice in sunxi.

----------------------------------------------------------------
Samuel Holland (1):
      drm/sun4i: Remove obsolete references to PHYS_OFFSET

 drivers/gpu/drm/sun4i/sun4i_frontend.c | 3 ---
 1 file changed, 3 deletions(-)
