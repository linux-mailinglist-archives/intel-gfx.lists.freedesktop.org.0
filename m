Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABABD5F3303
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 17:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB3D10E40D;
	Mon,  3 Oct 2022 15:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EA410E413;
 Mon,  3 Oct 2022 15:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664812763; x=1696348763;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=K4RU6UN3r9kUtOHGvaK9akx5x/yisdjnJxIuM/3xZNY=;
 b=AACK0qDvt5qlAX4eRi4qe7rqmot+ctdBskbVLtnNgMX2k6L9FYNoOI5q
 u+lx+rQTDb0jAMgviah7mZy9wxQUB7nIiGnQD+Tcn9nwO7j0EzAKy6Mum
 v7orOLiQbLuA2Vp1fbFVHbAt+60FGjlpmrw0m60QUddmk9ufh6AAO6R2S
 kkDTUdix4yeQILkXXo9eZdOvC3EAQZasR0PraqPQApyRYpo/ew0Pfz+Jy
 WGkal49Z2HRwxN8WaNY0bKSxwHFiUvhO5GZx8vel1XRPSnLRGrPMnR7Wd
 SQOGrvxbZokTpxjOrkFtUNMWdtUlRvmJDmMBMdaGrbGgI/IRqENDmHPIV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304184143"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="304184143"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 08:59:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="798778841"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="798778841"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.81])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 08:59:06 -0700
Date: Mon, 3 Oct 2022 17:59:04 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Message-ID: <YzsGyKZnMjK0DBdL@ashyti-mobl2.lan>
References: <20221003061245.12716-1-niranjana.vishwanathapura@intel.com>
 <20221003061245.12716-15-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003061245.12716-15-niranjana.vishwanathapura@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 14/17] drm/i915/vm_bind: Expose
 i915_request_await_bind()
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 thomas.hellstrom@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Niranjana,

On Sun, Oct 02, 2022 at 11:12:42PM -0700, Niranjana Vishwanathapura wrote:
> Rename __i915_request_await_bind() as i915_request_await_bind()
> and make it non-static as it will be used in execbuf3 ioctl path.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
