Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1E3BD34A2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 15:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E09410E441;
	Mon, 13 Oct 2025 13:52:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ONBh5HRI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326DB10E441;
 Mon, 13 Oct 2025 13:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760363531; x=1791899531;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hFCuubAK6RBNJ2x0+BQ57wr3FKbo3vHXxUwbbR8xDbE=;
 b=ONBh5HRIn5RAIwjGYw2+bIKitsQG+2QgqH46VAgIea/AH4RkGm5suo5k
 Stv1vaqwYXOCGsO3KQ1nfyqBE+yAoeJNvo081ksT6D1ZGeeyRA+yjX4wf
 2Qjn2D5KYkdIftm/mPduJKuA2nlwicyV2Z3DUvd3qnOiOBIkCb0UkQ3Pj
 sH3j+BzCFXsX7kp3b2w/R1YckRXNWk87Yy2+JXY/vMwIO4oQxnFGFTqBD
 8B1AI8/oyiJNYoTHDeJku+6yfN92lLXJ8Gcxqfo4pNXL3vNlTsqsu68C4
 /HJ7T6iemTWfGAavtzvI3GG93250R1h0m8+WbwedVcUGeZbYUyPegyGLF Q==;
X-CSE-ConnectionGUID: YbvMymZTTse6CG+bAxNMUQ==
X-CSE-MsgGUID: 2Ri9CH4+RMGwqzkpvAtigQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="66156061"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="66156061"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 06:52:10 -0700
X-CSE-ConnectionGUID: P9+HhKq2SGmdK4lDceN18g==
X-CSE-MsgGUID: vYMqg5ooRk+nvA8MNX8Wxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="180746823"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 06:52:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>, Lucas De Marchi
 <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
In-Reply-To: <0f9e52f66a126ca0d446015539018e29219d4b13@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756931441.git.jani.nikula@intel.com>
 <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
 <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
 <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
 <aL8D_dRE5nslOAUi@intel.com>
 <86c6dd41fba3bc78b82a0f0343c7be770126a4e4@intel.com>
 <aMm4UfqnlZ4RfMDm@intel.com>
 <0f9e52f66a126ca0d446015539018e29219d4b13@intel.com>
Date: Mon, 13 Oct 2025 16:52:04 +0300
Message-ID: <179b10ce04e0e0d5f08fd8e2eaeae4cf689ba2ea@intel.com>
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

On Thu, 18 Sep 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 16 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> For now I'd be happy if someone just nukes that bogus page alignemnt
>> of the stride on xe, allowing i915 and xe to use the same code here.
>
> I hope just [1] is enough for this.
>
> [1] https://lore.kernel.org/r/7f4972104de8b179d5724ae83892ee294d3f3fd3.17=
58184771.git.jani.nikula@intel.com

So that regressed [2]. (Bisected internally, unfortunately not reported
on the gitlab issue.) Any ideas, before I go on and resurrect this patch
adding different strides for i915 and xe?

BR,
Jani.


[2] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220


--=20
Jani Nikula, Intel
