Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C1E8ACD3C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 14:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A55B112A8C;
	Mon, 22 Apr 2024 12:48:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BnWObbNV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C2A112A8C;
 Mon, 22 Apr 2024 12:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713790127; x=1745326127;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bnqjEIfpL2ECsjI6H927axGDHnPnZLpzMiMdfN6mkBc=;
 b=BnWObbNVgjw9aMBRRrZw0no94gmIr5Nxer5DADMpAFpBkqsDF1o1zSRA
 4pb7ETtjyjOK2LZm0FzoYEEY0LUdR5djwIWzrVrNdAz2ZqVkqCDtlLHJp
 f0L7LPm9MXoYs9YlDLmy8QM3pvvOK1wxolJHwGlOPeIMPRKTA5+DtMzgc
 GMTt3Lomfs3I8COVK7+Naja/N1KpnErgtFImUFsKtY78yeCRdeQz5c7sb
 ZtVtpZOyOc5m+V0N3J9Q+OdKqVOyg4y12lNiCLD4Ds8smqeN8KoJT1eR6
 2e4Q3l4lDYZOw4T+d6L+mf5k0l1BL3IvAP56dJktrjtwabXmlo6kiVERJ Q==;
X-CSE-ConnectionGUID: FqSGJPl6QsGYcVkelmksWQ==
X-CSE-MsgGUID: LuZWdtVTSqCBJ1CPyfzq6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="19876406"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="19876406"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 05:48:46 -0700
X-CSE-ConnectionGUID: gtNveKjrQlG/qs3P9027nw==
X-CSE-MsgGUID: tlIhao/dSXKNLZ1rxMnZLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28683327"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 05:48:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Robert Foss <rfoss@kernel.org>
Cc: dri-devel@lists.freedesktop.org, Andrzej Hajda
 <andrzej.hajda@intel.com>, Maxime Ripard <mripard@kernel.org>, Jacek
 Lawrynowicz <jacek.lawrynowicz@linux.intel.com>, Stanislaw Gruszka
 <stanislaw.gruszka@linux.intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, Danilo
 Krummrich <dakr@redhat.com>, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui"
 <Xinhui.Pan@amd.com>, Huang Rui <ray.huang@amd.com>, Zack Rusin
 <zack.rusin@broadcom.com>, Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] drm/print: drop include debugfs.h and include
 where needed
In-Reply-To: <87ttjywwwc.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240418101247.2642864-1-jani.nikula@intel.com>
 <CAN6tsi5PEc+KOQV9zNLZ_3c-8XyjEtx8+EkSHkB8epu4N_aMZg@mail.gmail.com>
 <87ttjywwwc.fsf@intel.com>
Date: Mon, 22 Apr 2024 15:48:35 +0300
Message-ID: <87bk61tvfg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 18 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 18 Apr 2024, Robert Foss <rfoss@kernel.org> wrote:
>> I'm seeing build errors for drivers/gpu/drm/bridge/ite-it6505.c, is
>> this expected?
>
> No, but it's possible my configs didn't catch all configs. :(

Okay, enabled a bunch more arm/arm64 stuff, and hit some more issues. v3
at [1].

BR,
Jani.


[1] https://lore.kernel.org/r/20240422121011.4133236-1-jani.nikula@intel.com


-- 
Jani Nikula, Intel
