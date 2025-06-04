Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07313ACDA88
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 11:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45A3010E21B;
	Wed,  4 Jun 2025 09:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dYKsSzMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDACF10E219;
 Wed,  4 Jun 2025 09:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749028070; x=1780564070;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SfjbtFk8qUauCz4K5UHovZDUz7Ph9tqbpbI9x6XEJzQ=;
 b=dYKsSzMe2hmyTYSIAXwxKe0WOkAP7BTs2YVnFc5vj+ADuDtT0lXr/mnR
 09fZDOPDzpi2YM5W8n+NRLPDrnegA4hwzh55Y4zdam7ciJdZz96Kc8BRO
 vSGTlu9ae0TO4WT9hPD1/CNFPojHAA+HFG9iMa88ZuXhzpMsIdLbKLkmA
 sSnGpnb6aF2xBKlAQX4ZTLDz80Sz/7C9D+aXQ182Ubf3PtkLC/+UZ/nLm
 qXXhuJn+Kx8BbVXzuH5CJyTeEEi9MIf+vqVqD9KH3Z5seoh2WGwvCFJPt
 lnuwlk6vakVEZ+YBx8iMm301hWCEVTKRcgfjm9cky+/8kbwfLwQfa087i g==;
X-CSE-ConnectionGUID: CD8hifh4T/SHADTs44JjQg==
X-CSE-MsgGUID: sFEw9VaFSSS0QhLxXqu6mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="51244156"
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="51244156"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 02:07:50 -0700
X-CSE-ConnectionGUID: 2ljzef2fRPOpDO4p2OKyVA==
X-CSE-MsgGUID: Ssm/5hT1QLuJr4opbOI3Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="145729930"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.101])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 02:07:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 03/12] drm/i915/dsb: Introduce intel_dsb_exec_time_us()
In-Reply-To: <20250603140836.21432-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
 <20250603140836.21432-4-ville.syrjala@linux.intel.com>
Date: Wed, 04 Jun 2025 12:07:45 +0300
Message-ID: <407f8fb828d484b1ff0c096dbacc456af09c7269@intel.com>
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

On Tue, 03 Jun 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> +/*
> + * FIXME calibrate these sensibly, ideally compute based on
> + * the number of regisetrs to be written. But that requires

Random drive-by comment, *registers

-- 
Jani Nikula, Intel
