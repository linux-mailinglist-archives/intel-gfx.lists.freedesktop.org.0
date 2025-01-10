Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3B0A08ABC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 09:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 349B410F019;
	Fri, 10 Jan 2025 08:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DOzTOmkN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E61610E03D;
 Fri, 10 Jan 2025 08:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736499278; x=1768035278;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D6k8/ms12mC9HjisgXm6BpEhVItNrMSpJAOgRE/0c10=;
 b=DOzTOmkNoNENbaqxHIv8quqO9n2t0u8upD22IcWepHjuooKTKQTjNFje
 u8C4MFcbP4ZT2E2m48ASiah16GwgVWdTlVen/0KTg+ntgLJLfyoz9nOEW
 /gNTQFEdkeHYb9T3FGk5VUj1pAH6OFDIcwitumwgUWVkyEMGQFyRzIeNY
 2ynMdNf/rNYdaKj0rBhXj2EJ9+xGLXgSJtRY7OOVMEDy66r7i5c2HHsNU
 YVTt/pJNjZ9V9VoBjRDOJtyUlqjEkgqQzTN6P6n00PbSH9HSfFs7pI+dN
 6ehX5Z/G4wm2cFFmELES4I0sFeACBVv3J1nyv9k4Ekzzz1Pfx+ALBGFVB Q==;
X-CSE-ConnectionGUID: 6L3czNPlTv+FKuLdAEg42w==
X-CSE-MsgGUID: 84ftN+4dQhWhRd2nNCa9PQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36474792"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36474792"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 00:54:37 -0800
X-CSE-ConnectionGUID: IAdXzrHKQKO8f55ASlCbaA==
X-CSE-MsgGUID: PwoKIz3qSSaWvIYWShQoYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="103728800"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.15])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 00:54:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com
Subject: Re: [PATCH v3 01/16] drm/mst: remove mgr parameter and debug
 logging from drm_dp_get_vc_payload_bw()
In-Reply-To: <d02d76bbb348018f736b191e503c4bb61e4dd02a.camel@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1735912293.git.jani.nikula@intel.com>
 <72d77e7a7fe69c784e9df048b7e6f250fd7599e4.1735912293.git.jani.nikula@intel.com>
 <d02d76bbb348018f736b191e503c4bb61e4dd02a.camel@redhat.com>
Date: Fri, 10 Jan 2025 10:54:32 +0200
Message-ID: <87cygvjbg7.fsf@intel.com>
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

On Thu, 09 Jan 2025, Lyude Paul <lyude@redhat.com> wrote:
> Reviewed-by: Lyude Paul <lyude@redhat.com>

I've already merged this, but thanks. :)

BR,
Jani.


-- 
Jani Nikula, Intel
