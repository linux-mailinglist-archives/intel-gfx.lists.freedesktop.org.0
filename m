Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DF8A88A2F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 19:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C6210E14C;
	Mon, 14 Apr 2025 17:46:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NJYNzUxx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C04D510E14C
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Apr 2025 17:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744652761; x=1776188761;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jPMIYtW4WWO8L2bs8zPrCfD7CZiCE5bqVrDj8P160tQ=;
 b=NJYNzUxxWEPjkjvCxZFWIYQ5J8WEBeS62GeIZ0KynE1WWEmjXRm4xt5b
 aI1hFTiMkvnV1wAV2pQvNoMf10W5aRv/Xjvdux7pp4lD8/uy6KtX9sJf0
 1uMTj1TetpFzsQgp8YEgH+/RulMeFefcUSyULwQhvF489xOPh7H4W0hAn
 2fQ17zJyiiT916VqG2FAruM92IOqwFjdCziWW0/4wfVZGYtyXxLQSagaL
 vFT9IgSYMGLGO/owcZEIjAzYVaH66ngoR0Kx+zIjWjEQEFa9EDvcanCJH
 6ERFQXY96qPU9rQwijToNd9+ZJXtOrOgP+9poPW1mcdrqCMrMi4gAMYHO Q==;
X-CSE-ConnectionGUID: 62fKKHqqTjSB5sAnVVRmFQ==
X-CSE-MsgGUID: 3aMr9gIQTeKhtPerlfmr2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="49940260"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="49940260"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 10:46:00 -0700
X-CSE-ConnectionGUID: cbRfWTIYSP+OH8ImnEq4mQ==
X-CSE-MsgGUID: nXRmWJrMQzCEKRV5xpCozQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="167049995"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 10:45:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dpio: have chv_data_lane_soft_reset() get/put
 dpio internally
In-Reply-To: <Z_kcF7u9DO7_FIiP@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250411102715.613082-1-jani.nikula@intel.com>
 <Z_kcF7u9DO7_FIiP@intel.com>
Date: Mon, 14 Apr 2025 20:45:55 +0300
Message-ID: <875xj6tz58.fsf@intel.com>
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

On Fri, 11 Apr 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Apr 11, 2025 at 01:27:15PM +0300, Jani Nikula wrote:
>> Have chv_data_lane_soft_reset() get/put dpio internally, and use a
>> locked version of it within intel_dpio_phy.c. This drops the dependency
>> on vlv sideband from g4x_dp.c and g4x_hdmi.c, and makes that a DPIO PHY
>> implementation detail.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

--=20
Jani Nikula, Intel
