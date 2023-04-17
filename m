Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2586E4305
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 11:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C43410E3B1;
	Mon, 17 Apr 2023 09:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9094710E3B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 09:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681722038; x=1713258038;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OqJeCP2NhDaWCxyyrOSm91warEMhk6ZvYK32g8CIJdw=;
 b=nTwQqS/lLF6FyJ+KcEhrKkZVyKp1YwzZBeiG2X8kXD51khiwoNnLNXDU
 Wue5XX+4yB+Zxix8Nir2490iCjWKl6L+tVCiMhy/nCv2yXsOqSyfU0sWQ
 e78ntDCT9IafHjy1nY640O4P9P14BIOdnAgISgoAX6pVTGAlipHe5ansj
 1b+k8q+S/Yqvy2HYuarif+uEx8fVk4JD8C/77IZV7yjZrv0x/5gP/JXY2
 b7WtVYsZLEOIE59i9xjgT5PsAOtcXsDeMokzG6ZX1xc7YmI+lUEZf/x5C
 cRIxpiuxfrk5zaFrW0ndqvWHVCK4LmettdmMQJ1CJwqUkFidtsNDlnTls A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="343598421"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="343598421"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:00:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="1020347664"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="1020347664"
Received: from ksimakov-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.55.122])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:00:35 -0700
Date: Mon, 17 Apr 2023 11:00:11 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZD0Km2kVxcbxQw5W@ashyti-mobl2.lan>
References: <20230417085742.793379-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230417085742.793379-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: use intel_de_rmw() for panel
 unlock
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Mon, Apr 17, 2023 at 11:57:42AM +0300, Jani Nikula wrote:
> Use rmw where needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
