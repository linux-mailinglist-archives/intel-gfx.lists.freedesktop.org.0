Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE90B7C5501
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 15:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9D210E7F7;
	Wed, 11 Oct 2023 13:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BB910E7F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 13:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697029851; x=1728565851;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=q0LkSvaVYpnF9qYxdl1PDk4qrPO6Ii9CJ4tFwB8vYrw=;
 b=iN3IEOpC0nHjHIJj5rtuEHGUxGz+H7kDgkGhT+LtHaxeKEXIDjhEyXQG
 y9HJBDq9awY+4UC7XJEkPyrg35KVGyjVx+YI44gNsQDbTgxxfj6vgrL8n
 hQ5UmgEBpd6JLl2wVTmSGIHt2Z/9XvRolu1i/zqGeJQ0LWk0a6g06PNUH
 g8z3qvl/JQcZJGNxzjJxHqZpZFVujwpU7M9FFVPDiuGE2kRlR1pFPc8M0
 d0aPa16b1reJ7KyWiS8jgpUVjn0LWr/buehVSi7kSJMvLIF2i4B9SCZMX
 dRO1czA6fDyeamzgl3SQf/Q6zRvi5Mqwu7fCUEJmvPJH/lWunsRYgYsBB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="375000329"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="375000329"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 06:10:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="1085221314"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="1085221314"
Received: from bjvanakk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.111])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 06:10:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231009095537.653619-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231009095537.653619-1-suraj.kandpal@intel.com>
Date: Wed, 11 Oct 2023 16:10:47 +0300
Message-ID: <8734yh484o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 0/2] Refactor i915 HDCP for XE
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

On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> This patch series contains some refactors for i915 side of things
> which will help with a cleaner code and maximum reuse of code
> for XE going forward.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> Suraj Kandpal (2):
>   drm/i915/hdcp: Move checks for gsc health status
>   drm/i915/hdcp: Move common message filling function to its own file
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |   8 +-
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 617 +-----------------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   1 +
>  .../drm/i915/display/intel_hdcp_gsc_message.c | 592 +++++++++++++++++
>  .../drm/i915/display/intel_hdcp_gsc_message.h |  72 ++
>  6 files changed, 692 insertions(+), 599 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h

-- 
Jani Nikula, Intel
