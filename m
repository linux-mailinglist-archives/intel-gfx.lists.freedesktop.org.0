Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 429D37C952B
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Oct 2023 17:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9C410E0DD;
	Sat, 14 Oct 2023 15:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E51A10E0E2
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Oct 2023 15:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697297494; x=1728833494;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8PkxPyG6oCKfb2GzOvRQTNMB9GuhcDC2qYoqmHO74kU=;
 b=L/0oGZJgNoDqsWV7obEnw/Unx/hxWOeJ0fVQdoH6Ek4vXthUrBg2EHC0
 AWZth5Q9YYKmRIXwV7XhVUJ7Tj+TlkH6BVYOe3y3twNPQZE1N79gOfS9h
 Pcer6psdiysxqQjyzIF+MTdhZ8pvh3tIVc+/BN2deucpxN7xz/R2nxE2d
 qK/2n9Oh87vXZ0QD/9WMfsYlqhlFlhhugEUaG7isqwmnF9SzXZ9Zu9KWF
 /6+CAMQPdahdfoO1vxmD1O7GwA91U7xE/PBkN8VA9FakwKymEysmcXiB6
 oMc2QFfyAQX0NV2ll8qfbhEAUIKTaz1zsNZnLrptiy6nLsaZ8Y7iFgYa+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="389192103"
X-IronPort-AV: E=Sophos;i="6.03,224,1694761200"; d="scan'208";a="389192103"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2023 08:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="898902253"
X-IronPort-AV: E=Sophos;i="6.03,224,1694761200"; d="scan'208";a="898902253"
Received: from ychong1-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.215.244.104])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2023 08:29:37 -0700
Date: Sat, 14 Oct 2023 17:31:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZSq0TBL5E2fKTAnm@ashyti-mobl2.lan>
References: <20231011162102.1030354-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011162102.1030354-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop including i915_utils.h from
 intel_runtime_pm.h
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

On Wed, Oct 11, 2023 at 07:21:02PM +0300, Jani Nikula wrote:
> Remove an unnecessary include.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
