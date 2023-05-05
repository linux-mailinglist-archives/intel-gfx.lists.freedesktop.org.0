Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 399866F7F2F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 10:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F64B10E5A7;
	Fri,  5 May 2023 08:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D505010E5A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 08:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683275816; x=1714811816;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ICzXVt32cAXvU4oL5IoxnbLsXFpfERXYyybVEZAtm8w=;
 b=cV2wh+kMPTL7UC6vr2/RK8tUe/JIYZ67ktiXZ9BwTvzS8yrEvinJAkyZ
 g2kLbse6VHOp1zHHAWjZj1jluoO1qK1jXwA0BDVSkFqg1JHjkvfc9kI3u
 ZRdiFZ8TOEyZ1muyc8cQ+zrKdb3Ud/vZOwrqwxvfSTXBNwiesHLgId9o1
 8dhyGWHdZKnMm3IVKRkaAH6R4c4aAI7o9aYXBCme1TYC51tRbxL7oxaaF
 i43JDOuLWRa24LFRukrtIdU0bSmBpKRbR0pNcaYhQnROOP1xkbw7ylROA
 y36ZFKwF457qN6mxSyldJhh97ikRivQ/aM6+HrDMzJvZLKMtv/mD0s+0t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="346632809"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="346632809"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:36:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821577496"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="821577496"
Received: from waidhas-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.217.245])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:36:46 -0700
Date: Fri, 5 May 2023 10:36:42 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <ZFTAGjuGYNqFZvAD@ashyti-mobl2.lan>
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Drop FLAT CCS check
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi JP,

On Thu, May 04, 2023 at 01:28:02PM +0300, Juha-Pekka Heikkila wrote:
> From: Pallavi Mishra <pallavi.mishra@intel.com>
> 
> Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
> enabling MTL to use it.
> 
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
