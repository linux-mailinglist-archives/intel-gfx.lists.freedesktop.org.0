Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB449E061E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 16:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D23210E78E;
	Mon,  2 Dec 2024 15:01:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XJxIjvYf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A5810E78D;
 Mon,  2 Dec 2024 15:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733151711; x=1764687711;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=7J4RXD6BuY21QkH0nj14TfCXOaSXwMjvrpYYEMSM3MU=;
 b=XJxIjvYfYkqEOx5OCCAxZQmeMYiA0M5KowD2hBXk3tghtP+di4kmjOBT
 zwMyXyNo6hFZrkdRKNSGxhsaL5JWKmvzNzW2vHsyC6zHl8nl9Ksh3n1KP
 JcweW7meaxrh7eDt0mnb3piNpyriJo2F0SQtJDaDk8TR6x1PUbx9i4jgA
 YMSXTmCFNajSArZV9db27M5P0YqAwloImA89dwMb7vXDWVkYOd+VY4M7r
 PAm/RDhjGbfcIU+NY3KmRIabT2sUgfTzTr77bg0uaLppKAj219TOAAJRV
 9NOdZakOYWbBwfD7LYhpFiF4vtDi2cek8wxsI0jLjvK72KM1laQvUe5c1 A==;
X-CSE-ConnectionGUID: Ae8v7fMpQTCyFKWvJ+MOFg==
X-CSE-MsgGUID: VeXMzJsXQAug7AqErQ83BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="37098075"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="37098075"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 07:01:51 -0800
X-CSE-ConnectionGUID: 9lWl16+bQ1mWxMjyUMuPCQ==
X-CSE-MsgGUID: 0LXc3enATruoOYam6o9MQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93963303"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.77])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 07:01:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: replace dig_port->saved_port_bits
 with flags
In-Reply-To: <173314429606.2905.1225130957745348760@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241129102503.452272-1-jani.nikula@intel.com>
 <173314429606.2905.1225130957745348760@intel.com>
Date: Mon, 02 Dec 2024 17:01:37 +0200
Message-ID: <87h67m5dta.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 02 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-11-29 07:25:03-03:00)
>>dig_port->saved_port_bits is used to permanently store two DDI_BUF_CTL
>>bits, DDI_BUF_PORT_REVERSAL and DDI_A_4_LANES. Store them separately as
>>bools to make their use more logical and less about storing state as
>>register bits.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
