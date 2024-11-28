Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D595A9DB7C5
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 13:34:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADC610E43D;
	Thu, 28 Nov 2024 12:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kezMFgmn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3696A10E43D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 12:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732797295; x=1764333295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uX25y0iGFjKwlE7ZCG4sVqCxtbHwHp2C1HWQknVAwMQ=;
 b=kezMFgmnCoKAFfoxc1kI432eQWtAw2D8N9HcYkLsjsGMuHRc2/o9SHkv
 tl6795yZbrfFQjJcx7Req9gK9xQvoEsLabgQW89qIYsAozgIY64hdaMKK
 /J8RNGGa9rryoBNU7rHYlAB73dzqPAnO+/ir30wYhYxEM/5wMSTc/HtZF
 KI0Ngw33TZRob3hsrh6+K/ryGmJ8Y7i0XYIuAlxggZlF3+SNlb3KXQGHX
 DC8KSqu/Ln8ibuCovW+MWBNLgYPXEyiFsCUe8bU//ELV77A+Mw0yKzM/R
 ZcPSyIfQDk6hlWBedIT2xjFzygIL3evdGlF8cTQ4z061gSYRUC9SmVYVi A==;
X-CSE-ConnectionGUID: CiqQUZktQS+akTBfMcTNIg==
X-CSE-MsgGUID: l5rqmW8MQ+uiITE3ZBsjCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="35889950"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="35889950"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 04:34:55 -0800
X-CSE-ConnectionGUID: Mvhsy5RdSC6ysPmxMureBw==
X-CSE-MsgGUID: qkpdw5HITQqufqwKDTL7bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92391662"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Nov 2024 04:34:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Nov 2024 14:34:52 +0200
Date: Thu, 28 Nov 2024 14:34:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Disable compression tricks on JSL
Message-ID: <Z0hjbLJSjVBQxTxY@intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-3-ville.syrjala@linux.intel.com>
 <o3albuqlbexbhczvhi7lnh4klyaccdbo34rbtaj52mp4ox4ecj@kjggr3melenq>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <o3albuqlbexbhczvhi7lnh4klyaccdbo34rbtaj52mp4ox4ecj@kjggr3melenq>
X-Patchwork-Hint: comment
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

On Wed, Nov 27, 2024 at 03:56:27PM +0000, Sebastian Brzezinka wrote:
> 
> Hi Ville
> 
> I found your patch looking at issue VLK-65591, seems like for some reason
> cannot apply this workaround on JasperLake and end up with an error: 
> 
> ```
> <3> [463.126159] i915 0000:00:02.0: [drm] ERROR GT0: engine workaround lost on application! (reg[7000]=0x0, relevant bits were 0x0 vs expected 0x8000)
> 
> ```
> 
> When the workaround is verified, 15th bit is not set. Is it possible that
> this workaround is not available ? I would be grateful for any tips.

I suppose it's possible the spec is wrong and the bit doesn't exist, or
perhaps it's only present on some steppings. Shrug.

I'm not seeing any problems being reported in CI however, so I'm a bit
confused where these are happening?

-- 
Ville Syrjälä
Intel
