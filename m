Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6033CD62BE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 14:36:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F09B410E681;
	Mon, 22 Dec 2025 13:36:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQINHPr0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD0E10E087;
 Mon, 22 Dec 2025 13:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766410575; x=1797946575;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=M4Pch03O6b/tExE+cQKXs3VzS4SY1jl1+G8D4jRAtWs=;
 b=JQINHPr0V1gWbAlaqqZ0tTL4TvZU7s9wMLLY/49232EbsI4KZYZ/WZu5
 IyPVlWTsPWbok8WcBlydwffYrYJz31kqC0kbjfmX7v5iIqVihOi+i0DUp
 uI9OrLPWBMSesOZjcW2TmUsdiQfWA5SyB9UDtmsksEnKVbUsc/athulAY
 nRaTOSpcAP0xaOluqyyYQuuSaAQ6szVP+MV7DoRsBCGccwFLheWiZSJmj
 NU30WDtbaf3silUDqMN0lWKlcdlZhgjHL3zMrZE5aNHOjgc9S05OYI8yH
 C15w1PS9lqexYIh0PXSei7ZzJI6xjnwp4DQ9Z/o1+fgxLIJHq1sRv0T+S g==;
X-CSE-ConnectionGUID: TdO/nEVQRQ6tCtXSqibeLw==
X-CSE-MsgGUID: dkz/h78wRnGkaBavSced8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68246973"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="68246973"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:36:15 -0800
X-CSE-ConnectionGUID: R0kGtWOyRoKcDBGpq92nsQ==
X-CSE-MsgGUID: sfbTdFanQmy++We/fHjPSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="230183709"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:36:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/display: drop i915_utils.h
In-Reply-To: <939bb2d2-5f7d-e1af-f47f-f56c71204255@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251219104036.855258-1-jani.nikula@intel.com>
 <939bb2d2-5f7d-e1af-f47f-f56c71204255@intel.com>
Date: Mon, 22 Dec 2025 15:36:10 +0200
Message-ID: <4444923b4fd391e321a45d085d93795f8e818674@intel.com>
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

On Mon, 22 Dec 2025, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> On Fri, 19 Dec 2025, Jani Nikula wrote:
>> With the i915 switch to generic fault injection, display no longer needs
>> the compat i915_utils.h. Remove it, along with a few includes.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

--=20
Jani Nikula, Intel
