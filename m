Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A836923B59
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 12:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4296610E5A4;
	Tue,  2 Jul 2024 10:26:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qye1EXve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E1710E5A4;
 Tue,  2 Jul 2024 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719916013; x=1751452013;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5bnmTm9hk1PqaY6p+vhjYWr3fJiNhQHdASWi2hlVIWQ=;
 b=Qye1EXve3/wl+maEEumNSVL0ARGDWbk3TZKFZA2Rz3RdDEkZisCPVR0Q
 GhGtVq6WGsFgcuedC7hhCNchUMk5AN43qE5rRhvcD6FLfL6GynM0nLcr9
 yeLiPW7wq678B8Tiu8xzD4OAiuiqJ0LSd7F6kcHt8bSjSpoAvfdz07J9Q
 0bRT9DpBjOXcRc5GO16gksHquWxgvLe6exU6eYHA3NXMyQLV8OUoie8Ym
 20IsGIKhb9PCAYAazEh1iBda6R4lRpIgWUb3HZsO/YZgetSGrURMYrs9a
 N5oVNdFAr6PtbMxk+99ygHFlqaSfPDry2KmyRkC9F1MI5//3l+8P+a7lk g==;
X-CSE-ConnectionGUID: RquYvpLUS3GvMhaiqdtPyw==
X-CSE-MsgGUID: 8g3T/MKCRVqxlsXtCxJ2CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28476881"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="28476881"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 03:26:53 -0700
X-CSE-ConnectionGUID: Hb+1UAvwSqyRH68gsEr3sg==
X-CSE-MsgGUID: xqL+kXIqRIODCWfzuJlGZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45747261"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 03:26:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915: disable fbc due to Wa_16023588340
In-Reply-To: <e6d5863b-92fa-468f-bb39-2549eadbb13a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240701132754.101832-3-matthew.auld@intel.com>
 <20240701132754.101832-4-matthew.auld@intel.com>
 <87ikxo9pi1.fsf@intel.com>
 <fe0f61ad-b006-47b4-aee4-2b9408379e7f@intel.com>
 <87a5j09mb6.fsf@intel.com>
 <e6d5863b-92fa-468f-bb39-2549eadbb13a@intel.com>
Date: Tue, 02 Jul 2024 13:26:46 +0300
Message-ID: <871q4c9jix.fsf@intel.com>
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

On Tue, 02 Jul 2024, Matthew Auld <matthew.auld@intel.com> wrote:
> So no major objections with going back to v1 from your side? In 
> addition, merging both patches via drm-xe-next would be acceptable?

As discussed, and FYI to others, no objections on v1 from me, and ack on
merging via drm-xe-next.

BR,
Jani.


-- 
Jani Nikula, Intel
