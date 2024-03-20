Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CABD8814E3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A942710FD91;
	Wed, 20 Mar 2024 15:49:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMMpu8iq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3235B10FD91
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949759; x=1742485759;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=eKKDEcsauJWkKQ/haorM56DLbdA79mGD/bSeyHjnGoY=;
 b=gMMpu8iqulw2vjHUD2qT22v90gcTmHVkpC0LGs5Zd5fg0rFLsvKyzGVv
 LTf1MQ+/tUMi8vRsY+Se2JKg0GFD/9qsxX6VtDrITpowOlJxgqhFFhu/4
 x3g7itPFJixOYUPlI9XpGdMJF7NmupF+LCOyKfs/yS8qMGE3Iq1zqY01U
 1j5iHJj/yNm72ZJYVhDD3NVJrC6cA2d5+Xlfx5lNULjzGNFKXT4mwSc4d
 fDJ7yr3djet7Cct2zDVGkgPPpJCf48w/rOxnOI/XHtnlyM604OMP8eTn8
 GXX8ciyJl0HDwC4v9N4dOPyxELtzlG1GjuNiv980AqNncTpo07FBHW3O2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5820238"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5820238"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:49:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14587585"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:49:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, imre.deak@intel.com
Subject: Re: [RFC 0/7] drm/i915: pass encoder around more for port/phy checks
In-Reply-To: <Zfr94E30khxsVf3G@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1710253533.git.jani.nikula@intel.com>
 <Zfr94E30khxsVf3G@intel.com>
Date: Wed, 20 Mar 2024 17:49:12 +0200
Message-ID: <87v85gnbt3.fsf@intel.com>
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

On Wed, 20 Mar 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> I have basically that same patch sitting in some branch.

I would expect no less. ;D

> With commit messages polished the series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, fixed up the commit messages and posted v1 for CI.


BR,
Jani.


--=20
Jani Nikula, Intel
