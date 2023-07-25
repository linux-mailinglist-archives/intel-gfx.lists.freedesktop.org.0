Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B477C760F42
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 11:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFADE10E07F;
	Tue, 25 Jul 2023 09:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA07410E07F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 09:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690277569; x=1721813569;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=folrxKREQ80kRF4u2OZzTQfpamFFTSqJqAITqFQzbM0=;
 b=QSQic9+mzUqyfC+PveappVDUY3zwOm1yZH+w+gDBJ9pWecLyQr/lPFJA
 oOJB82ArNcta5eDx5ykTJWC8vhgKbjfwIKbKmdaDnJD0m6fIuFrR14WjR
 nUq3XY8NqNKM4mQZwFfqlwNwFHfUyUCEah7AWBn8erE7L1Lz6+aDMG3bv
 t8S80A6+V1YWJoBzX4mzXwpsHFTghYTOS7ii+V0WgfxABm6QnqJD5Cvqd
 ecj2aMI4UUVyV4g8vbA9sbojcBufJipXYE/UpQvXVmfGyFswvqMkGO6E5
 R8K5N9LI0Pka00AXJ1j+6Ep4TWfq/qD0b8LatLW1Rz29WGMTu3Ia4wB61 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="366552621"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="366552621"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 02:32:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="972602690"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="972602690"
Received: from kshutemo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.237])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 02:32:48 -0700
Date: Tue, 25 Jul 2023 11:32:45 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZL+Wvb0ZCUgSop7D@ashyti-mobl2.lan>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-13-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725001312.1907319-13-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915/xelpmp: Don't assume
 workarounds extend to future platforms
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

Hi Matt,

On Mon, Jul 24, 2023 at 05:13:15PM -0700, Matt Roper wrote:
> The currently implemented Xe_LPM+ workarounds are specific to media
> version 13.00.  When new IP versions show up in the future, they'll need
> their own workaround lists.

Makes sense...

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
