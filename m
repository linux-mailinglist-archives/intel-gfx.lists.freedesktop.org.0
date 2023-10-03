Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D947B610E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 08:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE1610E0E7;
	Tue,  3 Oct 2023 06:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D494A10E0E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696316062; x=1727852062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=k2WIMJ8262zMGzWPt7u6EfYV4rDuBaVaPT5HdQdKXPI=;
 b=EqSvYeLaQLg1aTtT08Zbz1G1FyPklCGB9HiPvQBJhtHIFnlwe8P3cUx5
 gEXjqmo8+RJJyK1JDWdxXUH53xra9hFmZ5UOLBgDhiHqx8tP0rLkIvsVS
 7ngy9YpOjW62Pq+raD5H+BkmUCc7rtmrzt6323pTJLZRS5rbRRXbPGKCC
 y0y5dE90gMX8E8ZbBeNrBT0c1xaCaZ5zap2fouIuHIV4KLisZnKggKRYJ
 xFRF++G4UpPhl08N3pv7KmbV72oAwg7cmXAwadwpnGh/Ylprp0ACQCUwv
 oAKgofVIMTqsBrE5oK2yR8TSAHYkl97BU6/Yz5SBg0fQ3VlDXmCmPVzTm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="469080045"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="469080045"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 23:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="754301250"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="754301250"
Received: from leejiahx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.172.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 23:54:18 -0700
Date: Tue, 3 Oct 2023 08:54:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRu6lJJGXi27SDkj@ashyti-mobl2.lan>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <01bf968aa431b77d491790178cbeece18b5fc4c0.1696236329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01bf968aa431b77d491790178cbeece18b5fc4c0.1696236329.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: allocate i915->gt0 dynamically
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

On Mon, Oct 02, 2023 at 11:47:03AM +0300, Jani Nikula wrote:
> Convert i915->gt0 to a pointer, and allocate it dynamically.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
