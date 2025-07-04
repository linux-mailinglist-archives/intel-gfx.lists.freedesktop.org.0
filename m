Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EB8AF9320
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 14:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383ED10EA20;
	Fri,  4 Jul 2025 12:51:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1rHTBRm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05DBB10EA20
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jul 2025 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751633459; x=1783169459;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=t6qH+KGLxD0+8D8RLNNq3xbUZN4BCn2DEuSBKCZm6Gw=;
 b=D1rHTBRmJkiaj7FSzxgRJTCUjR54F2nJVZb/iZnODE1odgWaMoWuTDH6
 qlEP8tCg4RJw6cqecfwIiM7qYzddaJE5jr6PKpxm3drNo2bcKLGShlVqx
 TE8z2jyZCO3G8Li2FbkLdyVpi0gUUCh/usayi323P0+n3jJi76R+wkPb3
 BvC9ucdV/q8vqREDwOhBmHj+s2JRgPf1lP/1gGG6Lj3ZtFCHCIclGun5v
 m+FYJH+QGq8uFYFwfozRj2Tw6S+kazVaR5efUQlH0Wg0gnsO5FEyre49q
 FAcJoNl4GAEXg2XMs8Z9AWn1cAC9uz2Rh7Troy45Mh5DtjvoMAnxCYNAR w==;
X-CSE-ConnectionGUID: fT0ynDnySQOCZmaUYPJFGg==
X-CSE-MsgGUID: 2O6Qf3+kRPKvGeyjaSllFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="64660074"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="64660074"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 05:50:57 -0700
X-CSE-ConnectionGUID: x9YKVEVNSpWLC3Fcqtqxfw==
X-CSE-MsgGUID: pYUetjPZQ+WlIEuIov3Cbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="154764510"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 05:50:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Aakash Deep
 Sarkar <aakash.deep.sarkar@intel.com>, intel-gfx@lists.freedesktop.org
Cc: jeevaka.badrappan@intel.com, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Alex Deucher <alexander.deucher@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>, Rob Clark
 <robin.clark@oss.qualcomm.com>, Thierry Reding <thierry.reding@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>, Dan Carpenter
 <dan.carpenter@linaro.org>
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
In-Reply-To: <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
 <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
Date: Fri, 04 Jul 2025 15:50:49 +0300
Message-ID: <18750ce762f975a927626aa0cf1ded4c5fdf00c6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 04 Jul 2025, Christian K=C3=B6nig <christian.koenig@amd.com> wrote:
> On 04.07.25 14:00, Jani Nikula wrote:
>> On Fri, 04 Jul 2025, Aakash Deep Sarkar <aakash.deep.sarkar@intel.com> w=
rote:
>>> dma_fence_wait_timeout returns a long type but the driver is
>>> only using the lower 32 bits of the retval and discarding the
>>> upper 32 bits.
>>>
>>> This is particularly problematic if there are already signalled
>>> or stub fences on some of the hw planes. In this case the
>>> dma_fence_wait_timeout function will immediately return with
>>> timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
>>> the fence is already signalled.
>
> That is not correct. If the fence is signaled dma_fence_wait_timeout()
> returns the remaining timeout or at least 1 if the input timeout was
> 0.
>
> Could be that i915 has a separately implemented fence_ops->wait
> callback which incorrectly returns MAX_SCHEDULE_TIMEOUT, but i
> strongly doubt that because that would break tons of stuff.

Thanks, good thing I Cc'd folks. :)

BR,
Jani.


--=20
Jani Nikula, Intel
