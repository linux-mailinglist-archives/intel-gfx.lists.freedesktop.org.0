Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2956C9ECF8A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 16:21:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF84410E1CF;
	Wed, 11 Dec 2024 15:21:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="edCEgXxW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03D010E1CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733930506; x=1765466506;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lgc2e3UPxGG3Z4w4PP9xXb/qFraHeoqB6pjkc5ck1lw=;
 b=edCEgXxWU0RlhmJcGMczgXFI0i0OmPuK1UVySR41DoiyveJ2+XBpAzR9
 pYUvOb2/hvbrBjkMWvjIwg1B9YzMdznP1s5UjDxPI73pwkO48YhECh39a
 poQqEAlhwfWRw18qE1V9AoaIUkZu0vW+HO8+i1ZmqkUQ65xq6f5jB6px/
 GDgqWYvZd2kPJHX0/D3/nULFMqtdgi7o3JWqKZ0ognC61X+zLx4k9AeSK
 5iFdKoat329eeSReBIL95znqda+04238a0XAF8axWt65Qg9F1QnFQNXo7
 74/FPuDDlP/mTOvAMcrGc1rVa4hDzYPQxaGxvHaiio5vwCuHX0d8yyEGA Q==;
X-CSE-ConnectionGUID: Zc1i9iLJTLKOl5Yo1qWzWw==
X-CSE-MsgGUID: eBWB7RHsQbSDxsfY79m70Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34188067"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="34188067"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 07:21:46 -0800
X-CSE-ConnectionGUID: TZie81nkQme1TPqqX049Yg==
X-CSE-MsgGUID: kCbfAyFJR8mLAPLYT3pzfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133225968"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.26])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 07:21:44 -0800
Date: Wed, 11 Dec 2024 16:21:40 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/display: use ERR_PTR on DP tunnel manager
 creation fail
Message-ID: <Z1muBAsN-XmNAY0d@ashyti-mobl2.lan>
References: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
 <Z1mtLhJ_40VtfF3M@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1mtLhJ_40VtfF3M@ashyti-mobl2.lan>
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

On Wed, Dec 11, 2024 at 04:18:06PM +0100, Andi Shyti wrote:
> Hi Krzysztof,
> 
> On Wed, Dec 11, 2024 at 02:52:20PM +0000, Krzysztof Karas wrote:
> > Instead of returning a generic NULL on error from drm_dp_tunnel_mgr_create(),
> > use error pointers with informative codes. This will also trigger IS_ERR() in
> > current caller (intel_dp_tunnerl_mgr_init()) instead of bypassing it via NULL
> > pointer.
> 
> I was about to suggest fixing either this or his counterpart in
> the header file.
> 
> Please send this in a series along with the previous patch in
> order to let people understand why you are sending this.

Sorry, this patch works without the other, I got confused.

It's fine, then:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
