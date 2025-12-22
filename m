Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC9CCD629A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 14:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D41510E51C;
	Mon, 22 Dec 2025 13:32:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aows0r9n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1EBD10E087;
 Mon, 22 Dec 2025 13:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766410342; x=1797946342;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=z0PL3yw7npBzIphRkse52mnRYN2jRCvYezGp5O+7HhI=;
 b=aows0r9n0LvaqkMgW5bMiAj1+x3cU6DLxJcjU5q6FXS47syuzgeWaTS0
 lIDpEioYLG5wAUsvVzG9Nd6jjrJqGfxLH3HVCQTBN+w8OeQpWblg5Cy82
 MCdObjdap4kdHBbPWJLn0R4hw8FWghpES+5c+YDWe/sfYsg5j905PHvk9
 LCt9hYn09uhasc4SIbsheLEsIZOWd3hSegim1T6tobE41MIXfmpgZT75y
 9czba5GEvtOz9ChnQBNLuUtUoGJ9VpmYjp48oXARcfw7qWBNpwASL7Fwq
 G7JqHbgmviLdL/MDPdUnOZV4sTBhpeYswyZwvHGFrJlhZaH83ohOvhjgd A==;
X-CSE-ConnectionGUID: 6vjiRlRNQe6ZGZb3/otvTA==
X-CSE-MsgGUID: CbT1iVwqSremR2UmK43zZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="85845616"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="85845616"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:32:22 -0800
X-CSE-ConnectionGUID: RvAneLjBRACM+D6gh1bZxg==
X-CSE-MsgGUID: nfdq1bBvSXm6dwv216kg6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="204048638"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:32:12 -0800
Date: Mon, 22 Dec 2025 14:32:10 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915/display: use to_intel_uncore() to avoid
 i915_drv.h
In-Reply-To: <44a5d526a097ab9276e60162263fa8cd23325ce7.1766406794.git.jani.nikula@intel.com>
Message-ID: <1302bc22-a4bb-cb71-70a1-d20e8385c517@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
 <44a5d526a097ab9276e60162263fa8cd23325ce7.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1683723297-1766410333=:1478141"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1683723297-1766410333=:1478141
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 22 Dec 2025, Jani Nikula wrote:
> A number of places that include i915_drv.h only need it to get from
> display to i915 to uncore. We have to_intel_uncore() for that, use it to
> avoid the i915_drv.h include.
>
> v2: Rebase
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał
--8323329-1683723297-1766410333=:1478141--
