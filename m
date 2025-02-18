Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F456A39D6D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 14:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244A889D39;
	Tue, 18 Feb 2025 13:29:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hDA2XueE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D4889D39
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 13:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739885381; x=1771421381;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RfEe/mHe07cLT4IQJ3Psdnd7+VMpT8kpsj7dMb0kSRI=;
 b=hDA2XueElNvF/67f7SC7ZyFgbgJLB/M4ifOt/22ti4Xa+nhVp+gL7tj6
 qcMu7UGKvkilqkC6I7TrFgjljPbCkzEFElRVHl3tN5BTFBo+OmAeXM7hL
 oPYkOauTCxXIo7m3OqbkQzXGRx/R7BXmoRIUtU1891+A5/Oe7IlOo/fqE
 b8UzJxWb3vhNbF1mp2WBs/HR3nqBMjlMa45sRmeIJSPX1B4v/kCVSBpvk
 jMDCE9Z7qHdPSmgXNW2vb8NIHg73cbaOR8IOcN7kuY8N4bGbEMorJhqiP
 m2nkwCoGsWsC+xX9EedR+Vd+qKuvoHpShb58MIjFKXVmOMcmu+r6WS22E A==;
X-CSE-ConnectionGUID: kuC5KSfVRfOg+PMX1HsRPA==
X-CSE-MsgGUID: tO6F3p7cRDiEsx6vwa/Ehw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40437917"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="40437917"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:29:40 -0800
X-CSE-ConnectionGUID: 2UB+8i9BQfCwfRY6CAFoUw==
X-CSE-MsgGUID: GwjPX4YSTB+cnkV6o+Qidw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114261424"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.41])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 05:29:40 -0800
Date: Tue, 18 Feb 2025 14:29:35 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/1] drm/i915/xehp: add wait on depth stall done bit
 handling
Message-ID: <Z7SLP33wacVOhbVf@ashyti-mobl2.lan>
References: <20250214155712.2849848-1-juhapekka.heikkila@gmail.com>
 <20250214155712.2849848-2-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214155712.2849848-2-juhapekka.heikkila@gmail.com>
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

Hi JP,

On Fri, Feb 14, 2025 at 05:57:11PM +0200, Juha-Pekka Heikkila wrote:
> Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for gen12, this
> is performance optimization.
> 
> Bspec: 46132
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12411
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

merged to drm-intel-gt-next.

Thanks,
Andi
