Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE18633B05
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 12:17:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0773A10E3C9;
	Tue, 22 Nov 2022 11:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64EC110E3C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 11:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669115829; x=1700651829;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8c6PDCPUobujZfgoNaqvIi9s0FQLuKhN3o70UuHLHyw=;
 b=dAk/b2DguDLu4A7qMOywvQ+Q0/twhMEJRC4NHhFl31JlDsBLyS29gUAv
 bxkq7k149s6fq3qGm27ypPKfOK0JAtzjAl3LZNWDC6gMo5jrjpw24XltB
 4q90l4mgKjx83jaCkyFeHYGeiL5kmYlncVDMt1gkqpEJJ2PN0BbObRGea
 WZeMwKm2AGYwAucqXjykMe1WXCaYQQEsPFsqC5439aiv88K9A7Fhj8ZlS
 ra5tKI1LyphBLOqQa6b2eFS1EvK46xlUvF2gyFwqjSKX9AnRpZXB7rODl
 iZgTRYt00GPK6kcLkhQsWc+Mb6XeJUpM1FC2Lcjg6lrldLh4+0Mm3BLGx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="301340054"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="301340054"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 03:17:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641382951"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641382951"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 03:17:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
In-Reply-To: <bb14f688b7c8b5738440fc11490cffba0adf1016.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-3-alan.previn.teres.alexis@intel.com>
 <Y3Zbdo5M/ghLb+7n@intel.com>
 <bb14f688b7c8b5738440fc11490cffba0adf1016.camel@intel.com>
Date: Tue, 22 Nov 2022 13:17:04 +0200
Message-ID: <877cznz1an.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 17 Nov 2022, "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com> wrote:
> Respectfully and humbly, i would like to request where is the coding
> guideline for function naming when u have 2nd level subsystem IPs
> owning control over global hw features so that we dont need to have
> this back and forth of conflicting direction from different reviewers
> especially so long after initial reviews have started. (internally
> reworking future MTL PXP series end up getting impacted here).

Do you seriously think we could pre-emptively codify everything in a
coding guideline?

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
