Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id al2MOYlQKWoYUwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:54:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B67668FDF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:54:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=a8m9eQ+P;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33ADF10E5AE;
	Wed, 10 Jun 2026 11:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB4010E483;
 Wed, 10 Jun 2026 11:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781092485; x=1812628485;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IBdSvbniv45jCKX2cc9fNGt2KfPPluvYcMxmenPPBM0=;
 b=a8m9eQ+PQeVhlZTCMjGLPcA2Y9U2Aw912dTp4B+8MOslLy51AuWkbKtU
 MBow95YbLgz+BaMoPWLBeB7YmLCbYg1wbbfOVynoBb84fkXCanK+SIJfr
 XGasThfEMrSvY/sDXk4w7zw+rn29XUHFEpqVtkGYWFBug1XM4P0jjJpHU
 1JShHhInuxRKbxhmAs6R7cnNKx21NcO1R90rPZwEm5xPK+bs77TnyeWkS
 3UvzjdUJQrBQ1FaqMokDLsZllB0zyEBHZ0hGkEHfR6sUN5gGjrTgM7AC+
 alGy5IvFrcbRAhaGiSNLEjkHq+OUHzx4xv4KYo/zD7jm58rrRv6sF3WkE A==;
X-CSE-ConnectionGUID: mZgg+GRvQ5K+oItAoA9a1Q==
X-CSE-MsgGUID: 3S5gGZ3wQ5OTSR2cw7bZfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="81789866"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81789866"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:54:44 -0700
X-CSE-ConnectionGUID: YLk1Sbj9TlyqNzCagqc0RQ==
X-CSE-MsgGUID: /M4SHBnES7ybbKKuTAV9eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250439091"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:54:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Harry Wentland
 <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira
 <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, Christian
 =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan
 <andy.yan@rock-chips.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Daniel Stone
 <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v17 21/28] drm/tests: bridge: Add KUnit tests for bridge
 chain format selection
In-Reply-To: <gnicb4WkT1S4aQIC2G_naw@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
 <20260609-color-format-v17-21-35739b5782cc@collabora.com>
 <04ff70850213ae0f75486b1a27a7edb6fb4e71c3@intel.com>
 <gnicb4WkT1S4aQIC2G_naw@collabora.com>
Date: Wed, 10 Jun 2026 14:54:29 +0300
Message-ID: <596f0f063d6ef2ffb4c6640e3df5ed89d95b11dd@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,intel.com:dkim,intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5B67668FDF

On Wed, 10 Jun 2026, Nicolas Frattaroli <nicolas.frattaroli@collabora.com> wrote:
> If you don't want __maybe_unused, then sure, I'll move them into a new
> .c file. Though I think the two are roughly equivalent in that I don't
> think anyone is really trying to minimise the size of their KUnit
> binaries.

I think placing arrays in headers is bad practice, and we shouldn't set
that example, kunit or not.

> I'll send a patch to move them to a .c

Thanks.

BR,
Jani.


-- 
Jani Nikula, Intel
