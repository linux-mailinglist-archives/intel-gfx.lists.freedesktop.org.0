Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E3DA42186
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6EC10E538;
	Mon, 24 Feb 2025 13:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nWXBKVbb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CAD710E1FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 09:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740390771; x=1771926771;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Tyu7Ii/SDGZc6/fZRUavJhej4gP1J0BH3MR5Jv2+LWQ=;
 b=nWXBKVbb/OEbD/3AUoxg8nf1imT8psUQwnSXsUt8aE0M79s36qSWs0Ha
 Q3NZECXCs0nCe8nKYlok4Wu0UwYUFpJPPxgSZw7wX9IuXYjevmhAfuAC/
 qR6E0w8Jc7amWY0x17wlSOPWGjdim41wpvibf7yWzsebLxzbRAcnbeq0b
 FlHPECzqdfYfLJlWRvaFwaL5Cqd4fEti1Pa3lKPw2OWePa3Zz4O86qSY/
 35EuuwQGRkgO48TJWIzBHwOvSkCbBo9TuONcaOySnEZDGX8Mnjqek0ToW
 oj0TrYAe323woTsEX3dpxAWgCJn0L5lAUqBD5LrzWO+evPNfCj6raSQPU w==;
X-CSE-ConnectionGUID: nb0InP+WSbyMq594fnRh7w==
X-CSE-MsgGUID: mZD9zncOQy26oKMyx7uCIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="51776715"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="51776715"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:52:51 -0800
X-CSE-ConnectionGUID: 7+9qEeV0TLu7OJlLexHJxQ==
X-CSE-MsgGUID: ptWN3zKpQbSe57cxqpskeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115994095"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:52:49 -0800
Date: Mon, 24 Feb 2025 10:52:45 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/12] drm/i915: Document which RING_FAULT bits apply to
 which platforms
Message-ID: <Z7xBbUV-1zp_hw7l@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-5-ville.syrjala@linux.intel.com>
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

On Wed, Feb 12, 2025 at 01:19:32AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The RING_FAULT bits have change a bit over the years. Document
> which platforms use which bits.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
