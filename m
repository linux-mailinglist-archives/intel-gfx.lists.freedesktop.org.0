Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE53894DE1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 10:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFC210FB6C;
	Tue,  2 Apr 2024 08:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUWIK8zr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD2D710E6D5;
 Tue,  2 Apr 2024 08:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712047659; x=1743583659;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Tyre6rYcvP3Eq9HFC41TrPn55TD3AouDxJQWhBEpHDA=;
 b=AUWIK8zr6WYaJmbfw1yljWiWRmxKQ+GBs/YfVyQI6RV44tfxxHQRcftF
 rcD1r6p0ILYkyE/xGi6pDuHowrYNa6lBxXCnHKRG2FQ06TpVAgqB0DRkj
 HNEgulr37a5Vr6hJYvt2DutsEnwxs3J1XtXT3FdU1iBNkUT0kgEy9V8gc
 AzoTpZCza8lu3On3qqS1Ebj2Dck3d02xoH8u34i8YGuJh0mkYTL4/a3WF
 OByoizj0EbEtjkgXFfG9nsqmotEheT3zs/egGbMoasGzuPbZlx4/zVW5t
 9XCIVh/RfhlTajtk/8FWkwOZZFlmOLunUfPj1IEL3gtW7e3Y6VpT4GX25 g==;
X-CSE-ConnectionGUID: 98+13VzYRlKYYlxpgC6CFA==
X-CSE-MsgGUID: Wn7ZqyizSUCAh/1lAwpbjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="18653542"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18653542"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 01:47:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="49223235"
Received: from zkatz1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.111])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 01:47:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Gustavo
 Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH] drm/i915/display: move dmc_firmware_path to display params
In-Reply-To: <3bvm45xgjhlwuwc2hhenysknzm2reaj5yn6anvyzmerpi44vgb@jjnbrf2ejnk5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161856.3517856-1-jani.nikula@intel.com>
 <87y1ablfo6.fsf@intel.com>
 <64loxwpkjgu2nf4up554hfuqd6oi2quguozom2p2gowem26rbj@rszc3ubdda6u>
 <87v85elkic.fsf@intel.com>
 <b7o4x73ht2wv6t52h44dofzu36oic3bfazfilt2o4oxuj3zxzg@rzwm4a7cro7p>
 <3bvm45xgjhlwuwc2hhenysknzm2reaj5yn6anvyzmerpi44vgb@jjnbrf2ejnk5>
Date: Tue, 02 Apr 2024 11:47:08 +0300
Message-ID: <8734s4f8xf.fsf@intel.com>
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

On Fri, 22 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> oh, now I understand. You mean that xe module doesn't have the param
> because it's only declared in drivers/gpu/drm/i915/i915_params.c.
>
> Could you extend the commit message with something like this?
>
> 	The dmc_firmware_path parameter is clearly a display parameter. Move it
> 	there so it's available to both i915 and xe modules ....
>
> thanks
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks for the review, pushed to drm-intel-next with an amended commit
message.

BR,
Jani.


-- 
Jani Nikula, Intel
