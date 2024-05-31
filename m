Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE208D6240
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:58:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A9E10E1A1;
	Fri, 31 May 2024 12:58:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3dmx1K4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0871E10E1A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717160330; x=1748696330;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4LGuUjxX+2otqaIVQU3e7TJpBxqWoGGEvdjx5+vIVtY=;
 b=Y3dmx1K4sroFfuszkV38MjLRB5Urj1ajKJWjaTH0yq4aX+QOaGutPY8Q
 OhGoeYmGb2oekahswC72jUBLZiBhY8bALxFauK6JtopCTPFSe14tXtt98
 vaxUUdpoyvrgz2gLId4g/W2DOT4Sm23wut3QTKxsoCZiVTIVdFdIXiGKl
 8MAEDJwW8zdOkmf5pfEYSuoiyNBUCvhw8ghtOLSNjC1i/iDG40B0zQziU
 Q2MiDy6iieNUn6D5IU647J+w/bRYOfziBjVOqHgVjFibHszHsJNFhAuKk
 AXlOa2vkTa3KTHZsuOSSjVvl6VotSI4FiyB8gVN0lvDnVAhah+lj+Zvgx Q==;
X-CSE-ConnectionGUID: 2ukhcFGpSHye2/teZSUFSQ==
X-CSE-MsgGUID: 32NtcltdSlmGh8uapypI4w==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="36231476"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36231476"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:58:50 -0700
X-CSE-ConnectionGUID: VsvCXaYFS6aPt9WsLNFDXw==
X-CSE-MsgGUID: XLqy4ETYTiOdSm35h+7BYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36624154"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:58:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Switch PIPE_CRC_RES_*_IVB to _MMIO_PIPE()
In-Reply-To: <20240531115342.2763-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
 <20240531115342.2763-3-ville.syrjala@linux.intel.com>
Date: Fri, 31 May 2024 15:58:44 +0300
Message-ID: <871q5if88r.fsf@intel.com>
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

On Fri, 31 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> PIPE_CRC_RES_*_IVB are proper pipe registers, and only valid
> for IVB+ where pipe register blocks are equally spaced, so we
> can switch from _MMIO_TRANS2() to the simpler _MMIO_PIPE() for
> these.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

--=20
Jani Nikula, Intel
