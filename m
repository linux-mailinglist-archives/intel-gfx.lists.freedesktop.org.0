Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 176D5D3A481
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 11:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC9410E3D9;
	Mon, 19 Jan 2026 10:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cQlsTk2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72EC210E2A4;
 Mon, 19 Jan 2026 10:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768817692; x=1800353692;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kymq5Ey/PhDfysnp4Tm0jpPDknI1eVUm/TdcFK/xIJ8=;
 b=cQlsTk2GB99vrxKHXD2IBLFq15/iIY+7vDEVRE6cHgYTzp4p2IN3XG8D
 dctWtkgnrneqmZadCQeME+nw5IjwT5sgN7v5Q/DUvAslzBwVoF7zkveNf
 SeaiV2Ve7VHlFCCj/AzMH5aKD7PazyqOOPJ1wFSzVNRC8VU0Drv6xHnYl
 LYKVINcOaBj9p6HxlKA6nmuTAKKkP3Roy5gJvkelhK4ZNSw3XRto9gKk7
 KpoOKJRXuwVk7Zd/8Ew0Vt1MI3/R2a4TWvSZkgHHNIMhc2wrvAdBdQnA1
 imWm/hLWgrGK+N80wNbkhr1WeB0DCSq+Ahofuz7v9GynnxucpbYBRNp9D g==;
X-CSE-ConnectionGUID: f74crxe6Qv6nO8ROQeO1OQ==
X-CSE-MsgGUID: gBUT0erYRNOtfiJVCIEIbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69759710"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69759710"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:14:48 -0800
X-CSE-ConnectionGUID: JJfnHdm0SiGCZ4PzesNxeA==
X-CSE-MsgGUID: 591PEeqxTWSVHpI4bsDpvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="236512064"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:14:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [v2] drm/{i915, xe}/pcode: move display pcode calls to parent
 interface
In-Reply-To: <f7329c3b-77f2-1944-16de-f3a75aa1a2aa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260115113337.4079184-1-jani.nikula@intel.com>
 <f7329c3b-77f2-1944-16de-f3a75aa1a2aa@intel.com>
Date: Mon, 19 Jan 2026 12:14:43 +0200
Message-ID: <037265c310c9f3901e2e47d00e2e225c76370f94@intel.com>
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

On Fri, 16 Jan 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> While moving the code, should we rename val & val1 into val1 & val2 (or
> val2 & val1)? I think even renaming val -> val0 would suffice.

The variable naming matches the register macro naming. Historically,
there was only GEN6_PCODE_DATA, and GEN6_PCODE_DATA1 was added
afterwards. Hence val and val1.

Nowadays the spec has DATA0 and DATA1, so renaming both the register
macro and the variable to DATA0 and val0, respectively, would be fine.

Just not in this patch. Generally, only do one thing at a time.

> Or (if the comment is valid) should I send it as a separate patch?

The latter.

> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks,
Jani.


--=20
Jani Nikula, Intel
