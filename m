Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 751BC97CA4A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E21510E6F8;
	Thu, 19 Sep 2024 13:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hInf4sIP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED35710E6FA;
 Thu, 19 Sep 2024 13:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726753338; x=1758289338;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=upNWNFxSRjCQ7qJaagN8gfxNatvwoAXNkNdO9zEBXMs=;
 b=hInf4sIP/cwd/pPf0Sb93B78sYb44YRnSoPCyWXajxoitHN+lYCjEIzz
 LKYTJkBnZOJWDDx1uV+SLnp7aif7IxT0XoOOGJMgl/usW56JkpZuREDrd
 w9wPuORq4XnKCEfjz8Abk43m1HJzFu6H0mjXkKaBZVNs6L3OEFKERa7Pm
 oQv+p9IeUKfQYXGQq/6xltLgM/8/yBSQgLPnwpd0oBrysY/u48H/9XgHh
 8jkrbi/drSeJs9Cdf8ucvHGM55RYF3o7M38yMIDVNDHsuYf63q9C5dmnq
 YSrC0QrRkUNiC5oAbIagiiBE86bXdvE9cQnCN7V1EkBoSQ/yEz5VAsJ0z Q==;
X-CSE-ConnectionGUID: WVSqtbBNS62mVEGgy7WWMg==
X-CSE-MsgGUID: YHYXnVeyTgCt82j2l69gAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="51125636"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="51125636"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:42:18 -0700
X-CSE-ConnectionGUID: RCR2xFG3TsGCLCBA9flu6w==
X-CSE-MsgGUID: tkrEclCzTCi49zgmlRzY7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="70184065"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:42:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com
Subject: Re: [PATCH 00/22] drm/i915 & drm/xe: kill off
 -Ddrm_i915_gem_object=xe_bo
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726589119.git.jani.nikula@intel.com>
Date: Thu, 19 Sep 2024 16:42:12 +0300
Message-ID: <87v7yr92vf.fsf@intel.com>
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

On Tue, 17 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> The xe Makefile defines -Ddrm_i915_gem_object=xe_bo to build i915
> display for xe. This lengthy series removes that hack.

Thanks for the reviews and acks, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
