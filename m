Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DD9A3F610
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 14:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D56610E83A;
	Fri, 21 Feb 2025 13:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F2lWCdHP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58B110E83A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2025 13:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740144847; x=1771680847;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Pa6IuFycT2D1R0vgYYZg6u4QB6ZJ7EyBnH9BKBcclDk=;
 b=F2lWCdHPIe/lz6JLLKr94u6V9tseqR6cMQaOcxTk43uCulispitQjpP9
 GNbzhEB6vMsbms7qXQty822IWAqaSt8BDLauD90lOnAp40TtDynqFX9l6
 Xgr5s10xFQwK0LSJH9D8u8HXCR0QX2RJSUYVLHqVc5YFotRDdvQbmdnZk
 PQ2X0wqd0gTay64QCMvWkKm2eJbYk0yAuSFM2V9wb8X+fCa0n00MwNDDV
 PdxvX1zIlvV8G4VNED6LwldMBurwNCKbkgZ/NOkrap9o9CkRT8yE6K8qU
 doiQu/8tV+AKSaXVBRA/FoI56kOVjGnHZmMtnxJ9/F1eoVjxdRjU+dHPv g==;
X-CSE-ConnectionGUID: OWoleZp+Sai/fdsrfiozSQ==
X-CSE-MsgGUID: 9e/coiM2Qk+IpB6iBtqZXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="58511123"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="58511123"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:34:06 -0800
X-CSE-ConnectionGUID: 6slFw1LyQHKu1G0grAJbQA==
X-CSE-MsgGUID: w8cuFMW+SzC+8guAKvSdfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120615798"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.44])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:34:04 -0800
Date: Fri, 21 Feb 2025 14:34:01 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/12] drm/i915: Bump RING_FAULT engine ID bits
Message-ID: <Z7iAydKTfCUHzqW2@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-2-ville.syrjala@linux.intel.com>
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

On Wed, Feb 12, 2025 at 01:19:29AM +0200, Ville Syrjala wrote:
> The fault engine ID field has been 5 bits since icl. Bump our
> define to match. The extra bits were unused before icl so we
> should be able to use the larger mask unconditionally.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
