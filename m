Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 817E82F1C62
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 18:32:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE365892B1;
	Mon, 11 Jan 2021 17:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8582A892B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 17:32:05 +0000 (UTC)
IronPort-SDR: SM1yQjVKmKpDWh0zJR7uBRbaKkceGxcgVe1//s8XQcCugCEI57SfUvH3myvP4ltb1a9+4iEwUN
 lT6qLA0Yn7yQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="262682869"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="262682869"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 09:32:05 -0800
IronPort-SDR: 7rbyUqc2rg+Zxz41GmbCyB3CGM1eprtX02pTl51qv9JzE9KaQ7PqY2x8uxWFPBMwbj5V3FePzo
 0iWbZnWTED4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="344951049"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jan 2021 09:32:05 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 09:32:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 09:32:04 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Mon, 11 Jan 2021 09:32:04 -0800
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 03/11] drm/i915: Allow the sysadmin to override security
 mitigations
Thread-Index: AQHW52H0KsO7cQ69u0GWC0XUKyZqaqoirrpg
Date: Mon, 11 Jan 2021 17:31:48 +0000
Deferred-Delivery: Mon, 11 Jan 2021 17:31:03 +0000
Message-ID: <a2154cb4c5f7405fbc5551b750506fd8@intel.com>
References: <20210110150404.19535-1-chris@chris-wilson.co.uk>
 <20210110150404.19535-3-chris@chris-wilson.co.uk>
In-Reply-To: <20210110150404.19535-3-chris@chris-wilson.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Allow the sysadmin to
 override security mitigations
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: Sunday, January 10, 2021 7:04 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Wilson <chris@chris-wilson.co.uk>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Bloomfield, Jon
> <jon.bloomfield@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> stable@vger.kernel.org
> Subject: [PATCH 03/11] drm/i915: Allow the sysadmin to override security
> mitigations
> 
> The clear-residuals mitigation is a relatively heavy hammer and under some
> circumstances the user may wish to forgo the context isolation in order
> to meet some performance requirement. Introduce a generic module
> parameter to allow selectively enabling/disabling different mitigations.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1858
> Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: stable@vger.kernel.org # v5.7
> ---

Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
