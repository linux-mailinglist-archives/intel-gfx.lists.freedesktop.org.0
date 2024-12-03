Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 262859E1D44
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 14:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B853010EA11;
	Tue,  3 Dec 2024 13:14:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NIVwL8pa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02DA610E36F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733231694; x=1764767694;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W+YqdOnCRcWdTXAD8kK9geGujdKuZHH2+uUbWwUWL6M=;
 b=NIVwL8paeI8hjwoHX61Mzh8Egx+0ocKTfFra7JHFFVfqbj0X3vm9o3eh
 l6HZuXL8WFnKivB8jxV1RyV9+K7veR41x87r+3j/qvRAHslV4VjCyN5T8
 g4mzwMpO2eJaxXymszxgL8yf5Vny/08hq/7intCRERux0UZvqDx0ngTbg
 egIcUAuMWzZ+enQqEXHvyGuQyu+voiuP6xLRXzyvJWetWSNjPJ9GzOtkj
 NK1BCy+4H6X0kD8vDXy6GWsmPEK9KsGgC/QVDwXnSChK7EOK+kszwgErR
 3j3paj24FpsCc+QXUeh9CyKJVmFeNzYOF+DiXIEJFqOQiUozwERy15Otq w==;
X-CSE-ConnectionGUID: O7d5Fqa4Qrid7YyhC9MjuQ==
X-CSE-MsgGUID: 4ORFUZ4CTtCfSxnlqGbd7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44053377"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="44053377"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 05:14:53 -0800
X-CSE-ConnectionGUID: QnyvTKuWQ428ZtlEleFVyg==
X-CSE-MsgGUID: 3uiXGs5SQ9yN30WfmOjUEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="97865711"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.145])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 05:14:51 -0800
Date: Tue, 3 Dec 2024 14:14:47 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, John.C.Harrison@intel.com,
 andi.shyti@linux.intel.com, jani.nikula@linux.intel.com
Subject: Re: [PATCH v5] drm/i915: Fix NULL pointer dereference in
 capture_engine
Message-ID: <Z08ER6VLWmVOvfU5@ashyti-mobl2.lan>
References: <4yfdzisxkb3j3tig2astee5zd46ppt2jwhqffkhes2dwm3g5nb@snadyfwzl7g4>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4yfdzisxkb3j3tig2astee5zd46ppt2jwhqffkhes2dwm3g5nb@snadyfwzl7g4>
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

Hi Eugene,

> Cc: <stable@vger.kernel.org> # v6.3+

Next time cc also the stable kernel mailing list for real,
please.

> +	        drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld%snot yet started\n",
> +	                 engine->name, rq->fence.context, rq->fence.seqno, guc_id);

this is very ugly: %lld:%lld%snot I understand you leave a space
from the seqno and "not", but the form is unreadable. Could it be
better:

  if (ce)
	drm_info(.... ->guc_id);
  else
	drm_info(...); <-- same thing without the guc_id

It looks like for making it easier we are making it harder.

If you decide to go this way, perhaps you can add a comment
saying that ce might be NULL, but if it's not you want to keep
the guc_id information.

Next time cc also the stable kernel mailing list, please.

Thanks,
Andi
