Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8050B9001A4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 13:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F18F10EBDF;
	Fri,  7 Jun 2024 11:09:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlbRGFrc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B5510E182;
 Fri,  7 Jun 2024 11:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717758585; x=1749294585;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xVmjYKk8AOnM8KRKiJV3kt5WGZOWs/UJZv89a9fkK0U=;
 b=MlbRGFrcZUR5OFe8kFmacxu3E6fgGqk9bPY+8wF4t3buiWj5GQ9B1Epj
 kUnRQTHgut9Y6vgV5ULonQghwGKUFyTDJoZDWX0YJwkiUgUomW+5Gspz+
 bUB7w4Emk3dlf/iPeSPb49hYxOT9dp7Uw7BTFo3awuhx8+pW7ofMkB+kO
 oHP3y8uDMKIzuea3IS5AQSgGbjN7lOxXxCH6W5CYx7fkawHpXM3agAcQ/
 uaZ8G89zu1Bjey4vJdh+pPNCYHDWaIbupkcvEQcW9UVDDCsNNi4xu8dRY
 301rjCnSagkYPyQnEGAl8iKB19rGggrkJ6oJMpKzLhzIVW7egeS98tWkk A==;
X-CSE-ConnectionGUID: LJPuUwfOQCy3kSFleXpOtA==
X-CSE-MsgGUID: fklBXLJtSXeMHz5JKyrFsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18327764"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="18327764"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 04:08:52 -0700
X-CSE-ConnectionGUID: RRAHIOXUQbuTTjXOrc7i8Q==
X-CSE-MsgGUID: UWCa8cc5RA22kBSMJ4el/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="38287326"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Jun 2024 04:08:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Jun 2024 14:08:45 +0300
Date: Fri, 7 Jun 2024 14:08:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/2] drm/i915 & drm/xe: drop ACPI_BUTTON
Message-ID: <ZmLqPeOYydumQly1@intel.com>
References: <cover.1717747542.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1717747542.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Jun 07, 2024 at 11:07:05AM +0300, Jani Nikula wrote:
> Both in a series because they're related, but they should be merged via
> their own driver trees.
> 
> Jani Nikula (2):
>   drm/i915: do not select ACPI_BUTTON
>   drm/xe: do not select ACPI_BUTTON

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Kconfig | 1 -
>  drivers/gpu/drm/xe/Kconfig   | 1 -
>  2 files changed, 2 deletions(-)
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
