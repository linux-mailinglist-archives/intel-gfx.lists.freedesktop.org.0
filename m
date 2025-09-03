Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6B2B41A1D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 11:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91D210E678;
	Wed,  3 Sep 2025 09:32:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIXrfIEs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA8E10E65A;
 Wed,  3 Sep 2025 09:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756891971; x=1788427971;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=RctsspPhKDYSA0cSjid0qS/oyvjpUhkDVx2pwjs0nrs=;
 b=IIXrfIEs9yIZ7zhACFjqW5Jlec45un1zkmu5TgS/UtPoFoP9LkrHxAZG
 GTcL+mqLhRdhM9pWtX7GBr/LppD+rqu7qyyCP1VT3YWg8PbYdW9oJvrh+
 Fb8rDdokbsGwxRikihIpA6tskm7oRiJ93GjUOw1NImRF7ivaOARf33bV3
 IA0ri+onEZ3sDNm9t3No0KEyKzLrXh/yRHWp4kJ0+4Cd3ZwmMJnZ2p/ca
 /wOKkB8abcBNP1UoTJUHrYFt2IMgUCnqHm+VIYWEHNMljdy3kb1wu1SPa
 05rHKGpOVQo5qypGzJ5+misrLusvi5d6fLhnoVfn9huZthpdm1xBlySx2 A==;
X-CSE-ConnectionGUID: R13C7TMMSHuhW9HAvgA7OA==
X-CSE-MsgGUID: 5yGhlgz1SC6RlUL5fLr+Qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="84623263"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="84623263"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:32:51 -0700
X-CSE-ConnectionGUID: HhusXf80Sh6KhN1Cd35w5w==
X-CSE-MsgGUID: jMcggHcBQ4Se5jwmcawc/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="208751389"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:32:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp: convert open-coded timeout to
 poll_timeout_us()
In-Reply-To: <6506684cf2e6906f144233e8a9b92e151fc7fecd.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250829113311.1930618-1-jani.nikula@intel.com>
 <6506684cf2e6906f144233e8a9b92e151fc7fecd.camel@intel.com>
Date: Wed, 03 Sep 2025 12:32:46 +0300
Message-ID: <cad85db36255221a00b9c5fa092757969c0af01a@intel.com>
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

On Wed, 03 Sep 2025, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Fri, 2025-08-29 at 14:33 +0300, Jani Nikula wrote:
>> Use poll_timeout_us() instead of open-coding the timeout loop.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks, pushed to din.

BR,
Jani.


--=20
Jani Nikula, Intel
