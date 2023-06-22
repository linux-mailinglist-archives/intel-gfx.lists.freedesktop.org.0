Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F7073A30D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 16:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F87D10E56B;
	Thu, 22 Jun 2023 14:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF84310E56B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 14:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687444195; x=1718980195;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=V8wYOUgy0KfeZTfxR5oSQfmYONmeUPqK6CgLwgC6S+U=;
 b=fNMyQioON5RlFVDuFGSjnKl1Irl3QNSGw33lT61jRLgrwPONAYsRSVF/
 qHJcweTxwY1G7OKfc7SQE5ivhwkNNcHKkgjii7/2rCcccaTfF5S2uS6J2
 2XnBDpTFF5ZMv5/hYf9eOSActmyU0prV8sE8qRyOtdw4Rcj5rBmsYzo4w
 xYPrO10vmigkpMvDA5lP9yomfupmWZMukPRaXaO+oHEEl/BcrA/Z7wUcZ
 GYW5TLIep9j25ot+3qsVBx9ofPsld9tXPctmkER8wbR5GxyoFdvJUb9QT
 8di87if2fOUQoSLfwOp6hQEBw0MgekSUXPcfnGhsCSwuNy/ElaPfeyAcw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="345249742"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="345249742"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 07:08:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="780230387"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="780230387"
Received: from akivisil-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.96])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 07:08:21 -0700
Date: Thu, 22 Jun 2023 16:08:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZJRV0ngY8zv/Vo5H@ashyti-mobl2.lan>
References: <20230621183805.251128-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230621183805.251128-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove display raw reg
 read/write micro-optimizations
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

On Wed, Jun 21, 2023 at 09:38:05PM +0300, Jani Nikula wrote:
> Convert the raw_reg_read() and raw_reg_write() calls in display GU MISC
> and INT CTL handling to regular intel_uncore_read() and
> intel_uncore_write(). These were neglible micro-optimizations, and

/neglible/negligible/

> removing them helps the display code reuse in the Xe driver.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
