Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 531A62C81EA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 11:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9890989CF3;
	Mon, 30 Nov 2020 10:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DCE89CF3;
 Mon, 30 Nov 2020 10:14:57 +0000 (UTC)
IronPort-SDR: GpTWbjWRq0X/sanEA4ME6UljD3kBKxTtXco9Wsis3ZHS0e2cpoHARRoXlqEhcqEAAt/Fi7XxM4
 QMsQcND7R6Ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="151863384"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="151863384"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 02:14:56 -0800
IronPort-SDR: MuxIqRKCIWlZEI+uIJCmGywH7sKX1VbB4QBUHtucnMEUoNbap56ep4oD60IdhPwAEiUvKSDPdG
 GogvQsCudqhw==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="549041096"
Received: from cshanno1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.44])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 02:14:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201127120718.454037-97-matthew.auld@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201127120718.454037-1-matthew.auld@intel.com>
 <20201127120718.454037-97-matthew.auld@intel.com>
Date: Mon, 30 Nov 2020 12:14:50 +0200
Message-ID: <874kl7kv6t.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 096/162] drm/i915: setup the LMEM region
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 27 Nov 2020, Matthew Auld <matthew.auld@intel.com> wrote:
> +	/* Enables Local Memory functionality in GAM */
> +	I915_WRITE(GEN12_LMEM_CFG_ADDR, I915_READ(GEN12_LMEM_CFG_ADDR) | LMEM_ENABLE);

Please use intel_uncore_read/write and intel_de_read/write throughout
the series. We don't want any new users of I915_READ/I915_WRITE in the
driver.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
