Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5B5B8393E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D50E510E687;
	Thu, 18 Sep 2025 08:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W9i1uoSQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5655210E685;
 Thu, 18 Sep 2025 08:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758185009; x=1789721009;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DLGn7zKV2ykcYq/lTCerqdvTy9D+6SjLXtmloyna0fQ=;
 b=W9i1uoSQhx0V8VVjr7/q3qEPGdjJeBdgh9k0wOuWUJbVDgpxqRSvnP4C
 S+4C+ttjBqQ5D9HQt19GWzVoXsK0HU68v+KMGoOs1beidlIKPhmxtj5wd
 yLv5rAFPdRCa3KxJDFlvNBaSor5c45jucP04dXtlyOr8S5DdCTbB5BzlY
 u1mX02fdcQ2oHZijh+lirH+dfDZEMJf9A7SGSAGu+F0GzkzhHfVHA33f4
 yKNNWQTcPEKM28Lf0SvtI/QwtY0RIjTzRJp3/rh2DM7Y2FhmGTN1B9L7v
 I2MUvVlcP711+/TXu8hf95hd7WmFoz5HqO4NafK7ijS5VXmwpdW8UqSoL g==;
X-CSE-ConnectionGUID: fjOkUCI7TK2vR65J9YoRdg==
X-CSE-MsgGUID: 8DrNIjLEQZOwVKO0D0s8gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64311313"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64311313"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:43:29 -0700
X-CSE-ConnectionGUID: 8n7vRBE+TsOuZVyD75Mzfg==
X-CSE-MsgGUID: gL2XvpVkToWbC2FvPQWYDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="206277691"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:43:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>, Lucas De Marchi
 <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
In-Reply-To: <aMm4UfqnlZ4RfMDm@intel.com>
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
Date: Thu, 18 Sep 2025 11:43:21 +0300
Message-ID: <0f9e52f66a126ca0d446015539018e29219d4b13@intel.com>
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

On Tue, 16 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> For now I'd be happy if someone just nukes that bogus page alignemnt
> of the stride on xe, allowing i915 and xe to use the same code here.

I hope just [1] is enough for this.

[1] https://lore.kernel.org/r/7f4972104de8b179d5724ae83892ee294d3f3fd3.1758=
184771.git.jani.nikula@intel.com


--=20
Jani Nikula, Intel
