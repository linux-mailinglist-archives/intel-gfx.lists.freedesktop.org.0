Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D020A42176
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 317C310E3E6;
	Mon, 24 Feb 2025 13:42:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eeJtBIRL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B131810E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 10:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740391715; x=1771927715;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WuKZX6uOIb737i4Q8PPqFs8hADlgdChn5qU5igLz/0Y=;
 b=eeJtBIRLVGlEJOI3svq7PU8RtchA1wjabRMSixDgURTnXcpnAaOfrUVm
 YqaGuiFrgzGK3fTuMv3KVAoHctcfg8nmD5rKzLtrHW+8fGyhrZ/Yj2efX
 TDINkrp8VdlPOCkn2UHBk9uy/dKx9HQ2UQtdgpj7tq1QEDPWyWQyU4qox
 gszjglVtgRONKazZ5UauH3qO0ugA9jUqNjwaj1t+UYhcurAFf3JOeRY9c
 DAxtET/mKdcPSPoo1TjyIytU6MxEOurVS4IrLuZpRDHu/ctQvZ5HVKNoN
 bAI7pj9NyQwFfQ7AUbGR6ZVGFBXdcUrc5agPzj9+wPA0JY3v8UkD7iphV w==;
X-CSE-ConnectionGUID: Ie2IWZWPTwO6AnBBMVdD2w==
X-CSE-MsgGUID: FKAHkYtfRGeI/8iyvX0V5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="45048201"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="45048201"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:08:34 -0800
X-CSE-ConnectionGUID: WK4GnPXmRletM7nCMWksYw==
X-CSE-MsgGUID: V+H8pEutRsOBDe/bKadhcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115997028"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:08:33 -0800
Date: Mon, 24 Feb 2025 11:08:29 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/12] drm/i915: Extract gen8_report_fault()
Message-ID: <Z7xFHUnFUoIYtGFk@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-7-ville.syrjala@linux.intel.com>
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

Hi Ville,

On Wed, Feb 12, 2025 at 01:19:34AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> gen8_check_faults() and xehp_check_faults() are nearly identical.
> Refactor the common bits into gen8_report_fault().
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
