Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B494D7A9765
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 19:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C5110E152;
	Thu, 21 Sep 2023 17:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED8E10E152
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 17:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695317002; x=1726853002;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I4wdq56qnenHfim4DNDEQpumO9TciLAmEQGXonopw4I=;
 b=U6oHKnBDUSsRSmjrTAtlQqysJsiuGGGLQDTsOOBzUhqq/fiSUT/QX7Z7
 U2Q2FeHhT82GNrbZFhHCj52WYjkfwOD8aid3/iEW+YatHhH6t76+CErHf
 2LLwUdrVGZiqZnncSkicqhWjNELUGwsTnoQENH9Ou0tOr6AMSSnz84r1E
 iLSgzvPdvIGpaW5bobeYUo+qSXcdFdWB75tpP5q3bXWibFHgyRTFjMjtN
 QmrlZPjQice7UXdCzUbp14u87jxcrgSjrRnGvYLDgXU0Bhr2L3PAGoYHw
 H8al8knKA9lPLAC9ZtRIQm4W99No1EwOyx7PGNUn3UxbTrmprqqorQQg4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379478603"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379478603"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 10:22:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="696828343"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="696828343"
Received: from skalitha-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.215.150.18])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 10:22:16 -0700
Date: Thu, 21 Sep 2023 19:22:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQx7wELlf/qvqzEH@ashyti-mobl2.lan>
References: <20230921162456.3889375-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921162456.3889375-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: remove a static inline that
 requires including i915_drv.h
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Thu, Sep 21, 2023 at 07:24:56PM +0300, Jani Nikula wrote:
> It's actively harmful to add static inlines in headers that require you
> to pull in more headers. Remove the include added in commit f1530f912ed8
> ("drm/i915/gt: Apply workaround 22016122933 correctly"). We see that
> there's already an implicit dependency on the i915_drv.h that we need to
> address too.
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
