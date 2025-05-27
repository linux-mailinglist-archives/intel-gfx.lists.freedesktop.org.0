Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC153AC4FF0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 15:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FDEA10E4DA;
	Tue, 27 May 2025 13:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GaceLEEp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A871810E4DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 13:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748353006; x=1779889006;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=wnDZNP/VqISqFUhh4aYXJg4mVSrtJqKmnlOOSXNb5aM=;
 b=GaceLEEpqjDqfoPNZZCRLoruo4fdDZXYQQ/puv5+b7ZNLk+CY3731DE5
 fuZmavuQE9lZQxtZNug3jFxtsrAnuRhZFFnwifPGwj0OlkWPXaUAbMkFP
 o3BmFOI1R+Da+zqqsCO4uG/6AhrxqBg5aFaaYW7G8TKDY1UltN0XJQB7K
 VXnWrH2vv7cuXjAaMNDE9ceq/OECyyzEkNh9L34cECYLUzKStzsurvY9p
 d2dj8O2u80304UcJNmRuJ4vWOt8WL+/b0nrSVOvrGj0b9MsKFqCzfiy3K
 4ETkTI2LitvMah6c73XFBo1yO1wELv+wbAuUtizGTk5taRJ0Dq81fsZXs A==;
X-CSE-ConnectionGUID: Rh9ZaY//T0qVAihjyCxFNg==
X-CSE-MsgGUID: zC2bop3GQhe8+Wg99uFVCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="61003231"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="61003231"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 06:36:45 -0700
X-CSE-ConnectionGUID: iguYMnMcQk62wUY+qxStqw==
X-CSE-MsgGUID: umkBNxMtQCqKq28iOgth1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="148084591"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 06:36:43 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
References: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
Subject: Re: [PATCH] Revert "drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1"
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: stable@vger.kernel.org,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Thomas =?utf-8?q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 May 2025 16:36:39 +0300
Message-ID: <174835299995.49751.5169215904306434016@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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

Applied this as there were no further objections now that the userspace
fix is merged.

Thanks for the reviews.

Regards, Joonas
