Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF259F551A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 18:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6634D10E0E8;
	Tue, 17 Dec 2024 17:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NovZf7tC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF3610E0E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 17:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458070; x=1765994070;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=buJHB6rKOpNWtqKNBYzI3eueoy36bG3dUXsPtefDwa8=;
 b=NovZf7tC1gQfHECTXsgL4U2GpBr+cxdfGb2rDUmIFuJiYHZtreQ3/OW6
 ppYpc+7YSQ9zXMiDLsyBB3bIBjN8IcMFslEP75PPPKWhFQhhz/Cf10WaZ
 HVbdKaFRjgRc3xN5VlcCTergZLoVLv1Bm1PpNBUD0vleXJS7XoeDosiVT
 ncN5rYtACdzmhTVh+N/4dxXJZOfGZGV+oXvt3hmy5xRAmeM4sVh+JidAC
 obYbrYpZPfBY00DlEwyGfOb7zNUXKusmGqSCTW2RwEGPNTtdYiYYYr4fH
 tSNZO2G8nb45tzUa4BZJ41Jc94AM7KqVycuF/HYnc+5ohGt4imPXLRuzE Q==;
X-CSE-ConnectionGUID: XNN0CwFPSKifZJ7nxeHZQQ==
X-CSE-MsgGUID: 1cA/WNeGSP2o1jwFFW13rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="52420975"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="52420975"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 09:54:29 -0800
X-CSE-ConnectionGUID: yvZRlJVORp2W3i/3pXnwRQ==
X-CSE-MsgGUID: 8AiRZwCaQ4OjNPrfK4MI5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102196547"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.58])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 09:54:27 -0800
Date: Tue, 17 Dec 2024 18:54:23 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: matthew.d.roper@intel.com, tursulin@ursulin.net,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 nirmoy.das@intel.com
Subject: Re: [PATCH v3] drm/i915/gt: Use ENGINE_TRACE for tracing.
Message-ID: <Z2G6z03vDz3tuFVq@ashyti-mobl2.lan>
References: <20241217100058.2819053-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217100058.2819053-1-nitin.r.gote@intel.com>
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

Hi Nitin,

On Tue, Dec 17, 2024 at 03:30:58PM +0530, Nitin Gote wrote:
> Instead of drm_err(), prefer gt_err() and ENGINE_TRACE()
> for GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
> over drm_err() drm_device based logging for engine debug log.
> 
> v2: Bit more specific in commit description (Andi)
> 
> v3: Use gt_err() along with ENGINE_TRACE() in place of drm_err() (Andi)
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
